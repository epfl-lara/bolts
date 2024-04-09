; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125728 () Bool)

(assert start!125728)

(declare-fun b!1470742 () Bool)

(declare-fun e!825598 () Bool)

(declare-fun e!825593 () Bool)

(assert (=> b!1470742 (= e!825598 e!825593)))

(declare-fun res!998945 () Bool)

(assert (=> b!1470742 (=> (not res!998945) (not e!825593))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99036 0))(
  ( (array!99037 (arr!47800 (Array (_ BitVec 32) (_ BitVec 64))) (size!48351 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99036)

(assert (=> b!1470742 (= res!998945 (= (select (store (arr!47800 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642987 () array!99036)

(assert (=> b!1470742 (= lt!642987 (array!99037 (store (arr!47800 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48351 a!2862)))))

(declare-fun b!1470743 () Bool)

(declare-fun res!998934 () Bool)

(assert (=> b!1470743 (=> (not res!998934) (not e!825598))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1470743 (= res!998934 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48351 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48351 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48351 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470744 () Bool)

(declare-fun res!998935 () Bool)

(assert (=> b!1470744 (=> (not res!998935) (not e!825598))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99036 (_ BitVec 32)) Bool)

(assert (=> b!1470744 (= res!998935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470745 () Bool)

(declare-fun e!825597 () Bool)

(declare-fun e!825596 () Bool)

(assert (=> b!1470745 (= e!825597 e!825596)))

(declare-fun res!998933 () Bool)

(assert (=> b!1470745 (=> (not res!998933) (not e!825596))))

(declare-datatypes ((SeekEntryResult!12063 0))(
  ( (MissingZero!12063 (index!50643 (_ BitVec 32))) (Found!12063 (index!50644 (_ BitVec 32))) (Intermediate!12063 (undefined!12875 Bool) (index!50645 (_ BitVec 32)) (x!132228 (_ BitVec 32))) (Undefined!12063) (MissingVacant!12063 (index!50646 (_ BitVec 32))) )
))
(declare-fun lt!642988 () SeekEntryResult!12063)

(assert (=> b!1470745 (= res!998933 (= lt!642988 (Intermediate!12063 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642985 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99036 (_ BitVec 32)) SeekEntryResult!12063)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470745 (= lt!642988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642985 mask!2687) lt!642985 lt!642987 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1470745 (= lt!642985 (select (store (arr!47800 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470747 () Bool)

(declare-fun e!825595 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99036 (_ BitVec 32)) SeekEntryResult!12063)

(assert (=> b!1470747 (= e!825595 (= (seekEntryOrOpen!0 (select (arr!47800 a!2862) j!93) a!2862 mask!2687) (Found!12063 j!93)))))

(declare-fun b!1470748 () Bool)

(declare-fun res!998943 () Bool)

(assert (=> b!1470748 (=> (not res!998943) (not e!825598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470748 (= res!998943 (validKeyInArray!0 (select (arr!47800 a!2862) j!93)))))

(declare-fun b!1470749 () Bool)

(assert (=> b!1470749 (= e!825593 e!825597)))

(declare-fun res!998941 () Bool)

(assert (=> b!1470749 (=> (not res!998941) (not e!825597))))

(declare-fun lt!642984 () SeekEntryResult!12063)

(assert (=> b!1470749 (= res!998941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47800 a!2862) j!93) mask!2687) (select (arr!47800 a!2862) j!93) a!2862 mask!2687) lt!642984))))

(assert (=> b!1470749 (= lt!642984 (Intermediate!12063 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470750 () Bool)

(declare-fun res!998940 () Bool)

(assert (=> b!1470750 (=> (not res!998940) (not e!825598))))

(assert (=> b!1470750 (= res!998940 (and (= (size!48351 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48351 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48351 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470751 () Bool)

(assert (=> b!1470751 (= e!825596 (not true))))

(assert (=> b!1470751 e!825595))

(declare-fun res!998938 () Bool)

(assert (=> b!1470751 (=> (not res!998938) (not e!825595))))

(assert (=> b!1470751 (= res!998938 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49414 0))(
  ( (Unit!49415) )
))
(declare-fun lt!642986 () Unit!49414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99036 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49414)

(assert (=> b!1470751 (= lt!642986 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470752 () Bool)

(declare-fun e!825594 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99036 (_ BitVec 32)) SeekEntryResult!12063)

(assert (=> b!1470752 (= e!825594 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642985 lt!642987 mask!2687) (seekEntryOrOpen!0 lt!642985 lt!642987 mask!2687)))))

(declare-fun b!1470753 () Bool)

(declare-fun res!998946 () Bool)

(assert (=> b!1470753 (=> (not res!998946) (not e!825598))))

(assert (=> b!1470753 (= res!998946 (validKeyInArray!0 (select (arr!47800 a!2862) i!1006)))))

(declare-fun b!1470754 () Bool)

(declare-fun res!998939 () Bool)

(assert (=> b!1470754 (=> (not res!998939) (not e!825596))))

(assert (=> b!1470754 (= res!998939 e!825594)))

(declare-fun c!135419 () Bool)

(assert (=> b!1470754 (= c!135419 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470755 () Bool)

(declare-fun res!998942 () Bool)

(assert (=> b!1470755 (=> (not res!998942) (not e!825596))))

(assert (=> b!1470755 (= res!998942 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470756 () Bool)

(assert (=> b!1470756 (= e!825594 (= lt!642988 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642985 lt!642987 mask!2687)))))

(declare-fun b!1470757 () Bool)

(declare-fun res!998936 () Bool)

(assert (=> b!1470757 (=> (not res!998936) (not e!825597))))

(assert (=> b!1470757 (= res!998936 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47800 a!2862) j!93) a!2862 mask!2687) lt!642984))))

(declare-fun b!1470746 () Bool)

(declare-fun res!998937 () Bool)

(assert (=> b!1470746 (=> (not res!998937) (not e!825598))))

(declare-datatypes ((List!34481 0))(
  ( (Nil!34478) (Cons!34477 (h!35830 (_ BitVec 64)) (t!49182 List!34481)) )
))
(declare-fun arrayNoDuplicates!0 (array!99036 (_ BitVec 32) List!34481) Bool)

(assert (=> b!1470746 (= res!998937 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34478))))

(declare-fun res!998944 () Bool)

(assert (=> start!125728 (=> (not res!998944) (not e!825598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125728 (= res!998944 (validMask!0 mask!2687))))

(assert (=> start!125728 e!825598))

(assert (=> start!125728 true))

(declare-fun array_inv!36745 (array!99036) Bool)

(assert (=> start!125728 (array_inv!36745 a!2862)))

(assert (= (and start!125728 res!998944) b!1470750))

(assert (= (and b!1470750 res!998940) b!1470753))

(assert (= (and b!1470753 res!998946) b!1470748))

(assert (= (and b!1470748 res!998943) b!1470744))

(assert (= (and b!1470744 res!998935) b!1470746))

(assert (= (and b!1470746 res!998937) b!1470743))

(assert (= (and b!1470743 res!998934) b!1470742))

(assert (= (and b!1470742 res!998945) b!1470749))

(assert (= (and b!1470749 res!998941) b!1470757))

(assert (= (and b!1470757 res!998936) b!1470745))

(assert (= (and b!1470745 res!998933) b!1470754))

(assert (= (and b!1470754 c!135419) b!1470756))

(assert (= (and b!1470754 (not c!135419)) b!1470752))

(assert (= (and b!1470754 res!998939) b!1470755))

(assert (= (and b!1470755 res!998942) b!1470751))

(assert (= (and b!1470751 res!998938) b!1470747))

(declare-fun m!1357767 () Bool)

(assert (=> b!1470748 m!1357767))

(assert (=> b!1470748 m!1357767))

(declare-fun m!1357769 () Bool)

(assert (=> b!1470748 m!1357769))

(declare-fun m!1357771 () Bool)

(assert (=> b!1470752 m!1357771))

(declare-fun m!1357773 () Bool)

(assert (=> b!1470752 m!1357773))

(declare-fun m!1357775 () Bool)

(assert (=> start!125728 m!1357775))

(declare-fun m!1357777 () Bool)

(assert (=> start!125728 m!1357777))

(declare-fun m!1357779 () Bool)

(assert (=> b!1470746 m!1357779))

(declare-fun m!1357781 () Bool)

(assert (=> b!1470744 m!1357781))

(declare-fun m!1357783 () Bool)

(assert (=> b!1470745 m!1357783))

(assert (=> b!1470745 m!1357783))

(declare-fun m!1357785 () Bool)

(assert (=> b!1470745 m!1357785))

(declare-fun m!1357787 () Bool)

(assert (=> b!1470745 m!1357787))

(declare-fun m!1357789 () Bool)

(assert (=> b!1470745 m!1357789))

(declare-fun m!1357791 () Bool)

(assert (=> b!1470753 m!1357791))

(assert (=> b!1470753 m!1357791))

(declare-fun m!1357793 () Bool)

(assert (=> b!1470753 m!1357793))

(assert (=> b!1470747 m!1357767))

(assert (=> b!1470747 m!1357767))

(declare-fun m!1357795 () Bool)

(assert (=> b!1470747 m!1357795))

(declare-fun m!1357797 () Bool)

(assert (=> b!1470756 m!1357797))

(assert (=> b!1470749 m!1357767))

(assert (=> b!1470749 m!1357767))

(declare-fun m!1357799 () Bool)

(assert (=> b!1470749 m!1357799))

(assert (=> b!1470749 m!1357799))

(assert (=> b!1470749 m!1357767))

(declare-fun m!1357801 () Bool)

(assert (=> b!1470749 m!1357801))

(declare-fun m!1357803 () Bool)

(assert (=> b!1470751 m!1357803))

(declare-fun m!1357805 () Bool)

(assert (=> b!1470751 m!1357805))

(assert (=> b!1470757 m!1357767))

(assert (=> b!1470757 m!1357767))

(declare-fun m!1357807 () Bool)

(assert (=> b!1470757 m!1357807))

(assert (=> b!1470742 m!1357787))

(declare-fun m!1357809 () Bool)

(assert (=> b!1470742 m!1357809))

(push 1)

