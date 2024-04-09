; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125720 () Bool)

(assert start!125720)

(declare-fun b!1470550 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99028 0))(
  ( (array!99029 (arr!47796 (Array (_ BitVec 32) (_ BitVec 64))) (size!48347 (_ BitVec 32))) )
))
(declare-fun lt!642927 () array!99028)

(declare-fun lt!642925 () (_ BitVec 64))

(declare-fun e!825512 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12059 0))(
  ( (MissingZero!12059 (index!50627 (_ BitVec 32))) (Found!12059 (index!50628 (_ BitVec 32))) (Intermediate!12059 (undefined!12871 Bool) (index!50629 (_ BitVec 32)) (x!132208 (_ BitVec 32))) (Undefined!12059) (MissingVacant!12059 (index!50630 (_ BitVec 32))) )
))
(declare-fun lt!642928 () SeekEntryResult!12059)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99028 (_ BitVec 32)) SeekEntryResult!12059)

(assert (=> b!1470550 (= e!825512 (= lt!642928 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642925 lt!642927 mask!2687)))))

(declare-fun b!1470551 () Bool)

(declare-fun res!998765 () Bool)

(declare-fun e!825509 () Bool)

(assert (=> b!1470551 (=> (not res!998765) (not e!825509))))

(declare-fun lt!642926 () SeekEntryResult!12059)

(declare-fun a!2862 () array!99028)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1470551 (= res!998765 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47796 a!2862) j!93) a!2862 mask!2687) lt!642926))))

(declare-fun b!1470552 () Bool)

(declare-fun e!825510 () Bool)

(assert (=> b!1470552 (= e!825510 e!825509)))

(declare-fun res!998778 () Bool)

(assert (=> b!1470552 (=> (not res!998778) (not e!825509))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470552 (= res!998778 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47796 a!2862) j!93) mask!2687) (select (arr!47796 a!2862) j!93) a!2862 mask!2687) lt!642926))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470552 (= lt!642926 (Intermediate!12059 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470553 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99028 (_ BitVec 32)) SeekEntryResult!12059)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99028 (_ BitVec 32)) SeekEntryResult!12059)

(assert (=> b!1470553 (= e!825512 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642925 lt!642927 mask!2687) (seekEntryOrOpen!0 lt!642925 lt!642927 mask!2687)))))

(declare-fun b!1470554 () Bool)

(declare-fun res!998777 () Bool)

(declare-fun e!825515 () Bool)

(assert (=> b!1470554 (=> (not res!998777) (not e!825515))))

(assert (=> b!1470554 (= res!998777 e!825512)))

(declare-fun c!135407 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470554 (= c!135407 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!825511 () Bool)

(declare-fun b!1470555 () Bool)

(assert (=> b!1470555 (= e!825511 (= (seekEntryOrOpen!0 (select (arr!47796 a!2862) j!93) a!2862 mask!2687) (Found!12059 j!93)))))

(declare-fun b!1470556 () Bool)

(declare-fun res!998771 () Bool)

(declare-fun e!825513 () Bool)

(assert (=> b!1470556 (=> (not res!998771) (not e!825513))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470556 (= res!998771 (validKeyInArray!0 (select (arr!47796 a!2862) i!1006)))))

(declare-fun b!1470557 () Bool)

(assert (=> b!1470557 (= e!825513 e!825510)))

(declare-fun res!998768 () Bool)

(assert (=> b!1470557 (=> (not res!998768) (not e!825510))))

(assert (=> b!1470557 (= res!998768 (= (select (store (arr!47796 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470557 (= lt!642927 (array!99029 (store (arr!47796 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48347 a!2862)))))

(declare-fun b!1470558 () Bool)

(declare-fun res!998776 () Bool)

(assert (=> b!1470558 (=> (not res!998776) (not e!825515))))

(assert (=> b!1470558 (= res!998776 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470559 () Bool)

(declare-fun res!998773 () Bool)

(assert (=> b!1470559 (=> (not res!998773) (not e!825513))))

(assert (=> b!1470559 (= res!998773 (and (= (size!48347 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48347 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48347 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!998774 () Bool)

(assert (=> start!125720 (=> (not res!998774) (not e!825513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125720 (= res!998774 (validMask!0 mask!2687))))

(assert (=> start!125720 e!825513))

(assert (=> start!125720 true))

(declare-fun array_inv!36741 (array!99028) Bool)

(assert (=> start!125720 (array_inv!36741 a!2862)))

(declare-fun b!1470560 () Bool)

(declare-fun res!998770 () Bool)

(assert (=> b!1470560 (=> (not res!998770) (not e!825513))))

(assert (=> b!1470560 (= res!998770 (validKeyInArray!0 (select (arr!47796 a!2862) j!93)))))

(declare-fun b!1470561 () Bool)

(declare-fun res!998767 () Bool)

(assert (=> b!1470561 (=> (not res!998767) (not e!825513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99028 (_ BitVec 32)) Bool)

(assert (=> b!1470561 (= res!998767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470562 () Bool)

(declare-fun res!998769 () Bool)

(assert (=> b!1470562 (=> (not res!998769) (not e!825513))))

(declare-datatypes ((List!34477 0))(
  ( (Nil!34474) (Cons!34473 (h!35826 (_ BitVec 64)) (t!49178 List!34477)) )
))
(declare-fun arrayNoDuplicates!0 (array!99028 (_ BitVec 32) List!34477) Bool)

(assert (=> b!1470562 (= res!998769 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34474))))

(declare-fun b!1470563 () Bool)

(assert (=> b!1470563 (= e!825509 e!825515)))

(declare-fun res!998766 () Bool)

(assert (=> b!1470563 (=> (not res!998766) (not e!825515))))

(assert (=> b!1470563 (= res!998766 (= lt!642928 (Intermediate!12059 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1470563 (= lt!642928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642925 mask!2687) lt!642925 lt!642927 mask!2687))))

(assert (=> b!1470563 (= lt!642925 (select (store (arr!47796 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470564 () Bool)

(declare-fun res!998775 () Bool)

(assert (=> b!1470564 (=> (not res!998775) (not e!825513))))

(assert (=> b!1470564 (= res!998775 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48347 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48347 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48347 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470565 () Bool)

(assert (=> b!1470565 (= e!825515 (not true))))

(assert (=> b!1470565 e!825511))

(declare-fun res!998772 () Bool)

(assert (=> b!1470565 (=> (not res!998772) (not e!825511))))

(assert (=> b!1470565 (= res!998772 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49406 0))(
  ( (Unit!49407) )
))
(declare-fun lt!642924 () Unit!49406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99028 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49406)

(assert (=> b!1470565 (= lt!642924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125720 res!998774) b!1470559))

(assert (= (and b!1470559 res!998773) b!1470556))

(assert (= (and b!1470556 res!998771) b!1470560))

(assert (= (and b!1470560 res!998770) b!1470561))

(assert (= (and b!1470561 res!998767) b!1470562))

(assert (= (and b!1470562 res!998769) b!1470564))

(assert (= (and b!1470564 res!998775) b!1470557))

(assert (= (and b!1470557 res!998768) b!1470552))

(assert (= (and b!1470552 res!998778) b!1470551))

(assert (= (and b!1470551 res!998765) b!1470563))

(assert (= (and b!1470563 res!998766) b!1470554))

(assert (= (and b!1470554 c!135407) b!1470550))

(assert (= (and b!1470554 (not c!135407)) b!1470553))

(assert (= (and b!1470554 res!998777) b!1470558))

(assert (= (and b!1470558 res!998776) b!1470565))

(assert (= (and b!1470565 res!998772) b!1470555))

(declare-fun m!1357591 () Bool)

(assert (=> b!1470551 m!1357591))

(assert (=> b!1470551 m!1357591))

(declare-fun m!1357593 () Bool)

(assert (=> b!1470551 m!1357593))

(assert (=> b!1470560 m!1357591))

(assert (=> b!1470560 m!1357591))

(declare-fun m!1357595 () Bool)

(assert (=> b!1470560 m!1357595))

(declare-fun m!1357597 () Bool)

(assert (=> b!1470557 m!1357597))

(declare-fun m!1357599 () Bool)

(assert (=> b!1470557 m!1357599))

(declare-fun m!1357601 () Bool)

(assert (=> b!1470553 m!1357601))

(declare-fun m!1357603 () Bool)

(assert (=> b!1470553 m!1357603))

(declare-fun m!1357605 () Bool)

(assert (=> b!1470561 m!1357605))

(assert (=> b!1470555 m!1357591))

(assert (=> b!1470555 m!1357591))

(declare-fun m!1357607 () Bool)

(assert (=> b!1470555 m!1357607))

(declare-fun m!1357609 () Bool)

(assert (=> start!125720 m!1357609))

(declare-fun m!1357611 () Bool)

(assert (=> start!125720 m!1357611))

(declare-fun m!1357613 () Bool)

(assert (=> b!1470565 m!1357613))

(declare-fun m!1357615 () Bool)

(assert (=> b!1470565 m!1357615))

(declare-fun m!1357617 () Bool)

(assert (=> b!1470562 m!1357617))

(declare-fun m!1357619 () Bool)

(assert (=> b!1470550 m!1357619))

(declare-fun m!1357621 () Bool)

(assert (=> b!1470556 m!1357621))

(assert (=> b!1470556 m!1357621))

(declare-fun m!1357623 () Bool)

(assert (=> b!1470556 m!1357623))

(assert (=> b!1470552 m!1357591))

(assert (=> b!1470552 m!1357591))

(declare-fun m!1357625 () Bool)

(assert (=> b!1470552 m!1357625))

(assert (=> b!1470552 m!1357625))

(assert (=> b!1470552 m!1357591))

(declare-fun m!1357627 () Bool)

(assert (=> b!1470552 m!1357627))

(declare-fun m!1357629 () Bool)

(assert (=> b!1470563 m!1357629))

(assert (=> b!1470563 m!1357629))

(declare-fun m!1357631 () Bool)

(assert (=> b!1470563 m!1357631))

(assert (=> b!1470563 m!1357597))

(declare-fun m!1357633 () Bool)

(assert (=> b!1470563 m!1357633))

(push 1)

