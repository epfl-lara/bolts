// Based on the 2024 version of Ioana Jianu, 2nd year BSc student at EPFL
import stainless.lang._
object InsertionSortArray {
    def insertionSort(a: Array[BigInt]): Array[BigInt] = {
        val N = a.length
        var j = 1
        (while (j < N) {
            decreases(N - j)
            val key = a(j)
            var i = j 
            
            val j0 = j
            (while (i  >= 1 && a(i - 1) > key) {
                decreases(i)

                a(i) = a(i - 1)
                i = i - 1
            }).invariant(i >= 0 && j == j0 && i <= j && j < N && a.length == N)

            a(i) = key
            j = j + 1
        }) invariant (j >= 1 && j <= N && a.length == N)

        a
    }
}
