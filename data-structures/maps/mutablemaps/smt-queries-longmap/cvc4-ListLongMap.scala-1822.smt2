; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32848 () Bool)

(assert start!32848)

(declare-fun b!327672 () Bool)

(declare-fun res!180581 () Bool)

(declare-fun e!201485 () Bool)

(assert (=> b!327672 (=> (not res!180581) (not e!201485))))

(declare-datatypes ((array!16791 0))(
  ( (array!16792 (arr!7944 (Array (_ BitVec 32) (_ BitVec 64))) (size!8296 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16791)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3086 0))(
  ( (MissingZero!3086 (index!14520 (_ BitVec 32))) (Found!3086 (index!14521 (_ BitVec 32))) (Intermediate!3086 (undefined!3898 Bool) (index!14522 (_ BitVec 32)) (x!32731 (_ BitVec 32))) (Undefined!3086) (MissingVacant!3086 (index!14523 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16791 (_ BitVec 32)) SeekEntryResult!3086)

(assert (=> b!327672 (= res!180581 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3086 i!1250)))))

(declare-fun b!327673 () Bool)

(declare-fun res!180585 () Bool)

(declare-fun e!201487 () Bool)

(assert (=> b!327673 (=> (not res!180585) (not e!201487))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!327673 (= res!180585 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7944 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7944 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7944 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!327674 () Bool)

(declare-fun res!180579 () Bool)

(assert (=> b!327674 (=> (not res!180579) (not e!201485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327674 (= res!180579 (validKeyInArray!0 k!2497))))

(declare-fun res!180587 () Bool)

(assert (=> start!32848 (=> (not res!180587) (not e!201485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32848 (= res!180587 (validMask!0 mask!3777))))

(assert (=> start!32848 e!201485))

(declare-fun array_inv!5898 (array!16791) Bool)

(assert (=> start!32848 (array_inv!5898 a!3305)))

(assert (=> start!32848 true))

(declare-fun b!327675 () Bool)

(declare-fun lt!157664 () SeekEntryResult!3086)

(assert (=> b!327675 (= e!201487 (and (is-Intermediate!3086 lt!157664) (bvslt (x!32731 lt!157664) (bvadd #b00000000000000000000000000000001 x!1490))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16791 (_ BitVec 32)) SeekEntryResult!3086)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327675 (= lt!157664 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327676 () Bool)

(declare-fun res!180584 () Bool)

(assert (=> b!327676 (=> (not res!180584) (not e!201485))))

(declare-fun arrayContainsKey!0 (array!16791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327676 (= res!180584 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327677 () Bool)

(declare-fun res!180582 () Bool)

(assert (=> b!327677 (=> (not res!180582) (not e!201485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16791 (_ BitVec 32)) Bool)

(assert (=> b!327677 (= res!180582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327678 () Bool)

(declare-fun res!180588 () Bool)

(assert (=> b!327678 (=> (not res!180588) (not e!201485))))

(assert (=> b!327678 (= res!180588 (and (= (size!8296 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8296 a!3305))))))

(declare-fun b!327679 () Bool)

(declare-fun res!180586 () Bool)

(assert (=> b!327679 (=> (not res!180586) (not e!201487))))

(declare-fun lt!157663 () SeekEntryResult!3086)

(assert (=> b!327679 (= res!180586 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157663))))

(declare-fun b!327680 () Bool)

(declare-fun res!180583 () Bool)

(assert (=> b!327680 (=> (not res!180583) (not e!201487))))

(assert (=> b!327680 (= res!180583 (and (= (select (arr!7944 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8296 a!3305))))))

(declare-fun b!327681 () Bool)

(assert (=> b!327681 (= e!201485 e!201487)))

(declare-fun res!180580 () Bool)

(assert (=> b!327681 (=> (not res!180580) (not e!201487))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327681 (= res!180580 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157663))))

(assert (=> b!327681 (= lt!157663 (Intermediate!3086 false resIndex!58 resX!58))))

(assert (= (and start!32848 res!180587) b!327678))

(assert (= (and b!327678 res!180588) b!327674))

(assert (= (and b!327674 res!180579) b!327676))

(assert (= (and b!327676 res!180584) b!327672))

(assert (= (and b!327672 res!180581) b!327677))

(assert (= (and b!327677 res!180582) b!327681))

(assert (= (and b!327681 res!180580) b!327680))

(assert (= (and b!327680 res!180583) b!327679))

(assert (= (and b!327679 res!180586) b!327673))

(assert (= (and b!327673 res!180585) b!327675))

(declare-fun m!333917 () Bool)

(assert (=> b!327674 m!333917))

(declare-fun m!333919 () Bool)

(assert (=> b!327675 m!333919))

(assert (=> b!327675 m!333919))

(declare-fun m!333921 () Bool)

(assert (=> b!327675 m!333921))

(declare-fun m!333923 () Bool)

(assert (=> b!327673 m!333923))

(declare-fun m!333925 () Bool)

(assert (=> start!32848 m!333925))

(declare-fun m!333927 () Bool)

(assert (=> start!32848 m!333927))

(declare-fun m!333929 () Bool)

(assert (=> b!327681 m!333929))

(assert (=> b!327681 m!333929))

(declare-fun m!333931 () Bool)

(assert (=> b!327681 m!333931))

(declare-fun m!333933 () Bool)

(assert (=> b!327677 m!333933))

(declare-fun m!333935 () Bool)

(assert (=> b!327679 m!333935))

(declare-fun m!333937 () Bool)

(assert (=> b!327676 m!333937))

(declare-fun m!333939 () Bool)

(assert (=> b!327672 m!333939))

(declare-fun m!333941 () Bool)

(assert (=> b!327680 m!333941))

(push 1)

(assert (not b!327675))

(assert (not b!327677))

(assert (not b!327681))

(assert (not b!327676))

(assert (not start!32848))

(assert (not b!327679))

(assert (not b!327674))

(assert (not b!327672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69785 () Bool)

(assert (=> d!69785 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327674 d!69785))

(declare-fun b!327745 () Bool)

(declare-fun lt!157684 () SeekEntryResult!3086)

(assert (=> b!327745 (and (bvsge (index!14522 lt!157684) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157684) (size!8296 a!3305)))))

(declare-fun res!180605 () Bool)

(assert (=> b!327745 (= res!180605 (= (select (arr!7944 a!3305) (index!14522 lt!157684)) k!2497))))

(declare-fun e!201523 () Bool)

(assert (=> b!327745 (=> res!180605 e!201523)))

(declare-fun e!201524 () Bool)

(assert (=> b!327745 (= e!201524 e!201523)))

(declare-fun b!327746 () Bool)

(declare-fun e!201525 () Bool)

(assert (=> b!327746 (= e!201525 (bvsge (x!32731 lt!157684) #b01111111111111111111111111111110))))

(declare-fun d!69791 () Bool)

(assert (=> d!69791 e!201525))

(declare-fun c!51206 () Bool)

(assert (=> d!69791 (= c!51206 (and (is-Intermediate!3086 lt!157684) (undefined!3898 lt!157684)))))

(declare-fun e!201522 () SeekEntryResult!3086)

(assert (=> d!69791 (= lt!157684 e!201522)))

(declare-fun c!51205 () Bool)

(assert (=> d!69791 (= c!51205 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157685 () (_ BitVec 64))

(assert (=> d!69791 (= lt!157685 (select (arr!7944 a!3305) index!1840))))

(assert (=> d!69791 (validMask!0 mask!3777)))

(assert (=> d!69791 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157684)))

(declare-fun b!327747 () Bool)

(declare-fun e!201526 () SeekEntryResult!3086)

(assert (=> b!327747 (= e!201522 e!201526)))

(declare-fun c!51204 () Bool)

(assert (=> b!327747 (= c!51204 (or (= lt!157685 k!2497) (= (bvadd lt!157685 lt!157685) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327748 () Bool)

(assert (=> b!327748 (and (bvsge (index!14522 lt!157684) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157684) (size!8296 a!3305)))))

(declare-fun res!180606 () Bool)

(assert (=> b!327748 (= res!180606 (= (select (arr!7944 a!3305) (index!14522 lt!157684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327748 (=> res!180606 e!201523)))

(declare-fun b!327749 () Bool)

(assert (=> b!327749 (= e!201526 (Intermediate!3086 false index!1840 x!1490))))

(declare-fun b!327750 () Bool)

(assert (=> b!327750 (and (bvsge (index!14522 lt!157684) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157684) (size!8296 a!3305)))))

(assert (=> b!327750 (= e!201523 (= (select (arr!7944 a!3305) (index!14522 lt!157684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327751 () Bool)

(assert (=> b!327751 (= e!201526 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327752 () Bool)

(assert (=> b!327752 (= e!201525 e!201524)))

(declare-fun res!180604 () Bool)

(assert (=> b!327752 (= res!180604 (and (is-Intermediate!3086 lt!157684) (not (undefined!3898 lt!157684)) (bvslt (x!32731 lt!157684) #b01111111111111111111111111111110) (bvsge (x!32731 lt!157684) #b00000000000000000000000000000000) (bvsge (x!32731 lt!157684) x!1490)))))

(assert (=> b!327752 (=> (not res!180604) (not e!201524))))

(declare-fun b!327753 () Bool)

(assert (=> b!327753 (= e!201522 (Intermediate!3086 true index!1840 x!1490))))

(assert (= (and d!69791 c!51205) b!327753))

(assert (= (and d!69791 (not c!51205)) b!327747))

(assert (= (and b!327747 c!51204) b!327749))

(assert (= (and b!327747 (not c!51204)) b!327751))

(assert (= (and d!69791 c!51206) b!327746))

(assert (= (and d!69791 (not c!51206)) b!327752))

(assert (= (and b!327752 res!180604) b!327745))

(assert (= (and b!327745 (not res!180605)) b!327748))

(assert (= (and b!327748 (not res!180606)) b!327750))

(declare-fun m!333955 () Bool)

(assert (=> b!327745 m!333955))

(assert (=> d!69791 m!333923))

(assert (=> d!69791 m!333925))

(assert (=> b!327751 m!333919))

(assert (=> b!327751 m!333919))

(declare-fun m!333959 () Bool)

(assert (=> b!327751 m!333959))

(assert (=> b!327748 m!333955))

(assert (=> b!327750 m!333955))

(assert (=> b!327679 d!69791))

(declare-fun b!327754 () Bool)

(declare-fun lt!157686 () SeekEntryResult!3086)

(assert (=> b!327754 (and (bvsge (index!14522 lt!157686) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157686) (size!8296 a!3305)))))

(declare-fun res!180608 () Bool)

(assert (=> b!327754 (= res!180608 (= (select (arr!7944 a!3305) (index!14522 lt!157686)) k!2497))))

(declare-fun e!201528 () Bool)

(assert (=> b!327754 (=> res!180608 e!201528)))

(declare-fun e!201529 () Bool)

(assert (=> b!327754 (= e!201529 e!201528)))

(declare-fun b!327755 () Bool)

(declare-fun e!201530 () Bool)

(assert (=> b!327755 (= e!201530 (bvsge (x!32731 lt!157686) #b01111111111111111111111111111110))))

(declare-fun d!69797 () Bool)

(assert (=> d!69797 e!201530))

(declare-fun c!51209 () Bool)

(assert (=> d!69797 (= c!51209 (and (is-Intermediate!3086 lt!157686) (undefined!3898 lt!157686)))))

(declare-fun e!201527 () SeekEntryResult!3086)

(assert (=> d!69797 (= lt!157686 e!201527)))

(declare-fun c!51208 () Bool)

(assert (=> d!69797 (= c!51208 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157687 () (_ BitVec 64))

(assert (=> d!69797 (= lt!157687 (select (arr!7944 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69797 (validMask!0 mask!3777)))

(assert (=> d!69797 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157686)))

(declare-fun b!327756 () Bool)

(declare-fun e!201531 () SeekEntryResult!3086)

(assert (=> b!327756 (= e!201527 e!201531)))

(declare-fun c!51207 () Bool)

(assert (=> b!327756 (= c!51207 (or (= lt!157687 k!2497) (= (bvadd lt!157687 lt!157687) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327757 () Bool)

(assert (=> b!327757 (and (bvsge (index!14522 lt!157686) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157686) (size!8296 a!3305)))))

(declare-fun res!180609 () Bool)

(assert (=> b!327757 (= res!180609 (= (select (arr!7944 a!3305) (index!14522 lt!157686)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327757 (=> res!180609 e!201528)))

(declare-fun b!327758 () Bool)

(assert (=> b!327758 (= e!201531 (Intermediate!3086 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327759 () Bool)

(assert (=> b!327759 (and (bvsge (index!14522 lt!157686) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157686) (size!8296 a!3305)))))

(assert (=> b!327759 (= e!201528 (= (select (arr!7944 a!3305) (index!14522 lt!157686)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327760 () Bool)

(assert (=> b!327760 (= e!201531 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327761 () Bool)

(assert (=> b!327761 (= e!201530 e!201529)))

(declare-fun res!180607 () Bool)

(assert (=> b!327761 (= res!180607 (and (is-Intermediate!3086 lt!157686) (not (undefined!3898 lt!157686)) (bvslt (x!32731 lt!157686) #b01111111111111111111111111111110) (bvsge (x!32731 lt!157686) #b00000000000000000000000000000000) (bvsge (x!32731 lt!157686) #b00000000000000000000000000000000)))))

(assert (=> b!327761 (=> (not res!180607) (not e!201529))))

(declare-fun b!327762 () Bool)

(assert (=> b!327762 (= e!201527 (Intermediate!3086 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!69797 c!51208) b!327762))

(assert (= (and d!69797 (not c!51208)) b!327756))

(assert (= (and b!327756 c!51207) b!327758))

(assert (= (and b!327756 (not c!51207)) b!327760))

(assert (= (and d!69797 c!51209) b!327755))

(assert (= (and d!69797 (not c!51209)) b!327761))

(assert (= (and b!327761 res!180607) b!327754))

(assert (= (and b!327754 (not res!180608)) b!327757))

(assert (= (and b!327757 (not res!180609)) b!327759))

(declare-fun m!333965 () Bool)

(assert (=> b!327754 m!333965))

(assert (=> d!69797 m!333929))

(declare-fun m!333967 () Bool)

(assert (=> d!69797 m!333967))

(assert (=> d!69797 m!333925))

(assert (=> b!327760 m!333929))

(declare-fun m!333969 () Bool)

(assert (=> b!327760 m!333969))

(assert (=> b!327760 m!333969))

(declare-fun m!333971 () Bool)

(assert (=> b!327760 m!333971))

(assert (=> b!327757 m!333965))

(assert (=> b!327759 m!333965))

(assert (=> b!327681 d!69797))

(declare-fun d!69801 () Bool)

(declare-fun lt!157699 () (_ BitVec 32))

(declare-fun lt!157698 () (_ BitVec 32))

(assert (=> d!69801 (= lt!157699 (bvmul (bvxor lt!157698 (bvlshr lt!157698 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69801 (= lt!157698 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69801 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180611 (let ((h!5424 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32735 (bvmul (bvxor h!5424 (bvlshr h!5424 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32735 (bvlshr x!32735 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180611 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180611 #b00000000000000000000000000000000))))))

(assert (=> d!69801 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157699 (bvlshr lt!157699 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327681 d!69801))

(declare-fun d!69805 () Bool)

(assert (=> d!69805 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32848 d!69805))

(declare-fun d!69813 () Bool)

(assert (=> d!69813 (= (array_inv!5898 a!3305) (bvsge (size!8296 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32848 d!69813))

(declare-fun b!327796 () Bool)

(declare-fun lt!157709 () SeekEntryResult!3086)

(assert (=> b!327796 (and (bvsge (index!14522 lt!157709) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157709) (size!8296 a!3305)))))

(declare-fun res!180628 () Bool)

(assert (=> b!327796 (= res!180628 (= (select (arr!7944 a!3305) (index!14522 lt!157709)) k!2497))))

(declare-fun e!201554 () Bool)

(assert (=> b!327796 (=> res!180628 e!201554)))

(declare-fun e!201555 () Bool)

(assert (=> b!327796 (= e!201555 e!201554)))

(declare-fun b!327797 () Bool)

(declare-fun e!201556 () Bool)

(assert (=> b!327797 (= e!201556 (bvsge (x!32731 lt!157709) #b01111111111111111111111111111110))))

(declare-fun d!69815 () Bool)

(assert (=> d!69815 e!201556))

(declare-fun c!51221 () Bool)

(assert (=> d!69815 (= c!51221 (and (is-Intermediate!3086 lt!157709) (undefined!3898 lt!157709)))))

(declare-fun e!201553 () SeekEntryResult!3086)

(assert (=> d!69815 (= lt!157709 e!201553)))

(declare-fun c!51220 () Bool)

(assert (=> d!69815 (= c!51220 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!157710 () (_ BitVec 64))

(assert (=> d!69815 (= lt!157710 (select (arr!7944 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!69815 (validMask!0 mask!3777)))

(assert (=> d!69815 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!157709)))

(declare-fun b!327798 () Bool)

(declare-fun e!201557 () SeekEntryResult!3086)

(assert (=> b!327798 (= e!201553 e!201557)))

(declare-fun c!51219 () Bool)

(assert (=> b!327798 (= c!51219 (or (= lt!157710 k!2497) (= (bvadd lt!157710 lt!157710) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327799 () Bool)

(assert (=> b!327799 (and (bvsge (index!14522 lt!157709) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157709) (size!8296 a!3305)))))

(declare-fun res!180629 () Bool)

(assert (=> b!327799 (= res!180629 (= (select (arr!7944 a!3305) (index!14522 lt!157709)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327799 (=> res!180629 e!201554)))

(declare-fun b!327800 () Bool)

(assert (=> b!327800 (= e!201557 (Intermediate!3086 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!327801 () Bool)

(assert (=> b!327801 (and (bvsge (index!14522 lt!157709) #b00000000000000000000000000000000) (bvslt (index!14522 lt!157709) (size!8296 a!3305)))))

(assert (=> b!327801 (= e!201554 (= (select (arr!7944 a!3305) (index!14522 lt!157709)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327802 () Bool)

(assert (=> b!327802 (= e!201557 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327803 () Bool)

(assert (=> b!327803 (= e!201556 e!201555)))

(declare-fun res!180627 () Bool)

(assert (=> b!327803 (= res!180627 (and (is-Intermediate!3086 lt!157709) (not (undefined!3898 lt!157709)) (bvslt (x!32731 lt!157709) #b01111111111111111111111111111110) (bvsge (x!32731 lt!157709) #b00000000000000000000000000000000) (bvsge (x!32731 lt!157709) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!327803 (=> (not res!180627) (not e!201555))))

(declare-fun b!327804 () Bool)

(assert (=> b!327804 (= e!201553 (Intermediate!3086 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(assert (= (and d!69815 c!51220) b!327804))

(assert (= (and d!69815 (not c!51220)) b!327798))

(assert (= (and b!327798 c!51219) b!327800))

(assert (= (and b!327798 (not c!51219)) b!327802))

(assert (= (and d!69815 c!51221) b!327797))

(assert (= (and d!69815 (not c!51221)) b!327803))

(assert (= (and b!327803 res!180627) b!327796))

(assert (= (and b!327796 (not res!180628)) b!327799))

(assert (= (and b!327799 (not res!180629)) b!327801))

(declare-fun m!333987 () Bool)

(assert (=> b!327796 m!333987))

(assert (=> d!69815 m!333919))

(declare-fun m!333989 () Bool)

(assert (=> d!69815 m!333989))

(assert (=> d!69815 m!333925))

(assert (=> b!327802 m!333919))

(declare-fun m!333991 () Bool)

(assert (=> b!327802 m!333991))

(assert (=> b!327802 m!333991))

(declare-fun m!333993 () Bool)

(assert (=> b!327802 m!333993))

(assert (=> b!327799 m!333987))

(assert (=> b!327801 m!333987))

(assert (=> b!327675 d!69815))

(declare-fun d!69817 () Bool)

(declare-fun lt!157723 () (_ BitVec 32))

(assert (=> d!69817 (and (bvsge lt!157723 #b00000000000000000000000000000000) (bvslt lt!157723 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69817 (= lt!157723 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69817 (validMask!0 mask!3777)))

(assert (=> d!69817 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157723)))

(declare-fun bs!11378 () Bool)

(assert (= bs!11378 d!69817))

(declare-fun m!333999 () Bool)

(assert (=> bs!11378 m!333999))

(assert (=> bs!11378 m!333925))

(assert (=> b!327675 d!69817))

(declare-fun b!327852 () Bool)

(declare-fun e!201589 () Bool)

(declare-fun e!201588 () Bool)

(assert (=> b!327852 (= e!201589 e!201588)))

(declare-fun c!51236 () Bool)

(assert (=> b!327852 (= c!51236 (validKeyInArray!0 (select (arr!7944 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!69821 () Bool)

(declare-fun res!180651 () Bool)

(assert (=> d!69821 (=> res!180651 e!201589)))

(assert (=> d!69821 (= res!180651 (bvsge #b00000000000000000000000000000000 (size!8296 a!3305)))))

(assert (=> d!69821 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201589)))

(declare-fun b!327853 () Bool)

(declare-fun e!201590 () Bool)

(declare-fun call!26108 () Bool)

(assert (=> b!327853 (= e!201590 call!26108)))

(declare-fun bm!26105 () Bool)

(assert (=> bm!26105 (= call!26108 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!327854 () Bool)

(assert (=> b!327854 (= e!201588 e!201590)))

(declare-fun lt!157743 () (_ BitVec 64))

(assert (=> b!327854 (= lt!157743 (select (arr!7944 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10179 0))(
  ( (Unit!10180) )
))
(declare-fun lt!157744 () Unit!10179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16791 (_ BitVec 64) (_ BitVec 32)) Unit!10179)

(assert (=> b!327854 (= lt!157744 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157743 #b00000000000000000000000000000000))))

(assert (=> b!327854 (arrayContainsKey!0 a!3305 lt!157743 #b00000000000000000000000000000000)))

(declare-fun lt!157745 () Unit!10179)

(assert (=> b!327854 (= lt!157745 lt!157744)))

(declare-fun res!180650 () Bool)

(assert (=> b!327854 (= res!180650 (= (seekEntryOrOpen!0 (select (arr!7944 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3086 #b00000000000000000000000000000000)))))

(assert (=> b!327854 (=> (not res!180650) (not e!201590))))

(declare-fun b!327855 () Bool)

(assert (=> b!327855 (= e!201588 call!26108)))

(assert (= (and d!69821 (not res!180651)) b!327852))

(assert (= (and b!327852 c!51236) b!327854))

(assert (= (and b!327852 (not c!51236)) b!327855))

(assert (= (and b!327854 res!180650) b!327853))

(assert (= (or b!327853 b!327855) bm!26105))

(declare-fun m!334029 () Bool)

(assert (=> b!327852 m!334029))

(assert (=> b!327852 m!334029))

(declare-fun m!334031 () Bool)

(assert (=> b!327852 m!334031))

(declare-fun m!334033 () Bool)

(assert (=> bm!26105 m!334033))

(assert (=> b!327854 m!334029))

(declare-fun m!334035 () Bool)

(assert (=> b!327854 m!334035))

(declare-fun m!334037 () Bool)

(assert (=> b!327854 m!334037))

(assert (=> b!327854 m!334029))

(declare-fun m!334039 () Bool)

(assert (=> b!327854 m!334039))

(assert (=> b!327677 d!69821))

(declare-fun d!69833 () Bool)

(declare-fun res!180656 () Bool)

(declare-fun e!201595 () Bool)

(assert (=> d!69833 (=> res!180656 e!201595)))

(assert (=> d!69833 (= res!180656 (= (select (arr!7944 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69833 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201595)))

(declare-fun b!327860 () Bool)

(declare-fun e!201596 () Bool)

(assert (=> b!327860 (= e!201595 e!201596)))

(declare-fun res!180657 () Bool)

(assert (=> b!327860 (=> (not res!180657) (not e!201596))))

(assert (=> b!327860 (= res!180657 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8296 a!3305)))))

(declare-fun b!327861 () Bool)

(assert (=> b!327861 (= e!201596 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69833 (not res!180656)) b!327860))

(assert (= (and b!327860 res!180657) b!327861))

(assert (=> d!69833 m!334029))

(declare-fun m!334041 () Bool)

(assert (=> b!327861 m!334041))

(assert (=> b!327676 d!69833))

(declare-fun b!327919 () Bool)

(declare-fun c!51260 () Bool)

(declare-fun lt!157775 () (_ BitVec 64))

(assert (=> b!327919 (= c!51260 (= lt!157775 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201632 () SeekEntryResult!3086)

(declare-fun e!201633 () SeekEntryResult!3086)

(assert (=> b!327919 (= e!201632 e!201633)))

(declare-fun b!327920 () Bool)

(declare-fun e!201634 () SeekEntryResult!3086)

(assert (=> b!327920 (= e!201634 Undefined!3086)))

(declare-fun b!327921 () Bool)

(declare-fun lt!157774 () SeekEntryResult!3086)

(assert (=> b!327921 (= e!201633 (MissingZero!3086 (index!14522 lt!157774)))))

(declare-fun b!327922 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16791 (_ BitVec 32)) SeekEntryResult!3086)

(assert (=> b!327922 (= e!201633 (seekKeyOrZeroReturnVacant!0 (x!32731 lt!157774) (index!14522 lt!157774) (index!14522 lt!157774) k!2497 a!3305 mask!3777))))

(declare-fun b!327923 () Bool)

(assert (=> b!327923 (= e!201632 (Found!3086 (index!14522 lt!157774)))))

(declare-fun d!69835 () Bool)

(declare-fun lt!157773 () SeekEntryResult!3086)

(assert (=> d!69835 (and (or (is-Undefined!3086 lt!157773) (not (is-Found!3086 lt!157773)) (and (bvsge (index!14521 lt!157773) #b00000000000000000000000000000000) (bvslt (index!14521 lt!157773) (size!8296 a!3305)))) (or (is-Undefined!3086 lt!157773) (is-Found!3086 lt!157773) (not (is-MissingZero!3086 lt!157773)) (and (bvsge (index!14520 lt!157773) #b00000000000000000000000000000000) (bvslt (index!14520 lt!157773) (size!8296 a!3305)))) (or (is-Undefined!3086 lt!157773) (is-Found!3086 lt!157773) (is-MissingZero!3086 lt!157773) (not (is-MissingVacant!3086 lt!157773)) (and (bvsge (index!14523 lt!157773) #b00000000000000000000000000000000) (bvslt (index!14523 lt!157773) (size!8296 a!3305)))) (or (is-Undefined!3086 lt!157773) (ite (is-Found!3086 lt!157773) (= (select (arr!7944 a!3305) (index!14521 lt!157773)) k!2497) (ite (is-MissingZero!3086 lt!157773) (= (select (arr!7944 a!3305) (index!14520 lt!157773)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3086 lt!157773) (= (select (arr!7944 a!3305) (index!14523 lt!157773)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69835 (= lt!157773 e!201634)))

(declare-fun c!51259 () Bool)

(assert (=> d!69835 (= c!51259 (and (is-Intermediate!3086 lt!157774) (undefined!3898 lt!157774)))))

(assert (=> d!69835 (= lt!157774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69835 (validMask!0 mask!3777)))

(assert (=> d!69835 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157773)))

(declare-fun b!327924 () Bool)

(assert (=> b!327924 (= e!201634 e!201632)))

(assert (=> b!327924 (= lt!157775 (select (arr!7944 a!3305) (index!14522 lt!157774)))))

(declare-fun c!51258 () Bool)

(assert (=> b!327924 (= c!51258 (= lt!157775 k!2497))))

(assert (= (and d!69835 c!51259) b!327920))

(assert (= (and d!69835 (not c!51259)) b!327924))

(assert (= (and b!327924 c!51258) b!327923))

(assert (= (and b!327924 (not c!51258)) b!327919))

(assert (= (and b!327919 c!51260) b!327921))

(assert (= (and b!327919 (not c!51260)) b!327922))

(declare-fun m!334071 () Bool)

(assert (=> b!327922 m!334071))

(declare-fun m!334073 () Bool)

(assert (=> d!69835 m!334073))

(assert (=> d!69835 m!333929))

(declare-fun m!334075 () Bool)

(assert (=> d!69835 m!334075))

(declare-fun m!334077 () Bool)

(assert (=> d!69835 m!334077))

(assert (=> d!69835 m!333925))

(assert (=> d!69835 m!333929))

(assert (=> d!69835 m!333931))

(declare-fun m!334079 () Bool)

(assert (=> b!327924 m!334079))

(assert (=> b!327672 d!69835))

(push 1)

(assert (not b!327751))

(assert (not b!327802))

(assert (not d!69815))

(assert (not d!69797))

(assert (not b!327861))

(assert (not bm!26105))

(assert (not b!327854))

(assert (not b!327922))

(assert (not d!69791))

(assert (not d!69817))

(assert (not b!327852))

(assert (not d!69835))

(assert (not b!327760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

