; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122868 () Bool)

(assert start!122868)

(declare-fun e!805029 () Bool)

(declare-fun b!1424425 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97151 0))(
  ( (array!97152 (arr!46889 (Array (_ BitVec 32) (_ BitVec 64))) (size!47440 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97151)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11196 0))(
  ( (MissingZero!11196 (index!47175 (_ BitVec 32))) (Found!11196 (index!47176 (_ BitVec 32))) (Intermediate!11196 (undefined!12008 Bool) (index!47177 (_ BitVec 32)) (x!128809 (_ BitVec 32))) (Undefined!11196) (MissingVacant!11196 (index!47178 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97151 (_ BitVec 32)) SeekEntryResult!11196)

(assert (=> b!1424425 (= e!805029 (= (seekEntryOrOpen!0 (select (arr!46889 a!2831) j!81) a!2831 mask!2608) (Found!11196 j!81)))))

(declare-fun b!1424426 () Bool)

(declare-fun e!805034 () Bool)

(declare-fun e!805030 () Bool)

(assert (=> b!1424426 (= e!805034 (not e!805030))))

(declare-fun res!959975 () Bool)

(assert (=> b!1424426 (=> res!959975 e!805030)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424426 (= res!959975 (or (= (select (arr!46889 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46889 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46889 a!2831) index!585) (select (arr!46889 a!2831) j!81)) (= (select (store (arr!46889 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424426 e!805029))

(declare-fun res!959971 () Bool)

(assert (=> b!1424426 (=> (not res!959971) (not e!805029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97151 (_ BitVec 32)) Bool)

(assert (=> b!1424426 (= res!959971 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48176 0))(
  ( (Unit!48177) )
))
(declare-fun lt!627520 () Unit!48176)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48176)

(assert (=> b!1424426 (= lt!627520 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424427 () Bool)

(declare-fun res!959979 () Bool)

(assert (=> b!1424427 (=> (not res!959979) (not e!805034))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424427 (= res!959979 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424428 () Bool)

(declare-fun e!805032 () Bool)

(assert (=> b!1424428 (= e!805032 e!805034)))

(declare-fun res!959978 () Bool)

(assert (=> b!1424428 (=> (not res!959978) (not e!805034))))

(declare-fun lt!627524 () array!97151)

(declare-fun lt!627526 () (_ BitVec 64))

(declare-fun lt!627522 () SeekEntryResult!11196)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97151 (_ BitVec 32)) SeekEntryResult!11196)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424428 (= res!959978 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627526 mask!2608) lt!627526 lt!627524 mask!2608) lt!627522))))

(assert (=> b!1424428 (= lt!627522 (Intermediate!11196 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424428 (= lt!627526 (select (store (arr!46889 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424428 (= lt!627524 (array!97152 (store (arr!46889 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47440 a!2831)))))

(declare-fun b!1424429 () Bool)

(declare-fun res!959967 () Bool)

(declare-fun e!805031 () Bool)

(assert (=> b!1424429 (=> (not res!959967) (not e!805031))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1424429 (= res!959967 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47440 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47440 a!2831))))))

(declare-fun b!1424430 () Bool)

(declare-fun res!959981 () Bool)

(assert (=> b!1424430 (=> (not res!959981) (not e!805031))))

(assert (=> b!1424430 (= res!959981 (and (= (size!47440 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47440 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47440 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424431 () Bool)

(declare-fun res!959973 () Bool)

(declare-fun e!805028 () Bool)

(assert (=> b!1424431 (=> res!959973 e!805028)))

(declare-fun lt!627523 () (_ BitVec 32))

(declare-fun lt!627521 () SeekEntryResult!11196)

(assert (=> b!1424431 (= res!959973 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627523 (select (arr!46889 a!2831) j!81) a!2831 mask!2608) lt!627521)))))

(declare-fun b!1424432 () Bool)

(declare-fun res!959969 () Bool)

(assert (=> b!1424432 (=> (not res!959969) (not e!805034))))

(assert (=> b!1424432 (= res!959969 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46889 a!2831) j!81) a!2831 mask!2608) lt!627521))))

(declare-fun b!1424433 () Bool)

(declare-fun res!959974 () Bool)

(assert (=> b!1424433 (=> (not res!959974) (not e!805031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424433 (= res!959974 (validKeyInArray!0 (select (arr!46889 a!2831) j!81)))))

(declare-fun b!1424434 () Bool)

(declare-fun res!959972 () Bool)

(assert (=> b!1424434 (=> (not res!959972) (not e!805034))))

(assert (=> b!1424434 (= res!959972 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627526 lt!627524 mask!2608) lt!627522))))

(declare-fun b!1424436 () Bool)

(declare-fun res!959976 () Bool)

(assert (=> b!1424436 (=> (not res!959976) (not e!805031))))

(assert (=> b!1424436 (= res!959976 (validKeyInArray!0 (select (arr!46889 a!2831) i!982)))))

(declare-fun b!1424437 () Bool)

(assert (=> b!1424437 (= e!805028 true)))

(declare-fun lt!627525 () SeekEntryResult!11196)

(assert (=> b!1424437 (= lt!627525 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627523 lt!627526 lt!627524 mask!2608))))

(declare-fun b!1424438 () Bool)

(assert (=> b!1424438 (= e!805031 e!805032)))

(declare-fun res!959968 () Bool)

(assert (=> b!1424438 (=> (not res!959968) (not e!805032))))

(assert (=> b!1424438 (= res!959968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46889 a!2831) j!81) mask!2608) (select (arr!46889 a!2831) j!81) a!2831 mask!2608) lt!627521))))

(assert (=> b!1424438 (= lt!627521 (Intermediate!11196 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424439 () Bool)

(declare-fun res!959980 () Bool)

(assert (=> b!1424439 (=> (not res!959980) (not e!805031))))

(declare-datatypes ((List!33579 0))(
  ( (Nil!33576) (Cons!33575 (h!34877 (_ BitVec 64)) (t!48280 List!33579)) )
))
(declare-fun arrayNoDuplicates!0 (array!97151 (_ BitVec 32) List!33579) Bool)

(assert (=> b!1424439 (= res!959980 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33576))))

(declare-fun b!1424440 () Bool)

(assert (=> b!1424440 (= e!805030 e!805028)))

(declare-fun res!959970 () Bool)

(assert (=> b!1424440 (=> res!959970 e!805028)))

(assert (=> b!1424440 (= res!959970 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627523 #b00000000000000000000000000000000) (bvsge lt!627523 (size!47440 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424440 (= lt!627523 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424435 () Bool)

(declare-fun res!959977 () Bool)

(assert (=> b!1424435 (=> (not res!959977) (not e!805031))))

(assert (=> b!1424435 (= res!959977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!959982 () Bool)

(assert (=> start!122868 (=> (not res!959982) (not e!805031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122868 (= res!959982 (validMask!0 mask!2608))))

(assert (=> start!122868 e!805031))

(assert (=> start!122868 true))

(declare-fun array_inv!35834 (array!97151) Bool)

(assert (=> start!122868 (array_inv!35834 a!2831)))

(assert (= (and start!122868 res!959982) b!1424430))

(assert (= (and b!1424430 res!959981) b!1424436))

(assert (= (and b!1424436 res!959976) b!1424433))

(assert (= (and b!1424433 res!959974) b!1424435))

(assert (= (and b!1424435 res!959977) b!1424439))

(assert (= (and b!1424439 res!959980) b!1424429))

(assert (= (and b!1424429 res!959967) b!1424438))

(assert (= (and b!1424438 res!959968) b!1424428))

(assert (= (and b!1424428 res!959978) b!1424432))

(assert (= (and b!1424432 res!959969) b!1424434))

(assert (= (and b!1424434 res!959972) b!1424427))

(assert (= (and b!1424427 res!959979) b!1424426))

(assert (= (and b!1424426 res!959971) b!1424425))

(assert (= (and b!1424426 (not res!959975)) b!1424440))

(assert (= (and b!1424440 (not res!959970)) b!1424431))

(assert (= (and b!1424431 (not res!959973)) b!1424437))

(declare-fun m!1315031 () Bool)

(assert (=> b!1424438 m!1315031))

(assert (=> b!1424438 m!1315031))

(declare-fun m!1315033 () Bool)

(assert (=> b!1424438 m!1315033))

(assert (=> b!1424438 m!1315033))

(assert (=> b!1424438 m!1315031))

(declare-fun m!1315035 () Bool)

(assert (=> b!1424438 m!1315035))

(declare-fun m!1315037 () Bool)

(assert (=> start!122868 m!1315037))

(declare-fun m!1315039 () Bool)

(assert (=> start!122868 m!1315039))

(assert (=> b!1424431 m!1315031))

(assert (=> b!1424431 m!1315031))

(declare-fun m!1315041 () Bool)

(assert (=> b!1424431 m!1315041))

(assert (=> b!1424432 m!1315031))

(assert (=> b!1424432 m!1315031))

(declare-fun m!1315043 () Bool)

(assert (=> b!1424432 m!1315043))

(assert (=> b!1424425 m!1315031))

(assert (=> b!1424425 m!1315031))

(declare-fun m!1315045 () Bool)

(assert (=> b!1424425 m!1315045))

(declare-fun m!1315047 () Bool)

(assert (=> b!1424437 m!1315047))

(declare-fun m!1315049 () Bool)

(assert (=> b!1424436 m!1315049))

(assert (=> b!1424436 m!1315049))

(declare-fun m!1315051 () Bool)

(assert (=> b!1424436 m!1315051))

(declare-fun m!1315053 () Bool)

(assert (=> b!1424435 m!1315053))

(declare-fun m!1315055 () Bool)

(assert (=> b!1424434 m!1315055))

(declare-fun m!1315057 () Bool)

(assert (=> b!1424439 m!1315057))

(assert (=> b!1424433 m!1315031))

(assert (=> b!1424433 m!1315031))

(declare-fun m!1315059 () Bool)

(assert (=> b!1424433 m!1315059))

(declare-fun m!1315061 () Bool)

(assert (=> b!1424428 m!1315061))

(assert (=> b!1424428 m!1315061))

(declare-fun m!1315063 () Bool)

(assert (=> b!1424428 m!1315063))

(declare-fun m!1315065 () Bool)

(assert (=> b!1424428 m!1315065))

(declare-fun m!1315067 () Bool)

(assert (=> b!1424428 m!1315067))

(declare-fun m!1315069 () Bool)

(assert (=> b!1424440 m!1315069))

(assert (=> b!1424426 m!1315065))

(declare-fun m!1315071 () Bool)

(assert (=> b!1424426 m!1315071))

(declare-fun m!1315073 () Bool)

(assert (=> b!1424426 m!1315073))

(declare-fun m!1315075 () Bool)

(assert (=> b!1424426 m!1315075))

(assert (=> b!1424426 m!1315031))

(declare-fun m!1315077 () Bool)

(assert (=> b!1424426 m!1315077))

(check-sat (not b!1424426) (not b!1424440) (not b!1424428) (not b!1424425) (not start!122868) (not b!1424435) (not b!1424436) (not b!1424432) (not b!1424434) (not b!1424437) (not b!1424438) (not b!1424433) (not b!1424439) (not b!1424431))
(check-sat)
