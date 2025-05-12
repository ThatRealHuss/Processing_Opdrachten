document.getElementById('roll-dice').addEventListener('click', rollDice);

function rollDice() {
    const diceContainer = document.getElementById('dice');
    diceContainer.innerHTML = ''; // Clear previous dice

    for (let i = 0; i < 5; i++) {
        const dice = document.createElement('div');
        dice.classList.add('dice');
        dice.textContent = Math.floor(Math.random() * 6) + 1;
        diceContainer.appendChild(dice);
    }
}