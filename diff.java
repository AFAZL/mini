import java.util.Arrays;
import java.util.*;

class quicksort {
    public static int partition(int array[], int l, int h) {
        int p = array[h];
        int i = l - 1;

        for (int j = l; j < h; j++) {
            if (array[j] < p) {
                i++;
                int tem = array[i];
                array[i] = array[j];
                array[j] = tem;
            }
        }
        i++;
        int temp = array[i];
        array[i] = p;
        array[h] = temp;

        return i;
    }

    public static void QS(int array[], int l, int h) {
        if (l < h) {
            int pivot = partition(array, l, h);

            QS(array, l, pivot - 1);
            QS(array, pivot + 1, h);
        }
    }

    public static void main(String[] args) {

        int[] array = { 5, 3, 8, 4, 2 };
        int x = array.length;
        QS(array, 0, x - 1);

        for (int i = 0; i < x; i++) {
            System.out.print(array[i] + " ");
        }

    }
}
