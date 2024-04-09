; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123318 () Bool)

(assert start!123318)

(declare-fun res!964347 () Bool)

(declare-fun e!807214 () Bool)

(assert (=> start!123318 (=> (not res!964347) (not e!807214))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123318 (= res!964347 (validMask!0 mask!2608))))

(assert (=> start!123318 e!807214))

(assert (=> start!123318 true))

(declare-datatypes ((array!97397 0))(
  ( (array!97398 (arr!47006 (Array (_ BitVec 32) (_ BitVec 64))) (size!47557 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97397)

(declare-fun array_inv!35951 (array!97397) Bool)

(assert (=> start!123318 (array_inv!35951 a!2831)))

(declare-fun b!1429597 () Bool)

(declare-fun res!964344 () Bool)

(assert (=> b!1429597 (=> (not res!964344) (not e!807214))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429597 (= res!964344 (validKeyInArray!0 (select (arr!47006 a!2831) i!982)))))

(declare-fun e!807215 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1429598 () Bool)

(declare-datatypes ((SeekEntryResult!11307 0))(
  ( (MissingZero!11307 (index!47619 (_ BitVec 32))) (Found!11307 (index!47620 (_ BitVec 32))) (Intermediate!11307 (undefined!12119 Bool) (index!47621 (_ BitVec 32)) (x!129256 (_ BitVec 32))) (Undefined!11307) (MissingVacant!11307 (index!47622 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97397 (_ BitVec 32)) SeekEntryResult!11307)

(assert (=> b!1429598 (= e!807215 (= (seekEntryOrOpen!0 (select (arr!47006 a!2831) j!81) a!2831 mask!2608) (Found!11307 j!81)))))

(declare-fun b!1429599 () Bool)

(declare-fun res!964339 () Bool)

(declare-fun e!807216 () Bool)

(assert (=> b!1429599 (=> (not res!964339) (not e!807216))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429599 (= res!964339 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429600 () Bool)

(assert (=> b!1429600 (= e!807216 (not true))))

(assert (=> b!1429600 e!807215))

(declare-fun res!964346 () Bool)

(assert (=> b!1429600 (=> (not res!964346) (not e!807215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97397 (_ BitVec 32)) Bool)

(assert (=> b!1429600 (= res!964346 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48308 0))(
  ( (Unit!48309) )
))
(declare-fun lt!629398 () Unit!48308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48308)

(assert (=> b!1429600 (= lt!629398 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429601 () Bool)

(declare-fun e!807218 () Bool)

(assert (=> b!1429601 (= e!807214 e!807218)))

(declare-fun res!964341 () Bool)

(assert (=> b!1429601 (=> (not res!964341) (not e!807218))))

(declare-fun lt!629397 () SeekEntryResult!11307)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97397 (_ BitVec 32)) SeekEntryResult!11307)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429601 (= res!964341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47006 a!2831) j!81) mask!2608) (select (arr!47006 a!2831) j!81) a!2831 mask!2608) lt!629397))))

(assert (=> b!1429601 (= lt!629397 (Intermediate!11307 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429602 () Bool)

(declare-fun res!964342 () Bool)

(assert (=> b!1429602 (=> (not res!964342) (not e!807214))))

(declare-datatypes ((List!33696 0))(
  ( (Nil!33693) (Cons!33692 (h!35006 (_ BitVec 64)) (t!48397 List!33696)) )
))
(declare-fun arrayNoDuplicates!0 (array!97397 (_ BitVec 32) List!33696) Bool)

(assert (=> b!1429602 (= res!964342 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33693))))

(declare-fun b!1429603 () Bool)

(declare-fun res!964345 () Bool)

(assert (=> b!1429603 (=> (not res!964345) (not e!807214))))

(assert (=> b!1429603 (= res!964345 (and (= (size!47557 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47557 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47557 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429604 () Bool)

(declare-fun res!964336 () Bool)

(assert (=> b!1429604 (=> (not res!964336) (not e!807216))))

(declare-fun lt!629399 () SeekEntryResult!11307)

(declare-fun lt!629401 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!629400 () array!97397)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429604 (= res!964336 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629401 lt!629400 mask!2608) lt!629399))))

(declare-fun b!1429605 () Bool)

(declare-fun res!964338 () Bool)

(assert (=> b!1429605 (=> (not res!964338) (not e!807214))))

(assert (=> b!1429605 (= res!964338 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47557 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47557 a!2831))))))

(declare-fun b!1429606 () Bool)

(declare-fun res!964343 () Bool)

(assert (=> b!1429606 (=> (not res!964343) (not e!807216))))

(assert (=> b!1429606 (= res!964343 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47006 a!2831) j!81) a!2831 mask!2608) lt!629397))))

(declare-fun b!1429607 () Bool)

(declare-fun res!964335 () Bool)

(assert (=> b!1429607 (=> (not res!964335) (not e!807214))))

(assert (=> b!1429607 (= res!964335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429608 () Bool)

(declare-fun res!964340 () Bool)

(assert (=> b!1429608 (=> (not res!964340) (not e!807214))))

(assert (=> b!1429608 (= res!964340 (validKeyInArray!0 (select (arr!47006 a!2831) j!81)))))

(declare-fun b!1429609 () Bool)

(assert (=> b!1429609 (= e!807218 e!807216)))

(declare-fun res!964337 () Bool)

(assert (=> b!1429609 (=> (not res!964337) (not e!807216))))

(assert (=> b!1429609 (= res!964337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629401 mask!2608) lt!629401 lt!629400 mask!2608) lt!629399))))

(assert (=> b!1429609 (= lt!629399 (Intermediate!11307 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429609 (= lt!629401 (select (store (arr!47006 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429609 (= lt!629400 (array!97398 (store (arr!47006 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47557 a!2831)))))

(assert (= (and start!123318 res!964347) b!1429603))

(assert (= (and b!1429603 res!964345) b!1429597))

(assert (= (and b!1429597 res!964344) b!1429608))

(assert (= (and b!1429608 res!964340) b!1429607))

(assert (= (and b!1429607 res!964335) b!1429602))

(assert (= (and b!1429602 res!964342) b!1429605))

(assert (= (and b!1429605 res!964338) b!1429601))

(assert (= (and b!1429601 res!964341) b!1429609))

(assert (= (and b!1429609 res!964337) b!1429606))

(assert (= (and b!1429606 res!964343) b!1429604))

(assert (= (and b!1429604 res!964336) b!1429599))

(assert (= (and b!1429599 res!964339) b!1429600))

(assert (= (and b!1429600 res!964346) b!1429598))

(declare-fun m!1319749 () Bool)

(assert (=> b!1429601 m!1319749))

(assert (=> b!1429601 m!1319749))

(declare-fun m!1319751 () Bool)

(assert (=> b!1429601 m!1319751))

(assert (=> b!1429601 m!1319751))

(assert (=> b!1429601 m!1319749))

(declare-fun m!1319753 () Bool)

(assert (=> b!1429601 m!1319753))

(declare-fun m!1319755 () Bool)

(assert (=> b!1429597 m!1319755))

(assert (=> b!1429597 m!1319755))

(declare-fun m!1319757 () Bool)

(assert (=> b!1429597 m!1319757))

(declare-fun m!1319759 () Bool)

(assert (=> b!1429604 m!1319759))

(assert (=> b!1429608 m!1319749))

(assert (=> b!1429608 m!1319749))

(declare-fun m!1319761 () Bool)

(assert (=> b!1429608 m!1319761))

(declare-fun m!1319763 () Bool)

(assert (=> start!123318 m!1319763))

(declare-fun m!1319765 () Bool)

(assert (=> start!123318 m!1319765))

(declare-fun m!1319767 () Bool)

(assert (=> b!1429609 m!1319767))

(assert (=> b!1429609 m!1319767))

(declare-fun m!1319769 () Bool)

(assert (=> b!1429609 m!1319769))

(declare-fun m!1319771 () Bool)

(assert (=> b!1429609 m!1319771))

(declare-fun m!1319773 () Bool)

(assert (=> b!1429609 m!1319773))

(assert (=> b!1429598 m!1319749))

(assert (=> b!1429598 m!1319749))

(declare-fun m!1319775 () Bool)

(assert (=> b!1429598 m!1319775))

(declare-fun m!1319777 () Bool)

(assert (=> b!1429602 m!1319777))

(declare-fun m!1319779 () Bool)

(assert (=> b!1429607 m!1319779))

(declare-fun m!1319781 () Bool)

(assert (=> b!1429600 m!1319781))

(declare-fun m!1319783 () Bool)

(assert (=> b!1429600 m!1319783))

(assert (=> b!1429606 m!1319749))

(assert (=> b!1429606 m!1319749))

(declare-fun m!1319785 () Bool)

(assert (=> b!1429606 m!1319785))

(check-sat (not b!1429601) (not b!1429607) (not b!1429600) (not b!1429597) (not b!1429598) (not b!1429604) (not start!123318) (not b!1429606) (not b!1429602) (not b!1429608) (not b!1429609))
(check-sat)
