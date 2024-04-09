; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123314 () Bool)

(assert start!123314)

(declare-fun b!1429520 () Bool)

(declare-fun res!964263 () Bool)

(declare-fun e!807186 () Bool)

(assert (=> b!1429520 (=> (not res!964263) (not e!807186))))

(declare-datatypes ((array!97393 0))(
  ( (array!97394 (arr!47004 (Array (_ BitVec 32) (_ BitVec 64))) (size!47555 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97393)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429520 (= res!964263 (validKeyInArray!0 (select (arr!47004 a!2831) i!982)))))

(declare-fun b!1429521 () Bool)

(declare-fun e!807187 () Bool)

(declare-fun e!807185 () Bool)

(assert (=> b!1429521 (= e!807187 e!807185)))

(declare-fun res!964269 () Bool)

(assert (=> b!1429521 (=> (not res!964269) (not e!807185))))

(declare-fun lt!629368 () array!97393)

(declare-datatypes ((SeekEntryResult!11305 0))(
  ( (MissingZero!11305 (index!47611 (_ BitVec 32))) (Found!11305 (index!47612 (_ BitVec 32))) (Intermediate!11305 (undefined!12117 Bool) (index!47613 (_ BitVec 32)) (x!129246 (_ BitVec 32))) (Undefined!11305) (MissingVacant!11305 (index!47614 (_ BitVec 32))) )
))
(declare-fun lt!629369 () SeekEntryResult!11305)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!629367 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97393 (_ BitVec 32)) SeekEntryResult!11305)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429521 (= res!964269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629367 mask!2608) lt!629367 lt!629368 mask!2608) lt!629369))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1429521 (= lt!629369 (Intermediate!11305 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1429521 (= lt!629367 (select (store (arr!47004 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429521 (= lt!629368 (array!97394 (store (arr!47004 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47555 a!2831)))))

(declare-fun b!1429522 () Bool)

(declare-fun e!807188 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97393 (_ BitVec 32)) SeekEntryResult!11305)

(assert (=> b!1429522 (= e!807188 (= (seekEntryOrOpen!0 (select (arr!47004 a!2831) j!81) a!2831 mask!2608) (Found!11305 j!81)))))

(declare-fun b!1429523 () Bool)

(assert (=> b!1429523 (= e!807186 e!807187)))

(declare-fun res!964264 () Bool)

(assert (=> b!1429523 (=> (not res!964264) (not e!807187))))

(declare-fun lt!629371 () SeekEntryResult!11305)

(assert (=> b!1429523 (= res!964264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47004 a!2831) j!81) mask!2608) (select (arr!47004 a!2831) j!81) a!2831 mask!2608) lt!629371))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429523 (= lt!629371 (Intermediate!11305 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429524 () Bool)

(declare-fun res!964259 () Bool)

(assert (=> b!1429524 (=> (not res!964259) (not e!807185))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1429524 (= res!964259 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629367 lt!629368 mask!2608) lt!629369))))

(declare-fun b!1429525 () Bool)

(declare-fun res!964266 () Bool)

(assert (=> b!1429525 (=> (not res!964266) (not e!807186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97393 (_ BitVec 32)) Bool)

(assert (=> b!1429525 (= res!964266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429526 () Bool)

(declare-fun res!964261 () Bool)

(assert (=> b!1429526 (=> (not res!964261) (not e!807185))))

(assert (=> b!1429526 (= res!964261 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429527 () Bool)

(assert (=> b!1429527 (= e!807185 (not true))))

(assert (=> b!1429527 e!807188))

(declare-fun res!964260 () Bool)

(assert (=> b!1429527 (=> (not res!964260) (not e!807188))))

(assert (=> b!1429527 (= res!964260 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48304 0))(
  ( (Unit!48305) )
))
(declare-fun lt!629370 () Unit!48304)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48304)

(assert (=> b!1429527 (= lt!629370 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429528 () Bool)

(declare-fun res!964258 () Bool)

(assert (=> b!1429528 (=> (not res!964258) (not e!807185))))

(assert (=> b!1429528 (= res!964258 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47004 a!2831) j!81) a!2831 mask!2608) lt!629371))))

(declare-fun b!1429529 () Bool)

(declare-fun res!964268 () Bool)

(assert (=> b!1429529 (=> (not res!964268) (not e!807186))))

(declare-datatypes ((List!33694 0))(
  ( (Nil!33691) (Cons!33690 (h!35004 (_ BitVec 64)) (t!48395 List!33694)) )
))
(declare-fun arrayNoDuplicates!0 (array!97393 (_ BitVec 32) List!33694) Bool)

(assert (=> b!1429529 (= res!964268 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33691))))

(declare-fun b!1429519 () Bool)

(declare-fun res!964262 () Bool)

(assert (=> b!1429519 (=> (not res!964262) (not e!807186))))

(assert (=> b!1429519 (= res!964262 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47555 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47555 a!2831))))))

(declare-fun res!964257 () Bool)

(assert (=> start!123314 (=> (not res!964257) (not e!807186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123314 (= res!964257 (validMask!0 mask!2608))))

(assert (=> start!123314 e!807186))

(assert (=> start!123314 true))

(declare-fun array_inv!35949 (array!97393) Bool)

(assert (=> start!123314 (array_inv!35949 a!2831)))

(declare-fun b!1429530 () Bool)

(declare-fun res!964267 () Bool)

(assert (=> b!1429530 (=> (not res!964267) (not e!807186))))

(assert (=> b!1429530 (= res!964267 (validKeyInArray!0 (select (arr!47004 a!2831) j!81)))))

(declare-fun b!1429531 () Bool)

(declare-fun res!964265 () Bool)

(assert (=> b!1429531 (=> (not res!964265) (not e!807186))))

(assert (=> b!1429531 (= res!964265 (and (= (size!47555 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47555 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47555 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123314 res!964257) b!1429531))

(assert (= (and b!1429531 res!964265) b!1429520))

(assert (= (and b!1429520 res!964263) b!1429530))

(assert (= (and b!1429530 res!964267) b!1429525))

(assert (= (and b!1429525 res!964266) b!1429529))

(assert (= (and b!1429529 res!964268) b!1429519))

(assert (= (and b!1429519 res!964262) b!1429523))

(assert (= (and b!1429523 res!964264) b!1429521))

(assert (= (and b!1429521 res!964269) b!1429528))

(assert (= (and b!1429528 res!964258) b!1429524))

(assert (= (and b!1429524 res!964259) b!1429526))

(assert (= (and b!1429526 res!964261) b!1429527))

(assert (= (and b!1429527 res!964260) b!1429522))

(declare-fun m!1319673 () Bool)

(assert (=> b!1429520 m!1319673))

(assert (=> b!1429520 m!1319673))

(declare-fun m!1319675 () Bool)

(assert (=> b!1429520 m!1319675))

(declare-fun m!1319677 () Bool)

(assert (=> b!1429523 m!1319677))

(assert (=> b!1429523 m!1319677))

(declare-fun m!1319679 () Bool)

(assert (=> b!1429523 m!1319679))

(assert (=> b!1429523 m!1319679))

(assert (=> b!1429523 m!1319677))

(declare-fun m!1319681 () Bool)

(assert (=> b!1429523 m!1319681))

(declare-fun m!1319683 () Bool)

(assert (=> b!1429524 m!1319683))

(declare-fun m!1319685 () Bool)

(assert (=> b!1429527 m!1319685))

(declare-fun m!1319687 () Bool)

(assert (=> b!1429527 m!1319687))

(assert (=> b!1429522 m!1319677))

(assert (=> b!1429522 m!1319677))

(declare-fun m!1319689 () Bool)

(assert (=> b!1429522 m!1319689))

(declare-fun m!1319691 () Bool)

(assert (=> b!1429529 m!1319691))

(declare-fun m!1319693 () Bool)

(assert (=> b!1429525 m!1319693))

(declare-fun m!1319695 () Bool)

(assert (=> start!123314 m!1319695))

(declare-fun m!1319697 () Bool)

(assert (=> start!123314 m!1319697))

(assert (=> b!1429528 m!1319677))

(assert (=> b!1429528 m!1319677))

(declare-fun m!1319699 () Bool)

(assert (=> b!1429528 m!1319699))

(assert (=> b!1429530 m!1319677))

(assert (=> b!1429530 m!1319677))

(declare-fun m!1319701 () Bool)

(assert (=> b!1429530 m!1319701))

(declare-fun m!1319703 () Bool)

(assert (=> b!1429521 m!1319703))

(assert (=> b!1429521 m!1319703))

(declare-fun m!1319705 () Bool)

(assert (=> b!1429521 m!1319705))

(declare-fun m!1319707 () Bool)

(assert (=> b!1429521 m!1319707))

(declare-fun m!1319709 () Bool)

(assert (=> b!1429521 m!1319709))

(push 1)

