; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124398 () Bool)

(assert start!124398)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!811613 () Bool)

(declare-fun lt!632611 () (_ BitVec 32))

(declare-fun b!1438834 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1438834 (= e!811613 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632611 #b00000000000000000000000000000000) (bvsge lt!632611 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun res!971493 () Bool)

(declare-fun e!811610 () Bool)

(assert (=> start!124398 (=> (not res!971493) (not e!811610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124398 (= res!971493 (validMask!0 mask!2687))))

(assert (=> start!124398 e!811610))

(assert (=> start!124398 true))

(declare-datatypes ((array!97802 0))(
  ( (array!97803 (arr!47186 (Array (_ BitVec 32) (_ BitVec 64))) (size!47737 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97802)

(declare-fun array_inv!36131 (array!97802) Bool)

(assert (=> start!124398 (array_inv!36131 a!2862)))

(declare-fun b!1438835 () Bool)

(declare-fun res!971501 () Bool)

(assert (=> b!1438835 (=> (not res!971501) (not e!811610))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438835 (= res!971501 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47737 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47737 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47737 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438836 () Bool)

(declare-fun res!971502 () Bool)

(assert (=> b!1438836 (=> (not res!971502) (not e!811610))))

(declare-datatypes ((List!33867 0))(
  ( (Nil!33864) (Cons!33863 (h!35210 (_ BitVec 64)) (t!48568 List!33867)) )
))
(declare-fun arrayNoDuplicates!0 (array!97802 (_ BitVec 32) List!33867) Bool)

(assert (=> b!1438836 (= res!971502 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33864))))

(declare-fun b!1438837 () Bool)

(declare-fun res!971498 () Bool)

(assert (=> b!1438837 (=> (not res!971498) (not e!811610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97802 (_ BitVec 32)) Bool)

(assert (=> b!1438837 (= res!971498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438838 () Bool)

(declare-fun e!811612 () Bool)

(assert (=> b!1438838 (= e!811610 e!811612)))

(declare-fun res!971499 () Bool)

(assert (=> b!1438838 (=> (not res!971499) (not e!811612))))

(declare-datatypes ((SeekEntryResult!11461 0))(
  ( (MissingZero!11461 (index!48235 (_ BitVec 32))) (Found!11461 (index!48236 (_ BitVec 32))) (Intermediate!11461 (undefined!12273 Bool) (index!48237 (_ BitVec 32)) (x!129971 (_ BitVec 32))) (Undefined!11461) (MissingVacant!11461 (index!48238 (_ BitVec 32))) )
))
(declare-fun lt!632610 () SeekEntryResult!11461)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97802 (_ BitVec 32)) SeekEntryResult!11461)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438838 (= res!971499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687) (select (arr!47186 a!2862) j!93) a!2862 mask!2687) lt!632610))))

(assert (=> b!1438838 (= lt!632610 (Intermediate!11461 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438839 () Bool)

(declare-fun res!971497 () Bool)

(assert (=> b!1438839 (=> (not res!971497) (not e!811610))))

(assert (=> b!1438839 (= res!971497 (and (= (size!47737 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47737 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47737 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438840 () Bool)

(declare-fun res!971494 () Bool)

(assert (=> b!1438840 (=> (not res!971494) (not e!811610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438840 (= res!971494 (validKeyInArray!0 (select (arr!47186 a!2862) j!93)))))

(declare-fun b!1438841 () Bool)

(declare-fun res!971496 () Bool)

(assert (=> b!1438841 (=> (not res!971496) (not e!811610))))

(assert (=> b!1438841 (= res!971496 (validKeyInArray!0 (select (arr!47186 a!2862) i!1006)))))

(declare-fun b!1438842 () Bool)

(assert (=> b!1438842 (= e!811612 e!811613)))

(declare-fun res!971495 () Bool)

(assert (=> b!1438842 (=> (not res!971495) (not e!811613))))

(assert (=> b!1438842 (= res!971495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632611 (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862)) mask!2687) (Intermediate!11461 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1438842 (= lt!632611 (toIndex!0 (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438843 () Bool)

(declare-fun res!971500 () Bool)

(assert (=> b!1438843 (=> (not res!971500) (not e!811612))))

(assert (=> b!1438843 (= res!971500 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47186 a!2862) j!93) a!2862 mask!2687) lt!632610))))

(assert (= (and start!124398 res!971493) b!1438839))

(assert (= (and b!1438839 res!971497) b!1438841))

(assert (= (and b!1438841 res!971496) b!1438840))

(assert (= (and b!1438840 res!971494) b!1438837))

(assert (= (and b!1438837 res!971498) b!1438836))

(assert (= (and b!1438836 res!971502) b!1438835))

(assert (= (and b!1438835 res!971501) b!1438838))

(assert (= (and b!1438838 res!971499) b!1438843))

(assert (= (and b!1438843 res!971500) b!1438842))

(assert (= (and b!1438842 res!971495) b!1438834))

(declare-fun m!1328027 () Bool)

(assert (=> b!1438842 m!1328027))

(declare-fun m!1328029 () Bool)

(assert (=> b!1438842 m!1328029))

(assert (=> b!1438842 m!1328029))

(declare-fun m!1328031 () Bool)

(assert (=> b!1438842 m!1328031))

(assert (=> b!1438842 m!1328029))

(declare-fun m!1328033 () Bool)

(assert (=> b!1438842 m!1328033))

(declare-fun m!1328035 () Bool)

(assert (=> b!1438841 m!1328035))

(assert (=> b!1438841 m!1328035))

(declare-fun m!1328037 () Bool)

(assert (=> b!1438841 m!1328037))

(declare-fun m!1328039 () Bool)

(assert (=> b!1438838 m!1328039))

(assert (=> b!1438838 m!1328039))

(declare-fun m!1328041 () Bool)

(assert (=> b!1438838 m!1328041))

(assert (=> b!1438838 m!1328041))

(assert (=> b!1438838 m!1328039))

(declare-fun m!1328043 () Bool)

(assert (=> b!1438838 m!1328043))

(declare-fun m!1328045 () Bool)

(assert (=> b!1438837 m!1328045))

(declare-fun m!1328047 () Bool)

(assert (=> start!124398 m!1328047))

(declare-fun m!1328049 () Bool)

(assert (=> start!124398 m!1328049))

(assert (=> b!1438840 m!1328039))

(assert (=> b!1438840 m!1328039))

(declare-fun m!1328051 () Bool)

(assert (=> b!1438840 m!1328051))

(assert (=> b!1438843 m!1328039))

(assert (=> b!1438843 m!1328039))

(declare-fun m!1328053 () Bool)

(assert (=> b!1438843 m!1328053))

(assert (=> b!1438835 m!1328027))

(declare-fun m!1328055 () Bool)

(assert (=> b!1438835 m!1328055))

(declare-fun m!1328057 () Bool)

(assert (=> b!1438836 m!1328057))

(check-sat (not b!1438836) (not b!1438842) (not b!1438837) (not start!124398) (not b!1438843) (not b!1438841) (not b!1438838) (not b!1438840))
(check-sat)
(get-model)

(declare-fun b!1438882 () Bool)

(declare-fun e!811632 () Bool)

(declare-fun call!67680 () Bool)

(assert (=> b!1438882 (= e!811632 call!67680)))

(declare-fun bm!67677 () Bool)

(assert (=> bm!67677 (= call!67680 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1438883 () Bool)

(declare-fun e!811634 () Bool)

(declare-fun e!811633 () Bool)

(assert (=> b!1438883 (= e!811634 e!811633)))

(declare-fun c!133184 () Bool)

(assert (=> b!1438883 (= c!133184 (validKeyInArray!0 (select (arr!47186 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1438884 () Bool)

(assert (=> b!1438884 (= e!811633 e!811632)))

(declare-fun lt!632626 () (_ BitVec 64))

(assert (=> b!1438884 (= lt!632626 (select (arr!47186 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48514 0))(
  ( (Unit!48515) )
))
(declare-fun lt!632624 () Unit!48514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97802 (_ BitVec 64) (_ BitVec 32)) Unit!48514)

(assert (=> b!1438884 (= lt!632624 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632626 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1438884 (arrayContainsKey!0 a!2862 lt!632626 #b00000000000000000000000000000000)))

(declare-fun lt!632625 () Unit!48514)

(assert (=> b!1438884 (= lt!632625 lt!632624)))

(declare-fun res!971538 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97802 (_ BitVec 32)) SeekEntryResult!11461)

(assert (=> b!1438884 (= res!971538 (= (seekEntryOrOpen!0 (select (arr!47186 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11461 #b00000000000000000000000000000000)))))

(assert (=> b!1438884 (=> (not res!971538) (not e!811632))))

(declare-fun b!1438885 () Bool)

(assert (=> b!1438885 (= e!811633 call!67680)))

(declare-fun d!154775 () Bool)

(declare-fun res!971537 () Bool)

(assert (=> d!154775 (=> res!971537 e!811634)))

(assert (=> d!154775 (= res!971537 (bvsge #b00000000000000000000000000000000 (size!47737 a!2862)))))

(assert (=> d!154775 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811634)))

(assert (= (and d!154775 (not res!971537)) b!1438883))

(assert (= (and b!1438883 c!133184) b!1438884))

(assert (= (and b!1438883 (not c!133184)) b!1438885))

(assert (= (and b!1438884 res!971538) b!1438882))

(assert (= (or b!1438882 b!1438885) bm!67677))

(declare-fun m!1328091 () Bool)

(assert (=> bm!67677 m!1328091))

(declare-fun m!1328093 () Bool)

(assert (=> b!1438883 m!1328093))

(assert (=> b!1438883 m!1328093))

(declare-fun m!1328095 () Bool)

(assert (=> b!1438883 m!1328095))

(assert (=> b!1438884 m!1328093))

(declare-fun m!1328097 () Bool)

(assert (=> b!1438884 m!1328097))

(declare-fun m!1328099 () Bool)

(assert (=> b!1438884 m!1328099))

(assert (=> b!1438884 m!1328093))

(declare-fun m!1328101 () Bool)

(assert (=> b!1438884 m!1328101))

(assert (=> b!1438837 d!154775))

(declare-fun b!1438904 () Bool)

(declare-fun e!811649 () SeekEntryResult!11461)

(assert (=> b!1438904 (= e!811649 (Intermediate!11461 false lt!632611 #b00000000000000000000000000000000))))

(declare-fun b!1438905 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438905 (= e!811649 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!632611 #b00000000000000000000000000000000 mask!2687) (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862)) mask!2687))))

(declare-fun b!1438906 () Bool)

(declare-fun lt!632631 () SeekEntryResult!11461)

(assert (=> b!1438906 (and (bvsge (index!48237 lt!632631) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632631) (size!47737 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862)))))))

(declare-fun res!971547 () Bool)

(assert (=> b!1438906 (= res!971547 (= (select (arr!47186 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862))) (index!48237 lt!632631)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811645 () Bool)

(assert (=> b!1438906 (=> res!971547 e!811645)))

(declare-fun b!1438907 () Bool)

(assert (=> b!1438907 (and (bvsge (index!48237 lt!632631) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632631) (size!47737 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862)))))))

(assert (=> b!1438907 (= e!811645 (= (select (arr!47186 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862))) (index!48237 lt!632631)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154777 () Bool)

(declare-fun e!811646 () Bool)

(assert (=> d!154777 e!811646))

(declare-fun c!133191 () Bool)

(get-info :version)

(assert (=> d!154777 (= c!133191 (and ((_ is Intermediate!11461) lt!632631) (undefined!12273 lt!632631)))))

(declare-fun e!811648 () SeekEntryResult!11461)

(assert (=> d!154777 (= lt!632631 e!811648)))

(declare-fun c!133192 () Bool)

(assert (=> d!154777 (= c!133192 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632632 () (_ BitVec 64))

(assert (=> d!154777 (= lt!632632 (select (arr!47186 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862))) lt!632611))))

(assert (=> d!154777 (validMask!0 mask!2687)))

(assert (=> d!154777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632611 (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862)) mask!2687) lt!632631)))

(declare-fun b!1438908 () Bool)

(assert (=> b!1438908 (= e!811646 (bvsge (x!129971 lt!632631) #b01111111111111111111111111111110))))

(declare-fun b!1438909 () Bool)

(assert (=> b!1438909 (= e!811648 e!811649)))

(declare-fun c!133193 () Bool)

(assert (=> b!1438909 (= c!133193 (or (= lt!632632 (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)) (= (bvadd lt!632632 lt!632632) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438910 () Bool)

(assert (=> b!1438910 (and (bvsge (index!48237 lt!632631) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632631) (size!47737 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862)))))))

(declare-fun res!971546 () Bool)

(assert (=> b!1438910 (= res!971546 (= (select (arr!47186 (array!97803 (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47737 a!2862))) (index!48237 lt!632631)) (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)))))

(assert (=> b!1438910 (=> res!971546 e!811645)))

(declare-fun e!811647 () Bool)

(assert (=> b!1438910 (= e!811647 e!811645)))

(declare-fun b!1438911 () Bool)

(assert (=> b!1438911 (= e!811648 (Intermediate!11461 true lt!632611 #b00000000000000000000000000000000))))

(declare-fun b!1438912 () Bool)

(assert (=> b!1438912 (= e!811646 e!811647)))

(declare-fun res!971545 () Bool)

(assert (=> b!1438912 (= res!971545 (and ((_ is Intermediate!11461) lt!632631) (not (undefined!12273 lt!632631)) (bvslt (x!129971 lt!632631) #b01111111111111111111111111111110) (bvsge (x!129971 lt!632631) #b00000000000000000000000000000000) (bvsge (x!129971 lt!632631) #b00000000000000000000000000000000)))))

(assert (=> b!1438912 (=> (not res!971545) (not e!811647))))

(assert (= (and d!154777 c!133192) b!1438911))

(assert (= (and d!154777 (not c!133192)) b!1438909))

(assert (= (and b!1438909 c!133193) b!1438904))

(assert (= (and b!1438909 (not c!133193)) b!1438905))

(assert (= (and d!154777 c!133191) b!1438908))

(assert (= (and d!154777 (not c!133191)) b!1438912))

(assert (= (and b!1438912 res!971545) b!1438910))

(assert (= (and b!1438910 (not res!971546)) b!1438906))

(assert (= (and b!1438906 (not res!971547)) b!1438907))

(declare-fun m!1328103 () Bool)

(assert (=> b!1438910 m!1328103))

(declare-fun m!1328105 () Bool)

(assert (=> b!1438905 m!1328105))

(assert (=> b!1438905 m!1328105))

(assert (=> b!1438905 m!1328029))

(declare-fun m!1328107 () Bool)

(assert (=> b!1438905 m!1328107))

(declare-fun m!1328109 () Bool)

(assert (=> d!154777 m!1328109))

(assert (=> d!154777 m!1328047))

(assert (=> b!1438906 m!1328103))

(assert (=> b!1438907 m!1328103))

(assert (=> b!1438842 d!154777))

(declare-fun d!154779 () Bool)

(declare-fun lt!632638 () (_ BitVec 32))

(declare-fun lt!632637 () (_ BitVec 32))

(assert (=> d!154779 (= lt!632638 (bvmul (bvxor lt!632637 (bvlshr lt!632637 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154779 (= lt!632637 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154779 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971548 (let ((h!35212 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129974 (bvmul (bvxor h!35212 (bvlshr h!35212 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129974 (bvlshr x!129974 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971548 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971548 #b00000000000000000000000000000000))))))

(assert (=> d!154779 (= (toIndex!0 (select (store (arr!47186 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632638 (bvlshr lt!632638 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438842 d!154779))

(declare-fun b!1438923 () Bool)

(declare-fun e!811661 () Bool)

(declare-fun e!811658 () Bool)

(assert (=> b!1438923 (= e!811661 e!811658)))

(declare-fun res!971557 () Bool)

(assert (=> b!1438923 (=> (not res!971557) (not e!811658))))

(declare-fun e!811659 () Bool)

(assert (=> b!1438923 (= res!971557 (not e!811659))))

(declare-fun res!971555 () Bool)

(assert (=> b!1438923 (=> (not res!971555) (not e!811659))))

(assert (=> b!1438923 (= res!971555 (validKeyInArray!0 (select (arr!47186 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1438925 () Bool)

(declare-fun e!811660 () Bool)

(declare-fun call!67683 () Bool)

(assert (=> b!1438925 (= e!811660 call!67683)))

(declare-fun b!1438926 () Bool)

(assert (=> b!1438926 (= e!811658 e!811660)))

(declare-fun c!133196 () Bool)

(assert (=> b!1438926 (= c!133196 (validKeyInArray!0 (select (arr!47186 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1438927 () Bool)

(assert (=> b!1438927 (= e!811660 call!67683)))

(declare-fun bm!67680 () Bool)

(assert (=> bm!67680 (= call!67683 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133196 (Cons!33863 (select (arr!47186 a!2862) #b00000000000000000000000000000000) Nil!33864) Nil!33864)))))

(declare-fun d!154781 () Bool)

(declare-fun res!971556 () Bool)

(assert (=> d!154781 (=> res!971556 e!811661)))

(assert (=> d!154781 (= res!971556 (bvsge #b00000000000000000000000000000000 (size!47737 a!2862)))))

(assert (=> d!154781 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33864) e!811661)))

(declare-fun b!1438924 () Bool)

(declare-fun contains!9905 (List!33867 (_ BitVec 64)) Bool)

(assert (=> b!1438924 (= e!811659 (contains!9905 Nil!33864 (select (arr!47186 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154781 (not res!971556)) b!1438923))

(assert (= (and b!1438923 res!971555) b!1438924))

(assert (= (and b!1438923 res!971557) b!1438926))

(assert (= (and b!1438926 c!133196) b!1438925))

(assert (= (and b!1438926 (not c!133196)) b!1438927))

(assert (= (or b!1438925 b!1438927) bm!67680))

(assert (=> b!1438923 m!1328093))

(assert (=> b!1438923 m!1328093))

(assert (=> b!1438923 m!1328095))

(assert (=> b!1438926 m!1328093))

(assert (=> b!1438926 m!1328093))

(assert (=> b!1438926 m!1328095))

(assert (=> bm!67680 m!1328093))

(declare-fun m!1328111 () Bool)

(assert (=> bm!67680 m!1328111))

(assert (=> b!1438924 m!1328093))

(assert (=> b!1438924 m!1328093))

(declare-fun m!1328113 () Bool)

(assert (=> b!1438924 m!1328113))

(assert (=> b!1438836 d!154781))

(declare-fun d!154785 () Bool)

(assert (=> d!154785 (= (validKeyInArray!0 (select (arr!47186 a!2862) i!1006)) (and (not (= (select (arr!47186 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47186 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438841 d!154785))

(declare-fun d!154787 () Bool)

(assert (=> d!154787 (= (validKeyInArray!0 (select (arr!47186 a!2862) j!93)) (and (not (= (select (arr!47186 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47186 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438840 d!154787))

(declare-fun d!154789 () Bool)

(assert (=> d!154789 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124398 d!154789))

(declare-fun d!154797 () Bool)

(assert (=> d!154797 (= (array_inv!36131 a!2862) (bvsge (size!47737 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124398 d!154797))

(declare-fun b!1438940 () Bool)

(declare-fun e!811675 () SeekEntryResult!11461)

(assert (=> b!1438940 (= e!811675 (Intermediate!11461 false (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438941 () Bool)

(assert (=> b!1438941 (= e!811675 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47186 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1438942 () Bool)

(declare-fun lt!632648 () SeekEntryResult!11461)

(assert (=> b!1438942 (and (bvsge (index!48237 lt!632648) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632648) (size!47737 a!2862)))))

(declare-fun res!971566 () Bool)

(assert (=> b!1438942 (= res!971566 (= (select (arr!47186 a!2862) (index!48237 lt!632648)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811671 () Bool)

(assert (=> b!1438942 (=> res!971566 e!811671)))

(declare-fun b!1438943 () Bool)

(assert (=> b!1438943 (and (bvsge (index!48237 lt!632648) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632648) (size!47737 a!2862)))))

(assert (=> b!1438943 (= e!811671 (= (select (arr!47186 a!2862) (index!48237 lt!632648)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154799 () Bool)

(declare-fun e!811672 () Bool)

(assert (=> d!154799 e!811672))

(declare-fun c!133200 () Bool)

(assert (=> d!154799 (= c!133200 (and ((_ is Intermediate!11461) lt!632648) (undefined!12273 lt!632648)))))

(declare-fun e!811674 () SeekEntryResult!11461)

(assert (=> d!154799 (= lt!632648 e!811674)))

(declare-fun c!133201 () Bool)

(assert (=> d!154799 (= c!133201 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632649 () (_ BitVec 64))

(assert (=> d!154799 (= lt!632649 (select (arr!47186 a!2862) (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687)))))

(assert (=> d!154799 (validMask!0 mask!2687)))

(assert (=> d!154799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687) (select (arr!47186 a!2862) j!93) a!2862 mask!2687) lt!632648)))

(declare-fun b!1438944 () Bool)

(assert (=> b!1438944 (= e!811672 (bvsge (x!129971 lt!632648) #b01111111111111111111111111111110))))

(declare-fun b!1438945 () Bool)

(assert (=> b!1438945 (= e!811674 e!811675)))

(declare-fun c!133202 () Bool)

(assert (=> b!1438945 (= c!133202 (or (= lt!632649 (select (arr!47186 a!2862) j!93)) (= (bvadd lt!632649 lt!632649) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438946 () Bool)

(assert (=> b!1438946 (and (bvsge (index!48237 lt!632648) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632648) (size!47737 a!2862)))))

(declare-fun res!971565 () Bool)

(assert (=> b!1438946 (= res!971565 (= (select (arr!47186 a!2862) (index!48237 lt!632648)) (select (arr!47186 a!2862) j!93)))))

(assert (=> b!1438946 (=> res!971565 e!811671)))

(declare-fun e!811673 () Bool)

(assert (=> b!1438946 (= e!811673 e!811671)))

(declare-fun b!1438947 () Bool)

(assert (=> b!1438947 (= e!811674 (Intermediate!11461 true (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1438948 () Bool)

(assert (=> b!1438948 (= e!811672 e!811673)))

(declare-fun res!971564 () Bool)

(assert (=> b!1438948 (= res!971564 (and ((_ is Intermediate!11461) lt!632648) (not (undefined!12273 lt!632648)) (bvslt (x!129971 lt!632648) #b01111111111111111111111111111110) (bvsge (x!129971 lt!632648) #b00000000000000000000000000000000) (bvsge (x!129971 lt!632648) #b00000000000000000000000000000000)))))

(assert (=> b!1438948 (=> (not res!971564) (not e!811673))))

(assert (= (and d!154799 c!133201) b!1438947))

(assert (= (and d!154799 (not c!133201)) b!1438945))

(assert (= (and b!1438945 c!133202) b!1438940))

(assert (= (and b!1438945 (not c!133202)) b!1438941))

(assert (= (and d!154799 c!133200) b!1438944))

(assert (= (and d!154799 (not c!133200)) b!1438948))

(assert (= (and b!1438948 res!971564) b!1438946))

(assert (= (and b!1438946 (not res!971565)) b!1438942))

(assert (= (and b!1438942 (not res!971566)) b!1438943))

(declare-fun m!1328127 () Bool)

(assert (=> b!1438946 m!1328127))

(assert (=> b!1438941 m!1328041))

(declare-fun m!1328129 () Bool)

(assert (=> b!1438941 m!1328129))

(assert (=> b!1438941 m!1328129))

(assert (=> b!1438941 m!1328039))

(declare-fun m!1328131 () Bool)

(assert (=> b!1438941 m!1328131))

(assert (=> d!154799 m!1328041))

(declare-fun m!1328133 () Bool)

(assert (=> d!154799 m!1328133))

(assert (=> d!154799 m!1328047))

(assert (=> b!1438942 m!1328127))

(assert (=> b!1438943 m!1328127))

(assert (=> b!1438838 d!154799))

(declare-fun d!154801 () Bool)

(declare-fun lt!632651 () (_ BitVec 32))

(declare-fun lt!632650 () (_ BitVec 32))

(assert (=> d!154801 (= lt!632651 (bvmul (bvxor lt!632650 (bvlshr lt!632650 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154801 (= lt!632650 ((_ extract 31 0) (bvand (bvxor (select (arr!47186 a!2862) j!93) (bvlshr (select (arr!47186 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154801 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971548 (let ((h!35212 ((_ extract 31 0) (bvand (bvxor (select (arr!47186 a!2862) j!93) (bvlshr (select (arr!47186 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129974 (bvmul (bvxor h!35212 (bvlshr h!35212 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129974 (bvlshr x!129974 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971548 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971548 #b00000000000000000000000000000000))))))

(assert (=> d!154801 (= (toIndex!0 (select (arr!47186 a!2862) j!93) mask!2687) (bvand (bvxor lt!632651 (bvlshr lt!632651 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438838 d!154801))

(declare-fun b!1438949 () Bool)

(declare-fun e!811680 () SeekEntryResult!11461)

(assert (=> b!1438949 (= e!811680 (Intermediate!11461 false index!646 x!665))))

(declare-fun b!1438950 () Bool)

(assert (=> b!1438950 (= e!811680 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47186 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1438951 () Bool)

(declare-fun lt!632652 () SeekEntryResult!11461)

(assert (=> b!1438951 (and (bvsge (index!48237 lt!632652) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632652) (size!47737 a!2862)))))

(declare-fun res!971569 () Bool)

(assert (=> b!1438951 (= res!971569 (= (select (arr!47186 a!2862) (index!48237 lt!632652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811676 () Bool)

(assert (=> b!1438951 (=> res!971569 e!811676)))

(declare-fun b!1438952 () Bool)

(assert (=> b!1438952 (and (bvsge (index!48237 lt!632652) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632652) (size!47737 a!2862)))))

(assert (=> b!1438952 (= e!811676 (= (select (arr!47186 a!2862) (index!48237 lt!632652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154803 () Bool)

(declare-fun e!811677 () Bool)

(assert (=> d!154803 e!811677))

(declare-fun c!133203 () Bool)

(assert (=> d!154803 (= c!133203 (and ((_ is Intermediate!11461) lt!632652) (undefined!12273 lt!632652)))))

(declare-fun e!811679 () SeekEntryResult!11461)

(assert (=> d!154803 (= lt!632652 e!811679)))

(declare-fun c!133204 () Bool)

(assert (=> d!154803 (= c!133204 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632653 () (_ BitVec 64))

(assert (=> d!154803 (= lt!632653 (select (arr!47186 a!2862) index!646))))

(assert (=> d!154803 (validMask!0 mask!2687)))

(assert (=> d!154803 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47186 a!2862) j!93) a!2862 mask!2687) lt!632652)))

(declare-fun b!1438953 () Bool)

(assert (=> b!1438953 (= e!811677 (bvsge (x!129971 lt!632652) #b01111111111111111111111111111110))))

(declare-fun b!1438954 () Bool)

(assert (=> b!1438954 (= e!811679 e!811680)))

(declare-fun c!133205 () Bool)

(assert (=> b!1438954 (= c!133205 (or (= lt!632653 (select (arr!47186 a!2862) j!93)) (= (bvadd lt!632653 lt!632653) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438955 () Bool)

(assert (=> b!1438955 (and (bvsge (index!48237 lt!632652) #b00000000000000000000000000000000) (bvslt (index!48237 lt!632652) (size!47737 a!2862)))))

(declare-fun res!971568 () Bool)

(assert (=> b!1438955 (= res!971568 (= (select (arr!47186 a!2862) (index!48237 lt!632652)) (select (arr!47186 a!2862) j!93)))))

(assert (=> b!1438955 (=> res!971568 e!811676)))

(declare-fun e!811678 () Bool)

(assert (=> b!1438955 (= e!811678 e!811676)))

(declare-fun b!1438956 () Bool)

(assert (=> b!1438956 (= e!811679 (Intermediate!11461 true index!646 x!665))))

(declare-fun b!1438957 () Bool)

(assert (=> b!1438957 (= e!811677 e!811678)))

(declare-fun res!971567 () Bool)

(assert (=> b!1438957 (= res!971567 (and ((_ is Intermediate!11461) lt!632652) (not (undefined!12273 lt!632652)) (bvslt (x!129971 lt!632652) #b01111111111111111111111111111110) (bvsge (x!129971 lt!632652) #b00000000000000000000000000000000) (bvsge (x!129971 lt!632652) x!665)))))

(assert (=> b!1438957 (=> (not res!971567) (not e!811678))))

(assert (= (and d!154803 c!133204) b!1438956))

(assert (= (and d!154803 (not c!133204)) b!1438954))

(assert (= (and b!1438954 c!133205) b!1438949))

(assert (= (and b!1438954 (not c!133205)) b!1438950))

(assert (= (and d!154803 c!133203) b!1438953))

(assert (= (and d!154803 (not c!133203)) b!1438957))

(assert (= (and b!1438957 res!971567) b!1438955))

(assert (= (and b!1438955 (not res!971568)) b!1438951))

(assert (= (and b!1438951 (not res!971569)) b!1438952))

(declare-fun m!1328135 () Bool)

(assert (=> b!1438955 m!1328135))

(declare-fun m!1328137 () Bool)

(assert (=> b!1438950 m!1328137))

(assert (=> b!1438950 m!1328137))

(assert (=> b!1438950 m!1328039))

(declare-fun m!1328139 () Bool)

(assert (=> b!1438950 m!1328139))

(declare-fun m!1328141 () Bool)

(assert (=> d!154803 m!1328141))

(assert (=> d!154803 m!1328047))

(assert (=> b!1438951 m!1328135))

(assert (=> b!1438952 m!1328135))

(assert (=> b!1438843 d!154803))

(check-sat (not b!1438905) (not b!1438924) (not d!154799) (not b!1438941) (not bm!67680) (not bm!67677) (not b!1438950) (not d!154777) (not b!1438883) (not b!1438884) (not b!1438926) (not d!154803) (not b!1438923))
(check-sat)
