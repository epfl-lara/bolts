; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123554 () Bool)

(assert start!123554)

(declare-fun b!1431561 () Bool)

(declare-fun res!965544 () Bool)

(declare-fun e!808245 () Bool)

(assert (=> b!1431561 (=> (not res!965544) (not e!808245))))

(declare-datatypes ((array!97444 0))(
  ( (array!97445 (arr!47025 (Array (_ BitVec 32) (_ BitVec 64))) (size!47576 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97444)

(declare-datatypes ((List!33715 0))(
  ( (Nil!33712) (Cons!33711 (h!35034 (_ BitVec 64)) (t!48416 List!33715)) )
))
(declare-fun arrayNoDuplicates!0 (array!97444 (_ BitVec 32) List!33715) Bool)

(assert (=> b!1431561 (= res!965544 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33712))))

(declare-fun b!1431562 () Bool)

(declare-fun res!965539 () Bool)

(declare-fun e!808244 () Bool)

(assert (=> b!1431562 (=> (not res!965539) (not e!808244))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1431562 (= res!965539 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun e!808242 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1431563 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11326 0))(
  ( (MissingZero!11326 (index!47695 (_ BitVec 32))) (Found!11326 (index!47696 (_ BitVec 32))) (Intermediate!11326 (undefined!12138 Bool) (index!47697 (_ BitVec 32)) (x!129347 (_ BitVec 32))) (Undefined!11326) (MissingVacant!11326 (index!47698 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97444 (_ BitVec 32)) SeekEntryResult!11326)

(assert (=> b!1431563 (= e!808242 (= (seekEntryOrOpen!0 (select (arr!47025 a!2831) j!81) a!2831 mask!2608) (Found!11326 j!81)))))

(declare-fun b!1431564 () Bool)

(declare-fun e!808243 () Bool)

(assert (=> b!1431564 (= e!808243 true)))

(declare-fun lt!630192 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431564 (= lt!630192 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431565 () Bool)

(declare-fun res!965535 () Bool)

(assert (=> b!1431565 (=> (not res!965535) (not e!808244))))

(declare-fun lt!630195 () array!97444)

(declare-fun lt!630191 () SeekEntryResult!11326)

(declare-fun lt!630196 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97444 (_ BitVec 32)) SeekEntryResult!11326)

(assert (=> b!1431565 (= res!965535 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630196 lt!630195 mask!2608) lt!630191))))

(declare-fun b!1431566 () Bool)

(declare-fun e!808247 () Bool)

(assert (=> b!1431566 (= e!808247 e!808244)))

(declare-fun res!965542 () Bool)

(assert (=> b!1431566 (=> (not res!965542) (not e!808244))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431566 (= res!965542 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630196 mask!2608) lt!630196 lt!630195 mask!2608) lt!630191))))

(assert (=> b!1431566 (= lt!630191 (Intermediate!11326 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431566 (= lt!630196 (select (store (arr!47025 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431566 (= lt!630195 (array!97445 (store (arr!47025 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47576 a!2831)))))

(declare-fun b!1431567 () Bool)

(declare-fun res!965540 () Bool)

(assert (=> b!1431567 (=> (not res!965540) (not e!808245))))

(assert (=> b!1431567 (= res!965540 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47576 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47576 a!2831))))))

(declare-fun b!1431568 () Bool)

(declare-fun res!965536 () Bool)

(assert (=> b!1431568 (=> (not res!965536) (not e!808245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97444 (_ BitVec 32)) Bool)

(assert (=> b!1431568 (= res!965536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431569 () Bool)

(declare-fun res!965546 () Bool)

(assert (=> b!1431569 (=> (not res!965546) (not e!808245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431569 (= res!965546 (validKeyInArray!0 (select (arr!47025 a!2831) j!81)))))

(declare-fun b!1431570 () Bool)

(assert (=> b!1431570 (= e!808245 e!808247)))

(declare-fun res!965541 () Bool)

(assert (=> b!1431570 (=> (not res!965541) (not e!808247))))

(declare-fun lt!630194 () SeekEntryResult!11326)

(assert (=> b!1431570 (= res!965541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47025 a!2831) j!81) mask!2608) (select (arr!47025 a!2831) j!81) a!2831 mask!2608) lt!630194))))

(assert (=> b!1431570 (= lt!630194 (Intermediate!11326 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!965538 () Bool)

(assert (=> start!123554 (=> (not res!965538) (not e!808245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123554 (= res!965538 (validMask!0 mask!2608))))

(assert (=> start!123554 e!808245))

(assert (=> start!123554 true))

(declare-fun array_inv!35970 (array!97444) Bool)

(assert (=> start!123554 (array_inv!35970 a!2831)))

(declare-fun b!1431571 () Bool)

(declare-fun res!965543 () Bool)

(assert (=> b!1431571 (=> (not res!965543) (not e!808245))))

(assert (=> b!1431571 (= res!965543 (and (= (size!47576 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47576 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47576 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431572 () Bool)

(assert (=> b!1431572 (= e!808244 (not e!808243))))

(declare-fun res!965537 () Bool)

(assert (=> b!1431572 (=> res!965537 e!808243)))

(assert (=> b!1431572 (= res!965537 (or (= (select (arr!47025 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47025 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47025 a!2831) index!585) (select (arr!47025 a!2831) j!81)) (= (select (store (arr!47025 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1431572 e!808242))

(declare-fun res!965547 () Bool)

(assert (=> b!1431572 (=> (not res!965547) (not e!808242))))

(assert (=> b!1431572 (= res!965547 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48346 0))(
  ( (Unit!48347) )
))
(declare-fun lt!630193 () Unit!48346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97444 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48346)

(assert (=> b!1431572 (= lt!630193 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431573 () Bool)

(declare-fun res!965545 () Bool)

(assert (=> b!1431573 (=> (not res!965545) (not e!808245))))

(assert (=> b!1431573 (= res!965545 (validKeyInArray!0 (select (arr!47025 a!2831) i!982)))))

(declare-fun b!1431574 () Bool)

(declare-fun res!965534 () Bool)

(assert (=> b!1431574 (=> (not res!965534) (not e!808244))))

(assert (=> b!1431574 (= res!965534 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47025 a!2831) j!81) a!2831 mask!2608) lt!630194))))

(assert (= (and start!123554 res!965538) b!1431571))

(assert (= (and b!1431571 res!965543) b!1431573))

(assert (= (and b!1431573 res!965545) b!1431569))

(assert (= (and b!1431569 res!965546) b!1431568))

(assert (= (and b!1431568 res!965536) b!1431561))

(assert (= (and b!1431561 res!965544) b!1431567))

(assert (= (and b!1431567 res!965540) b!1431570))

(assert (= (and b!1431570 res!965541) b!1431566))

(assert (= (and b!1431566 res!965542) b!1431574))

(assert (= (and b!1431574 res!965534) b!1431565))

(assert (= (and b!1431565 res!965535) b!1431562))

(assert (= (and b!1431562 res!965539) b!1431572))

(assert (= (and b!1431572 res!965547) b!1431563))

(assert (= (and b!1431572 (not res!965537)) b!1431564))

(declare-fun m!1321389 () Bool)

(assert (=> b!1431573 m!1321389))

(assert (=> b!1431573 m!1321389))

(declare-fun m!1321391 () Bool)

(assert (=> b!1431573 m!1321391))

(declare-fun m!1321393 () Bool)

(assert (=> start!123554 m!1321393))

(declare-fun m!1321395 () Bool)

(assert (=> start!123554 m!1321395))

(declare-fun m!1321397 () Bool)

(assert (=> b!1431570 m!1321397))

(assert (=> b!1431570 m!1321397))

(declare-fun m!1321399 () Bool)

(assert (=> b!1431570 m!1321399))

(assert (=> b!1431570 m!1321399))

(assert (=> b!1431570 m!1321397))

(declare-fun m!1321401 () Bool)

(assert (=> b!1431570 m!1321401))

(declare-fun m!1321403 () Bool)

(assert (=> b!1431564 m!1321403))

(assert (=> b!1431563 m!1321397))

(assert (=> b!1431563 m!1321397))

(declare-fun m!1321405 () Bool)

(assert (=> b!1431563 m!1321405))

(declare-fun m!1321407 () Bool)

(assert (=> b!1431572 m!1321407))

(declare-fun m!1321409 () Bool)

(assert (=> b!1431572 m!1321409))

(declare-fun m!1321411 () Bool)

(assert (=> b!1431572 m!1321411))

(declare-fun m!1321413 () Bool)

(assert (=> b!1431572 m!1321413))

(assert (=> b!1431572 m!1321397))

(declare-fun m!1321415 () Bool)

(assert (=> b!1431572 m!1321415))

(declare-fun m!1321417 () Bool)

(assert (=> b!1431566 m!1321417))

(assert (=> b!1431566 m!1321417))

(declare-fun m!1321419 () Bool)

(assert (=> b!1431566 m!1321419))

(assert (=> b!1431566 m!1321407))

(declare-fun m!1321421 () Bool)

(assert (=> b!1431566 m!1321421))

(declare-fun m!1321423 () Bool)

(assert (=> b!1431561 m!1321423))

(declare-fun m!1321425 () Bool)

(assert (=> b!1431568 m!1321425))

(declare-fun m!1321427 () Bool)

(assert (=> b!1431565 m!1321427))

(assert (=> b!1431569 m!1321397))

(assert (=> b!1431569 m!1321397))

(declare-fun m!1321429 () Bool)

(assert (=> b!1431569 m!1321429))

(assert (=> b!1431574 m!1321397))

(assert (=> b!1431574 m!1321397))

(declare-fun m!1321431 () Bool)

(assert (=> b!1431574 m!1321431))

(push 1)

