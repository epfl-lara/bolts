; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125200 () Bool)

(assert start!125200)

(declare-fun b!1458772 () Bool)

(declare-fun res!988924 () Bool)

(declare-fun e!820509 () Bool)

(assert (=> b!1458772 (=> (not res!988924) (not e!820509))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98565 0))(
  ( (array!98566 (arr!47566 (Array (_ BitVec 32) (_ BitVec 64))) (size!48117 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98565)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11841 0))(
  ( (MissingZero!11841 (index!49755 (_ BitVec 32))) (Found!11841 (index!49756 (_ BitVec 32))) (Intermediate!11841 (undefined!12653 Bool) (index!49757 (_ BitVec 32)) (x!131373 (_ BitVec 32))) (Undefined!11841) (MissingVacant!11841 (index!49758 (_ BitVec 32))) )
))
(declare-fun lt!639148 () SeekEntryResult!11841)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98565 (_ BitVec 32)) SeekEntryResult!11841)

(assert (=> b!1458772 (= res!988924 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47566 a!2862) j!93) a!2862 mask!2687) lt!639148))))

(declare-fun b!1458773 () Bool)

(declare-fun res!988932 () Bool)

(declare-fun e!820503 () Bool)

(assert (=> b!1458773 (=> (not res!988932) (not e!820503))))

(declare-datatypes ((List!34247 0))(
  ( (Nil!34244) (Cons!34243 (h!35593 (_ BitVec 64)) (t!48948 List!34247)) )
))
(declare-fun arrayNoDuplicates!0 (array!98565 (_ BitVec 32) List!34247) Bool)

(assert (=> b!1458773 (= res!988932 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34244))))

(declare-fun b!1458774 () Bool)

(declare-fun res!988929 () Bool)

(assert (=> b!1458774 (=> (not res!988929) (not e!820503))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458774 (= res!988929 (validKeyInArray!0 (select (arr!47566 a!2862) i!1006)))))

(declare-fun b!1458775 () Bool)

(declare-fun e!820506 () Bool)

(assert (=> b!1458775 (= e!820506 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!639147 () SeekEntryResult!11841)

(declare-fun lt!639143 () SeekEntryResult!11841)

(assert (=> b!1458775 (= lt!639147 lt!639143)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49126 0))(
  ( (Unit!49127) )
))
(declare-fun lt!639144 () Unit!49126)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lt!639145 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49126)

(assert (=> b!1458775 (= lt!639144 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639145 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458776 () Bool)

(declare-fun res!988941 () Bool)

(assert (=> b!1458776 (=> res!988941 e!820506)))

(assert (=> b!1458776 (= res!988941 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639145 (select (arr!47566 a!2862) j!93) a!2862 mask!2687) lt!639148)))))

(declare-fun b!1458777 () Bool)

(declare-fun res!988925 () Bool)

(assert (=> b!1458777 (=> (not res!988925) (not e!820503))))

(assert (=> b!1458777 (= res!988925 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48117 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48117 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48117 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!639149 () array!98565)

(declare-fun lt!639151 () (_ BitVec 64))

(declare-fun e!820510 () Bool)

(declare-fun b!1458778 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98565 (_ BitVec 32)) SeekEntryResult!11841)

(assert (=> b!1458778 (= e!820510 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639145 intermediateAfterIndex!19 lt!639151 lt!639149 mask!2687) lt!639143)))))

(declare-fun b!1458779 () Bool)

(declare-fun res!988936 () Bool)

(assert (=> b!1458779 (=> res!988936 e!820506)))

(assert (=> b!1458779 (= res!988936 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1458780 () Bool)

(declare-fun res!988930 () Bool)

(declare-fun e!820504 () Bool)

(assert (=> b!1458780 (=> (not res!988930) (not e!820504))))

(declare-fun e!820508 () Bool)

(assert (=> b!1458780 (= res!988930 e!820508)))

(declare-fun c!134438 () Bool)

(assert (=> b!1458780 (= c!134438 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!988928 () Bool)

(assert (=> start!125200 (=> (not res!988928) (not e!820503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125200 (= res!988928 (validMask!0 mask!2687))))

(assert (=> start!125200 e!820503))

(assert (=> start!125200 true))

(declare-fun array_inv!36511 (array!98565) Bool)

(assert (=> start!125200 (array_inv!36511 a!2862)))

(declare-fun b!1458781 () Bool)

(declare-fun e!820507 () Bool)

(assert (=> b!1458781 (= e!820503 e!820507)))

(declare-fun res!988938 () Bool)

(assert (=> b!1458781 (=> (not res!988938) (not e!820507))))

(assert (=> b!1458781 (= res!988938 (= (select (store (arr!47566 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458781 (= lt!639149 (array!98566 (store (arr!47566 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48117 a!2862)))))

(declare-fun b!1458782 () Bool)

(declare-fun e!820511 () Bool)

(assert (=> b!1458782 (= e!820511 e!820506)))

(declare-fun res!988931 () Bool)

(assert (=> b!1458782 (=> res!988931 e!820506)))

(assert (=> b!1458782 (= res!988931 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639145 #b00000000000000000000000000000000) (bvsge lt!639145 (size!48117 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458782 (= lt!639145 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458782 (= lt!639143 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639151 lt!639149 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98565 (_ BitVec 32)) SeekEntryResult!11841)

(assert (=> b!1458782 (= lt!639143 (seekEntryOrOpen!0 lt!639151 lt!639149 mask!2687))))

(declare-fun b!1458783 () Bool)

(declare-fun res!988927 () Bool)

(assert (=> b!1458783 (=> (not res!988927) (not e!820503))))

(assert (=> b!1458783 (= res!988927 (and (= (size!48117 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48117 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48117 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458784 () Bool)

(declare-fun res!988937 () Bool)

(assert (=> b!1458784 (=> res!988937 e!820506)))

(assert (=> b!1458784 (= res!988937 e!820510)))

(declare-fun c!134437 () Bool)

(assert (=> b!1458784 (= c!134437 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458785 () Bool)

(assert (=> b!1458785 (= e!820508 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639151 lt!639149 mask!2687) (seekEntryOrOpen!0 lt!639151 lt!639149 mask!2687)))))

(declare-fun b!1458786 () Bool)

(declare-fun lt!639146 () SeekEntryResult!11841)

(assert (=> b!1458786 (= e!820508 (= lt!639146 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639151 lt!639149 mask!2687)))))

(declare-fun b!1458787 () Bool)

(assert (=> b!1458787 (= e!820509 e!820504)))

(declare-fun res!988933 () Bool)

(assert (=> b!1458787 (=> (not res!988933) (not e!820504))))

(assert (=> b!1458787 (= res!988933 (= lt!639146 (Intermediate!11841 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458787 (= lt!639146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639151 mask!2687) lt!639151 lt!639149 mask!2687))))

(assert (=> b!1458787 (= lt!639151 (select (store (arr!47566 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458788 () Bool)

(declare-fun res!988934 () Bool)

(assert (=> b!1458788 (=> (not res!988934) (not e!820503))))

(assert (=> b!1458788 (= res!988934 (validKeyInArray!0 (select (arr!47566 a!2862) j!93)))))

(declare-fun b!1458789 () Bool)

(assert (=> b!1458789 (= e!820504 (not e!820511))))

(declare-fun res!988926 () Bool)

(assert (=> b!1458789 (=> res!988926 e!820511)))

(assert (=> b!1458789 (= res!988926 (or (and (= (select (arr!47566 a!2862) index!646) (select (store (arr!47566 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47566 a!2862) index!646) (select (arr!47566 a!2862) j!93))) (= (select (arr!47566 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458789 (and (= lt!639147 (Found!11841 j!93)) (or (= (select (arr!47566 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47566 a!2862) intermediateBeforeIndex!19) (select (arr!47566 a!2862) j!93))) (let ((bdg!53465 (select (store (arr!47566 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47566 a!2862) index!646) bdg!53465) (= (select (arr!47566 a!2862) index!646) (select (arr!47566 a!2862) j!93))) (= (select (arr!47566 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53465 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1458789 (= lt!639147 (seekEntryOrOpen!0 (select (arr!47566 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98565 (_ BitVec 32)) Bool)

(assert (=> b!1458789 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639150 () Unit!49126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49126)

(assert (=> b!1458789 (= lt!639150 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458790 () Bool)

(assert (=> b!1458790 (= e!820507 e!820509)))

(declare-fun res!988939 () Bool)

(assert (=> b!1458790 (=> (not res!988939) (not e!820509))))

(assert (=> b!1458790 (= res!988939 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47566 a!2862) j!93) mask!2687) (select (arr!47566 a!2862) j!93) a!2862 mask!2687) lt!639148))))

(assert (=> b!1458790 (= lt!639148 (Intermediate!11841 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458791 () Bool)

(declare-fun res!988935 () Bool)

(assert (=> b!1458791 (=> (not res!988935) (not e!820504))))

(assert (=> b!1458791 (= res!988935 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458792 () Bool)

(declare-fun res!988940 () Bool)

(assert (=> b!1458792 (=> (not res!988940) (not e!820503))))

(assert (=> b!1458792 (= res!988940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458793 () Bool)

(assert (=> b!1458793 (= e!820510 (not (= lt!639146 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639145 lt!639151 lt!639149 mask!2687))))))

(assert (= (and start!125200 res!988928) b!1458783))

(assert (= (and b!1458783 res!988927) b!1458774))

(assert (= (and b!1458774 res!988929) b!1458788))

(assert (= (and b!1458788 res!988934) b!1458792))

(assert (= (and b!1458792 res!988940) b!1458773))

(assert (= (and b!1458773 res!988932) b!1458777))

(assert (= (and b!1458777 res!988925) b!1458781))

(assert (= (and b!1458781 res!988938) b!1458790))

(assert (= (and b!1458790 res!988939) b!1458772))

(assert (= (and b!1458772 res!988924) b!1458787))

(assert (= (and b!1458787 res!988933) b!1458780))

(assert (= (and b!1458780 c!134438) b!1458786))

(assert (= (and b!1458780 (not c!134438)) b!1458785))

(assert (= (and b!1458780 res!988930) b!1458791))

(assert (= (and b!1458791 res!988935) b!1458789))

(assert (= (and b!1458789 (not res!988926)) b!1458782))

(assert (= (and b!1458782 (not res!988931)) b!1458776))

(assert (= (and b!1458776 (not res!988941)) b!1458784))

(assert (= (and b!1458784 c!134437) b!1458793))

(assert (= (and b!1458784 (not c!134437)) b!1458778))

(assert (= (and b!1458784 (not res!988937)) b!1458779))

(assert (= (and b!1458779 (not res!988936)) b!1458775))

(declare-fun m!1346643 () Bool)

(assert (=> b!1458773 m!1346643))

(declare-fun m!1346645 () Bool)

(assert (=> b!1458788 m!1346645))

(assert (=> b!1458788 m!1346645))

(declare-fun m!1346647 () Bool)

(assert (=> b!1458788 m!1346647))

(declare-fun m!1346649 () Bool)

(assert (=> b!1458786 m!1346649))

(declare-fun m!1346651 () Bool)

(assert (=> b!1458792 m!1346651))

(assert (=> b!1458776 m!1346645))

(assert (=> b!1458776 m!1346645))

(declare-fun m!1346653 () Bool)

(assert (=> b!1458776 m!1346653))

(declare-fun m!1346655 () Bool)

(assert (=> b!1458778 m!1346655))

(declare-fun m!1346657 () Bool)

(assert (=> b!1458787 m!1346657))

(assert (=> b!1458787 m!1346657))

(declare-fun m!1346659 () Bool)

(assert (=> b!1458787 m!1346659))

(declare-fun m!1346661 () Bool)

(assert (=> b!1458787 m!1346661))

(declare-fun m!1346663 () Bool)

(assert (=> b!1458787 m!1346663))

(assert (=> b!1458772 m!1346645))

(assert (=> b!1458772 m!1346645))

(declare-fun m!1346665 () Bool)

(assert (=> b!1458772 m!1346665))

(declare-fun m!1346667 () Bool)

(assert (=> start!125200 m!1346667))

(declare-fun m!1346669 () Bool)

(assert (=> start!125200 m!1346669))

(declare-fun m!1346671 () Bool)

(assert (=> b!1458785 m!1346671))

(declare-fun m!1346673 () Bool)

(assert (=> b!1458785 m!1346673))

(declare-fun m!1346675 () Bool)

(assert (=> b!1458775 m!1346675))

(assert (=> b!1458781 m!1346661))

(declare-fun m!1346677 () Bool)

(assert (=> b!1458781 m!1346677))

(assert (=> b!1458790 m!1346645))

(assert (=> b!1458790 m!1346645))

(declare-fun m!1346679 () Bool)

(assert (=> b!1458790 m!1346679))

(assert (=> b!1458790 m!1346679))

(assert (=> b!1458790 m!1346645))

(declare-fun m!1346681 () Bool)

(assert (=> b!1458790 m!1346681))

(declare-fun m!1346683 () Bool)

(assert (=> b!1458782 m!1346683))

(assert (=> b!1458782 m!1346671))

(assert (=> b!1458782 m!1346673))

(declare-fun m!1346685 () Bool)

(assert (=> b!1458789 m!1346685))

(assert (=> b!1458789 m!1346661))

(declare-fun m!1346687 () Bool)

(assert (=> b!1458789 m!1346687))

(declare-fun m!1346689 () Bool)

(assert (=> b!1458789 m!1346689))

(declare-fun m!1346691 () Bool)

(assert (=> b!1458789 m!1346691))

(assert (=> b!1458789 m!1346645))

(declare-fun m!1346693 () Bool)

(assert (=> b!1458789 m!1346693))

(declare-fun m!1346695 () Bool)

(assert (=> b!1458789 m!1346695))

(assert (=> b!1458789 m!1346645))

(declare-fun m!1346697 () Bool)

(assert (=> b!1458774 m!1346697))

(assert (=> b!1458774 m!1346697))

(declare-fun m!1346699 () Bool)

(assert (=> b!1458774 m!1346699))

(declare-fun m!1346701 () Bool)

(assert (=> b!1458793 m!1346701))

(push 1)

