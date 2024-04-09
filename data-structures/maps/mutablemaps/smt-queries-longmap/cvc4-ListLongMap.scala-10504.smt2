; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123764 () Bool)

(assert start!123764)

(declare-fun b!1434069 () Bool)

(declare-fun e!809430 () Bool)

(declare-fun e!809432 () Bool)

(assert (=> b!1434069 (= e!809430 e!809432)))

(declare-fun res!967644 () Bool)

(assert (=> b!1434069 (=> (not res!967644) (not e!809432))))

(declare-datatypes ((array!97540 0))(
  ( (array!97541 (arr!47070 (Array (_ BitVec 32) (_ BitVec 64))) (size!47621 (_ BitVec 32))) )
))
(declare-fun lt!631284 () array!97540)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!631287 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11371 0))(
  ( (MissingZero!11371 (index!47875 (_ BitVec 32))) (Found!11371 (index!47876 (_ BitVec 32))) (Intermediate!11371 (undefined!12183 Bool) (index!47877 (_ BitVec 32)) (x!129530 (_ BitVec 32))) (Undefined!11371) (MissingVacant!11371 (index!47878 (_ BitVec 32))) )
))
(declare-fun lt!631285 () SeekEntryResult!11371)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97540 (_ BitVec 32)) SeekEntryResult!11371)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434069 (= res!967644 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631287 mask!2608) lt!631287 lt!631284 mask!2608) lt!631285))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434069 (= lt!631285 (Intermediate!11371 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97540)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434069 (= lt!631287 (select (store (arr!47070 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434069 (= lt!631284 (array!97541 (store (arr!47070 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47621 a!2831)))))

(declare-fun b!1434070 () Bool)

(declare-fun res!967648 () Bool)

(declare-fun e!809433 () Bool)

(assert (=> b!1434070 (=> (not res!967648) (not e!809433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434070 (= res!967648 (validKeyInArray!0 (select (arr!47070 a!2831) i!982)))))

(declare-fun b!1434071 () Bool)

(declare-fun res!967652 () Bool)

(assert (=> b!1434071 (=> (not res!967652) (not e!809433))))

(assert (=> b!1434071 (= res!967652 (validKeyInArray!0 (select (arr!47070 a!2831) j!81)))))

(declare-fun b!1434072 () Bool)

(declare-fun res!967646 () Bool)

(assert (=> b!1434072 (=> (not res!967646) (not e!809433))))

(assert (=> b!1434072 (= res!967646 (and (= (size!47621 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47621 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47621 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434073 () Bool)

(declare-fun res!967650 () Bool)

(assert (=> b!1434073 (=> (not res!967650) (not e!809433))))

(declare-datatypes ((List!33760 0))(
  ( (Nil!33757) (Cons!33756 (h!35085 (_ BitVec 64)) (t!48461 List!33760)) )
))
(declare-fun arrayNoDuplicates!0 (array!97540 (_ BitVec 32) List!33760) Bool)

(assert (=> b!1434073 (= res!967650 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33757))))

(declare-fun b!1434075 () Bool)

(declare-fun res!967651 () Bool)

(assert (=> b!1434075 (=> (not res!967651) (not e!809433))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1434075 (= res!967651 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47621 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47621 a!2831))))))

(declare-fun b!1434076 () Bool)

(declare-fun e!809431 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97540 (_ BitVec 32)) SeekEntryResult!11371)

(assert (=> b!1434076 (= e!809431 (= (seekEntryOrOpen!0 (select (arr!47070 a!2831) j!81) a!2831 mask!2608) (Found!11371 j!81)))))

(declare-fun b!1434077 () Bool)

(declare-fun e!809435 () Bool)

(assert (=> b!1434077 (= e!809432 (not e!809435))))

(declare-fun res!967643 () Bool)

(assert (=> b!1434077 (=> res!967643 e!809435)))

(assert (=> b!1434077 (= res!967643 (or (= (select (arr!47070 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47070 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47070 a!2831) index!585) (select (arr!47070 a!2831) j!81)) (= (select (store (arr!47070 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1434077 e!809431))

(declare-fun res!967641 () Bool)

(assert (=> b!1434077 (=> (not res!967641) (not e!809431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97540 (_ BitVec 32)) Bool)

(assert (=> b!1434077 (= res!967641 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48436 0))(
  ( (Unit!48437) )
))
(declare-fun lt!631286 () Unit!48436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48436)

(assert (=> b!1434077 (= lt!631286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434078 () Bool)

(assert (=> b!1434078 (= e!809435 true)))

(declare-fun lt!631288 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434078 (= lt!631288 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!967653 () Bool)

(assert (=> start!123764 (=> (not res!967653) (not e!809433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123764 (= res!967653 (validMask!0 mask!2608))))

(assert (=> start!123764 e!809433))

(assert (=> start!123764 true))

(declare-fun array_inv!36015 (array!97540) Bool)

(assert (=> start!123764 (array_inv!36015 a!2831)))

(declare-fun b!1434074 () Bool)

(declare-fun res!967642 () Bool)

(assert (=> b!1434074 (=> (not res!967642) (not e!809432))))

(assert (=> b!1434074 (= res!967642 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631287 lt!631284 mask!2608) lt!631285))))

(declare-fun b!1434079 () Bool)

(assert (=> b!1434079 (= e!809433 e!809430)))

(declare-fun res!967647 () Bool)

(assert (=> b!1434079 (=> (not res!967647) (not e!809430))))

(declare-fun lt!631283 () SeekEntryResult!11371)

(assert (=> b!1434079 (= res!967647 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47070 a!2831) j!81) mask!2608) (select (arr!47070 a!2831) j!81) a!2831 mask!2608) lt!631283))))

(assert (=> b!1434079 (= lt!631283 (Intermediate!11371 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434080 () Bool)

(declare-fun res!967645 () Bool)

(assert (=> b!1434080 (=> (not res!967645) (not e!809432))))

(assert (=> b!1434080 (= res!967645 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47070 a!2831) j!81) a!2831 mask!2608) lt!631283))))

(declare-fun b!1434081 () Bool)

(declare-fun res!967640 () Bool)

(assert (=> b!1434081 (=> (not res!967640) (not e!809433))))

(assert (=> b!1434081 (= res!967640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434082 () Bool)

(declare-fun res!967649 () Bool)

(assert (=> b!1434082 (=> (not res!967649) (not e!809432))))

(assert (=> b!1434082 (= res!967649 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123764 res!967653) b!1434072))

(assert (= (and b!1434072 res!967646) b!1434070))

(assert (= (and b!1434070 res!967648) b!1434071))

(assert (= (and b!1434071 res!967652) b!1434081))

(assert (= (and b!1434081 res!967640) b!1434073))

(assert (= (and b!1434073 res!967650) b!1434075))

(assert (= (and b!1434075 res!967651) b!1434079))

(assert (= (and b!1434079 res!967647) b!1434069))

(assert (= (and b!1434069 res!967644) b!1434080))

(assert (= (and b!1434080 res!967645) b!1434074))

(assert (= (and b!1434074 res!967642) b!1434082))

(assert (= (and b!1434082 res!967649) b!1434077))

(assert (= (and b!1434077 res!967641) b!1434076))

(assert (= (and b!1434077 (not res!967643)) b!1434078))

(declare-fun m!1323741 () Bool)

(assert (=> b!1434070 m!1323741))

(assert (=> b!1434070 m!1323741))

(declare-fun m!1323743 () Bool)

(assert (=> b!1434070 m!1323743))

(declare-fun m!1323745 () Bool)

(assert (=> b!1434078 m!1323745))

(declare-fun m!1323747 () Bool)

(assert (=> start!123764 m!1323747))

(declare-fun m!1323749 () Bool)

(assert (=> start!123764 m!1323749))

(declare-fun m!1323751 () Bool)

(assert (=> b!1434079 m!1323751))

(assert (=> b!1434079 m!1323751))

(declare-fun m!1323753 () Bool)

(assert (=> b!1434079 m!1323753))

(assert (=> b!1434079 m!1323753))

(assert (=> b!1434079 m!1323751))

(declare-fun m!1323755 () Bool)

(assert (=> b!1434079 m!1323755))

(declare-fun m!1323757 () Bool)

(assert (=> b!1434081 m!1323757))

(declare-fun m!1323759 () Bool)

(assert (=> b!1434073 m!1323759))

(assert (=> b!1434080 m!1323751))

(assert (=> b!1434080 m!1323751))

(declare-fun m!1323761 () Bool)

(assert (=> b!1434080 m!1323761))

(declare-fun m!1323763 () Bool)

(assert (=> b!1434074 m!1323763))

(assert (=> b!1434076 m!1323751))

(assert (=> b!1434076 m!1323751))

(declare-fun m!1323765 () Bool)

(assert (=> b!1434076 m!1323765))

(assert (=> b!1434071 m!1323751))

(assert (=> b!1434071 m!1323751))

(declare-fun m!1323767 () Bool)

(assert (=> b!1434071 m!1323767))

(declare-fun m!1323769 () Bool)

(assert (=> b!1434069 m!1323769))

(assert (=> b!1434069 m!1323769))

(declare-fun m!1323771 () Bool)

(assert (=> b!1434069 m!1323771))

(declare-fun m!1323773 () Bool)

(assert (=> b!1434069 m!1323773))

(declare-fun m!1323775 () Bool)

(assert (=> b!1434069 m!1323775))

(assert (=> b!1434077 m!1323773))

(declare-fun m!1323777 () Bool)

(assert (=> b!1434077 m!1323777))

(declare-fun m!1323779 () Bool)

(assert (=> b!1434077 m!1323779))

(declare-fun m!1323781 () Bool)

(assert (=> b!1434077 m!1323781))

(assert (=> b!1434077 m!1323751))

(declare-fun m!1323783 () Bool)

(assert (=> b!1434077 m!1323783))

(push 1)

