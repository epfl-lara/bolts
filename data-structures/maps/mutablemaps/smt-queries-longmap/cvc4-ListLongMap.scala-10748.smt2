; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125732 () Bool)

(assert start!125732)

(declare-fun b!1470838 () Bool)

(declare-fun e!825641 () Bool)

(assert (=> b!1470838 (= e!825641 (not true))))

(declare-fun e!825636 () Bool)

(assert (=> b!1470838 e!825636))

(declare-fun res!999029 () Bool)

(assert (=> b!1470838 (=> (not res!999029) (not e!825636))))

(declare-datatypes ((array!99040 0))(
  ( (array!99041 (arr!47802 (Array (_ BitVec 32) (_ BitVec 64))) (size!48353 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99040)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99040 (_ BitVec 32)) Bool)

(assert (=> b!1470838 (= res!999029 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49418 0))(
  ( (Unit!49419) )
))
(declare-fun lt!643017 () Unit!49418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99040 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49418)

(assert (=> b!1470838 (= lt!643017 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470839 () Bool)

(declare-fun e!825637 () Bool)

(declare-fun e!825638 () Bool)

(assert (=> b!1470839 (= e!825637 e!825638)))

(declare-fun res!999023 () Bool)

(assert (=> b!1470839 (=> (not res!999023) (not e!825638))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1470839 (= res!999023 (= (select (store (arr!47802 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643014 () array!99040)

(assert (=> b!1470839 (= lt!643014 (array!99041 (store (arr!47802 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48353 a!2862)))))

(declare-fun b!1470840 () Bool)

(declare-fun res!999020 () Bool)

(assert (=> b!1470840 (=> (not res!999020) (not e!825641))))

(declare-fun e!825640 () Bool)

(assert (=> b!1470840 (= res!999020 e!825640)))

(declare-fun c!135425 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470840 (= c!135425 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470841 () Bool)

(declare-fun res!999028 () Bool)

(assert (=> b!1470841 (=> (not res!999028) (not e!825637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470841 (= res!999028 (validKeyInArray!0 (select (arr!47802 a!2862) i!1006)))))

(declare-fun b!1470842 () Bool)

(declare-fun res!999027 () Bool)

(assert (=> b!1470842 (=> (not res!999027) (not e!825637))))

(assert (=> b!1470842 (= res!999027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470843 () Bool)

(declare-fun res!999019 () Bool)

(assert (=> b!1470843 (=> (not res!999019) (not e!825637))))

(assert (=> b!1470843 (= res!999019 (validKeyInArray!0 (select (arr!47802 a!2862) j!93)))))

(declare-fun b!1470844 () Bool)

(declare-fun res!999017 () Bool)

(assert (=> b!1470844 (=> (not res!999017) (not e!825637))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1470844 (= res!999017 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48353 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48353 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48353 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470845 () Bool)

(declare-datatypes ((SeekEntryResult!12065 0))(
  ( (MissingZero!12065 (index!50651 (_ BitVec 32))) (Found!12065 (index!50652 (_ BitVec 32))) (Intermediate!12065 (undefined!12877 Bool) (index!50653 (_ BitVec 32)) (x!132230 (_ BitVec 32))) (Undefined!12065) (MissingVacant!12065 (index!50654 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99040 (_ BitVec 32)) SeekEntryResult!12065)

(assert (=> b!1470845 (= e!825636 (= (seekEntryOrOpen!0 (select (arr!47802 a!2862) j!93) a!2862 mask!2687) (Found!12065 j!93)))))

(declare-fun lt!643015 () (_ BitVec 64))

(declare-fun b!1470846 () Bool)

(declare-fun lt!643018 () SeekEntryResult!12065)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99040 (_ BitVec 32)) SeekEntryResult!12065)

(assert (=> b!1470846 (= e!825640 (= lt!643018 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643015 lt!643014 mask!2687)))))

(declare-fun b!1470847 () Bool)

(declare-fun e!825635 () Bool)

(assert (=> b!1470847 (= e!825635 e!825641)))

(declare-fun res!999022 () Bool)

(assert (=> b!1470847 (=> (not res!999022) (not e!825641))))

(assert (=> b!1470847 (= res!999022 (= lt!643018 (Intermediate!12065 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470847 (= lt!643018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643015 mask!2687) lt!643015 lt!643014 mask!2687))))

(assert (=> b!1470847 (= lt!643015 (select (store (arr!47802 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470849 () Bool)

(declare-fun res!999025 () Bool)

(assert (=> b!1470849 (=> (not res!999025) (not e!825635))))

(declare-fun lt!643016 () SeekEntryResult!12065)

(assert (=> b!1470849 (= res!999025 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47802 a!2862) j!93) a!2862 mask!2687) lt!643016))))

(declare-fun b!1470850 () Bool)

(declare-fun res!999018 () Bool)

(assert (=> b!1470850 (=> (not res!999018) (not e!825641))))

(assert (=> b!1470850 (= res!999018 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470848 () Bool)

(declare-fun res!999026 () Bool)

(assert (=> b!1470848 (=> (not res!999026) (not e!825637))))

(assert (=> b!1470848 (= res!999026 (and (= (size!48353 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48353 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48353 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!999024 () Bool)

(assert (=> start!125732 (=> (not res!999024) (not e!825637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125732 (= res!999024 (validMask!0 mask!2687))))

(assert (=> start!125732 e!825637))

(assert (=> start!125732 true))

(declare-fun array_inv!36747 (array!99040) Bool)

(assert (=> start!125732 (array_inv!36747 a!2862)))

(declare-fun b!1470851 () Bool)

(declare-fun res!999030 () Bool)

(assert (=> b!1470851 (=> (not res!999030) (not e!825637))))

(declare-datatypes ((List!34483 0))(
  ( (Nil!34480) (Cons!34479 (h!35832 (_ BitVec 64)) (t!49184 List!34483)) )
))
(declare-fun arrayNoDuplicates!0 (array!99040 (_ BitVec 32) List!34483) Bool)

(assert (=> b!1470851 (= res!999030 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34480))))

(declare-fun b!1470852 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99040 (_ BitVec 32)) SeekEntryResult!12065)

(assert (=> b!1470852 (= e!825640 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643015 lt!643014 mask!2687) (seekEntryOrOpen!0 lt!643015 lt!643014 mask!2687)))))

(declare-fun b!1470853 () Bool)

(assert (=> b!1470853 (= e!825638 e!825635)))

(declare-fun res!999021 () Bool)

(assert (=> b!1470853 (=> (not res!999021) (not e!825635))))

(assert (=> b!1470853 (= res!999021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47802 a!2862) j!93) mask!2687) (select (arr!47802 a!2862) j!93) a!2862 mask!2687) lt!643016))))

(assert (=> b!1470853 (= lt!643016 (Intermediate!12065 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125732 res!999024) b!1470848))

(assert (= (and b!1470848 res!999026) b!1470841))

(assert (= (and b!1470841 res!999028) b!1470843))

(assert (= (and b!1470843 res!999019) b!1470842))

(assert (= (and b!1470842 res!999027) b!1470851))

(assert (= (and b!1470851 res!999030) b!1470844))

(assert (= (and b!1470844 res!999017) b!1470839))

(assert (= (and b!1470839 res!999023) b!1470853))

(assert (= (and b!1470853 res!999021) b!1470849))

(assert (= (and b!1470849 res!999025) b!1470847))

(assert (= (and b!1470847 res!999022) b!1470840))

(assert (= (and b!1470840 c!135425) b!1470846))

(assert (= (and b!1470840 (not c!135425)) b!1470852))

(assert (= (and b!1470840 res!999020) b!1470850))

(assert (= (and b!1470850 res!999018) b!1470838))

(assert (= (and b!1470838 res!999029) b!1470845))

(declare-fun m!1357855 () Bool)

(assert (=> b!1470847 m!1357855))

(assert (=> b!1470847 m!1357855))

(declare-fun m!1357857 () Bool)

(assert (=> b!1470847 m!1357857))

(declare-fun m!1357859 () Bool)

(assert (=> b!1470847 m!1357859))

(declare-fun m!1357861 () Bool)

(assert (=> b!1470847 m!1357861))

(declare-fun m!1357863 () Bool)

(assert (=> b!1470842 m!1357863))

(declare-fun m!1357865 () Bool)

(assert (=> b!1470843 m!1357865))

(assert (=> b!1470843 m!1357865))

(declare-fun m!1357867 () Bool)

(assert (=> b!1470843 m!1357867))

(assert (=> b!1470849 m!1357865))

(assert (=> b!1470849 m!1357865))

(declare-fun m!1357869 () Bool)

(assert (=> b!1470849 m!1357869))

(declare-fun m!1357871 () Bool)

(assert (=> b!1470852 m!1357871))

(declare-fun m!1357873 () Bool)

(assert (=> b!1470852 m!1357873))

(declare-fun m!1357875 () Bool)

(assert (=> b!1470841 m!1357875))

(assert (=> b!1470841 m!1357875))

(declare-fun m!1357877 () Bool)

(assert (=> b!1470841 m!1357877))

(assert (=> b!1470853 m!1357865))

(assert (=> b!1470853 m!1357865))

(declare-fun m!1357879 () Bool)

(assert (=> b!1470853 m!1357879))

(assert (=> b!1470853 m!1357879))

(assert (=> b!1470853 m!1357865))

(declare-fun m!1357881 () Bool)

(assert (=> b!1470853 m!1357881))

(assert (=> b!1470845 m!1357865))

(assert (=> b!1470845 m!1357865))

(declare-fun m!1357883 () Bool)

(assert (=> b!1470845 m!1357883))

(declare-fun m!1357885 () Bool)

(assert (=> b!1470838 m!1357885))

(declare-fun m!1357887 () Bool)

(assert (=> b!1470838 m!1357887))

(declare-fun m!1357889 () Bool)

(assert (=> b!1470846 m!1357889))

(assert (=> b!1470839 m!1357859))

(declare-fun m!1357891 () Bool)

(assert (=> b!1470839 m!1357891))

(declare-fun m!1357893 () Bool)

(assert (=> b!1470851 m!1357893))

(declare-fun m!1357895 () Bool)

(assert (=> start!125732 m!1357895))

(declare-fun m!1357897 () Bool)

(assert (=> start!125732 m!1357897))

(push 1)

