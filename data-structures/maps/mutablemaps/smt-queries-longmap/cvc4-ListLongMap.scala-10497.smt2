; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123602 () Bool)

(assert start!123602)

(declare-fun b!1432569 () Bool)

(declare-fun res!966553 () Bool)

(declare-fun e!808678 () Bool)

(assert (=> b!1432569 (=> (not res!966553) (not e!808678))))

(declare-datatypes ((array!97492 0))(
  ( (array!97493 (arr!47049 (Array (_ BitVec 32) (_ BitVec 64))) (size!47600 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97492)

(declare-datatypes ((List!33739 0))(
  ( (Nil!33736) (Cons!33735 (h!35058 (_ BitVec 64)) (t!48440 List!33739)) )
))
(declare-fun arrayNoDuplicates!0 (array!97492 (_ BitVec 32) List!33739) Bool)

(assert (=> b!1432569 (= res!966553 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33736))))

(declare-fun b!1432570 () Bool)

(declare-fun res!966548 () Bool)

(assert (=> b!1432570 (=> (not res!966548) (not e!808678))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432570 (= res!966548 (and (= (size!47600 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47600 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47600 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432571 () Bool)

(declare-fun res!966554 () Bool)

(declare-fun e!808675 () Bool)

(assert (=> b!1432571 (=> (not res!966554) (not e!808675))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630626 () array!97492)

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11350 0))(
  ( (MissingZero!11350 (index!47791 (_ BitVec 32))) (Found!11350 (index!47792 (_ BitVec 32))) (Intermediate!11350 (undefined!12162 Bool) (index!47793 (_ BitVec 32)) (x!129435 (_ BitVec 32))) (Undefined!11350) (MissingVacant!11350 (index!47794 (_ BitVec 32))) )
))
(declare-fun lt!630624 () SeekEntryResult!11350)

(declare-fun lt!630625 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97492 (_ BitVec 32)) SeekEntryResult!11350)

(assert (=> b!1432571 (= res!966554 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630625 lt!630626 mask!2608) lt!630624))))

(declare-fun b!1432572 () Bool)

(declare-fun res!966552 () Bool)

(assert (=> b!1432572 (=> (not res!966552) (not e!808678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432572 (= res!966552 (validKeyInArray!0 (select (arr!47049 a!2831) i!982)))))

(declare-fun b!1432573 () Bool)

(declare-fun e!808677 () Bool)

(assert (=> b!1432573 (= e!808677 e!808675)))

(declare-fun res!966546 () Bool)

(assert (=> b!1432573 (=> (not res!966546) (not e!808675))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432573 (= res!966546 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630625 mask!2608) lt!630625 lt!630626 mask!2608) lt!630624))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432573 (= lt!630624 (Intermediate!11350 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432573 (= lt!630625 (select (store (arr!47049 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432573 (= lt!630626 (array!97493 (store (arr!47049 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47600 a!2831)))))

(declare-fun b!1432574 () Bool)

(declare-fun e!808674 () Bool)

(assert (=> b!1432574 (= e!808674 true)))

(declare-fun lt!630628 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432574 (= lt!630628 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432576 () Bool)

(assert (=> b!1432576 (= e!808675 (not e!808674))))

(declare-fun res!966549 () Bool)

(assert (=> b!1432576 (=> res!966549 e!808674)))

(assert (=> b!1432576 (= res!966549 (or (= (select (arr!47049 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47049 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47049 a!2831) index!585) (select (arr!47049 a!2831) j!81)) (= (select (store (arr!47049 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808676 () Bool)

(assert (=> b!1432576 e!808676))

(declare-fun res!966551 () Bool)

(assert (=> b!1432576 (=> (not res!966551) (not e!808676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97492 (_ BitVec 32)) Bool)

(assert (=> b!1432576 (= res!966551 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48394 0))(
  ( (Unit!48395) )
))
(declare-fun lt!630623 () Unit!48394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48394)

(assert (=> b!1432576 (= lt!630623 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432577 () Bool)

(declare-fun res!966542 () Bool)

(assert (=> b!1432577 (=> (not res!966542) (not e!808675))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432577 (= res!966542 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432578 () Bool)

(declare-fun res!966547 () Bool)

(assert (=> b!1432578 (=> (not res!966547) (not e!808678))))

(assert (=> b!1432578 (= res!966547 (validKeyInArray!0 (select (arr!47049 a!2831) j!81)))))

(declare-fun b!1432579 () Bool)

(declare-fun res!966544 () Bool)

(assert (=> b!1432579 (=> (not res!966544) (not e!808675))))

(declare-fun lt!630627 () SeekEntryResult!11350)

(assert (=> b!1432579 (= res!966544 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47049 a!2831) j!81) a!2831 mask!2608) lt!630627))))

(declare-fun b!1432580 () Bool)

(assert (=> b!1432580 (= e!808678 e!808677)))

(declare-fun res!966543 () Bool)

(assert (=> b!1432580 (=> (not res!966543) (not e!808677))))

(assert (=> b!1432580 (= res!966543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47049 a!2831) j!81) mask!2608) (select (arr!47049 a!2831) j!81) a!2831 mask!2608) lt!630627))))

(assert (=> b!1432580 (= lt!630627 (Intermediate!11350 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432575 () Bool)

(declare-fun res!966550 () Bool)

(assert (=> b!1432575 (=> (not res!966550) (not e!808678))))

(assert (=> b!1432575 (= res!966550 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47600 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47600 a!2831))))))

(declare-fun res!966545 () Bool)

(assert (=> start!123602 (=> (not res!966545) (not e!808678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123602 (= res!966545 (validMask!0 mask!2608))))

(assert (=> start!123602 e!808678))

(assert (=> start!123602 true))

(declare-fun array_inv!35994 (array!97492) Bool)

(assert (=> start!123602 (array_inv!35994 a!2831)))

(declare-fun b!1432581 () Bool)

(declare-fun res!966555 () Bool)

(assert (=> b!1432581 (=> (not res!966555) (not e!808678))))

(assert (=> b!1432581 (= res!966555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432582 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97492 (_ BitVec 32)) SeekEntryResult!11350)

(assert (=> b!1432582 (= e!808676 (= (seekEntryOrOpen!0 (select (arr!47049 a!2831) j!81) a!2831 mask!2608) (Found!11350 j!81)))))

(assert (= (and start!123602 res!966545) b!1432570))

(assert (= (and b!1432570 res!966548) b!1432572))

(assert (= (and b!1432572 res!966552) b!1432578))

(assert (= (and b!1432578 res!966547) b!1432581))

(assert (= (and b!1432581 res!966555) b!1432569))

(assert (= (and b!1432569 res!966553) b!1432575))

(assert (= (and b!1432575 res!966550) b!1432580))

(assert (= (and b!1432580 res!966543) b!1432573))

(assert (= (and b!1432573 res!966546) b!1432579))

(assert (= (and b!1432579 res!966544) b!1432571))

(assert (= (and b!1432571 res!966554) b!1432577))

(assert (= (and b!1432577 res!966542) b!1432576))

(assert (= (and b!1432576 res!966551) b!1432582))

(assert (= (and b!1432576 (not res!966549)) b!1432574))

(declare-fun m!1322445 () Bool)

(assert (=> b!1432582 m!1322445))

(assert (=> b!1432582 m!1322445))

(declare-fun m!1322447 () Bool)

(assert (=> b!1432582 m!1322447))

(declare-fun m!1322449 () Bool)

(assert (=> b!1432569 m!1322449))

(declare-fun m!1322451 () Bool)

(assert (=> b!1432571 m!1322451))

(declare-fun m!1322453 () Bool)

(assert (=> b!1432576 m!1322453))

(declare-fun m!1322455 () Bool)

(assert (=> b!1432576 m!1322455))

(declare-fun m!1322457 () Bool)

(assert (=> b!1432576 m!1322457))

(declare-fun m!1322459 () Bool)

(assert (=> b!1432576 m!1322459))

(assert (=> b!1432576 m!1322445))

(declare-fun m!1322461 () Bool)

(assert (=> b!1432576 m!1322461))

(declare-fun m!1322463 () Bool)

(assert (=> b!1432573 m!1322463))

(assert (=> b!1432573 m!1322463))

(declare-fun m!1322465 () Bool)

(assert (=> b!1432573 m!1322465))

(assert (=> b!1432573 m!1322453))

(declare-fun m!1322467 () Bool)

(assert (=> b!1432573 m!1322467))

(assert (=> b!1432580 m!1322445))

(assert (=> b!1432580 m!1322445))

(declare-fun m!1322469 () Bool)

(assert (=> b!1432580 m!1322469))

(assert (=> b!1432580 m!1322469))

(assert (=> b!1432580 m!1322445))

(declare-fun m!1322471 () Bool)

(assert (=> b!1432580 m!1322471))

(declare-fun m!1322473 () Bool)

(assert (=> start!123602 m!1322473))

(declare-fun m!1322475 () Bool)

(assert (=> start!123602 m!1322475))

(declare-fun m!1322477 () Bool)

(assert (=> b!1432572 m!1322477))

(assert (=> b!1432572 m!1322477))

(declare-fun m!1322479 () Bool)

(assert (=> b!1432572 m!1322479))

(assert (=> b!1432578 m!1322445))

(assert (=> b!1432578 m!1322445))

(declare-fun m!1322481 () Bool)

(assert (=> b!1432578 m!1322481))

(declare-fun m!1322483 () Bool)

(assert (=> b!1432581 m!1322483))

(assert (=> b!1432579 m!1322445))

(assert (=> b!1432579 m!1322445))

(declare-fun m!1322485 () Bool)

(assert (=> b!1432579 m!1322485))

(declare-fun m!1322487 () Bool)

(assert (=> b!1432574 m!1322487))

(push 1)

