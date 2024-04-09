; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52226 () Bool)

(assert start!52226)

(declare-fun b!569792 () Bool)

(declare-fun res!359960 () Bool)

(declare-fun e!327711 () Bool)

(assert (=> b!569792 (=> (not res!359960) (not e!327711))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569792 (= res!359960 (validKeyInArray!0 k!1914))))

(declare-fun b!569793 () Bool)

(declare-fun res!359966 () Bool)

(assert (=> b!569793 (=> (not res!359966) (not e!327711))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35703 0))(
  ( (array!35704 (arr!17139 (Array (_ BitVec 32) (_ BitVec 64))) (size!17503 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35703)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569793 (= res!359966 (and (= (size!17503 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17503 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17503 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569794 () Bool)

(declare-fun res!359961 () Bool)

(declare-fun e!327712 () Bool)

(assert (=> b!569794 (=> (not res!359961) (not e!327712))))

(declare-datatypes ((List!11272 0))(
  ( (Nil!11269) (Cons!11268 (h!12289 (_ BitVec 64)) (t!17508 List!11272)) )
))
(declare-fun arrayNoDuplicates!0 (array!35703 (_ BitVec 32) List!11272) Bool)

(assert (=> b!569794 (= res!359961 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11269))))

(declare-fun b!569795 () Bool)

(declare-fun e!327709 () Bool)

(assert (=> b!569795 (= e!327712 e!327709)))

(declare-fun res!359964 () Bool)

(assert (=> b!569795 (=> (not res!359964) (not e!327709))))

(declare-fun lt!259789 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5595 0))(
  ( (MissingZero!5595 (index!24607 (_ BitVec 32))) (Found!5595 (index!24608 (_ BitVec 32))) (Intermediate!5595 (undefined!6407 Bool) (index!24609 (_ BitVec 32)) (x!53505 (_ BitVec 32))) (Undefined!5595) (MissingVacant!5595 (index!24610 (_ BitVec 32))) )
))
(declare-fun lt!259787 () SeekEntryResult!5595)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35703 (_ BitVec 32)) SeekEntryResult!5595)

(assert (=> b!569795 (= res!359964 (= lt!259787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259789 (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118)) mask!3119)))))

(declare-fun lt!259790 () (_ BitVec 32))

(assert (=> b!569795 (= lt!259787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259790 (select (arr!17139 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569795 (= lt!259789 (toIndex!0 (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569795 (= lt!259790 (toIndex!0 (select (arr!17139 a!3118) j!142) mask!3119))))

(declare-fun b!569796 () Bool)

(declare-fun res!359965 () Bool)

(assert (=> b!569796 (=> (not res!359965) (not e!327712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35703 (_ BitVec 32)) Bool)

(assert (=> b!569796 (= res!359965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569797 () Bool)

(declare-fun res!359963 () Bool)

(assert (=> b!569797 (=> (not res!359963) (not e!327711))))

(assert (=> b!569797 (= res!359963 (validKeyInArray!0 (select (arr!17139 a!3118) j!142)))))

(declare-fun e!327708 () Bool)

(declare-fun b!569798 () Bool)

(declare-fun lt!259785 () SeekEntryResult!5595)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35703 (_ BitVec 32)) SeekEntryResult!5595)

(assert (=> b!569798 (= e!327708 (= lt!259785 (seekKeyOrZeroReturnVacant!0 (x!53505 lt!259787) (index!24609 lt!259787) (index!24609 lt!259787) (select (arr!17139 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!569799 () Bool)

(assert (=> b!569799 (= e!327711 e!327712)))

(declare-fun res!359967 () Bool)

(assert (=> b!569799 (=> (not res!359967) (not e!327712))))

(declare-fun lt!259786 () SeekEntryResult!5595)

(assert (=> b!569799 (= res!359967 (or (= lt!259786 (MissingZero!5595 i!1132)) (= lt!259786 (MissingVacant!5595 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35703 (_ BitVec 32)) SeekEntryResult!5595)

(assert (=> b!569799 (= lt!259786 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!359969 () Bool)

(assert (=> start!52226 (=> (not res!359969) (not e!327711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52226 (= res!359969 (validMask!0 mask!3119))))

(assert (=> start!52226 e!327711))

(assert (=> start!52226 true))

(declare-fun array_inv!12913 (array!35703) Bool)

(assert (=> start!52226 (array_inv!12913 a!3118)))

(declare-fun b!569800 () Bool)

(assert (=> b!569800 (= e!327709 (not e!327708))))

(declare-fun res!359962 () Bool)

(assert (=> b!569800 (=> res!359962 e!327708)))

(assert (=> b!569800 (= res!359962 (or (undefined!6407 lt!259787) (not (is-Intermediate!5595 lt!259787)) (= (select (arr!17139 a!3118) (index!24609 lt!259787)) (select (arr!17139 a!3118) j!142)) (= (select (arr!17139 a!3118) (index!24609 lt!259787)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!569800 (= lt!259785 (Found!5595 j!142))))

(assert (=> b!569800 (= lt!259785 (seekEntryOrOpen!0 (select (arr!17139 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569800 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17892 0))(
  ( (Unit!17893) )
))
(declare-fun lt!259788 () Unit!17892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17892)

(assert (=> b!569800 (= lt!259788 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569801 () Bool)

(declare-fun res!359968 () Bool)

(assert (=> b!569801 (=> (not res!359968) (not e!327711))))

(declare-fun arrayContainsKey!0 (array!35703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569801 (= res!359968 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52226 res!359969) b!569793))

(assert (= (and b!569793 res!359966) b!569797))

(assert (= (and b!569797 res!359963) b!569792))

(assert (= (and b!569792 res!359960) b!569801))

(assert (= (and b!569801 res!359968) b!569799))

(assert (= (and b!569799 res!359967) b!569796))

(assert (= (and b!569796 res!359965) b!569794))

(assert (= (and b!569794 res!359961) b!569795))

(assert (= (and b!569795 res!359964) b!569800))

(assert (= (and b!569800 (not res!359962)) b!569798))

(declare-fun m!548743 () Bool)

(assert (=> b!569800 m!548743))

(declare-fun m!548745 () Bool)

(assert (=> b!569800 m!548745))

(declare-fun m!548747 () Bool)

(assert (=> b!569800 m!548747))

(declare-fun m!548749 () Bool)

(assert (=> b!569800 m!548749))

(assert (=> b!569800 m!548743))

(declare-fun m!548751 () Bool)

(assert (=> b!569800 m!548751))

(declare-fun m!548753 () Bool)

(assert (=> b!569794 m!548753))

(assert (=> b!569797 m!548743))

(assert (=> b!569797 m!548743))

(declare-fun m!548755 () Bool)

(assert (=> b!569797 m!548755))

(declare-fun m!548757 () Bool)

(assert (=> b!569792 m!548757))

(declare-fun m!548759 () Bool)

(assert (=> b!569799 m!548759))

(declare-fun m!548761 () Bool)

(assert (=> b!569801 m!548761))

(declare-fun m!548763 () Bool)

(assert (=> b!569796 m!548763))

(declare-fun m!548765 () Bool)

(assert (=> start!52226 m!548765))

(declare-fun m!548767 () Bool)

(assert (=> start!52226 m!548767))

(assert (=> b!569798 m!548743))

(assert (=> b!569798 m!548743))

(declare-fun m!548769 () Bool)

(assert (=> b!569798 m!548769))

(assert (=> b!569795 m!548743))

(declare-fun m!548771 () Bool)

(assert (=> b!569795 m!548771))

(assert (=> b!569795 m!548743))

(declare-fun m!548773 () Bool)

(assert (=> b!569795 m!548773))

(declare-fun m!548775 () Bool)

(assert (=> b!569795 m!548775))

(assert (=> b!569795 m!548743))

(declare-fun m!548777 () Bool)

(assert (=> b!569795 m!548777))

(assert (=> b!569795 m!548773))

(declare-fun m!548779 () Bool)

(assert (=> b!569795 m!548779))

(assert (=> b!569795 m!548773))

(declare-fun m!548781 () Bool)

(assert (=> b!569795 m!548781))

(push 1)

(assert (not b!569800))

(assert (not start!52226))

(assert (not b!569792))

(assert (not b!569798))

(assert (not b!569797))

(assert (not b!569794))

(assert (not b!569795))

(assert (not b!569796))

(assert (not b!569799))

(assert (not b!569801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84495 () Bool)

(declare-fun res!360034 () Bool)

(declare-fun e!327747 () Bool)

(assert (=> d!84495 (=> res!360034 e!327747)))

(assert (=> d!84495 (= res!360034 (= (select (arr!17139 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84495 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!327747)))

(declare-fun b!569866 () Bool)

(declare-fun e!327748 () Bool)

(assert (=> b!569866 (= e!327747 e!327748)))

(declare-fun res!360035 () Bool)

(assert (=> b!569866 (=> (not res!360035) (not e!327748))))

(assert (=> b!569866 (= res!360035 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17503 a!3118)))))

(declare-fun b!569867 () Bool)

(assert (=> b!569867 (= e!327748 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84495 (not res!360034)) b!569866))

(assert (= (and b!569866 res!360035) b!569867))

(declare-fun m!548863 () Bool)

(assert (=> d!84495 m!548863))

(declare-fun m!548865 () Bool)

(assert (=> b!569867 m!548865))

(assert (=> b!569801 d!84495))

(declare-fun b!569938 () Bool)

(declare-fun lt!259848 () SeekEntryResult!5595)

(assert (=> b!569938 (and (bvsge (index!24609 lt!259848) #b00000000000000000000000000000000) (bvslt (index!24609 lt!259848) (size!17503 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118)))))))

(declare-fun res!360069 () Bool)

(assert (=> b!569938 (= res!360069 (= (select (arr!17139 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118))) (index!24609 lt!259848)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!327794 () Bool)

(assert (=> b!569938 (=> res!360069 e!327794)))

(declare-fun b!569939 () Bool)

(declare-fun e!327796 () Bool)

(declare-fun e!327795 () Bool)

(assert (=> b!569939 (= e!327796 e!327795)))

(declare-fun res!360068 () Bool)

(assert (=> b!569939 (= res!360068 (and (is-Intermediate!5595 lt!259848) (not (undefined!6407 lt!259848)) (bvslt (x!53505 lt!259848) #b01111111111111111111111111111110) (bvsge (x!53505 lt!259848) #b00000000000000000000000000000000) (bvsge (x!53505 lt!259848) #b00000000000000000000000000000000)))))

(assert (=> b!569939 (=> (not res!360068) (not e!327795))))

(declare-fun b!569940 () Bool)

(declare-fun e!327797 () SeekEntryResult!5595)

(assert (=> b!569940 (= e!327797 (Intermediate!5595 true lt!259789 #b00000000000000000000000000000000))))

(declare-fun b!569941 () Bool)

(assert (=> b!569941 (= e!327796 (bvsge (x!53505 lt!259848) #b01111111111111111111111111111110))))

(declare-fun d!84497 () Bool)

(assert (=> d!84497 e!327796))

(declare-fun c!65293 () Bool)

(assert (=> d!84497 (= c!65293 (and (is-Intermediate!5595 lt!259848) (undefined!6407 lt!259848)))))

(assert (=> d!84497 (= lt!259848 e!327797)))

(declare-fun c!65292 () Bool)

(assert (=> d!84497 (= c!65292 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!259847 () (_ BitVec 64))

(assert (=> d!84497 (= lt!259847 (select (arr!17139 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118))) lt!259789))))

(assert (=> d!84497 (validMask!0 mask!3119)))

(assert (=> d!84497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259789 (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118)) mask!3119) lt!259848)))

(declare-fun e!327793 () SeekEntryResult!5595)

(declare-fun b!569942 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569942 (= e!327793 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!259789 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118)) mask!3119))))

(declare-fun b!569943 () Bool)

(assert (=> b!569943 (and (bvsge (index!24609 lt!259848) #b00000000000000000000000000000000) (bvslt (index!24609 lt!259848) (size!17503 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118)))))))

(assert (=> b!569943 (= e!327794 (= (select (arr!17139 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118))) (index!24609 lt!259848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!569944 () Bool)

(assert (=> b!569944 (= e!327797 e!327793)))

(declare-fun c!65291 () Bool)

(assert (=> b!569944 (= c!65291 (or (= lt!259847 (select (store (arr!17139 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!259847 lt!259847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!569945 () Bool)

(assert (=> b!569945 (and (bvsge (index!24609 lt!259848) #b00000000000000000000000000000000) (bvslt (index!24609 lt!259848) (size!17503 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118)))))))

(declare-fun res!360067 () Bool)

(assert (=> b!569945 (= res!360067 (= (select (arr!17139 (array!35704 (store (arr!17139 a!3118) i!1132 k!1914) (size!17503 a!3118))) (index!24609 lt!259848)) (select (store (arr!17139 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!569945 (=> res!360067 e!327794)))

(assert (=> b!569945 (= e!327795 e!327794)))

(declare-fun b!569946 () Bool)

(assert (=> b!569946 (= e!327793 (Intermediate!5595 false lt!259789 #b00000000000000000000000000000000))))

(assert (= (and d!84497 c!65292) b!569940))

(assert (= (and d!84497 (not c!65292)) b!569944))

(assert (= (and b!569944 c!65291) b!569946))

(assert (= (and b!569944 (not c!65291)) b!569942))

(assert (= (and d!84497 c!65293) b!569941))

(assert (= (and d!84497 (not c!65293)) b!569939))

(assert (= (and b!569939 res!360068) b!569945))

(assert (= (and b!569945 (not res!360067)) b!569938))

(assert (= (and b!569938 (not res!360069)) b!569943))

(declare-fun m!548887 () Bool)

(assert (=> b!569942 m!548887))

(assert (=> b!569942 m!548887))

(assert (=> b!569942 m!548773))

(declare-fun m!548889 () Bool)

(assert (=> b!569942 m!548889))

(declare-fun m!548891 () Bool)

(assert (=> b!569938 m!548891))

(declare-fun m!548893 () Bool)

(assert (=> d!84497 m!548893))

(assert (=> d!84497 m!548765))

(assert (=> b!569943 m!548891))

(assert (=> b!569945 m!548891))

(assert (=> b!569795 d!84497))

(declare-fun b!569947 () Bool)

(declare-fun lt!259850 () SeekEntryResult!5595)

(assert (=> b!569947 (and (bvsge (index!24609 lt!259850) #b00000000000000000000000000000000) (bvslt (index!24609 lt!259850) (size!17503 a!3118)))))

(declare-fun res!360072 () Bool)

(assert (=> b!569947 (= res!360072 (= (select (arr!17139 a!3118) (index!24609 lt!259850)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!327799 () Bool)

(assert (=> b!569947 (=> res!360072 e!327799)))

(declare-fun b!569948 () Bool)

(declare-fun e!327801 () Bool)

(declare-fun e!327800 () Bool)

(assert (=> b!569948 (= e!327801 e!327800)))

(declare-fun res!360071 () Bool)

(assert (=> b!569948 (= res!360071 (and (is-Intermediate!5595 lt!259850) (not (undefined!6407 lt!259850)) (bvslt (x!53505 lt!259850) #b01111111111111111111111111111110) (bvsge (x!53505 lt!259850) #b00000000000000000000000000000000) (bvsge (x!53505 lt!259850) #b00000000000000000000000000000000)))))

(assert (=> b!569948 (=> (not res!360071) (not e!327800))))

(declare-fun b!569949 () Bool)

(declare-fun e!327802 () SeekEntryResult!5595)

(assert (=> b!569949 (= e!327802 (Intermediate!5595 true lt!259790 #b00000000000000000000000000000000))))

(declare-fun b!569950 () Bool)

(assert (=> b!569950 (= e!327801 (bvsge (x!53505 lt!259850) #b01111111111111111111111111111110))))

(declare-fun d!84511 () Bool)

(assert (=> d!84511 e!327801))

(declare-fun c!65296 () Bool)

(assert (=> d!84511 (= c!65296 (and (is-Intermediate!5595 lt!259850) (undefined!6407 lt!259850)))))

(assert (=> d!84511 (= lt!259850 e!327802)))

(declare-fun c!65295 () Bool)

(assert (=> d!84511 (= c!65295 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!259849 () (_ BitVec 64))

(assert (=> d!84511 (= lt!259849 (select (arr!17139 a!3118) lt!259790))))

(assert (=> d!84511 (validMask!0 mask!3119)))

(assert (=> d!84511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259790 (select (arr!17139 a!3118) j!142) a!3118 mask!3119) lt!259850)))

(declare-fun e!327798 () SeekEntryResult!5595)

(declare-fun b!569951 () Bool)

(assert (=> b!569951 (= e!327798 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!259790 #b00000000000000000000000000000000 mask!3119) (select (arr!17139 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!569952 () Bool)

(assert (=> b!569952 (and (bvsge (index!24609 lt!259850) #b00000000000000000000000000000000) (bvslt (index!24609 lt!259850) (size!17503 a!3118)))))

(assert (=> b!569952 (= e!327799 (= (select (arr!17139 a!3118) (index!24609 lt!259850)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!569953 () Bool)

(assert (=> b!569953 (= e!327802 e!327798)))

(declare-fun c!65294 () Bool)

(assert (=> b!569953 (= c!65294 (or (= lt!259849 (select (arr!17139 a!3118) j!142)) (= (bvadd lt!259849 lt!259849) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!569954 () Bool)

(assert (=> b!569954 (and (bvsge (index!24609 lt!259850) #b00000000000000000000000000000000) (bvslt (index!24609 lt!259850) (size!17503 a!3118)))))

(declare-fun res!360070 () Bool)

(assert (=> b!569954 (= res!360070 (= (select (arr!17139 a!3118) (index!24609 lt!259850)) (select (arr!17139 a!3118) j!142)))))

(assert (=> b!569954 (=> res!360070 e!327799)))

(assert (=> b!569954 (= e!327800 e!327799)))

(declare-fun b!569955 () Bool)

(assert (=> b!569955 (= e!327798 (Intermediate!5595 false lt!259790 #b00000000000000000000000000000000))))

(assert (= (and d!84511 c!65295) b!569949))

(assert (= (and d!84511 (not c!65295)) b!569953))

(assert (= (and b!569953 c!65294) b!569955))

(assert (= (and b!569953 (not c!65294)) b!569951))

(assert (= (and d!84511 c!65296) b!569950))

(assert (= (and d!84511 (not c!65296)) b!569948))

(assert (= (and b!569948 res!360071) b!569954))

(assert (= (and b!569954 (not res!360070)) b!569947))

(assert (= (and b!569947 (not res!360072)) b!569952))

(declare-fun m!548895 () Bool)

(assert (=> b!569951 m!548895))

(assert (=> b!569951 m!548895))

(assert (=> b!569951 m!548743))

(declare-fun m!548899 () Bool)

(assert (=> b!569951 m!548899))

(declare-fun m!548903 () Bool)

(assert (=> b!569947 m!548903))

(declare-fun m!548905 () Bool)

(assert (=> d!84511 m!548905))

(assert (=> d!84511 m!548765))

(assert (=> b!569952 m!548903))

(assert (=> b!569954 m!548903))

(assert (=> b!569795 d!84511))

(declare-fun d!84513 () Bool)

(declare-fun lt!259862 () (_ BitVec 32))

(declare-fun lt!259861 () (_ BitVec 32))

(assert (=> d!84513 (= lt!259862 (bvmul (bvxor lt!259861 (bvlshr lt!259861 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84513 (= lt!259861 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84513 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360076 (let ((h!12293 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53512 (bvmul (bvxor h!12293 (bvlshr h!12293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53512 (bvlshr x!53512 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360076 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360076 #b00000000000000000000000000000000))))))

(assert (=> d!84513 (= (toIndex!0 (select (store (arr!17139 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!259862 (bvlshr lt!259862 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!569795 d!84513))

(declare-fun d!84521 () Bool)

(declare-fun lt!259864 () (_ BitVec 32))

(declare-fun lt!259863 () (_ BitVec 32))

(assert (=> d!84521 (= lt!259864 (bvmul (bvxor lt!259863 (bvlshr lt!259863 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84521 (= lt!259863 ((_ extract 31 0) (bvand (bvxor (select (arr!17139 a!3118) j!142) (bvlshr (select (arr!17139 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84521 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360076 (let ((h!12293 ((_ extract 31 0) (bvand (bvxor (select (arr!17139 a!3118) j!142) (bvlshr (select (arr!17139 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53512 (bvmul (bvxor h!12293 (bvlshr h!12293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53512 (bvlshr x!53512 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360076 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360076 #b00000000000000000000000000000000))))))

(assert (=> d!84521 (= (toIndex!0 (select (arr!17139 a!3118) j!142) mask!3119) (bvand (bvxor lt!259864 (bvlshr lt!259864 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!569795 d!84521))

(declare-fun lt!259888 () SeekEntryResult!5595)

(declare-fun e!327838 () SeekEntryResult!5595)

(declare-fun b!570015 () Bool)

(assert (=> b!570015 (= e!327838 (seekKeyOrZeroReturnVacant!0 (x!53505 lt!259888) (index!24609 lt!259888) (index!24609 lt!259888) (select (arr!17139 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570016 () Bool)

(declare-fun e!327839 () SeekEntryResult!5595)

(declare-fun e!327837 () SeekEntryResult!5595)

(assert (=> b!570016 (= e!327839 e!327837)))

(declare-fun lt!259886 () (_ BitVec 64))

(assert (=> b!570016 (= lt!259886 (select (arr!17139 a!3118) (index!24609 lt!259888)))))

(declare-fun c!65324 () Bool)

(assert (=> b!570016 (= c!65324 (= lt!259886 (select (arr!17139 a!3118) j!142)))))

(declare-fun b!570017 () Bool)

(assert (=> b!570017 (= e!327838 (MissingZero!5595 (index!24609 lt!259888)))))

(declare-fun d!84523 () Bool)

(declare-fun lt!259887 () SeekEntryResult!5595)

(assert (=> d!84523 (and (or (is-Undefined!5595 lt!259887) (not (is-Found!5595 lt!259887)) (and (bvsge (index!24608 lt!259887) #b00000000000000000000000000000000) (bvslt (index!24608 lt!259887) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259887) (is-Found!5595 lt!259887) (not (is-MissingZero!5595 lt!259887)) (and (bvsge (index!24607 lt!259887) #b00000000000000000000000000000000) (bvslt (index!24607 lt!259887) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259887) (is-Found!5595 lt!259887) (is-MissingZero!5595 lt!259887) (not (is-MissingVacant!5595 lt!259887)) (and (bvsge (index!24610 lt!259887) #b00000000000000000000000000000000) (bvslt (index!24610 lt!259887) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259887) (ite (is-Found!5595 lt!259887) (= (select (arr!17139 a!3118) (index!24608 lt!259887)) (select (arr!17139 a!3118) j!142)) (ite (is-MissingZero!5595 lt!259887) (= (select (arr!17139 a!3118) (index!24607 lt!259887)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5595 lt!259887) (= (select (arr!17139 a!3118) (index!24610 lt!259887)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84523 (= lt!259887 e!327839)))

(declare-fun c!65323 () Bool)

(assert (=> d!84523 (= c!65323 (and (is-Intermediate!5595 lt!259888) (undefined!6407 lt!259888)))))

(assert (=> d!84523 (= lt!259888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17139 a!3118) j!142) mask!3119) (select (arr!17139 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84523 (validMask!0 mask!3119)))

(assert (=> d!84523 (= (seekEntryOrOpen!0 (select (arr!17139 a!3118) j!142) a!3118 mask!3119) lt!259887)))

(declare-fun b!570018 () Bool)

(declare-fun c!65322 () Bool)

(assert (=> b!570018 (= c!65322 (= lt!259886 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!570018 (= e!327837 e!327838)))

(declare-fun b!570019 () Bool)

(assert (=> b!570019 (= e!327839 Undefined!5595)))

(declare-fun b!570020 () Bool)

(assert (=> b!570020 (= e!327837 (Found!5595 (index!24609 lt!259888)))))

(assert (= (and d!84523 c!65323) b!570019))

(assert (= (and d!84523 (not c!65323)) b!570016))

(assert (= (and b!570016 c!65324) b!570020))

(assert (= (and b!570016 (not c!65324)) b!570018))

(assert (= (and b!570018 c!65322) b!570017))

(assert (= (and b!570018 (not c!65322)) b!570015))

(assert (=> b!570015 m!548743))

(declare-fun m!548929 () Bool)

(assert (=> b!570015 m!548929))

(declare-fun m!548931 () Bool)

(assert (=> b!570016 m!548931))

(declare-fun m!548933 () Bool)

(assert (=> d!84523 m!548933))

(declare-fun m!548935 () Bool)

(assert (=> d!84523 m!548935))

(assert (=> d!84523 m!548765))

(assert (=> d!84523 m!548743))

(assert (=> d!84523 m!548771))

(declare-fun m!548937 () Bool)

(assert (=> d!84523 m!548937))

(assert (=> d!84523 m!548771))

(assert (=> d!84523 m!548743))

(declare-fun m!548939 () Bool)

(assert (=> d!84523 m!548939))

(assert (=> b!569800 d!84523))

(declare-fun bm!32586 () Bool)

(declare-fun call!32589 () Bool)

(assert (=> bm!32586 (= call!32589 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!570065 () Bool)

(declare-fun e!327868 () Bool)

(declare-fun e!327867 () Bool)

(assert (=> b!570065 (= e!327868 e!327867)))

(declare-fun lt!259918 () (_ BitVec 64))

(assert (=> b!570065 (= lt!259918 (select (arr!17139 a!3118) j!142))))

(declare-fun lt!259916 () Unit!17892)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35703 (_ BitVec 64) (_ BitVec 32)) Unit!17892)

(assert (=> b!570065 (= lt!259916 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259918 j!142))))

(assert (=> b!570065 (arrayContainsKey!0 a!3118 lt!259918 #b00000000000000000000000000000000)))

(declare-fun lt!259917 () Unit!17892)

(assert (=> b!570065 (= lt!259917 lt!259916)))

(declare-fun res!360094 () Bool)

(assert (=> b!570065 (= res!360094 (= (seekEntryOrOpen!0 (select (arr!17139 a!3118) j!142) a!3118 mask!3119) (Found!5595 j!142)))))

(assert (=> b!570065 (=> (not res!360094) (not e!327867))))

(declare-fun d!84531 () Bool)

(declare-fun res!360093 () Bool)

(declare-fun e!327869 () Bool)

(assert (=> d!84531 (=> res!360093 e!327869)))

(assert (=> d!84531 (= res!360093 (bvsge j!142 (size!17503 a!3118)))))

(assert (=> d!84531 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!327869)))

(declare-fun b!570066 () Bool)

(assert (=> b!570066 (= e!327867 call!32589)))

(declare-fun b!570067 () Bool)

(assert (=> b!570067 (= e!327869 e!327868)))

(declare-fun c!65342 () Bool)

(assert (=> b!570067 (= c!65342 (validKeyInArray!0 (select (arr!17139 a!3118) j!142)))))

(declare-fun b!570068 () Bool)

(assert (=> b!570068 (= e!327868 call!32589)))

(assert (= (and d!84531 (not res!360093)) b!570067))

(assert (= (and b!570067 c!65342) b!570065))

(assert (= (and b!570067 (not c!65342)) b!570068))

(assert (= (and b!570065 res!360094) b!570066))

(assert (= (or b!570066 b!570068) bm!32586))

(declare-fun m!548971 () Bool)

(assert (=> bm!32586 m!548971))

(assert (=> b!570065 m!548743))

(declare-fun m!548973 () Bool)

(assert (=> b!570065 m!548973))

(declare-fun m!548975 () Bool)

(assert (=> b!570065 m!548975))

(assert (=> b!570065 m!548743))

(assert (=> b!570065 m!548751))

(assert (=> b!570067 m!548743))

(assert (=> b!570067 m!548743))

(assert (=> b!570067 m!548755))

(assert (=> b!569800 d!84531))

(declare-fun d!84539 () Bool)

(assert (=> d!84539 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!259927 () Unit!17892)

(declare-fun choose!38 (array!35703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17892)

(assert (=> d!84539 (= lt!259927 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84539 (validMask!0 mask!3119)))

(assert (=> d!84539 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!259927)))

(declare-fun bs!17683 () Bool)

(assert (= bs!17683 d!84539))

(assert (=> bs!17683 m!548745))

(declare-fun m!548985 () Bool)

(assert (=> bs!17683 m!548985))

(assert (=> bs!17683 m!548765))

(assert (=> b!569800 d!84539))

(declare-fun b!570109 () Bool)

(declare-fun e!327904 () Bool)

(declare-fun call!32598 () Bool)

(assert (=> b!570109 (= e!327904 call!32598)))

(declare-fun b!570110 () Bool)

(assert (=> b!570110 (= e!327904 call!32598)))

(declare-fun bm!32595 () Bool)

(declare-fun c!65352 () Bool)

(assert (=> bm!32595 (= call!32598 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65352 (Cons!11268 (select (arr!17139 a!3118) #b00000000000000000000000000000000) Nil!11269) Nil!11269)))))

(declare-fun b!570111 () Bool)

(declare-fun e!327903 () Bool)

(assert (=> b!570111 (= e!327903 e!327904)))

(assert (=> b!570111 (= c!65352 (validKeyInArray!0 (select (arr!17139 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84545 () Bool)

(declare-fun res!360119 () Bool)

(declare-fun e!327901 () Bool)

(assert (=> d!84545 (=> res!360119 e!327901)))

(assert (=> d!84545 (= res!360119 (bvsge #b00000000000000000000000000000000 (size!17503 a!3118)))))

(assert (=> d!84545 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11269) e!327901)))

(declare-fun b!570112 () Bool)

(assert (=> b!570112 (= e!327901 e!327903)))

(declare-fun res!360117 () Bool)

(assert (=> b!570112 (=> (not res!360117) (not e!327903))))

(declare-fun e!327902 () Bool)

(assert (=> b!570112 (= res!360117 (not e!327902))))

(declare-fun res!360118 () Bool)

(assert (=> b!570112 (=> (not res!360118) (not e!327902))))

(assert (=> b!570112 (= res!360118 (validKeyInArray!0 (select (arr!17139 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!570113 () Bool)

(declare-fun contains!2883 (List!11272 (_ BitVec 64)) Bool)

(assert (=> b!570113 (= e!327902 (contains!2883 Nil!11269 (select (arr!17139 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84545 (not res!360119)) b!570112))

(assert (= (and b!570112 res!360118) b!570113))

(assert (= (and b!570112 res!360117) b!570111))

(assert (= (and b!570111 c!65352) b!570110))

(assert (= (and b!570111 (not c!65352)) b!570109))

(assert (= (or b!570110 b!570109) bm!32595))

(assert (=> bm!32595 m!548863))

(declare-fun m!549013 () Bool)

(assert (=> bm!32595 m!549013))

(assert (=> b!570111 m!548863))

(assert (=> b!570111 m!548863))

(declare-fun m!549015 () Bool)

(assert (=> b!570111 m!549015))

(assert (=> b!570112 m!548863))

(assert (=> b!570112 m!548863))

(assert (=> b!570112 m!549015))

(assert (=> b!570113 m!548863))

(assert (=> b!570113 m!548863))

(declare-fun m!549017 () Bool)

(assert (=> b!570113 m!549017))

(assert (=> b!569794 d!84545))

(declare-fun e!327910 () SeekEntryResult!5595)

(declare-fun b!570119 () Bool)

(declare-fun lt!259939 () SeekEntryResult!5595)

(assert (=> b!570119 (= e!327910 (seekKeyOrZeroReturnVacant!0 (x!53505 lt!259939) (index!24609 lt!259939) (index!24609 lt!259939) k!1914 a!3118 mask!3119))))

(declare-fun b!570120 () Bool)

(declare-fun e!327911 () SeekEntryResult!5595)

(declare-fun e!327909 () SeekEntryResult!5595)

(assert (=> b!570120 (= e!327911 e!327909)))

(declare-fun lt!259937 () (_ BitVec 64))

(assert (=> b!570120 (= lt!259937 (select (arr!17139 a!3118) (index!24609 lt!259939)))))

(declare-fun c!65356 () Bool)

(assert (=> b!570120 (= c!65356 (= lt!259937 k!1914))))

(declare-fun b!570121 () Bool)

(assert (=> b!570121 (= e!327910 (MissingZero!5595 (index!24609 lt!259939)))))

(declare-fun d!84557 () Bool)

(declare-fun lt!259938 () SeekEntryResult!5595)

(assert (=> d!84557 (and (or (is-Undefined!5595 lt!259938) (not (is-Found!5595 lt!259938)) (and (bvsge (index!24608 lt!259938) #b00000000000000000000000000000000) (bvslt (index!24608 lt!259938) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259938) (is-Found!5595 lt!259938) (not (is-MissingZero!5595 lt!259938)) (and (bvsge (index!24607 lt!259938) #b00000000000000000000000000000000) (bvslt (index!24607 lt!259938) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259938) (is-Found!5595 lt!259938) (is-MissingZero!5595 lt!259938) (not (is-MissingVacant!5595 lt!259938)) (and (bvsge (index!24610 lt!259938) #b00000000000000000000000000000000) (bvslt (index!24610 lt!259938) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259938) (ite (is-Found!5595 lt!259938) (= (select (arr!17139 a!3118) (index!24608 lt!259938)) k!1914) (ite (is-MissingZero!5595 lt!259938) (= (select (arr!17139 a!3118) (index!24607 lt!259938)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5595 lt!259938) (= (select (arr!17139 a!3118) (index!24610 lt!259938)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84557 (= lt!259938 e!327911)))

(declare-fun c!65355 () Bool)

(assert (=> d!84557 (= c!65355 (and (is-Intermediate!5595 lt!259939) (undefined!6407 lt!259939)))))

(assert (=> d!84557 (= lt!259939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84557 (validMask!0 mask!3119)))

(assert (=> d!84557 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!259938)))

(declare-fun b!570122 () Bool)

(declare-fun c!65354 () Bool)

(assert (=> b!570122 (= c!65354 (= lt!259937 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!570122 (= e!327909 e!327910)))

(declare-fun b!570123 () Bool)

(assert (=> b!570123 (= e!327911 Undefined!5595)))

(declare-fun b!570124 () Bool)

(assert (=> b!570124 (= e!327909 (Found!5595 (index!24609 lt!259939)))))

(assert (= (and d!84557 c!65355) b!570123))

(assert (= (and d!84557 (not c!65355)) b!570120))

(assert (= (and b!570120 c!65356) b!570124))

(assert (= (and b!570120 (not c!65356)) b!570122))

(assert (= (and b!570122 c!65354) b!570121))

(assert (= (and b!570122 (not c!65354)) b!570119))

(declare-fun m!549023 () Bool)

(assert (=> b!570119 m!549023))

(declare-fun m!549025 () Bool)

(assert (=> b!570120 m!549025))

(declare-fun m!549027 () Bool)

(assert (=> d!84557 m!549027))

(declare-fun m!549029 () Bool)

(assert (=> d!84557 m!549029))

(assert (=> d!84557 m!548765))

(declare-fun m!549031 () Bool)

(assert (=> d!84557 m!549031))

(declare-fun m!549033 () Bool)

(assert (=> d!84557 m!549033))

(assert (=> d!84557 m!549031))

(declare-fun m!549035 () Bool)

(assert (=> d!84557 m!549035))

(assert (=> b!569799 d!84557))

(declare-fun d!84561 () Bool)

(assert (=> d!84561 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52226 d!84561))

(declare-fun d!84563 () Bool)

(assert (=> d!84563 (= (array_inv!12913 a!3118) (bvsge (size!17503 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52226 d!84563))

(declare-fun b!570191 () Bool)

(declare-fun e!327947 () SeekEntryResult!5595)

(assert (=> b!570191 (= e!327947 (Found!5595 (index!24609 lt!259787)))))

(declare-fun d!84565 () Bool)

(declare-fun lt!259958 () SeekEntryResult!5595)

(assert (=> d!84565 (and (or (is-Undefined!5595 lt!259958) (not (is-Found!5595 lt!259958)) (and (bvsge (index!24608 lt!259958) #b00000000000000000000000000000000) (bvslt (index!24608 lt!259958) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259958) (is-Found!5595 lt!259958) (not (is-MissingVacant!5595 lt!259958)) (not (= (index!24610 lt!259958) (index!24609 lt!259787))) (and (bvsge (index!24610 lt!259958) #b00000000000000000000000000000000) (bvslt (index!24610 lt!259958) (size!17503 a!3118)))) (or (is-Undefined!5595 lt!259958) (ite (is-Found!5595 lt!259958) (= (select (arr!17139 a!3118) (index!24608 lt!259958)) (select (arr!17139 a!3118) j!142)) (and (is-MissingVacant!5595 lt!259958) (= (index!24610 lt!259958) (index!24609 lt!259787)) (= (select (arr!17139 a!3118) (index!24610 lt!259958)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!327948 () SeekEntryResult!5595)

(assert (=> d!84565 (= lt!259958 e!327948)))

(declare-fun c!65386 () Bool)

(assert (=> d!84565 (= c!65386 (bvsge (x!53505 lt!259787) #b01111111111111111111111111111110))))

(declare-fun lt!259959 () (_ BitVec 64))

(assert (=> d!84565 (= lt!259959 (select (arr!17139 a!3118) (index!24609 lt!259787)))))

(assert (=> d!84565 (validMask!0 mask!3119)))

(assert (=> d!84565 (= (seekKeyOrZeroReturnVacant!0 (x!53505 lt!259787) (index!24609 lt!259787) (index!24609 lt!259787) (select (arr!17139 a!3118) j!142) a!3118 mask!3119) lt!259958)))

(declare-fun e!327949 () SeekEntryResult!5595)

(declare-fun b!570192 () Bool)

(assert (=> b!570192 (= e!327949 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53505 lt!259787) #b00000000000000000000000000000001) (nextIndex!0 (index!24609 lt!259787) (x!53505 lt!259787) mask!3119) (index!24609 lt!259787) (select (arr!17139 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570193 () Bool)

(assert (=> b!570193 (= e!327949 (MissingVacant!5595 (index!24609 lt!259787)))))

(declare-fun b!570194 () Bool)

(assert (=> b!570194 (= e!327948 Undefined!5595)))

(declare-fun b!570195 () Bool)

(declare-fun c!65384 () Bool)

(assert (=> b!570195 (= c!65384 (= lt!259959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!570195 (= e!327947 e!327949)))

(declare-fun b!570196 () Bool)

(assert (=> b!570196 (= e!327948 e!327947)))

(declare-fun c!65385 () Bool)

(assert (=> b!570196 (= c!65385 (= lt!259959 (select (arr!17139 a!3118) j!142)))))

(assert (= (and d!84565 c!65386) b!570194))

(assert (= (and d!84565 (not c!65386)) b!570196))

(assert (= (and b!570196 c!65385) b!570191))

(assert (= (and b!570196 (not c!65385)) b!570195))

(assert (= (and b!570195 c!65384) b!570193))

(assert (= (and b!570195 (not c!65384)) b!570192))

(declare-fun m!549061 () Bool)

(assert (=> d!84565 m!549061))

(declare-fun m!549063 () Bool)

(assert (=> d!84565 m!549063))

(assert (=> d!84565 m!548747))

(assert (=> d!84565 m!548765))

(declare-fun m!549065 () Bool)

(assert (=> b!570192 m!549065))

(assert (=> b!570192 m!549065))

(assert (=> b!570192 m!548743))

(declare-fun m!549067 () Bool)

(assert (=> b!570192 m!549067))

(assert (=> b!569798 d!84565))

(declare-fun d!84571 () Bool)

(assert (=> d!84571 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!569792 d!84571))

(declare-fun d!84573 () Bool)

(assert (=> d!84573 (= (validKeyInArray!0 (select (arr!17139 a!3118) j!142)) (and (not (= (select (arr!17139 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17139 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!569797 d!84573))

(declare-fun bm!32597 () Bool)

(declare-fun call!32600 () Bool)

(assert (=> bm!32597 (= call!32600 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!570197 () Bool)

(declare-fun e!327951 () Bool)

(declare-fun e!327950 () Bool)

(assert (=> b!570197 (= e!327951 e!327950)))

(declare-fun lt!259968 () (_ BitVec 64))

(assert (=> b!570197 (= lt!259968 (select (arr!17139 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!259966 () Unit!17892)

(assert (=> b!570197 (= lt!259966 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259968 #b00000000000000000000000000000000))))

(assert (=> b!570197 (arrayContainsKey!0 a!3118 lt!259968 #b00000000000000000000000000000000)))

(declare-fun lt!259967 () Unit!17892)

(assert (=> b!570197 (= lt!259967 lt!259966)))

(declare-fun res!360137 () Bool)

(assert (=> b!570197 (= res!360137 (= (seekEntryOrOpen!0 (select (arr!17139 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5595 #b00000000000000000000000000000000)))))

(assert (=> b!570197 (=> (not res!360137) (not e!327950))))

(declare-fun d!84575 () Bool)

(declare-fun res!360136 () Bool)

(declare-fun e!327952 () Bool)

(assert (=> d!84575 (=> res!360136 e!327952)))

(assert (=> d!84575 (= res!360136 (bvsge #b00000000000000000000000000000000 (size!17503 a!3118)))))

(assert (=> d!84575 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!327952)))

(declare-fun b!570198 () Bool)

(assert (=> b!570198 (= e!327950 call!32600)))

(declare-fun b!570199 () Bool)

(assert (=> b!570199 (= e!327952 e!327951)))

(declare-fun c!65387 () Bool)

(assert (=> b!570199 (= c!65387 (validKeyInArray!0 (select (arr!17139 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!570200 () Bool)

(assert (=> b!570200 (= e!327951 call!32600)))

(assert (= (and d!84575 (not res!360136)) b!570199))

(assert (= (and b!570199 c!65387) b!570197))

(assert (= (and b!570199 (not c!65387)) b!570200))

(assert (= (and b!570197 res!360137) b!570198))

(assert (= (or b!570198 b!570200) bm!32597))

(declare-fun m!549069 () Bool)

(assert (=> bm!32597 m!549069))

(assert (=> b!570197 m!548863))

(declare-fun m!549071 () Bool)

(assert (=> b!570197 m!549071))

(declare-fun m!549073 () Bool)

(assert (=> b!570197 m!549073))

(assert (=> b!570197 m!548863))

(declare-fun m!549075 () Bool)

(assert (=> b!570197 m!549075))

(assert (=> b!570199 m!548863))

(assert (=> b!570199 m!548863))

(assert (=> b!570199 m!549015))

(assert (=> b!569796 d!84575))

(push 1)

