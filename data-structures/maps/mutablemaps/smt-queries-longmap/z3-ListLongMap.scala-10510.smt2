; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123918 () Bool)

(assert start!123918)

(declare-fun b!1435569 () Bool)

(declare-fun e!810203 () Bool)

(declare-fun e!810206 () Bool)

(assert (=> b!1435569 (= e!810203 (not e!810206))))

(declare-fun res!968693 () Bool)

(assert (=> b!1435569 (=> res!968693 e!810206)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97580 0))(
  ( (array!97581 (arr!47087 (Array (_ BitVec 32) (_ BitVec 64))) (size!47638 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97580)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435569 (= res!968693 (or (= (select (arr!47087 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47087 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47087 a!2831) index!585) (select (arr!47087 a!2831) j!81)) (= (select (store (arr!47087 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!810200 () Bool)

(assert (=> b!1435569 e!810200))

(declare-fun res!968684 () Bool)

(assert (=> b!1435569 (=> (not res!968684) (not e!810200))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97580 (_ BitVec 32)) Bool)

(assert (=> b!1435569 (= res!968684 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48470 0))(
  ( (Unit!48471) )
))
(declare-fun lt!631908 () Unit!48470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48470)

(assert (=> b!1435569 (= lt!631908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435570 () Bool)

(declare-fun res!968697 () Bool)

(declare-fun e!810204 () Bool)

(assert (=> b!1435570 (=> (not res!968697) (not e!810204))))

(declare-datatypes ((List!33777 0))(
  ( (Nil!33774) (Cons!33773 (h!35108 (_ BitVec 64)) (t!48478 List!33777)) )
))
(declare-fun arrayNoDuplicates!0 (array!97580 (_ BitVec 32) List!33777) Bool)

(assert (=> b!1435570 (= res!968697 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33774))))

(declare-fun b!1435571 () Bool)

(declare-fun res!968686 () Bool)

(assert (=> b!1435571 (=> (not res!968686) (not e!810204))))

(assert (=> b!1435571 (= res!968686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435572 () Bool)

(declare-fun res!968685 () Bool)

(assert (=> b!1435572 (=> (not res!968685) (not e!810204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435572 (= res!968685 (validKeyInArray!0 (select (arr!47087 a!2831) j!81)))))

(declare-fun b!1435573 () Bool)

(declare-fun res!968692 () Bool)

(declare-fun e!810202 () Bool)

(assert (=> b!1435573 (=> res!968692 e!810202)))

(declare-fun lt!631906 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11388 0))(
  ( (MissingZero!11388 (index!47943 (_ BitVec 32))) (Found!11388 (index!47944 (_ BitVec 32))) (Intermediate!11388 (undefined!12200 Bool) (index!47945 (_ BitVec 32)) (x!129613 (_ BitVec 32))) (Undefined!11388) (MissingVacant!11388 (index!47946 (_ BitVec 32))) )
))
(declare-fun lt!631909 () SeekEntryResult!11388)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97580 (_ BitVec 32)) SeekEntryResult!11388)

(assert (=> b!1435573 (= res!968692 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631906 (select (arr!47087 a!2831) j!81) a!2831 mask!2608) lt!631909)))))

(declare-fun b!1435574 () Bool)

(declare-fun res!968691 () Bool)

(assert (=> b!1435574 (=> res!968691 e!810202)))

(declare-fun lt!631904 () array!97580)

(declare-fun lt!631903 () SeekEntryResult!11388)

(declare-fun lt!631907 () (_ BitVec 64))

(assert (=> b!1435574 (= res!968691 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631906 lt!631907 lt!631904 mask!2608) lt!631903)))))

(declare-fun b!1435575 () Bool)

(assert (=> b!1435575 (= e!810206 e!810202)))

(declare-fun res!968695 () Bool)

(assert (=> b!1435575 (=> res!968695 e!810202)))

(assert (=> b!1435575 (= res!968695 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631906 #b00000000000000000000000000000000) (bvsge lt!631906 (size!47638 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435575 (= lt!631906 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435576 () Bool)

(assert (=> b!1435576 (= e!810202 true)))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435576 (and (not undefinedAfter!5) (= intermediateAfterIndex!13 i!982) (bvslt intermediateAfterX!13 intermediateBeforeX!13))))

(declare-fun lt!631905 () Unit!48470)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!97580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!48470)

(assert (=> b!1435576 (= lt!631905 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2831 i!982 j!81 (bvadd #b00000000000000000000000000000001 x!605) lt!631906 intermediateBeforeX!13 intermediateBeforeIndex!13 intermediateAfterX!13 intermediateAfterIndex!13 undefinedAfter!5 mask!2608))))

(declare-fun b!1435577 () Bool)

(declare-fun e!810205 () Bool)

(assert (=> b!1435577 (= e!810205 e!810203)))

(declare-fun res!968696 () Bool)

(assert (=> b!1435577 (=> (not res!968696) (not e!810203))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435577 (= res!968696 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631907 mask!2608) lt!631907 lt!631904 mask!2608) lt!631903))))

(assert (=> b!1435577 (= lt!631903 (Intermediate!11388 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435577 (= lt!631907 (select (store (arr!47087 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435577 (= lt!631904 (array!97581 (store (arr!47087 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47638 a!2831)))))

(declare-fun b!1435578 () Bool)

(declare-fun res!968700 () Bool)

(assert (=> b!1435578 (=> (not res!968700) (not e!810204))))

(assert (=> b!1435578 (= res!968700 (and (= (size!47638 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47638 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47638 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435579 () Bool)

(declare-fun res!968688 () Bool)

(assert (=> b!1435579 (=> (not res!968688) (not e!810203))))

(assert (=> b!1435579 (= res!968688 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47087 a!2831) j!81) a!2831 mask!2608) lt!631909))))

(declare-fun b!1435581 () Bool)

(assert (=> b!1435581 (= e!810204 e!810205)))

(declare-fun res!968689 () Bool)

(assert (=> b!1435581 (=> (not res!968689) (not e!810205))))

(assert (=> b!1435581 (= res!968689 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47087 a!2831) j!81) mask!2608) (select (arr!47087 a!2831) j!81) a!2831 mask!2608) lt!631909))))

(assert (=> b!1435581 (= lt!631909 (Intermediate!11388 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435582 () Bool)

(declare-fun res!968690 () Bool)

(assert (=> b!1435582 (=> (not res!968690) (not e!810204))))

(assert (=> b!1435582 (= res!968690 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47638 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47638 a!2831))))))

(declare-fun b!1435583 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97580 (_ BitVec 32)) SeekEntryResult!11388)

(assert (=> b!1435583 (= e!810200 (= (seekEntryOrOpen!0 (select (arr!47087 a!2831) j!81) a!2831 mask!2608) (Found!11388 j!81)))))

(declare-fun b!1435584 () Bool)

(declare-fun res!968699 () Bool)

(assert (=> b!1435584 (=> (not res!968699) (not e!810204))))

(assert (=> b!1435584 (= res!968699 (validKeyInArray!0 (select (arr!47087 a!2831) i!982)))))

(declare-fun b!1435585 () Bool)

(declare-fun res!968698 () Bool)

(assert (=> b!1435585 (=> (not res!968698) (not e!810203))))

(assert (=> b!1435585 (= res!968698 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631907 lt!631904 mask!2608) lt!631903))))

(declare-fun res!968687 () Bool)

(assert (=> start!123918 (=> (not res!968687) (not e!810204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123918 (= res!968687 (validMask!0 mask!2608))))

(assert (=> start!123918 e!810204))

(assert (=> start!123918 true))

(declare-fun array_inv!36032 (array!97580) Bool)

(assert (=> start!123918 (array_inv!36032 a!2831)))

(declare-fun b!1435580 () Bool)

(declare-fun res!968694 () Bool)

(assert (=> b!1435580 (=> (not res!968694) (not e!810203))))

(assert (=> b!1435580 (= res!968694 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123918 res!968687) b!1435578))

(assert (= (and b!1435578 res!968700) b!1435584))

(assert (= (and b!1435584 res!968699) b!1435572))

(assert (= (and b!1435572 res!968685) b!1435571))

(assert (= (and b!1435571 res!968686) b!1435570))

(assert (= (and b!1435570 res!968697) b!1435582))

(assert (= (and b!1435582 res!968690) b!1435581))

(assert (= (and b!1435581 res!968689) b!1435577))

(assert (= (and b!1435577 res!968696) b!1435579))

(assert (= (and b!1435579 res!968688) b!1435585))

(assert (= (and b!1435585 res!968698) b!1435580))

(assert (= (and b!1435580 res!968694) b!1435569))

(assert (= (and b!1435569 res!968684) b!1435583))

(assert (= (and b!1435569 (not res!968693)) b!1435575))

(assert (= (and b!1435575 (not res!968695)) b!1435573))

(assert (= (and b!1435573 (not res!968692)) b!1435574))

(assert (= (and b!1435574 (not res!968691)) b!1435576))

(declare-fun m!1324975 () Bool)

(assert (=> b!1435573 m!1324975))

(assert (=> b!1435573 m!1324975))

(declare-fun m!1324977 () Bool)

(assert (=> b!1435573 m!1324977))

(assert (=> b!1435583 m!1324975))

(assert (=> b!1435583 m!1324975))

(declare-fun m!1324979 () Bool)

(assert (=> b!1435583 m!1324979))

(declare-fun m!1324981 () Bool)

(assert (=> b!1435576 m!1324981))

(declare-fun m!1324983 () Bool)

(assert (=> b!1435577 m!1324983))

(assert (=> b!1435577 m!1324983))

(declare-fun m!1324985 () Bool)

(assert (=> b!1435577 m!1324985))

(declare-fun m!1324987 () Bool)

(assert (=> b!1435577 m!1324987))

(declare-fun m!1324989 () Bool)

(assert (=> b!1435577 m!1324989))

(declare-fun m!1324991 () Bool)

(assert (=> start!123918 m!1324991))

(declare-fun m!1324993 () Bool)

(assert (=> start!123918 m!1324993))

(declare-fun m!1324995 () Bool)

(assert (=> b!1435570 m!1324995))

(declare-fun m!1324997 () Bool)

(assert (=> b!1435584 m!1324997))

(assert (=> b!1435584 m!1324997))

(declare-fun m!1324999 () Bool)

(assert (=> b!1435584 m!1324999))

(assert (=> b!1435572 m!1324975))

(assert (=> b!1435572 m!1324975))

(declare-fun m!1325001 () Bool)

(assert (=> b!1435572 m!1325001))

(assert (=> b!1435581 m!1324975))

(assert (=> b!1435581 m!1324975))

(declare-fun m!1325003 () Bool)

(assert (=> b!1435581 m!1325003))

(assert (=> b!1435581 m!1325003))

(assert (=> b!1435581 m!1324975))

(declare-fun m!1325005 () Bool)

(assert (=> b!1435581 m!1325005))

(declare-fun m!1325007 () Bool)

(assert (=> b!1435574 m!1325007))

(declare-fun m!1325009 () Bool)

(assert (=> b!1435575 m!1325009))

(assert (=> b!1435569 m!1324987))

(declare-fun m!1325011 () Bool)

(assert (=> b!1435569 m!1325011))

(declare-fun m!1325013 () Bool)

(assert (=> b!1435569 m!1325013))

(declare-fun m!1325015 () Bool)

(assert (=> b!1435569 m!1325015))

(assert (=> b!1435569 m!1324975))

(declare-fun m!1325017 () Bool)

(assert (=> b!1435569 m!1325017))

(assert (=> b!1435579 m!1324975))

(assert (=> b!1435579 m!1324975))

(declare-fun m!1325019 () Bool)

(assert (=> b!1435579 m!1325019))

(declare-fun m!1325021 () Bool)

(assert (=> b!1435585 m!1325021))

(declare-fun m!1325023 () Bool)

(assert (=> b!1435571 m!1325023))

(check-sat (not b!1435579) (not b!1435571) (not b!1435577) (not b!1435583) (not b!1435569) (not b!1435572) (not b!1435585) (not b!1435576) (not b!1435581) (not b!1435575) (not b!1435574) (not b!1435570) (not b!1435584) (not start!123918) (not b!1435573))
(check-sat)
