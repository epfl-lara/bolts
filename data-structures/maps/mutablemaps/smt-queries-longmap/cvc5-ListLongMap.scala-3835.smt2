; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52778 () Bool)

(assert start!52778)

(declare-fun b!574962 () Bool)

(declare-fun e!330832 () Bool)

(declare-fun e!330830 () Bool)

(assert (=> b!574962 (= e!330832 e!330830)))

(declare-fun res!363535 () Bool)

(assert (=> b!574962 (=> (not res!363535) (not e!330830))))

(declare-datatypes ((SeekEntryResult!5673 0))(
  ( (MissingZero!5673 (index!24919 (_ BitVec 32))) (Found!5673 (index!24920 (_ BitVec 32))) (Intermediate!5673 (undefined!6485 Bool) (index!24921 (_ BitVec 32)) (x!53845 (_ BitVec 32))) (Undefined!5673) (MissingVacant!5673 (index!24922 (_ BitVec 32))) )
))
(declare-fun lt!262688 () SeekEntryResult!5673)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!574962 (= res!363535 (or (= lt!262688 (MissingZero!5673 i!1132)) (= lt!262688 (MissingVacant!5673 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35877 0))(
  ( (array!35878 (arr!17217 (Array (_ BitVec 32) (_ BitVec 64))) (size!17581 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35877)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35877 (_ BitVec 32)) SeekEntryResult!5673)

(assert (=> b!574962 (= lt!262688 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun lt!262684 () (_ BitVec 64))

(declare-fun lt!262683 () array!35877)

(declare-fun lt!262679 () SeekEntryResult!5673)

(declare-fun e!330826 () Bool)

(declare-fun b!574963 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35877 (_ BitVec 32)) SeekEntryResult!5673)

(assert (=> b!574963 (= e!330826 (= (seekEntryOrOpen!0 lt!262684 lt!262683 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53845 lt!262679) (index!24921 lt!262679) (index!24921 lt!262679) lt!262684 lt!262683 mask!3119)))))

(declare-fun b!574964 () Bool)

(declare-fun res!363530 () Bool)

(assert (=> b!574964 (=> (not res!363530) (not e!330832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574964 (= res!363530 (validKeyInArray!0 k!1914))))

(declare-fun b!574965 () Bool)

(declare-fun res!363539 () Bool)

(assert (=> b!574965 (=> (not res!363539) (not e!330832))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!574965 (= res!363539 (validKeyInArray!0 (select (arr!17217 a!3118) j!142)))))

(declare-fun lt!262686 () SeekEntryResult!5673)

(declare-fun lt!262685 () SeekEntryResult!5673)

(declare-fun e!330827 () Bool)

(declare-fun b!574966 () Bool)

(declare-fun lt!262680 () (_ BitVec 64))

(assert (=> b!574966 (= e!330827 (or (bvslt (index!24921 lt!262679) #b00000000000000000000000000000000) (bvsge (index!24921 lt!262679) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53845 lt!262679) #b01111111111111111111111111111110) (bvslt (x!53845 lt!262679) #b00000000000000000000000000000000) (not (= lt!262680 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17217 a!3118) i!1132 k!1914) (index!24921 lt!262679)) #b1000000000000000000000000000000000000000000000000000000000000000)) (= lt!262686 lt!262685)))))

(assert (=> b!574966 e!330826))

(declare-fun res!363534 () Bool)

(assert (=> b!574966 (=> (not res!363534) (not e!330826))))

(declare-fun lt!262687 () SeekEntryResult!5673)

(assert (=> b!574966 (= res!363534 (= lt!262687 lt!262686))))

(assert (=> b!574966 (= lt!262686 (seekKeyOrZeroReturnVacant!0 (x!53845 lt!262679) (index!24921 lt!262679) (index!24921 lt!262679) (select (arr!17217 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574968 () Bool)

(declare-fun e!330828 () Bool)

(assert (=> b!574968 (= e!330828 e!330827)))

(declare-fun res!363533 () Bool)

(assert (=> b!574968 (=> res!363533 e!330827)))

(assert (=> b!574968 (= res!363533 (or (= lt!262680 (select (arr!17217 a!3118) j!142)) (= lt!262680 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!574968 (= lt!262680 (select (arr!17217 a!3118) (index!24921 lt!262679)))))

(declare-fun b!574969 () Bool)

(declare-fun res!363532 () Bool)

(assert (=> b!574969 (=> (not res!363532) (not e!330832))))

(assert (=> b!574969 (= res!363532 (and (= (size!17581 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17581 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17581 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!574970 () Bool)

(declare-fun e!330829 () Bool)

(assert (=> b!574970 (= e!330829 (not e!330828))))

(declare-fun res!363538 () Bool)

(assert (=> b!574970 (=> res!363538 e!330828)))

(assert (=> b!574970 (= res!363538 (or (undefined!6485 lt!262679) (not (is-Intermediate!5673 lt!262679))))))

(assert (=> b!574970 (= lt!262687 lt!262685)))

(assert (=> b!574970 (= lt!262685 (Found!5673 j!142))))

(assert (=> b!574970 (= lt!262687 (seekEntryOrOpen!0 (select (arr!17217 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35877 (_ BitVec 32)) Bool)

(assert (=> b!574970 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18048 0))(
  ( (Unit!18049) )
))
(declare-fun lt!262678 () Unit!18048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18048)

(assert (=> b!574970 (= lt!262678 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!574971 () Bool)

(declare-fun res!363531 () Bool)

(assert (=> b!574971 (=> (not res!363531) (not e!330832))))

(declare-fun arrayContainsKey!0 (array!35877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!574971 (= res!363531 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!574972 () Bool)

(declare-fun res!363536 () Bool)

(assert (=> b!574972 (=> (not res!363536) (not e!330830))))

(declare-datatypes ((List!11350 0))(
  ( (Nil!11347) (Cons!11346 (h!12385 (_ BitVec 64)) (t!17586 List!11350)) )
))
(declare-fun arrayNoDuplicates!0 (array!35877 (_ BitVec 32) List!11350) Bool)

(assert (=> b!574972 (= res!363536 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11347))))

(declare-fun b!574973 () Bool)

(declare-fun res!363529 () Bool)

(assert (=> b!574973 (=> (not res!363529) (not e!330830))))

(assert (=> b!574973 (= res!363529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!574967 () Bool)

(assert (=> b!574967 (= e!330830 e!330829)))

(declare-fun res!363528 () Bool)

(assert (=> b!574967 (=> (not res!363528) (not e!330829))))

(declare-fun lt!262681 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35877 (_ BitVec 32)) SeekEntryResult!5673)

(assert (=> b!574967 (= res!363528 (= lt!262679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262681 lt!262684 lt!262683 mask!3119)))))

(declare-fun lt!262682 () (_ BitVec 32))

(assert (=> b!574967 (= lt!262679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262682 (select (arr!17217 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574967 (= lt!262681 (toIndex!0 lt!262684 mask!3119))))

(assert (=> b!574967 (= lt!262684 (select (store (arr!17217 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!574967 (= lt!262682 (toIndex!0 (select (arr!17217 a!3118) j!142) mask!3119))))

(assert (=> b!574967 (= lt!262683 (array!35878 (store (arr!17217 a!3118) i!1132 k!1914) (size!17581 a!3118)))))

(declare-fun res!363537 () Bool)

(assert (=> start!52778 (=> (not res!363537) (not e!330832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52778 (= res!363537 (validMask!0 mask!3119))))

(assert (=> start!52778 e!330832))

(assert (=> start!52778 true))

(declare-fun array_inv!12991 (array!35877) Bool)

(assert (=> start!52778 (array_inv!12991 a!3118)))

(assert (= (and start!52778 res!363537) b!574969))

(assert (= (and b!574969 res!363532) b!574965))

(assert (= (and b!574965 res!363539) b!574964))

(assert (= (and b!574964 res!363530) b!574971))

(assert (= (and b!574971 res!363531) b!574962))

(assert (= (and b!574962 res!363535) b!574973))

(assert (= (and b!574973 res!363529) b!574972))

(assert (= (and b!574972 res!363536) b!574967))

(assert (= (and b!574967 res!363528) b!574970))

(assert (= (and b!574970 (not res!363538)) b!574968))

(assert (= (and b!574968 (not res!363533)) b!574966))

(assert (= (and b!574966 res!363534) b!574963))

(declare-fun m!553765 () Bool)

(assert (=> b!574973 m!553765))

(declare-fun m!553767 () Bool)

(assert (=> b!574962 m!553767))

(declare-fun m!553769 () Bool)

(assert (=> b!574966 m!553769))

(declare-fun m!553771 () Bool)

(assert (=> b!574966 m!553771))

(declare-fun m!553773 () Bool)

(assert (=> b!574966 m!553773))

(assert (=> b!574966 m!553773))

(declare-fun m!553775 () Bool)

(assert (=> b!574966 m!553775))

(declare-fun m!553777 () Bool)

(assert (=> b!574971 m!553777))

(declare-fun m!553779 () Bool)

(assert (=> start!52778 m!553779))

(declare-fun m!553781 () Bool)

(assert (=> start!52778 m!553781))

(assert (=> b!574970 m!553773))

(assert (=> b!574970 m!553773))

(declare-fun m!553783 () Bool)

(assert (=> b!574970 m!553783))

(declare-fun m!553785 () Bool)

(assert (=> b!574970 m!553785))

(declare-fun m!553787 () Bool)

(assert (=> b!574970 m!553787))

(declare-fun m!553789 () Bool)

(assert (=> b!574963 m!553789))

(declare-fun m!553791 () Bool)

(assert (=> b!574963 m!553791))

(assert (=> b!574965 m!553773))

(assert (=> b!574965 m!553773))

(declare-fun m!553793 () Bool)

(assert (=> b!574965 m!553793))

(assert (=> b!574967 m!553773))

(declare-fun m!553795 () Bool)

(assert (=> b!574967 m!553795))

(assert (=> b!574967 m!553773))

(declare-fun m!553797 () Bool)

(assert (=> b!574967 m!553797))

(declare-fun m!553799 () Bool)

(assert (=> b!574967 m!553799))

(assert (=> b!574967 m!553773))

(declare-fun m!553801 () Bool)

(assert (=> b!574967 m!553801))

(assert (=> b!574967 m!553769))

(declare-fun m!553803 () Bool)

(assert (=> b!574967 m!553803))

(declare-fun m!553805 () Bool)

(assert (=> b!574972 m!553805))

(declare-fun m!553807 () Bool)

(assert (=> b!574964 m!553807))

(assert (=> b!574968 m!553773))

(declare-fun m!553809 () Bool)

(assert (=> b!574968 m!553809))

(push 1)

