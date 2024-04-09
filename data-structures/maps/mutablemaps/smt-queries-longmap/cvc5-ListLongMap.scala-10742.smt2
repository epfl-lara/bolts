; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125632 () Bool)

(assert start!125632)

(declare-fun b!1469556 () Bool)

(declare-fun res!998138 () Bool)

(declare-fun e!825026 () Bool)

(assert (=> b!1469556 (=> (not res!998138) (not e!825026))))

(declare-datatypes ((array!98997 0))(
  ( (array!98998 (arr!47782 (Array (_ BitVec 32) (_ BitVec 64))) (size!48333 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98997)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469556 (= res!998138 (validKeyInArray!0 (select (arr!47782 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642563 () (_ BitVec 64))

(declare-fun b!1469557 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!642562 () array!98997)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!825027 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12045 0))(
  ( (MissingZero!12045 (index!50571 (_ BitVec 32))) (Found!12045 (index!50572 (_ BitVec 32))) (Intermediate!12045 (undefined!12857 Bool) (index!50573 (_ BitVec 32)) (x!132153 (_ BitVec 32))) (Undefined!12045) (MissingVacant!12045 (index!50574 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98997 (_ BitVec 32)) SeekEntryResult!12045)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98997 (_ BitVec 32)) SeekEntryResult!12045)

(assert (=> b!1469557 (= e!825027 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642563 lt!642562 mask!2687) (seekEntryOrOpen!0 lt!642563 lt!642562 mask!2687)))))

(declare-fun b!1469558 () Bool)

(declare-fun res!998132 () Bool)

(declare-fun e!825028 () Bool)

(assert (=> b!1469558 (=> (not res!998132) (not e!825028))))

(assert (=> b!1469558 (= res!998132 e!825027)))

(declare-fun c!135227 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469558 (= c!135227 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469559 () Bool)

(declare-fun res!998133 () Bool)

(assert (=> b!1469559 (=> (not res!998133) (not e!825026))))

(declare-datatypes ((List!34463 0))(
  ( (Nil!34460) (Cons!34459 (h!35809 (_ BitVec 64)) (t!49164 List!34463)) )
))
(declare-fun arrayNoDuplicates!0 (array!98997 (_ BitVec 32) List!34463) Bool)

(assert (=> b!1469559 (= res!998133 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34460))))

(declare-fun b!1469560 () Bool)

(declare-fun e!825025 () Bool)

(declare-fun e!825024 () Bool)

(assert (=> b!1469560 (= e!825025 e!825024)))

(declare-fun res!998130 () Bool)

(assert (=> b!1469560 (=> (not res!998130) (not e!825024))))

(declare-fun lt!642565 () SeekEntryResult!12045)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98997 (_ BitVec 32)) SeekEntryResult!12045)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469560 (= res!998130 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47782 a!2862) j!93) mask!2687) (select (arr!47782 a!2862) j!93) a!2862 mask!2687) lt!642565))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469560 (= lt!642565 (Intermediate!12045 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469561 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469561 (= e!825028 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006) (bvsle #b00000000000000000000000000000000 (size!48333 a!2862)) (bvsgt j!93 (size!48333 a!2862))))))

(declare-fun res!998128 () Bool)

(assert (=> start!125632 (=> (not res!998128) (not e!825026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125632 (= res!998128 (validMask!0 mask!2687))))

(assert (=> start!125632 e!825026))

(assert (=> start!125632 true))

(declare-fun array_inv!36727 (array!98997) Bool)

(assert (=> start!125632 (array_inv!36727 a!2862)))

(declare-fun b!1469562 () Bool)

(declare-fun res!998136 () Bool)

(assert (=> b!1469562 (=> (not res!998136) (not e!825026))))

(assert (=> b!1469562 (= res!998136 (validKeyInArray!0 (select (arr!47782 a!2862) i!1006)))))

(declare-fun b!1469563 () Bool)

(declare-fun res!998137 () Bool)

(assert (=> b!1469563 (=> (not res!998137) (not e!825026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98997 (_ BitVec 32)) Bool)

(assert (=> b!1469563 (= res!998137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469564 () Bool)

(assert (=> b!1469564 (= e!825026 e!825025)))

(declare-fun res!998134 () Bool)

(assert (=> b!1469564 (=> (not res!998134) (not e!825025))))

(assert (=> b!1469564 (= res!998134 (= (select (store (arr!47782 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469564 (= lt!642562 (array!98998 (store (arr!47782 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48333 a!2862)))))

(declare-fun b!1469565 () Bool)

(assert (=> b!1469565 (= e!825024 e!825028)))

(declare-fun res!998135 () Bool)

(assert (=> b!1469565 (=> (not res!998135) (not e!825028))))

(declare-fun lt!642564 () SeekEntryResult!12045)

(assert (=> b!1469565 (= res!998135 (= lt!642564 (Intermediate!12045 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469565 (= lt!642564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642563 mask!2687) lt!642563 lt!642562 mask!2687))))

(assert (=> b!1469565 (= lt!642563 (select (store (arr!47782 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469566 () Bool)

(declare-fun res!998139 () Bool)

(assert (=> b!1469566 (=> (not res!998139) (not e!825026))))

(assert (=> b!1469566 (= res!998139 (and (= (size!48333 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48333 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48333 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469567 () Bool)

(assert (=> b!1469567 (= e!825027 (= lt!642564 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642563 lt!642562 mask!2687)))))

(declare-fun b!1469568 () Bool)

(declare-fun res!998131 () Bool)

(assert (=> b!1469568 (=> (not res!998131) (not e!825024))))

(assert (=> b!1469568 (= res!998131 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47782 a!2862) j!93) a!2862 mask!2687) lt!642565))))

(declare-fun b!1469569 () Bool)

(declare-fun res!998129 () Bool)

(assert (=> b!1469569 (=> (not res!998129) (not e!825026))))

(assert (=> b!1469569 (= res!998129 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48333 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48333 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48333 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125632 res!998128) b!1469566))

(assert (= (and b!1469566 res!998139) b!1469562))

(assert (= (and b!1469562 res!998136) b!1469556))

(assert (= (and b!1469556 res!998138) b!1469563))

(assert (= (and b!1469563 res!998137) b!1469559))

(assert (= (and b!1469559 res!998133) b!1469569))

(assert (= (and b!1469569 res!998129) b!1469564))

(assert (= (and b!1469564 res!998134) b!1469560))

(assert (= (and b!1469560 res!998130) b!1469568))

(assert (= (and b!1469568 res!998131) b!1469565))

(assert (= (and b!1469565 res!998135) b!1469558))

(assert (= (and b!1469558 c!135227) b!1469567))

(assert (= (and b!1469558 (not c!135227)) b!1469557))

(assert (= (and b!1469558 res!998132) b!1469561))

(declare-fun m!1356777 () Bool)

(assert (=> b!1469565 m!1356777))

(assert (=> b!1469565 m!1356777))

(declare-fun m!1356779 () Bool)

(assert (=> b!1469565 m!1356779))

(declare-fun m!1356781 () Bool)

(assert (=> b!1469565 m!1356781))

(declare-fun m!1356783 () Bool)

(assert (=> b!1469565 m!1356783))

(assert (=> b!1469564 m!1356781))

(declare-fun m!1356785 () Bool)

(assert (=> b!1469564 m!1356785))

(declare-fun m!1356787 () Bool)

(assert (=> b!1469568 m!1356787))

(assert (=> b!1469568 m!1356787))

(declare-fun m!1356789 () Bool)

(assert (=> b!1469568 m!1356789))

(declare-fun m!1356791 () Bool)

(assert (=> b!1469562 m!1356791))

(assert (=> b!1469562 m!1356791))

(declare-fun m!1356793 () Bool)

(assert (=> b!1469562 m!1356793))

(declare-fun m!1356795 () Bool)

(assert (=> start!125632 m!1356795))

(declare-fun m!1356797 () Bool)

(assert (=> start!125632 m!1356797))

(declare-fun m!1356799 () Bool)

(assert (=> b!1469563 m!1356799))

(assert (=> b!1469560 m!1356787))

(assert (=> b!1469560 m!1356787))

(declare-fun m!1356801 () Bool)

(assert (=> b!1469560 m!1356801))

(assert (=> b!1469560 m!1356801))

(assert (=> b!1469560 m!1356787))

(declare-fun m!1356803 () Bool)

(assert (=> b!1469560 m!1356803))

(declare-fun m!1356805 () Bool)

(assert (=> b!1469557 m!1356805))

(declare-fun m!1356807 () Bool)

(assert (=> b!1469557 m!1356807))

(declare-fun m!1356809 () Bool)

(assert (=> b!1469567 m!1356809))

(assert (=> b!1469556 m!1356787))

(assert (=> b!1469556 m!1356787))

(declare-fun m!1356811 () Bool)

(assert (=> b!1469556 m!1356811))

(declare-fun m!1356813 () Bool)

(assert (=> b!1469559 m!1356813))

(push 1)

(assert (not b!1469560))

(assert (not b!1469562))

(assert (not b!1469565))

(assert (not b!1469563))

(assert (not b!1469567))

(assert (not b!1469557))

(assert (not b!1469556))

(assert (not b!1469559))

(assert (not b!1469568))

(assert (not start!125632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

