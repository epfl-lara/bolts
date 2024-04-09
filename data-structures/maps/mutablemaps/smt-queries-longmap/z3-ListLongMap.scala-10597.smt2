; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124764 () Bool)

(assert start!124764)

(declare-fun b!1445781 () Bool)

(declare-fun res!977717 () Bool)

(declare-fun e!814404 () Bool)

(assert (=> b!1445781 (=> (not res!977717) (not e!814404))))

(declare-datatypes ((array!98129 0))(
  ( (array!98130 (arr!47348 (Array (_ BitVec 32) (_ BitVec 64))) (size!47899 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98129)

(declare-datatypes ((List!34029 0))(
  ( (Nil!34026) (Cons!34025 (h!35375 (_ BitVec 64)) (t!48730 List!34029)) )
))
(declare-fun arrayNoDuplicates!0 (array!98129 (_ BitVec 32) List!34029) Bool)

(assert (=> b!1445781 (= res!977717 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34026))))

(declare-datatypes ((SeekEntryResult!11623 0))(
  ( (MissingZero!11623 (index!48883 (_ BitVec 32))) (Found!11623 (index!48884 (_ BitVec 32))) (Intermediate!11623 (undefined!12435 Bool) (index!48885 (_ BitVec 32)) (x!130571 (_ BitVec 32))) (Undefined!11623) (MissingVacant!11623 (index!48886 (_ BitVec 32))) )
))
(declare-fun lt!634562 () SeekEntryResult!11623)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634560 () array!98129)

(declare-fun lt!634563 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!814401 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1445782 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98129 (_ BitVec 32)) SeekEntryResult!11623)

(assert (=> b!1445782 (= e!814401 (= lt!634562 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634563 lt!634560 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!814402 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1445783 () Bool)

(assert (=> b!1445783 (= e!814402 (or (= (select (arr!47348 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47348 a!2862) intermediateBeforeIndex!19) (select (arr!47348 a!2862) j!93))))))

(declare-fun b!1445784 () Bool)

(declare-fun res!977719 () Bool)

(assert (=> b!1445784 (=> (not res!977719) (not e!814404))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445784 (= res!977719 (validKeyInArray!0 (select (arr!47348 a!2862) i!1006)))))

(declare-fun b!1445786 () Bool)

(declare-fun e!814403 () Bool)

(declare-fun e!814405 () Bool)

(assert (=> b!1445786 (= e!814403 e!814405)))

(declare-fun res!977723 () Bool)

(assert (=> b!1445786 (=> (not res!977723) (not e!814405))))

(declare-fun lt!634564 () SeekEntryResult!11623)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445786 (= res!977723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47348 a!2862) j!93) mask!2687) (select (arr!47348 a!2862) j!93) a!2862 mask!2687) lt!634564))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445786 (= lt!634564 (Intermediate!11623 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445787 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98129 (_ BitVec 32)) SeekEntryResult!11623)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98129 (_ BitVec 32)) SeekEntryResult!11623)

(assert (=> b!1445787 (= e!814401 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634563 lt!634560 mask!2687) (seekEntryOrOpen!0 lt!634563 lt!634560 mask!2687)))))

(declare-fun b!1445788 () Bool)

(declare-fun res!977713 () Bool)

(declare-fun e!814406 () Bool)

(assert (=> b!1445788 (=> (not res!977713) (not e!814406))))

(assert (=> b!1445788 (= res!977713 e!814401)))

(declare-fun c!133547 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445788 (= c!133547 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445789 () Bool)

(declare-fun res!977714 () Bool)

(assert (=> b!1445789 (=> (not res!977714) (not e!814404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98129 (_ BitVec 32)) Bool)

(assert (=> b!1445789 (= res!977714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445790 () Bool)

(declare-fun res!977715 () Bool)

(assert (=> b!1445790 (=> (not res!977715) (not e!814402))))

(assert (=> b!1445790 (= res!977715 (= (seekEntryOrOpen!0 (select (arr!47348 a!2862) j!93) a!2862 mask!2687) (Found!11623 j!93)))))

(declare-fun b!1445791 () Bool)

(declare-fun res!977721 () Bool)

(assert (=> b!1445791 (=> (not res!977721) (not e!814405))))

(assert (=> b!1445791 (= res!977721 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47348 a!2862) j!93) a!2862 mask!2687) lt!634564))))

(declare-fun b!1445792 () Bool)

(declare-fun res!977716 () Bool)

(assert (=> b!1445792 (=> (not res!977716) (not e!814404))))

(assert (=> b!1445792 (= res!977716 (validKeyInArray!0 (select (arr!47348 a!2862) j!93)))))

(declare-fun b!1445793 () Bool)

(assert (=> b!1445793 (= e!814406 (not true))))

(assert (=> b!1445793 e!814402))

(declare-fun res!977722 () Bool)

(assert (=> b!1445793 (=> (not res!977722) (not e!814402))))

(assert (=> b!1445793 (= res!977722 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48690 0))(
  ( (Unit!48691) )
))
(declare-fun lt!634561 () Unit!48690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48690)

(assert (=> b!1445793 (= lt!634561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445794 () Bool)

(declare-fun res!977724 () Bool)

(assert (=> b!1445794 (=> (not res!977724) (not e!814406))))

(assert (=> b!1445794 (= res!977724 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445795 () Bool)

(declare-fun res!977718 () Bool)

(assert (=> b!1445795 (=> (not res!977718) (not e!814404))))

(assert (=> b!1445795 (= res!977718 (and (= (size!47899 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47899 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47899 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!977720 () Bool)

(assert (=> start!124764 (=> (not res!977720) (not e!814404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124764 (= res!977720 (validMask!0 mask!2687))))

(assert (=> start!124764 e!814404))

(assert (=> start!124764 true))

(declare-fun array_inv!36293 (array!98129) Bool)

(assert (=> start!124764 (array_inv!36293 a!2862)))

(declare-fun b!1445785 () Bool)

(declare-fun res!977725 () Bool)

(assert (=> b!1445785 (=> (not res!977725) (not e!814404))))

(assert (=> b!1445785 (= res!977725 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47899 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47899 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47899 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445796 () Bool)

(assert (=> b!1445796 (= e!814404 e!814403)))

(declare-fun res!977727 () Bool)

(assert (=> b!1445796 (=> (not res!977727) (not e!814403))))

(assert (=> b!1445796 (= res!977727 (= (select (store (arr!47348 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445796 (= lt!634560 (array!98130 (store (arr!47348 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47899 a!2862)))))

(declare-fun b!1445797 () Bool)

(assert (=> b!1445797 (= e!814405 e!814406)))

(declare-fun res!977726 () Bool)

(assert (=> b!1445797 (=> (not res!977726) (not e!814406))))

(assert (=> b!1445797 (= res!977726 (= lt!634562 (Intermediate!11623 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445797 (= lt!634562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634563 mask!2687) lt!634563 lt!634560 mask!2687))))

(assert (=> b!1445797 (= lt!634563 (select (store (arr!47348 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124764 res!977720) b!1445795))

(assert (= (and b!1445795 res!977718) b!1445784))

(assert (= (and b!1445784 res!977719) b!1445792))

(assert (= (and b!1445792 res!977716) b!1445789))

(assert (= (and b!1445789 res!977714) b!1445781))

(assert (= (and b!1445781 res!977717) b!1445785))

(assert (= (and b!1445785 res!977725) b!1445796))

(assert (= (and b!1445796 res!977727) b!1445786))

(assert (= (and b!1445786 res!977723) b!1445791))

(assert (= (and b!1445791 res!977721) b!1445797))

(assert (= (and b!1445797 res!977726) b!1445788))

(assert (= (and b!1445788 c!133547) b!1445782))

(assert (= (and b!1445788 (not c!133547)) b!1445787))

(assert (= (and b!1445788 res!977713) b!1445794))

(assert (= (and b!1445794 res!977724) b!1445793))

(assert (= (and b!1445793 res!977722) b!1445790))

(assert (= (and b!1445790 res!977715) b!1445783))

(declare-fun m!1334767 () Bool)

(assert (=> b!1445792 m!1334767))

(assert (=> b!1445792 m!1334767))

(declare-fun m!1334769 () Bool)

(assert (=> b!1445792 m!1334769))

(declare-fun m!1334771 () Bool)

(assert (=> b!1445796 m!1334771))

(declare-fun m!1334773 () Bool)

(assert (=> b!1445796 m!1334773))

(assert (=> b!1445790 m!1334767))

(assert (=> b!1445790 m!1334767))

(declare-fun m!1334775 () Bool)

(assert (=> b!1445790 m!1334775))

(assert (=> b!1445791 m!1334767))

(assert (=> b!1445791 m!1334767))

(declare-fun m!1334777 () Bool)

(assert (=> b!1445791 m!1334777))

(declare-fun m!1334779 () Bool)

(assert (=> b!1445787 m!1334779))

(declare-fun m!1334781 () Bool)

(assert (=> b!1445787 m!1334781))

(declare-fun m!1334783 () Bool)

(assert (=> b!1445783 m!1334783))

(assert (=> b!1445783 m!1334767))

(declare-fun m!1334785 () Bool)

(assert (=> b!1445781 m!1334785))

(assert (=> b!1445786 m!1334767))

(assert (=> b!1445786 m!1334767))

(declare-fun m!1334787 () Bool)

(assert (=> b!1445786 m!1334787))

(assert (=> b!1445786 m!1334787))

(assert (=> b!1445786 m!1334767))

(declare-fun m!1334789 () Bool)

(assert (=> b!1445786 m!1334789))

(declare-fun m!1334791 () Bool)

(assert (=> start!124764 m!1334791))

(declare-fun m!1334793 () Bool)

(assert (=> start!124764 m!1334793))

(declare-fun m!1334795 () Bool)

(assert (=> b!1445797 m!1334795))

(assert (=> b!1445797 m!1334795))

(declare-fun m!1334797 () Bool)

(assert (=> b!1445797 m!1334797))

(assert (=> b!1445797 m!1334771))

(declare-fun m!1334799 () Bool)

(assert (=> b!1445797 m!1334799))

(declare-fun m!1334801 () Bool)

(assert (=> b!1445784 m!1334801))

(assert (=> b!1445784 m!1334801))

(declare-fun m!1334803 () Bool)

(assert (=> b!1445784 m!1334803))

(declare-fun m!1334805 () Bool)

(assert (=> b!1445782 m!1334805))

(declare-fun m!1334807 () Bool)

(assert (=> b!1445789 m!1334807))

(declare-fun m!1334809 () Bool)

(assert (=> b!1445793 m!1334809))

(declare-fun m!1334811 () Bool)

(assert (=> b!1445793 m!1334811))

(check-sat (not b!1445797) (not b!1445784) (not b!1445782) (not b!1445786) (not b!1445787) (not b!1445792) (not b!1445789) (not start!124764) (not b!1445791) (not b!1445790) (not b!1445781) (not b!1445793))
