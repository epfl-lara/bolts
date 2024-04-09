; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123312 () Bool)

(assert start!123312)

(declare-fun b!1429480 () Bool)

(declare-fun res!964219 () Bool)

(declare-fun e!807170 () Bool)

(assert (=> b!1429480 (=> (not res!964219) (not e!807170))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429480 (= res!964219 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429481 () Bool)

(declare-fun res!964229 () Bool)

(declare-fun e!807171 () Bool)

(assert (=> b!1429481 (=> (not res!964229) (not e!807171))))

(declare-datatypes ((array!97391 0))(
  ( (array!97392 (arr!47003 (Array (_ BitVec 32) (_ BitVec 64))) (size!47554 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97391)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97391 (_ BitVec 32)) Bool)

(assert (=> b!1429481 (= res!964229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429483 () Bool)

(declare-fun res!964230 () Bool)

(assert (=> b!1429483 (=> (not res!964230) (not e!807171))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429483 (= res!964230 (validKeyInArray!0 (select (arr!47003 a!2831) i!982)))))

(declare-fun b!1429484 () Bool)

(declare-fun res!964220 () Bool)

(assert (=> b!1429484 (=> (not res!964220) (not e!807171))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1429484 (= res!964220 (and (= (size!47554 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47554 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47554 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429485 () Bool)

(declare-fun e!807173 () Bool)

(assert (=> b!1429485 (= e!807171 e!807173)))

(declare-fun res!964225 () Bool)

(assert (=> b!1429485 (=> (not res!964225) (not e!807173))))

(declare-datatypes ((SeekEntryResult!11304 0))(
  ( (MissingZero!11304 (index!47607 (_ BitVec 32))) (Found!11304 (index!47608 (_ BitVec 32))) (Intermediate!11304 (undefined!12116 Bool) (index!47609 (_ BitVec 32)) (x!129245 (_ BitVec 32))) (Undefined!11304) (MissingVacant!11304 (index!47610 (_ BitVec 32))) )
))
(declare-fun lt!629354 () SeekEntryResult!11304)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97391 (_ BitVec 32)) SeekEntryResult!11304)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429485 (= res!964225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47003 a!2831) j!81) mask!2608) (select (arr!47003 a!2831) j!81) a!2831 mask!2608) lt!629354))))

(assert (=> b!1429485 (= lt!629354 (Intermediate!11304 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429486 () Bool)

(declare-fun res!964223 () Bool)

(assert (=> b!1429486 (=> (not res!964223) (not e!807171))))

(declare-datatypes ((List!33693 0))(
  ( (Nil!33690) (Cons!33689 (h!35003 (_ BitVec 64)) (t!48394 List!33693)) )
))
(declare-fun arrayNoDuplicates!0 (array!97391 (_ BitVec 32) List!33693) Bool)

(assert (=> b!1429486 (= res!964223 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33690))))

(declare-fun b!1429487 () Bool)

(declare-fun res!964222 () Bool)

(assert (=> b!1429487 (=> (not res!964222) (not e!807171))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429487 (= res!964222 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47554 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47554 a!2831))))))

(declare-fun b!1429488 () Bool)

(declare-fun res!964221 () Bool)

(assert (=> b!1429488 (=> (not res!964221) (not e!807171))))

(assert (=> b!1429488 (= res!964221 (validKeyInArray!0 (select (arr!47003 a!2831) j!81)))))

(declare-fun b!1429489 () Bool)

(assert (=> b!1429489 (= e!807170 (not true))))

(declare-fun e!807172 () Bool)

(assert (=> b!1429489 e!807172))

(declare-fun res!964224 () Bool)

(assert (=> b!1429489 (=> (not res!964224) (not e!807172))))

(assert (=> b!1429489 (= res!964224 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48302 0))(
  ( (Unit!48303) )
))
(declare-fun lt!629352 () Unit!48302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48302)

(assert (=> b!1429489 (= lt!629352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429490 () Bool)

(assert (=> b!1429490 (= e!807173 e!807170)))

(declare-fun res!964227 () Bool)

(assert (=> b!1429490 (=> (not res!964227) (not e!807170))))

(declare-fun lt!629355 () SeekEntryResult!11304)

(declare-fun lt!629353 () array!97391)

(declare-fun lt!629356 () (_ BitVec 64))

(assert (=> b!1429490 (= res!964227 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629356 mask!2608) lt!629356 lt!629353 mask!2608) lt!629355))))

(assert (=> b!1429490 (= lt!629355 (Intermediate!11304 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429490 (= lt!629356 (select (store (arr!47003 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429490 (= lt!629353 (array!97392 (store (arr!47003 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47554 a!2831)))))

(declare-fun res!964226 () Bool)

(assert (=> start!123312 (=> (not res!964226) (not e!807171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123312 (= res!964226 (validMask!0 mask!2608))))

(assert (=> start!123312 e!807171))

(assert (=> start!123312 true))

(declare-fun array_inv!35948 (array!97391) Bool)

(assert (=> start!123312 (array_inv!35948 a!2831)))

(declare-fun b!1429482 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97391 (_ BitVec 32)) SeekEntryResult!11304)

(assert (=> b!1429482 (= e!807172 (= (seekEntryOrOpen!0 (select (arr!47003 a!2831) j!81) a!2831 mask!2608) (Found!11304 j!81)))))

(declare-fun b!1429491 () Bool)

(declare-fun res!964218 () Bool)

(assert (=> b!1429491 (=> (not res!964218) (not e!807170))))

(assert (=> b!1429491 (= res!964218 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629356 lt!629353 mask!2608) lt!629355))))

(declare-fun b!1429492 () Bool)

(declare-fun res!964228 () Bool)

(assert (=> b!1429492 (=> (not res!964228) (not e!807170))))

(assert (=> b!1429492 (= res!964228 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47003 a!2831) j!81) a!2831 mask!2608) lt!629354))))

(assert (= (and start!123312 res!964226) b!1429484))

(assert (= (and b!1429484 res!964220) b!1429483))

(assert (= (and b!1429483 res!964230) b!1429488))

(assert (= (and b!1429488 res!964221) b!1429481))

(assert (= (and b!1429481 res!964229) b!1429486))

(assert (= (and b!1429486 res!964223) b!1429487))

(assert (= (and b!1429487 res!964222) b!1429485))

(assert (= (and b!1429485 res!964225) b!1429490))

(assert (= (and b!1429490 res!964227) b!1429492))

(assert (= (and b!1429492 res!964228) b!1429491))

(assert (= (and b!1429491 res!964218) b!1429480))

(assert (= (and b!1429480 res!964219) b!1429489))

(assert (= (and b!1429489 res!964224) b!1429482))

(declare-fun m!1319635 () Bool)

(assert (=> b!1429490 m!1319635))

(assert (=> b!1429490 m!1319635))

(declare-fun m!1319637 () Bool)

(assert (=> b!1429490 m!1319637))

(declare-fun m!1319639 () Bool)

(assert (=> b!1429490 m!1319639))

(declare-fun m!1319641 () Bool)

(assert (=> b!1429490 m!1319641))

(declare-fun m!1319643 () Bool)

(assert (=> b!1429485 m!1319643))

(assert (=> b!1429485 m!1319643))

(declare-fun m!1319645 () Bool)

(assert (=> b!1429485 m!1319645))

(assert (=> b!1429485 m!1319645))

(assert (=> b!1429485 m!1319643))

(declare-fun m!1319647 () Bool)

(assert (=> b!1429485 m!1319647))

(assert (=> b!1429488 m!1319643))

(assert (=> b!1429488 m!1319643))

(declare-fun m!1319649 () Bool)

(assert (=> b!1429488 m!1319649))

(assert (=> b!1429492 m!1319643))

(assert (=> b!1429492 m!1319643))

(declare-fun m!1319651 () Bool)

(assert (=> b!1429492 m!1319651))

(declare-fun m!1319653 () Bool)

(assert (=> start!123312 m!1319653))

(declare-fun m!1319655 () Bool)

(assert (=> start!123312 m!1319655))

(declare-fun m!1319657 () Bool)

(assert (=> b!1429491 m!1319657))

(declare-fun m!1319659 () Bool)

(assert (=> b!1429486 m!1319659))

(assert (=> b!1429482 m!1319643))

(assert (=> b!1429482 m!1319643))

(declare-fun m!1319661 () Bool)

(assert (=> b!1429482 m!1319661))

(declare-fun m!1319663 () Bool)

(assert (=> b!1429483 m!1319663))

(assert (=> b!1429483 m!1319663))

(declare-fun m!1319665 () Bool)

(assert (=> b!1429483 m!1319665))

(declare-fun m!1319667 () Bool)

(assert (=> b!1429489 m!1319667))

(declare-fun m!1319669 () Bool)

(assert (=> b!1429489 m!1319669))

(declare-fun m!1319671 () Bool)

(assert (=> b!1429481 m!1319671))

(check-sat (not b!1429492) (not start!123312) (not b!1429490) (not b!1429481) (not b!1429482) (not b!1429485) (not b!1429491) (not b!1429483) (not b!1429489) (not b!1429488) (not b!1429486))
(check-sat)
