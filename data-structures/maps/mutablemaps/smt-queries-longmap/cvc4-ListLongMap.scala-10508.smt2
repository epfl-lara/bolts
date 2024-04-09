; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123908 () Bool)

(assert start!123908)

(declare-fun b!1435315 () Bool)

(declare-fun res!968434 () Bool)

(declare-fun e!810097 () Bool)

(assert (=> b!1435315 (=> (not res!968434) (not e!810097))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97570 0))(
  ( (array!97571 (arr!47082 (Array (_ BitVec 32) (_ BitVec 64))) (size!47633 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97570)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435315 (= res!968434 (and (= (size!47633 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47633 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47633 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435316 () Bool)

(declare-fun e!810095 () Bool)

(declare-fun e!810101 () Bool)

(assert (=> b!1435316 (= e!810095 e!810101)))

(declare-fun res!968439 () Bool)

(assert (=> b!1435316 (=> res!968439 e!810101)))

(declare-fun lt!631810 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1435316 (= res!968439 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631810 #b00000000000000000000000000000000) (bvsge lt!631810 (size!47633 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435316 (= lt!631810 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435317 () Bool)

(declare-fun res!968430 () Bool)

(declare-fun e!810099 () Bool)

(assert (=> b!1435317 (=> (not res!968430) (not e!810099))))

(declare-datatypes ((SeekEntryResult!11383 0))(
  ( (MissingZero!11383 (index!47923 (_ BitVec 32))) (Found!11383 (index!47924 (_ BitVec 32))) (Intermediate!11383 (undefined!12195 Bool) (index!47925 (_ BitVec 32)) (x!129592 (_ BitVec 32))) (Undefined!11383) (MissingVacant!11383 (index!47926 (_ BitVec 32))) )
))
(declare-fun lt!631811 () SeekEntryResult!11383)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97570 (_ BitVec 32)) SeekEntryResult!11383)

(assert (=> b!1435317 (= res!968430 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47082 a!2831) j!81) a!2831 mask!2608) lt!631811))))

(declare-fun b!1435318 () Bool)

(declare-fun res!968436 () Bool)

(assert (=> b!1435318 (=> (not res!968436) (not e!810097))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1435318 (= res!968436 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47633 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47633 a!2831))))))

(declare-fun res!968442 () Bool)

(assert (=> start!123908 (=> (not res!968442) (not e!810097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123908 (= res!968442 (validMask!0 mask!2608))))

(assert (=> start!123908 e!810097))

(assert (=> start!123908 true))

(declare-fun array_inv!36027 (array!97570) Bool)

(assert (=> start!123908 (array_inv!36027 a!2831)))

(declare-fun b!1435319 () Bool)

(declare-fun e!810096 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97570 (_ BitVec 32)) SeekEntryResult!11383)

(assert (=> b!1435319 (= e!810096 (= (seekEntryOrOpen!0 (select (arr!47082 a!2831) j!81) a!2831 mask!2608) (Found!11383 j!81)))))

(declare-fun b!1435320 () Bool)

(declare-fun res!968441 () Bool)

(assert (=> b!1435320 (=> (not res!968441) (not e!810097))))

(declare-datatypes ((List!33772 0))(
  ( (Nil!33769) (Cons!33768 (h!35103 (_ BitVec 64)) (t!48473 List!33772)) )
))
(declare-fun arrayNoDuplicates!0 (array!97570 (_ BitVec 32) List!33772) Bool)

(assert (=> b!1435320 (= res!968441 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33769))))

(declare-fun b!1435321 () Bool)

(assert (=> b!1435321 (= e!810099 (not e!810095))))

(declare-fun res!968432 () Bool)

(assert (=> b!1435321 (=> res!968432 e!810095)))

(assert (=> b!1435321 (= res!968432 (or (= (select (arr!47082 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47082 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47082 a!2831) index!585) (select (arr!47082 a!2831) j!81)) (= (select (store (arr!47082 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1435321 e!810096))

(declare-fun res!968445 () Bool)

(assert (=> b!1435321 (=> (not res!968445) (not e!810096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97570 (_ BitVec 32)) Bool)

(assert (=> b!1435321 (= res!968445 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48460 0))(
  ( (Unit!48461) )
))
(declare-fun lt!631813 () Unit!48460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48460)

(assert (=> b!1435321 (= lt!631813 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435322 () Bool)

(declare-fun res!968433 () Bool)

(assert (=> b!1435322 (=> (not res!968433) (not e!810099))))

(declare-fun lt!631812 () (_ BitVec 64))

(declare-fun lt!631809 () SeekEntryResult!11383)

(declare-fun lt!631807 () array!97570)

(assert (=> b!1435322 (= res!968433 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631812 lt!631807 mask!2608) lt!631809))))

(declare-fun b!1435323 () Bool)

(declare-fun res!968435 () Bool)

(assert (=> b!1435323 (=> res!968435 e!810101)))

(assert (=> b!1435323 (= res!968435 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631810 (select (arr!47082 a!2831) j!81) a!2831 mask!2608) lt!631811)))))

(declare-fun b!1435324 () Bool)

(assert (=> b!1435324 (= e!810101 true)))

(declare-fun lt!631808 () SeekEntryResult!11383)

(assert (=> b!1435324 (= lt!631808 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631810 lt!631812 lt!631807 mask!2608))))

(declare-fun b!1435325 () Bool)

(declare-fun res!968431 () Bool)

(assert (=> b!1435325 (=> (not res!968431) (not e!810097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435325 (= res!968431 (validKeyInArray!0 (select (arr!47082 a!2831) j!81)))))

(declare-fun b!1435326 () Bool)

(declare-fun res!968437 () Bool)

(assert (=> b!1435326 (=> (not res!968437) (not e!810097))))

(assert (=> b!1435326 (= res!968437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435327 () Bool)

(declare-fun res!968440 () Bool)

(assert (=> b!1435327 (=> (not res!968440) (not e!810097))))

(assert (=> b!1435327 (= res!968440 (validKeyInArray!0 (select (arr!47082 a!2831) i!982)))))

(declare-fun b!1435328 () Bool)

(declare-fun res!968444 () Bool)

(assert (=> b!1435328 (=> (not res!968444) (not e!810099))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435328 (= res!968444 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435329 () Bool)

(declare-fun e!810100 () Bool)

(assert (=> b!1435329 (= e!810100 e!810099)))

(declare-fun res!968438 () Bool)

(assert (=> b!1435329 (=> (not res!968438) (not e!810099))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435329 (= res!968438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631812 mask!2608) lt!631812 lt!631807 mask!2608) lt!631809))))

(assert (=> b!1435329 (= lt!631809 (Intermediate!11383 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435329 (= lt!631812 (select (store (arr!47082 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435329 (= lt!631807 (array!97571 (store (arr!47082 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47633 a!2831)))))

(declare-fun b!1435330 () Bool)

(assert (=> b!1435330 (= e!810097 e!810100)))

(declare-fun res!968443 () Bool)

(assert (=> b!1435330 (=> (not res!968443) (not e!810100))))

(assert (=> b!1435330 (= res!968443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47082 a!2831) j!81) mask!2608) (select (arr!47082 a!2831) j!81) a!2831 mask!2608) lt!631811))))

(assert (=> b!1435330 (= lt!631811 (Intermediate!11383 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123908 res!968442) b!1435315))

(assert (= (and b!1435315 res!968434) b!1435327))

(assert (= (and b!1435327 res!968440) b!1435325))

(assert (= (and b!1435325 res!968431) b!1435326))

(assert (= (and b!1435326 res!968437) b!1435320))

(assert (= (and b!1435320 res!968441) b!1435318))

(assert (= (and b!1435318 res!968436) b!1435330))

(assert (= (and b!1435330 res!968443) b!1435329))

(assert (= (and b!1435329 res!968438) b!1435317))

(assert (= (and b!1435317 res!968430) b!1435322))

(assert (= (and b!1435322 res!968433) b!1435328))

(assert (= (and b!1435328 res!968444) b!1435321))

(assert (= (and b!1435321 res!968445) b!1435319))

(assert (= (and b!1435321 (not res!968432)) b!1435316))

(assert (= (and b!1435316 (not res!968439)) b!1435323))

(assert (= (and b!1435323 (not res!968435)) b!1435324))

(declare-fun m!1324733 () Bool)

(assert (=> b!1435330 m!1324733))

(assert (=> b!1435330 m!1324733))

(declare-fun m!1324735 () Bool)

(assert (=> b!1435330 m!1324735))

(assert (=> b!1435330 m!1324735))

(assert (=> b!1435330 m!1324733))

(declare-fun m!1324737 () Bool)

(assert (=> b!1435330 m!1324737))

(assert (=> b!1435317 m!1324733))

(assert (=> b!1435317 m!1324733))

(declare-fun m!1324739 () Bool)

(assert (=> b!1435317 m!1324739))

(declare-fun m!1324741 () Bool)

(assert (=> b!1435316 m!1324741))

(declare-fun m!1324743 () Bool)

(assert (=> b!1435322 m!1324743))

(declare-fun m!1324745 () Bool)

(assert (=> b!1435321 m!1324745))

(declare-fun m!1324747 () Bool)

(assert (=> b!1435321 m!1324747))

(declare-fun m!1324749 () Bool)

(assert (=> b!1435321 m!1324749))

(declare-fun m!1324751 () Bool)

(assert (=> b!1435321 m!1324751))

(assert (=> b!1435321 m!1324733))

(declare-fun m!1324753 () Bool)

(assert (=> b!1435321 m!1324753))

(declare-fun m!1324755 () Bool)

(assert (=> start!123908 m!1324755))

(declare-fun m!1324757 () Bool)

(assert (=> start!123908 m!1324757))

(declare-fun m!1324759 () Bool)

(assert (=> b!1435320 m!1324759))

(declare-fun m!1324761 () Bool)

(assert (=> b!1435327 m!1324761))

(assert (=> b!1435327 m!1324761))

(declare-fun m!1324763 () Bool)

(assert (=> b!1435327 m!1324763))

(assert (=> b!1435325 m!1324733))

(assert (=> b!1435325 m!1324733))

(declare-fun m!1324765 () Bool)

(assert (=> b!1435325 m!1324765))

(declare-fun m!1324767 () Bool)

(assert (=> b!1435324 m!1324767))

(assert (=> b!1435323 m!1324733))

(assert (=> b!1435323 m!1324733))

(declare-fun m!1324769 () Bool)

(assert (=> b!1435323 m!1324769))

(declare-fun m!1324771 () Bool)

(assert (=> b!1435329 m!1324771))

(assert (=> b!1435329 m!1324771))

(declare-fun m!1324773 () Bool)

(assert (=> b!1435329 m!1324773))

(assert (=> b!1435329 m!1324745))

(declare-fun m!1324775 () Bool)

(assert (=> b!1435329 m!1324775))

(declare-fun m!1324777 () Bool)

(assert (=> b!1435326 m!1324777))

(assert (=> b!1435319 m!1324733))

(assert (=> b!1435319 m!1324733))

(declare-fun m!1324779 () Bool)

(assert (=> b!1435319 m!1324779))

(push 1)

