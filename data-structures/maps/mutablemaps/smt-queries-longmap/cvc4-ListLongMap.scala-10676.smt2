; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125240 () Bool)

(assert start!125240)

(declare-fun b!1460100 () Bool)

(declare-fun res!990020 () Bool)

(declare-fun e!821053 () Bool)

(assert (=> b!1460100 (=> (not res!990020) (not e!821053))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98605 0))(
  ( (array!98606 (arr!47586 (Array (_ BitVec 32) (_ BitVec 64))) (size!48137 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98605)

(assert (=> b!1460100 (= res!990020 (and (= (size!48137 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48137 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48137 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460101 () Bool)

(declare-fun res!990016 () Bool)

(declare-fun e!821058 () Bool)

(assert (=> b!1460101 (=> (not res!990016) (not e!821058))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460101 (= res!990016 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460102 () Bool)

(declare-fun res!990018 () Bool)

(assert (=> b!1460102 (=> (not res!990018) (not e!821053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460102 (= res!990018 (validKeyInArray!0 (select (arr!47586 a!2862) i!1006)))))

(declare-fun lt!639690 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11861 0))(
  ( (MissingZero!11861 (index!49835 (_ BitVec 32))) (Found!11861 (index!49836 (_ BitVec 32))) (Intermediate!11861 (undefined!12673 Bool) (index!49837 (_ BitVec 32)) (x!131441 (_ BitVec 32))) (Undefined!11861) (MissingVacant!11861 (index!49838 (_ BitVec 32))) )
))
(declare-fun lt!639688 () SeekEntryResult!11861)

(declare-fun lt!639685 () (_ BitVec 64))

(declare-fun lt!639686 () array!98605)

(declare-fun b!1460103 () Bool)

(declare-fun e!821060 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98605 (_ BitVec 32)) SeekEntryResult!11861)

(assert (=> b!1460103 (= e!821060 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639690 intermediateAfterIndex!19 lt!639685 lt!639686 mask!2687) lt!639688)))))

(declare-fun b!1460104 () Bool)

(declare-fun res!990013 () Bool)

(declare-fun e!821054 () Bool)

(assert (=> b!1460104 (=> res!990013 e!821054)))

(declare-fun lt!639687 () SeekEntryResult!11861)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98605 (_ BitVec 32)) SeekEntryResult!11861)

(assert (=> b!1460104 (= res!990013 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639690 (select (arr!47586 a!2862) j!93) a!2862 mask!2687) lt!639687)))))

(declare-fun b!1460105 () Bool)

(declare-fun res!990025 () Bool)

(declare-fun e!821052 () Bool)

(assert (=> b!1460105 (=> (not res!990025) (not e!821052))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1460105 (= res!990025 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47586 a!2862) j!93) a!2862 mask!2687) lt!639687))))

(declare-fun b!1460106 () Bool)

(assert (=> b!1460106 (= e!821052 e!821058)))

(declare-fun res!990022 () Bool)

(assert (=> b!1460106 (=> (not res!990022) (not e!821058))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!639684 () SeekEntryResult!11861)

(assert (=> b!1460106 (= res!990022 (= lt!639684 (Intermediate!11861 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460106 (= lt!639684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639685 mask!2687) lt!639685 lt!639686 mask!2687))))

(assert (=> b!1460106 (= lt!639685 (select (store (arr!47586 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460107 () Bool)

(declare-fun e!821051 () Bool)

(assert (=> b!1460107 (= e!821051 e!821054)))

(declare-fun res!990023 () Bool)

(assert (=> b!1460107 (=> res!990023 e!821054)))

(assert (=> b!1460107 (= res!990023 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639690 #b00000000000000000000000000000000) (bvsge lt!639690 (size!48137 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460107 (= lt!639690 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1460107 (= lt!639688 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639685 lt!639686 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98605 (_ BitVec 32)) SeekEntryResult!11861)

(assert (=> b!1460107 (= lt!639688 (seekEntryOrOpen!0 lt!639685 lt!639686 mask!2687))))

(declare-fun b!1460108 () Bool)

(declare-fun e!821057 () Bool)

(assert (=> b!1460108 (= e!821053 e!821057)))

(declare-fun res!990027 () Bool)

(assert (=> b!1460108 (=> (not res!990027) (not e!821057))))

(assert (=> b!1460108 (= res!990027 (= (select (store (arr!47586 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460108 (= lt!639686 (array!98606 (store (arr!47586 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48137 a!2862)))))

(declare-fun b!1460110 () Bool)

(declare-fun e!821055 () Bool)

(assert (=> b!1460110 (= e!821054 e!821055)))

(declare-fun res!990029 () Bool)

(assert (=> b!1460110 (=> res!990029 e!821055)))

(assert (=> b!1460110 (= res!990029 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!639691 () SeekEntryResult!11861)

(assert (=> b!1460110 (= lt!639691 lt!639688)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49166 0))(
  ( (Unit!49167) )
))
(declare-fun lt!639683 () Unit!49166)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49166)

(assert (=> b!1460110 (= lt!639683 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639690 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun e!821056 () Bool)

(declare-fun b!1460111 () Bool)

(assert (=> b!1460111 (= e!821056 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639685 lt!639686 mask!2687) (seekEntryOrOpen!0 lt!639685 lt!639686 mask!2687)))))

(declare-fun b!1460112 () Bool)

(declare-fun res!990012 () Bool)

(assert (=> b!1460112 (=> res!990012 e!821054)))

(assert (=> b!1460112 (= res!990012 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1460113 () Bool)

(declare-fun res!990024 () Bool)

(assert (=> b!1460113 (=> (not res!990024) (not e!821058))))

(assert (=> b!1460113 (= res!990024 e!821056)))

(declare-fun c!134558 () Bool)

(assert (=> b!1460113 (= c!134558 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460114 () Bool)

(assert (=> b!1460114 (= e!821055 (validKeyInArray!0 lt!639685))))

(declare-fun b!1460115 () Bool)

(declare-fun res!990028 () Bool)

(assert (=> b!1460115 (=> (not res!990028) (not e!821053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98605 (_ BitVec 32)) Bool)

(assert (=> b!1460115 (= res!990028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460116 () Bool)

(declare-fun res!990030 () Bool)

(assert (=> b!1460116 (=> (not res!990030) (not e!821053))))

(declare-datatypes ((List!34267 0))(
  ( (Nil!34264) (Cons!34263 (h!35613 (_ BitVec 64)) (t!48968 List!34267)) )
))
(declare-fun arrayNoDuplicates!0 (array!98605 (_ BitVec 32) List!34267) Bool)

(assert (=> b!1460116 (= res!990030 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34264))))

(declare-fun b!1460117 () Bool)

(declare-fun res!990026 () Bool)

(assert (=> b!1460117 (=> res!990026 e!821054)))

(assert (=> b!1460117 (= res!990026 e!821060)))

(declare-fun c!134557 () Bool)

(assert (=> b!1460117 (= c!134557 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1460109 () Bool)

(declare-fun res!990019 () Bool)

(assert (=> b!1460109 (=> (not res!990019) (not e!821053))))

(assert (=> b!1460109 (= res!990019 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48137 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48137 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48137 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!990017 () Bool)

(assert (=> start!125240 (=> (not res!990017) (not e!821053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125240 (= res!990017 (validMask!0 mask!2687))))

(assert (=> start!125240 e!821053))

(assert (=> start!125240 true))

(declare-fun array_inv!36531 (array!98605) Bool)

(assert (=> start!125240 (array_inv!36531 a!2862)))

(declare-fun b!1460118 () Bool)

(declare-fun res!990015 () Bool)

(assert (=> b!1460118 (=> (not res!990015) (not e!821053))))

(assert (=> b!1460118 (= res!990015 (validKeyInArray!0 (select (arr!47586 a!2862) j!93)))))

(declare-fun b!1460119 () Bool)

(assert (=> b!1460119 (= e!821057 e!821052)))

(declare-fun res!990014 () Bool)

(assert (=> b!1460119 (=> (not res!990014) (not e!821052))))

(assert (=> b!1460119 (= res!990014 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47586 a!2862) j!93) mask!2687) (select (arr!47586 a!2862) j!93) a!2862 mask!2687) lt!639687))))

(assert (=> b!1460119 (= lt!639687 (Intermediate!11861 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460120 () Bool)

(assert (=> b!1460120 (= e!821058 (not e!821051))))

(declare-fun res!990021 () Bool)

(assert (=> b!1460120 (=> res!990021 e!821051)))

(assert (=> b!1460120 (= res!990021 (or (and (= (select (arr!47586 a!2862) index!646) (select (store (arr!47586 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47586 a!2862) index!646) (select (arr!47586 a!2862) j!93))) (= (select (arr!47586 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1460120 (and (= lt!639691 (Found!11861 j!93)) (or (= (select (arr!47586 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47586 a!2862) intermediateBeforeIndex!19) (select (arr!47586 a!2862) j!93))) (let ((bdg!53565 (select (store (arr!47586 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47586 a!2862) index!646) bdg!53565) (= (select (arr!47586 a!2862) index!646) (select (arr!47586 a!2862) j!93))) (= (select (arr!47586 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53565 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1460120 (= lt!639691 (seekEntryOrOpen!0 (select (arr!47586 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1460120 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639689 () Unit!49166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49166)

(assert (=> b!1460120 (= lt!639689 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460121 () Bool)

(assert (=> b!1460121 (= e!821056 (= lt!639684 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639685 lt!639686 mask!2687)))))

(declare-fun b!1460122 () Bool)

(assert (=> b!1460122 (= e!821060 (not (= lt!639684 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639690 lt!639685 lt!639686 mask!2687))))))

(assert (= (and start!125240 res!990017) b!1460100))

(assert (= (and b!1460100 res!990020) b!1460102))

(assert (= (and b!1460102 res!990018) b!1460118))

(assert (= (and b!1460118 res!990015) b!1460115))

(assert (= (and b!1460115 res!990028) b!1460116))

(assert (= (and b!1460116 res!990030) b!1460109))

(assert (= (and b!1460109 res!990019) b!1460108))

(assert (= (and b!1460108 res!990027) b!1460119))

(assert (= (and b!1460119 res!990014) b!1460105))

(assert (= (and b!1460105 res!990025) b!1460106))

(assert (= (and b!1460106 res!990022) b!1460113))

(assert (= (and b!1460113 c!134558) b!1460121))

(assert (= (and b!1460113 (not c!134558)) b!1460111))

(assert (= (and b!1460113 res!990024) b!1460101))

(assert (= (and b!1460101 res!990016) b!1460120))

(assert (= (and b!1460120 (not res!990021)) b!1460107))

(assert (= (and b!1460107 (not res!990023)) b!1460104))

(assert (= (and b!1460104 (not res!990013)) b!1460117))

(assert (= (and b!1460117 c!134557) b!1460122))

(assert (= (and b!1460117 (not c!134557)) b!1460103))

(assert (= (and b!1460117 (not res!990026)) b!1460112))

(assert (= (and b!1460112 (not res!990012)) b!1460110))

(assert (= (and b!1460110 (not res!990029)) b!1460114))

(declare-fun m!1347847 () Bool)

(assert (=> b!1460105 m!1347847))

(assert (=> b!1460105 m!1347847))

(declare-fun m!1347849 () Bool)

(assert (=> b!1460105 m!1347849))

(declare-fun m!1347851 () Bool)

(assert (=> b!1460115 m!1347851))

(declare-fun m!1347853 () Bool)

(assert (=> b!1460116 m!1347853))

(declare-fun m!1347855 () Bool)

(assert (=> b!1460111 m!1347855))

(declare-fun m!1347857 () Bool)

(assert (=> b!1460111 m!1347857))

(declare-fun m!1347859 () Bool)

(assert (=> b!1460120 m!1347859))

(declare-fun m!1347861 () Bool)

(assert (=> b!1460120 m!1347861))

(declare-fun m!1347863 () Bool)

(assert (=> b!1460120 m!1347863))

(declare-fun m!1347865 () Bool)

(assert (=> b!1460120 m!1347865))

(declare-fun m!1347867 () Bool)

(assert (=> b!1460120 m!1347867))

(assert (=> b!1460120 m!1347847))

(declare-fun m!1347869 () Bool)

(assert (=> b!1460120 m!1347869))

(declare-fun m!1347871 () Bool)

(assert (=> b!1460120 m!1347871))

(assert (=> b!1460120 m!1347847))

(declare-fun m!1347873 () Bool)

(assert (=> b!1460102 m!1347873))

(assert (=> b!1460102 m!1347873))

(declare-fun m!1347875 () Bool)

(assert (=> b!1460102 m!1347875))

(assert (=> b!1460104 m!1347847))

(assert (=> b!1460104 m!1347847))

(declare-fun m!1347877 () Bool)

(assert (=> b!1460104 m!1347877))

(declare-fun m!1347879 () Bool)

(assert (=> b!1460114 m!1347879))

(declare-fun m!1347881 () Bool)

(assert (=> b!1460103 m!1347881))

(assert (=> b!1460119 m!1347847))

(assert (=> b!1460119 m!1347847))

(declare-fun m!1347883 () Bool)

(assert (=> b!1460119 m!1347883))

(assert (=> b!1460119 m!1347883))

(assert (=> b!1460119 m!1347847))

(declare-fun m!1347885 () Bool)

(assert (=> b!1460119 m!1347885))

(declare-fun m!1347887 () Bool)

(assert (=> b!1460110 m!1347887))

(declare-fun m!1347889 () Bool)

(assert (=> b!1460107 m!1347889))

(assert (=> b!1460107 m!1347855))

(assert (=> b!1460107 m!1347857))

(assert (=> b!1460118 m!1347847))

(assert (=> b!1460118 m!1347847))

(declare-fun m!1347891 () Bool)

(assert (=> b!1460118 m!1347891))

(declare-fun m!1347893 () Bool)

(assert (=> b!1460121 m!1347893))

(declare-fun m!1347895 () Bool)

(assert (=> b!1460106 m!1347895))

(assert (=> b!1460106 m!1347895))

(declare-fun m!1347897 () Bool)

(assert (=> b!1460106 m!1347897))

(assert (=> b!1460106 m!1347861))

(declare-fun m!1347899 () Bool)

(assert (=> b!1460106 m!1347899))

(declare-fun m!1347901 () Bool)

(assert (=> b!1460122 m!1347901))

(assert (=> b!1460108 m!1347861))

(declare-fun m!1347903 () Bool)

(assert (=> b!1460108 m!1347903))

(declare-fun m!1347905 () Bool)

(assert (=> start!125240 m!1347905))

(declare-fun m!1347907 () Bool)

(assert (=> start!125240 m!1347907))

(push 1)

