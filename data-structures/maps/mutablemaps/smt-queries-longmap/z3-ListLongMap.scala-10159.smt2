; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119760 () Bool)

(assert start!119760)

(declare-fun b!1394543 () Bool)

(declare-fun res!934065 () Bool)

(declare-fun e!789571 () Bool)

(assert (=> b!1394543 (=> res!934065 e!789571)))

(declare-datatypes ((array!95360 0))(
  ( (array!95361 (arr!46034 (Array (_ BitVec 32) (_ BitVec 64))) (size!46585 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95360)

(declare-fun lt!612562 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10373 0))(
  ( (MissingZero!10373 (index!43862 (_ BitVec 32))) (Found!10373 (index!43863 (_ BitVec 32))) (Intermediate!10373 (undefined!11185 Bool) (index!43864 (_ BitVec 32)) (x!125532 (_ BitVec 32))) (Undefined!10373) (MissingVacant!10373 (index!43865 (_ BitVec 32))) )
))
(declare-fun lt!612558 () SeekEntryResult!10373)

(assert (=> b!1394543 (= res!934065 (or (bvslt (x!125532 lt!612558) #b00000000000000000000000000000000) (bvsgt (x!125532 lt!612558) #b01111111111111111111111111111110) (bvslt lt!612562 #b00000000000000000000000000000000) (bvsge lt!612562 (size!46585 a!2901)) (bvslt (index!43864 lt!612558) #b00000000000000000000000000000000) (bvsge (index!43864 lt!612558) (size!46585 a!2901)) (not (= lt!612558 (Intermediate!10373 false (index!43864 lt!612558) (x!125532 lt!612558))))))))

(declare-fun b!1394544 () Bool)

(declare-fun e!789572 () Bool)

(assert (=> b!1394544 (= e!789572 e!789571)))

(declare-fun res!934062 () Bool)

(assert (=> b!1394544 (=> res!934062 e!789571)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!612557 () array!95360)

(declare-fun lt!612561 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95360 (_ BitVec 32)) SeekEntryResult!10373)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394544 (= res!934062 (not (= lt!612558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612561 mask!2840) lt!612561 lt!612557 mask!2840))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394544 (= lt!612561 (select (store (arr!46034 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394544 (= lt!612557 (array!95361 (store (arr!46034 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46585 a!2901)))))

(declare-fun b!1394545 () Bool)

(declare-fun res!934061 () Bool)

(declare-fun e!789570 () Bool)

(assert (=> b!1394545 (=> (not res!934061) (not e!789570))))

(declare-datatypes ((List!32733 0))(
  ( (Nil!32730) (Cons!32729 (h!33962 (_ BitVec 64)) (t!47434 List!32733)) )
))
(declare-fun arrayNoDuplicates!0 (array!95360 (_ BitVec 32) List!32733) Bool)

(assert (=> b!1394545 (= res!934061 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32730))))

(declare-fun b!1394546 () Bool)

(declare-fun res!934066 () Bool)

(assert (=> b!1394546 (=> (not res!934066) (not e!789570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95360 (_ BitVec 32)) Bool)

(assert (=> b!1394546 (= res!934066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394547 () Bool)

(declare-fun res!934060 () Bool)

(assert (=> b!1394547 (=> (not res!934060) (not e!789570))))

(assert (=> b!1394547 (= res!934060 (and (= (size!46585 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46585 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46585 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394548 () Bool)

(declare-fun res!934067 () Bool)

(assert (=> b!1394548 (=> (not res!934067) (not e!789570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394548 (= res!934067 (validKeyInArray!0 (select (arr!46034 a!2901) j!112)))))

(declare-fun b!1394549 () Bool)

(declare-fun res!934064 () Bool)

(assert (=> b!1394549 (=> (not res!934064) (not e!789570))))

(assert (=> b!1394549 (= res!934064 (validKeyInArray!0 (select (arr!46034 a!2901) i!1037)))))

(declare-fun res!934068 () Bool)

(assert (=> start!119760 (=> (not res!934068) (not e!789570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119760 (= res!934068 (validMask!0 mask!2840))))

(assert (=> start!119760 e!789570))

(assert (=> start!119760 true))

(declare-fun array_inv!34979 (array!95360) Bool)

(assert (=> start!119760 (array_inv!34979 a!2901)))

(declare-fun b!1394550 () Bool)

(assert (=> b!1394550 (= e!789571 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!612559 () SeekEntryResult!10373)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95360 (_ BitVec 32)) SeekEntryResult!10373)

(assert (=> b!1394550 (= lt!612559 (seekEntryOrOpen!0 lt!612561 lt!612557 mask!2840))))

(declare-datatypes ((Unit!46700 0))(
  ( (Unit!46701) )
))
(declare-fun lt!612556 () Unit!46700)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46700)

(assert (=> b!1394550 (= lt!612556 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612562 (x!125532 lt!612558) (index!43864 lt!612558) mask!2840))))

(declare-fun b!1394551 () Bool)

(assert (=> b!1394551 (= e!789570 (not e!789572))))

(declare-fun res!934063 () Bool)

(assert (=> b!1394551 (=> res!934063 e!789572)))

(get-info :version)

(assert (=> b!1394551 (= res!934063 (or (not ((_ is Intermediate!10373) lt!612558)) (undefined!11185 lt!612558)))))

(assert (=> b!1394551 (= lt!612559 (Found!10373 j!112))))

(assert (=> b!1394551 (= lt!612559 (seekEntryOrOpen!0 (select (arr!46034 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394551 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612560 () Unit!46700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46700)

(assert (=> b!1394551 (= lt!612560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394551 (= lt!612558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612562 (select (arr!46034 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394551 (= lt!612562 (toIndex!0 (select (arr!46034 a!2901) j!112) mask!2840))))

(assert (= (and start!119760 res!934068) b!1394547))

(assert (= (and b!1394547 res!934060) b!1394549))

(assert (= (and b!1394549 res!934064) b!1394548))

(assert (= (and b!1394548 res!934067) b!1394546))

(assert (= (and b!1394546 res!934066) b!1394545))

(assert (= (and b!1394545 res!934061) b!1394551))

(assert (= (and b!1394551 (not res!934063)) b!1394544))

(assert (= (and b!1394544 (not res!934062)) b!1394543))

(assert (= (and b!1394543 (not res!934065)) b!1394550))

(declare-fun m!1281001 () Bool)

(assert (=> b!1394546 m!1281001))

(declare-fun m!1281003 () Bool)

(assert (=> b!1394549 m!1281003))

(assert (=> b!1394549 m!1281003))

(declare-fun m!1281005 () Bool)

(assert (=> b!1394549 m!1281005))

(declare-fun m!1281007 () Bool)

(assert (=> b!1394544 m!1281007))

(assert (=> b!1394544 m!1281007))

(declare-fun m!1281009 () Bool)

(assert (=> b!1394544 m!1281009))

(declare-fun m!1281011 () Bool)

(assert (=> b!1394544 m!1281011))

(declare-fun m!1281013 () Bool)

(assert (=> b!1394544 m!1281013))

(declare-fun m!1281015 () Bool)

(assert (=> b!1394545 m!1281015))

(declare-fun m!1281017 () Bool)

(assert (=> start!119760 m!1281017))

(declare-fun m!1281019 () Bool)

(assert (=> start!119760 m!1281019))

(declare-fun m!1281021 () Bool)

(assert (=> b!1394550 m!1281021))

(declare-fun m!1281023 () Bool)

(assert (=> b!1394550 m!1281023))

(declare-fun m!1281025 () Bool)

(assert (=> b!1394548 m!1281025))

(assert (=> b!1394548 m!1281025))

(declare-fun m!1281027 () Bool)

(assert (=> b!1394548 m!1281027))

(assert (=> b!1394551 m!1281025))

(declare-fun m!1281029 () Bool)

(assert (=> b!1394551 m!1281029))

(assert (=> b!1394551 m!1281025))

(declare-fun m!1281031 () Bool)

(assert (=> b!1394551 m!1281031))

(declare-fun m!1281033 () Bool)

(assert (=> b!1394551 m!1281033))

(assert (=> b!1394551 m!1281025))

(declare-fun m!1281035 () Bool)

(assert (=> b!1394551 m!1281035))

(assert (=> b!1394551 m!1281025))

(declare-fun m!1281037 () Bool)

(assert (=> b!1394551 m!1281037))

(check-sat (not b!1394546) (not b!1394550) (not b!1394545) (not start!119760) (not b!1394548) (not b!1394549) (not b!1394551) (not b!1394544))
(check-sat)
