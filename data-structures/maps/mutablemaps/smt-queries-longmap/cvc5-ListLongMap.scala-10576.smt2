; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124636 () Bool)

(assert start!124636)

(declare-fun b!1442454 () Bool)

(declare-fun e!813007 () Bool)

(declare-fun e!813005 () Bool)

(assert (=> b!1442454 (= e!813007 e!813005)))

(declare-fun res!974775 () Bool)

(assert (=> b!1442454 (=> (not res!974775) (not e!813005))))

(declare-datatypes ((SeekEntryResult!11559 0))(
  ( (MissingZero!11559 (index!48627 (_ BitVec 32))) (Found!11559 (index!48628 (_ BitVec 32))) (Intermediate!11559 (undefined!12371 Bool) (index!48629 (_ BitVec 32)) (x!130339 (_ BitVec 32))) (Undefined!11559) (MissingVacant!11559 (index!48630 (_ BitVec 32))) )
))
(declare-fun lt!633528 () SeekEntryResult!11559)

(declare-datatypes ((array!98001 0))(
  ( (array!98002 (arr!47284 (Array (_ BitVec 32) (_ BitVec 64))) (size!47835 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98001)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98001 (_ BitVec 32)) SeekEntryResult!11559)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442454 (= res!974775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47284 a!2862) j!93) mask!2687) (select (arr!47284 a!2862) j!93) a!2862 mask!2687) lt!633528))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442454 (= lt!633528 (Intermediate!11559 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!974777 () Bool)

(declare-fun e!813006 () Bool)

(assert (=> start!124636 (=> (not res!974777) (not e!813006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124636 (= res!974777 (validMask!0 mask!2687))))

(assert (=> start!124636 e!813006))

(assert (=> start!124636 true))

(declare-fun array_inv!36229 (array!98001) Bool)

(assert (=> start!124636 (array_inv!36229 a!2862)))

(declare-fun b!1442455 () Bool)

(declare-fun e!813004 () Bool)

(assert (=> b!1442455 (= e!813004 (not true))))

(declare-fun e!813008 () Bool)

(assert (=> b!1442455 e!813008))

(declare-fun res!974778 () Bool)

(assert (=> b!1442455 (=> (not res!974778) (not e!813008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98001 (_ BitVec 32)) Bool)

(assert (=> b!1442455 (= res!974778 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48562 0))(
  ( (Unit!48563) )
))
(declare-fun lt!633531 () Unit!48562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48562)

(assert (=> b!1442455 (= lt!633531 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442456 () Bool)

(declare-fun res!974782 () Bool)

(assert (=> b!1442456 (=> (not res!974782) (not e!813006))))

(declare-datatypes ((List!33965 0))(
  ( (Nil!33962) (Cons!33961 (h!35311 (_ BitVec 64)) (t!48666 List!33965)) )
))
(declare-fun arrayNoDuplicates!0 (array!98001 (_ BitVec 32) List!33965) Bool)

(assert (=> b!1442456 (= res!974782 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33962))))

(declare-fun b!1442457 () Bool)

(assert (=> b!1442457 (= e!813006 e!813007)))

(declare-fun res!974779 () Bool)

(assert (=> b!1442457 (=> (not res!974779) (not e!813007))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442457 (= res!974779 (= (select (store (arr!47284 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633529 () array!98001)

(assert (=> b!1442457 (= lt!633529 (array!98002 (store (arr!47284 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47835 a!2862)))))

(declare-fun b!1442458 () Bool)

(declare-fun res!974780 () Bool)

(assert (=> b!1442458 (=> (not res!974780) (not e!813004))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1442458 (= res!974780 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442459 () Bool)

(declare-fun res!974771 () Bool)

(assert (=> b!1442459 (=> (not res!974771) (not e!813008))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98001 (_ BitVec 32)) SeekEntryResult!11559)

(assert (=> b!1442459 (= res!974771 (= (seekEntryOrOpen!0 (select (arr!47284 a!2862) j!93) a!2862 mask!2687) (Found!11559 j!93)))))

(declare-fun b!1442460 () Bool)

(declare-fun res!974783 () Bool)

(assert (=> b!1442460 (=> (not res!974783) (not e!813006))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1442460 (= res!974783 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47835 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47835 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47835 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442461 () Bool)

(declare-fun res!974781 () Bool)

(assert (=> b!1442461 (=> (not res!974781) (not e!813005))))

(assert (=> b!1442461 (= res!974781 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47284 a!2862) j!93) a!2862 mask!2687) lt!633528))))

(declare-fun b!1442462 () Bool)

(declare-fun res!974773 () Bool)

(assert (=> b!1442462 (=> (not res!974773) (not e!813006))))

(assert (=> b!1442462 (= res!974773 (and (= (size!47835 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47835 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47835 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442463 () Bool)

(declare-fun res!974776 () Bool)

(assert (=> b!1442463 (=> (not res!974776) (not e!813006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442463 (= res!974776 (validKeyInArray!0 (select (arr!47284 a!2862) i!1006)))))

(declare-fun b!1442464 () Bool)

(declare-fun res!974774 () Bool)

(assert (=> b!1442464 (=> (not res!974774) (not e!813006))))

(assert (=> b!1442464 (= res!974774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442465 () Bool)

(assert (=> b!1442465 (= e!813005 e!813004)))

(declare-fun res!974770 () Bool)

(assert (=> b!1442465 (=> (not res!974770) (not e!813004))))

(declare-fun lt!633530 () SeekEntryResult!11559)

(assert (=> b!1442465 (= res!974770 (= lt!633530 (Intermediate!11559 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633532 () (_ BitVec 64))

(assert (=> b!1442465 (= lt!633530 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633532 mask!2687) lt!633532 lt!633529 mask!2687))))

(assert (=> b!1442465 (= lt!633532 (select (store (arr!47284 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442466 () Bool)

(declare-fun e!813003 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98001 (_ BitVec 32)) SeekEntryResult!11559)

(assert (=> b!1442466 (= e!813003 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633532 lt!633529 mask!2687) (seekEntryOrOpen!0 lt!633532 lt!633529 mask!2687)))))

(declare-fun b!1442467 () Bool)

(assert (=> b!1442467 (= e!813003 (= lt!633530 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633532 lt!633529 mask!2687)))))

(declare-fun b!1442468 () Bool)

(declare-fun res!974784 () Bool)

(assert (=> b!1442468 (=> (not res!974784) (not e!813004))))

(assert (=> b!1442468 (= res!974784 e!813003)))

(declare-fun c!133355 () Bool)

(assert (=> b!1442468 (= c!133355 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442469 () Bool)

(declare-fun res!974772 () Bool)

(assert (=> b!1442469 (=> (not res!974772) (not e!813006))))

(assert (=> b!1442469 (= res!974772 (validKeyInArray!0 (select (arr!47284 a!2862) j!93)))))

(declare-fun b!1442470 () Bool)

(assert (=> b!1442470 (= e!813008 (or (= (select (arr!47284 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47284 a!2862) intermediateBeforeIndex!19) (select (arr!47284 a!2862) j!93))))))

(assert (= (and start!124636 res!974777) b!1442462))

(assert (= (and b!1442462 res!974773) b!1442463))

(assert (= (and b!1442463 res!974776) b!1442469))

(assert (= (and b!1442469 res!974772) b!1442464))

(assert (= (and b!1442464 res!974774) b!1442456))

(assert (= (and b!1442456 res!974782) b!1442460))

(assert (= (and b!1442460 res!974783) b!1442457))

(assert (= (and b!1442457 res!974779) b!1442454))

(assert (= (and b!1442454 res!974775) b!1442461))

(assert (= (and b!1442461 res!974781) b!1442465))

(assert (= (and b!1442465 res!974770) b!1442468))

(assert (= (and b!1442468 c!133355) b!1442467))

(assert (= (and b!1442468 (not c!133355)) b!1442466))

(assert (= (and b!1442468 res!974784) b!1442458))

(assert (= (and b!1442458 res!974780) b!1442455))

(assert (= (and b!1442455 res!974778) b!1442459))

(assert (= (and b!1442459 res!974771) b!1442470))

(declare-fun m!1331655 () Bool)

(assert (=> b!1442466 m!1331655))

(declare-fun m!1331657 () Bool)

(assert (=> b!1442466 m!1331657))

(declare-fun m!1331659 () Bool)

(assert (=> b!1442469 m!1331659))

(assert (=> b!1442469 m!1331659))

(declare-fun m!1331661 () Bool)

(assert (=> b!1442469 m!1331661))

(declare-fun m!1331663 () Bool)

(assert (=> b!1442463 m!1331663))

(assert (=> b!1442463 m!1331663))

(declare-fun m!1331665 () Bool)

(assert (=> b!1442463 m!1331665))

(declare-fun m!1331667 () Bool)

(assert (=> b!1442470 m!1331667))

(assert (=> b!1442470 m!1331659))

(assert (=> b!1442459 m!1331659))

(assert (=> b!1442459 m!1331659))

(declare-fun m!1331669 () Bool)

(assert (=> b!1442459 m!1331669))

(declare-fun m!1331671 () Bool)

(assert (=> start!124636 m!1331671))

(declare-fun m!1331673 () Bool)

(assert (=> start!124636 m!1331673))

(declare-fun m!1331675 () Bool)

(assert (=> b!1442457 m!1331675))

(declare-fun m!1331677 () Bool)

(assert (=> b!1442457 m!1331677))

(declare-fun m!1331679 () Bool)

(assert (=> b!1442456 m!1331679))

(assert (=> b!1442454 m!1331659))

(assert (=> b!1442454 m!1331659))

(declare-fun m!1331681 () Bool)

(assert (=> b!1442454 m!1331681))

(assert (=> b!1442454 m!1331681))

(assert (=> b!1442454 m!1331659))

(declare-fun m!1331683 () Bool)

(assert (=> b!1442454 m!1331683))

(declare-fun m!1331685 () Bool)

(assert (=> b!1442465 m!1331685))

(assert (=> b!1442465 m!1331685))

(declare-fun m!1331687 () Bool)

(assert (=> b!1442465 m!1331687))

(assert (=> b!1442465 m!1331675))

(declare-fun m!1331689 () Bool)

(assert (=> b!1442465 m!1331689))

(assert (=> b!1442461 m!1331659))

(assert (=> b!1442461 m!1331659))

(declare-fun m!1331691 () Bool)

(assert (=> b!1442461 m!1331691))

(declare-fun m!1331693 () Bool)

(assert (=> b!1442467 m!1331693))

(declare-fun m!1331695 () Bool)

(assert (=> b!1442464 m!1331695))

(declare-fun m!1331697 () Bool)

(assert (=> b!1442455 m!1331697))

(declare-fun m!1331699 () Bool)

(assert (=> b!1442455 m!1331699))

(push 1)

