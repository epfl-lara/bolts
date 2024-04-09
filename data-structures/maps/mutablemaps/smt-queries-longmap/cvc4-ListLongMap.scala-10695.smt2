; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125354 () Bool)

(assert start!125354)

(declare-fun b!1463683 () Bool)

(declare-fun e!822661 () Bool)

(declare-fun e!822655 () Bool)

(assert (=> b!1463683 (= e!822661 e!822655)))

(declare-fun res!992989 () Bool)

(assert (=> b!1463683 (=> (not res!992989) (not e!822655))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98719 0))(
  ( (array!98720 (arr!47643 (Array (_ BitVec 32) (_ BitVec 64))) (size!48194 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98719)

(assert (=> b!1463683 (= res!992989 (= (select (store (arr!47643 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640814 () array!98719)

(assert (=> b!1463683 (= lt!640814 (array!98720 (store (arr!47643 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48194 a!2862)))))

(declare-fun b!1463684 () Bool)

(declare-fun res!992996 () Bool)

(assert (=> b!1463684 (=> (not res!992996) (not e!822661))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463684 (= res!992996 (validKeyInArray!0 (select (arr!47643 a!2862) j!93)))))

(declare-fun b!1463685 () Bool)

(declare-fun res!992991 () Bool)

(declare-fun e!822660 () Bool)

(assert (=> b!1463685 (=> (not res!992991) (not e!822660))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463685 (= res!992991 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463686 () Bool)

(declare-fun res!993000 () Bool)

(assert (=> b!1463686 (=> (not res!993000) (not e!822660))))

(declare-fun e!822653 () Bool)

(assert (=> b!1463686 (= res!993000 e!822653)))

(declare-fun c!134863 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1463686 (= c!134863 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463687 () Bool)

(declare-fun res!992993 () Bool)

(assert (=> b!1463687 (=> (not res!992993) (not e!822661))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98719 (_ BitVec 32)) Bool)

(assert (=> b!1463687 (= res!992993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!992984 () Bool)

(assert (=> start!125354 (=> (not res!992984) (not e!822661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125354 (= res!992984 (validMask!0 mask!2687))))

(assert (=> start!125354 e!822661))

(assert (=> start!125354 true))

(declare-fun array_inv!36588 (array!98719) Bool)

(assert (=> start!125354 (array_inv!36588 a!2862)))

(declare-datatypes ((SeekEntryResult!11918 0))(
  ( (MissingZero!11918 (index!50063 (_ BitVec 32))) (Found!11918 (index!50064 (_ BitVec 32))) (Intermediate!11918 (undefined!12730 Bool) (index!50065 (_ BitVec 32)) (x!131650 (_ BitVec 32))) (Undefined!11918) (MissingVacant!11918 (index!50066 (_ BitVec 32))) )
))
(declare-fun lt!640816 () SeekEntryResult!11918)

(declare-fun e!822659 () Bool)

(declare-fun lt!640810 () (_ BitVec 64))

(declare-fun lt!640812 () (_ BitVec 32))

(declare-fun b!1463688 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98719 (_ BitVec 32)) SeekEntryResult!11918)

(assert (=> b!1463688 (= e!822659 (not (= lt!640816 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640812 lt!640810 lt!640814 mask!2687))))))

(declare-fun b!1463689 () Bool)

(declare-fun e!822654 () Bool)

(assert (=> b!1463689 (= e!822660 (not e!822654))))

(declare-fun res!992998 () Bool)

(assert (=> b!1463689 (=> res!992998 e!822654)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1463689 (= res!992998 (or (and (= (select (arr!47643 a!2862) index!646) (select (store (arr!47643 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47643 a!2862) index!646) (select (arr!47643 a!2862) j!93))) (= (select (arr!47643 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822656 () Bool)

(assert (=> b!1463689 e!822656))

(declare-fun res!992997 () Bool)

(assert (=> b!1463689 (=> (not res!992997) (not e!822656))))

(assert (=> b!1463689 (= res!992997 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49280 0))(
  ( (Unit!49281) )
))
(declare-fun lt!640811 () Unit!49280)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49280)

(assert (=> b!1463689 (= lt!640811 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463690 () Bool)

(declare-fun res!992986 () Bool)

(assert (=> b!1463690 (=> (not res!992986) (not e!822661))))

(assert (=> b!1463690 (= res!992986 (and (= (size!48194 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48194 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48194 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463691 () Bool)

(declare-fun e!822658 () Bool)

(assert (=> b!1463691 (= e!822654 e!822658)))

(declare-fun res!992990 () Bool)

(assert (=> b!1463691 (=> res!992990 e!822658)))

(assert (=> b!1463691 (= res!992990 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640812 #b00000000000000000000000000000000) (bvsge lt!640812 (size!48194 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463691 (= lt!640812 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463692 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98719 (_ BitVec 32)) SeekEntryResult!11918)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98719 (_ BitVec 32)) SeekEntryResult!11918)

(assert (=> b!1463692 (= e!822659 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640812 intermediateAfterIndex!19 lt!640810 lt!640814 mask!2687) (seekEntryOrOpen!0 lt!640810 lt!640814 mask!2687))))))

(declare-fun b!1463693 () Bool)

(declare-fun e!822662 () Bool)

(assert (=> b!1463693 (= e!822662 e!822660)))

(declare-fun res!992985 () Bool)

(assert (=> b!1463693 (=> (not res!992985) (not e!822660))))

(assert (=> b!1463693 (= res!992985 (= lt!640816 (Intermediate!11918 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463693 (= lt!640816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640810 mask!2687) lt!640810 lt!640814 mask!2687))))

(assert (=> b!1463693 (= lt!640810 (select (store (arr!47643 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463694 () Bool)

(declare-fun res!992992 () Bool)

(assert (=> b!1463694 (=> (not res!992992) (not e!822661))))

(declare-datatypes ((List!34324 0))(
  ( (Nil!34321) (Cons!34320 (h!35670 (_ BitVec 64)) (t!49025 List!34324)) )
))
(declare-fun arrayNoDuplicates!0 (array!98719 (_ BitVec 32) List!34324) Bool)

(assert (=> b!1463694 (= res!992992 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34321))))

(declare-fun b!1463695 () Bool)

(declare-fun res!992987 () Bool)

(assert (=> b!1463695 (=> (not res!992987) (not e!822656))))

(assert (=> b!1463695 (= res!992987 (= (seekEntryOrOpen!0 (select (arr!47643 a!2862) j!93) a!2862 mask!2687) (Found!11918 j!93)))))

(declare-fun b!1463696 () Bool)

(assert (=> b!1463696 (= e!822658 true)))

(declare-fun lt!640815 () Bool)

(assert (=> b!1463696 (= lt!640815 e!822659)))

(declare-fun c!134864 () Bool)

(assert (=> b!1463696 (= c!134864 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463697 () Bool)

(declare-fun res!992983 () Bool)

(assert (=> b!1463697 (=> (not res!992983) (not e!822661))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1463697 (= res!992983 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48194 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48194 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48194 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463698 () Bool)

(declare-fun res!992988 () Bool)

(assert (=> b!1463698 (=> res!992988 e!822658)))

(declare-fun lt!640813 () SeekEntryResult!11918)

(assert (=> b!1463698 (= res!992988 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640812 (select (arr!47643 a!2862) j!93) a!2862 mask!2687) lt!640813)))))

(declare-fun b!1463699 () Bool)

(assert (=> b!1463699 (= e!822656 (or (= (select (arr!47643 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47643 a!2862) intermediateBeforeIndex!19) (select (arr!47643 a!2862) j!93))))))

(declare-fun b!1463700 () Bool)

(declare-fun res!992994 () Bool)

(assert (=> b!1463700 (=> (not res!992994) (not e!822661))))

(assert (=> b!1463700 (= res!992994 (validKeyInArray!0 (select (arr!47643 a!2862) i!1006)))))

(declare-fun b!1463701 () Bool)

(assert (=> b!1463701 (= e!822653 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640810 lt!640814 mask!2687) (seekEntryOrOpen!0 lt!640810 lt!640814 mask!2687)))))

(declare-fun b!1463702 () Bool)

(declare-fun res!992995 () Bool)

(assert (=> b!1463702 (=> (not res!992995) (not e!822662))))

(assert (=> b!1463702 (= res!992995 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47643 a!2862) j!93) a!2862 mask!2687) lt!640813))))

(declare-fun b!1463703 () Bool)

(assert (=> b!1463703 (= e!822653 (= lt!640816 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640810 lt!640814 mask!2687)))))

(declare-fun b!1463704 () Bool)

(assert (=> b!1463704 (= e!822655 e!822662)))

(declare-fun res!992999 () Bool)

(assert (=> b!1463704 (=> (not res!992999) (not e!822662))))

(assert (=> b!1463704 (= res!992999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47643 a!2862) j!93) mask!2687) (select (arr!47643 a!2862) j!93) a!2862 mask!2687) lt!640813))))

(assert (=> b!1463704 (= lt!640813 (Intermediate!11918 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125354 res!992984) b!1463690))

(assert (= (and b!1463690 res!992986) b!1463700))

(assert (= (and b!1463700 res!992994) b!1463684))

(assert (= (and b!1463684 res!992996) b!1463687))

(assert (= (and b!1463687 res!992993) b!1463694))

(assert (= (and b!1463694 res!992992) b!1463697))

(assert (= (and b!1463697 res!992983) b!1463683))

(assert (= (and b!1463683 res!992989) b!1463704))

(assert (= (and b!1463704 res!992999) b!1463702))

(assert (= (and b!1463702 res!992995) b!1463693))

(assert (= (and b!1463693 res!992985) b!1463686))

(assert (= (and b!1463686 c!134863) b!1463703))

(assert (= (and b!1463686 (not c!134863)) b!1463701))

(assert (= (and b!1463686 res!993000) b!1463685))

(assert (= (and b!1463685 res!992991) b!1463689))

(assert (= (and b!1463689 res!992997) b!1463695))

(assert (= (and b!1463695 res!992987) b!1463699))

(assert (= (and b!1463689 (not res!992998)) b!1463691))

(assert (= (and b!1463691 (not res!992990)) b!1463698))

(assert (= (and b!1463698 (not res!992988)) b!1463696))

(assert (= (and b!1463696 c!134864) b!1463688))

(assert (= (and b!1463696 (not c!134864)) b!1463692))

(declare-fun m!1351037 () Bool)

(assert (=> b!1463700 m!1351037))

(assert (=> b!1463700 m!1351037))

(declare-fun m!1351039 () Bool)

(assert (=> b!1463700 m!1351039))

(declare-fun m!1351041 () Bool)

(assert (=> b!1463695 m!1351041))

(assert (=> b!1463695 m!1351041))

(declare-fun m!1351043 () Bool)

(assert (=> b!1463695 m!1351043))

(declare-fun m!1351045 () Bool)

(assert (=> b!1463694 m!1351045))

(declare-fun m!1351047 () Bool)

(assert (=> b!1463689 m!1351047))

(declare-fun m!1351049 () Bool)

(assert (=> b!1463689 m!1351049))

(declare-fun m!1351051 () Bool)

(assert (=> b!1463689 m!1351051))

(declare-fun m!1351053 () Bool)

(assert (=> b!1463689 m!1351053))

(declare-fun m!1351055 () Bool)

(assert (=> b!1463689 m!1351055))

(assert (=> b!1463689 m!1351041))

(declare-fun m!1351057 () Bool)

(assert (=> b!1463692 m!1351057))

(declare-fun m!1351059 () Bool)

(assert (=> b!1463692 m!1351059))

(declare-fun m!1351061 () Bool)

(assert (=> b!1463691 m!1351061))

(declare-fun m!1351063 () Bool)

(assert (=> start!125354 m!1351063))

(declare-fun m!1351065 () Bool)

(assert (=> start!125354 m!1351065))

(declare-fun m!1351067 () Bool)

(assert (=> b!1463688 m!1351067))

(declare-fun m!1351069 () Bool)

(assert (=> b!1463687 m!1351069))

(assert (=> b!1463684 m!1351041))

(assert (=> b!1463684 m!1351041))

(declare-fun m!1351071 () Bool)

(assert (=> b!1463684 m!1351071))

(assert (=> b!1463698 m!1351041))

(assert (=> b!1463698 m!1351041))

(declare-fun m!1351073 () Bool)

(assert (=> b!1463698 m!1351073))

(declare-fun m!1351075 () Bool)

(assert (=> b!1463703 m!1351075))

(assert (=> b!1463683 m!1351049))

(declare-fun m!1351077 () Bool)

(assert (=> b!1463683 m!1351077))

(assert (=> b!1463704 m!1351041))

(assert (=> b!1463704 m!1351041))

(declare-fun m!1351079 () Bool)

(assert (=> b!1463704 m!1351079))

(assert (=> b!1463704 m!1351079))

(assert (=> b!1463704 m!1351041))

(declare-fun m!1351081 () Bool)

(assert (=> b!1463704 m!1351081))

(declare-fun m!1351083 () Bool)

(assert (=> b!1463699 m!1351083))

(assert (=> b!1463699 m!1351041))

(assert (=> b!1463702 m!1351041))

(assert (=> b!1463702 m!1351041))

(declare-fun m!1351085 () Bool)

(assert (=> b!1463702 m!1351085))

(declare-fun m!1351087 () Bool)

(assert (=> b!1463693 m!1351087))

(assert (=> b!1463693 m!1351087))

(declare-fun m!1351089 () Bool)

(assert (=> b!1463693 m!1351089))

(assert (=> b!1463693 m!1351049))

(declare-fun m!1351091 () Bool)

(assert (=> b!1463693 m!1351091))

(declare-fun m!1351093 () Bool)

(assert (=> b!1463701 m!1351093))

(assert (=> b!1463701 m!1351059))

(push 1)

