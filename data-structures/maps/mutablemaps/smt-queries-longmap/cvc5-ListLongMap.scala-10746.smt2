; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125716 () Bool)

(assert start!125716)

(declare-fun b!1470454 () Bool)

(declare-fun res!998688 () Bool)

(declare-fun e!825469 () Bool)

(assert (=> b!1470454 (=> (not res!998688) (not e!825469))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1470454 (= res!998688 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470455 () Bool)

(declare-fun res!998693 () Bool)

(declare-fun e!825472 () Bool)

(assert (=> b!1470455 (=> (not res!998693) (not e!825472))))

(declare-datatypes ((array!99024 0))(
  ( (array!99025 (arr!47794 (Array (_ BitVec 32) (_ BitVec 64))) (size!48345 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99024)

(declare-datatypes ((List!34475 0))(
  ( (Nil!34472) (Cons!34471 (h!35824 (_ BitVec 64)) (t!49176 List!34475)) )
))
(declare-fun arrayNoDuplicates!0 (array!99024 (_ BitVec 32) List!34475) Bool)

(assert (=> b!1470455 (= res!998693 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34472))))

(declare-fun b!1470456 () Bool)

(declare-fun res!998692 () Bool)

(assert (=> b!1470456 (=> (not res!998692) (not e!825469))))

(declare-fun e!825467 () Bool)

(assert (=> b!1470456 (= res!998692 e!825467)))

(declare-fun c!135401 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470456 (= c!135401 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470457 () Bool)

(declare-fun res!998687 () Bool)

(declare-fun e!825468 () Bool)

(assert (=> b!1470457 (=> (not res!998687) (not e!825468))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12057 0))(
  ( (MissingZero!12057 (index!50619 (_ BitVec 32))) (Found!12057 (index!50620 (_ BitVec 32))) (Intermediate!12057 (undefined!12869 Bool) (index!50621 (_ BitVec 32)) (x!132206 (_ BitVec 32))) (Undefined!12057) (MissingVacant!12057 (index!50622 (_ BitVec 32))) )
))
(declare-fun lt!642894 () SeekEntryResult!12057)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99024 (_ BitVec 32)) SeekEntryResult!12057)

(assert (=> b!1470457 (= res!998687 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47794 a!2862) j!93) a!2862 mask!2687) lt!642894))))

(declare-fun b!1470458 () Bool)

(assert (=> b!1470458 (= e!825468 e!825469)))

(declare-fun res!998694 () Bool)

(assert (=> b!1470458 (=> (not res!998694) (not e!825469))))

(declare-fun lt!642898 () SeekEntryResult!12057)

(assert (=> b!1470458 (= res!998694 (= lt!642898 (Intermediate!12057 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642897 () array!99024)

(declare-fun lt!642895 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470458 (= lt!642898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642895 mask!2687) lt!642895 lt!642897 mask!2687))))

(assert (=> b!1470458 (= lt!642895 (select (store (arr!47794 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!825473 () Bool)

(declare-fun b!1470459 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99024 (_ BitVec 32)) SeekEntryResult!12057)

(assert (=> b!1470459 (= e!825473 (= (seekEntryOrOpen!0 (select (arr!47794 a!2862) j!93) a!2862 mask!2687) (Found!12057 j!93)))))

(declare-fun b!1470460 () Bool)

(declare-fun e!825470 () Bool)

(assert (=> b!1470460 (= e!825472 e!825470)))

(declare-fun res!998683 () Bool)

(assert (=> b!1470460 (=> (not res!998683) (not e!825470))))

(assert (=> b!1470460 (= res!998683 (= (select (store (arr!47794 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470460 (= lt!642897 (array!99025 (store (arr!47794 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48345 a!2862)))))

(declare-fun b!1470461 () Bool)

(declare-fun res!998689 () Bool)

(assert (=> b!1470461 (=> (not res!998689) (not e!825472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470461 (= res!998689 (validKeyInArray!0 (select (arr!47794 a!2862) i!1006)))))

(declare-fun b!1470462 () Bool)

(declare-fun res!998686 () Bool)

(assert (=> b!1470462 (=> (not res!998686) (not e!825472))))

(assert (=> b!1470462 (= res!998686 (validKeyInArray!0 (select (arr!47794 a!2862) j!93)))))

(declare-fun b!1470463 () Bool)

(declare-fun res!998682 () Bool)

(assert (=> b!1470463 (=> (not res!998682) (not e!825472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99024 (_ BitVec 32)) Bool)

(assert (=> b!1470463 (= res!998682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470464 () Bool)

(assert (=> b!1470464 (= e!825467 (= lt!642898 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642895 lt!642897 mask!2687)))))

(declare-fun b!1470465 () Bool)

(declare-fun res!998691 () Bool)

(assert (=> b!1470465 (=> (not res!998691) (not e!825472))))

(assert (=> b!1470465 (= res!998691 (and (= (size!48345 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48345 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48345 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!998685 () Bool)

(assert (=> start!125716 (=> (not res!998685) (not e!825472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125716 (= res!998685 (validMask!0 mask!2687))))

(assert (=> start!125716 e!825472))

(assert (=> start!125716 true))

(declare-fun array_inv!36739 (array!99024) Bool)

(assert (=> start!125716 (array_inv!36739 a!2862)))

(declare-fun b!1470466 () Bool)

(assert (=> b!1470466 (= e!825469 (not true))))

(assert (=> b!1470466 e!825473))

(declare-fun res!998690 () Bool)

(assert (=> b!1470466 (=> (not res!998690) (not e!825473))))

(assert (=> b!1470466 (= res!998690 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49402 0))(
  ( (Unit!49403) )
))
(declare-fun lt!642896 () Unit!49402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99024 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49402)

(assert (=> b!1470466 (= lt!642896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470467 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99024 (_ BitVec 32)) SeekEntryResult!12057)

(assert (=> b!1470467 (= e!825467 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642895 lt!642897 mask!2687) (seekEntryOrOpen!0 lt!642895 lt!642897 mask!2687)))))

(declare-fun b!1470468 () Bool)

(assert (=> b!1470468 (= e!825470 e!825468)))

(declare-fun res!998681 () Bool)

(assert (=> b!1470468 (=> (not res!998681) (not e!825468))))

(assert (=> b!1470468 (= res!998681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47794 a!2862) j!93) mask!2687) (select (arr!47794 a!2862) j!93) a!2862 mask!2687) lt!642894))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1470468 (= lt!642894 (Intermediate!12057 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470469 () Bool)

(declare-fun res!998684 () Bool)

(assert (=> b!1470469 (=> (not res!998684) (not e!825472))))

(assert (=> b!1470469 (= res!998684 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48345 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48345 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48345 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125716 res!998685) b!1470465))

(assert (= (and b!1470465 res!998691) b!1470461))

(assert (= (and b!1470461 res!998689) b!1470462))

(assert (= (and b!1470462 res!998686) b!1470463))

(assert (= (and b!1470463 res!998682) b!1470455))

(assert (= (and b!1470455 res!998693) b!1470469))

(assert (= (and b!1470469 res!998684) b!1470460))

(assert (= (and b!1470460 res!998683) b!1470468))

(assert (= (and b!1470468 res!998681) b!1470457))

(assert (= (and b!1470457 res!998687) b!1470458))

(assert (= (and b!1470458 res!998694) b!1470456))

(assert (= (and b!1470456 c!135401) b!1470464))

(assert (= (and b!1470456 (not c!135401)) b!1470467))

(assert (= (and b!1470456 res!998692) b!1470454))

(assert (= (and b!1470454 res!998688) b!1470466))

(assert (= (and b!1470466 res!998690) b!1470459))

(declare-fun m!1357503 () Bool)

(assert (=> b!1470459 m!1357503))

(assert (=> b!1470459 m!1357503))

(declare-fun m!1357505 () Bool)

(assert (=> b!1470459 m!1357505))

(assert (=> b!1470462 m!1357503))

(assert (=> b!1470462 m!1357503))

(declare-fun m!1357507 () Bool)

(assert (=> b!1470462 m!1357507))

(assert (=> b!1470457 m!1357503))

(assert (=> b!1470457 m!1357503))

(declare-fun m!1357509 () Bool)

(assert (=> b!1470457 m!1357509))

(declare-fun m!1357511 () Bool)

(assert (=> b!1470455 m!1357511))

(declare-fun m!1357513 () Bool)

(assert (=> start!125716 m!1357513))

(declare-fun m!1357515 () Bool)

(assert (=> start!125716 m!1357515))

(declare-fun m!1357517 () Bool)

(assert (=> b!1470466 m!1357517))

(declare-fun m!1357519 () Bool)

(assert (=> b!1470466 m!1357519))

(declare-fun m!1357521 () Bool)

(assert (=> b!1470463 m!1357521))

(declare-fun m!1357523 () Bool)

(assert (=> b!1470461 m!1357523))

(assert (=> b!1470461 m!1357523))

(declare-fun m!1357525 () Bool)

(assert (=> b!1470461 m!1357525))

(declare-fun m!1357527 () Bool)

(assert (=> b!1470458 m!1357527))

(assert (=> b!1470458 m!1357527))

(declare-fun m!1357529 () Bool)

(assert (=> b!1470458 m!1357529))

(declare-fun m!1357531 () Bool)

(assert (=> b!1470458 m!1357531))

(declare-fun m!1357533 () Bool)

(assert (=> b!1470458 m!1357533))

(declare-fun m!1357535 () Bool)

(assert (=> b!1470464 m!1357535))

(assert (=> b!1470468 m!1357503))

(assert (=> b!1470468 m!1357503))

(declare-fun m!1357537 () Bool)

(assert (=> b!1470468 m!1357537))

(assert (=> b!1470468 m!1357537))

(assert (=> b!1470468 m!1357503))

(declare-fun m!1357539 () Bool)

(assert (=> b!1470468 m!1357539))

(declare-fun m!1357541 () Bool)

(assert (=> b!1470467 m!1357541))

(declare-fun m!1357543 () Bool)

(assert (=> b!1470467 m!1357543))

(assert (=> b!1470460 m!1357531))

(declare-fun m!1357545 () Bool)

(assert (=> b!1470460 m!1357545))

(push 1)

