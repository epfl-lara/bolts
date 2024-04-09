; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67746 () Bool)

(assert start!67746)

(declare-fun b!785726 () Bool)

(declare-fun res!532044 () Bool)

(declare-fun e!436824 () Bool)

(assert (=> b!785726 (=> (not res!532044) (not e!436824))))

(declare-datatypes ((array!42741 0))(
  ( (array!42742 (arr!20455 (Array (_ BitVec 32) (_ BitVec 64))) (size!20876 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42741)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785726 (= res!532044 (validKeyInArray!0 (select (arr!20455 a!3186) j!159)))))

(declare-fun b!785727 () Bool)

(declare-fun res!532049 () Bool)

(assert (=> b!785727 (=> (not res!532049) (not e!436824))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785727 (= res!532049 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785728 () Bool)

(declare-fun e!436827 () Bool)

(declare-fun e!436834 () Bool)

(assert (=> b!785728 (= e!436827 e!436834)))

(declare-fun res!532050 () Bool)

(assert (=> b!785728 (=> res!532050 e!436834)))

(declare-fun lt!350401 () (_ BitVec 64))

(declare-fun lt!350390 () (_ BitVec 64))

(assert (=> b!785728 (= res!532050 (= lt!350401 lt!350390))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!785728 (= lt!350401 (select (store (arr!20455 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!785729 () Bool)

(declare-fun res!532055 () Bool)

(declare-fun e!436830 () Bool)

(assert (=> b!785729 (=> (not res!532055) (not e!436830))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42741 (_ BitVec 32)) Bool)

(assert (=> b!785729 (= res!532055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!436832 () Bool)

(declare-fun b!785730 () Bool)

(declare-datatypes ((SeekEntryResult!8062 0))(
  ( (MissingZero!8062 (index!34615 (_ BitVec 32))) (Found!8062 (index!34616 (_ BitVec 32))) (Intermediate!8062 (undefined!8874 Bool) (index!34617 (_ BitVec 32)) (x!65587 (_ BitVec 32))) (Undefined!8062) (MissingVacant!8062 (index!34618 (_ BitVec 32))) )
))
(declare-fun lt!350391 () SeekEntryResult!8062)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42741 (_ BitVec 32)) SeekEntryResult!8062)

(assert (=> b!785730 (= e!436832 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20455 a!3186) j!159) a!3186 mask!3328) lt!350391))))

(declare-fun b!785731 () Bool)

(assert (=> b!785731 (= e!436824 e!436830)))

(declare-fun res!532052 () Bool)

(assert (=> b!785731 (=> (not res!532052) (not e!436830))))

(declare-fun lt!350396 () SeekEntryResult!8062)

(assert (=> b!785731 (= res!532052 (or (= lt!350396 (MissingZero!8062 i!1173)) (= lt!350396 (MissingVacant!8062 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42741 (_ BitVec 32)) SeekEntryResult!8062)

(assert (=> b!785731 (= lt!350396 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!785732 () Bool)

(declare-fun e!436823 () Bool)

(assert (=> b!785732 (= e!436830 e!436823)))

(declare-fun res!532041 () Bool)

(assert (=> b!785732 (=> (not res!532041) (not e!436823))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785732 (= res!532041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20455 a!3186) j!159) mask!3328) (select (arr!20455 a!3186) j!159) a!3186 mask!3328) lt!350391))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785732 (= lt!350391 (Intermediate!8062 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785733 () Bool)

(declare-fun e!436828 () Bool)

(declare-fun lt!350395 () SeekEntryResult!8062)

(declare-fun lt!350394 () SeekEntryResult!8062)

(assert (=> b!785733 (= e!436828 (= lt!350395 lt!350394))))

(declare-fun b!785734 () Bool)

(declare-fun res!532056 () Bool)

(assert (=> b!785734 (=> (not res!532056) (not e!436824))))

(assert (=> b!785734 (= res!532056 (validKeyInArray!0 k0!2102))))

(declare-fun b!785735 () Bool)

(declare-fun res!532040 () Bool)

(assert (=> b!785735 (=> (not res!532040) (not e!436824))))

(assert (=> b!785735 (= res!532040 (and (= (size!20876 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20876 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20876 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785736 () Bool)

(assert (=> b!785736 (= e!436834 true)))

(assert (=> b!785736 e!436828))

(declare-fun res!532047 () Bool)

(assert (=> b!785736 (=> (not res!532047) (not e!436828))))

(assert (=> b!785736 (= res!532047 (= lt!350401 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27158 0))(
  ( (Unit!27159) )
))
(declare-fun lt!350400 () Unit!27158)

(declare-fun e!436829 () Unit!27158)

(assert (=> b!785736 (= lt!350400 e!436829)))

(declare-fun c!87251 () Bool)

(assert (=> b!785736 (= c!87251 (= lt!350401 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785737 () Bool)

(declare-fun res!532054 () Bool)

(assert (=> b!785737 (=> (not res!532054) (not e!436823))))

(assert (=> b!785737 (= res!532054 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20455 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785738 () Bool)

(declare-fun res!532039 () Bool)

(assert (=> b!785738 (=> (not res!532039) (not e!436830))))

(declare-datatypes ((List!14510 0))(
  ( (Nil!14507) (Cons!14506 (h!15629 (_ BitVec 64)) (t!20833 List!14510)) )
))
(declare-fun arrayNoDuplicates!0 (array!42741 (_ BitVec 32) List!14510) Bool)

(assert (=> b!785738 (= res!532039 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14507))))

(declare-fun b!785739 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42741 (_ BitVec 32)) SeekEntryResult!8062)

(assert (=> b!785739 (= e!436832 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20455 a!3186) j!159) a!3186 mask!3328) (Found!8062 j!159)))))

(declare-fun b!785740 () Bool)

(declare-fun res!532045 () Bool)

(assert (=> b!785740 (=> (not res!532045) (not e!436828))))

(declare-fun lt!350398 () array!42741)

(assert (=> b!785740 (= res!532045 (= (seekEntryOrOpen!0 lt!350390 lt!350398 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350390 lt!350398 mask!3328)))))

(declare-fun b!785741 () Bool)

(declare-fun res!532042 () Bool)

(assert (=> b!785741 (=> (not res!532042) (not e!436823))))

(assert (=> b!785741 (= res!532042 e!436832)))

(declare-fun c!87252 () Bool)

(assert (=> b!785741 (= c!87252 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785742 () Bool)

(declare-fun e!436833 () Bool)

(assert (=> b!785742 (= e!436823 e!436833)))

(declare-fun res!532048 () Bool)

(assert (=> b!785742 (=> (not res!532048) (not e!436833))))

(declare-fun lt!350397 () SeekEntryResult!8062)

(declare-fun lt!350392 () SeekEntryResult!8062)

(assert (=> b!785742 (= res!532048 (= lt!350397 lt!350392))))

(assert (=> b!785742 (= lt!350392 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350390 lt!350398 mask!3328))))

(assert (=> b!785742 (= lt!350397 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350390 mask!3328) lt!350390 lt!350398 mask!3328))))

(assert (=> b!785742 (= lt!350390 (select (store (arr!20455 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!785742 (= lt!350398 (array!42742 (store (arr!20455 a!3186) i!1173 k0!2102) (size!20876 a!3186)))))

(declare-fun e!436826 () Bool)

(declare-fun lt!350399 () SeekEntryResult!8062)

(declare-fun b!785743 () Bool)

(assert (=> b!785743 (= e!436826 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20455 a!3186) j!159) a!3186 mask!3328) lt!350399))))

(declare-fun b!785744 () Bool)

(declare-fun Unit!27160 () Unit!27158)

(assert (=> b!785744 (= e!436829 Unit!27160)))

(declare-fun res!532053 () Bool)

(assert (=> start!67746 (=> (not res!532053) (not e!436824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67746 (= res!532053 (validMask!0 mask!3328))))

(assert (=> start!67746 e!436824))

(assert (=> start!67746 true))

(declare-fun array_inv!16229 (array!42741) Bool)

(assert (=> start!67746 (array_inv!16229 a!3186)))

(declare-fun b!785745 () Bool)

(declare-fun res!532057 () Bool)

(assert (=> b!785745 (=> (not res!532057) (not e!436830))))

(assert (=> b!785745 (= res!532057 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20876 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20876 a!3186))))))

(declare-fun b!785746 () Bool)

(declare-fun e!436831 () Bool)

(assert (=> b!785746 (= e!436833 (not e!436831))))

(declare-fun res!532051 () Bool)

(assert (=> b!785746 (=> res!532051 e!436831)))

(get-info :version)

(assert (=> b!785746 (= res!532051 (or (not ((_ is Intermediate!8062) lt!350392)) (bvslt x!1131 (x!65587 lt!350392)) (not (= x!1131 (x!65587 lt!350392))) (not (= index!1321 (index!34617 lt!350392)))))))

(assert (=> b!785746 e!436826))

(declare-fun res!532046 () Bool)

(assert (=> b!785746 (=> (not res!532046) (not e!436826))))

(assert (=> b!785746 (= res!532046 (= lt!350395 lt!350399))))

(assert (=> b!785746 (= lt!350399 (Found!8062 j!159))))

(assert (=> b!785746 (= lt!350395 (seekEntryOrOpen!0 (select (arr!20455 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785746 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350393 () Unit!27158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27158)

(assert (=> b!785746 (= lt!350393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785747 () Bool)

(declare-fun Unit!27161 () Unit!27158)

(assert (=> b!785747 (= e!436829 Unit!27161)))

(assert (=> b!785747 false))

(declare-fun b!785748 () Bool)

(assert (=> b!785748 (= e!436831 e!436827)))

(declare-fun res!532043 () Bool)

(assert (=> b!785748 (=> res!532043 e!436827)))

(assert (=> b!785748 (= res!532043 (not (= lt!350394 lt!350399)))))

(assert (=> b!785748 (= lt!350394 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20455 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67746 res!532053) b!785735))

(assert (= (and b!785735 res!532040) b!785726))

(assert (= (and b!785726 res!532044) b!785734))

(assert (= (and b!785734 res!532056) b!785727))

(assert (= (and b!785727 res!532049) b!785731))

(assert (= (and b!785731 res!532052) b!785729))

(assert (= (and b!785729 res!532055) b!785738))

(assert (= (and b!785738 res!532039) b!785745))

(assert (= (and b!785745 res!532057) b!785732))

(assert (= (and b!785732 res!532041) b!785737))

(assert (= (and b!785737 res!532054) b!785741))

(assert (= (and b!785741 c!87252) b!785730))

(assert (= (and b!785741 (not c!87252)) b!785739))

(assert (= (and b!785741 res!532042) b!785742))

(assert (= (and b!785742 res!532048) b!785746))

(assert (= (and b!785746 res!532046) b!785743))

(assert (= (and b!785746 (not res!532051)) b!785748))

(assert (= (and b!785748 (not res!532043)) b!785728))

(assert (= (and b!785728 (not res!532050)) b!785736))

(assert (= (and b!785736 c!87251) b!785747))

(assert (= (and b!785736 (not c!87251)) b!785744))

(assert (= (and b!785736 res!532047) b!785740))

(assert (= (and b!785740 res!532045) b!785733))

(declare-fun m!727769 () Bool)

(assert (=> b!785742 m!727769))

(declare-fun m!727771 () Bool)

(assert (=> b!785742 m!727771))

(declare-fun m!727773 () Bool)

(assert (=> b!785742 m!727773))

(declare-fun m!727775 () Bool)

(assert (=> b!785742 m!727775))

(declare-fun m!727777 () Bool)

(assert (=> b!785742 m!727777))

(assert (=> b!785742 m!727769))

(declare-fun m!727779 () Bool)

(assert (=> b!785739 m!727779))

(assert (=> b!785739 m!727779))

(declare-fun m!727781 () Bool)

(assert (=> b!785739 m!727781))

(declare-fun m!727783 () Bool)

(assert (=> b!785729 m!727783))

(declare-fun m!727785 () Bool)

(assert (=> b!785731 m!727785))

(assert (=> b!785748 m!727779))

(assert (=> b!785748 m!727779))

(assert (=> b!785748 m!727781))

(declare-fun m!727787 () Bool)

(assert (=> b!785727 m!727787))

(assert (=> b!785746 m!727779))

(assert (=> b!785746 m!727779))

(declare-fun m!727789 () Bool)

(assert (=> b!785746 m!727789))

(declare-fun m!727791 () Bool)

(assert (=> b!785746 m!727791))

(declare-fun m!727793 () Bool)

(assert (=> b!785746 m!727793))

(declare-fun m!727795 () Bool)

(assert (=> b!785737 m!727795))

(assert (=> b!785743 m!727779))

(assert (=> b!785743 m!727779))

(declare-fun m!727797 () Bool)

(assert (=> b!785743 m!727797))

(declare-fun m!727799 () Bool)

(assert (=> b!785734 m!727799))

(assert (=> b!785732 m!727779))

(assert (=> b!785732 m!727779))

(declare-fun m!727801 () Bool)

(assert (=> b!785732 m!727801))

(assert (=> b!785732 m!727801))

(assert (=> b!785732 m!727779))

(declare-fun m!727803 () Bool)

(assert (=> b!785732 m!727803))

(declare-fun m!727805 () Bool)

(assert (=> b!785740 m!727805))

(declare-fun m!727807 () Bool)

(assert (=> b!785740 m!727807))

(assert (=> b!785728 m!727775))

(declare-fun m!727809 () Bool)

(assert (=> b!785728 m!727809))

(assert (=> b!785726 m!727779))

(assert (=> b!785726 m!727779))

(declare-fun m!727811 () Bool)

(assert (=> b!785726 m!727811))

(declare-fun m!727813 () Bool)

(assert (=> b!785738 m!727813))

(declare-fun m!727815 () Bool)

(assert (=> start!67746 m!727815))

(declare-fun m!727817 () Bool)

(assert (=> start!67746 m!727817))

(assert (=> b!785730 m!727779))

(assert (=> b!785730 m!727779))

(declare-fun m!727819 () Bool)

(assert (=> b!785730 m!727819))

(check-sat (not b!785726) (not b!785746) (not b!785738) (not b!785732) (not b!785739) (not b!785734) (not b!785740) (not start!67746) (not b!785730) (not b!785748) (not b!785731) (not b!785742) (not b!785729) (not b!785743) (not b!785727))
(check-sat)
