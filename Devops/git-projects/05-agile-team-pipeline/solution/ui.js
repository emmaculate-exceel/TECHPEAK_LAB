const quizEl = document.getElementById("quiz");
let current = 0, score = 0;
function render() {
  if (current >= questions.length) {
    quizEl.innerHTML = `<h2>Done!</h2><p>Final score: ${score} / ${questions.length}</p>`;
    return;
  }
  const item = questions[current];
  quizEl.innerHTML = `<p>Score: ${score} / ${questions.length}</p><h2>${item.q}</h2>`;
  item.options.forEach((opt, i) => {
    const b = document.createElement("button");
    b.textContent = opt;
    b.onclick = () => { if (i === item.answer) score++; current++; render(); };
    quizEl.appendChild(b);
  });
}
render();
