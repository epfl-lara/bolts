; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122786 () Bool)

(assert start!122786)

(declare-fun b!1422457 () Bool)

(declare-fun res!958014 () Bool)

(declare-fun e!804169 () Bool)

(assert (=> b!1422457 (=> (not res!958014) (not e!804169))))

(declare-datatypes ((array!97069 0))(
  ( (array!97070 (arr!46848 (Array (_ BitVec 32) (_ BitVec 64))) (size!47399 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97069)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422457 (= res!958014 (validKeyInArray!0 (select (arr!46848 a!2831) j!81)))))

(declare-fun e!804172 () Bool)

(declare-fun b!1422458 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11155 0))(
  ( (MissingZero!11155 (index!47011 (_ BitVec 32))) (Found!11155 (index!47012 (_ BitVec 32))) (Intermediate!11155 (undefined!11967 Bool) (index!47013 (_ BitVec 32)) (x!128656 (_ BitVec 32))) (Undefined!11155) (MissingVacant!11155 (index!47014 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97069 (_ BitVec 32)) SeekEntryResult!11155)

(assert (=> b!1422458 (= e!804172 (= (seekEntryOrOpen!0 (select (arr!46848 a!2831) j!81) a!2831 mask!2608) (Found!11155 j!81)))))

(declare-fun b!1422459 () Bool)

(declare-fun e!804170 () Bool)

(assert (=> b!1422459 (= e!804170 true)))

(declare-fun lt!626661 () SeekEntryResult!11155)

(declare-fun lt!626665 () (_ BitVec 32))

(declare-fun lt!626663 () array!97069)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626664 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97069 (_ BitVec 32)) SeekEntryResult!11155)

(assert (=> b!1422459 (= lt!626661 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626665 lt!626664 lt!626663 mask!2608))))

(declare-fun b!1422460 () Bool)

(declare-fun e!804167 () Bool)

(declare-fun e!804171 () Bool)

(assert (=> b!1422460 (= e!804167 e!804171)))

(declare-fun res!958001 () Bool)

(assert (=> b!1422460 (=> (not res!958001) (not e!804171))))

(declare-fun lt!626660 () SeekEntryResult!11155)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422460 (= res!958001 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626664 mask!2608) lt!626664 lt!626663 mask!2608) lt!626660))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422460 (= lt!626660 (Intermediate!11155 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422460 (= lt!626664 (select (store (arr!46848 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422460 (= lt!626663 (array!97070 (store (arr!46848 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47399 a!2831)))))

(declare-fun b!1422461 () Bool)

(declare-fun res!958004 () Bool)

(assert (=> b!1422461 (=> (not res!958004) (not e!804169))))

(declare-datatypes ((List!33538 0))(
  ( (Nil!33535) (Cons!33534 (h!34836 (_ BitVec 64)) (t!48239 List!33538)) )
))
(declare-fun arrayNoDuplicates!0 (array!97069 (_ BitVec 32) List!33538) Bool)

(assert (=> b!1422461 (= res!958004 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33535))))

(declare-fun res!958012 () Bool)

(assert (=> start!122786 (=> (not res!958012) (not e!804169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122786 (= res!958012 (validMask!0 mask!2608))))

(assert (=> start!122786 e!804169))

(assert (=> start!122786 true))

(declare-fun array_inv!35793 (array!97069) Bool)

(assert (=> start!122786 (array_inv!35793 a!2831)))

(declare-fun b!1422462 () Bool)

(declare-fun e!804173 () Bool)

(assert (=> b!1422462 (= e!804173 e!804170)))

(declare-fun res!958000 () Bool)

(assert (=> b!1422462 (=> res!958000 e!804170)))

(assert (=> b!1422462 (= res!958000 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626665 #b00000000000000000000000000000000) (bvsge lt!626665 (size!47399 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422462 (= lt!626665 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422463 () Bool)

(declare-fun res!958003 () Bool)

(assert (=> b!1422463 (=> (not res!958003) (not e!804169))))

(assert (=> b!1422463 (= res!958003 (and (= (size!47399 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47399 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47399 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422464 () Bool)

(declare-fun res!958008 () Bool)

(assert (=> b!1422464 (=> (not res!958008) (not e!804169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97069 (_ BitVec 32)) Bool)

(assert (=> b!1422464 (= res!958008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422465 () Bool)

(assert (=> b!1422465 (= e!804169 e!804167)))

(declare-fun res!958010 () Bool)

(assert (=> b!1422465 (=> (not res!958010) (not e!804167))))

(declare-fun lt!626662 () SeekEntryResult!11155)

(assert (=> b!1422465 (= res!958010 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46848 a!2831) j!81) mask!2608) (select (arr!46848 a!2831) j!81) a!2831 mask!2608) lt!626662))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422465 (= lt!626662 (Intermediate!11155 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422466 () Bool)

(assert (=> b!1422466 (= e!804171 (not e!804173))))

(declare-fun res!958007 () Bool)

(assert (=> b!1422466 (=> res!958007 e!804173)))

(assert (=> b!1422466 (= res!958007 (or (= (select (arr!46848 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46848 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46848 a!2831) index!585) (select (arr!46848 a!2831) j!81)) (= (select (store (arr!46848 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422466 e!804172))

(declare-fun res!958013 () Bool)

(assert (=> b!1422466 (=> (not res!958013) (not e!804172))))

(assert (=> b!1422466 (= res!958013 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48094 0))(
  ( (Unit!48095) )
))
(declare-fun lt!626659 () Unit!48094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48094)

(assert (=> b!1422466 (= lt!626659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422467 () Bool)

(declare-fun res!957999 () Bool)

(assert (=> b!1422467 (=> (not res!957999) (not e!804171))))

(assert (=> b!1422467 (= res!957999 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46848 a!2831) j!81) a!2831 mask!2608) lt!626662))))

(declare-fun b!1422468 () Bool)

(declare-fun res!958009 () Bool)

(assert (=> b!1422468 (=> (not res!958009) (not e!804171))))

(assert (=> b!1422468 (= res!958009 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422469 () Bool)

(declare-fun res!958002 () Bool)

(assert (=> b!1422469 (=> res!958002 e!804170)))

(assert (=> b!1422469 (= res!958002 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626665 (select (arr!46848 a!2831) j!81) a!2831 mask!2608) lt!626662)))))

(declare-fun b!1422470 () Bool)

(declare-fun res!958011 () Bool)

(assert (=> b!1422470 (=> (not res!958011) (not e!804169))))

(assert (=> b!1422470 (= res!958011 (validKeyInArray!0 (select (arr!46848 a!2831) i!982)))))

(declare-fun b!1422471 () Bool)

(declare-fun res!958006 () Bool)

(assert (=> b!1422471 (=> (not res!958006) (not e!804171))))

(assert (=> b!1422471 (= res!958006 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626664 lt!626663 mask!2608) lt!626660))))

(declare-fun b!1422472 () Bool)

(declare-fun res!958005 () Bool)

(assert (=> b!1422472 (=> (not res!958005) (not e!804169))))

(assert (=> b!1422472 (= res!958005 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47399 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47399 a!2831))))))

(assert (= (and start!122786 res!958012) b!1422463))

(assert (= (and b!1422463 res!958003) b!1422470))

(assert (= (and b!1422470 res!958011) b!1422457))

(assert (= (and b!1422457 res!958014) b!1422464))

(assert (= (and b!1422464 res!958008) b!1422461))

(assert (= (and b!1422461 res!958004) b!1422472))

(assert (= (and b!1422472 res!958005) b!1422465))

(assert (= (and b!1422465 res!958010) b!1422460))

(assert (= (and b!1422460 res!958001) b!1422467))

(assert (= (and b!1422467 res!957999) b!1422471))

(assert (= (and b!1422471 res!958006) b!1422468))

(assert (= (and b!1422468 res!958009) b!1422466))

(assert (= (and b!1422466 res!958013) b!1422458))

(assert (= (and b!1422466 (not res!958007)) b!1422462))

(assert (= (and b!1422462 (not res!958000)) b!1422469))

(assert (= (and b!1422469 (not res!958002)) b!1422459))

(declare-fun m!1313063 () Bool)

(assert (=> b!1422459 m!1313063))

(declare-fun m!1313065 () Bool)

(assert (=> b!1422471 m!1313065))

(declare-fun m!1313067 () Bool)

(assert (=> b!1422466 m!1313067))

(declare-fun m!1313069 () Bool)

(assert (=> b!1422466 m!1313069))

(declare-fun m!1313071 () Bool)

(assert (=> b!1422466 m!1313071))

(declare-fun m!1313073 () Bool)

(assert (=> b!1422466 m!1313073))

(declare-fun m!1313075 () Bool)

(assert (=> b!1422466 m!1313075))

(declare-fun m!1313077 () Bool)

(assert (=> b!1422466 m!1313077))

(declare-fun m!1313079 () Bool)

(assert (=> start!122786 m!1313079))

(declare-fun m!1313081 () Bool)

(assert (=> start!122786 m!1313081))

(declare-fun m!1313083 () Bool)

(assert (=> b!1422470 m!1313083))

(assert (=> b!1422470 m!1313083))

(declare-fun m!1313085 () Bool)

(assert (=> b!1422470 m!1313085))

(assert (=> b!1422469 m!1313075))

(assert (=> b!1422469 m!1313075))

(declare-fun m!1313087 () Bool)

(assert (=> b!1422469 m!1313087))

(declare-fun m!1313089 () Bool)

(assert (=> b!1422462 m!1313089))

(declare-fun m!1313091 () Bool)

(assert (=> b!1422464 m!1313091))

(assert (=> b!1422465 m!1313075))

(assert (=> b!1422465 m!1313075))

(declare-fun m!1313093 () Bool)

(assert (=> b!1422465 m!1313093))

(assert (=> b!1422465 m!1313093))

(assert (=> b!1422465 m!1313075))

(declare-fun m!1313095 () Bool)

(assert (=> b!1422465 m!1313095))

(assert (=> b!1422458 m!1313075))

(assert (=> b!1422458 m!1313075))

(declare-fun m!1313097 () Bool)

(assert (=> b!1422458 m!1313097))

(assert (=> b!1422457 m!1313075))

(assert (=> b!1422457 m!1313075))

(declare-fun m!1313099 () Bool)

(assert (=> b!1422457 m!1313099))

(declare-fun m!1313101 () Bool)

(assert (=> b!1422461 m!1313101))

(declare-fun m!1313103 () Bool)

(assert (=> b!1422460 m!1313103))

(assert (=> b!1422460 m!1313103))

(declare-fun m!1313105 () Bool)

(assert (=> b!1422460 m!1313105))

(assert (=> b!1422460 m!1313067))

(declare-fun m!1313107 () Bool)

(assert (=> b!1422460 m!1313107))

(assert (=> b!1422467 m!1313075))

(assert (=> b!1422467 m!1313075))

(declare-fun m!1313109 () Bool)

(assert (=> b!1422467 m!1313109))

(push 1)

