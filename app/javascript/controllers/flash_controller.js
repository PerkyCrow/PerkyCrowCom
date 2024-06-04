import {Controller} from '@hotwired/stimulus'

export default class extends Controller {
    static targets = ['close']

    connect () {
        this.closeTargets.forEach(button => {
            button.addEventListener('click', () => {
                this.element.remove()
            })
        })
    }
}