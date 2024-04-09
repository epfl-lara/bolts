; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125262 () Bool)

(assert start!125262)

(declare-fun b!1460667 () Bool)

(declare-fun res!990523 () Bool)

(declare-fun e!821290 () Bool)

(assert (=> b!1460667 (=> (not res!990523) (not e!821290))))

(declare-datatypes ((array!98627 0))(
  ( (array!98628 (arr!47597 (Array (_ BitVec 32) (_ BitVec 64))) (size!48148 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98627)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98627 (_ BitVec 32)) Bool)

(assert (=> b!1460667 (= res!990523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460668 () Bool)

(declare-fun e!821285 () Bool)

(declare-fun e!821288 () Bool)

(assert (=> b!1460668 (= e!821285 e!821288)))

(declare-fun res!990516 () Bool)

(assert (=> b!1460668 (=> (not res!990516) (not e!821288))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11872 0))(
  ( (MissingZero!11872 (index!49879 (_ BitVec 32))) (Found!11872 (index!49880 (_ BitVec 32))) (Intermediate!11872 (undefined!12684 Bool) (index!49881 (_ BitVec 32)) (x!131484 (_ BitVec 32))) (Undefined!11872) (MissingVacant!11872 (index!49882 (_ BitVec 32))) )
))
(declare-fun lt!639854 () SeekEntryResult!11872)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460668 (= res!990516 (= lt!639854 (Intermediate!11872 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639853 () (_ BitVec 64))

(declare-fun lt!639855 () array!98627)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98627 (_ BitVec 32)) SeekEntryResult!11872)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460668 (= lt!639854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639853 mask!2687) lt!639853 lt!639855 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1460668 (= lt!639853 (select (store (arr!47597 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460669 () Bool)

(assert (=> b!1460669 (= e!821288 (not true))))

(declare-fun e!821286 () Bool)

(assert (=> b!1460669 e!821286))

(declare-fun res!990524 () Bool)

(assert (=> b!1460669 (=> (not res!990524) (not e!821286))))

(assert (=> b!1460669 (= res!990524 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49188 0))(
  ( (Unit!49189) )
))
(declare-fun lt!639852 () Unit!49188)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49188)

(assert (=> b!1460669 (= lt!639852 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!990521 () Bool)

(assert (=> start!125262 (=> (not res!990521) (not e!821290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125262 (= res!990521 (validMask!0 mask!2687))))

(assert (=> start!125262 e!821290))

(assert (=> start!125262 true))

(declare-fun array_inv!36542 (array!98627) Bool)

(assert (=> start!125262 (array_inv!36542 a!2862)))

(declare-fun b!1460670 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1460670 (= e!821286 (or (= (select (arr!47597 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47597 a!2862) intermediateBeforeIndex!19) (select (arr!47597 a!2862) j!93))))))

(declare-fun b!1460671 () Bool)

(declare-fun e!821287 () Bool)

(assert (=> b!1460671 (= e!821290 e!821287)))

(declare-fun res!990512 () Bool)

(assert (=> b!1460671 (=> (not res!990512) (not e!821287))))

(assert (=> b!1460671 (= res!990512 (= (select (store (arr!47597 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460671 (= lt!639855 (array!98628 (store (arr!47597 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48148 a!2862)))))

(declare-fun b!1460672 () Bool)

(declare-fun res!990517 () Bool)

(assert (=> b!1460672 (=> (not res!990517) (not e!821285))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!639856 () SeekEntryResult!11872)

(assert (=> b!1460672 (= res!990517 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47597 a!2862) j!93) a!2862 mask!2687) lt!639856))))

(declare-fun b!1460673 () Bool)

(declare-fun res!990511 () Bool)

(assert (=> b!1460673 (=> (not res!990511) (not e!821290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460673 (= res!990511 (validKeyInArray!0 (select (arr!47597 a!2862) i!1006)))))

(declare-fun b!1460674 () Bool)

(declare-fun res!990515 () Bool)

(assert (=> b!1460674 (=> (not res!990515) (not e!821290))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460674 (= res!990515 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48148 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48148 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48148 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460675 () Bool)

(assert (=> b!1460675 (= e!821287 e!821285)))

(declare-fun res!990518 () Bool)

(assert (=> b!1460675 (=> (not res!990518) (not e!821285))))

(assert (=> b!1460675 (= res!990518 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47597 a!2862) j!93) mask!2687) (select (arr!47597 a!2862) j!93) a!2862 mask!2687) lt!639856))))

(assert (=> b!1460675 (= lt!639856 (Intermediate!11872 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460676 () Bool)

(declare-fun res!990513 () Bool)

(assert (=> b!1460676 (=> (not res!990513) (not e!821288))))

(assert (=> b!1460676 (= res!990513 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460677 () Bool)

(declare-fun res!990520 () Bool)

(assert (=> b!1460677 (=> (not res!990520) (not e!821290))))

(assert (=> b!1460677 (= res!990520 (and (= (size!48148 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48148 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48148 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!821289 () Bool)

(declare-fun b!1460678 () Bool)

(assert (=> b!1460678 (= e!821289 (= lt!639854 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639853 lt!639855 mask!2687)))))

(declare-fun b!1460679 () Bool)

(declare-fun res!990522 () Bool)

(assert (=> b!1460679 (=> (not res!990522) (not e!821286))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98627 (_ BitVec 32)) SeekEntryResult!11872)

(assert (=> b!1460679 (= res!990522 (= (seekEntryOrOpen!0 (select (arr!47597 a!2862) j!93) a!2862 mask!2687) (Found!11872 j!93)))))

(declare-fun b!1460680 () Bool)

(declare-fun res!990525 () Bool)

(assert (=> b!1460680 (=> (not res!990525) (not e!821288))))

(assert (=> b!1460680 (= res!990525 e!821289)))

(declare-fun c!134591 () Bool)

(assert (=> b!1460680 (= c!134591 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98627 (_ BitVec 32)) SeekEntryResult!11872)

(assert (=> b!1460681 (= e!821289 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639853 lt!639855 mask!2687) (seekEntryOrOpen!0 lt!639853 lt!639855 mask!2687)))))

(declare-fun b!1460682 () Bool)

(declare-fun res!990514 () Bool)

(assert (=> b!1460682 (=> (not res!990514) (not e!821290))))

(declare-datatypes ((List!34278 0))(
  ( (Nil!34275) (Cons!34274 (h!35624 (_ BitVec 64)) (t!48979 List!34278)) )
))
(declare-fun arrayNoDuplicates!0 (array!98627 (_ BitVec 32) List!34278) Bool)

(assert (=> b!1460682 (= res!990514 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34275))))

(declare-fun b!1460683 () Bool)

(declare-fun res!990519 () Bool)

(assert (=> b!1460683 (=> (not res!990519) (not e!821290))))

(assert (=> b!1460683 (= res!990519 (validKeyInArray!0 (select (arr!47597 a!2862) j!93)))))

(assert (= (and start!125262 res!990521) b!1460677))

(assert (= (and b!1460677 res!990520) b!1460673))

(assert (= (and b!1460673 res!990511) b!1460683))

(assert (= (and b!1460683 res!990519) b!1460667))

(assert (= (and b!1460667 res!990523) b!1460682))

(assert (= (and b!1460682 res!990514) b!1460674))

(assert (= (and b!1460674 res!990515) b!1460671))

(assert (= (and b!1460671 res!990512) b!1460675))

(assert (= (and b!1460675 res!990518) b!1460672))

(assert (= (and b!1460672 res!990517) b!1460668))

(assert (= (and b!1460668 res!990516) b!1460680))

(assert (= (and b!1460680 c!134591) b!1460678))

(assert (= (and b!1460680 (not c!134591)) b!1460681))

(assert (= (and b!1460680 res!990525) b!1460676))

(assert (= (and b!1460676 res!990513) b!1460669))

(assert (= (and b!1460669 res!990524) b!1460679))

(assert (= (and b!1460679 res!990522) b!1460670))

(declare-fun m!1348393 () Bool)

(assert (=> b!1460671 m!1348393))

(declare-fun m!1348395 () Bool)

(assert (=> b!1460671 m!1348395))

(declare-fun m!1348397 () Bool)

(assert (=> b!1460678 m!1348397))

(declare-fun m!1348399 () Bool)

(assert (=> b!1460682 m!1348399))

(declare-fun m!1348401 () Bool)

(assert (=> b!1460668 m!1348401))

(assert (=> b!1460668 m!1348401))

(declare-fun m!1348403 () Bool)

(assert (=> b!1460668 m!1348403))

(assert (=> b!1460668 m!1348393))

(declare-fun m!1348405 () Bool)

(assert (=> b!1460668 m!1348405))

(declare-fun m!1348407 () Bool)

(assert (=> b!1460681 m!1348407))

(declare-fun m!1348409 () Bool)

(assert (=> b!1460681 m!1348409))

(declare-fun m!1348411 () Bool)

(assert (=> b!1460683 m!1348411))

(assert (=> b!1460683 m!1348411))

(declare-fun m!1348413 () Bool)

(assert (=> b!1460683 m!1348413))

(declare-fun m!1348415 () Bool)

(assert (=> start!125262 m!1348415))

(declare-fun m!1348417 () Bool)

(assert (=> start!125262 m!1348417))

(declare-fun m!1348419 () Bool)

(assert (=> b!1460667 m!1348419))

(declare-fun m!1348421 () Bool)

(assert (=> b!1460673 m!1348421))

(assert (=> b!1460673 m!1348421))

(declare-fun m!1348423 () Bool)

(assert (=> b!1460673 m!1348423))

(declare-fun m!1348425 () Bool)

(assert (=> b!1460670 m!1348425))

(assert (=> b!1460670 m!1348411))

(assert (=> b!1460675 m!1348411))

(assert (=> b!1460675 m!1348411))

(declare-fun m!1348427 () Bool)

(assert (=> b!1460675 m!1348427))

(assert (=> b!1460675 m!1348427))

(assert (=> b!1460675 m!1348411))

(declare-fun m!1348429 () Bool)

(assert (=> b!1460675 m!1348429))

(assert (=> b!1460679 m!1348411))

(assert (=> b!1460679 m!1348411))

(declare-fun m!1348431 () Bool)

(assert (=> b!1460679 m!1348431))

(assert (=> b!1460672 m!1348411))

(assert (=> b!1460672 m!1348411))

(declare-fun m!1348433 () Bool)

(assert (=> b!1460672 m!1348433))

(declare-fun m!1348435 () Bool)

(assert (=> b!1460669 m!1348435))

(declare-fun m!1348437 () Bool)

(assert (=> b!1460669 m!1348437))

(check-sat (not b!1460679) (not b!1460673) (not b!1460668) (not b!1460669) (not b!1460667) (not b!1460681) (not b!1460683) (not b!1460672) (not b!1460675) (not b!1460682) (not start!125262) (not b!1460678))
(check-sat)
