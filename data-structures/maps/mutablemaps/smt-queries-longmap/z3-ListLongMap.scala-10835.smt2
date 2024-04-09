; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126900 () Bool)

(assert start!126900)

(declare-fun b!1489840 () Bool)

(declare-fun res!1013319 () Bool)

(declare-fun e!834952 () Bool)

(assert (=> b!1489840 (=> (not res!1013319) (not e!834952))))

(declare-datatypes ((array!99590 0))(
  ( (array!99591 (arr!48062 (Array (_ BitVec 32) (_ BitVec 64))) (size!48613 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99590)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489840 (= res!1013319 (validKeyInArray!0 (select (arr!48062 a!2862) j!93)))))

(declare-fun res!1013307 () Bool)

(assert (=> start!126900 (=> (not res!1013307) (not e!834952))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126900 (= res!1013307 (validMask!0 mask!2687))))

(assert (=> start!126900 e!834952))

(assert (=> start!126900 true))

(declare-fun array_inv!37007 (array!99590) Bool)

(assert (=> start!126900 (array_inv!37007 a!2862)))

(declare-fun b!1489841 () Bool)

(declare-fun e!834948 () Bool)

(declare-fun e!834949 () Bool)

(assert (=> b!1489841 (= e!834948 (not e!834949))))

(declare-fun res!1013316 () Bool)

(assert (=> b!1489841 (=> res!1013316 e!834949)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489841 (= res!1013316 (or (and (= (select (arr!48062 a!2862) index!646) (select (store (arr!48062 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48062 a!2862) index!646) (select (arr!48062 a!2862) j!93))) (= (select (arr!48062 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12325 0))(
  ( (MissingZero!12325 (index!51691 (_ BitVec 32))) (Found!12325 (index!51692 (_ BitVec 32))) (Intermediate!12325 (undefined!13137 Bool) (index!51693 (_ BitVec 32)) (x!133288 (_ BitVec 32))) (Undefined!12325) (MissingVacant!12325 (index!51694 (_ BitVec 32))) )
))
(declare-fun lt!649691 () SeekEntryResult!12325)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489841 (and (= lt!649691 (Found!12325 j!93)) (or (= (select (arr!48062 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48062 a!2862) intermediateBeforeIndex!19) (select (arr!48062 a!2862) j!93))) (let ((bdg!54756 (select (store (arr!48062 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48062 a!2862) index!646) bdg!54756) (= (select (arr!48062 a!2862) index!646) (select (arr!48062 a!2862) j!93))) (= (select (arr!48062 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54756 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99590 (_ BitVec 32)) SeekEntryResult!12325)

(assert (=> b!1489841 (= lt!649691 (seekEntryOrOpen!0 (select (arr!48062 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99590 (_ BitVec 32)) Bool)

(assert (=> b!1489841 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49938 0))(
  ( (Unit!49939) )
))
(declare-fun lt!649696 () Unit!49938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49938)

(assert (=> b!1489841 (= lt!649696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!649695 () array!99590)

(declare-fun b!1489842 () Bool)

(declare-fun lt!649689 () SeekEntryResult!12325)

(declare-fun lt!649693 () (_ BitVec 32))

(declare-fun lt!649690 () (_ BitVec 64))

(declare-fun e!834951 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99590 (_ BitVec 32)) SeekEntryResult!12325)

(assert (=> b!1489842 (= e!834951 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649693 intermediateAfterIndex!19 lt!649690 lt!649695 mask!2687) lt!649689)))))

(declare-fun b!1489843 () Bool)

(declare-fun e!834953 () Bool)

(assert (=> b!1489843 (= e!834952 e!834953)))

(declare-fun res!1013322 () Bool)

(assert (=> b!1489843 (=> (not res!1013322) (not e!834953))))

(assert (=> b!1489843 (= res!1013322 (= (select (store (arr!48062 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489843 (= lt!649695 (array!99591 (store (arr!48062 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48613 a!2862)))))

(declare-fun b!1489844 () Bool)

(declare-fun res!1013310 () Bool)

(assert (=> b!1489844 (=> (not res!1013310) (not e!834952))))

(declare-datatypes ((List!34743 0))(
  ( (Nil!34740) (Cons!34739 (h!36122 (_ BitVec 64)) (t!49444 List!34743)) )
))
(declare-fun arrayNoDuplicates!0 (array!99590 (_ BitVec 32) List!34743) Bool)

(assert (=> b!1489844 (= res!1013310 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34740))))

(declare-fun b!1489845 () Bool)

(declare-fun e!834946 () Bool)

(assert (=> b!1489845 (= e!834946 e!834948)))

(declare-fun res!1013317 () Bool)

(assert (=> b!1489845 (=> (not res!1013317) (not e!834948))))

(declare-fun lt!649692 () SeekEntryResult!12325)

(assert (=> b!1489845 (= res!1013317 (= lt!649692 (Intermediate!12325 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99590 (_ BitVec 32)) SeekEntryResult!12325)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489845 (= lt!649692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649690 mask!2687) lt!649690 lt!649695 mask!2687))))

(assert (=> b!1489845 (= lt!649690 (select (store (arr!48062 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489846 () Bool)

(declare-fun res!1013313 () Bool)

(assert (=> b!1489846 (=> (not res!1013313) (not e!834948))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489846 (= res!1013313 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489847 () Bool)

(declare-fun res!1013312 () Bool)

(assert (=> b!1489847 (=> (not res!1013312) (not e!834946))))

(declare-fun lt!649688 () SeekEntryResult!12325)

(assert (=> b!1489847 (= res!1013312 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48062 a!2862) j!93) a!2862 mask!2687) lt!649688))))

(declare-fun b!1489848 () Bool)

(declare-fun res!1013309 () Bool)

(declare-fun e!834947 () Bool)

(assert (=> b!1489848 (=> res!1013309 e!834947)))

(assert (=> b!1489848 (= res!1013309 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649693 (select (arr!48062 a!2862) j!93) a!2862 mask!2687) lt!649688)))))

(declare-fun b!1489849 () Bool)

(declare-fun res!1013318 () Bool)

(assert (=> b!1489849 (=> (not res!1013318) (not e!834952))))

(assert (=> b!1489849 (= res!1013318 (validKeyInArray!0 (select (arr!48062 a!2862) i!1006)))))

(declare-fun b!1489850 () Bool)

(assert (=> b!1489850 (= e!834947 true)))

(assert (=> b!1489850 (= lt!649691 lt!649689)))

(declare-fun lt!649694 () Unit!49938)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49938)

(assert (=> b!1489850 (= lt!649694 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649693 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489851 () Bool)

(declare-fun res!1013315 () Bool)

(assert (=> b!1489851 (=> res!1013315 e!834947)))

(assert (=> b!1489851 (= res!1013315 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489852 () Bool)

(declare-fun res!1013311 () Bool)

(assert (=> b!1489852 (=> (not res!1013311) (not e!834952))))

(assert (=> b!1489852 (= res!1013311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489853 () Bool)

(declare-fun res!1013308 () Bool)

(assert (=> b!1489853 (=> res!1013308 e!834947)))

(assert (=> b!1489853 (= res!1013308 e!834951)))

(declare-fun c!137798 () Bool)

(assert (=> b!1489853 (= c!137798 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489854 () Bool)

(assert (=> b!1489854 (= e!834951 (not (= lt!649692 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649693 lt!649690 lt!649695 mask!2687))))))

(declare-fun b!1489855 () Bool)

(assert (=> b!1489855 (= e!834949 e!834947)))

(declare-fun res!1013314 () Bool)

(assert (=> b!1489855 (=> res!1013314 e!834947)))

(assert (=> b!1489855 (= res!1013314 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649693 #b00000000000000000000000000000000) (bvsge lt!649693 (size!48613 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489855 (= lt!649693 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489855 (= lt!649689 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649690 lt!649695 mask!2687))))

(assert (=> b!1489855 (= lt!649689 (seekEntryOrOpen!0 lt!649690 lt!649695 mask!2687))))

(declare-fun e!834950 () Bool)

(declare-fun b!1489856 () Bool)

(assert (=> b!1489856 (= e!834950 (= lt!649692 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649690 lt!649695 mask!2687)))))

(declare-fun b!1489857 () Bool)

(declare-fun res!1013306 () Bool)

(assert (=> b!1489857 (=> (not res!1013306) (not e!834948))))

(assert (=> b!1489857 (= res!1013306 e!834950)))

(declare-fun c!137797 () Bool)

(assert (=> b!1489857 (= c!137797 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489858 () Bool)

(declare-fun res!1013320 () Bool)

(assert (=> b!1489858 (=> (not res!1013320) (not e!834952))))

(assert (=> b!1489858 (= res!1013320 (and (= (size!48613 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48613 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48613 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489859 () Bool)

(assert (=> b!1489859 (= e!834953 e!834946)))

(declare-fun res!1013321 () Bool)

(assert (=> b!1489859 (=> (not res!1013321) (not e!834946))))

(assert (=> b!1489859 (= res!1013321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48062 a!2862) j!93) mask!2687) (select (arr!48062 a!2862) j!93) a!2862 mask!2687) lt!649688))))

(assert (=> b!1489859 (= lt!649688 (Intermediate!12325 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489860 () Bool)

(assert (=> b!1489860 (= e!834950 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649690 lt!649695 mask!2687) (seekEntryOrOpen!0 lt!649690 lt!649695 mask!2687)))))

(declare-fun b!1489861 () Bool)

(declare-fun res!1013305 () Bool)

(assert (=> b!1489861 (=> (not res!1013305) (not e!834952))))

(assert (=> b!1489861 (= res!1013305 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48613 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48613 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48613 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126900 res!1013307) b!1489858))

(assert (= (and b!1489858 res!1013320) b!1489849))

(assert (= (and b!1489849 res!1013318) b!1489840))

(assert (= (and b!1489840 res!1013319) b!1489852))

(assert (= (and b!1489852 res!1013311) b!1489844))

(assert (= (and b!1489844 res!1013310) b!1489861))

(assert (= (and b!1489861 res!1013305) b!1489843))

(assert (= (and b!1489843 res!1013322) b!1489859))

(assert (= (and b!1489859 res!1013321) b!1489847))

(assert (= (and b!1489847 res!1013312) b!1489845))

(assert (= (and b!1489845 res!1013317) b!1489857))

(assert (= (and b!1489857 c!137797) b!1489856))

(assert (= (and b!1489857 (not c!137797)) b!1489860))

(assert (= (and b!1489857 res!1013306) b!1489846))

(assert (= (and b!1489846 res!1013313) b!1489841))

(assert (= (and b!1489841 (not res!1013316)) b!1489855))

(assert (= (and b!1489855 (not res!1013314)) b!1489848))

(assert (= (and b!1489848 (not res!1013309)) b!1489853))

(assert (= (and b!1489853 c!137798) b!1489854))

(assert (= (and b!1489853 (not c!137798)) b!1489842))

(assert (= (and b!1489853 (not res!1013308)) b!1489851))

(assert (= (and b!1489851 (not res!1013315)) b!1489850))

(declare-fun m!1374087 () Bool)

(assert (=> b!1489841 m!1374087))

(declare-fun m!1374089 () Bool)

(assert (=> b!1489841 m!1374089))

(declare-fun m!1374091 () Bool)

(assert (=> b!1489841 m!1374091))

(declare-fun m!1374093 () Bool)

(assert (=> b!1489841 m!1374093))

(declare-fun m!1374095 () Bool)

(assert (=> b!1489841 m!1374095))

(declare-fun m!1374097 () Bool)

(assert (=> b!1489841 m!1374097))

(declare-fun m!1374099 () Bool)

(assert (=> b!1489841 m!1374099))

(declare-fun m!1374101 () Bool)

(assert (=> b!1489841 m!1374101))

(assert (=> b!1489841 m!1374097))

(assert (=> b!1489843 m!1374089))

(declare-fun m!1374103 () Bool)

(assert (=> b!1489843 m!1374103))

(declare-fun m!1374105 () Bool)

(assert (=> b!1489849 m!1374105))

(assert (=> b!1489849 m!1374105))

(declare-fun m!1374107 () Bool)

(assert (=> b!1489849 m!1374107))

(declare-fun m!1374109 () Bool)

(assert (=> b!1489854 m!1374109))

(declare-fun m!1374111 () Bool)

(assert (=> b!1489850 m!1374111))

(assert (=> b!1489859 m!1374097))

(assert (=> b!1489859 m!1374097))

(declare-fun m!1374113 () Bool)

(assert (=> b!1489859 m!1374113))

(assert (=> b!1489859 m!1374113))

(assert (=> b!1489859 m!1374097))

(declare-fun m!1374115 () Bool)

(assert (=> b!1489859 m!1374115))

(declare-fun m!1374117 () Bool)

(assert (=> b!1489842 m!1374117))

(declare-fun m!1374119 () Bool)

(assert (=> start!126900 m!1374119))

(declare-fun m!1374121 () Bool)

(assert (=> start!126900 m!1374121))

(declare-fun m!1374123 () Bool)

(assert (=> b!1489845 m!1374123))

(assert (=> b!1489845 m!1374123))

(declare-fun m!1374125 () Bool)

(assert (=> b!1489845 m!1374125))

(assert (=> b!1489845 m!1374089))

(declare-fun m!1374127 () Bool)

(assert (=> b!1489845 m!1374127))

(declare-fun m!1374129 () Bool)

(assert (=> b!1489852 m!1374129))

(declare-fun m!1374131 () Bool)

(assert (=> b!1489844 m!1374131))

(assert (=> b!1489848 m!1374097))

(assert (=> b!1489848 m!1374097))

(declare-fun m!1374133 () Bool)

(assert (=> b!1489848 m!1374133))

(declare-fun m!1374135 () Bool)

(assert (=> b!1489860 m!1374135))

(declare-fun m!1374137 () Bool)

(assert (=> b!1489860 m!1374137))

(declare-fun m!1374139 () Bool)

(assert (=> b!1489856 m!1374139))

(assert (=> b!1489847 m!1374097))

(assert (=> b!1489847 m!1374097))

(declare-fun m!1374141 () Bool)

(assert (=> b!1489847 m!1374141))

(declare-fun m!1374143 () Bool)

(assert (=> b!1489855 m!1374143))

(assert (=> b!1489855 m!1374135))

(assert (=> b!1489855 m!1374137))

(assert (=> b!1489840 m!1374097))

(assert (=> b!1489840 m!1374097))

(declare-fun m!1374145 () Bool)

(assert (=> b!1489840 m!1374145))

(check-sat (not b!1489856) (not b!1489855) (not b!1489859) (not b!1489854) (not b!1489845) (not start!126900) (not b!1489841) (not b!1489848) (not b!1489860) (not b!1489840) (not b!1489852) (not b!1489849) (not b!1489844) (not b!1489847) (not b!1489850) (not b!1489842))
(check-sat)
