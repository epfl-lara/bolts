; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123272 () Bool)

(assert start!123272)

(declare-fun res!963450 () Bool)

(declare-fun e!806871 () Bool)

(assert (=> start!123272 (=> (not res!963450) (not e!806871))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123272 (= res!963450 (validMask!0 mask!2608))))

(assert (=> start!123272 e!806871))

(assert (=> start!123272 true))

(declare-datatypes ((array!97351 0))(
  ( (array!97352 (arr!46983 (Array (_ BitVec 32) (_ BitVec 64))) (size!47534 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97351)

(declare-fun array_inv!35928 (array!97351) Bool)

(assert (=> start!123272 (array_inv!35928 a!2831)))

(declare-fun b!1428700 () Bool)

(declare-fun res!963446 () Bool)

(assert (=> b!1428700 (=> (not res!963446) (not e!806871))))

(declare-datatypes ((List!33673 0))(
  ( (Nil!33670) (Cons!33669 (h!34983 (_ BitVec 64)) (t!48374 List!33673)) )
))
(declare-fun arrayNoDuplicates!0 (array!97351 (_ BitVec 32) List!33673) Bool)

(assert (=> b!1428700 (= res!963446 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33670))))

(declare-fun b!1428701 () Bool)

(declare-fun res!963440 () Bool)

(assert (=> b!1428701 (=> (not res!963440) (not e!806871))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428701 (= res!963440 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47534 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47534 a!2831))))))

(declare-fun b!1428702 () Bool)

(declare-fun res!963438 () Bool)

(assert (=> b!1428702 (=> (not res!963438) (not e!806871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97351 (_ BitVec 32)) Bool)

(assert (=> b!1428702 (= res!963438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428703 () Bool)

(declare-fun e!806870 () Bool)

(declare-fun e!806869 () Bool)

(assert (=> b!1428703 (= e!806870 e!806869)))

(declare-fun res!963442 () Bool)

(assert (=> b!1428703 (=> (not res!963442) (not e!806869))))

(declare-fun lt!629052 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11284 0))(
  ( (MissingZero!11284 (index!47527 (_ BitVec 32))) (Found!11284 (index!47528 (_ BitVec 32))) (Intermediate!11284 (undefined!12096 Bool) (index!47529 (_ BitVec 32)) (x!129169 (_ BitVec 32))) (Undefined!11284) (MissingVacant!11284 (index!47530 (_ BitVec 32))) )
))
(declare-fun lt!629056 () SeekEntryResult!11284)

(declare-fun lt!629054 () array!97351)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97351 (_ BitVec 32)) SeekEntryResult!11284)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428703 (= res!963442 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629052 mask!2608) lt!629052 lt!629054 mask!2608) lt!629056))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428703 (= lt!629056 (Intermediate!11284 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428703 (= lt!629052 (select (store (arr!46983 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428703 (= lt!629054 (array!97352 (store (arr!46983 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47534 a!2831)))))

(declare-fun b!1428704 () Bool)

(declare-fun res!963443 () Bool)

(assert (=> b!1428704 (=> (not res!963443) (not e!806869))))

(assert (=> b!1428704 (= res!963443 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun e!806872 () Bool)

(declare-fun b!1428705 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97351 (_ BitVec 32)) SeekEntryResult!11284)

(assert (=> b!1428705 (= e!806872 (= (seekEntryOrOpen!0 (select (arr!46983 a!2831) j!81) a!2831 mask!2608) (Found!11284 j!81)))))

(declare-fun b!1428706 () Bool)

(declare-fun res!963439 () Bool)

(assert (=> b!1428706 (=> (not res!963439) (not e!806871))))

(assert (=> b!1428706 (= res!963439 (and (= (size!47534 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47534 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47534 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428707 () Bool)

(declare-fun res!963448 () Bool)

(assert (=> b!1428707 (=> (not res!963448) (not e!806869))))

(declare-fun lt!629053 () SeekEntryResult!11284)

(assert (=> b!1428707 (= res!963448 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46983 a!2831) j!81) a!2831 mask!2608) lt!629053))))

(declare-fun b!1428708 () Bool)

(declare-fun res!963445 () Bool)

(assert (=> b!1428708 (=> (not res!963445) (not e!806871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428708 (= res!963445 (validKeyInArray!0 (select (arr!46983 a!2831) i!982)))))

(declare-fun b!1428709 () Bool)

(declare-fun res!963447 () Bool)

(assert (=> b!1428709 (=> (not res!963447) (not e!806869))))

(assert (=> b!1428709 (= res!963447 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629052 lt!629054 mask!2608) lt!629056))))

(declare-fun b!1428710 () Bool)

(declare-fun res!963444 () Bool)

(assert (=> b!1428710 (=> (not res!963444) (not e!806871))))

(assert (=> b!1428710 (= res!963444 (validKeyInArray!0 (select (arr!46983 a!2831) j!81)))))

(declare-fun b!1428711 () Bool)

(assert (=> b!1428711 (= e!806871 e!806870)))

(declare-fun res!963441 () Bool)

(assert (=> b!1428711 (=> (not res!963441) (not e!806870))))

(assert (=> b!1428711 (= res!963441 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46983 a!2831) j!81) mask!2608) (select (arr!46983 a!2831) j!81) a!2831 mask!2608) lt!629053))))

(assert (=> b!1428711 (= lt!629053 (Intermediate!11284 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428712 () Bool)

(assert (=> b!1428712 (= e!806869 (not true))))

(assert (=> b!1428712 e!806872))

(declare-fun res!963449 () Bool)

(assert (=> b!1428712 (=> (not res!963449) (not e!806872))))

(assert (=> b!1428712 (= res!963449 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48262 0))(
  ( (Unit!48263) )
))
(declare-fun lt!629055 () Unit!48262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48262)

(assert (=> b!1428712 (= lt!629055 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123272 res!963450) b!1428706))

(assert (= (and b!1428706 res!963439) b!1428708))

(assert (= (and b!1428708 res!963445) b!1428710))

(assert (= (and b!1428710 res!963444) b!1428702))

(assert (= (and b!1428702 res!963438) b!1428700))

(assert (= (and b!1428700 res!963446) b!1428701))

(assert (= (and b!1428701 res!963440) b!1428711))

(assert (= (and b!1428711 res!963441) b!1428703))

(assert (= (and b!1428703 res!963442) b!1428707))

(assert (= (and b!1428707 res!963448) b!1428709))

(assert (= (and b!1428709 res!963447) b!1428704))

(assert (= (and b!1428704 res!963443) b!1428712))

(assert (= (and b!1428712 res!963449) b!1428705))

(declare-fun m!1318875 () Bool)

(assert (=> b!1428708 m!1318875))

(assert (=> b!1428708 m!1318875))

(declare-fun m!1318877 () Bool)

(assert (=> b!1428708 m!1318877))

(declare-fun m!1318879 () Bool)

(assert (=> b!1428709 m!1318879))

(declare-fun m!1318881 () Bool)

(assert (=> start!123272 m!1318881))

(declare-fun m!1318883 () Bool)

(assert (=> start!123272 m!1318883))

(declare-fun m!1318885 () Bool)

(assert (=> b!1428711 m!1318885))

(assert (=> b!1428711 m!1318885))

(declare-fun m!1318887 () Bool)

(assert (=> b!1428711 m!1318887))

(assert (=> b!1428711 m!1318887))

(assert (=> b!1428711 m!1318885))

(declare-fun m!1318889 () Bool)

(assert (=> b!1428711 m!1318889))

(assert (=> b!1428710 m!1318885))

(assert (=> b!1428710 m!1318885))

(declare-fun m!1318891 () Bool)

(assert (=> b!1428710 m!1318891))

(assert (=> b!1428705 m!1318885))

(assert (=> b!1428705 m!1318885))

(declare-fun m!1318893 () Bool)

(assert (=> b!1428705 m!1318893))

(declare-fun m!1318895 () Bool)

(assert (=> b!1428702 m!1318895))

(declare-fun m!1318897 () Bool)

(assert (=> b!1428703 m!1318897))

(assert (=> b!1428703 m!1318897))

(declare-fun m!1318899 () Bool)

(assert (=> b!1428703 m!1318899))

(declare-fun m!1318901 () Bool)

(assert (=> b!1428703 m!1318901))

(declare-fun m!1318903 () Bool)

(assert (=> b!1428703 m!1318903))

(declare-fun m!1318905 () Bool)

(assert (=> b!1428700 m!1318905))

(assert (=> b!1428707 m!1318885))

(assert (=> b!1428707 m!1318885))

(declare-fun m!1318907 () Bool)

(assert (=> b!1428707 m!1318907))

(declare-fun m!1318909 () Bool)

(assert (=> b!1428712 m!1318909))

(declare-fun m!1318911 () Bool)

(assert (=> b!1428712 m!1318911))

(push 1)

(assert (not b!1428709))

(assert (not b!1428712))

(assert (not b!1428705))

(assert (not b!1428707))

(assert (not b!1428711))

(assert (not b!1428710))

(assert (not b!1428700))

(assert (not b!1428703))

(assert (not start!123272))

(assert (not b!1428708))

(assert (not b!1428702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

