; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119856 () Bool)

(assert start!119856)

(declare-fun b!1395360 () Bool)

(declare-fun res!934716 () Bool)

(declare-fun e!789992 () Bool)

(assert (=> b!1395360 (=> (not res!934716) (not e!789992))))

(declare-datatypes ((array!95405 0))(
  ( (array!95406 (arr!46055 (Array (_ BitVec 32) (_ BitVec 64))) (size!46606 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95405)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395360 (= res!934716 (validKeyInArray!0 (select (arr!46055 a!2901) j!112)))))

(declare-fun b!1395361 () Bool)

(declare-fun res!934714 () Bool)

(assert (=> b!1395361 (=> (not res!934714) (not e!789992))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1395361 (= res!934714 (and (= (size!46606 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46606 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46606 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395362 () Bool)

(declare-fun res!934719 () Bool)

(assert (=> b!1395362 (=> (not res!934719) (not e!789992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95405 (_ BitVec 32)) Bool)

(assert (=> b!1395362 (= res!934719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!934713 () Bool)

(assert (=> start!119856 (=> (not res!934713) (not e!789992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119856 (= res!934713 (validMask!0 mask!2840))))

(assert (=> start!119856 e!789992))

(assert (=> start!119856 true))

(declare-fun array_inv!35000 (array!95405) Bool)

(assert (=> start!119856 (array_inv!35000 a!2901)))

(declare-fun b!1395363 () Bool)

(declare-fun e!789991 () Bool)

(assert (=> b!1395363 (= e!789991 true)))

(declare-datatypes ((SeekEntryResult!10394 0))(
  ( (MissingZero!10394 (index!43946 (_ BitVec 32))) (Found!10394 (index!43947 (_ BitVec 32))) (Intermediate!10394 (undefined!11206 Bool) (index!43948 (_ BitVec 32)) (x!125615 (_ BitVec 32))) (Undefined!10394) (MissingVacant!10394 (index!43949 (_ BitVec 32))) )
))
(declare-fun lt!612928 () SeekEntryResult!10394)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95405 (_ BitVec 32)) SeekEntryResult!10394)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395363 (= lt!612928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46055 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46055 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95406 (store (arr!46055 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46606 a!2901)) mask!2840))))

(declare-fun b!1395364 () Bool)

(assert (=> b!1395364 (= e!789992 (not e!789991))))

(declare-fun res!934712 () Bool)

(assert (=> b!1395364 (=> res!934712 e!789991)))

(declare-fun lt!612926 () SeekEntryResult!10394)

(get-info :version)

(assert (=> b!1395364 (= res!934712 (or (not ((_ is Intermediate!10394) lt!612926)) (undefined!11206 lt!612926)))))

(declare-fun e!789990 () Bool)

(assert (=> b!1395364 e!789990))

(declare-fun res!934717 () Bool)

(assert (=> b!1395364 (=> (not res!934717) (not e!789990))))

(assert (=> b!1395364 (= res!934717 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46742 0))(
  ( (Unit!46743) )
))
(declare-fun lt!612927 () Unit!46742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46742)

(assert (=> b!1395364 (= lt!612927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395364 (= lt!612926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46055 a!2901) j!112) mask!2840) (select (arr!46055 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395365 () Bool)

(declare-fun res!934715 () Bool)

(assert (=> b!1395365 (=> (not res!934715) (not e!789992))))

(assert (=> b!1395365 (= res!934715 (validKeyInArray!0 (select (arr!46055 a!2901) i!1037)))))

(declare-fun b!1395366 () Bool)

(declare-fun res!934718 () Bool)

(assert (=> b!1395366 (=> (not res!934718) (not e!789992))))

(declare-datatypes ((List!32754 0))(
  ( (Nil!32751) (Cons!32750 (h!33986 (_ BitVec 64)) (t!47455 List!32754)) )
))
(declare-fun arrayNoDuplicates!0 (array!95405 (_ BitVec 32) List!32754) Bool)

(assert (=> b!1395366 (= res!934718 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32751))))

(declare-fun b!1395367 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95405 (_ BitVec 32)) SeekEntryResult!10394)

(assert (=> b!1395367 (= e!789990 (= (seekEntryOrOpen!0 (select (arr!46055 a!2901) j!112) a!2901 mask!2840) (Found!10394 j!112)))))

(assert (= (and start!119856 res!934713) b!1395361))

(assert (= (and b!1395361 res!934714) b!1395365))

(assert (= (and b!1395365 res!934715) b!1395360))

(assert (= (and b!1395360 res!934716) b!1395362))

(assert (= (and b!1395362 res!934719) b!1395366))

(assert (= (and b!1395366 res!934718) b!1395364))

(assert (= (and b!1395364 res!934717) b!1395367))

(assert (= (and b!1395364 (not res!934712)) b!1395363))

(declare-fun m!1281903 () Bool)

(assert (=> b!1395364 m!1281903))

(declare-fun m!1281905 () Bool)

(assert (=> b!1395364 m!1281905))

(assert (=> b!1395364 m!1281903))

(declare-fun m!1281907 () Bool)

(assert (=> b!1395364 m!1281907))

(assert (=> b!1395364 m!1281905))

(assert (=> b!1395364 m!1281903))

(declare-fun m!1281909 () Bool)

(assert (=> b!1395364 m!1281909))

(declare-fun m!1281911 () Bool)

(assert (=> b!1395364 m!1281911))

(assert (=> b!1395360 m!1281903))

(assert (=> b!1395360 m!1281903))

(declare-fun m!1281913 () Bool)

(assert (=> b!1395360 m!1281913))

(declare-fun m!1281915 () Bool)

(assert (=> b!1395366 m!1281915))

(declare-fun m!1281917 () Bool)

(assert (=> b!1395365 m!1281917))

(assert (=> b!1395365 m!1281917))

(declare-fun m!1281919 () Bool)

(assert (=> b!1395365 m!1281919))

(declare-fun m!1281921 () Bool)

(assert (=> b!1395363 m!1281921))

(declare-fun m!1281923 () Bool)

(assert (=> b!1395363 m!1281923))

(assert (=> b!1395363 m!1281923))

(declare-fun m!1281925 () Bool)

(assert (=> b!1395363 m!1281925))

(assert (=> b!1395363 m!1281925))

(assert (=> b!1395363 m!1281923))

(declare-fun m!1281927 () Bool)

(assert (=> b!1395363 m!1281927))

(assert (=> b!1395367 m!1281903))

(assert (=> b!1395367 m!1281903))

(declare-fun m!1281929 () Bool)

(assert (=> b!1395367 m!1281929))

(declare-fun m!1281931 () Bool)

(assert (=> start!119856 m!1281931))

(declare-fun m!1281933 () Bool)

(assert (=> start!119856 m!1281933))

(declare-fun m!1281935 () Bool)

(assert (=> b!1395362 m!1281935))

(check-sat (not b!1395367) (not start!119856) (not b!1395360) (not b!1395365) (not b!1395362) (not b!1395366) (not b!1395363) (not b!1395364))
