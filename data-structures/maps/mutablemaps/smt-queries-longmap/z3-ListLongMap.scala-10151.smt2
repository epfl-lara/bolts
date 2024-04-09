; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119712 () Bool)

(assert start!119712)

(declare-fun b!1393917 () Bool)

(declare-fun res!933434 () Bool)

(declare-fun e!789281 () Bool)

(assert (=> b!1393917 (=> (not res!933434) (not e!789281))))

(declare-datatypes ((array!95312 0))(
  ( (array!95313 (arr!46010 (Array (_ BitVec 32) (_ BitVec 64))) (size!46561 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95312)

(declare-datatypes ((List!32709 0))(
  ( (Nil!32706) (Cons!32705 (h!33938 (_ BitVec 64)) (t!47410 List!32709)) )
))
(declare-fun arrayNoDuplicates!0 (array!95312 (_ BitVec 32) List!32709) Bool)

(assert (=> b!1393917 (= res!933434 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32706))))

(declare-fun b!1393918 () Bool)

(declare-fun res!933439 () Bool)

(assert (=> b!1393918 (=> (not res!933439) (not e!789281))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393918 (= res!933439 (validKeyInArray!0 (select (arr!46010 a!2901) i!1037)))))

(declare-fun b!1393919 () Bool)

(declare-fun res!933441 () Bool)

(assert (=> b!1393919 (=> (not res!933441) (not e!789281))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393919 (= res!933441 (validKeyInArray!0 (select (arr!46010 a!2901) j!112)))))

(declare-fun b!1393920 () Bool)

(declare-fun e!789284 () Bool)

(assert (=> b!1393920 (= e!789284 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10349 0))(
  ( (MissingZero!10349 (index!43766 (_ BitVec 32))) (Found!10349 (index!43767 (_ BitVec 32))) (Intermediate!10349 (undefined!11161 Bool) (index!43768 (_ BitVec 32)) (x!125444 (_ BitVec 32))) (Undefined!10349) (MissingVacant!10349 (index!43769 (_ BitVec 32))) )
))
(declare-fun lt!612142 () SeekEntryResult!10349)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95312 (_ BitVec 32)) SeekEntryResult!10349)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393920 (= lt!612142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46010 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46010 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95313 (store (arr!46010 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46561 a!2901)) mask!2840))))

(declare-fun b!1393921 () Bool)

(declare-fun res!933438 () Bool)

(assert (=> b!1393921 (=> (not res!933438) (not e!789281))))

(assert (=> b!1393921 (= res!933438 (and (= (size!46561 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46561 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46561 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393922 () Bool)

(assert (=> b!1393922 (= e!789281 (not e!789284))))

(declare-fun res!933435 () Bool)

(assert (=> b!1393922 (=> res!933435 e!789284)))

(declare-fun lt!612140 () SeekEntryResult!10349)

(get-info :version)

(assert (=> b!1393922 (= res!933435 (or (not ((_ is Intermediate!10349) lt!612140)) (undefined!11161 lt!612140)))))

(declare-fun e!789282 () Bool)

(assert (=> b!1393922 e!789282))

(declare-fun res!933440 () Bool)

(assert (=> b!1393922 (=> (not res!933440) (not e!789282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95312 (_ BitVec 32)) Bool)

(assert (=> b!1393922 (= res!933440 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46652 0))(
  ( (Unit!46653) )
))
(declare-fun lt!612141 () Unit!46652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95312 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46652)

(assert (=> b!1393922 (= lt!612141 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393922 (= lt!612140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46010 a!2901) j!112) mask!2840) (select (arr!46010 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393923 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95312 (_ BitVec 32)) SeekEntryResult!10349)

(assert (=> b!1393923 (= e!789282 (= (seekEntryOrOpen!0 (select (arr!46010 a!2901) j!112) a!2901 mask!2840) (Found!10349 j!112)))))

(declare-fun b!1393924 () Bool)

(declare-fun res!933436 () Bool)

(assert (=> b!1393924 (=> (not res!933436) (not e!789281))))

(assert (=> b!1393924 (= res!933436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!933437 () Bool)

(assert (=> start!119712 (=> (not res!933437) (not e!789281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119712 (= res!933437 (validMask!0 mask!2840))))

(assert (=> start!119712 e!789281))

(assert (=> start!119712 true))

(declare-fun array_inv!34955 (array!95312) Bool)

(assert (=> start!119712 (array_inv!34955 a!2901)))

(assert (= (and start!119712 res!933437) b!1393921))

(assert (= (and b!1393921 res!933438) b!1393918))

(assert (= (and b!1393918 res!933439) b!1393919))

(assert (= (and b!1393919 res!933441) b!1393924))

(assert (= (and b!1393924 res!933436) b!1393917))

(assert (= (and b!1393917 res!933434) b!1393922))

(assert (= (and b!1393922 res!933440) b!1393923))

(assert (= (and b!1393922 (not res!933435)) b!1393920))

(declare-fun m!1280121 () Bool)

(assert (=> b!1393917 m!1280121))

(declare-fun m!1280123 () Bool)

(assert (=> b!1393924 m!1280123))

(declare-fun m!1280125 () Bool)

(assert (=> b!1393918 m!1280125))

(assert (=> b!1393918 m!1280125))

(declare-fun m!1280127 () Bool)

(assert (=> b!1393918 m!1280127))

(declare-fun m!1280129 () Bool)

(assert (=> start!119712 m!1280129))

(declare-fun m!1280131 () Bool)

(assert (=> start!119712 m!1280131))

(declare-fun m!1280133 () Bool)

(assert (=> b!1393919 m!1280133))

(assert (=> b!1393919 m!1280133))

(declare-fun m!1280135 () Bool)

(assert (=> b!1393919 m!1280135))

(assert (=> b!1393922 m!1280133))

(declare-fun m!1280137 () Bool)

(assert (=> b!1393922 m!1280137))

(assert (=> b!1393922 m!1280133))

(declare-fun m!1280139 () Bool)

(assert (=> b!1393922 m!1280139))

(assert (=> b!1393922 m!1280137))

(assert (=> b!1393922 m!1280133))

(declare-fun m!1280141 () Bool)

(assert (=> b!1393922 m!1280141))

(declare-fun m!1280143 () Bool)

(assert (=> b!1393922 m!1280143))

(declare-fun m!1280145 () Bool)

(assert (=> b!1393920 m!1280145))

(declare-fun m!1280147 () Bool)

(assert (=> b!1393920 m!1280147))

(assert (=> b!1393920 m!1280147))

(declare-fun m!1280149 () Bool)

(assert (=> b!1393920 m!1280149))

(assert (=> b!1393920 m!1280149))

(assert (=> b!1393920 m!1280147))

(declare-fun m!1280151 () Bool)

(assert (=> b!1393920 m!1280151))

(assert (=> b!1393923 m!1280133))

(assert (=> b!1393923 m!1280133))

(declare-fun m!1280153 () Bool)

(assert (=> b!1393923 m!1280153))

(check-sat (not b!1393917) (not b!1393922) (not b!1393923) (not b!1393920) (not b!1393924) (not start!119712) (not b!1393919) (not b!1393918))
