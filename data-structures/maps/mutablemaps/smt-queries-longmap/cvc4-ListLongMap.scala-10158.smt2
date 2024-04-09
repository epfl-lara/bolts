; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119756 () Bool)

(assert start!119756)

(declare-fun b!1394489 () Bool)

(declare-fun res!934014 () Bool)

(declare-fun e!789547 () Bool)

(assert (=> b!1394489 (=> (not res!934014) (not e!789547))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95356 0))(
  ( (array!95357 (arr!46032 (Array (_ BitVec 32) (_ BitVec 64))) (size!46583 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95356)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394489 (= res!934014 (and (= (size!46583 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46583 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46583 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394490 () Bool)

(declare-fun res!934011 () Bool)

(assert (=> b!1394490 (=> (not res!934011) (not e!789547))))

(declare-datatypes ((List!32731 0))(
  ( (Nil!32728) (Cons!32727 (h!33960 (_ BitVec 64)) (t!47432 List!32731)) )
))
(declare-fun arrayNoDuplicates!0 (array!95356 (_ BitVec 32) List!32731) Bool)

(assert (=> b!1394490 (= res!934011 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32728))))

(declare-fun b!1394491 () Bool)

(declare-fun res!934008 () Bool)

(assert (=> b!1394491 (=> (not res!934008) (not e!789547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394491 (= res!934008 (validKeyInArray!0 (select (arr!46032 a!2901) i!1037)))))

(declare-fun b!1394492 () Bool)

(declare-fun res!934012 () Bool)

(assert (=> b!1394492 (=> (not res!934012) (not e!789547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95356 (_ BitVec 32)) Bool)

(assert (=> b!1394492 (= res!934012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394493 () Bool)

(declare-fun res!934010 () Bool)

(declare-fun e!789546 () Bool)

(assert (=> b!1394493 (=> res!934010 e!789546)))

(declare-fun lt!612514 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10371 0))(
  ( (MissingZero!10371 (index!43854 (_ BitVec 32))) (Found!10371 (index!43855 (_ BitVec 32))) (Intermediate!10371 (undefined!11183 Bool) (index!43856 (_ BitVec 32)) (x!125522 (_ BitVec 32))) (Undefined!10371) (MissingVacant!10371 (index!43857 (_ BitVec 32))) )
))
(declare-fun lt!612518 () SeekEntryResult!10371)

(assert (=> b!1394493 (= res!934010 (or (bvslt (x!125522 lt!612518) #b00000000000000000000000000000000) (bvsgt (x!125522 lt!612518) #b01111111111111111111111111111110) (bvslt lt!612514 #b00000000000000000000000000000000) (bvsge lt!612514 (size!46583 a!2901)) (bvslt (index!43856 lt!612518) #b00000000000000000000000000000000) (bvsge (index!43856 lt!612518) (size!46583 a!2901)) (not (= lt!612518 (Intermediate!10371 false (index!43856 lt!612518) (x!125522 lt!612518))))))))

(declare-fun b!1394494 () Bool)

(declare-fun e!789548 () Bool)

(assert (=> b!1394494 (= e!789548 e!789546)))

(declare-fun res!934007 () Bool)

(assert (=> b!1394494 (=> res!934007 e!789546)))

(declare-fun lt!612515 () array!95356)

(declare-fun lt!612519 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95356 (_ BitVec 32)) SeekEntryResult!10371)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394494 (= res!934007 (not (= lt!612518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612519 mask!2840) lt!612519 lt!612515 mask!2840))))))

(assert (=> b!1394494 (= lt!612519 (select (store (arr!46032 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394494 (= lt!612515 (array!95357 (store (arr!46032 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46583 a!2901)))))

(declare-fun b!1394495 () Bool)

(assert (=> b!1394495 (= e!789546 true)))

(declare-fun lt!612520 () SeekEntryResult!10371)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95356 (_ BitVec 32)) SeekEntryResult!10371)

(assert (=> b!1394495 (= lt!612520 (seekEntryOrOpen!0 lt!612519 lt!612515 mask!2840))))

(declare-datatypes ((Unit!46696 0))(
  ( (Unit!46697) )
))
(declare-fun lt!612516 () Unit!46696)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46696)

(assert (=> b!1394495 (= lt!612516 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612514 (x!125522 lt!612518) (index!43856 lt!612518) mask!2840))))

(declare-fun b!1394496 () Bool)

(declare-fun res!934006 () Bool)

(assert (=> b!1394496 (=> (not res!934006) (not e!789547))))

(assert (=> b!1394496 (= res!934006 (validKeyInArray!0 (select (arr!46032 a!2901) j!112)))))

(declare-fun res!934013 () Bool)

(assert (=> start!119756 (=> (not res!934013) (not e!789547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119756 (= res!934013 (validMask!0 mask!2840))))

(assert (=> start!119756 e!789547))

(assert (=> start!119756 true))

(declare-fun array_inv!34977 (array!95356) Bool)

(assert (=> start!119756 (array_inv!34977 a!2901)))

(declare-fun b!1394497 () Bool)

(assert (=> b!1394497 (= e!789547 (not e!789548))))

(declare-fun res!934009 () Bool)

(assert (=> b!1394497 (=> res!934009 e!789548)))

(assert (=> b!1394497 (= res!934009 (or (not (is-Intermediate!10371 lt!612518)) (undefined!11183 lt!612518)))))

(assert (=> b!1394497 (= lt!612520 (Found!10371 j!112))))

(assert (=> b!1394497 (= lt!612520 (seekEntryOrOpen!0 (select (arr!46032 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394497 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612517 () Unit!46696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46696)

(assert (=> b!1394497 (= lt!612517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394497 (= lt!612518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612514 (select (arr!46032 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394497 (= lt!612514 (toIndex!0 (select (arr!46032 a!2901) j!112) mask!2840))))

(assert (= (and start!119756 res!934013) b!1394489))

(assert (= (and b!1394489 res!934014) b!1394491))

(assert (= (and b!1394491 res!934008) b!1394496))

(assert (= (and b!1394496 res!934006) b!1394492))

(assert (= (and b!1394492 res!934012) b!1394490))

(assert (= (and b!1394490 res!934011) b!1394497))

(assert (= (and b!1394497 (not res!934009)) b!1394494))

(assert (= (and b!1394494 (not res!934007)) b!1394493))

(assert (= (and b!1394493 (not res!934010)) b!1394495))

(declare-fun m!1280925 () Bool)

(assert (=> b!1394491 m!1280925))

(assert (=> b!1394491 m!1280925))

(declare-fun m!1280927 () Bool)

(assert (=> b!1394491 m!1280927))

(declare-fun m!1280929 () Bool)

(assert (=> b!1394490 m!1280929))

(declare-fun m!1280931 () Bool)

(assert (=> b!1394495 m!1280931))

(declare-fun m!1280933 () Bool)

(assert (=> b!1394495 m!1280933))

(declare-fun m!1280935 () Bool)

(assert (=> b!1394496 m!1280935))

(assert (=> b!1394496 m!1280935))

(declare-fun m!1280937 () Bool)

(assert (=> b!1394496 m!1280937))

(assert (=> b!1394497 m!1280935))

(declare-fun m!1280939 () Bool)

(assert (=> b!1394497 m!1280939))

(assert (=> b!1394497 m!1280935))

(assert (=> b!1394497 m!1280935))

(declare-fun m!1280941 () Bool)

(assert (=> b!1394497 m!1280941))

(declare-fun m!1280943 () Bool)

(assert (=> b!1394497 m!1280943))

(assert (=> b!1394497 m!1280935))

(declare-fun m!1280945 () Bool)

(assert (=> b!1394497 m!1280945))

(declare-fun m!1280947 () Bool)

(assert (=> b!1394497 m!1280947))

(declare-fun m!1280949 () Bool)

(assert (=> b!1394494 m!1280949))

(assert (=> b!1394494 m!1280949))

(declare-fun m!1280951 () Bool)

(assert (=> b!1394494 m!1280951))

(declare-fun m!1280953 () Bool)

(assert (=> b!1394494 m!1280953))

(declare-fun m!1280955 () Bool)

(assert (=> b!1394494 m!1280955))

(declare-fun m!1280957 () Bool)

(assert (=> b!1394492 m!1280957))

(declare-fun m!1280959 () Bool)

(assert (=> start!119756 m!1280959))

(declare-fun m!1280961 () Bool)

(assert (=> start!119756 m!1280961))

(push 1)

