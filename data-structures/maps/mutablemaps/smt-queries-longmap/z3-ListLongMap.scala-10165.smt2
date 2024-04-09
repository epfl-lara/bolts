; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119850 () Bool)

(assert start!119850)

(declare-fun b!1395284 () Bool)

(declare-fun e!789953 () Bool)

(declare-fun e!789954 () Bool)

(assert (=> b!1395284 (= e!789953 (not e!789954))))

(declare-fun res!934638 () Bool)

(assert (=> b!1395284 (=> res!934638 e!789954)))

(declare-datatypes ((SeekEntryResult!10391 0))(
  ( (MissingZero!10391 (index!43934 (_ BitVec 32))) (Found!10391 (index!43935 (_ BitVec 32))) (Intermediate!10391 (undefined!11203 Bool) (index!43936 (_ BitVec 32)) (x!125604 (_ BitVec 32))) (Undefined!10391) (MissingVacant!10391 (index!43937 (_ BitVec 32))) )
))
(declare-fun lt!612903 () SeekEntryResult!10391)

(get-info :version)

(assert (=> b!1395284 (= res!934638 (or (not ((_ is Intermediate!10391) lt!612903)) (undefined!11203 lt!612903)))))

(declare-fun e!789956 () Bool)

(assert (=> b!1395284 e!789956))

(declare-fun res!934643 () Bool)

(assert (=> b!1395284 (=> (not res!934643) (not e!789956))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95399 0))(
  ( (array!95400 (arr!46052 (Array (_ BitVec 32) (_ BitVec 64))) (size!46603 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95399)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95399 (_ BitVec 32)) Bool)

(assert (=> b!1395284 (= res!934643 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46736 0))(
  ( (Unit!46737) )
))
(declare-fun lt!612904 () Unit!46736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46736)

(assert (=> b!1395284 (= lt!612904 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95399 (_ BitVec 32)) SeekEntryResult!10391)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395284 (= lt!612903 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46052 a!2901) j!112) mask!2840) (select (arr!46052 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!934644 () Bool)

(assert (=> start!119850 (=> (not res!934644) (not e!789953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119850 (= res!934644 (validMask!0 mask!2840))))

(assert (=> start!119850 e!789953))

(assert (=> start!119850 true))

(declare-fun array_inv!34997 (array!95399) Bool)

(assert (=> start!119850 (array_inv!34997 a!2901)))

(declare-fun b!1395285 () Bool)

(declare-fun res!934637 () Bool)

(assert (=> b!1395285 (=> res!934637 e!789954)))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1395285 (= res!934637 (= lt!612903 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46052 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46052 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95400 (store (arr!46052 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46603 a!2901)) mask!2840)))))

(declare-fun b!1395286 () Bool)

(assert (=> b!1395286 (= e!789954 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1395287 () Bool)

(declare-fun res!934640 () Bool)

(assert (=> b!1395287 (=> (not res!934640) (not e!789953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395287 (= res!934640 (validKeyInArray!0 (select (arr!46052 a!2901) i!1037)))))

(declare-fun b!1395288 () Bool)

(declare-fun res!934639 () Bool)

(assert (=> b!1395288 (=> (not res!934639) (not e!789953))))

(assert (=> b!1395288 (= res!934639 (and (= (size!46603 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46603 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46603 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395289 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95399 (_ BitVec 32)) SeekEntryResult!10391)

(assert (=> b!1395289 (= e!789956 (= (seekEntryOrOpen!0 (select (arr!46052 a!2901) j!112) a!2901 mask!2840) (Found!10391 j!112)))))

(declare-fun b!1395290 () Bool)

(declare-fun res!934642 () Bool)

(assert (=> b!1395290 (=> (not res!934642) (not e!789953))))

(assert (=> b!1395290 (= res!934642 (validKeyInArray!0 (select (arr!46052 a!2901) j!112)))))

(declare-fun b!1395291 () Bool)

(declare-fun res!934641 () Bool)

(assert (=> b!1395291 (=> (not res!934641) (not e!789953))))

(assert (=> b!1395291 (= res!934641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395292 () Bool)

(declare-fun res!934636 () Bool)

(assert (=> b!1395292 (=> (not res!934636) (not e!789953))))

(declare-datatypes ((List!32751 0))(
  ( (Nil!32748) (Cons!32747 (h!33983 (_ BitVec 64)) (t!47452 List!32751)) )
))
(declare-fun arrayNoDuplicates!0 (array!95399 (_ BitVec 32) List!32751) Bool)

(assert (=> b!1395292 (= res!934636 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32748))))

(assert (= (and start!119850 res!934644) b!1395288))

(assert (= (and b!1395288 res!934639) b!1395287))

(assert (= (and b!1395287 res!934640) b!1395290))

(assert (= (and b!1395290 res!934642) b!1395291))

(assert (= (and b!1395291 res!934641) b!1395292))

(assert (= (and b!1395292 res!934636) b!1395284))

(assert (= (and b!1395284 res!934643) b!1395289))

(assert (= (and b!1395284 (not res!934638)) b!1395285))

(assert (= (and b!1395285 (not res!934637)) b!1395286))

(declare-fun m!1281801 () Bool)

(assert (=> b!1395289 m!1281801))

(assert (=> b!1395289 m!1281801))

(declare-fun m!1281803 () Bool)

(assert (=> b!1395289 m!1281803))

(declare-fun m!1281805 () Bool)

(assert (=> b!1395287 m!1281805))

(assert (=> b!1395287 m!1281805))

(declare-fun m!1281807 () Bool)

(assert (=> b!1395287 m!1281807))

(declare-fun m!1281809 () Bool)

(assert (=> b!1395285 m!1281809))

(declare-fun m!1281811 () Bool)

(assert (=> b!1395285 m!1281811))

(assert (=> b!1395285 m!1281811))

(declare-fun m!1281813 () Bool)

(assert (=> b!1395285 m!1281813))

(assert (=> b!1395285 m!1281813))

(assert (=> b!1395285 m!1281811))

(declare-fun m!1281815 () Bool)

(assert (=> b!1395285 m!1281815))

(assert (=> b!1395290 m!1281801))

(assert (=> b!1395290 m!1281801))

(declare-fun m!1281817 () Bool)

(assert (=> b!1395290 m!1281817))

(declare-fun m!1281819 () Bool)

(assert (=> start!119850 m!1281819))

(declare-fun m!1281821 () Bool)

(assert (=> start!119850 m!1281821))

(declare-fun m!1281823 () Bool)

(assert (=> b!1395292 m!1281823))

(declare-fun m!1281825 () Bool)

(assert (=> b!1395291 m!1281825))

(assert (=> b!1395284 m!1281801))

(declare-fun m!1281827 () Bool)

(assert (=> b!1395284 m!1281827))

(assert (=> b!1395284 m!1281801))

(declare-fun m!1281829 () Bool)

(assert (=> b!1395284 m!1281829))

(assert (=> b!1395284 m!1281827))

(assert (=> b!1395284 m!1281801))

(declare-fun m!1281831 () Bool)

(assert (=> b!1395284 m!1281831))

(declare-fun m!1281833 () Bool)

(assert (=> b!1395284 m!1281833))

(check-sat (not b!1395289) (not start!119850) (not b!1395287) (not b!1395285) (not b!1395284) (not b!1395290) (not b!1395291) (not b!1395292))
(check-sat)
