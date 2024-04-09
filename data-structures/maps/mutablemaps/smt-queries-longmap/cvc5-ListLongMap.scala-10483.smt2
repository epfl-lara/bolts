; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123316 () Bool)

(assert start!123316)

(declare-fun b!1429558 () Bool)

(declare-fun res!964307 () Bool)

(declare-fun e!807200 () Bool)

(assert (=> b!1429558 (=> (not res!964307) (not e!807200))))

(declare-datatypes ((array!97395 0))(
  ( (array!97396 (arr!47005 (Array (_ BitVec 32) (_ BitVec 64))) (size!47556 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97395)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429558 (= res!964307 (validKeyInArray!0 (select (arr!47005 a!2831) i!982)))))

(declare-fun b!1429559 () Bool)

(declare-fun res!964301 () Bool)

(assert (=> b!1429559 (=> (not res!964301) (not e!807200))))

(declare-datatypes ((List!33695 0))(
  ( (Nil!33692) (Cons!33691 (h!35005 (_ BitVec 64)) (t!48396 List!33695)) )
))
(declare-fun arrayNoDuplicates!0 (array!97395 (_ BitVec 32) List!33695) Bool)

(assert (=> b!1429559 (= res!964301 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33692))))

(declare-fun res!964306 () Bool)

(assert (=> start!123316 (=> (not res!964306) (not e!807200))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123316 (= res!964306 (validMask!0 mask!2608))))

(assert (=> start!123316 e!807200))

(assert (=> start!123316 true))

(declare-fun array_inv!35950 (array!97395) Bool)

(assert (=> start!123316 (array_inv!35950 a!2831)))

(declare-fun b!1429560 () Bool)

(declare-fun res!964303 () Bool)

(declare-fun e!807202 () Bool)

(assert (=> b!1429560 (=> (not res!964303) (not e!807202))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429560 (= res!964303 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429561 () Bool)

(declare-fun res!964297 () Bool)

(assert (=> b!1429561 (=> (not res!964297) (not e!807200))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429561 (= res!964297 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47556 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47556 a!2831))))))

(declare-fun b!1429562 () Bool)

(declare-fun res!964305 () Bool)

(assert (=> b!1429562 (=> (not res!964305) (not e!807200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97395 (_ BitVec 32)) Bool)

(assert (=> b!1429562 (= res!964305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429563 () Bool)

(assert (=> b!1429563 (= e!807202 (not true))))

(declare-fun e!807203 () Bool)

(assert (=> b!1429563 e!807203))

(declare-fun res!964304 () Bool)

(assert (=> b!1429563 (=> (not res!964304) (not e!807203))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1429563 (= res!964304 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48306 0))(
  ( (Unit!48307) )
))
(declare-fun lt!629384 () Unit!48306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48306)

(assert (=> b!1429563 (= lt!629384 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429564 () Bool)

(declare-fun res!964302 () Bool)

(assert (=> b!1429564 (=> (not res!964302) (not e!807200))))

(assert (=> b!1429564 (= res!964302 (and (= (size!47556 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47556 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47556 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429565 () Bool)

(declare-fun res!964298 () Bool)

(assert (=> b!1429565 (=> (not res!964298) (not e!807202))))

(declare-datatypes ((SeekEntryResult!11306 0))(
  ( (MissingZero!11306 (index!47615 (_ BitVec 32))) (Found!11306 (index!47616 (_ BitVec 32))) (Intermediate!11306 (undefined!12118 Bool) (index!47617 (_ BitVec 32)) (x!129255 (_ BitVec 32))) (Undefined!11306) (MissingVacant!11306 (index!47618 (_ BitVec 32))) )
))
(declare-fun lt!629386 () SeekEntryResult!11306)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97395 (_ BitVec 32)) SeekEntryResult!11306)

(assert (=> b!1429565 (= res!964298 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47005 a!2831) j!81) a!2831 mask!2608) lt!629386))))

(declare-fun b!1429566 () Bool)

(declare-fun e!807201 () Bool)

(assert (=> b!1429566 (= e!807201 e!807202)))

(declare-fun res!964296 () Bool)

(assert (=> b!1429566 (=> (not res!964296) (not e!807202))))

(declare-fun lt!629382 () (_ BitVec 64))

(declare-fun lt!629383 () SeekEntryResult!11306)

(declare-fun lt!629385 () array!97395)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429566 (= res!964296 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629382 mask!2608) lt!629382 lt!629385 mask!2608) lt!629383))))

(assert (=> b!1429566 (= lt!629383 (Intermediate!11306 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429566 (= lt!629382 (select (store (arr!47005 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429566 (= lt!629385 (array!97396 (store (arr!47005 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47556 a!2831)))))

(declare-fun b!1429567 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97395 (_ BitVec 32)) SeekEntryResult!11306)

(assert (=> b!1429567 (= e!807203 (= (seekEntryOrOpen!0 (select (arr!47005 a!2831) j!81) a!2831 mask!2608) (Found!11306 j!81)))))

(declare-fun b!1429568 () Bool)

(declare-fun res!964299 () Bool)

(assert (=> b!1429568 (=> (not res!964299) (not e!807202))))

(assert (=> b!1429568 (= res!964299 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629382 lt!629385 mask!2608) lt!629383))))

(declare-fun b!1429569 () Bool)

(declare-fun res!964300 () Bool)

(assert (=> b!1429569 (=> (not res!964300) (not e!807200))))

(assert (=> b!1429569 (= res!964300 (validKeyInArray!0 (select (arr!47005 a!2831) j!81)))))

(declare-fun b!1429570 () Bool)

(assert (=> b!1429570 (= e!807200 e!807201)))

(declare-fun res!964308 () Bool)

(assert (=> b!1429570 (=> (not res!964308) (not e!807201))))

(assert (=> b!1429570 (= res!964308 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47005 a!2831) j!81) mask!2608) (select (arr!47005 a!2831) j!81) a!2831 mask!2608) lt!629386))))

(assert (=> b!1429570 (= lt!629386 (Intermediate!11306 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123316 res!964306) b!1429564))

(assert (= (and b!1429564 res!964302) b!1429558))

(assert (= (and b!1429558 res!964307) b!1429569))

(assert (= (and b!1429569 res!964300) b!1429562))

(assert (= (and b!1429562 res!964305) b!1429559))

(assert (= (and b!1429559 res!964301) b!1429561))

(assert (= (and b!1429561 res!964297) b!1429570))

(assert (= (and b!1429570 res!964308) b!1429566))

(assert (= (and b!1429566 res!964296) b!1429565))

(assert (= (and b!1429565 res!964298) b!1429568))

(assert (= (and b!1429568 res!964299) b!1429560))

(assert (= (and b!1429560 res!964303) b!1429563))

(assert (= (and b!1429563 res!964304) b!1429567))

(declare-fun m!1319711 () Bool)

(assert (=> start!123316 m!1319711))

(declare-fun m!1319713 () Bool)

(assert (=> start!123316 m!1319713))

(declare-fun m!1319715 () Bool)

(assert (=> b!1429563 m!1319715))

(declare-fun m!1319717 () Bool)

(assert (=> b!1429563 m!1319717))

(declare-fun m!1319719 () Bool)

(assert (=> b!1429568 m!1319719))

(declare-fun m!1319721 () Bool)

(assert (=> b!1429558 m!1319721))

(assert (=> b!1429558 m!1319721))

(declare-fun m!1319723 () Bool)

(assert (=> b!1429558 m!1319723))

(declare-fun m!1319725 () Bool)

(assert (=> b!1429562 m!1319725))

(declare-fun m!1319727 () Bool)

(assert (=> b!1429569 m!1319727))

(assert (=> b!1429569 m!1319727))

(declare-fun m!1319729 () Bool)

(assert (=> b!1429569 m!1319729))

(assert (=> b!1429565 m!1319727))

(assert (=> b!1429565 m!1319727))

(declare-fun m!1319731 () Bool)

(assert (=> b!1429565 m!1319731))

(assert (=> b!1429570 m!1319727))

(assert (=> b!1429570 m!1319727))

(declare-fun m!1319733 () Bool)

(assert (=> b!1429570 m!1319733))

(assert (=> b!1429570 m!1319733))

(assert (=> b!1429570 m!1319727))

(declare-fun m!1319735 () Bool)

(assert (=> b!1429570 m!1319735))

(declare-fun m!1319737 () Bool)

(assert (=> b!1429566 m!1319737))

(assert (=> b!1429566 m!1319737))

(declare-fun m!1319739 () Bool)

(assert (=> b!1429566 m!1319739))

(declare-fun m!1319741 () Bool)

(assert (=> b!1429566 m!1319741))

(declare-fun m!1319743 () Bool)

(assert (=> b!1429566 m!1319743))

(assert (=> b!1429567 m!1319727))

(assert (=> b!1429567 m!1319727))

(declare-fun m!1319745 () Bool)

(assert (=> b!1429567 m!1319745))

(declare-fun m!1319747 () Bool)

(assert (=> b!1429559 m!1319747))

(push 1)

