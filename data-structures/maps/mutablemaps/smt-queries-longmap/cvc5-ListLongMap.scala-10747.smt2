; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125722 () Bool)

(assert start!125722)

(declare-fun res!998817 () Bool)

(declare-fun e!825530 () Bool)

(assert (=> start!125722 (=> (not res!998817) (not e!825530))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125722 (= res!998817 (validMask!0 mask!2687))))

(assert (=> start!125722 e!825530))

(assert (=> start!125722 true))

(declare-datatypes ((array!99030 0))(
  ( (array!99031 (arr!47797 (Array (_ BitVec 32) (_ BitVec 64))) (size!48348 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99030)

(declare-fun array_inv!36742 (array!99030) Bool)

(assert (=> start!125722 (array_inv!36742 a!2862)))

(declare-fun b!1470598 () Bool)

(declare-fun res!998816 () Bool)

(assert (=> b!1470598 (=> (not res!998816) (not e!825530))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470598 (= res!998816 (validKeyInArray!0 (select (arr!47797 a!2862) i!1006)))))

(declare-fun lt!642942 () (_ BitVec 64))

(declare-fun b!1470599 () Bool)

(declare-fun lt!642940 () array!99030)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!825534 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12060 0))(
  ( (MissingZero!12060 (index!50631 (_ BitVec 32))) (Found!12060 (index!50632 (_ BitVec 32))) (Intermediate!12060 (undefined!12872 Bool) (index!50633 (_ BitVec 32)) (x!132217 (_ BitVec 32))) (Undefined!12060) (MissingVacant!12060 (index!50634 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99030 (_ BitVec 32)) SeekEntryResult!12060)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99030 (_ BitVec 32)) SeekEntryResult!12060)

(assert (=> b!1470599 (= e!825534 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642942 lt!642940 mask!2687) (seekEntryOrOpen!0 lt!642942 lt!642940 mask!2687)))))

(declare-fun b!1470600 () Bool)

(declare-fun res!998818 () Bool)

(assert (=> b!1470600 (=> (not res!998818) (not e!825530))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470600 (= res!998818 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48348 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48348 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48348 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470601 () Bool)

(declare-fun res!998807 () Bool)

(declare-fun e!825536 () Bool)

(assert (=> b!1470601 (=> (not res!998807) (not e!825536))))

(declare-fun lt!642939 () SeekEntryResult!12060)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99030 (_ BitVec 32)) SeekEntryResult!12060)

(assert (=> b!1470601 (= res!998807 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47797 a!2862) j!93) a!2862 mask!2687) lt!642939))))

(declare-fun b!1470602 () Bool)

(declare-fun e!825532 () Bool)

(assert (=> b!1470602 (= e!825536 e!825532)))

(declare-fun res!998811 () Bool)

(assert (=> b!1470602 (=> (not res!998811) (not e!825532))))

(declare-fun lt!642943 () SeekEntryResult!12060)

(assert (=> b!1470602 (= res!998811 (= lt!642943 (Intermediate!12060 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470602 (= lt!642943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642942 mask!2687) lt!642942 lt!642940 mask!2687))))

(assert (=> b!1470602 (= lt!642942 (select (store (arr!47797 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470603 () Bool)

(declare-fun e!825531 () Bool)

(assert (=> b!1470603 (= e!825531 (= (seekEntryOrOpen!0 (select (arr!47797 a!2862) j!93) a!2862 mask!2687) (Found!12060 j!93)))))

(declare-fun b!1470604 () Bool)

(declare-fun res!998819 () Bool)

(assert (=> b!1470604 (=> (not res!998819) (not e!825532))))

(assert (=> b!1470604 (= res!998819 e!825534)))

(declare-fun c!135410 () Bool)

(assert (=> b!1470604 (= c!135410 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470605 () Bool)

(declare-fun e!825533 () Bool)

(assert (=> b!1470605 (= e!825533 e!825536)))

(declare-fun res!998808 () Bool)

(assert (=> b!1470605 (=> (not res!998808) (not e!825536))))

(assert (=> b!1470605 (= res!998808 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47797 a!2862) j!93) mask!2687) (select (arr!47797 a!2862) j!93) a!2862 mask!2687) lt!642939))))

(assert (=> b!1470605 (= lt!642939 (Intermediate!12060 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470606 () Bool)

(declare-fun res!998814 () Bool)

(assert (=> b!1470606 (=> (not res!998814) (not e!825530))))

(assert (=> b!1470606 (= res!998814 (and (= (size!48348 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48348 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48348 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470607 () Bool)

(assert (=> b!1470607 (= e!825532 (not true))))

(assert (=> b!1470607 e!825531))

(declare-fun res!998820 () Bool)

(assert (=> b!1470607 (=> (not res!998820) (not e!825531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99030 (_ BitVec 32)) Bool)

(assert (=> b!1470607 (= res!998820 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49408 0))(
  ( (Unit!49409) )
))
(declare-fun lt!642941 () Unit!49408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99030 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49408)

(assert (=> b!1470607 (= lt!642941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470608 () Bool)

(assert (=> b!1470608 (= e!825530 e!825533)))

(declare-fun res!998815 () Bool)

(assert (=> b!1470608 (=> (not res!998815) (not e!825533))))

(assert (=> b!1470608 (= res!998815 (= (select (store (arr!47797 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470608 (= lt!642940 (array!99031 (store (arr!47797 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48348 a!2862)))))

(declare-fun b!1470609 () Bool)

(declare-fun res!998812 () Bool)

(assert (=> b!1470609 (=> (not res!998812) (not e!825530))))

(declare-datatypes ((List!34478 0))(
  ( (Nil!34475) (Cons!34474 (h!35827 (_ BitVec 64)) (t!49179 List!34478)) )
))
(declare-fun arrayNoDuplicates!0 (array!99030 (_ BitVec 32) List!34478) Bool)

(assert (=> b!1470609 (= res!998812 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34475))))

(declare-fun b!1470610 () Bool)

(declare-fun res!998810 () Bool)

(assert (=> b!1470610 (=> (not res!998810) (not e!825532))))

(assert (=> b!1470610 (= res!998810 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470611 () Bool)

(declare-fun res!998813 () Bool)

(assert (=> b!1470611 (=> (not res!998813) (not e!825530))))

(assert (=> b!1470611 (= res!998813 (validKeyInArray!0 (select (arr!47797 a!2862) j!93)))))

(declare-fun b!1470612 () Bool)

(assert (=> b!1470612 (= e!825534 (= lt!642943 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642942 lt!642940 mask!2687)))))

(declare-fun b!1470613 () Bool)

(declare-fun res!998809 () Bool)

(assert (=> b!1470613 (=> (not res!998809) (not e!825530))))

(assert (=> b!1470613 (= res!998809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125722 res!998817) b!1470606))

(assert (= (and b!1470606 res!998814) b!1470598))

(assert (= (and b!1470598 res!998816) b!1470611))

(assert (= (and b!1470611 res!998813) b!1470613))

(assert (= (and b!1470613 res!998809) b!1470609))

(assert (= (and b!1470609 res!998812) b!1470600))

(assert (= (and b!1470600 res!998818) b!1470608))

(assert (= (and b!1470608 res!998815) b!1470605))

(assert (= (and b!1470605 res!998808) b!1470601))

(assert (= (and b!1470601 res!998807) b!1470602))

(assert (= (and b!1470602 res!998811) b!1470604))

(assert (= (and b!1470604 c!135410) b!1470612))

(assert (= (and b!1470604 (not c!135410)) b!1470599))

(assert (= (and b!1470604 res!998819) b!1470610))

(assert (= (and b!1470610 res!998810) b!1470607))

(assert (= (and b!1470607 res!998820) b!1470603))

(declare-fun m!1357635 () Bool)

(assert (=> b!1470613 m!1357635))

(declare-fun m!1357637 () Bool)

(assert (=> b!1470602 m!1357637))

(assert (=> b!1470602 m!1357637))

(declare-fun m!1357639 () Bool)

(assert (=> b!1470602 m!1357639))

(declare-fun m!1357641 () Bool)

(assert (=> b!1470602 m!1357641))

(declare-fun m!1357643 () Bool)

(assert (=> b!1470602 m!1357643))

(declare-fun m!1357645 () Bool)

(assert (=> b!1470599 m!1357645))

(declare-fun m!1357647 () Bool)

(assert (=> b!1470599 m!1357647))

(declare-fun m!1357649 () Bool)

(assert (=> b!1470607 m!1357649))

(declare-fun m!1357651 () Bool)

(assert (=> b!1470607 m!1357651))

(declare-fun m!1357653 () Bool)

(assert (=> start!125722 m!1357653))

(declare-fun m!1357655 () Bool)

(assert (=> start!125722 m!1357655))

(declare-fun m!1357657 () Bool)

(assert (=> b!1470611 m!1357657))

(assert (=> b!1470611 m!1357657))

(declare-fun m!1357659 () Bool)

(assert (=> b!1470611 m!1357659))

(declare-fun m!1357661 () Bool)

(assert (=> b!1470612 m!1357661))

(assert (=> b!1470601 m!1357657))

(assert (=> b!1470601 m!1357657))

(declare-fun m!1357663 () Bool)

(assert (=> b!1470601 m!1357663))

(assert (=> b!1470608 m!1357641))

(declare-fun m!1357665 () Bool)

(assert (=> b!1470608 m!1357665))

(declare-fun m!1357667 () Bool)

(assert (=> b!1470598 m!1357667))

(assert (=> b!1470598 m!1357667))

(declare-fun m!1357669 () Bool)

(assert (=> b!1470598 m!1357669))

(declare-fun m!1357671 () Bool)

(assert (=> b!1470609 m!1357671))

(assert (=> b!1470605 m!1357657))

(assert (=> b!1470605 m!1357657))

(declare-fun m!1357673 () Bool)

(assert (=> b!1470605 m!1357673))

(assert (=> b!1470605 m!1357673))

(assert (=> b!1470605 m!1357657))

(declare-fun m!1357675 () Bool)

(assert (=> b!1470605 m!1357675))

(assert (=> b!1470603 m!1357657))

(assert (=> b!1470603 m!1357657))

(declare-fun m!1357677 () Bool)

(assert (=> b!1470603 m!1357677))

(push 1)

