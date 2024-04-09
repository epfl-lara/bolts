; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121550 () Bool)

(assert start!121550)

(declare-fun res!949182 () Bool)

(declare-fun e!798982 () Bool)

(assert (=> start!121550 (=> (not res!949182) (not e!798982))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121550 (= res!949182 (validMask!0 mask!2840))))

(assert (=> start!121550 e!798982))

(assert (=> start!121550 true))

(declare-datatypes ((array!96469 0))(
  ( (array!96470 (arr!46569 (Array (_ BitVec 32) (_ BitVec 64))) (size!47120 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96469)

(declare-fun array_inv!35514 (array!96469) Bool)

(assert (=> start!121550 (array_inv!35514 a!2901)))

(declare-fun b!1411844 () Bool)

(declare-fun res!949188 () Bool)

(assert (=> b!1411844 (=> (not res!949188) (not e!798982))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411844 (= res!949188 (and (= (size!47120 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47120 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47120 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411845 () Bool)

(declare-fun res!949180 () Bool)

(assert (=> b!1411845 (=> (not res!949180) (not e!798982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411845 (= res!949180 (validKeyInArray!0 (select (arr!46569 a!2901) j!112)))))

(declare-fun b!1411846 () Bool)

(declare-fun res!949185 () Bool)

(assert (=> b!1411846 (=> (not res!949185) (not e!798982))))

(declare-datatypes ((List!33268 0))(
  ( (Nil!33265) (Cons!33264 (h!34536 (_ BitVec 64)) (t!47969 List!33268)) )
))
(declare-fun arrayNoDuplicates!0 (array!96469 (_ BitVec 32) List!33268) Bool)

(assert (=> b!1411846 (= res!949185 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33265))))

(declare-fun b!1411847 () Bool)

(declare-fun res!949184 () Bool)

(assert (=> b!1411847 (=> (not res!949184) (not e!798982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96469 (_ BitVec 32)) Bool)

(assert (=> b!1411847 (= res!949184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411848 () Bool)

(declare-fun lt!621994 () array!96469)

(declare-fun e!798981 () Bool)

(declare-datatypes ((SeekEntryResult!10902 0))(
  ( (MissingZero!10902 (index!45984 (_ BitVec 32))) (Found!10902 (index!45985 (_ BitVec 32))) (Intermediate!10902 (undefined!11714 Bool) (index!45986 (_ BitVec 32)) (x!127572 (_ BitVec 32))) (Undefined!10902) (MissingVacant!10902 (index!45987 (_ BitVec 32))) )
))
(declare-fun lt!621991 () SeekEntryResult!10902)

(declare-fun lt!621992 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96469 (_ BitVec 32)) SeekEntryResult!10902)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96469 (_ BitVec 32)) SeekEntryResult!10902)

(assert (=> b!1411848 (= e!798981 (= (seekEntryOrOpen!0 lt!621992 lt!621994 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127572 lt!621991) (index!45986 lt!621991) (index!45986 lt!621991) (select (arr!46569 a!2901) j!112) lt!621994 mask!2840)))))

(declare-fun lt!621988 () SeekEntryResult!10902)

(assert (=> b!1411848 (and (not (undefined!11714 lt!621991)) (= (index!45986 lt!621991) i!1037) (bvslt (x!127572 lt!621991) (x!127572 lt!621988)) (= (select (store (arr!46569 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45986 lt!621991)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621993 () (_ BitVec 32))

(declare-datatypes ((Unit!47728 0))(
  ( (Unit!47729) )
))
(declare-fun lt!621989 () Unit!47728)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47728)

(assert (=> b!1411848 (= lt!621989 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621993 (x!127572 lt!621988) (index!45986 lt!621988) (x!127572 lt!621991) (index!45986 lt!621991) (undefined!11714 lt!621991) mask!2840))))

(declare-fun b!1411849 () Bool)

(declare-fun res!949186 () Bool)

(assert (=> b!1411849 (=> (not res!949186) (not e!798982))))

(assert (=> b!1411849 (= res!949186 (validKeyInArray!0 (select (arr!46569 a!2901) i!1037)))))

(declare-fun b!1411850 () Bool)

(declare-fun e!798980 () Bool)

(assert (=> b!1411850 (= e!798982 (not e!798980))))

(declare-fun res!949187 () Bool)

(assert (=> b!1411850 (=> res!949187 e!798980)))

(assert (=> b!1411850 (= res!949187 (or (not (is-Intermediate!10902 lt!621988)) (undefined!11714 lt!621988)))))

(declare-fun e!798983 () Bool)

(assert (=> b!1411850 e!798983))

(declare-fun res!949183 () Bool)

(assert (=> b!1411850 (=> (not res!949183) (not e!798983))))

(assert (=> b!1411850 (= res!949183 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621990 () Unit!47728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47728)

(assert (=> b!1411850 (= lt!621990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96469 (_ BitVec 32)) SeekEntryResult!10902)

(assert (=> b!1411850 (= lt!621988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621993 (select (arr!46569 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411850 (= lt!621993 (toIndex!0 (select (arr!46569 a!2901) j!112) mask!2840))))

(declare-fun b!1411851 () Bool)

(assert (=> b!1411851 (= e!798980 e!798981)))

(declare-fun res!949181 () Bool)

(assert (=> b!1411851 (=> res!949181 e!798981)))

(assert (=> b!1411851 (= res!949181 (or (= lt!621988 lt!621991) (not (is-Intermediate!10902 lt!621991))))))

(assert (=> b!1411851 (= lt!621991 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621992 mask!2840) lt!621992 lt!621994 mask!2840))))

(assert (=> b!1411851 (= lt!621992 (select (store (arr!46569 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1411851 (= lt!621994 (array!96470 (store (arr!46569 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47120 a!2901)))))

(declare-fun b!1411852 () Bool)

(assert (=> b!1411852 (= e!798983 (= (seekEntryOrOpen!0 (select (arr!46569 a!2901) j!112) a!2901 mask!2840) (Found!10902 j!112)))))

(assert (= (and start!121550 res!949182) b!1411844))

(assert (= (and b!1411844 res!949188) b!1411849))

(assert (= (and b!1411849 res!949186) b!1411845))

(assert (= (and b!1411845 res!949180) b!1411847))

(assert (= (and b!1411847 res!949184) b!1411846))

(assert (= (and b!1411846 res!949185) b!1411850))

(assert (= (and b!1411850 res!949183) b!1411852))

(assert (= (and b!1411850 (not res!949187)) b!1411851))

(assert (= (and b!1411851 (not res!949181)) b!1411848))

(declare-fun m!1301957 () Bool)

(assert (=> b!1411847 m!1301957))

(declare-fun m!1301959 () Bool)

(assert (=> b!1411849 m!1301959))

(assert (=> b!1411849 m!1301959))

(declare-fun m!1301961 () Bool)

(assert (=> b!1411849 m!1301961))

(declare-fun m!1301963 () Bool)

(assert (=> b!1411850 m!1301963))

(declare-fun m!1301965 () Bool)

(assert (=> b!1411850 m!1301965))

(assert (=> b!1411850 m!1301963))

(assert (=> b!1411850 m!1301963))

(declare-fun m!1301967 () Bool)

(assert (=> b!1411850 m!1301967))

(declare-fun m!1301969 () Bool)

(assert (=> b!1411850 m!1301969))

(declare-fun m!1301971 () Bool)

(assert (=> b!1411850 m!1301971))

(declare-fun m!1301973 () Bool)

(assert (=> b!1411851 m!1301973))

(assert (=> b!1411851 m!1301973))

(declare-fun m!1301975 () Bool)

(assert (=> b!1411851 m!1301975))

(declare-fun m!1301977 () Bool)

(assert (=> b!1411851 m!1301977))

(declare-fun m!1301979 () Bool)

(assert (=> b!1411851 m!1301979))

(declare-fun m!1301981 () Bool)

(assert (=> start!121550 m!1301981))

(declare-fun m!1301983 () Bool)

(assert (=> start!121550 m!1301983))

(assert (=> b!1411848 m!1301963))

(assert (=> b!1411848 m!1301963))

(declare-fun m!1301985 () Bool)

(assert (=> b!1411848 m!1301985))

(declare-fun m!1301987 () Bool)

(assert (=> b!1411848 m!1301987))

(assert (=> b!1411848 m!1301977))

(declare-fun m!1301989 () Bool)

(assert (=> b!1411848 m!1301989))

(declare-fun m!1301991 () Bool)

(assert (=> b!1411848 m!1301991))

(declare-fun m!1301993 () Bool)

(assert (=> b!1411846 m!1301993))

(assert (=> b!1411845 m!1301963))

(assert (=> b!1411845 m!1301963))

(declare-fun m!1301995 () Bool)

(assert (=> b!1411845 m!1301995))

(assert (=> b!1411852 m!1301963))

(assert (=> b!1411852 m!1301963))

(declare-fun m!1301997 () Bool)

(assert (=> b!1411852 m!1301997))

(push 1)

(assert (not b!1411852))

(assert (not b!1411845))

(assert (not b!1411847))

(assert (not b!1411848))

(assert (not start!121550))

(assert (not b!1411849))

(assert (not b!1411846))

(assert (not b!1411850))

(assert (not b!1411851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1411902 () Bool)

(declare-fun e!799020 () Bool)

(declare-fun call!67083 () Bool)

(assert (=> b!1411902 (= e!799020 call!67083)))

(declare-fun b!1411903 () Bool)

(declare-fun e!799019 () Bool)

(assert (=> b!1411903 (= e!799019 e!799020)))

(declare-fun c!130820 () Bool)

(assert (=> b!1411903 (= c!130820 (validKeyInArray!0 (select (arr!46569 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151935 () Bool)

(declare-fun res!949212 () Bool)

(declare-fun e!799022 () Bool)

(assert (=> d!151935 (=> res!949212 e!799022)))

(assert (=> d!151935 (= res!949212 (bvsge #b00000000000000000000000000000000 (size!47120 a!2901)))))

(assert (=> d!151935 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33265) e!799022)))

(declare-fun b!1411904 () Bool)

(declare-fun e!799021 () Bool)

(declare-fun contains!9826 (List!33268 (_ BitVec 64)) Bool)

(assert (=> b!1411904 (= e!799021 (contains!9826 Nil!33265 (select (arr!46569 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1411905 () Bool)

(assert (=> b!1411905 (= e!799022 e!799019)))

(declare-fun res!949211 () Bool)

(assert (=> b!1411905 (=> (not res!949211) (not e!799019))))

(assert (=> b!1411905 (= res!949211 (not e!799021))))

(declare-fun res!949210 () Bool)

(assert (=> b!1411905 (=> (not res!949210) (not e!799021))))

(assert (=> b!1411905 (= res!949210 (validKeyInArray!0 (select (arr!46569 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1411906 () Bool)

(assert (=> b!1411906 (= e!799020 call!67083)))

(declare-fun bm!67080 () Bool)

(assert (=> bm!67080 (= call!67083 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130820 (Cons!33264 (select (arr!46569 a!2901) #b00000000000000000000000000000000) Nil!33265) Nil!33265)))))

(assert (= (and d!151935 (not res!949212)) b!1411905))

(assert (= (and b!1411905 res!949210) b!1411904))

(assert (= (and b!1411905 res!949211) b!1411903))

(assert (= (and b!1411903 c!130820) b!1411902))

(assert (= (and b!1411903 (not c!130820)) b!1411906))

(assert (= (or b!1411902 b!1411906) bm!67080))

(declare-fun m!1302015 () Bool)

(assert (=> b!1411903 m!1302015))

(assert (=> b!1411903 m!1302015))

(declare-fun m!1302017 () Bool)

(assert (=> b!1411903 m!1302017))

(assert (=> b!1411904 m!1302015))

(assert (=> b!1411904 m!1302015))

(declare-fun m!1302019 () Bool)

(assert (=> b!1411904 m!1302019))

(assert (=> b!1411905 m!1302015))

(assert (=> b!1411905 m!1302015))

(assert (=> b!1411905 m!1302017))

(assert (=> bm!67080 m!1302015))

(declare-fun m!1302021 () Bool)

(assert (=> bm!67080 m!1302021))

(assert (=> b!1411846 d!151935))

(declare-fun b!1411976 () Bool)

(declare-fun e!799062 () Bool)

(declare-fun lt!622035 () SeekEntryResult!10902)

(assert (=> b!1411976 (= e!799062 (bvsge (x!127572 lt!622035) #b01111111111111111111111111111110))))

(declare-fun b!1411977 () Bool)

(assert (=> b!1411977 (and (bvsge (index!45986 lt!622035) #b00000000000000000000000000000000) (bvslt (index!45986 lt!622035) (size!47120 lt!621994)))))

(declare-fun res!949230 () Bool)

(assert (=> b!1411977 (= res!949230 (= (select (arr!46569 lt!621994) (index!45986 lt!622035)) lt!621992))))

(declare-fun e!799063 () Bool)

(assert (=> b!1411977 (=> res!949230 e!799063)))

(declare-fun e!799060 () Bool)

(assert (=> b!1411977 (= e!799060 e!799063)))

(declare-fun d!151937 () Bool)

(assert (=> d!151937 e!799062))

(declare-fun c!130848 () Bool)

(assert (=> d!151937 (= c!130848 (and (is-Intermediate!10902 lt!622035) (undefined!11714 lt!622035)))))

(declare-fun e!799061 () SeekEntryResult!10902)

(assert (=> d!151937 (= lt!622035 e!799061)))

(declare-fun c!130849 () Bool)

(assert (=> d!151937 (= c!130849 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!622036 () (_ BitVec 64))

(assert (=> d!151937 (= lt!622036 (select (arr!46569 lt!621994) (toIndex!0 lt!621992 mask!2840)))))

(assert (=> d!151937 (validMask!0 mask!2840)))

(assert (=> d!151937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621992 mask!2840) lt!621992 lt!621994 mask!2840) lt!622035)))

(declare-fun b!1411978 () Bool)

(assert (=> b!1411978 (and (bvsge (index!45986 lt!622035) #b00000000000000000000000000000000) (bvslt (index!45986 lt!622035) (size!47120 lt!621994)))))

(declare-fun res!949229 () Bool)

(assert (=> b!1411978 (= res!949229 (= (select (arr!46569 lt!621994) (index!45986 lt!622035)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1411978 (=> res!949229 e!799063)))

(declare-fun b!1411979 () Bool)

(assert (=> b!1411979 (= e!799061 (Intermediate!10902 true (toIndex!0 lt!621992 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1411980 () Bool)

(assert (=> b!1411980 (= e!799062 e!799060)))

(declare-fun res!949231 () Bool)

(assert (=> b!1411980 (= res!949231 (and (is-Intermediate!10902 lt!622035) (not (undefined!11714 lt!622035)) (bvslt (x!127572 lt!622035) #b01111111111111111111111111111110) (bvsge (x!127572 lt!622035) #b00000000000000000000000000000000) (bvsge (x!127572 lt!622035) #b00000000000000000000000000000000)))))

(assert (=> b!1411980 (=> (not res!949231) (not e!799060))))

(declare-fun b!1411981 () Bool)

(assert (=> b!1411981 (and (bvsge (index!45986 lt!622035) #b00000000000000000000000000000000) (bvslt (index!45986 lt!622035) (size!47120 lt!621994)))))

(assert (=> b!1411981 (= e!799063 (= (select (arr!46569 lt!621994) (index!45986 lt!622035)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1411982 () Bool)

(declare-fun e!799064 () SeekEntryResult!10902)

(assert (=> b!1411982 (= e!799064 (Intermediate!10902 false (toIndex!0 lt!621992 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1411983 () Bool)

(assert (=> b!1411983 (= e!799061 e!799064)))

(declare-fun c!130850 () Bool)

(assert (=> b!1411983 (= c!130850 (or (= lt!622036 lt!621992) (= (bvadd lt!622036 lt!622036) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1411984 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411984 (= e!799064 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!621992 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!621992 lt!621994 mask!2840))))

(assert (= (and d!151937 c!130849) b!1411979))

(assert (= (and d!151937 (not c!130849)) b!1411983))

(assert (= (and b!1411983 c!130850) b!1411982))

(assert (= (and b!1411983 (not c!130850)) b!1411984))

(assert (= (and d!151937 c!130848) b!1411976))

(assert (= (and d!151937 (not c!130848)) b!1411980))

(assert (= (and b!1411980 res!949231) b!1411977))

(assert (= (and b!1411977 (not res!949230)) b!1411978))

(assert (= (and b!1411978 (not res!949229)) b!1411981))

(declare-fun m!1302051 () Bool)

(assert (=> b!1411978 m!1302051))

(assert (=> b!1411977 m!1302051))

(assert (=> b!1411981 m!1302051))

(assert (=> d!151937 m!1301973))

(declare-fun m!1302053 () Bool)

(assert (=> d!151937 m!1302053))

(assert (=> d!151937 m!1301981))

(assert (=> b!1411984 m!1301973))

(declare-fun m!1302055 () Bool)

(assert (=> b!1411984 m!1302055))

(assert (=> b!1411984 m!1302055))

(declare-fun m!1302057 () Bool)

(assert (=> b!1411984 m!1302057))

(assert (=> b!1411851 d!151937))

(declare-fun d!151947 () Bool)

(declare-fun lt!622048 () (_ BitVec 32))

(declare-fun lt!622047 () (_ BitVec 32))

(assert (=> d!151947 (= lt!622048 (bvmul (bvxor lt!622047 (bvlshr lt!622047 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151947 (= lt!622047 ((_ extract 31 0) (bvand (bvxor lt!621992 (bvlshr lt!621992 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151947 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!949232 (let ((h!34538 ((_ extract 31 0) (bvand (bvxor lt!621992 (bvlshr lt!621992 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127578 (bvmul (bvxor h!34538 (bvlshr h!34538 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127578 (bvlshr x!127578 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!949232 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!949232 #b00000000000000000000000000000000))))))

(assert (=> d!151947 (= (toIndex!0 lt!621992 mask!2840) (bvand (bvxor lt!622048 (bvlshr lt!622048 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1411851 d!151947))

(declare-fun d!151953 () Bool)

(declare-fun lt!622078 () SeekEntryResult!10902)

(assert (=> d!151953 (and (or (is-Undefined!10902 lt!622078) (not (is-Found!10902 lt!622078)) (and (bvsge (index!45985 lt!622078) #b00000000000000000000000000000000) (bvslt (index!45985 lt!622078) (size!47120 a!2901)))) (or (is-Undefined!10902 lt!622078) (is-Found!10902 lt!622078) (not (is-MissingZero!10902 lt!622078)) (and (bvsge (index!45984 lt!622078) #b00000000000000000000000000000000) (bvslt (index!45984 lt!622078) (size!47120 a!2901)))) (or (is-Undefined!10902 lt!622078) (is-Found!10902 lt!622078) (is-MissingZero!10902 lt!622078) (not (is-MissingVacant!10902 lt!622078)) (and (bvsge (index!45987 lt!622078) #b00000000000000000000000000000000) (bvslt (index!45987 lt!622078) (size!47120 a!2901)))) (or (is-Undefined!10902 lt!622078) (ite (is-Found!10902 lt!622078) (= (select (arr!46569 a!2901) (index!45985 lt!622078)) (select (arr!46569 a!2901) j!112)) (ite (is-MissingZero!10902 lt!622078) (= (select (arr!46569 a!2901) (index!45984 lt!622078)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10902 lt!622078) (= (select (arr!46569 a!2901) (index!45987 lt!622078)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!799097 () SeekEntryResult!10902)

(assert (=> d!151953 (= lt!622078 e!799097)))

(declare-fun c!130876 () Bool)

(declare-fun lt!622076 () SeekEntryResult!10902)

(assert (=> d!151953 (= c!130876 (and (is-Intermediate!10902 lt!622076) (undefined!11714 lt!622076)))))

(assert (=> d!151953 (= lt!622076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46569 a!2901) j!112) mask!2840) (select (arr!46569 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151953 (validMask!0 mask!2840)))

(assert (=> d!151953 (= (seekEntryOrOpen!0 (select (arr!46569 a!2901) j!112) a!2901 mask!2840) lt!622078)))

(declare-fun b!1412039 () Bool)

(declare-fun c!130877 () Bool)

(declare-fun lt!622077 () (_ BitVec 64))

(assert (=> b!1412039 (= c!130877 (= lt!622077 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799095 () SeekEntryResult!10902)

(declare-fun e!799096 () SeekEntryResult!10902)

(assert (=> b!1412039 (= e!799095 e!799096)))

(declare-fun b!1412040 () Bool)

(assert (=> b!1412040 (= e!799097 e!799095)))

(assert (=> b!1412040 (= lt!622077 (select (arr!46569 a!2901) (index!45986 lt!622076)))))

(declare-fun c!130875 () Bool)

(assert (=> b!1412040 (= c!130875 (= lt!622077 (select (arr!46569 a!2901) j!112)))))

(declare-fun b!1412041 () Bool)

(assert (=> b!1412041 (= e!799095 (Found!10902 (index!45986 lt!622076)))))

(declare-fun b!1412042 () Bool)

(assert (=> b!1412042 (= e!799097 Undefined!10902)))

(declare-fun b!1412043 () Bool)

(assert (=> b!1412043 (= e!799096 (MissingZero!10902 (index!45986 lt!622076)))))

(declare-fun b!1412044 () Bool)

(assert (=> b!1412044 (= e!799096 (seekKeyOrZeroReturnVacant!0 (x!127572 lt!622076) (index!45986 lt!622076) (index!45986 lt!622076) (select (arr!46569 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!151953 c!130876) b!1412042))

(assert (= (and d!151953 (not c!130876)) b!1412040))

(assert (= (and b!1412040 c!130875) b!1412041))

(assert (= (and b!1412040 (not c!130875)) b!1412039))

(assert (= (and b!1412039 c!130877) b!1412043))

(assert (= (and b!1412039 (not c!130877)) b!1412044))

(declare-fun m!1302107 () Bool)

(assert (=> d!151953 m!1302107))

(assert (=> d!151953 m!1301981))

(assert (=> d!151953 m!1301963))

(assert (=> d!151953 m!1301965))

(assert (=> d!151953 m!1301965))

(assert (=> d!151953 m!1301963))

(declare-fun m!1302109 () Bool)

(assert (=> d!151953 m!1302109))

(declare-fun m!1302111 () Bool)

(assert (=> d!151953 m!1302111))

(declare-fun m!1302113 () Bool)

(assert (=> d!151953 m!1302113))

(declare-fun m!1302115 () Bool)

(assert (=> b!1412040 m!1302115))

(assert (=> b!1412044 m!1301963))

(declare-fun m!1302117 () Bool)

(assert (=> b!1412044 m!1302117))

(assert (=> b!1411852 d!151953))

(declare-fun d!151969 () Bool)

(declare-fun res!949243 () Bool)

(declare-fun e!799110 () Bool)

(assert (=> d!151969 (=> res!949243 e!799110)))

(assert (=> d!151969 (= res!949243 (bvsge j!112 (size!47120 a!2901)))))

(assert (=> d!151969 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!799110)))

(declare-fun b!1412065 () Bool)

(declare-fun e!799111 () Bool)

(declare-fun call!67089 () Bool)

(assert (=> b!1412065 (= e!799111 call!67089)))

(declare-fun b!1412066 () Bool)

(declare-fun e!799112 () Bool)

(assert (=> b!1412066 (= e!799111 e!799112)))

(declare-fun lt!622091 () (_ BitVec 64))

(assert (=> b!1412066 (= lt!622091 (select (arr!46569 a!2901) j!112))))

(declare-fun lt!622090 () Unit!47728)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96469 (_ BitVec 64) (_ BitVec 32)) Unit!47728)

(assert (=> b!1412066 (= lt!622090 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!622091 j!112))))

(declare-fun arrayContainsKey!0 (array!96469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1412066 (arrayContainsKey!0 a!2901 lt!622091 #b00000000000000000000000000000000)))

(declare-fun lt!622089 () Unit!47728)

(assert (=> b!1412066 (= lt!622089 lt!622090)))

(declare-fun res!949244 () Bool)

(assert (=> b!1412066 (= res!949244 (= (seekEntryOrOpen!0 (select (arr!46569 a!2901) j!112) a!2901 mask!2840) (Found!10902 j!112)))))

(assert (=> b!1412066 (=> (not res!949244) (not e!799112))))

(declare-fun b!1412067 () Bool)

(assert (=> b!1412067 (= e!799110 e!799111)))

(declare-fun c!130886 () Bool)

(assert (=> b!1412067 (= c!130886 (validKeyInArray!0 (select (arr!46569 a!2901) j!112)))))

(declare-fun bm!67086 () Bool)

(assert (=> bm!67086 (= call!67089 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1412068 () Bool)

(assert (=> b!1412068 (= e!799112 call!67089)))

(assert (= (and d!151969 (not res!949243)) b!1412067))

(assert (= (and b!1412067 c!130886) b!1412066))

(assert (= (and b!1412067 (not c!130886)) b!1412065))

(assert (= (and b!1412066 res!949244) b!1412068))

(assert (= (or b!1412068 b!1412065) bm!67086))

(assert (=> b!1412066 m!1301963))

(declare-fun m!1302119 () Bool)

(assert (=> b!1412066 m!1302119))

(declare-fun m!1302121 () Bool)

(assert (=> b!1412066 m!1302121))

(assert (=> b!1412066 m!1301963))

(assert (=> b!1412066 m!1301997))

(assert (=> b!1412067 m!1301963))

(assert (=> b!1412067 m!1301963))

(assert (=> b!1412067 m!1301995))

(declare-fun m!1302123 () Bool)

(assert (=> bm!67086 m!1302123))

(assert (=> b!1411850 d!151969))

(declare-fun d!151971 () Bool)

(assert (=> d!151971 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!622100 () Unit!47728)

(declare-fun choose!38 (array!96469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47728)

(assert (=> d!151971 (= lt!622100 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151971 (validMask!0 mask!2840)))

(assert (=> d!151971 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!622100)))

(declare-fun bs!41163 () Bool)

(assert (= bs!41163 d!151971))

(assert (=> bs!41163 m!1301971))

(declare-fun m!1302135 () Bool)

(assert (=> bs!41163 m!1302135))

(assert (=> bs!41163 m!1301981))

(assert (=> b!1411850 d!151971))

(declare-fun b!1412093 () Bool)

(declare-fun e!799128 () Bool)

(declare-fun lt!622101 () SeekEntryResult!10902)

(assert (=> b!1412093 (= e!799128 (bvsge (x!127572 lt!622101) #b01111111111111111111111111111110))))

(declare-fun b!1412094 () Bool)

(assert (=> b!1412094 (and (bvsge (index!45986 lt!622101) #b00000000000000000000000000000000) (bvslt (index!45986 lt!622101) (size!47120 a!2901)))))

(declare-fun res!949252 () Bool)

(assert (=> b!1412094 (= res!949252 (= (select (arr!46569 a!2901) (index!45986 lt!622101)) (select (arr!46569 a!2901) j!112)))))

(declare-fun e!799129 () Bool)

(assert (=> b!1412094 (=> res!949252 e!799129)))

(declare-fun e!799126 () Bool)

(assert (=> b!1412094 (= e!799126 e!799129)))

(declare-fun d!151975 () Bool)

(assert (=> d!151975 e!799128))

(declare-fun c!130896 () Bool)

(assert (=> d!151975 (= c!130896 (and (is-Intermediate!10902 lt!622101) (undefined!11714 lt!622101)))))

(declare-fun e!799127 () SeekEntryResult!10902)

(assert (=> d!151975 (= lt!622101 e!799127)))

(declare-fun c!130897 () Bool)

(assert (=> d!151975 (= c!130897 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!622102 () (_ BitVec 64))

(assert (=> d!151975 (= lt!622102 (select (arr!46569 a!2901) lt!621993))))

(assert (=> d!151975 (validMask!0 mask!2840)))

(assert (=> d!151975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621993 (select (arr!46569 a!2901) j!112) a!2901 mask!2840) lt!622101)))

(declare-fun b!1412095 () Bool)

(assert (=> b!1412095 (and (bvsge (index!45986 lt!622101) #b00000000000000000000000000000000) (bvslt (index!45986 lt!622101) (size!47120 a!2901)))))

(declare-fun res!949251 () Bool)

(assert (=> b!1412095 (= res!949251 (= (select (arr!46569 a!2901) (index!45986 lt!622101)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1412095 (=> res!949251 e!799129)))

(declare-fun b!1412096 () Bool)

(assert (=> b!1412096 (= e!799127 (Intermediate!10902 true lt!621993 #b00000000000000000000000000000000))))

(declare-fun b!1412097 () Bool)

(assert (=> b!1412097 (= e!799128 e!799126)))

(declare-fun res!949253 () Bool)

(assert (=> b!1412097 (= res!949253 (and (is-Intermediate!10902 lt!622101) (not (undefined!11714 lt!622101)) (bvslt (x!127572 lt!622101) #b01111111111111111111111111111110) (bvsge (x!127572 lt!622101) #b00000000000000000000000000000000) (bvsge (x!127572 lt!622101) #b00000000000000000000000000000000)))))

(assert (=> b!1412097 (=> (not res!949253) (not e!799126))))

(declare-fun b!1412098 () Bool)

(assert (=> b!1412098 (and (bvsge (index!45986 lt!622101) #b00000000000000000000000000000000) (bvslt (index!45986 lt!622101) (size!47120 a!2901)))))

(assert (=> b!1412098 (= e!799129 (= (select (arr!46569 a!2901) (index!45986 lt!622101)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1412099 () Bool)

(declare-fun e!799130 () SeekEntryResult!10902)

(assert (=> b!1412099 (= e!799130 (Intermediate!10902 false lt!621993 #b00000000000000000000000000000000))))

(declare-fun b!1412100 () Bool)

(assert (=> b!1412100 (= e!799127 e!799130)))

(declare-fun c!130898 () Bool)

(assert (=> b!1412100 (= c!130898 (or (= lt!622102 (select (arr!46569 a!2901) j!112)) (= (bvadd lt!622102 lt!622102) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1412101 () Bool)

(assert (=> b!1412101 (= e!799130 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!621993 #b00000000000000000000000000000000 mask!2840) (select (arr!46569 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!151975 c!130897) b!1412096))

(assert (= (and d!151975 (not c!130897)) b!1412100))

(assert (= (and b!1412100 c!130898) b!1412099))

(assert (= (and b!1412100 (not c!130898)) b!1412101))

(assert (= (and d!151975 c!130896) b!1412093))

(assert (= (and d!151975 (not c!130896)) b!1412097))

(assert (= (and b!1412097 res!949253) b!1412094))

(assert (= (and b!1412094 (not res!949252)) b!1412095))

(assert (= (and b!1412095 (not res!949251)) b!1412098))

(declare-fun m!1302137 () Bool)

(assert (=> b!1412095 m!1302137))

(assert (=> b!1412094 m!1302137))

(assert (=> b!1412098 m!1302137))

(declare-fun m!1302139 () Bool)

(assert (=> d!151975 m!1302139))

(assert (=> d!151975 m!1301981))

(declare-fun m!1302141 () Bool)

(assert (=> b!1412101 m!1302141))

(assert (=> b!1412101 m!1302141))

(assert (=> b!1412101 m!1301963))

(declare-fun m!1302143 () Bool)

(assert (=> b!1412101 m!1302143))

(assert (=> b!1411850 d!151975))

(declare-fun d!151977 () Bool)

(declare-fun lt!622106 () (_ BitVec 32))

(declare-fun lt!622105 () (_ BitVec 32))

(assert (=> d!151977 (= lt!622106 (bvmul (bvxor lt!622105 (bvlshr lt!622105 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151977 (= lt!622105 ((_ extract 31 0) (bvand (bvxor (select (arr!46569 a!2901) j!112) (bvlshr (select (arr!46569 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151977 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!949232 (let ((h!34538 ((_ extract 31 0) (bvand (bvxor (select (arr!46569 a!2901) j!112) (bvlshr (select (arr!46569 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127578 (bvmul (bvxor h!34538 (bvlshr h!34538 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127578 (bvlshr x!127578 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!949232 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!949232 #b00000000000000000000000000000000))))))

(assert (=> d!151977 (= (toIndex!0 (select (arr!46569 a!2901) j!112) mask!2840) (bvand (bvxor lt!622106 (bvlshr lt!622106 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1411850 d!151977))

(declare-fun d!151979 () Bool)

(assert (=> d!151979 (= (validKeyInArray!0 (select (arr!46569 a!2901) j!112)) (and (not (= (select (arr!46569 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46569 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1411845 d!151979))

(declare-fun d!151983 () Bool)

(assert (=> d!151983 (= (validKeyInArray!0 (select (arr!46569 a!2901) i!1037)) (and (not (= (select (arr!46569 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46569 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1411849 d!151983))

(declare-fun d!151985 () Bool)

(declare-fun res!949259 () Bool)

(declare-fun e!799139 () Bool)

(assert (=> d!151985 (=> res!949259 e!799139)))

(assert (=> d!151985 (= res!949259 (bvsge #b00000000000000000000000000000000 (size!47120 a!2901)))))

(assert (=> d!151985 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!799139)))

(declare-fun b!1412115 () Bool)

(declare-fun e!799140 () Bool)

(declare-fun call!67091 () Bool)

(assert (=> b!1412115 (= e!799140 call!67091)))

(declare-fun b!1412116 () Bool)

(declare-fun e!799141 () Bool)

(assert (=> b!1412116 (= e!799140 e!799141)))

(declare-fun lt!622115 () (_ BitVec 64))

(assert (=> b!1412116 (= lt!622115 (select (arr!46569 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!622114 () Unit!47728)

(assert (=> b!1412116 (= lt!622114 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!622115 #b00000000000000000000000000000000))))

(assert (=> b!1412116 (arrayContainsKey!0 a!2901 lt!622115 #b00000000000000000000000000000000)))

(declare-fun lt!622113 () Unit!47728)

(assert (=> b!1412116 (= lt!622113 lt!622114)))

(declare-fun res!949260 () Bool)

(assert (=> b!1412116 (= res!949260 (= (seekEntryOrOpen!0 (select (arr!46569 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10902 #b00000000000000000000000000000000)))))

(assert (=> b!1412116 (=> (not res!949260) (not e!799141))))

(declare-fun b!1412117 () Bool)

(assert (=> b!1412117 (= e!799139 e!799140)))

(declare-fun c!130903 () Bool)

(assert (=> b!1412117 (= c!130903 (validKeyInArray!0 (select (arr!46569 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67088 () Bool)

(assert (=> bm!67088 (= call!67091 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1412118 () Bool)

(assert (=> b!1412118 (= e!799141 call!67091)))

(assert (= (and d!151985 (not res!949259)) b!1412117))

(assert (= (and b!1412117 c!130903) b!1412116))

(assert (= (and b!1412117 (not c!130903)) b!1412115))

(assert (= (and b!1412116 res!949260) b!1412118))

(assert (= (or b!1412118 b!1412115) bm!67088))

(assert (=> b!1412116 m!1302015))

(declare-fun m!1302153 () Bool)

(assert (=> b!1412116 m!1302153))

(declare-fun m!1302155 () Bool)

(assert (=> b!1412116 m!1302155))

(assert (=> b!1412116 m!1302015))

(declare-fun m!1302157 () Bool)

(assert (=> b!1412116 m!1302157))

(assert (=> b!1412117 m!1302015))

(assert (=> b!1412117 m!1302015))

(assert (=> b!1412117 m!1302017))

(declare-fun m!1302163 () Bool)

(assert (=> bm!67088 m!1302163))

(assert (=> b!1411847 d!151985))

(declare-fun d!151989 () Bool)

(declare-fun lt!622118 () SeekEntryResult!10902)

(assert (=> d!151989 (and (or (is-Undefined!10902 lt!622118) (not (is-Found!10902 lt!622118)) (and (bvsge (index!45985 lt!622118) #b00000000000000000000000000000000) (bvslt (index!45985 lt!622118) (size!47120 lt!621994)))) (or (is-Undefined!10902 lt!622118) (is-Found!10902 lt!622118) (not (is-MissingZero!10902 lt!622118)) (and (bvsge (index!45984 lt!622118) #b00000000000000000000000000000000) (bvslt (index!45984 lt!622118) (size!47120 lt!621994)))) (or (is-Undefined!10902 lt!622118) (is-Found!10902 lt!622118) (is-MissingZero!10902 lt!622118) (not (is-MissingVacant!10902 lt!622118)) (and (bvsge (index!45987 lt!622118) #b00000000000000000000000000000000) (bvslt (index!45987 lt!622118) (size!47120 lt!621994)))) (or (is-Undefined!10902 lt!622118) (ite (is-Found!10902 lt!622118) (= (select (arr!46569 lt!621994) (index!45985 lt!622118)) lt!621992) (ite (is-MissingZero!10902 lt!622118) (= (select (arr!46569 lt!621994) (index!45984 lt!622118)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10902 lt!622118) (= (select (arr!46569 lt!621994) (index!45987 lt!622118)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!799144 () SeekEntryResult!10902)

(assert (=> d!151989 (= lt!622118 e!799144)))

(declare-fun c!130905 () Bool)

(declare-fun lt!622116 () SeekEntryResult!10902)

(assert (=> d!151989 (= c!130905 (and (is-Intermediate!10902 lt!622116) (undefined!11714 lt!622116)))))

(assert (=> d!151989 (= lt!622116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621992 mask!2840) lt!621992 lt!621994 mask!2840))))

(assert (=> d!151989 (validMask!0 mask!2840)))

(assert (=> d!151989 (= (seekEntryOrOpen!0 lt!621992 lt!621994 mask!2840) lt!622118)))

(declare-fun b!1412119 () Bool)

(declare-fun c!130906 () Bool)

(declare-fun lt!622117 () (_ BitVec 64))

(assert (=> b!1412119 (= c!130906 (= lt!622117 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799142 () SeekEntryResult!10902)

(declare-fun e!799143 () SeekEntryResult!10902)

(assert (=> b!1412119 (= e!799142 e!799143)))

(declare-fun b!1412120 () Bool)

(assert (=> b!1412120 (= e!799144 e!799142)))

(assert (=> b!1412120 (= lt!622117 (select (arr!46569 lt!621994) (index!45986 lt!622116)))))

(declare-fun c!130904 () Bool)

(assert (=> b!1412120 (= c!130904 (= lt!622117 lt!621992))))

(declare-fun b!1412121 () Bool)

(assert (=> b!1412121 (= e!799142 (Found!10902 (index!45986 lt!622116)))))

(declare-fun b!1412122 () Bool)

(assert (=> b!1412122 (= e!799144 Undefined!10902)))

(declare-fun b!1412123 () Bool)

(assert (=> b!1412123 (= e!799143 (MissingZero!10902 (index!45986 lt!622116)))))

(declare-fun b!1412124 () Bool)

(assert (=> b!1412124 (= e!799143 (seekKeyOrZeroReturnVacant!0 (x!127572 lt!622116) (index!45986 lt!622116) (index!45986 lt!622116) lt!621992 lt!621994 mask!2840))))

(assert (= (and d!151989 c!130905) b!1412122))

(assert (= (and d!151989 (not c!130905)) b!1412120))

(assert (= (and b!1412120 c!130904) b!1412121))

(assert (= (and b!1412120 (not c!130904)) b!1412119))

(assert (= (and b!1412119 c!130906) b!1412123))

(assert (= (and b!1412119 (not c!130906)) b!1412124))

(declare-fun m!1302169 () Bool)

(assert (=> d!151989 m!1302169))

(assert (=> d!151989 m!1301981))

(assert (=> d!151989 m!1301973))

(assert (=> d!151989 m!1301973))

(assert (=> d!151989 m!1301975))

(declare-fun m!1302171 () Bool)

(assert (=> d!151989 m!1302171))

(declare-fun m!1302173 () Bool)

(assert (=> d!151989 m!1302173))

(declare-fun m!1302175 () Bool)

(assert (=> b!1412120 m!1302175))

(declare-fun m!1302177 () Bool)

(assert (=> b!1412124 m!1302177))

(assert (=> b!1411848 d!151989))

(declare-fun b!1412159 () Bool)

(declare-fun e!799164 () SeekEntryResult!10902)

(declare-fun e!799166 () SeekEntryResult!10902)

(assert (=> b!1412159 (= e!799164 e!799166)))

(declare-fun c!130922 () Bool)

(declare-fun lt!622147 () (_ BitVec 64))

(assert (=> b!1412159 (= c!130922 (= lt!622147 (select (arr!46569 a!2901) j!112)))))

(declare-fun d!151993 () Bool)

(declare-fun lt!622146 () SeekEntryResult!10902)

(assert (=> d!151993 (and (or (is-Undefined!10902 lt!622146) (not (is-Found!10902 lt!622146)) (and (bvsge (index!45985 lt!622146) #b00000000000000000000000000000000) (bvslt (index!45985 lt!622146) (size!47120 lt!621994)))) (or (is-Undefined!10902 lt!622146) (is-Found!10902 lt!622146) (not (is-MissingVacant!10902 lt!622146)) (not (= (index!45987 lt!622146) (index!45986 lt!621991))) (and (bvsge (index!45987 lt!622146) #b00000000000000000000000000000000) (bvslt (index!45987 lt!622146) (size!47120 lt!621994)))) (or (is-Undefined!10902 lt!622146) (ite (is-Found!10902 lt!622146) (= (select (arr!46569 lt!621994) (index!45985 lt!622146)) (select (arr!46569 a!2901) j!112)) (and (is-MissingVacant!10902 lt!622146) (= (index!45987 lt!622146) (index!45986 lt!621991)) (= (select (arr!46569 lt!621994) (index!45987 lt!622146)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

