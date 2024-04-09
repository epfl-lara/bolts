; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125850 () Bool)

(assert start!125850)

(declare-fun b!1472688 () Bool)

(declare-fun res!1000434 () Bool)

(declare-fun e!826474 () Bool)

(assert (=> b!1472688 (=> (not res!1000434) (not e!826474))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!99101 0))(
  ( (array!99102 (arr!47831 (Array (_ BitVec 32) (_ BitVec 64))) (size!48382 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99101)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1472688 (= res!1000434 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48382 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48382 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48382 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!643612 () array!99101)

(declare-fun e!826475 () Bool)

(declare-fun lt!643608 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1472689 () Bool)

(declare-datatypes ((SeekEntryResult!12094 0))(
  ( (MissingZero!12094 (index!50767 (_ BitVec 32))) (Found!12094 (index!50768 (_ BitVec 32))) (Intermediate!12094 (undefined!12906 Bool) (index!50769 (_ BitVec 32)) (x!132348 (_ BitVec 32))) (Undefined!12094) (MissingVacant!12094 (index!50770 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99101 (_ BitVec 32)) SeekEntryResult!12094)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99101 (_ BitVec 32)) SeekEntryResult!12094)

(assert (=> b!1472689 (= e!826475 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643608 lt!643612 mask!2687) (seekEntryOrOpen!0 lt!643608 lt!643612 mask!2687)))))

(declare-fun b!1472690 () Bool)

(declare-fun res!1000433 () Bool)

(assert (=> b!1472690 (=> (not res!1000433) (not e!826474))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472690 (= res!1000433 (validKeyInArray!0 (select (arr!47831 a!2862) j!93)))))

(declare-fun b!1472691 () Bool)

(declare-fun res!1000430 () Bool)

(declare-fun e!826473 () Bool)

(assert (=> b!1472691 (=> (not res!1000430) (not e!826473))))

(declare-fun lt!643609 () SeekEntryResult!12094)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99101 (_ BitVec 32)) SeekEntryResult!12094)

(assert (=> b!1472691 (= res!1000430 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47831 a!2862) j!93) a!2862 mask!2687) lt!643609))))

(declare-fun b!1472692 () Bool)

(declare-fun e!826469 () Bool)

(assert (=> b!1472692 (= e!826473 e!826469)))

(declare-fun res!1000420 () Bool)

(assert (=> b!1472692 (=> (not res!1000420) (not e!826469))))

(declare-fun lt!643611 () SeekEntryResult!12094)

(assert (=> b!1472692 (= res!1000420 (= lt!643611 (Intermediate!12094 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472692 (= lt!643611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643608 mask!2687) lt!643608 lt!643612 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472692 (= lt!643608 (select (store (arr!47831 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472693 () Bool)

(declare-fun res!1000421 () Bool)

(assert (=> b!1472693 (=> (not res!1000421) (not e!826474))))

(assert (=> b!1472693 (= res!1000421 (and (= (size!48382 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48382 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48382 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472694 () Bool)

(declare-fun res!1000429 () Bool)

(assert (=> b!1472694 (=> (not res!1000429) (not e!826474))))

(assert (=> b!1472694 (= res!1000429 (validKeyInArray!0 (select (arr!47831 a!2862) i!1006)))))

(declare-fun b!1472695 () Bool)

(declare-fun res!1000426 () Bool)

(assert (=> b!1472695 (=> (not res!1000426) (not e!826469))))

(assert (=> b!1472695 (= res!1000426 e!826475)))

(declare-fun c!135650 () Bool)

(assert (=> b!1472695 (= c!135650 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472696 () Bool)

(declare-fun e!826471 () Bool)

(assert (=> b!1472696 (= e!826474 e!826471)))

(declare-fun res!1000424 () Bool)

(assert (=> b!1472696 (=> (not res!1000424) (not e!826471))))

(assert (=> b!1472696 (= res!1000424 (= (select (store (arr!47831 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472696 (= lt!643612 (array!99102 (store (arr!47831 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48382 a!2862)))))

(declare-fun b!1472697 () Bool)

(declare-fun res!1000427 () Bool)

(declare-fun e!826470 () Bool)

(assert (=> b!1472697 (=> (not res!1000427) (not e!826470))))

(assert (=> b!1472697 (= res!1000427 (= (seekEntryOrOpen!0 (select (arr!47831 a!2862) j!93) a!2862 mask!2687) (Found!12094 j!93)))))

(declare-fun b!1472698 () Bool)

(assert (=> b!1472698 (= e!826471 e!826473)))

(declare-fun res!1000423 () Bool)

(assert (=> b!1472698 (=> (not res!1000423) (not e!826473))))

(assert (=> b!1472698 (= res!1000423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47831 a!2862) j!93) mask!2687) (select (arr!47831 a!2862) j!93) a!2862 mask!2687) lt!643609))))

(assert (=> b!1472698 (= lt!643609 (Intermediate!12094 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472699 () Bool)

(assert (=> b!1472699 (= e!826470 (or (= (select (arr!47831 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47831 a!2862) intermediateBeforeIndex!19) (select (arr!47831 a!2862) j!93))))))

(declare-fun b!1472700 () Bool)

(declare-fun res!1000431 () Bool)

(assert (=> b!1472700 (=> (not res!1000431) (not e!826474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99101 (_ BitVec 32)) Bool)

(assert (=> b!1472700 (= res!1000431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1000422 () Bool)

(assert (=> start!125850 (=> (not res!1000422) (not e!826474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125850 (= res!1000422 (validMask!0 mask!2687))))

(assert (=> start!125850 e!826474))

(assert (=> start!125850 true))

(declare-fun array_inv!36776 (array!99101) Bool)

(assert (=> start!125850 (array_inv!36776 a!2862)))

(declare-fun b!1472701 () Bool)

(declare-fun res!1000432 () Bool)

(assert (=> b!1472701 (=> (not res!1000432) (not e!826474))))

(declare-datatypes ((List!34512 0))(
  ( (Nil!34509) (Cons!34508 (h!35864 (_ BitVec 64)) (t!49213 List!34512)) )
))
(declare-fun arrayNoDuplicates!0 (array!99101 (_ BitVec 32) List!34512) Bool)

(assert (=> b!1472701 (= res!1000432 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34509))))

(declare-fun b!1472702 () Bool)

(declare-fun res!1000428 () Bool)

(assert (=> b!1472702 (=> (not res!1000428) (not e!826469))))

(assert (=> b!1472702 (= res!1000428 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472703 () Bool)

(assert (=> b!1472703 (= e!826475 (= lt!643611 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643608 lt!643612 mask!2687)))))

(declare-fun b!1472704 () Bool)

(assert (=> b!1472704 (= e!826469 (not true))))

(assert (=> b!1472704 e!826470))

(declare-fun res!1000425 () Bool)

(assert (=> b!1472704 (=> (not res!1000425) (not e!826470))))

(assert (=> b!1472704 (= res!1000425 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49476 0))(
  ( (Unit!49477) )
))
(declare-fun lt!643610 () Unit!49476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49476)

(assert (=> b!1472704 (= lt!643610 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125850 res!1000422) b!1472693))

(assert (= (and b!1472693 res!1000421) b!1472694))

(assert (= (and b!1472694 res!1000429) b!1472690))

(assert (= (and b!1472690 res!1000433) b!1472700))

(assert (= (and b!1472700 res!1000431) b!1472701))

(assert (= (and b!1472701 res!1000432) b!1472688))

(assert (= (and b!1472688 res!1000434) b!1472696))

(assert (= (and b!1472696 res!1000424) b!1472698))

(assert (= (and b!1472698 res!1000423) b!1472691))

(assert (= (and b!1472691 res!1000430) b!1472692))

(assert (= (and b!1472692 res!1000420) b!1472695))

(assert (= (and b!1472695 c!135650) b!1472703))

(assert (= (and b!1472695 (not c!135650)) b!1472689))

(assert (= (and b!1472695 res!1000426) b!1472702))

(assert (= (and b!1472702 res!1000428) b!1472704))

(assert (= (and b!1472704 res!1000425) b!1472697))

(assert (= (and b!1472697 res!1000427) b!1472699))

(declare-fun m!1359427 () Bool)

(assert (=> b!1472704 m!1359427))

(declare-fun m!1359429 () Bool)

(assert (=> b!1472704 m!1359429))

(declare-fun m!1359431 () Bool)

(assert (=> b!1472701 m!1359431))

(declare-fun m!1359433 () Bool)

(assert (=> start!125850 m!1359433))

(declare-fun m!1359435 () Bool)

(assert (=> start!125850 m!1359435))

(declare-fun m!1359437 () Bool)

(assert (=> b!1472691 m!1359437))

(assert (=> b!1472691 m!1359437))

(declare-fun m!1359439 () Bool)

(assert (=> b!1472691 m!1359439))

(assert (=> b!1472690 m!1359437))

(assert (=> b!1472690 m!1359437))

(declare-fun m!1359441 () Bool)

(assert (=> b!1472690 m!1359441))

(assert (=> b!1472698 m!1359437))

(assert (=> b!1472698 m!1359437))

(declare-fun m!1359443 () Bool)

(assert (=> b!1472698 m!1359443))

(assert (=> b!1472698 m!1359443))

(assert (=> b!1472698 m!1359437))

(declare-fun m!1359445 () Bool)

(assert (=> b!1472698 m!1359445))

(declare-fun m!1359447 () Bool)

(assert (=> b!1472692 m!1359447))

(assert (=> b!1472692 m!1359447))

(declare-fun m!1359449 () Bool)

(assert (=> b!1472692 m!1359449))

(declare-fun m!1359451 () Bool)

(assert (=> b!1472692 m!1359451))

(declare-fun m!1359453 () Bool)

(assert (=> b!1472692 m!1359453))

(declare-fun m!1359455 () Bool)

(assert (=> b!1472703 m!1359455))

(declare-fun m!1359457 () Bool)

(assert (=> b!1472689 m!1359457))

(declare-fun m!1359459 () Bool)

(assert (=> b!1472689 m!1359459))

(declare-fun m!1359461 () Bool)

(assert (=> b!1472699 m!1359461))

(assert (=> b!1472699 m!1359437))

(assert (=> b!1472697 m!1359437))

(assert (=> b!1472697 m!1359437))

(declare-fun m!1359463 () Bool)

(assert (=> b!1472697 m!1359463))

(declare-fun m!1359465 () Bool)

(assert (=> b!1472700 m!1359465))

(assert (=> b!1472696 m!1359451))

(declare-fun m!1359467 () Bool)

(assert (=> b!1472696 m!1359467))

(declare-fun m!1359469 () Bool)

(assert (=> b!1472694 m!1359469))

(assert (=> b!1472694 m!1359469))

(declare-fun m!1359471 () Bool)

(assert (=> b!1472694 m!1359471))

(check-sat (not b!1472694) (not b!1472690) (not b!1472698) (not b!1472703) (not b!1472700) (not b!1472691) (not b!1472704) (not start!125850) (not b!1472701) (not b!1472689) (not b!1472697) (not b!1472692))
(check-sat)
