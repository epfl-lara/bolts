; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125730 () Bool)

(assert start!125730)

(declare-fun b!1470790 () Bool)

(declare-fun res!998985 () Bool)

(declare-fun e!825619 () Bool)

(assert (=> b!1470790 (=> (not res!998985) (not e!825619))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99038 0))(
  ( (array!99039 (arr!47801 (Array (_ BitVec 32) (_ BitVec 64))) (size!48352 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99038)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1470790 (= res!998985 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48352 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48352 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48352 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470791 () Bool)

(declare-fun res!998988 () Bool)

(assert (=> b!1470791 (=> (not res!998988) (not e!825619))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99038 (_ BitVec 32)) Bool)

(assert (=> b!1470791 (= res!998988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470792 () Bool)

(declare-fun e!825616 () Bool)

(declare-fun e!825617 () Bool)

(assert (=> b!1470792 (= e!825616 e!825617)))

(declare-fun res!998986 () Bool)

(assert (=> b!1470792 (=> (not res!998986) (not e!825617))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12064 0))(
  ( (MissingZero!12064 (index!50647 (_ BitVec 32))) (Found!12064 (index!50648 (_ BitVec 32))) (Intermediate!12064 (undefined!12876 Bool) (index!50649 (_ BitVec 32)) (x!132229 (_ BitVec 32))) (Undefined!12064) (MissingVacant!12064 (index!50650 (_ BitVec 32))) )
))
(declare-fun lt!643002 () SeekEntryResult!12064)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99038 (_ BitVec 32)) SeekEntryResult!12064)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470792 (= res!998986 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47801 a!2862) j!93) mask!2687) (select (arr!47801 a!2862) j!93) a!2862 mask!2687) lt!643002))))

(assert (=> b!1470792 (= lt!643002 (Intermediate!12064 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!643003 () (_ BitVec 64))

(declare-fun lt!642999 () array!99038)

(declare-fun e!825615 () Bool)

(declare-fun b!1470793 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99038 (_ BitVec 32)) SeekEntryResult!12064)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99038 (_ BitVec 32)) SeekEntryResult!12064)

(assert (=> b!1470793 (= e!825615 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643003 lt!642999 mask!2687) (seekEntryOrOpen!0 lt!643003 lt!642999 mask!2687)))))

(declare-fun b!1470794 () Bool)

(declare-fun e!825618 () Bool)

(assert (=> b!1470794 (= e!825618 (not true))))

(declare-fun e!825620 () Bool)

(assert (=> b!1470794 e!825620))

(declare-fun res!998978 () Bool)

(assert (=> b!1470794 (=> (not res!998978) (not e!825620))))

(assert (=> b!1470794 (= res!998978 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49416 0))(
  ( (Unit!49417) )
))
(declare-fun lt!643001 () Unit!49416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99038 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49416)

(assert (=> b!1470794 (= lt!643001 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!998977 () Bool)

(assert (=> start!125730 (=> (not res!998977) (not e!825619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125730 (= res!998977 (validMask!0 mask!2687))))

(assert (=> start!125730 e!825619))

(assert (=> start!125730 true))

(declare-fun array_inv!36746 (array!99038) Bool)

(assert (=> start!125730 (array_inv!36746 a!2862)))

(declare-fun b!1470795 () Bool)

(declare-fun res!998979 () Bool)

(assert (=> b!1470795 (=> (not res!998979) (not e!825619))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1470795 (= res!998979 (and (= (size!48352 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48352 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48352 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470796 () Bool)

(declare-fun res!998975 () Bool)

(assert (=> b!1470796 (=> (not res!998975) (not e!825619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470796 (= res!998975 (validKeyInArray!0 (select (arr!47801 a!2862) j!93)))))

(declare-fun b!1470797 () Bool)

(declare-fun res!998981 () Bool)

(assert (=> b!1470797 (=> (not res!998981) (not e!825618))))

(assert (=> b!1470797 (= res!998981 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470798 () Bool)

(declare-fun res!998982 () Bool)

(assert (=> b!1470798 (=> (not res!998982) (not e!825619))))

(assert (=> b!1470798 (= res!998982 (validKeyInArray!0 (select (arr!47801 a!2862) i!1006)))))

(declare-fun b!1470799 () Bool)

(declare-fun res!998984 () Bool)

(assert (=> b!1470799 (=> (not res!998984) (not e!825618))))

(assert (=> b!1470799 (= res!998984 e!825615)))

(declare-fun c!135422 () Bool)

(assert (=> b!1470799 (= c!135422 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470800 () Bool)

(assert (=> b!1470800 (= e!825620 (= (seekEntryOrOpen!0 (select (arr!47801 a!2862) j!93) a!2862 mask!2687) (Found!12064 j!93)))))

(declare-fun b!1470801 () Bool)

(declare-fun res!998983 () Bool)

(assert (=> b!1470801 (=> (not res!998983) (not e!825619))))

(declare-datatypes ((List!34482 0))(
  ( (Nil!34479) (Cons!34478 (h!35831 (_ BitVec 64)) (t!49183 List!34482)) )
))
(declare-fun arrayNoDuplicates!0 (array!99038 (_ BitVec 32) List!34482) Bool)

(assert (=> b!1470801 (= res!998983 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34479))))

(declare-fun b!1470802 () Bool)

(assert (=> b!1470802 (= e!825619 e!825616)))

(declare-fun res!998987 () Bool)

(assert (=> b!1470802 (=> (not res!998987) (not e!825616))))

(assert (=> b!1470802 (= res!998987 (= (select (store (arr!47801 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470802 (= lt!642999 (array!99039 (store (arr!47801 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48352 a!2862)))))

(declare-fun b!1470803 () Bool)

(assert (=> b!1470803 (= e!825617 e!825618)))

(declare-fun res!998976 () Bool)

(assert (=> b!1470803 (=> (not res!998976) (not e!825618))))

(declare-fun lt!643000 () SeekEntryResult!12064)

(assert (=> b!1470803 (= res!998976 (= lt!643000 (Intermediate!12064 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1470803 (= lt!643000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643003 mask!2687) lt!643003 lt!642999 mask!2687))))

(assert (=> b!1470803 (= lt!643003 (select (store (arr!47801 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470804 () Bool)

(assert (=> b!1470804 (= e!825615 (= lt!643000 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643003 lt!642999 mask!2687)))))

(declare-fun b!1470805 () Bool)

(declare-fun res!998980 () Bool)

(assert (=> b!1470805 (=> (not res!998980) (not e!825617))))

(assert (=> b!1470805 (= res!998980 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47801 a!2862) j!93) a!2862 mask!2687) lt!643002))))

(assert (= (and start!125730 res!998977) b!1470795))

(assert (= (and b!1470795 res!998979) b!1470798))

(assert (= (and b!1470798 res!998982) b!1470796))

(assert (= (and b!1470796 res!998975) b!1470791))

(assert (= (and b!1470791 res!998988) b!1470801))

(assert (= (and b!1470801 res!998983) b!1470790))

(assert (= (and b!1470790 res!998985) b!1470802))

(assert (= (and b!1470802 res!998987) b!1470792))

(assert (= (and b!1470792 res!998986) b!1470805))

(assert (= (and b!1470805 res!998980) b!1470803))

(assert (= (and b!1470803 res!998976) b!1470799))

(assert (= (and b!1470799 c!135422) b!1470804))

(assert (= (and b!1470799 (not c!135422)) b!1470793))

(assert (= (and b!1470799 res!998984) b!1470797))

(assert (= (and b!1470797 res!998981) b!1470794))

(assert (= (and b!1470794 res!998978) b!1470800))

(declare-fun m!1357811 () Bool)

(assert (=> b!1470801 m!1357811))

(declare-fun m!1357813 () Bool)

(assert (=> b!1470796 m!1357813))

(assert (=> b!1470796 m!1357813))

(declare-fun m!1357815 () Bool)

(assert (=> b!1470796 m!1357815))

(declare-fun m!1357817 () Bool)

(assert (=> b!1470798 m!1357817))

(assert (=> b!1470798 m!1357817))

(declare-fun m!1357819 () Bool)

(assert (=> b!1470798 m!1357819))

(declare-fun m!1357821 () Bool)

(assert (=> b!1470793 m!1357821))

(declare-fun m!1357823 () Bool)

(assert (=> b!1470793 m!1357823))

(assert (=> b!1470805 m!1357813))

(assert (=> b!1470805 m!1357813))

(declare-fun m!1357825 () Bool)

(assert (=> b!1470805 m!1357825))

(declare-fun m!1357827 () Bool)

(assert (=> start!125730 m!1357827))

(declare-fun m!1357829 () Bool)

(assert (=> start!125730 m!1357829))

(assert (=> b!1470800 m!1357813))

(assert (=> b!1470800 m!1357813))

(declare-fun m!1357831 () Bool)

(assert (=> b!1470800 m!1357831))

(assert (=> b!1470792 m!1357813))

(assert (=> b!1470792 m!1357813))

(declare-fun m!1357833 () Bool)

(assert (=> b!1470792 m!1357833))

(assert (=> b!1470792 m!1357833))

(assert (=> b!1470792 m!1357813))

(declare-fun m!1357835 () Bool)

(assert (=> b!1470792 m!1357835))

(declare-fun m!1357837 () Bool)

(assert (=> b!1470803 m!1357837))

(assert (=> b!1470803 m!1357837))

(declare-fun m!1357839 () Bool)

(assert (=> b!1470803 m!1357839))

(declare-fun m!1357841 () Bool)

(assert (=> b!1470803 m!1357841))

(declare-fun m!1357843 () Bool)

(assert (=> b!1470803 m!1357843))

(assert (=> b!1470802 m!1357841))

(declare-fun m!1357845 () Bool)

(assert (=> b!1470802 m!1357845))

(declare-fun m!1357847 () Bool)

(assert (=> b!1470804 m!1357847))

(declare-fun m!1357849 () Bool)

(assert (=> b!1470791 m!1357849))

(declare-fun m!1357851 () Bool)

(assert (=> b!1470794 m!1357851))

(declare-fun m!1357853 () Bool)

(assert (=> b!1470794 m!1357853))

(check-sat (not b!1470803) (not b!1470793) (not b!1470791) (not b!1470800) (not start!125730) (not b!1470801) (not b!1470804) (not b!1470794) (not b!1470792) (not b!1470798) (not b!1470805) (not b!1470796))
(check-sat)
