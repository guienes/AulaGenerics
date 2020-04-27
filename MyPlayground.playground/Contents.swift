import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array



public func elementExist<Element: Comparable>(_ array: [Element], _ element: Element) -> Bool{
    for index in array {
        if index == element {
            return true
        }
    }
     return false
}


//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element: Numeric {
    func sum() -> Element {
        var soma = Element.zero
        for element in self {
            soma += element
        }
        return soma
    }
}
//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
public func recebeDoisArrays<T: Equatable>(array1: [T], array2: [T]) -> [T] {
    var interseccao: [T] = array1 + array2
    
    for i in array1.indices {
        for z in array2 {
            if array1[i] == z {
                interseccao.remove(at: i)
            }
        }
    }
    return interseccao
}


    //BONUS TODO: Fazer o método acima receber N arrays

    func commonElements<T: Equatable>(arrays: Array<T>...) -> [T]? {
        var copy = arrays
        let firstArray = copy.removeFirst()
        var result = [T]()

        for element in firstArray {
            for array in copy {
                if !array.contains(element){
                    break
                }
                if array == arrays.last{
                    result.append(element)
                }
            }
        }
        return result
    }
