; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129150 () Bool)

(assert start!129150)

(declare-fun res!1034777 () Bool)

(declare-fun e!845378 () Bool)

(assert (=> start!129150 (=> (not res!1034777) (not e!845378))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129150 (= res!1034777 (validMask!0 mask!2512))))

(assert (=> start!129150 e!845378))

(assert (=> start!129150 true))

(declare-datatypes ((array!100919 0))(
  ( (array!100920 (arr!48692 (Array (_ BitVec 32) (_ BitVec 64))) (size!49243 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100919)

(declare-fun array_inv!37637 (array!100919) Bool)

(assert (=> start!129150 (array_inv!37637 a!2804)))

(declare-fun b!1514802 () Bool)

(declare-fun res!1034783 () Bool)

(assert (=> b!1514802 (=> (not res!1034783) (not e!845378))))

(declare-datatypes ((List!35355 0))(
  ( (Nil!35352) (Cons!35351 (h!36764 (_ BitVec 64)) (t!50056 List!35355)) )
))
(declare-fun arrayNoDuplicates!0 (array!100919 (_ BitVec 32) List!35355) Bool)

(assert (=> b!1514802 (= res!1034783 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35352))))

(declare-fun b!1514803 () Bool)

(declare-fun e!845384 () Bool)

(declare-fun e!845379 () Bool)

(assert (=> b!1514803 (= e!845384 e!845379)))

(declare-fun res!1034787 () Bool)

(assert (=> b!1514803 (=> (not res!1034787) (not e!845379))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12884 0))(
  ( (MissingZero!12884 (index!53930 (_ BitVec 32))) (Found!12884 (index!53931 (_ BitVec 32))) (Intermediate!12884 (undefined!13696 Bool) (index!53932 (_ BitVec 32)) (x!135647 (_ BitVec 32))) (Undefined!12884) (MissingVacant!12884 (index!53933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100919 (_ BitVec 32)) SeekEntryResult!12884)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100919 (_ BitVec 32)) SeekEntryResult!12884)

(assert (=> b!1514803 (= res!1034787 (= (seekEntryOrOpen!0 (select (arr!48692 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48692 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514804 () Bool)

(declare-fun res!1034788 () Bool)

(assert (=> b!1514804 (=> (not res!1034788) (not e!845378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514804 (= res!1034788 (validKeyInArray!0 (select (arr!48692 a!2804) j!70)))))

(declare-fun b!1514805 () Bool)

(declare-fun res!1034786 () Bool)

(declare-fun e!845382 () Bool)

(assert (=> b!1514805 (=> (not res!1034786) (not e!845382))))

(declare-fun lt!656440 () SeekEntryResult!12884)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100919 (_ BitVec 32)) SeekEntryResult!12884)

(assert (=> b!1514805 (= res!1034786 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48692 a!2804) j!70) a!2804 mask!2512) lt!656440))))

(declare-fun b!1514806 () Bool)

(declare-fun e!845383 () Bool)

(assert (=> b!1514806 (= e!845383 (not true))))

(declare-fun e!845381 () Bool)

(assert (=> b!1514806 e!845381))

(declare-fun res!1034778 () Bool)

(assert (=> b!1514806 (=> (not res!1034778) (not e!845381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100919 (_ BitVec 32)) Bool)

(assert (=> b!1514806 (= res!1034778 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50592 0))(
  ( (Unit!50593) )
))
(declare-fun lt!656442 () Unit!50592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100919 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50592)

(assert (=> b!1514806 (= lt!656442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514807 () Bool)

(declare-fun res!1034785 () Bool)

(assert (=> b!1514807 (=> (not res!1034785) (not e!845378))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514807 (= res!1034785 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49243 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49243 a!2804))))))

(declare-fun b!1514808 () Bool)

(assert (=> b!1514808 (= e!845381 e!845384)))

(declare-fun res!1034780 () Bool)

(assert (=> b!1514808 (=> res!1034780 e!845384)))

(declare-fun lt!656439 () (_ BitVec 64))

(assert (=> b!1514808 (= res!1034780 (or (not (= (select (arr!48692 a!2804) j!70) lt!656439)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48692 a!2804) index!487) (select (arr!48692 a!2804) j!70)) (not (= (select (arr!48692 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514809 () Bool)

(declare-fun res!1034790 () Bool)

(assert (=> b!1514809 (=> (not res!1034790) (not e!845378))))

(assert (=> b!1514809 (= res!1034790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514810 () Bool)

(declare-fun res!1034789 () Bool)

(assert (=> b!1514810 (=> (not res!1034789) (not e!845381))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100919 (_ BitVec 32)) SeekEntryResult!12884)

(assert (=> b!1514810 (= res!1034789 (= (seekEntry!0 (select (arr!48692 a!2804) j!70) a!2804 mask!2512) (Found!12884 j!70)))))

(declare-fun b!1514811 () Bool)

(declare-fun res!1034779 () Bool)

(assert (=> b!1514811 (=> (not res!1034779) (not e!845378))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514811 (= res!1034779 (validKeyInArray!0 (select (arr!48692 a!2804) i!961)))))

(declare-fun lt!656441 () array!100919)

(declare-fun b!1514812 () Bool)

(assert (=> b!1514812 (= e!845379 (= (seekEntryOrOpen!0 lt!656439 lt!656441 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656439 lt!656441 mask!2512)))))

(declare-fun b!1514813 () Bool)

(assert (=> b!1514813 (= e!845382 e!845383)))

(declare-fun res!1034784 () Bool)

(assert (=> b!1514813 (=> (not res!1034784) (not e!845383))))

(declare-fun lt!656443 () SeekEntryResult!12884)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514813 (= res!1034784 (= lt!656443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656439 mask!2512) lt!656439 lt!656441 mask!2512)))))

(assert (=> b!1514813 (= lt!656439 (select (store (arr!48692 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514813 (= lt!656441 (array!100920 (store (arr!48692 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49243 a!2804)))))

(declare-fun b!1514814 () Bool)

(assert (=> b!1514814 (= e!845378 e!845382)))

(declare-fun res!1034782 () Bool)

(assert (=> b!1514814 (=> (not res!1034782) (not e!845382))))

(assert (=> b!1514814 (= res!1034782 (= lt!656443 lt!656440))))

(assert (=> b!1514814 (= lt!656440 (Intermediate!12884 false resIndex!21 resX!21))))

(assert (=> b!1514814 (= lt!656443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48692 a!2804) j!70) mask!2512) (select (arr!48692 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514815 () Bool)

(declare-fun res!1034781 () Bool)

(assert (=> b!1514815 (=> (not res!1034781) (not e!845378))))

(assert (=> b!1514815 (= res!1034781 (and (= (size!49243 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49243 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49243 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129150 res!1034777) b!1514815))

(assert (= (and b!1514815 res!1034781) b!1514811))

(assert (= (and b!1514811 res!1034779) b!1514804))

(assert (= (and b!1514804 res!1034788) b!1514809))

(assert (= (and b!1514809 res!1034790) b!1514802))

(assert (= (and b!1514802 res!1034783) b!1514807))

(assert (= (and b!1514807 res!1034785) b!1514814))

(assert (= (and b!1514814 res!1034782) b!1514805))

(assert (= (and b!1514805 res!1034786) b!1514813))

(assert (= (and b!1514813 res!1034784) b!1514806))

(assert (= (and b!1514806 res!1034778) b!1514810))

(assert (= (and b!1514810 res!1034789) b!1514808))

(assert (= (and b!1514808 (not res!1034780)) b!1514803))

(assert (= (and b!1514803 res!1034787) b!1514812))

(declare-fun m!1397851 () Bool)

(assert (=> b!1514804 m!1397851))

(assert (=> b!1514804 m!1397851))

(declare-fun m!1397853 () Bool)

(assert (=> b!1514804 m!1397853))

(declare-fun m!1397855 () Bool)

(assert (=> b!1514809 m!1397855))

(declare-fun m!1397857 () Bool)

(assert (=> b!1514802 m!1397857))

(declare-fun m!1397859 () Bool)

(assert (=> b!1514806 m!1397859))

(declare-fun m!1397861 () Bool)

(assert (=> b!1514806 m!1397861))

(declare-fun m!1397863 () Bool)

(assert (=> start!129150 m!1397863))

(declare-fun m!1397865 () Bool)

(assert (=> start!129150 m!1397865))

(declare-fun m!1397867 () Bool)

(assert (=> b!1514811 m!1397867))

(assert (=> b!1514811 m!1397867))

(declare-fun m!1397869 () Bool)

(assert (=> b!1514811 m!1397869))

(assert (=> b!1514810 m!1397851))

(assert (=> b!1514810 m!1397851))

(declare-fun m!1397871 () Bool)

(assert (=> b!1514810 m!1397871))

(assert (=> b!1514805 m!1397851))

(assert (=> b!1514805 m!1397851))

(declare-fun m!1397873 () Bool)

(assert (=> b!1514805 m!1397873))

(declare-fun m!1397875 () Bool)

(assert (=> b!1514813 m!1397875))

(assert (=> b!1514813 m!1397875))

(declare-fun m!1397877 () Bool)

(assert (=> b!1514813 m!1397877))

(declare-fun m!1397879 () Bool)

(assert (=> b!1514813 m!1397879))

(declare-fun m!1397881 () Bool)

(assert (=> b!1514813 m!1397881))

(declare-fun m!1397883 () Bool)

(assert (=> b!1514812 m!1397883))

(declare-fun m!1397885 () Bool)

(assert (=> b!1514812 m!1397885))

(assert (=> b!1514803 m!1397851))

(assert (=> b!1514803 m!1397851))

(declare-fun m!1397887 () Bool)

(assert (=> b!1514803 m!1397887))

(assert (=> b!1514803 m!1397851))

(declare-fun m!1397889 () Bool)

(assert (=> b!1514803 m!1397889))

(assert (=> b!1514814 m!1397851))

(assert (=> b!1514814 m!1397851))

(declare-fun m!1397891 () Bool)

(assert (=> b!1514814 m!1397891))

(assert (=> b!1514814 m!1397891))

(assert (=> b!1514814 m!1397851))

(declare-fun m!1397893 () Bool)

(assert (=> b!1514814 m!1397893))

(assert (=> b!1514808 m!1397851))

(declare-fun m!1397895 () Bool)

(assert (=> b!1514808 m!1397895))

(check-sat (not b!1514804) (not b!1514809) (not b!1514806) (not b!1514803) (not b!1514812) (not b!1514805) (not start!129150) (not b!1514814) (not b!1514802) (not b!1514810) (not b!1514813) (not b!1514811))
(check-sat)
