; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127316 () Bool)

(assert start!127316)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1495713 () Bool)

(declare-fun e!837791 () Bool)

(declare-datatypes ((array!99754 0))(
  ( (array!99755 (arr!48138 (Array (_ BitVec 32) (_ BitVec 64))) (size!48689 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99754)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1495713 (= e!837791 (or (= (select (arr!48138 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48138 a!2862) intermediateBeforeIndex!19) (select (arr!48138 a!2862) j!93))))))

(declare-fun b!1495714 () Bool)

(declare-fun res!1017500 () Bool)

(declare-fun e!837793 () Bool)

(assert (=> b!1495714 (=> (not res!1017500) (not e!837793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1495714 (= res!1017500 (validKeyInArray!0 (select (arr!48138 a!2862) j!93)))))

(declare-fun b!1495715 () Bool)

(declare-fun res!1017504 () Bool)

(assert (=> b!1495715 (=> (not res!1017504) (not e!837791))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12401 0))(
  ( (MissingZero!12401 (index!51995 (_ BitVec 32))) (Found!12401 (index!51996 (_ BitVec 32))) (Intermediate!12401 (undefined!13213 Bool) (index!51997 (_ BitVec 32)) (x!133612 (_ BitVec 32))) (Undefined!12401) (MissingVacant!12401 (index!51998 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99754 (_ BitVec 32)) SeekEntryResult!12401)

(assert (=> b!1495715 (= res!1017504 (= (seekEntryOrOpen!0 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) (Found!12401 j!93)))))

(declare-fun b!1495716 () Bool)

(declare-fun e!837789 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1495716 (= e!837789 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1495717 () Bool)

(declare-fun res!1017508 () Bool)

(assert (=> b!1495717 (=> res!1017508 e!837789)))

(declare-fun lt!651804 () SeekEntryResult!12401)

(declare-fun lt!651803 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99754 (_ BitVec 32)) SeekEntryResult!12401)

(assert (=> b!1495717 (= res!1017508 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651803 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651804)))))

(declare-fun b!1495718 () Bool)

(declare-fun res!1017513 () Bool)

(assert (=> b!1495718 (=> (not res!1017513) (not e!837793))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1495718 (= res!1017513 (validKeyInArray!0 (select (arr!48138 a!2862) i!1006)))))

(declare-fun b!1495719 () Bool)

(declare-fun res!1017510 () Bool)

(assert (=> b!1495719 (=> (not res!1017510) (not e!837793))))

(declare-datatypes ((List!34819 0))(
  ( (Nil!34816) (Cons!34815 (h!36210 (_ BitVec 64)) (t!49520 List!34819)) )
))
(declare-fun arrayNoDuplicates!0 (array!99754 (_ BitVec 32) List!34819) Bool)

(assert (=> b!1495719 (= res!1017510 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34816))))

(declare-fun b!1495720 () Bool)

(declare-fun e!837796 () Bool)

(assert (=> b!1495720 (= e!837796 e!837789)))

(declare-fun res!1017501 () Bool)

(assert (=> b!1495720 (=> res!1017501 e!837789)))

(assert (=> b!1495720 (= res!1017501 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651803 #b00000000000000000000000000000000) (bvsge lt!651803 (size!48689 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495720 (= lt!651803 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1495721 () Bool)

(declare-fun e!837797 () Bool)

(declare-fun e!837794 () Bool)

(assert (=> b!1495721 (= e!837797 e!837794)))

(declare-fun res!1017512 () Bool)

(assert (=> b!1495721 (=> (not res!1017512) (not e!837794))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!651802 () SeekEntryResult!12401)

(assert (=> b!1495721 (= res!1017512 (= lt!651802 (Intermediate!12401 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651805 () array!99754)

(declare-fun lt!651800 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495721 (= lt!651802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651800 mask!2687) lt!651800 lt!651805 mask!2687))))

(assert (=> b!1495721 (= lt!651800 (select (store (arr!48138 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1495722 () Bool)

(declare-fun res!1017506 () Bool)

(assert (=> b!1495722 (=> (not res!1017506) (not e!837794))))

(assert (=> b!1495722 (= res!1017506 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1017502 () Bool)

(assert (=> start!127316 (=> (not res!1017502) (not e!837793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127316 (= res!1017502 (validMask!0 mask!2687))))

(assert (=> start!127316 e!837793))

(assert (=> start!127316 true))

(declare-fun array_inv!37083 (array!99754) Bool)

(assert (=> start!127316 (array_inv!37083 a!2862)))

(declare-fun b!1495723 () Bool)

(declare-fun res!1017509 () Bool)

(assert (=> b!1495723 (=> (not res!1017509) (not e!837793))))

(assert (=> b!1495723 (= res!1017509 (and (= (size!48689 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48689 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48689 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1495724 () Bool)

(declare-fun res!1017511 () Bool)

(assert (=> b!1495724 (=> (not res!1017511) (not e!837793))))

(assert (=> b!1495724 (= res!1017511 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48689 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48689 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48689 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1495725 () Bool)

(declare-fun e!837790 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99754 (_ BitVec 32)) SeekEntryResult!12401)

(assert (=> b!1495725 (= e!837790 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651803 intermediateAfterIndex!19 lt!651800 lt!651805 mask!2687) (seekEntryOrOpen!0 lt!651800 lt!651805 mask!2687))))))

(declare-fun b!1495726 () Bool)

(assert (=> b!1495726 (= e!837790 (not (= lt!651802 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651803 lt!651800 lt!651805 mask!2687))))))

(declare-fun e!837788 () Bool)

(declare-fun b!1495727 () Bool)

(assert (=> b!1495727 (= e!837788 (= lt!651802 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651800 lt!651805 mask!2687)))))

(declare-fun b!1495728 () Bool)

(declare-fun res!1017505 () Bool)

(assert (=> b!1495728 (=> (not res!1017505) (not e!837793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99754 (_ BitVec 32)) Bool)

(assert (=> b!1495728 (= res!1017505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1495729 () Bool)

(assert (=> b!1495729 (= e!837788 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651800 lt!651805 mask!2687) (seekEntryOrOpen!0 lt!651800 lt!651805 mask!2687)))))

(declare-fun b!1495730 () Bool)

(declare-fun res!1017514 () Bool)

(assert (=> b!1495730 (=> res!1017514 e!837789)))

(assert (=> b!1495730 (= res!1017514 e!837790)))

(declare-fun c!138644 () Bool)

(assert (=> b!1495730 (= c!138644 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1495731 () Bool)

(declare-fun e!837792 () Bool)

(assert (=> b!1495731 (= e!837793 e!837792)))

(declare-fun res!1017503 () Bool)

(assert (=> b!1495731 (=> (not res!1017503) (not e!837792))))

(assert (=> b!1495731 (= res!1017503 (= (select (store (arr!48138 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495731 (= lt!651805 (array!99755 (store (arr!48138 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48689 a!2862)))))

(declare-fun b!1495732 () Bool)

(declare-fun res!1017499 () Bool)

(assert (=> b!1495732 (=> (not res!1017499) (not e!837794))))

(assert (=> b!1495732 (= res!1017499 e!837788)))

(declare-fun c!138643 () Bool)

(assert (=> b!1495732 (= c!138643 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1495733 () Bool)

(declare-fun res!1017516 () Bool)

(assert (=> b!1495733 (=> (not res!1017516) (not e!837797))))

(assert (=> b!1495733 (= res!1017516 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651804))))

(declare-fun b!1495734 () Bool)

(assert (=> b!1495734 (= e!837792 e!837797)))

(declare-fun res!1017515 () Bool)

(assert (=> b!1495734 (=> (not res!1017515) (not e!837797))))

(assert (=> b!1495734 (= res!1017515 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651804))))

(assert (=> b!1495734 (= lt!651804 (Intermediate!12401 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1495735 () Bool)

(assert (=> b!1495735 (= e!837794 (not e!837796))))

(declare-fun res!1017507 () Bool)

(assert (=> b!1495735 (=> res!1017507 e!837796)))

(assert (=> b!1495735 (= res!1017507 (or (and (= (select (arr!48138 a!2862) index!646) (select (store (arr!48138 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48138 a!2862) index!646) (select (arr!48138 a!2862) j!93))) (= (select (arr!48138 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1495735 e!837791))

(declare-fun res!1017498 () Bool)

(assert (=> b!1495735 (=> (not res!1017498) (not e!837791))))

(assert (=> b!1495735 (= res!1017498 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50090 0))(
  ( (Unit!50091) )
))
(declare-fun lt!651801 () Unit!50090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50090)

(assert (=> b!1495735 (= lt!651801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!127316 res!1017502) b!1495723))

(assert (= (and b!1495723 res!1017509) b!1495718))

(assert (= (and b!1495718 res!1017513) b!1495714))

(assert (= (and b!1495714 res!1017500) b!1495728))

(assert (= (and b!1495728 res!1017505) b!1495719))

(assert (= (and b!1495719 res!1017510) b!1495724))

(assert (= (and b!1495724 res!1017511) b!1495731))

(assert (= (and b!1495731 res!1017503) b!1495734))

(assert (= (and b!1495734 res!1017515) b!1495733))

(assert (= (and b!1495733 res!1017516) b!1495721))

(assert (= (and b!1495721 res!1017512) b!1495732))

(assert (= (and b!1495732 c!138643) b!1495727))

(assert (= (and b!1495732 (not c!138643)) b!1495729))

(assert (= (and b!1495732 res!1017499) b!1495722))

(assert (= (and b!1495722 res!1017506) b!1495735))

(assert (= (and b!1495735 res!1017498) b!1495715))

(assert (= (and b!1495715 res!1017504) b!1495713))

(assert (= (and b!1495735 (not res!1017507)) b!1495720))

(assert (= (and b!1495720 (not res!1017501)) b!1495717))

(assert (= (and b!1495717 (not res!1017508)) b!1495730))

(assert (= (and b!1495730 c!138644) b!1495726))

(assert (= (and b!1495730 (not c!138644)) b!1495725))

(assert (= (and b!1495730 (not res!1017514)) b!1495716))

(declare-fun m!1379141 () Bool)

(assert (=> b!1495719 m!1379141))

(declare-fun m!1379143 () Bool)

(assert (=> b!1495728 m!1379143))

(declare-fun m!1379145 () Bool)

(assert (=> b!1495733 m!1379145))

(assert (=> b!1495733 m!1379145))

(declare-fun m!1379147 () Bool)

(assert (=> b!1495733 m!1379147))

(assert (=> b!1495714 m!1379145))

(assert (=> b!1495714 m!1379145))

(declare-fun m!1379149 () Bool)

(assert (=> b!1495714 m!1379149))

(declare-fun m!1379151 () Bool)

(assert (=> b!1495735 m!1379151))

(declare-fun m!1379153 () Bool)

(assert (=> b!1495735 m!1379153))

(declare-fun m!1379155 () Bool)

(assert (=> b!1495735 m!1379155))

(declare-fun m!1379157 () Bool)

(assert (=> b!1495735 m!1379157))

(declare-fun m!1379159 () Bool)

(assert (=> b!1495735 m!1379159))

(assert (=> b!1495735 m!1379145))

(declare-fun m!1379161 () Bool)

(assert (=> b!1495725 m!1379161))

(declare-fun m!1379163 () Bool)

(assert (=> b!1495725 m!1379163))

(declare-fun m!1379165 () Bool)

(assert (=> b!1495726 m!1379165))

(assert (=> b!1495715 m!1379145))

(assert (=> b!1495715 m!1379145))

(declare-fun m!1379167 () Bool)

(assert (=> b!1495715 m!1379167))

(declare-fun m!1379169 () Bool)

(assert (=> b!1495721 m!1379169))

(assert (=> b!1495721 m!1379169))

(declare-fun m!1379171 () Bool)

(assert (=> b!1495721 m!1379171))

(assert (=> b!1495721 m!1379153))

(declare-fun m!1379173 () Bool)

(assert (=> b!1495721 m!1379173))

(assert (=> b!1495734 m!1379145))

(assert (=> b!1495734 m!1379145))

(declare-fun m!1379175 () Bool)

(assert (=> b!1495734 m!1379175))

(assert (=> b!1495734 m!1379175))

(assert (=> b!1495734 m!1379145))

(declare-fun m!1379177 () Bool)

(assert (=> b!1495734 m!1379177))

(assert (=> b!1495717 m!1379145))

(assert (=> b!1495717 m!1379145))

(declare-fun m!1379179 () Bool)

(assert (=> b!1495717 m!1379179))

(declare-fun m!1379181 () Bool)

(assert (=> start!127316 m!1379181))

(declare-fun m!1379183 () Bool)

(assert (=> start!127316 m!1379183))

(declare-fun m!1379185 () Bool)

(assert (=> b!1495727 m!1379185))

(declare-fun m!1379187 () Bool)

(assert (=> b!1495720 m!1379187))

(declare-fun m!1379189 () Bool)

(assert (=> b!1495729 m!1379189))

(assert (=> b!1495729 m!1379163))

(declare-fun m!1379191 () Bool)

(assert (=> b!1495718 m!1379191))

(assert (=> b!1495718 m!1379191))

(declare-fun m!1379193 () Bool)

(assert (=> b!1495718 m!1379193))

(declare-fun m!1379195 () Bool)

(assert (=> b!1495713 m!1379195))

(assert (=> b!1495713 m!1379145))

(assert (=> b!1495731 m!1379153))

(declare-fun m!1379197 () Bool)

(assert (=> b!1495731 m!1379197))

(push 1)

(assert (not b!1495729))

(assert (not b!1495728))

(assert (not b!1495727))

(assert (not b!1495721))

(assert (not b!1495734))

(assert (not b!1495719))

(assert (not b!1495717))

(assert (not b!1495714))

(assert (not b!1495735))

(assert (not b!1495715))

(assert (not start!127316))

(assert (not b!1495733))

(assert (not b!1495726))

(assert (not b!1495718))

(assert (not b!1495725))

(assert (not b!1495720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1495884 () Bool)

(declare-fun e!837889 () SeekEntryResult!12401)

(declare-fun e!837888 () SeekEntryResult!12401)

(assert (=> b!1495884 (= e!837889 e!837888)))

(declare-fun c!138698 () Bool)

(declare-fun lt!651863 () (_ BitVec 64))

(assert (=> b!1495884 (= c!138698 (or (= lt!651863 (select (arr!48138 a!2862) j!93)) (= (bvadd lt!651863 lt!651863) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157259 () Bool)

(declare-fun e!837885 () Bool)

(assert (=> d!157259 e!837885))

(declare-fun c!138697 () Bool)

(declare-fun lt!651864 () SeekEntryResult!12401)

(assert (=> d!157259 (= c!138697 (and (is-Intermediate!12401 lt!651864) (undefined!13213 lt!651864)))))

(assert (=> d!157259 (= lt!651864 e!837889)))

(declare-fun c!138699 () Bool)

(assert (=> d!157259 (= c!138699 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157259 (= lt!651863 (select (arr!48138 a!2862) index!646))))

(assert (=> d!157259 (validMask!0 mask!2687)))

(assert (=> d!157259 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651864)))

(declare-fun b!1495885 () Bool)

(assert (=> b!1495885 (= e!837888 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48138 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495886 () Bool)

(assert (=> b!1495886 (= e!837889 (Intermediate!12401 true index!646 x!665))))

(declare-fun b!1495887 () Bool)

(assert (=> b!1495887 (and (bvsge (index!51997 lt!651864) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651864) (size!48689 a!2862)))))

(declare-fun res!1017563 () Bool)

(assert (=> b!1495887 (= res!1017563 (= (select (arr!48138 a!2862) (index!51997 lt!651864)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837887 () Bool)

(assert (=> b!1495887 (=> res!1017563 e!837887)))

(declare-fun b!1495888 () Bool)

(declare-fun e!837886 () Bool)

(assert (=> b!1495888 (= e!837885 e!837886)))

(declare-fun res!1017562 () Bool)

(assert (=> b!1495888 (= res!1017562 (and (is-Intermediate!12401 lt!651864) (not (undefined!13213 lt!651864)) (bvslt (x!133612 lt!651864) #b01111111111111111111111111111110) (bvsge (x!133612 lt!651864) #b00000000000000000000000000000000) (bvsge (x!133612 lt!651864) x!665)))))

(assert (=> b!1495888 (=> (not res!1017562) (not e!837886))))

(declare-fun b!1495889 () Bool)

(assert (=> b!1495889 (and (bvsge (index!51997 lt!651864) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651864) (size!48689 a!2862)))))

(assert (=> b!1495889 (= e!837887 (= (select (arr!48138 a!2862) (index!51997 lt!651864)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495890 () Bool)

(assert (=> b!1495890 (= e!837885 (bvsge (x!133612 lt!651864) #b01111111111111111111111111111110))))

(declare-fun b!1495891 () Bool)

(assert (=> b!1495891 (= e!837888 (Intermediate!12401 false index!646 x!665))))

(declare-fun b!1495892 () Bool)

(assert (=> b!1495892 (and (bvsge (index!51997 lt!651864) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651864) (size!48689 a!2862)))))

(declare-fun res!1017564 () Bool)

(assert (=> b!1495892 (= res!1017564 (= (select (arr!48138 a!2862) (index!51997 lt!651864)) (select (arr!48138 a!2862) j!93)))))

(assert (=> b!1495892 (=> res!1017564 e!837887)))

(assert (=> b!1495892 (= e!837886 e!837887)))

(assert (= (and d!157259 c!138699) b!1495886))

(assert (= (and d!157259 (not c!138699)) b!1495884))

(assert (= (and b!1495884 c!138698) b!1495891))

(assert (= (and b!1495884 (not c!138698)) b!1495885))

(assert (= (and d!157259 c!138697) b!1495890))

(assert (= (and d!157259 (not c!138697)) b!1495888))

(assert (= (and b!1495888 res!1017562) b!1495892))

(assert (= (and b!1495892 (not res!1017564)) b!1495887))

(assert (= (and b!1495887 (not res!1017563)) b!1495889))

(declare-fun m!1379273 () Bool)

(assert (=> b!1495889 m!1379273))

(assert (=> b!1495892 m!1379273))

(assert (=> b!1495885 m!1379187))

(assert (=> b!1495885 m!1379187))

(assert (=> b!1495885 m!1379145))

(declare-fun m!1379281 () Bool)

(assert (=> b!1495885 m!1379281))

(assert (=> d!157259 m!1379157))

(assert (=> d!157259 m!1379181))

(assert (=> b!1495887 m!1379273))

(assert (=> b!1495733 d!157259))

(declare-fun b!1495922 () Bool)

(declare-fun e!837907 () Bool)

(declare-fun call!68029 () Bool)

(assert (=> b!1495922 (= e!837907 call!68029)))

(declare-fun b!1495923 () Bool)

(declare-fun e!837909 () Bool)

(assert (=> b!1495923 (= e!837909 call!68029)))

(declare-fun b!1495924 () Bool)

(declare-fun e!837908 () Bool)

(assert (=> b!1495924 (= e!837908 e!837907)))

(declare-fun c!138711 () Bool)

(assert (=> b!1495924 (= c!138711 (validKeyInArray!0 (select (arr!48138 a!2862) j!93)))))

(declare-fun d!157279 () Bool)

(declare-fun res!1017572 () Bool)

(assert (=> d!157279 (=> res!1017572 e!837908)))

(assert (=> d!157279 (= res!1017572 (bvsge j!93 (size!48689 a!2862)))))

(assert (=> d!157279 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837908)))

(declare-fun bm!68026 () Bool)

(assert (=> bm!68026 (= call!68029 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1495925 () Bool)

(assert (=> b!1495925 (= e!837907 e!837909)))

(declare-fun lt!651880 () (_ BitVec 64))

(assert (=> b!1495925 (= lt!651880 (select (arr!48138 a!2862) j!93))))

(declare-fun lt!651882 () Unit!50090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99754 (_ BitVec 64) (_ BitVec 32)) Unit!50090)

(assert (=> b!1495925 (= lt!651882 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651880 j!93))))

(declare-fun arrayContainsKey!0 (array!99754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1495925 (arrayContainsKey!0 a!2862 lt!651880 #b00000000000000000000000000000000)))

(declare-fun lt!651881 () Unit!50090)

(assert (=> b!1495925 (= lt!651881 lt!651882)))

(declare-fun res!1017573 () Bool)

(assert (=> b!1495925 (= res!1017573 (= (seekEntryOrOpen!0 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) (Found!12401 j!93)))))

(assert (=> b!1495925 (=> (not res!1017573) (not e!837909))))

(assert (= (and d!157279 (not res!1017572)) b!1495924))

(assert (= (and b!1495924 c!138711) b!1495925))

(assert (= (and b!1495924 (not c!138711)) b!1495922))

(assert (= (and b!1495925 res!1017573) b!1495923))

(assert (= (or b!1495923 b!1495922) bm!68026))

(assert (=> b!1495924 m!1379145))

(assert (=> b!1495924 m!1379145))

(assert (=> b!1495924 m!1379149))

(declare-fun m!1379301 () Bool)

(assert (=> bm!68026 m!1379301))

(assert (=> b!1495925 m!1379145))

(declare-fun m!1379303 () Bool)

(assert (=> b!1495925 m!1379303))

(declare-fun m!1379305 () Bool)

(assert (=> b!1495925 m!1379305))

(assert (=> b!1495925 m!1379145))

(assert (=> b!1495925 m!1379167))

(assert (=> b!1495735 d!157279))

(declare-fun d!157285 () Bool)

(assert (=> d!157285 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651885 () Unit!50090)

(declare-fun choose!38 (array!99754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50090)

(assert (=> d!157285 (= lt!651885 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157285 (validMask!0 mask!2687)))

(assert (=> d!157285 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651885)))

(declare-fun bs!42916 () Bool)

(assert (= bs!42916 d!157285))

(assert (=> bs!42916 m!1379159))

(declare-fun m!1379307 () Bool)

(assert (=> bs!42916 m!1379307))

(assert (=> bs!42916 m!1379181))

(assert (=> b!1495735 d!157285))

(declare-fun b!1495926 () Bool)

(declare-fun e!837914 () SeekEntryResult!12401)

(declare-fun e!837913 () SeekEntryResult!12401)

(assert (=> b!1495926 (= e!837914 e!837913)))

(declare-fun c!138713 () Bool)

(declare-fun lt!651886 () (_ BitVec 64))

(assert (=> b!1495926 (= c!138713 (or (= lt!651886 (select (arr!48138 a!2862) j!93)) (= (bvadd lt!651886 lt!651886) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157287 () Bool)

(declare-fun e!837910 () Bool)

(assert (=> d!157287 e!837910))

(declare-fun c!138712 () Bool)

(declare-fun lt!651887 () SeekEntryResult!12401)

(assert (=> d!157287 (= c!138712 (and (is-Intermediate!12401 lt!651887) (undefined!13213 lt!651887)))))

(assert (=> d!157287 (= lt!651887 e!837914)))

(declare-fun c!138714 () Bool)

(assert (=> d!157287 (= c!138714 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!157287 (= lt!651886 (select (arr!48138 a!2862) (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687)))))

(assert (=> d!157287 (validMask!0 mask!2687)))

(assert (=> d!157287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651887)))

(declare-fun b!1495927 () Bool)

(assert (=> b!1495927 (= e!837913 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48138 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495928 () Bool)

(assert (=> b!1495928 (= e!837914 (Intermediate!12401 true (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495929 () Bool)

(assert (=> b!1495929 (and (bvsge (index!51997 lt!651887) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651887) (size!48689 a!2862)))))

(declare-fun res!1017575 () Bool)

(assert (=> b!1495929 (= res!1017575 (= (select (arr!48138 a!2862) (index!51997 lt!651887)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837912 () Bool)

(assert (=> b!1495929 (=> res!1017575 e!837912)))

(declare-fun b!1495930 () Bool)

(declare-fun e!837911 () Bool)

(assert (=> b!1495930 (= e!837910 e!837911)))

(declare-fun res!1017574 () Bool)

(assert (=> b!1495930 (= res!1017574 (and (is-Intermediate!12401 lt!651887) (not (undefined!13213 lt!651887)) (bvslt (x!133612 lt!651887) #b01111111111111111111111111111110) (bvsge (x!133612 lt!651887) #b00000000000000000000000000000000) (bvsge (x!133612 lt!651887) #b00000000000000000000000000000000)))))

(assert (=> b!1495930 (=> (not res!1017574) (not e!837911))))

(declare-fun b!1495931 () Bool)

(assert (=> b!1495931 (and (bvsge (index!51997 lt!651887) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651887) (size!48689 a!2862)))))

(assert (=> b!1495931 (= e!837912 (= (select (arr!48138 a!2862) (index!51997 lt!651887)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495932 () Bool)

(assert (=> b!1495932 (= e!837910 (bvsge (x!133612 lt!651887) #b01111111111111111111111111111110))))

(declare-fun b!1495933 () Bool)

(assert (=> b!1495933 (= e!837913 (Intermediate!12401 false (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495934 () Bool)

(assert (=> b!1495934 (and (bvsge (index!51997 lt!651887) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651887) (size!48689 a!2862)))))

(declare-fun res!1017576 () Bool)

(assert (=> b!1495934 (= res!1017576 (= (select (arr!48138 a!2862) (index!51997 lt!651887)) (select (arr!48138 a!2862) j!93)))))

(assert (=> b!1495934 (=> res!1017576 e!837912)))

(assert (=> b!1495934 (= e!837911 e!837912)))

(assert (= (and d!157287 c!138714) b!1495928))

(assert (= (and d!157287 (not c!138714)) b!1495926))

(assert (= (and b!1495926 c!138713) b!1495933))

(assert (= (and b!1495926 (not c!138713)) b!1495927))

(assert (= (and d!157287 c!138712) b!1495932))

(assert (= (and d!157287 (not c!138712)) b!1495930))

(assert (= (and b!1495930 res!1017574) b!1495934))

(assert (= (and b!1495934 (not res!1017576)) b!1495929))

(assert (= (and b!1495929 (not res!1017575)) b!1495931))

(declare-fun m!1379309 () Bool)

(assert (=> b!1495931 m!1379309))

(assert (=> b!1495934 m!1379309))

(assert (=> b!1495927 m!1379175))

(declare-fun m!1379311 () Bool)

(assert (=> b!1495927 m!1379311))

(assert (=> b!1495927 m!1379311))

(assert (=> b!1495927 m!1379145))

(declare-fun m!1379313 () Bool)

(assert (=> b!1495927 m!1379313))

(assert (=> d!157287 m!1379175))

(declare-fun m!1379315 () Bool)

(assert (=> d!157287 m!1379315))

(assert (=> d!157287 m!1379181))

(assert (=> b!1495929 m!1379309))

(assert (=> b!1495734 d!157287))

(declare-fun d!157289 () Bool)

(declare-fun lt!651893 () (_ BitVec 32))

(declare-fun lt!651892 () (_ BitVec 32))

(assert (=> d!157289 (= lt!651893 (bvmul (bvxor lt!651892 (bvlshr lt!651892 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157289 (= lt!651892 ((_ extract 31 0) (bvand (bvxor (select (arr!48138 a!2862) j!93) (bvlshr (select (arr!48138 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157289 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017577 (let ((h!36212 ((_ extract 31 0) (bvand (bvxor (select (arr!48138 a!2862) j!93) (bvlshr (select (arr!48138 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133618 (bvmul (bvxor h!36212 (bvlshr h!36212 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133618 (bvlshr x!133618 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017577 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017577 #b00000000000000000000000000000000))))))

(assert (=> d!157289 (= (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) (bvand (bvxor lt!651893 (bvlshr lt!651893 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495734 d!157289))

(declare-fun d!157291 () Bool)

(assert (=> d!157291 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127316 d!157291))

(declare-fun d!157295 () Bool)

(assert (=> d!157295 (= (array_inv!37083 a!2862) (bvsge (size!48689 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127316 d!157295))

(declare-fun d!157297 () Bool)

(declare-fun lt!651907 () SeekEntryResult!12401)

(assert (=> d!157297 (and (or (is-Undefined!12401 lt!651907) (not (is-Found!12401 lt!651907)) (and (bvsge (index!51996 lt!651907) #b00000000000000000000000000000000) (bvslt (index!51996 lt!651907) (size!48689 a!2862)))) (or (is-Undefined!12401 lt!651907) (is-Found!12401 lt!651907) (not (is-MissingZero!12401 lt!651907)) (and (bvsge (index!51995 lt!651907) #b00000000000000000000000000000000) (bvslt (index!51995 lt!651907) (size!48689 a!2862)))) (or (is-Undefined!12401 lt!651907) (is-Found!12401 lt!651907) (is-MissingZero!12401 lt!651907) (not (is-MissingVacant!12401 lt!651907)) (and (bvsge (index!51998 lt!651907) #b00000000000000000000000000000000) (bvslt (index!51998 lt!651907) (size!48689 a!2862)))) (or (is-Undefined!12401 lt!651907) (ite (is-Found!12401 lt!651907) (= (select (arr!48138 a!2862) (index!51996 lt!651907)) (select (arr!48138 a!2862) j!93)) (ite (is-MissingZero!12401 lt!651907) (= (select (arr!48138 a!2862) (index!51995 lt!651907)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12401 lt!651907) (= (select (arr!48138 a!2862) (index!51998 lt!651907)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837932 () SeekEntryResult!12401)

(assert (=> d!157297 (= lt!651907 e!837932)))

(declare-fun c!138732 () Bool)

(declare-fun lt!651908 () SeekEntryResult!12401)

(assert (=> d!157297 (= c!138732 (and (is-Intermediate!12401 lt!651908) (undefined!13213 lt!651908)))))

(assert (=> d!157297 (= lt!651908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48138 a!2862) j!93) mask!2687) (select (arr!48138 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157297 (validMask!0 mask!2687)))

(assert (=> d!157297 (= (seekEntryOrOpen!0 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651907)))

(declare-fun b!1495965 () Bool)

(assert (=> b!1495965 (= e!837932 Undefined!12401)))

(declare-fun b!1495966 () Bool)

(declare-fun e!837930 () SeekEntryResult!12401)

(assert (=> b!1495966 (= e!837930 (Found!12401 (index!51997 lt!651908)))))

(declare-fun b!1495967 () Bool)

(declare-fun e!837931 () SeekEntryResult!12401)

(assert (=> b!1495967 (= e!837931 (MissingZero!12401 (index!51997 lt!651908)))))

(declare-fun b!1495968 () Bool)

(assert (=> b!1495968 (= e!837931 (seekKeyOrZeroReturnVacant!0 (x!133612 lt!651908) (index!51997 lt!651908) (index!51997 lt!651908) (select (arr!48138 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495969 () Bool)

(declare-fun c!138731 () Bool)

(declare-fun lt!651906 () (_ BitVec 64))

(assert (=> b!1495969 (= c!138731 (= lt!651906 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495969 (= e!837930 e!837931)))

(declare-fun b!1495970 () Bool)

(assert (=> b!1495970 (= e!837932 e!837930)))

(assert (=> b!1495970 (= lt!651906 (select (arr!48138 a!2862) (index!51997 lt!651908)))))

(declare-fun c!138730 () Bool)

(assert (=> b!1495970 (= c!138730 (= lt!651906 (select (arr!48138 a!2862) j!93)))))

(assert (= (and d!157297 c!138732) b!1495965))

(assert (= (and d!157297 (not c!138732)) b!1495970))

(assert (= (and b!1495970 c!138730) b!1495966))

(assert (= (and b!1495970 (not c!138730)) b!1495969))

(assert (= (and b!1495969 c!138731) b!1495967))

(assert (= (and b!1495969 (not c!138731)) b!1495968))

(assert (=> d!157297 m!1379175))

(assert (=> d!157297 m!1379145))

(assert (=> d!157297 m!1379177))

(declare-fun m!1379327 () Bool)

(assert (=> d!157297 m!1379327))

(assert (=> d!157297 m!1379181))

(declare-fun m!1379329 () Bool)

(assert (=> d!157297 m!1379329))

(declare-fun m!1379331 () Bool)

(assert (=> d!157297 m!1379331))

(assert (=> d!157297 m!1379145))

(assert (=> d!157297 m!1379175))

(assert (=> b!1495968 m!1379145))

(declare-fun m!1379333 () Bool)

(assert (=> b!1495968 m!1379333))

(declare-fun m!1379335 () Bool)

(assert (=> b!1495970 m!1379335))

(assert (=> b!1495715 d!157297))

(declare-fun d!157301 () Bool)

(assert (=> d!157301 (= (validKeyInArray!0 (select (arr!48138 a!2862) j!93)) (and (not (= (select (arr!48138 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48138 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495714 d!157301))

(declare-fun b!1496001 () Bool)

(declare-fun e!837949 () SeekEntryResult!12401)

(assert (=> b!1496001 (= e!837949 Undefined!12401)))

(declare-fun lt!651922 () SeekEntryResult!12401)

(declare-fun d!157303 () Bool)

(assert (=> d!157303 (and (or (is-Undefined!12401 lt!651922) (not (is-Found!12401 lt!651922)) (and (bvsge (index!51996 lt!651922) #b00000000000000000000000000000000) (bvslt (index!51996 lt!651922) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651922) (is-Found!12401 lt!651922) (not (is-MissingVacant!12401 lt!651922)) (not (= (index!51998 lt!651922) intermediateAfterIndex!19)) (and (bvsge (index!51998 lt!651922) #b00000000000000000000000000000000) (bvslt (index!51998 lt!651922) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651922) (ite (is-Found!12401 lt!651922) (= (select (arr!48138 lt!651805) (index!51996 lt!651922)) lt!651800) (and (is-MissingVacant!12401 lt!651922) (= (index!51998 lt!651922) intermediateAfterIndex!19) (= (select (arr!48138 lt!651805) (index!51998 lt!651922)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157303 (= lt!651922 e!837949)))

(declare-fun c!138749 () Bool)

(assert (=> d!157303 (= c!138749 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651923 () (_ BitVec 64))

(assert (=> d!157303 (= lt!651923 (select (arr!48138 lt!651805) lt!651803))))

(assert (=> d!157303 (validMask!0 mask!2687)))

(assert (=> d!157303 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651803 intermediateAfterIndex!19 lt!651800 lt!651805 mask!2687) lt!651922)))

(declare-fun b!1496002 () Bool)

(declare-fun e!837950 () SeekEntryResult!12401)

(assert (=> b!1496002 (= e!837949 e!837950)))

(declare-fun c!138748 () Bool)

(assert (=> b!1496002 (= c!138748 (= lt!651923 lt!651800))))

(declare-fun b!1496003 () Bool)

(declare-fun c!138750 () Bool)

(assert (=> b!1496003 (= c!138750 (= lt!651923 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837948 () SeekEntryResult!12401)

(assert (=> b!1496003 (= e!837950 e!837948)))

(declare-fun b!1496004 () Bool)

(assert (=> b!1496004 (= e!837948 (MissingVacant!12401 intermediateAfterIndex!19))))

(declare-fun b!1496005 () Bool)

(assert (=> b!1496005 (= e!837950 (Found!12401 lt!651803))))

(declare-fun b!1496006 () Bool)

(assert (=> b!1496006 (= e!837948 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651803 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!651800 lt!651805 mask!2687))))

(assert (= (and d!157303 c!138749) b!1496001))

(assert (= (and d!157303 (not c!138749)) b!1496002))

(assert (= (and b!1496002 c!138748) b!1496005))

(assert (= (and b!1496002 (not c!138748)) b!1496003))

(assert (= (and b!1496003 c!138750) b!1496004))

(assert (= (and b!1496003 (not c!138750)) b!1496006))

(declare-fun m!1379347 () Bool)

(assert (=> d!157303 m!1379347))

(declare-fun m!1379349 () Bool)

(assert (=> d!157303 m!1379349))

(declare-fun m!1379351 () Bool)

(assert (=> d!157303 m!1379351))

(assert (=> d!157303 m!1379181))

(declare-fun m!1379353 () Bool)

(assert (=> b!1496006 m!1379353))

(assert (=> b!1496006 m!1379353))

(declare-fun m!1379355 () Bool)

(assert (=> b!1496006 m!1379355))

(assert (=> b!1495725 d!157303))

(declare-fun d!157309 () Bool)

(declare-fun lt!651925 () SeekEntryResult!12401)

(assert (=> d!157309 (and (or (is-Undefined!12401 lt!651925) (not (is-Found!12401 lt!651925)) (and (bvsge (index!51996 lt!651925) #b00000000000000000000000000000000) (bvslt (index!51996 lt!651925) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651925) (is-Found!12401 lt!651925) (not (is-MissingZero!12401 lt!651925)) (and (bvsge (index!51995 lt!651925) #b00000000000000000000000000000000) (bvslt (index!51995 lt!651925) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651925) (is-Found!12401 lt!651925) (is-MissingZero!12401 lt!651925) (not (is-MissingVacant!12401 lt!651925)) (and (bvsge (index!51998 lt!651925) #b00000000000000000000000000000000) (bvslt (index!51998 lt!651925) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651925) (ite (is-Found!12401 lt!651925) (= (select (arr!48138 lt!651805) (index!51996 lt!651925)) lt!651800) (ite (is-MissingZero!12401 lt!651925) (= (select (arr!48138 lt!651805) (index!51995 lt!651925)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12401 lt!651925) (= (select (arr!48138 lt!651805) (index!51998 lt!651925)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837953 () SeekEntryResult!12401)

(assert (=> d!157309 (= lt!651925 e!837953)))

(declare-fun c!138753 () Bool)

(declare-fun lt!651926 () SeekEntryResult!12401)

(assert (=> d!157309 (= c!138753 (and (is-Intermediate!12401 lt!651926) (undefined!13213 lt!651926)))))

(assert (=> d!157309 (= lt!651926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651800 mask!2687) lt!651800 lt!651805 mask!2687))))

(assert (=> d!157309 (validMask!0 mask!2687)))

(assert (=> d!157309 (= (seekEntryOrOpen!0 lt!651800 lt!651805 mask!2687) lt!651925)))

(declare-fun b!1496007 () Bool)

(assert (=> b!1496007 (= e!837953 Undefined!12401)))

(declare-fun b!1496008 () Bool)

(declare-fun e!837951 () SeekEntryResult!12401)

(assert (=> b!1496008 (= e!837951 (Found!12401 (index!51997 lt!651926)))))

(declare-fun b!1496009 () Bool)

(declare-fun e!837952 () SeekEntryResult!12401)

(assert (=> b!1496009 (= e!837952 (MissingZero!12401 (index!51997 lt!651926)))))

(declare-fun b!1496010 () Bool)

(assert (=> b!1496010 (= e!837952 (seekKeyOrZeroReturnVacant!0 (x!133612 lt!651926) (index!51997 lt!651926) (index!51997 lt!651926) lt!651800 lt!651805 mask!2687))))

(declare-fun b!1496011 () Bool)

(declare-fun c!138752 () Bool)

(declare-fun lt!651924 () (_ BitVec 64))

(assert (=> b!1496011 (= c!138752 (= lt!651924 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496011 (= e!837951 e!837952)))

(declare-fun b!1496012 () Bool)

(assert (=> b!1496012 (= e!837953 e!837951)))

(assert (=> b!1496012 (= lt!651924 (select (arr!48138 lt!651805) (index!51997 lt!651926)))))

(declare-fun c!138751 () Bool)

(assert (=> b!1496012 (= c!138751 (= lt!651924 lt!651800))))

(assert (= (and d!157309 c!138753) b!1496007))

(assert (= (and d!157309 (not c!138753)) b!1496012))

(assert (= (and b!1496012 c!138751) b!1496008))

(assert (= (and b!1496012 (not c!138751)) b!1496011))

(assert (= (and b!1496011 c!138752) b!1496009))

(assert (= (and b!1496011 (not c!138752)) b!1496010))

(assert (=> d!157309 m!1379169))

(assert (=> d!157309 m!1379171))

(declare-fun m!1379357 () Bool)

(assert (=> d!157309 m!1379357))

(assert (=> d!157309 m!1379181))

(declare-fun m!1379359 () Bool)

(assert (=> d!157309 m!1379359))

(declare-fun m!1379361 () Bool)

(assert (=> d!157309 m!1379361))

(assert (=> d!157309 m!1379169))

(declare-fun m!1379363 () Bool)

(assert (=> b!1496010 m!1379363))

(declare-fun m!1379365 () Bool)

(assert (=> b!1496012 m!1379365))

(assert (=> b!1495725 d!157309))

(declare-fun b!1496013 () Bool)

(declare-fun e!837958 () SeekEntryResult!12401)

(declare-fun e!837957 () SeekEntryResult!12401)

(assert (=> b!1496013 (= e!837958 e!837957)))

(declare-fun c!138755 () Bool)

(declare-fun lt!651927 () (_ BitVec 64))

(assert (=> b!1496013 (= c!138755 (or (= lt!651927 lt!651800) (= (bvadd lt!651927 lt!651927) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157311 () Bool)

(declare-fun e!837954 () Bool)

(assert (=> d!157311 e!837954))

(declare-fun c!138754 () Bool)

(declare-fun lt!651928 () SeekEntryResult!12401)

(assert (=> d!157311 (= c!138754 (and (is-Intermediate!12401 lt!651928) (undefined!13213 lt!651928)))))

(assert (=> d!157311 (= lt!651928 e!837958)))

(declare-fun c!138756 () Bool)

(assert (=> d!157311 (= c!138756 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157311 (= lt!651927 (select (arr!48138 lt!651805) index!646))))

(assert (=> d!157311 (validMask!0 mask!2687)))

(assert (=> d!157311 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651800 lt!651805 mask!2687) lt!651928)))

(declare-fun b!1496014 () Bool)

(assert (=> b!1496014 (= e!837957 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651800 lt!651805 mask!2687))))

(declare-fun b!1496015 () Bool)

(assert (=> b!1496015 (= e!837958 (Intermediate!12401 true index!646 x!665))))

(declare-fun b!1496016 () Bool)

(assert (=> b!1496016 (and (bvsge (index!51997 lt!651928) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651928) (size!48689 lt!651805)))))

(declare-fun res!1017579 () Bool)

(assert (=> b!1496016 (= res!1017579 (= (select (arr!48138 lt!651805) (index!51997 lt!651928)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837956 () Bool)

(assert (=> b!1496016 (=> res!1017579 e!837956)))

(declare-fun b!1496017 () Bool)

(declare-fun e!837955 () Bool)

(assert (=> b!1496017 (= e!837954 e!837955)))

(declare-fun res!1017578 () Bool)

(assert (=> b!1496017 (= res!1017578 (and (is-Intermediate!12401 lt!651928) (not (undefined!13213 lt!651928)) (bvslt (x!133612 lt!651928) #b01111111111111111111111111111110) (bvsge (x!133612 lt!651928) #b00000000000000000000000000000000) (bvsge (x!133612 lt!651928) x!665)))))

(assert (=> b!1496017 (=> (not res!1017578) (not e!837955))))

(declare-fun b!1496018 () Bool)

(assert (=> b!1496018 (and (bvsge (index!51997 lt!651928) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651928) (size!48689 lt!651805)))))

(assert (=> b!1496018 (= e!837956 (= (select (arr!48138 lt!651805) (index!51997 lt!651928)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496019 () Bool)

(assert (=> b!1496019 (= e!837954 (bvsge (x!133612 lt!651928) #b01111111111111111111111111111110))))

(declare-fun b!1496020 () Bool)

(assert (=> b!1496020 (= e!837957 (Intermediate!12401 false index!646 x!665))))

(declare-fun b!1496021 () Bool)

(assert (=> b!1496021 (and (bvsge (index!51997 lt!651928) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651928) (size!48689 lt!651805)))))

(declare-fun res!1017580 () Bool)

(assert (=> b!1496021 (= res!1017580 (= (select (arr!48138 lt!651805) (index!51997 lt!651928)) lt!651800))))

(assert (=> b!1496021 (=> res!1017580 e!837956)))

(assert (=> b!1496021 (= e!837955 e!837956)))

(assert (= (and d!157311 c!138756) b!1496015))

(assert (= (and d!157311 (not c!138756)) b!1496013))

(assert (= (and b!1496013 c!138755) b!1496020))

(assert (= (and b!1496013 (not c!138755)) b!1496014))

(assert (= (and d!157311 c!138754) b!1496019))

(assert (= (and d!157311 (not c!138754)) b!1496017))

(assert (= (and b!1496017 res!1017578) b!1496021))

(assert (= (and b!1496021 (not res!1017580)) b!1496016))

(assert (= (and b!1496016 (not res!1017579)) b!1496018))

(declare-fun m!1379367 () Bool)

(assert (=> b!1496018 m!1379367))

(assert (=> b!1496021 m!1379367))

(assert (=> b!1496014 m!1379187))

(assert (=> b!1496014 m!1379187))

(declare-fun m!1379369 () Bool)

(assert (=> b!1496014 m!1379369))

(declare-fun m!1379371 () Bool)

(assert (=> d!157311 m!1379371))

(assert (=> d!157311 m!1379181))

(assert (=> b!1496016 m!1379367))

(assert (=> b!1495727 d!157311))

(declare-fun b!1496022 () Bool)

(declare-fun e!837963 () SeekEntryResult!12401)

(declare-fun e!837962 () SeekEntryResult!12401)

(assert (=> b!1496022 (= e!837963 e!837962)))

(declare-fun c!138758 () Bool)

(declare-fun lt!651929 () (_ BitVec 64))

(assert (=> b!1496022 (= c!138758 (or (= lt!651929 lt!651800) (= (bvadd lt!651929 lt!651929) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157313 () Bool)

(declare-fun e!837959 () Bool)

(assert (=> d!157313 e!837959))

(declare-fun c!138757 () Bool)

(declare-fun lt!651930 () SeekEntryResult!12401)

(assert (=> d!157313 (= c!138757 (and (is-Intermediate!12401 lt!651930) (undefined!13213 lt!651930)))))

(assert (=> d!157313 (= lt!651930 e!837963)))

(declare-fun c!138759 () Bool)

(assert (=> d!157313 (= c!138759 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157313 (= lt!651929 (select (arr!48138 lt!651805) lt!651803))))

(assert (=> d!157313 (validMask!0 mask!2687)))

(assert (=> d!157313 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651803 lt!651800 lt!651805 mask!2687) lt!651930)))

(declare-fun b!1496023 () Bool)

(assert (=> b!1496023 (= e!837962 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651803 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!651800 lt!651805 mask!2687))))

(declare-fun b!1496024 () Bool)

(assert (=> b!1496024 (= e!837963 (Intermediate!12401 true lt!651803 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496025 () Bool)

(assert (=> b!1496025 (and (bvsge (index!51997 lt!651930) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651930) (size!48689 lt!651805)))))

(declare-fun res!1017582 () Bool)

(assert (=> b!1496025 (= res!1017582 (= (select (arr!48138 lt!651805) (index!51997 lt!651930)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837961 () Bool)

(assert (=> b!1496025 (=> res!1017582 e!837961)))

(declare-fun b!1496026 () Bool)

(declare-fun e!837960 () Bool)

(assert (=> b!1496026 (= e!837959 e!837960)))

(declare-fun res!1017581 () Bool)

(assert (=> b!1496026 (= res!1017581 (and (is-Intermediate!12401 lt!651930) (not (undefined!13213 lt!651930)) (bvslt (x!133612 lt!651930) #b01111111111111111111111111111110) (bvsge (x!133612 lt!651930) #b00000000000000000000000000000000) (bvsge (x!133612 lt!651930) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1496026 (=> (not res!1017581) (not e!837960))))

(declare-fun b!1496027 () Bool)

(assert (=> b!1496027 (and (bvsge (index!51997 lt!651930) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651930) (size!48689 lt!651805)))))

(assert (=> b!1496027 (= e!837961 (= (select (arr!48138 lt!651805) (index!51997 lt!651930)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496028 () Bool)

(assert (=> b!1496028 (= e!837959 (bvsge (x!133612 lt!651930) #b01111111111111111111111111111110))))

(declare-fun b!1496029 () Bool)

(assert (=> b!1496029 (= e!837962 (Intermediate!12401 false lt!651803 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496030 () Bool)

(assert (=> b!1496030 (and (bvsge (index!51997 lt!651930) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651930) (size!48689 lt!651805)))))

(declare-fun res!1017583 () Bool)

(assert (=> b!1496030 (= res!1017583 (= (select (arr!48138 lt!651805) (index!51997 lt!651930)) lt!651800))))

(assert (=> b!1496030 (=> res!1017583 e!837961)))

(assert (=> b!1496030 (= e!837960 e!837961)))

(assert (= (and d!157313 c!138759) b!1496024))

(assert (= (and d!157313 (not c!138759)) b!1496022))

(assert (= (and b!1496022 c!138758) b!1496029))

(assert (= (and b!1496022 (not c!138758)) b!1496023))

(assert (= (and d!157313 c!138757) b!1496028))

(assert (= (and d!157313 (not c!138757)) b!1496026))

(assert (= (and b!1496026 res!1017581) b!1496030))

(assert (= (and b!1496030 (not res!1017583)) b!1496025))

(assert (= (and b!1496025 (not res!1017582)) b!1496027))

(declare-fun m!1379373 () Bool)

(assert (=> b!1496027 m!1379373))

(assert (=> b!1496030 m!1379373))

(assert (=> b!1496023 m!1379353))

(assert (=> b!1496023 m!1379353))

(declare-fun m!1379375 () Bool)

(assert (=> b!1496023 m!1379375))

(assert (=> d!157313 m!1379351))

(assert (=> d!157313 m!1379181))

(assert (=> b!1496025 m!1379373))

(assert (=> b!1495726 d!157313))

(declare-fun b!1496031 () Bool)

(declare-fun e!837964 () Bool)

(declare-fun call!68030 () Bool)

(assert (=> b!1496031 (= e!837964 call!68030)))

(declare-fun b!1496032 () Bool)

(declare-fun e!837966 () Bool)

(assert (=> b!1496032 (= e!837966 call!68030)))

(declare-fun b!1496033 () Bool)

(declare-fun e!837965 () Bool)

(assert (=> b!1496033 (= e!837965 e!837964)))

(declare-fun c!138760 () Bool)

(assert (=> b!1496033 (= c!138760 (validKeyInArray!0 (select (arr!48138 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!157315 () Bool)

(declare-fun res!1017584 () Bool)

(assert (=> d!157315 (=> res!1017584 e!837965)))

(assert (=> d!157315 (= res!1017584 (bvsge #b00000000000000000000000000000000 (size!48689 a!2862)))))

(assert (=> d!157315 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!837965)))

(declare-fun bm!68027 () Bool)

(assert (=> bm!68027 (= call!68030 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1496034 () Bool)

(assert (=> b!1496034 (= e!837964 e!837966)))

(declare-fun lt!651931 () (_ BitVec 64))

(assert (=> b!1496034 (= lt!651931 (select (arr!48138 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651933 () Unit!50090)

(assert (=> b!1496034 (= lt!651933 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651931 #b00000000000000000000000000000000))))

(assert (=> b!1496034 (arrayContainsKey!0 a!2862 lt!651931 #b00000000000000000000000000000000)))

(declare-fun lt!651932 () Unit!50090)

(assert (=> b!1496034 (= lt!651932 lt!651933)))

(declare-fun res!1017585 () Bool)

(assert (=> b!1496034 (= res!1017585 (= (seekEntryOrOpen!0 (select (arr!48138 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12401 #b00000000000000000000000000000000)))))

(assert (=> b!1496034 (=> (not res!1017585) (not e!837966))))

(assert (= (and d!157315 (not res!1017584)) b!1496033))

(assert (= (and b!1496033 c!138760) b!1496034))

(assert (= (and b!1496033 (not c!138760)) b!1496031))

(assert (= (and b!1496034 res!1017585) b!1496032))

(assert (= (or b!1496032 b!1496031) bm!68027))

(declare-fun m!1379377 () Bool)

(assert (=> b!1496033 m!1379377))

(assert (=> b!1496033 m!1379377))

(declare-fun m!1379379 () Bool)

(assert (=> b!1496033 m!1379379))

(declare-fun m!1379381 () Bool)

(assert (=> bm!68027 m!1379381))

(assert (=> b!1496034 m!1379377))

(declare-fun m!1379383 () Bool)

(assert (=> b!1496034 m!1379383))

(declare-fun m!1379385 () Bool)

(assert (=> b!1496034 m!1379385))

(assert (=> b!1496034 m!1379377))

(declare-fun m!1379387 () Bool)

(assert (=> b!1496034 m!1379387))

(assert (=> b!1495728 d!157315))

(declare-fun b!1496035 () Bool)

(declare-fun e!837971 () SeekEntryResult!12401)

(declare-fun e!837970 () SeekEntryResult!12401)

(assert (=> b!1496035 (= e!837971 e!837970)))

(declare-fun lt!651934 () (_ BitVec 64))

(declare-fun c!138762 () Bool)

(assert (=> b!1496035 (= c!138762 (or (= lt!651934 (select (arr!48138 a!2862) j!93)) (= (bvadd lt!651934 lt!651934) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157317 () Bool)

(declare-fun e!837967 () Bool)

(assert (=> d!157317 e!837967))

(declare-fun c!138761 () Bool)

(declare-fun lt!651935 () SeekEntryResult!12401)

(assert (=> d!157317 (= c!138761 (and (is-Intermediate!12401 lt!651935) (undefined!13213 lt!651935)))))

(assert (=> d!157317 (= lt!651935 e!837971)))

(declare-fun c!138763 () Bool)

(assert (=> d!157317 (= c!138763 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157317 (= lt!651934 (select (arr!48138 a!2862) lt!651803))))

(assert (=> d!157317 (validMask!0 mask!2687)))

(assert (=> d!157317 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651803 (select (arr!48138 a!2862) j!93) a!2862 mask!2687) lt!651935)))

(declare-fun b!1496036 () Bool)

(assert (=> b!1496036 (= e!837970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651803 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48138 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1496037 () Bool)

(assert (=> b!1496037 (= e!837971 (Intermediate!12401 true lt!651803 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496038 () Bool)

(assert (=> b!1496038 (and (bvsge (index!51997 lt!651935) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651935) (size!48689 a!2862)))))

(declare-fun res!1017587 () Bool)

(assert (=> b!1496038 (= res!1017587 (= (select (arr!48138 a!2862) (index!51997 lt!651935)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837969 () Bool)

(assert (=> b!1496038 (=> res!1017587 e!837969)))

(declare-fun b!1496039 () Bool)

(declare-fun e!837968 () Bool)

(assert (=> b!1496039 (= e!837967 e!837968)))

(declare-fun res!1017586 () Bool)

(assert (=> b!1496039 (= res!1017586 (and (is-Intermediate!12401 lt!651935) (not (undefined!13213 lt!651935)) (bvslt (x!133612 lt!651935) #b01111111111111111111111111111110) (bvsge (x!133612 lt!651935) #b00000000000000000000000000000000) (bvsge (x!133612 lt!651935) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1496039 (=> (not res!1017586) (not e!837968))))

(declare-fun b!1496040 () Bool)

(assert (=> b!1496040 (and (bvsge (index!51997 lt!651935) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651935) (size!48689 a!2862)))))

(assert (=> b!1496040 (= e!837969 (= (select (arr!48138 a!2862) (index!51997 lt!651935)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496041 () Bool)

(assert (=> b!1496041 (= e!837967 (bvsge (x!133612 lt!651935) #b01111111111111111111111111111110))))

(declare-fun b!1496042 () Bool)

(assert (=> b!1496042 (= e!837970 (Intermediate!12401 false lt!651803 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496043 () Bool)

(assert (=> b!1496043 (and (bvsge (index!51997 lt!651935) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651935) (size!48689 a!2862)))))

(declare-fun res!1017588 () Bool)

(assert (=> b!1496043 (= res!1017588 (= (select (arr!48138 a!2862) (index!51997 lt!651935)) (select (arr!48138 a!2862) j!93)))))

(assert (=> b!1496043 (=> res!1017588 e!837969)))

(assert (=> b!1496043 (= e!837968 e!837969)))

(assert (= (and d!157317 c!138763) b!1496037))

(assert (= (and d!157317 (not c!138763)) b!1496035))

(assert (= (and b!1496035 c!138762) b!1496042))

(assert (= (and b!1496035 (not c!138762)) b!1496036))

(assert (= (and d!157317 c!138761) b!1496041))

(assert (= (and d!157317 (not c!138761)) b!1496039))

(assert (= (and b!1496039 res!1017586) b!1496043))

(assert (= (and b!1496043 (not res!1017588)) b!1496038))

(assert (= (and b!1496038 (not res!1017587)) b!1496040))

(declare-fun m!1379389 () Bool)

(assert (=> b!1496040 m!1379389))

(assert (=> b!1496043 m!1379389))

(assert (=> b!1496036 m!1379353))

(assert (=> b!1496036 m!1379353))

(assert (=> b!1496036 m!1379145))

(declare-fun m!1379391 () Bool)

(assert (=> b!1496036 m!1379391))

(declare-fun m!1379393 () Bool)

(assert (=> d!157317 m!1379393))

(assert (=> d!157317 m!1379181))

(assert (=> b!1496038 m!1379389))

(assert (=> b!1495717 d!157317))

(declare-fun b!1496054 () Bool)

(declare-fun e!837980 () Bool)

(declare-fun call!68033 () Bool)

(assert (=> b!1496054 (= e!837980 call!68033)))

(declare-fun b!1496055 () Bool)

(declare-fun e!837981 () Bool)

(assert (=> b!1496055 (= e!837981 e!837980)))

(declare-fun c!138766 () Bool)

(assert (=> b!1496055 (= c!138766 (validKeyInArray!0 (select (arr!48138 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!68030 () Bool)

(assert (=> bm!68030 (= call!68033 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138766 (Cons!34815 (select (arr!48138 a!2862) #b00000000000000000000000000000000) Nil!34816) Nil!34816)))))

(declare-fun d!157319 () Bool)

(declare-fun res!1017596 () Bool)

(declare-fun e!837982 () Bool)

(assert (=> d!157319 (=> res!1017596 e!837982)))

(assert (=> d!157319 (= res!1017596 (bvsge #b00000000000000000000000000000000 (size!48689 a!2862)))))

(assert (=> d!157319 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34816) e!837982)))

(declare-fun b!1496056 () Bool)

(assert (=> b!1496056 (= e!837980 call!68033)))

(declare-fun b!1496057 () Bool)

(assert (=> b!1496057 (= e!837982 e!837981)))

(declare-fun res!1017597 () Bool)

(assert (=> b!1496057 (=> (not res!1017597) (not e!837981))))

(declare-fun e!837983 () Bool)

(assert (=> b!1496057 (= res!1017597 (not e!837983))))

(declare-fun res!1017595 () Bool)

(assert (=> b!1496057 (=> (not res!1017595) (not e!837983))))

(assert (=> b!1496057 (= res!1017595 (validKeyInArray!0 (select (arr!48138 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1496058 () Bool)

(declare-fun contains!9947 (List!34819 (_ BitVec 64)) Bool)

(assert (=> b!1496058 (= e!837983 (contains!9947 Nil!34816 (select (arr!48138 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!157319 (not res!1017596)) b!1496057))

(assert (= (and b!1496057 res!1017595) b!1496058))

(assert (= (and b!1496057 res!1017597) b!1496055))

(assert (= (and b!1496055 c!138766) b!1496054))

(assert (= (and b!1496055 (not c!138766)) b!1496056))

(assert (= (or b!1496054 b!1496056) bm!68030))

(assert (=> b!1496055 m!1379377))

(assert (=> b!1496055 m!1379377))

(assert (=> b!1496055 m!1379379))

(assert (=> bm!68030 m!1379377))

(declare-fun m!1379395 () Bool)

(assert (=> bm!68030 m!1379395))

(assert (=> b!1496057 m!1379377))

(assert (=> b!1496057 m!1379377))

(assert (=> b!1496057 m!1379379))

(assert (=> b!1496058 m!1379377))

(assert (=> b!1496058 m!1379377))

(declare-fun m!1379397 () Bool)

(assert (=> b!1496058 m!1379397))

(assert (=> b!1495719 d!157319))

(declare-fun d!157321 () Bool)

(assert (=> d!157321 (= (validKeyInArray!0 (select (arr!48138 a!2862) i!1006)) (and (not (= (select (arr!48138 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48138 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495718 d!157321))

(declare-fun b!1496067 () Bool)

(declare-fun e!837989 () SeekEntryResult!12401)

(assert (=> b!1496067 (= e!837989 Undefined!12401)))

(declare-fun lt!651940 () SeekEntryResult!12401)

(declare-fun d!157323 () Bool)

(assert (=> d!157323 (and (or (is-Undefined!12401 lt!651940) (not (is-Found!12401 lt!651940)) (and (bvsge (index!51996 lt!651940) #b00000000000000000000000000000000) (bvslt (index!51996 lt!651940) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651940) (is-Found!12401 lt!651940) (not (is-MissingVacant!12401 lt!651940)) (not (= (index!51998 lt!651940) intermediateAfterIndex!19)) (and (bvsge (index!51998 lt!651940) #b00000000000000000000000000000000) (bvslt (index!51998 lt!651940) (size!48689 lt!651805)))) (or (is-Undefined!12401 lt!651940) (ite (is-Found!12401 lt!651940) (= (select (arr!48138 lt!651805) (index!51996 lt!651940)) lt!651800) (and (is-MissingVacant!12401 lt!651940) (= (index!51998 lt!651940) intermediateAfterIndex!19) (= (select (arr!48138 lt!651805) (index!51998 lt!651940)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157323 (= lt!651940 e!837989)))

(declare-fun c!138772 () Bool)

(assert (=> d!157323 (= c!138772 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651941 () (_ BitVec 64))

(assert (=> d!157323 (= lt!651941 (select (arr!48138 lt!651805) index!646))))

(assert (=> d!157323 (validMask!0 mask!2687)))

(assert (=> d!157323 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651800 lt!651805 mask!2687) lt!651940)))

(declare-fun b!1496068 () Bool)

(declare-fun e!837990 () SeekEntryResult!12401)

(assert (=> b!1496068 (= e!837989 e!837990)))

(declare-fun c!138771 () Bool)

(assert (=> b!1496068 (= c!138771 (= lt!651941 lt!651800))))

(declare-fun b!1496069 () Bool)

(declare-fun c!138773 () Bool)

(assert (=> b!1496069 (= c!138773 (= lt!651941 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837988 () SeekEntryResult!12401)

(assert (=> b!1496069 (= e!837990 e!837988)))

(declare-fun b!1496070 () Bool)

(assert (=> b!1496070 (= e!837988 (MissingVacant!12401 intermediateAfterIndex!19))))

(declare-fun b!1496071 () Bool)

(assert (=> b!1496071 (= e!837990 (Found!12401 index!646))))

(declare-fun b!1496072 () Bool)

(assert (=> b!1496072 (= e!837988 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651800 lt!651805 mask!2687))))

(assert (= (and d!157323 c!138772) b!1496067))

(assert (= (and d!157323 (not c!138772)) b!1496068))

(assert (= (and b!1496068 c!138771) b!1496071))

(assert (= (and b!1496068 (not c!138771)) b!1496069))

(assert (= (and b!1496069 c!138773) b!1496070))

(assert (= (and b!1496069 (not c!138773)) b!1496072))

(declare-fun m!1379399 () Bool)

(assert (=> d!157323 m!1379399))

(declare-fun m!1379401 () Bool)

(assert (=> d!157323 m!1379401))

(assert (=> d!157323 m!1379371))

(assert (=> d!157323 m!1379181))

(assert (=> b!1496072 m!1379187))

(assert (=> b!1496072 m!1379187))

(declare-fun m!1379403 () Bool)

(assert (=> b!1496072 m!1379403))

(assert (=> b!1495729 d!157323))

(assert (=> b!1495729 d!157309))

(declare-fun d!157325 () Bool)

(declare-fun lt!651944 () (_ BitVec 32))

(assert (=> d!157325 (and (bvsge lt!651944 #b00000000000000000000000000000000) (bvslt lt!651944 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157325 (= lt!651944 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157325 (validMask!0 mask!2687)))

(assert (=> d!157325 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651944)))

(declare-fun bs!42917 () Bool)

(assert (= bs!42917 d!157325))

(declare-fun m!1379405 () Bool)

(assert (=> bs!42917 m!1379405))

(assert (=> bs!42917 m!1379181))

(assert (=> b!1495720 d!157325))

(declare-fun b!1496083 () Bool)

(declare-fun e!838001 () SeekEntryResult!12401)

(declare-fun e!838000 () SeekEntryResult!12401)

(assert (=> b!1496083 (= e!838001 e!838000)))

(declare-fun c!138777 () Bool)

(declare-fun lt!651945 () (_ BitVec 64))

(assert (=> b!1496083 (= c!138777 (or (= lt!651945 lt!651800) (= (bvadd lt!651945 lt!651945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157327 () Bool)

(declare-fun e!837997 () Bool)

(assert (=> d!157327 e!837997))

(declare-fun c!138776 () Bool)

(declare-fun lt!651946 () SeekEntryResult!12401)

(assert (=> d!157327 (= c!138776 (and (is-Intermediate!12401 lt!651946) (undefined!13213 lt!651946)))))

(assert (=> d!157327 (= lt!651946 e!838001)))

(declare-fun c!138778 () Bool)

(assert (=> d!157327 (= c!138778 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!157327 (= lt!651945 (select (arr!48138 lt!651805) (toIndex!0 lt!651800 mask!2687)))))

(assert (=> d!157327 (validMask!0 mask!2687)))

(assert (=> d!157327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651800 mask!2687) lt!651800 lt!651805 mask!2687) lt!651946)))

(declare-fun b!1496084 () Bool)

(assert (=> b!1496084 (= e!838000 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651800 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651800 lt!651805 mask!2687))))

(declare-fun b!1496085 () Bool)

(assert (=> b!1496085 (= e!838001 (Intermediate!12401 true (toIndex!0 lt!651800 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1496086 () Bool)

(assert (=> b!1496086 (and (bvsge (index!51997 lt!651946) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651946) (size!48689 lt!651805)))))

(declare-fun res!1017605 () Bool)

(assert (=> b!1496086 (= res!1017605 (= (select (arr!48138 lt!651805) (index!51997 lt!651946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837999 () Bool)

(assert (=> b!1496086 (=> res!1017605 e!837999)))

(declare-fun b!1496087 () Bool)

(declare-fun e!837998 () Bool)

(assert (=> b!1496087 (= e!837997 e!837998)))

(declare-fun res!1017604 () Bool)

(assert (=> b!1496087 (= res!1017604 (and (is-Intermediate!12401 lt!651946) (not (undefined!13213 lt!651946)) (bvslt (x!133612 lt!651946) #b01111111111111111111111111111110) (bvsge (x!133612 lt!651946) #b00000000000000000000000000000000) (bvsge (x!133612 lt!651946) #b00000000000000000000000000000000)))))

(assert (=> b!1496087 (=> (not res!1017604) (not e!837998))))

(declare-fun b!1496088 () Bool)

(assert (=> b!1496088 (and (bvsge (index!51997 lt!651946) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651946) (size!48689 lt!651805)))))

(assert (=> b!1496088 (= e!837999 (= (select (arr!48138 lt!651805) (index!51997 lt!651946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496089 () Bool)

(assert (=> b!1496089 (= e!837997 (bvsge (x!133612 lt!651946) #b01111111111111111111111111111110))))

(declare-fun b!1496090 () Bool)

(assert (=> b!1496090 (= e!838000 (Intermediate!12401 false (toIndex!0 lt!651800 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1496091 () Bool)

(assert (=> b!1496091 (and (bvsge (index!51997 lt!651946) #b00000000000000000000000000000000) (bvslt (index!51997 lt!651946) (size!48689 lt!651805)))))

(declare-fun res!1017606 () Bool)

(assert (=> b!1496091 (= res!1017606 (= (select (arr!48138 lt!651805) (index!51997 lt!651946)) lt!651800))))

(assert (=> b!1496091 (=> res!1017606 e!837999)))

(assert (=> b!1496091 (= e!837998 e!837999)))

(assert (= (and d!157327 c!138778) b!1496085))

(assert (= (and d!157327 (not c!138778)) b!1496083))

(assert (= (and b!1496083 c!138777) b!1496090))

(assert (= (and b!1496083 (not c!138777)) b!1496084))

(assert (= (and d!157327 c!138776) b!1496089))

(assert (= (and d!157327 (not c!138776)) b!1496087))

(assert (= (and b!1496087 res!1017604) b!1496091))

(assert (= (and b!1496091 (not res!1017606)) b!1496086))

(assert (= (and b!1496086 (not res!1017605)) b!1496088))

(declare-fun m!1379407 () Bool)

(assert (=> b!1496088 m!1379407))

(assert (=> b!1496091 m!1379407))

(assert (=> b!1496084 m!1379169))

(declare-fun m!1379409 () Bool)

(assert (=> b!1496084 m!1379409))

(assert (=> b!1496084 m!1379409))

(declare-fun m!1379411 () Bool)

(assert (=> b!1496084 m!1379411))

(assert (=> d!157327 m!1379169))

(declare-fun m!1379413 () Bool)

(assert (=> d!157327 m!1379413))

(assert (=> d!157327 m!1379181))

(assert (=> b!1496086 m!1379407))

(assert (=> b!1495721 d!157327))

(declare-fun d!157329 () Bool)

(declare-fun lt!651948 () (_ BitVec 32))

(declare-fun lt!651947 () (_ BitVec 32))

(assert (=> d!157329 (= lt!651948 (bvmul (bvxor lt!651947 (bvlshr lt!651947 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157329 (= lt!651947 ((_ extract 31 0) (bvand (bvxor lt!651800 (bvlshr lt!651800 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157329 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017577 (let ((h!36212 ((_ extract 31 0) (bvand (bvxor lt!651800 (bvlshr lt!651800 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133618 (bvmul (bvxor h!36212 (bvlshr h!36212 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133618 (bvlshr x!133618 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017577 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017577 #b00000000000000000000000000000000))))))

(assert (=> d!157329 (= (toIndex!0 lt!651800 mask!2687) (bvand (bvxor lt!651948 (bvlshr lt!651948 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495721 d!157329))

(push 1)

