const backToTopButton = document.querySelector("#voltar");

backToTopButton.onclick = () =>
    document.documentElement.scroll({
        top: 0,
        behavior: "smooth"
    })

window.onscroll = () => {
    backToTopButton.hidden = !(document.documentElement.scrollTop > 200)
}

/*  MANIPULAÇÃO DAS ESTRELAS  */
document.addEventListener("DOMContentLoaded", function () {
    // Seleciona todos os contêineres de produtos
    const products = document.querySelectorAll('.product');

    // Itera sobre cada produto
    products.forEach(product => {
        const stars = product.querySelectorAll('.stars i');
        let selectedValue = 0; // Armazena a seleção atual para cada produto

        stars.forEach(star => {
            star.addEventListener('click', () => {
                const value = parseInt(star.getAttribute('data-value'));

                // Se o valor clicado for igual ao selecionado, desmarcar todas as estrelas
                if (value === selectedValue) {
                    selectedValue = 0;
                    stars.forEach(s => s.classList.remove('selected'));
                } else {
                    selectedValue = value;

                    // Atualiza o estado das estrelas com base no valor selecionado
                    stars.forEach(s => {
                        const starValue = parseInt(s.getAttribute('data-value'));
                        s.classList.toggle('selected', starValue <= selectedValue);
                    });
                }
            });

            star.addEventListener('mouseover', () => {
                const value = parseInt(star.getAttribute('data-value'));

                // Adiciona a classe 'hover' até a estrela atual
                stars.forEach(s => {
                    const starValue = parseInt(s.getAttribute('data-value'));
                    s.classList.toggle('hover', starValue <= value);
                });
            });

            star.addEventListener('mouseleave', () => {
                // Remove o estado 'hover' de todas as estrelas
                stars.forEach(s => s.classList.remove('hover'));
            });
        });
    });
});

// GSENHAS
function gerarSenha() {
    const tamanho = 12; // Tamanho da senha
    const caracteres = "abcdefghijklmnopqrstuvwxyz"; // Letras minúsculas
    const maiusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; // Letras maiúsculas
    const numeros = "0123456789"; // Números
    const especiais = "!@#$%^&*()_+[]{}|;:,.<>?"; // Caracteres especiais

    let senha = "";

    // Garantindo ao menos um caractere de cada tipo
    senha += caracteres[Math.floor(Math.random() * caracteres.length)];
    senha += maiusculas[Math.floor(Math.random() * maiusculas.length)];
    senha += numeros[Math.floor(Math.random() * numeros.length)];
    senha += especiais[Math.floor(Math.random() * especiais.length)];

    // Preenchendo o restante da senha com caracteres aleatórios
    const todosCaracteres = caracteres + maiusculas + numeros + especiais;
    for (let i = senha.length; i < tamanho; i++) {
        senha += todosCaracteres[Math.floor(Math.random() * todosCaracteres.length)];
    }

    // Embaralhando os caracteres da senha para maior segurança
    senha = senha.split("").sort(() => 0.5 - Math.random()).join("");

    return senha;
}

// Exemplo de uso
const senhaGerada = gerarSenha();
console.log("Senha Gerada:", senhaGerada);



