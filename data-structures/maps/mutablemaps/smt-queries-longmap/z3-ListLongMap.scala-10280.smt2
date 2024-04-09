; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120882 () Bool)

(assert start!120882)

(declare-fun b!1405962 () Bool)

(declare-fun e!795827 () Bool)

(declare-fun e!795829 () Bool)

(assert (=> b!1405962 (= e!795827 (not e!795829))))

(declare-fun res!944295 () Bool)

(assert (=> b!1405962 (=> res!944295 e!795829)))

(declare-datatypes ((SeekEntryResult!10730 0))(
  ( (MissingZero!10730 (index!45296 (_ BitVec 32))) (Found!10730 (index!45297 (_ BitVec 32))) (Intermediate!10730 (undefined!11542 Bool) (index!45298 (_ BitVec 32)) (x!126908 (_ BitVec 32))) (Undefined!10730) (MissingVacant!10730 (index!45299 (_ BitVec 32))) )
))
(declare-fun lt!619175 () SeekEntryResult!10730)

(get-info :version)

(assert (=> b!1405962 (= res!944295 (or (not ((_ is Intermediate!10730) lt!619175)) (undefined!11542 lt!619175)))))

(declare-fun e!795830 () Bool)

(assert (=> b!1405962 e!795830))

(declare-fun res!944288 () Bool)

(assert (=> b!1405962 (=> (not res!944288) (not e!795830))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96107 0))(
  ( (array!96108 (arr!46397 (Array (_ BitVec 32) (_ BitVec 64))) (size!46948 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96107)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96107 (_ BitVec 32)) Bool)

(assert (=> b!1405962 (= res!944288 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47384 0))(
  ( (Unit!47385) )
))
(declare-fun lt!619176 () Unit!47384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47384)

(assert (=> b!1405962 (= lt!619176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96107 (_ BitVec 32)) SeekEntryResult!10730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405962 (= lt!619175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46397 a!2901) j!112) mask!2840) (select (arr!46397 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405963 () Bool)

(assert (=> b!1405963 (= e!795829 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!619177 () SeekEntryResult!10730)

(assert (=> b!1405963 (= lt!619177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46397 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46397 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96108 (store (arr!46397 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46948 a!2901)) mask!2840))))

(declare-fun res!944291 () Bool)

(assert (=> start!120882 (=> (not res!944291) (not e!795827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120882 (= res!944291 (validMask!0 mask!2840))))

(assert (=> start!120882 e!795827))

(assert (=> start!120882 true))

(declare-fun array_inv!35342 (array!96107) Bool)

(assert (=> start!120882 (array_inv!35342 a!2901)))

(declare-fun b!1405964 () Bool)

(declare-fun res!944289 () Bool)

(assert (=> b!1405964 (=> (not res!944289) (not e!795827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405964 (= res!944289 (validKeyInArray!0 (select (arr!46397 a!2901) j!112)))))

(declare-fun b!1405965 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96107 (_ BitVec 32)) SeekEntryResult!10730)

(assert (=> b!1405965 (= e!795830 (= (seekEntryOrOpen!0 (select (arr!46397 a!2901) j!112) a!2901 mask!2840) (Found!10730 j!112)))))

(declare-fun b!1405966 () Bool)

(declare-fun res!944290 () Bool)

(assert (=> b!1405966 (=> (not res!944290) (not e!795827))))

(assert (=> b!1405966 (= res!944290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405967 () Bool)

(declare-fun res!944293 () Bool)

(assert (=> b!1405967 (=> (not res!944293) (not e!795827))))

(assert (=> b!1405967 (= res!944293 (validKeyInArray!0 (select (arr!46397 a!2901) i!1037)))))

(declare-fun b!1405968 () Bool)

(declare-fun res!944292 () Bool)

(assert (=> b!1405968 (=> (not res!944292) (not e!795827))))

(assert (=> b!1405968 (= res!944292 (and (= (size!46948 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46948 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46948 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405969 () Bool)

(declare-fun res!944294 () Bool)

(assert (=> b!1405969 (=> (not res!944294) (not e!795827))))

(declare-datatypes ((List!33096 0))(
  ( (Nil!33093) (Cons!33092 (h!34346 (_ BitVec 64)) (t!47797 List!33096)) )
))
(declare-fun arrayNoDuplicates!0 (array!96107 (_ BitVec 32) List!33096) Bool)

(assert (=> b!1405969 (= res!944294 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33093))))

(assert (= (and start!120882 res!944291) b!1405968))

(assert (= (and b!1405968 res!944292) b!1405967))

(assert (= (and b!1405967 res!944293) b!1405964))

(assert (= (and b!1405964 res!944289) b!1405966))

(assert (= (and b!1405966 res!944290) b!1405969))

(assert (= (and b!1405969 res!944294) b!1405962))

(assert (= (and b!1405962 res!944288) b!1405965))

(assert (= (and b!1405962 (not res!944295)) b!1405963))

(declare-fun m!1295001 () Bool)

(assert (=> b!1405969 m!1295001))

(declare-fun m!1295003 () Bool)

(assert (=> b!1405967 m!1295003))

(assert (=> b!1405967 m!1295003))

(declare-fun m!1295005 () Bool)

(assert (=> b!1405967 m!1295005))

(declare-fun m!1295007 () Bool)

(assert (=> b!1405964 m!1295007))

(assert (=> b!1405964 m!1295007))

(declare-fun m!1295009 () Bool)

(assert (=> b!1405964 m!1295009))

(declare-fun m!1295011 () Bool)

(assert (=> b!1405963 m!1295011))

(declare-fun m!1295013 () Bool)

(assert (=> b!1405963 m!1295013))

(assert (=> b!1405963 m!1295013))

(declare-fun m!1295015 () Bool)

(assert (=> b!1405963 m!1295015))

(assert (=> b!1405963 m!1295015))

(assert (=> b!1405963 m!1295013))

(declare-fun m!1295017 () Bool)

(assert (=> b!1405963 m!1295017))

(declare-fun m!1295019 () Bool)

(assert (=> b!1405966 m!1295019))

(assert (=> b!1405962 m!1295007))

(declare-fun m!1295021 () Bool)

(assert (=> b!1405962 m!1295021))

(assert (=> b!1405962 m!1295007))

(declare-fun m!1295023 () Bool)

(assert (=> b!1405962 m!1295023))

(assert (=> b!1405962 m!1295021))

(assert (=> b!1405962 m!1295007))

(declare-fun m!1295025 () Bool)

(assert (=> b!1405962 m!1295025))

(declare-fun m!1295027 () Bool)

(assert (=> b!1405962 m!1295027))

(assert (=> b!1405965 m!1295007))

(assert (=> b!1405965 m!1295007))

(declare-fun m!1295029 () Bool)

(assert (=> b!1405965 m!1295029))

(declare-fun m!1295031 () Bool)

(assert (=> start!120882 m!1295031))

(declare-fun m!1295033 () Bool)

(assert (=> start!120882 m!1295033))

(check-sat (not b!1405962) (not b!1405964) (not b!1405967) (not start!120882) (not b!1405966) (not b!1405965) (not b!1405969) (not b!1405963))
