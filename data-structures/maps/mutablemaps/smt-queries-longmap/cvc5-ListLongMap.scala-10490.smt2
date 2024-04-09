; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123556 () Bool)

(assert start!123556)

(declare-fun b!1431603 () Bool)

(declare-fun res!965582 () Bool)

(declare-fun e!808265 () Bool)

(assert (=> b!1431603 (=> (not res!965582) (not e!808265))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97446 0))(
  ( (array!97447 (arr!47026 (Array (_ BitVec 32) (_ BitVec 64))) (size!47577 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97446)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1431603 (= res!965582 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47577 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47577 a!2831))))))

(declare-fun res!965584 () Bool)

(assert (=> start!123556 (=> (not res!965584) (not e!808265))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123556 (= res!965584 (validMask!0 mask!2608))))

(assert (=> start!123556 e!808265))

(assert (=> start!123556 true))

(declare-fun array_inv!35971 (array!97446) Bool)

(assert (=> start!123556 (array_inv!35971 a!2831)))

(declare-fun e!808261 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1431604 () Bool)

(declare-datatypes ((SeekEntryResult!11327 0))(
  ( (MissingZero!11327 (index!47699 (_ BitVec 32))) (Found!11327 (index!47700 (_ BitVec 32))) (Intermediate!11327 (undefined!12139 Bool) (index!47701 (_ BitVec 32)) (x!129356 (_ BitVec 32))) (Undefined!11327) (MissingVacant!11327 (index!47702 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97446 (_ BitVec 32)) SeekEntryResult!11327)

(assert (=> b!1431604 (= e!808261 (= (seekEntryOrOpen!0 (select (arr!47026 a!2831) j!81) a!2831 mask!2608) (Found!11327 j!81)))))

(declare-fun b!1431605 () Bool)

(declare-fun res!965581 () Bool)

(assert (=> b!1431605 (=> (not res!965581) (not e!808265))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431605 (= res!965581 (validKeyInArray!0 (select (arr!47026 a!2831) i!982)))))

(declare-fun b!1431606 () Bool)

(declare-fun res!965587 () Bool)

(assert (=> b!1431606 (=> (not res!965587) (not e!808265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97446 (_ BitVec 32)) Bool)

(assert (=> b!1431606 (= res!965587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431607 () Bool)

(declare-fun res!965588 () Bool)

(assert (=> b!1431607 (=> (not res!965588) (not e!808265))))

(assert (=> b!1431607 (= res!965588 (validKeyInArray!0 (select (arr!47026 a!2831) j!81)))))

(declare-fun b!1431608 () Bool)

(declare-fun e!808260 () Bool)

(assert (=> b!1431608 (= e!808260 true)))

(declare-fun lt!630209 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431608 (= lt!630209 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431609 () Bool)

(declare-fun e!808263 () Bool)

(declare-fun e!808264 () Bool)

(assert (=> b!1431609 (= e!808263 e!808264)))

(declare-fun res!965583 () Bool)

(assert (=> b!1431609 (=> (not res!965583) (not e!808264))))

(declare-fun lt!630210 () (_ BitVec 64))

(declare-fun lt!630212 () array!97446)

(declare-fun lt!630214 () SeekEntryResult!11327)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97446 (_ BitVec 32)) SeekEntryResult!11327)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431609 (= res!965583 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630210 mask!2608) lt!630210 lt!630212 mask!2608) lt!630214))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431609 (= lt!630214 (Intermediate!11327 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431609 (= lt!630210 (select (store (arr!47026 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431609 (= lt!630212 (array!97447 (store (arr!47026 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47577 a!2831)))))

(declare-fun b!1431610 () Bool)

(declare-fun res!965586 () Bool)

(assert (=> b!1431610 (=> (not res!965586) (not e!808264))))

(declare-fun lt!630213 () SeekEntryResult!11327)

(assert (=> b!1431610 (= res!965586 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47026 a!2831) j!81) a!2831 mask!2608) lt!630213))))

(declare-fun b!1431611 () Bool)

(assert (=> b!1431611 (= e!808264 (not e!808260))))

(declare-fun res!965589 () Bool)

(assert (=> b!1431611 (=> res!965589 e!808260)))

(assert (=> b!1431611 (= res!965589 (or (= (select (arr!47026 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47026 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47026 a!2831) index!585) (select (arr!47026 a!2831) j!81)) (= (select (store (arr!47026 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1431611 e!808261))

(declare-fun res!965585 () Bool)

(assert (=> b!1431611 (=> (not res!965585) (not e!808261))))

(assert (=> b!1431611 (= res!965585 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48348 0))(
  ( (Unit!48349) )
))
(declare-fun lt!630211 () Unit!48348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48348)

(assert (=> b!1431611 (= lt!630211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431612 () Bool)

(declare-fun res!965580 () Bool)

(assert (=> b!1431612 (=> (not res!965580) (not e!808265))))

(assert (=> b!1431612 (= res!965580 (and (= (size!47577 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47577 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47577 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431613 () Bool)

(declare-fun res!965578 () Bool)

(assert (=> b!1431613 (=> (not res!965578) (not e!808264))))

(assert (=> b!1431613 (= res!965578 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630210 lt!630212 mask!2608) lt!630214))))

(declare-fun b!1431614 () Bool)

(declare-fun res!965577 () Bool)

(assert (=> b!1431614 (=> (not res!965577) (not e!808265))))

(declare-datatypes ((List!33716 0))(
  ( (Nil!33713) (Cons!33712 (h!35035 (_ BitVec 64)) (t!48417 List!33716)) )
))
(declare-fun arrayNoDuplicates!0 (array!97446 (_ BitVec 32) List!33716) Bool)

(assert (=> b!1431614 (= res!965577 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33713))))

(declare-fun b!1431615 () Bool)

(declare-fun res!965579 () Bool)

(assert (=> b!1431615 (=> (not res!965579) (not e!808264))))

(assert (=> b!1431615 (= res!965579 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431616 () Bool)

(assert (=> b!1431616 (= e!808265 e!808263)))

(declare-fun res!965576 () Bool)

(assert (=> b!1431616 (=> (not res!965576) (not e!808263))))

(assert (=> b!1431616 (= res!965576 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47026 a!2831) j!81) mask!2608) (select (arr!47026 a!2831) j!81) a!2831 mask!2608) lt!630213))))

(assert (=> b!1431616 (= lt!630213 (Intermediate!11327 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123556 res!965584) b!1431612))

(assert (= (and b!1431612 res!965580) b!1431605))

(assert (= (and b!1431605 res!965581) b!1431607))

(assert (= (and b!1431607 res!965588) b!1431606))

(assert (= (and b!1431606 res!965587) b!1431614))

(assert (= (and b!1431614 res!965577) b!1431603))

(assert (= (and b!1431603 res!965582) b!1431616))

(assert (= (and b!1431616 res!965576) b!1431609))

(assert (= (and b!1431609 res!965583) b!1431610))

(assert (= (and b!1431610 res!965586) b!1431613))

(assert (= (and b!1431613 res!965578) b!1431615))

(assert (= (and b!1431615 res!965579) b!1431611))

(assert (= (and b!1431611 res!965585) b!1431604))

(assert (= (and b!1431611 (not res!965589)) b!1431608))

(declare-fun m!1321433 () Bool)

(assert (=> b!1431608 m!1321433))

(declare-fun m!1321435 () Bool)

(assert (=> start!123556 m!1321435))

(declare-fun m!1321437 () Bool)

(assert (=> start!123556 m!1321437))

(declare-fun m!1321439 () Bool)

(assert (=> b!1431616 m!1321439))

(assert (=> b!1431616 m!1321439))

(declare-fun m!1321441 () Bool)

(assert (=> b!1431616 m!1321441))

(assert (=> b!1431616 m!1321441))

(assert (=> b!1431616 m!1321439))

(declare-fun m!1321443 () Bool)

(assert (=> b!1431616 m!1321443))

(declare-fun m!1321445 () Bool)

(assert (=> b!1431605 m!1321445))

(assert (=> b!1431605 m!1321445))

(declare-fun m!1321447 () Bool)

(assert (=> b!1431605 m!1321447))

(declare-fun m!1321449 () Bool)

(assert (=> b!1431611 m!1321449))

(declare-fun m!1321451 () Bool)

(assert (=> b!1431611 m!1321451))

(declare-fun m!1321453 () Bool)

(assert (=> b!1431611 m!1321453))

(declare-fun m!1321455 () Bool)

(assert (=> b!1431611 m!1321455))

(assert (=> b!1431611 m!1321439))

(declare-fun m!1321457 () Bool)

(assert (=> b!1431611 m!1321457))

(assert (=> b!1431610 m!1321439))

(assert (=> b!1431610 m!1321439))

(declare-fun m!1321459 () Bool)

(assert (=> b!1431610 m!1321459))

(assert (=> b!1431604 m!1321439))

(assert (=> b!1431604 m!1321439))

(declare-fun m!1321461 () Bool)

(assert (=> b!1431604 m!1321461))

(declare-fun m!1321463 () Bool)

(assert (=> b!1431609 m!1321463))

(assert (=> b!1431609 m!1321463))

(declare-fun m!1321465 () Bool)

(assert (=> b!1431609 m!1321465))

(assert (=> b!1431609 m!1321449))

(declare-fun m!1321467 () Bool)

(assert (=> b!1431609 m!1321467))

(declare-fun m!1321469 () Bool)

(assert (=> b!1431606 m!1321469))

(declare-fun m!1321471 () Bool)

(assert (=> b!1431613 m!1321471))

(assert (=> b!1431607 m!1321439))

(assert (=> b!1431607 m!1321439))

(declare-fun m!1321473 () Bool)

(assert (=> b!1431607 m!1321473))

(declare-fun m!1321475 () Bool)

(assert (=> b!1431614 m!1321475))

(push 1)

