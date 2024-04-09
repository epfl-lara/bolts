; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65816 () Bool)

(assert start!65816)

(declare-fun b!756814 () Bool)

(declare-fun res!511883 () Bool)

(declare-fun e!422017 () Bool)

(assert (=> b!756814 (=> (not res!511883) (not e!422017))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41942 0))(
  ( (array!41943 (arr!20081 (Array (_ BitVec 32) (_ BitVec 64))) (size!20502 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41942)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756814 (= res!511883 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20081 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756815 () Bool)

(declare-fun e!422019 () Bool)

(declare-datatypes ((SeekEntryResult!7688 0))(
  ( (MissingZero!7688 (index!33119 (_ BitVec 32))) (Found!7688 (index!33120 (_ BitVec 32))) (Intermediate!7688 (undefined!8500 Bool) (index!33121 (_ BitVec 32)) (x!64039 (_ BitVec 32))) (Undefined!7688) (MissingVacant!7688 (index!33122 (_ BitVec 32))) )
))
(declare-fun lt!337019 () SeekEntryResult!7688)

(declare-fun lt!337016 () SeekEntryResult!7688)

(assert (=> b!756815 (= e!422019 (= lt!337019 lt!337016))))

(declare-fun b!756816 () Bool)

(declare-fun res!511873 () Bool)

(declare-fun e!422011 () Bool)

(assert (=> b!756816 (=> (not res!511873) (not e!422011))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41942 (_ BitVec 32)) Bool)

(assert (=> b!756816 (= res!511873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756817 () Bool)

(declare-datatypes ((Unit!26154 0))(
  ( (Unit!26155) )
))
(declare-fun e!422016 () Unit!26154)

(declare-fun Unit!26156 () Unit!26154)

(assert (=> b!756817 (= e!422016 Unit!26156)))

(assert (=> b!756817 false))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!756818 () Bool)

(declare-fun e!422022 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!337014 () SeekEntryResult!7688)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41942 (_ BitVec 32)) SeekEntryResult!7688)

(assert (=> b!756818 (= e!422022 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20081 a!3186) j!159) a!3186 mask!3328) lt!337014))))

(declare-fun b!756819 () Bool)

(declare-fun e!422015 () Bool)

(assert (=> b!756819 (= e!422017 e!422015)))

(declare-fun res!511877 () Bool)

(assert (=> b!756819 (=> (not res!511877) (not e!422015))))

(declare-fun lt!337022 () SeekEntryResult!7688)

(declare-fun lt!337020 () SeekEntryResult!7688)

(assert (=> b!756819 (= res!511877 (= lt!337022 lt!337020))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!337015 () (_ BitVec 64))

(declare-fun lt!337017 () array!41942)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41942 (_ BitVec 32)) SeekEntryResult!7688)

(assert (=> b!756819 (= lt!337020 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337015 lt!337017 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756819 (= lt!337022 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337015 mask!3328) lt!337015 lt!337017 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!756819 (= lt!337015 (select (store (arr!20081 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756819 (= lt!337017 (array!41943 (store (arr!20081 a!3186) i!1173 k!2102) (size!20502 a!3186)))))

(declare-fun b!756820 () Bool)

(declare-fun e!422020 () Bool)

(assert (=> b!756820 (= e!422020 e!422011)))

(declare-fun res!511872 () Bool)

(assert (=> b!756820 (=> (not res!511872) (not e!422011))))

(declare-fun lt!337018 () SeekEntryResult!7688)

(assert (=> b!756820 (= res!511872 (or (= lt!337018 (MissingZero!7688 i!1173)) (= lt!337018 (MissingVacant!7688 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41942 (_ BitVec 32)) SeekEntryResult!7688)

(assert (=> b!756820 (= lt!337018 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756821 () Bool)

(declare-fun e!422021 () Bool)

(assert (=> b!756821 (= e!422015 (not e!422021))))

(declare-fun res!511870 () Bool)

(assert (=> b!756821 (=> res!511870 e!422021)))

(assert (=> b!756821 (= res!511870 (or (not (is-Intermediate!7688 lt!337020)) (bvslt x!1131 (x!64039 lt!337020)) (not (= x!1131 (x!64039 lt!337020))) (not (= index!1321 (index!33121 lt!337020)))))))

(assert (=> b!756821 e!422022))

(declare-fun res!511871 () Bool)

(assert (=> b!756821 (=> (not res!511871) (not e!422022))))

(assert (=> b!756821 (= res!511871 (= lt!337019 lt!337014))))

(assert (=> b!756821 (= lt!337014 (Found!7688 j!159))))

(assert (=> b!756821 (= lt!337019 (seekEntryOrOpen!0 (select (arr!20081 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756821 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337021 () Unit!26154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41942 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26154)

(assert (=> b!756821 (= lt!337021 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!511880 () Bool)

(assert (=> start!65816 (=> (not res!511880) (not e!422020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65816 (= res!511880 (validMask!0 mask!3328))))

(assert (=> start!65816 e!422020))

(assert (=> start!65816 true))

(declare-fun array_inv!15855 (array!41942) Bool)

(assert (=> start!65816 (array_inv!15855 a!3186)))

(declare-fun b!756822 () Bool)

(declare-fun res!511881 () Bool)

(assert (=> b!756822 (=> (not res!511881) (not e!422011))))

(declare-datatypes ((List!14136 0))(
  ( (Nil!14133) (Cons!14132 (h!15204 (_ BitVec 64)) (t!20459 List!14136)) )
))
(declare-fun arrayNoDuplicates!0 (array!41942 (_ BitVec 32) List!14136) Bool)

(assert (=> b!756822 (= res!511881 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14133))))

(declare-fun b!756823 () Bool)

(declare-fun e!422014 () Bool)

(assert (=> b!756823 (= e!422014 true)))

(assert (=> b!756823 e!422019))

(declare-fun res!511878 () Bool)

(assert (=> b!756823 (=> (not res!511878) (not e!422019))))

(declare-fun lt!337012 () (_ BitVec 64))

(assert (=> b!756823 (= res!511878 (= lt!337012 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337013 () Unit!26154)

(assert (=> b!756823 (= lt!337013 e!422016)))

(declare-fun c!82853 () Bool)

(assert (=> b!756823 (= c!82853 (= lt!337012 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756824 () Bool)

(declare-fun res!511884 () Bool)

(assert (=> b!756824 (=> (not res!511884) (not e!422017))))

(declare-fun e!422018 () Bool)

(assert (=> b!756824 (= res!511884 e!422018)))

(declare-fun c!82854 () Bool)

(assert (=> b!756824 (= c!82854 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756825 () Bool)

(declare-fun res!511879 () Bool)

(assert (=> b!756825 (=> (not res!511879) (not e!422020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756825 (= res!511879 (validKeyInArray!0 k!2102))))

(declare-fun b!756826 () Bool)

(declare-fun res!511886 () Bool)

(assert (=> b!756826 (=> (not res!511886) (not e!422020))))

(declare-fun arrayContainsKey!0 (array!41942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756826 (= res!511886 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756827 () Bool)

(assert (=> b!756827 (= e!422011 e!422017)))

(declare-fun res!511885 () Bool)

(assert (=> b!756827 (=> (not res!511885) (not e!422017))))

(declare-fun lt!337011 () SeekEntryResult!7688)

(assert (=> b!756827 (= res!511885 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20081 a!3186) j!159) mask!3328) (select (arr!20081 a!3186) j!159) a!3186 mask!3328) lt!337011))))

(assert (=> b!756827 (= lt!337011 (Intermediate!7688 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756828 () Bool)

(declare-fun res!511882 () Bool)

(assert (=> b!756828 (=> (not res!511882) (not e!422019))))

(assert (=> b!756828 (= res!511882 (= (seekEntryOrOpen!0 lt!337015 lt!337017 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337015 lt!337017 mask!3328)))))

(declare-fun b!756829 () Bool)

(declare-fun e!422013 () Bool)

(assert (=> b!756829 (= e!422021 e!422013)))

(declare-fun res!511869 () Bool)

(assert (=> b!756829 (=> res!511869 e!422013)))

(assert (=> b!756829 (= res!511869 (not (= lt!337016 lt!337014)))))

(assert (=> b!756829 (= lt!337016 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20081 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756830 () Bool)

(declare-fun res!511876 () Bool)

(assert (=> b!756830 (=> (not res!511876) (not e!422020))))

(assert (=> b!756830 (= res!511876 (validKeyInArray!0 (select (arr!20081 a!3186) j!159)))))

(declare-fun b!756831 () Bool)

(declare-fun res!511887 () Bool)

(assert (=> b!756831 (=> (not res!511887) (not e!422011))))

(assert (=> b!756831 (= res!511887 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20502 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20502 a!3186))))))

(declare-fun b!756832 () Bool)

(declare-fun res!511874 () Bool)

(assert (=> b!756832 (=> (not res!511874) (not e!422020))))

(assert (=> b!756832 (= res!511874 (and (= (size!20502 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20502 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20502 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756833 () Bool)

(declare-fun Unit!26157 () Unit!26154)

(assert (=> b!756833 (= e!422016 Unit!26157)))

(declare-fun b!756834 () Bool)

(assert (=> b!756834 (= e!422018 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20081 a!3186) j!159) a!3186 mask!3328) (Found!7688 j!159)))))

(declare-fun b!756835 () Bool)

(assert (=> b!756835 (= e!422018 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20081 a!3186) j!159) a!3186 mask!3328) lt!337011))))

(declare-fun b!756836 () Bool)

(assert (=> b!756836 (= e!422013 e!422014)))

(declare-fun res!511875 () Bool)

(assert (=> b!756836 (=> res!511875 e!422014)))

(assert (=> b!756836 (= res!511875 (= lt!337012 lt!337015))))

(assert (=> b!756836 (= lt!337012 (select (store (arr!20081 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65816 res!511880) b!756832))

(assert (= (and b!756832 res!511874) b!756830))

(assert (= (and b!756830 res!511876) b!756825))

(assert (= (and b!756825 res!511879) b!756826))

(assert (= (and b!756826 res!511886) b!756820))

(assert (= (and b!756820 res!511872) b!756816))

(assert (= (and b!756816 res!511873) b!756822))

(assert (= (and b!756822 res!511881) b!756831))

(assert (= (and b!756831 res!511887) b!756827))

(assert (= (and b!756827 res!511885) b!756814))

(assert (= (and b!756814 res!511883) b!756824))

(assert (= (and b!756824 c!82854) b!756835))

(assert (= (and b!756824 (not c!82854)) b!756834))

(assert (= (and b!756824 res!511884) b!756819))

(assert (= (and b!756819 res!511877) b!756821))

(assert (= (and b!756821 res!511871) b!756818))

(assert (= (and b!756821 (not res!511870)) b!756829))

(assert (= (and b!756829 (not res!511869)) b!756836))

(assert (= (and b!756836 (not res!511875)) b!756823))

(assert (= (and b!756823 c!82853) b!756817))

(assert (= (and b!756823 (not c!82853)) b!756833))

(assert (= (and b!756823 res!511878) b!756828))

(assert (= (and b!756828 res!511882) b!756815))

(declare-fun m!704745 () Bool)

(assert (=> b!756825 m!704745))

(declare-fun m!704747 () Bool)

(assert (=> b!756828 m!704747))

(declare-fun m!704749 () Bool)

(assert (=> b!756828 m!704749))

(declare-fun m!704751 () Bool)

(assert (=> b!756836 m!704751))

(declare-fun m!704753 () Bool)

(assert (=> b!756836 m!704753))

(declare-fun m!704755 () Bool)

(assert (=> b!756818 m!704755))

(assert (=> b!756818 m!704755))

(declare-fun m!704757 () Bool)

(assert (=> b!756818 m!704757))

(assert (=> b!756821 m!704755))

(assert (=> b!756821 m!704755))

(declare-fun m!704759 () Bool)

(assert (=> b!756821 m!704759))

(declare-fun m!704761 () Bool)

(assert (=> b!756821 m!704761))

(declare-fun m!704763 () Bool)

(assert (=> b!756821 m!704763))

(declare-fun m!704765 () Bool)

(assert (=> b!756814 m!704765))

(assert (=> b!756830 m!704755))

(assert (=> b!756830 m!704755))

(declare-fun m!704767 () Bool)

(assert (=> b!756830 m!704767))

(assert (=> b!756829 m!704755))

(assert (=> b!756829 m!704755))

(declare-fun m!704769 () Bool)

(assert (=> b!756829 m!704769))

(declare-fun m!704771 () Bool)

(assert (=> b!756822 m!704771))

(assert (=> b!756827 m!704755))

(assert (=> b!756827 m!704755))

(declare-fun m!704773 () Bool)

(assert (=> b!756827 m!704773))

(assert (=> b!756827 m!704773))

(assert (=> b!756827 m!704755))

(declare-fun m!704775 () Bool)

(assert (=> b!756827 m!704775))

(declare-fun m!704777 () Bool)

(assert (=> b!756820 m!704777))

(declare-fun m!704779 () Bool)

(assert (=> b!756819 m!704779))

(declare-fun m!704781 () Bool)

(assert (=> b!756819 m!704781))

(assert (=> b!756819 m!704751))

(assert (=> b!756819 m!704781))

(declare-fun m!704783 () Bool)

(assert (=> b!756819 m!704783))

(declare-fun m!704785 () Bool)

(assert (=> b!756819 m!704785))

(assert (=> b!756834 m!704755))

(assert (=> b!756834 m!704755))

(assert (=> b!756834 m!704769))

(declare-fun m!704787 () Bool)

(assert (=> b!756826 m!704787))

(declare-fun m!704789 () Bool)

(assert (=> b!756816 m!704789))

(declare-fun m!704791 () Bool)

(assert (=> start!65816 m!704791))

(declare-fun m!704793 () Bool)

(assert (=> start!65816 m!704793))

(assert (=> b!756835 m!704755))

(assert (=> b!756835 m!704755))

(declare-fun m!704795 () Bool)

(assert (=> b!756835 m!704795))

(push 1)

