; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121548 () Bool)

(assert start!121548)

(declare-fun b!1411817 () Bool)

(declare-fun e!798968 () Bool)

(declare-fun e!798966 () Bool)

(assert (=> b!1411817 (= e!798968 e!798966)))

(declare-fun res!949157 () Bool)

(assert (=> b!1411817 (=> res!949157 e!798966)))

(declare-datatypes ((SeekEntryResult!10901 0))(
  ( (MissingZero!10901 (index!45980 (_ BitVec 32))) (Found!10901 (index!45981 (_ BitVec 32))) (Intermediate!10901 (undefined!11713 Bool) (index!45982 (_ BitVec 32)) (x!127571 (_ BitVec 32))) (Undefined!10901) (MissingVacant!10901 (index!45983 (_ BitVec 32))) )
))
(declare-fun lt!621969 () SeekEntryResult!10901)

(declare-fun lt!621968 () SeekEntryResult!10901)

(get-info :version)

(assert (=> b!1411817 (= res!949157 (or (= lt!621969 lt!621968) (not ((_ is Intermediate!10901) lt!621968))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96467 0))(
  ( (array!96468 (arr!46568 (Array (_ BitVec 32) (_ BitVec 64))) (size!47119 (_ BitVec 32))) )
))
(declare-fun lt!621971 () array!96467)

(declare-fun lt!621967 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96467 (_ BitVec 32)) SeekEntryResult!10901)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411817 (= lt!621968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621967 mask!2840) lt!621967 lt!621971 mask!2840))))

(declare-fun a!2901 () array!96467)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411817 (= lt!621967 (select (store (arr!46568 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1411817 (= lt!621971 (array!96468 (store (arr!46568 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47119 a!2901)))))

(declare-fun res!949155 () Bool)

(declare-fun e!798964 () Bool)

(assert (=> start!121548 (=> (not res!949155) (not e!798964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121548 (= res!949155 (validMask!0 mask!2840))))

(assert (=> start!121548 e!798964))

(assert (=> start!121548 true))

(declare-fun array_inv!35513 (array!96467) Bool)

(assert (=> start!121548 (array_inv!35513 a!2901)))

(declare-fun b!1411818 () Bool)

(declare-fun res!949158 () Bool)

(assert (=> b!1411818 (=> (not res!949158) (not e!798964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411818 (= res!949158 (validKeyInArray!0 (select (arr!46568 a!2901) i!1037)))))

(declare-fun b!1411819 () Bool)

(declare-fun res!949153 () Bool)

(assert (=> b!1411819 (=> (not res!949153) (not e!798964))))

(assert (=> b!1411819 (= res!949153 (validKeyInArray!0 (select (arr!46568 a!2901) j!112)))))

(declare-fun b!1411820 () Bool)

(declare-fun res!949159 () Bool)

(assert (=> b!1411820 (=> (not res!949159) (not e!798964))))

(assert (=> b!1411820 (= res!949159 (and (= (size!47119 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47119 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47119 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!798965 () Bool)

(declare-fun b!1411821 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96467 (_ BitVec 32)) SeekEntryResult!10901)

(assert (=> b!1411821 (= e!798965 (= (seekEntryOrOpen!0 (select (arr!46568 a!2901) j!112) a!2901 mask!2840) (Found!10901 j!112)))))

(declare-fun b!1411822 () Bool)

(declare-fun res!949156 () Bool)

(assert (=> b!1411822 (=> (not res!949156) (not e!798964))))

(declare-datatypes ((List!33267 0))(
  ( (Nil!33264) (Cons!33263 (h!34535 (_ BitVec 64)) (t!47968 List!33267)) )
))
(declare-fun arrayNoDuplicates!0 (array!96467 (_ BitVec 32) List!33267) Bool)

(assert (=> b!1411822 (= res!949156 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33264))))

(declare-fun b!1411823 () Bool)

(declare-fun res!949154 () Bool)

(assert (=> b!1411823 (=> (not res!949154) (not e!798964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96467 (_ BitVec 32)) Bool)

(assert (=> b!1411823 (= res!949154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411824 () Bool)

(assert (=> b!1411824 (= e!798964 (not e!798968))))

(declare-fun res!949160 () Bool)

(assert (=> b!1411824 (=> res!949160 e!798968)))

(assert (=> b!1411824 (= res!949160 (or (not ((_ is Intermediate!10901) lt!621969)) (undefined!11713 lt!621969)))))

(assert (=> b!1411824 e!798965))

(declare-fun res!949161 () Bool)

(assert (=> b!1411824 (=> (not res!949161) (not e!798965))))

(assert (=> b!1411824 (= res!949161 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47726 0))(
  ( (Unit!47727) )
))
(declare-fun lt!621973 () Unit!47726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47726)

(assert (=> b!1411824 (= lt!621973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621972 () (_ BitVec 32))

(assert (=> b!1411824 (= lt!621969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621972 (select (arr!46568 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411824 (= lt!621972 (toIndex!0 (select (arr!46568 a!2901) j!112) mask!2840))))

(declare-fun b!1411825 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96467 (_ BitVec 32)) SeekEntryResult!10901)

(assert (=> b!1411825 (= e!798966 (= (seekEntryOrOpen!0 lt!621967 lt!621971 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127571 lt!621968) (index!45982 lt!621968) (index!45982 lt!621968) (select (arr!46568 a!2901) j!112) lt!621971 mask!2840)))))

(assert (=> b!1411825 (and (not (undefined!11713 lt!621968)) (= (index!45982 lt!621968) i!1037) (bvslt (x!127571 lt!621968) (x!127571 lt!621969)) (= (select (store (arr!46568 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45982 lt!621968)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621970 () Unit!47726)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47726)

(assert (=> b!1411825 (= lt!621970 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621972 (x!127571 lt!621969) (index!45982 lt!621969) (x!127571 lt!621968) (index!45982 lt!621968) (undefined!11713 lt!621968) mask!2840))))

(assert (= (and start!121548 res!949155) b!1411820))

(assert (= (and b!1411820 res!949159) b!1411818))

(assert (= (and b!1411818 res!949158) b!1411819))

(assert (= (and b!1411819 res!949153) b!1411823))

(assert (= (and b!1411823 res!949154) b!1411822))

(assert (= (and b!1411822 res!949156) b!1411824))

(assert (= (and b!1411824 res!949161) b!1411821))

(assert (= (and b!1411824 (not res!949160)) b!1411817))

(assert (= (and b!1411817 (not res!949157)) b!1411825))

(declare-fun m!1301915 () Bool)

(assert (=> b!1411819 m!1301915))

(assert (=> b!1411819 m!1301915))

(declare-fun m!1301917 () Bool)

(assert (=> b!1411819 m!1301917))

(assert (=> b!1411821 m!1301915))

(assert (=> b!1411821 m!1301915))

(declare-fun m!1301919 () Bool)

(assert (=> b!1411821 m!1301919))

(assert (=> b!1411824 m!1301915))

(declare-fun m!1301921 () Bool)

(assert (=> b!1411824 m!1301921))

(assert (=> b!1411824 m!1301915))

(declare-fun m!1301923 () Bool)

(assert (=> b!1411824 m!1301923))

(assert (=> b!1411824 m!1301915))

(declare-fun m!1301925 () Bool)

(assert (=> b!1411824 m!1301925))

(declare-fun m!1301927 () Bool)

(assert (=> b!1411824 m!1301927))

(declare-fun m!1301929 () Bool)

(assert (=> b!1411822 m!1301929))

(declare-fun m!1301931 () Bool)

(assert (=> start!121548 m!1301931))

(declare-fun m!1301933 () Bool)

(assert (=> start!121548 m!1301933))

(declare-fun m!1301935 () Bool)

(assert (=> b!1411823 m!1301935))

(declare-fun m!1301937 () Bool)

(assert (=> b!1411825 m!1301937))

(assert (=> b!1411825 m!1301915))

(declare-fun m!1301939 () Bool)

(assert (=> b!1411825 m!1301939))

(assert (=> b!1411825 m!1301915))

(declare-fun m!1301941 () Bool)

(assert (=> b!1411825 m!1301941))

(declare-fun m!1301943 () Bool)

(assert (=> b!1411825 m!1301943))

(declare-fun m!1301945 () Bool)

(assert (=> b!1411825 m!1301945))

(declare-fun m!1301947 () Bool)

(assert (=> b!1411817 m!1301947))

(assert (=> b!1411817 m!1301947))

(declare-fun m!1301949 () Bool)

(assert (=> b!1411817 m!1301949))

(assert (=> b!1411817 m!1301945))

(declare-fun m!1301951 () Bool)

(assert (=> b!1411817 m!1301951))

(declare-fun m!1301953 () Bool)

(assert (=> b!1411818 m!1301953))

(assert (=> b!1411818 m!1301953))

(declare-fun m!1301955 () Bool)

(assert (=> b!1411818 m!1301955))

(check-sat (not start!121548) (not b!1411822) (not b!1411818) (not b!1411823) (not b!1411819) (not b!1411825) (not b!1411821) (not b!1411824) (not b!1411817))
(check-sat)
(get-model)

(declare-fun b!1411861 () Bool)

(declare-fun e!798991 () Bool)

(declare-fun call!67077 () Bool)

(assert (=> b!1411861 (= e!798991 call!67077)))

(declare-fun b!1411862 () Bool)

(declare-fun e!798992 () Bool)

(assert (=> b!1411862 (= e!798992 e!798991)))

(declare-fun c!130808 () Bool)

(assert (=> b!1411862 (= c!130808 (validKeyInArray!0 (select (arr!46568 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67074 () Bool)

(assert (=> bm!67074 (= call!67077 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1411863 () Bool)

(declare-fun e!798990 () Bool)

(assert (=> b!1411863 (= e!798991 e!798990)))

(declare-fun lt!622002 () (_ BitVec 64))

(assert (=> b!1411863 (= lt!622002 (select (arr!46568 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!622003 () Unit!47726)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96467 (_ BitVec 64) (_ BitVec 32)) Unit!47726)

(assert (=> b!1411863 (= lt!622003 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!622002 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1411863 (arrayContainsKey!0 a!2901 lt!622002 #b00000000000000000000000000000000)))

(declare-fun lt!622001 () Unit!47726)

(assert (=> b!1411863 (= lt!622001 lt!622003)))

(declare-fun res!949193 () Bool)

(assert (=> b!1411863 (= res!949193 (= (seekEntryOrOpen!0 (select (arr!46568 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10901 #b00000000000000000000000000000000)))))

(assert (=> b!1411863 (=> (not res!949193) (not e!798990))))

(declare-fun d!151927 () Bool)

(declare-fun res!949194 () Bool)

(assert (=> d!151927 (=> res!949194 e!798992)))

(assert (=> d!151927 (= res!949194 (bvsge #b00000000000000000000000000000000 (size!47119 a!2901)))))

(assert (=> d!151927 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!798992)))

(declare-fun b!1411864 () Bool)

(assert (=> b!1411864 (= e!798990 call!67077)))

(assert (= (and d!151927 (not res!949194)) b!1411862))

(assert (= (and b!1411862 c!130808) b!1411863))

(assert (= (and b!1411862 (not c!130808)) b!1411861))

(assert (= (and b!1411863 res!949193) b!1411864))

(assert (= (or b!1411864 b!1411861) bm!67074))

(declare-fun m!1301999 () Bool)

(assert (=> b!1411862 m!1301999))

(assert (=> b!1411862 m!1301999))

(declare-fun m!1302001 () Bool)

(assert (=> b!1411862 m!1302001))

(declare-fun m!1302003 () Bool)

(assert (=> bm!67074 m!1302003))

(assert (=> b!1411863 m!1301999))

(declare-fun m!1302005 () Bool)

(assert (=> b!1411863 m!1302005))

(declare-fun m!1302007 () Bool)

(assert (=> b!1411863 m!1302007))

(assert (=> b!1411863 m!1301999))

(declare-fun m!1302009 () Bool)

(assert (=> b!1411863 m!1302009))

(assert (=> b!1411823 d!151927))

(declare-fun b!1411875 () Bool)

(declare-fun e!799001 () Bool)

(declare-fun e!799003 () Bool)

(assert (=> b!1411875 (= e!799001 e!799003)))

(declare-fun c!130811 () Bool)

(assert (=> b!1411875 (= c!130811 (validKeyInArray!0 (select (arr!46568 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67077 () Bool)

(declare-fun call!67080 () Bool)

(assert (=> bm!67077 (= call!67080 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130811 (Cons!33263 (select (arr!46568 a!2901) #b00000000000000000000000000000000) Nil!33264) Nil!33264)))))

(declare-fun d!151929 () Bool)

(declare-fun res!949202 () Bool)

(declare-fun e!799002 () Bool)

(assert (=> d!151929 (=> res!949202 e!799002)))

(assert (=> d!151929 (= res!949202 (bvsge #b00000000000000000000000000000000 (size!47119 a!2901)))))

(assert (=> d!151929 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33264) e!799002)))

(declare-fun b!1411876 () Bool)

(assert (=> b!1411876 (= e!799003 call!67080)))

(declare-fun b!1411877 () Bool)

(declare-fun e!799004 () Bool)

(declare-fun contains!9825 (List!33267 (_ BitVec 64)) Bool)

(assert (=> b!1411877 (= e!799004 (contains!9825 Nil!33264 (select (arr!46568 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1411878 () Bool)

(assert (=> b!1411878 (= e!799003 call!67080)))

(declare-fun b!1411879 () Bool)

(assert (=> b!1411879 (= e!799002 e!799001)))

(declare-fun res!949203 () Bool)

(assert (=> b!1411879 (=> (not res!949203) (not e!799001))))

(assert (=> b!1411879 (= res!949203 (not e!799004))))

(declare-fun res!949201 () Bool)

(assert (=> b!1411879 (=> (not res!949201) (not e!799004))))

(assert (=> b!1411879 (= res!949201 (validKeyInArray!0 (select (arr!46568 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151929 (not res!949202)) b!1411879))

(assert (= (and b!1411879 res!949201) b!1411877))

(assert (= (and b!1411879 res!949203) b!1411875))

(assert (= (and b!1411875 c!130811) b!1411878))

(assert (= (and b!1411875 (not c!130811)) b!1411876))

(assert (= (or b!1411878 b!1411876) bm!67077))

(assert (=> b!1411875 m!1301999))

(assert (=> b!1411875 m!1301999))

(assert (=> b!1411875 m!1302001))

(assert (=> bm!67077 m!1301999))

(declare-fun m!1302011 () Bool)

(assert (=> bm!67077 m!1302011))

(assert (=> b!1411877 m!1301999))

(assert (=> b!1411877 m!1301999))

(declare-fun m!1302013 () Bool)

(assert (=> b!1411877 m!1302013))

(assert (=> b!1411879 m!1301999))

(assert (=> b!1411879 m!1301999))

(assert (=> b!1411879 m!1302001))

(assert (=> b!1411822 d!151929))

(declare-fun b!1411931 () Bool)

(declare-fun e!799036 () SeekEntryResult!10901)

(declare-fun e!799040 () SeekEntryResult!10901)

(assert (=> b!1411931 (= e!799036 e!799040)))

(declare-fun c!130830 () Bool)

(declare-fun lt!622017 () (_ BitVec 64))

(assert (=> b!1411931 (= c!130830 (or (= lt!622017 lt!621967) (= (bvadd lt!622017 lt!622017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1411932 () Bool)

(assert (=> b!1411932 (= e!799040 (Intermediate!10901 false (toIndex!0 lt!621967 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1411933 () Bool)

(assert (=> b!1411933 (= e!799036 (Intermediate!10901 true (toIndex!0 lt!621967 mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!151933 () Bool)

(declare-fun e!799038 () Bool)

(assert (=> d!151933 e!799038))

(declare-fun c!130832 () Bool)

(declare-fun lt!622018 () SeekEntryResult!10901)

(assert (=> d!151933 (= c!130832 (and ((_ is Intermediate!10901) lt!622018) (undefined!11713 lt!622018)))))

(assert (=> d!151933 (= lt!622018 e!799036)))

(declare-fun c!130831 () Bool)

(assert (=> d!151933 (= c!130831 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151933 (= lt!622017 (select (arr!46568 lt!621971) (toIndex!0 lt!621967 mask!2840)))))

(assert (=> d!151933 (validMask!0 mask!2840)))

(assert (=> d!151933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621967 mask!2840) lt!621967 lt!621971 mask!2840) lt!622018)))

(declare-fun b!1411934 () Bool)

(declare-fun e!799037 () Bool)

(assert (=> b!1411934 (= e!799038 e!799037)))

(declare-fun res!949220 () Bool)

(assert (=> b!1411934 (= res!949220 (and ((_ is Intermediate!10901) lt!622018) (not (undefined!11713 lt!622018)) (bvslt (x!127571 lt!622018) #b01111111111111111111111111111110) (bvsge (x!127571 lt!622018) #b00000000000000000000000000000000) (bvsge (x!127571 lt!622018) #b00000000000000000000000000000000)))))

(assert (=> b!1411934 (=> (not res!949220) (not e!799037))))

(declare-fun b!1411935 () Bool)

(assert (=> b!1411935 (and (bvsge (index!45982 lt!622018) #b00000000000000000000000000000000) (bvslt (index!45982 lt!622018) (size!47119 lt!621971)))))

(declare-fun res!949219 () Bool)

(assert (=> b!1411935 (= res!949219 (= (select (arr!46568 lt!621971) (index!45982 lt!622018)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799039 () Bool)

(assert (=> b!1411935 (=> res!949219 e!799039)))

(declare-fun b!1411936 () Bool)

(assert (=> b!1411936 (and (bvsge (index!45982 lt!622018) #b00000000000000000000000000000000) (bvslt (index!45982 lt!622018) (size!47119 lt!621971)))))

(assert (=> b!1411936 (= e!799039 (= (select (arr!46568 lt!621971) (index!45982 lt!622018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1411937 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411937 (= e!799040 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!621967 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!621967 lt!621971 mask!2840))))

(declare-fun b!1411938 () Bool)

(assert (=> b!1411938 (and (bvsge (index!45982 lt!622018) #b00000000000000000000000000000000) (bvslt (index!45982 lt!622018) (size!47119 lt!621971)))))

(declare-fun res!949221 () Bool)

(assert (=> b!1411938 (= res!949221 (= (select (arr!46568 lt!621971) (index!45982 lt!622018)) lt!621967))))

(assert (=> b!1411938 (=> res!949221 e!799039)))

(assert (=> b!1411938 (= e!799037 e!799039)))

(declare-fun b!1411939 () Bool)

(assert (=> b!1411939 (= e!799038 (bvsge (x!127571 lt!622018) #b01111111111111111111111111111110))))

(assert (= (and d!151933 c!130831) b!1411933))

(assert (= (and d!151933 (not c!130831)) b!1411931))

(assert (= (and b!1411931 c!130830) b!1411932))

(assert (= (and b!1411931 (not c!130830)) b!1411937))

(assert (= (and d!151933 c!130832) b!1411939))

(assert (= (and d!151933 (not c!130832)) b!1411934))

(assert (= (and b!1411934 res!949220) b!1411938))

(assert (= (and b!1411938 (not res!949221)) b!1411935))

(assert (= (and b!1411935 (not res!949219)) b!1411936))

(assert (=> b!1411937 m!1301947))

(declare-fun m!1302033 () Bool)

(assert (=> b!1411937 m!1302033))

(assert (=> b!1411937 m!1302033))

(declare-fun m!1302035 () Bool)

(assert (=> b!1411937 m!1302035))

(declare-fun m!1302037 () Bool)

(assert (=> b!1411938 m!1302037))

(assert (=> d!151933 m!1301947))

(declare-fun m!1302039 () Bool)

(assert (=> d!151933 m!1302039))

(assert (=> d!151933 m!1301931))

(assert (=> b!1411935 m!1302037))

(assert (=> b!1411936 m!1302037))

(assert (=> b!1411817 d!151933))

(declare-fun d!151941 () Bool)

(declare-fun lt!622024 () (_ BitVec 32))

(declare-fun lt!622023 () (_ BitVec 32))

(assert (=> d!151941 (= lt!622024 (bvmul (bvxor lt!622023 (bvlshr lt!622023 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151941 (= lt!622023 ((_ extract 31 0) (bvand (bvxor lt!621967 (bvlshr lt!621967 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151941 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!949222 (let ((h!34537 ((_ extract 31 0) (bvand (bvxor lt!621967 (bvlshr lt!621967 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127574 (bvmul (bvxor h!34537 (bvlshr h!34537 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127574 (bvlshr x!127574 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!949222 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!949222 #b00000000000000000000000000000000))))))

(assert (=> d!151941 (= (toIndex!0 lt!621967 mask!2840) (bvand (bvxor lt!622024 (bvlshr lt!622024 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1411817 d!151941))

(declare-fun b!1412003 () Bool)

(declare-fun e!799076 () SeekEntryResult!10901)

(assert (=> b!1412003 (= e!799076 Undefined!10901)))

(declare-fun b!1412004 () Bool)

(declare-fun e!799075 () SeekEntryResult!10901)

(declare-fun lt!622056 () SeekEntryResult!10901)

(assert (=> b!1412004 (= e!799075 (MissingZero!10901 (index!45982 lt!622056)))))

(declare-fun b!1412005 () Bool)

(declare-fun e!799074 () SeekEntryResult!10901)

(assert (=> b!1412005 (= e!799074 (Found!10901 (index!45982 lt!622056)))))

(declare-fun b!1412006 () Bool)

(assert (=> b!1412006 (= e!799076 e!799074)))

(declare-fun lt!622057 () (_ BitVec 64))

(assert (=> b!1412006 (= lt!622057 (select (arr!46568 a!2901) (index!45982 lt!622056)))))

(declare-fun c!130860 () Bool)

(assert (=> b!1412006 (= c!130860 (= lt!622057 (select (arr!46568 a!2901) j!112)))))

(declare-fun b!1412007 () Bool)

(assert (=> b!1412007 (= e!799075 (seekKeyOrZeroReturnVacant!0 (x!127571 lt!622056) (index!45982 lt!622056) (index!45982 lt!622056) (select (arr!46568 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151943 () Bool)

(declare-fun lt!622055 () SeekEntryResult!10901)

(assert (=> d!151943 (and (or ((_ is Undefined!10901) lt!622055) (not ((_ is Found!10901) lt!622055)) (and (bvsge (index!45981 lt!622055) #b00000000000000000000000000000000) (bvslt (index!45981 lt!622055) (size!47119 a!2901)))) (or ((_ is Undefined!10901) lt!622055) ((_ is Found!10901) lt!622055) (not ((_ is MissingZero!10901) lt!622055)) (and (bvsge (index!45980 lt!622055) #b00000000000000000000000000000000) (bvslt (index!45980 lt!622055) (size!47119 a!2901)))) (or ((_ is Undefined!10901) lt!622055) ((_ is Found!10901) lt!622055) ((_ is MissingZero!10901) lt!622055) (not ((_ is MissingVacant!10901) lt!622055)) (and (bvsge (index!45983 lt!622055) #b00000000000000000000000000000000) (bvslt (index!45983 lt!622055) (size!47119 a!2901)))) (or ((_ is Undefined!10901) lt!622055) (ite ((_ is Found!10901) lt!622055) (= (select (arr!46568 a!2901) (index!45981 lt!622055)) (select (arr!46568 a!2901) j!112)) (ite ((_ is MissingZero!10901) lt!622055) (= (select (arr!46568 a!2901) (index!45980 lt!622055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10901) lt!622055) (= (select (arr!46568 a!2901) (index!45983 lt!622055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151943 (= lt!622055 e!799076)))

(declare-fun c!130861 () Bool)

(assert (=> d!151943 (= c!130861 (and ((_ is Intermediate!10901) lt!622056) (undefined!11713 lt!622056)))))

(assert (=> d!151943 (= lt!622056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46568 a!2901) j!112) mask!2840) (select (arr!46568 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151943 (validMask!0 mask!2840)))

(assert (=> d!151943 (= (seekEntryOrOpen!0 (select (arr!46568 a!2901) j!112) a!2901 mask!2840) lt!622055)))

(declare-fun b!1412008 () Bool)

(declare-fun c!130862 () Bool)

(assert (=> b!1412008 (= c!130862 (= lt!622057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1412008 (= e!799074 e!799075)))

(assert (= (and d!151943 c!130861) b!1412003))

(assert (= (and d!151943 (not c!130861)) b!1412006))

(assert (= (and b!1412006 c!130860) b!1412005))

(assert (= (and b!1412006 (not c!130860)) b!1412008))

(assert (= (and b!1412008 c!130862) b!1412004))

(assert (= (and b!1412008 (not c!130862)) b!1412007))

(declare-fun m!1302073 () Bool)

(assert (=> b!1412006 m!1302073))

(assert (=> b!1412007 m!1301915))

(declare-fun m!1302075 () Bool)

(assert (=> b!1412007 m!1302075))

(assert (=> d!151943 m!1301915))

(assert (=> d!151943 m!1301923))

(assert (=> d!151943 m!1301923))

(assert (=> d!151943 m!1301915))

(declare-fun m!1302077 () Bool)

(assert (=> d!151943 m!1302077))

(declare-fun m!1302079 () Bool)

(assert (=> d!151943 m!1302079))

(declare-fun m!1302081 () Bool)

(assert (=> d!151943 m!1302081))

(declare-fun m!1302083 () Bool)

(assert (=> d!151943 m!1302083))

(assert (=> d!151943 m!1301931))

(assert (=> b!1411821 d!151943))

(declare-fun d!151955 () Bool)

(assert (=> d!151955 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121548 d!151955))

(declare-fun d!151961 () Bool)

(assert (=> d!151961 (= (array_inv!35513 a!2901) (bvsge (size!47119 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121548 d!151961))

(declare-fun b!1412029 () Bool)

(declare-fun e!799091 () SeekEntryResult!10901)

(assert (=> b!1412029 (= e!799091 Undefined!10901)))

(declare-fun b!1412030 () Bool)

(declare-fun e!799090 () SeekEntryResult!10901)

(declare-fun lt!622071 () SeekEntryResult!10901)

(assert (=> b!1412030 (= e!799090 (MissingZero!10901 (index!45982 lt!622071)))))

(declare-fun b!1412031 () Bool)

(declare-fun e!799089 () SeekEntryResult!10901)

(assert (=> b!1412031 (= e!799089 (Found!10901 (index!45982 lt!622071)))))

(declare-fun b!1412032 () Bool)

(assert (=> b!1412032 (= e!799091 e!799089)))

(declare-fun lt!622072 () (_ BitVec 64))

(assert (=> b!1412032 (= lt!622072 (select (arr!46568 lt!621971) (index!45982 lt!622071)))))

(declare-fun c!130871 () Bool)

(assert (=> b!1412032 (= c!130871 (= lt!622072 lt!621967))))

(declare-fun b!1412033 () Bool)

(assert (=> b!1412033 (= e!799090 (seekKeyOrZeroReturnVacant!0 (x!127571 lt!622071) (index!45982 lt!622071) (index!45982 lt!622071) lt!621967 lt!621971 mask!2840))))

(declare-fun d!151963 () Bool)

(declare-fun lt!622070 () SeekEntryResult!10901)

(assert (=> d!151963 (and (or ((_ is Undefined!10901) lt!622070) (not ((_ is Found!10901) lt!622070)) (and (bvsge (index!45981 lt!622070) #b00000000000000000000000000000000) (bvslt (index!45981 lt!622070) (size!47119 lt!621971)))) (or ((_ is Undefined!10901) lt!622070) ((_ is Found!10901) lt!622070) (not ((_ is MissingZero!10901) lt!622070)) (and (bvsge (index!45980 lt!622070) #b00000000000000000000000000000000) (bvslt (index!45980 lt!622070) (size!47119 lt!621971)))) (or ((_ is Undefined!10901) lt!622070) ((_ is Found!10901) lt!622070) ((_ is MissingZero!10901) lt!622070) (not ((_ is MissingVacant!10901) lt!622070)) (and (bvsge (index!45983 lt!622070) #b00000000000000000000000000000000) (bvslt (index!45983 lt!622070) (size!47119 lt!621971)))) (or ((_ is Undefined!10901) lt!622070) (ite ((_ is Found!10901) lt!622070) (= (select (arr!46568 lt!621971) (index!45981 lt!622070)) lt!621967) (ite ((_ is MissingZero!10901) lt!622070) (= (select (arr!46568 lt!621971) (index!45980 lt!622070)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10901) lt!622070) (= (select (arr!46568 lt!621971) (index!45983 lt!622070)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151963 (= lt!622070 e!799091)))

(declare-fun c!130872 () Bool)

(assert (=> d!151963 (= c!130872 (and ((_ is Intermediate!10901) lt!622071) (undefined!11713 lt!622071)))))

(assert (=> d!151963 (= lt!622071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621967 mask!2840) lt!621967 lt!621971 mask!2840))))

(assert (=> d!151963 (validMask!0 mask!2840)))

(assert (=> d!151963 (= (seekEntryOrOpen!0 lt!621967 lt!621971 mask!2840) lt!622070)))

(declare-fun b!1412034 () Bool)

(declare-fun c!130873 () Bool)

(assert (=> b!1412034 (= c!130873 (= lt!622072 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1412034 (= e!799089 e!799090)))

(assert (= (and d!151963 c!130872) b!1412029))

(assert (= (and d!151963 (not c!130872)) b!1412032))

(assert (= (and b!1412032 c!130871) b!1412031))

(assert (= (and b!1412032 (not c!130871)) b!1412034))

(assert (= (and b!1412034 c!130873) b!1412030))

(assert (= (and b!1412034 (not c!130873)) b!1412033))

(declare-fun m!1302085 () Bool)

(assert (=> b!1412032 m!1302085))

(declare-fun m!1302087 () Bool)

(assert (=> b!1412033 m!1302087))

(assert (=> d!151963 m!1301947))

(assert (=> d!151963 m!1301947))

(assert (=> d!151963 m!1301949))

(declare-fun m!1302089 () Bool)

(assert (=> d!151963 m!1302089))

(declare-fun m!1302091 () Bool)

(assert (=> d!151963 m!1302091))

(declare-fun m!1302093 () Bool)

(assert (=> d!151963 m!1302093))

(assert (=> d!151963 m!1301931))

(assert (=> b!1411825 d!151963))

(declare-fun b!1412077 () Bool)

(declare-fun e!799119 () SeekEntryResult!10901)

(declare-fun e!799117 () SeekEntryResult!10901)

(assert (=> b!1412077 (= e!799119 e!799117)))

(declare-fun c!130893 () Bool)

(declare-fun lt!622097 () (_ BitVec 64))

(assert (=> b!1412077 (= c!130893 (= lt!622097 (select (arr!46568 a!2901) j!112)))))

(declare-fun b!1412078 () Bool)

(declare-fun e!799118 () SeekEntryResult!10901)

(assert (=> b!1412078 (= e!799118 (MissingVacant!10901 (index!45982 lt!621968)))))

(declare-fun b!1412079 () Bool)

(assert (=> b!1412079 (= e!799118 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127571 lt!621968) #b00000000000000000000000000000001) (nextIndex!0 (index!45982 lt!621968) (x!127571 lt!621968) mask!2840) (index!45982 lt!621968) (select (arr!46568 a!2901) j!112) lt!621971 mask!2840))))

(declare-fun b!1412080 () Bool)

(assert (=> b!1412080 (= e!799117 (Found!10901 (index!45982 lt!621968)))))

(declare-fun b!1412081 () Bool)

(assert (=> b!1412081 (= e!799119 Undefined!10901)))

(declare-fun lt!622096 () SeekEntryResult!10901)

(declare-fun d!151965 () Bool)

(assert (=> d!151965 (and (or ((_ is Undefined!10901) lt!622096) (not ((_ is Found!10901) lt!622096)) (and (bvsge (index!45981 lt!622096) #b00000000000000000000000000000000) (bvslt (index!45981 lt!622096) (size!47119 lt!621971)))) (or ((_ is Undefined!10901) lt!622096) ((_ is Found!10901) lt!622096) (not ((_ is MissingVacant!10901) lt!622096)) (not (= (index!45983 lt!622096) (index!45982 lt!621968))) (and (bvsge (index!45983 lt!622096) #b00000000000000000000000000000000) (bvslt (index!45983 lt!622096) (size!47119 lt!621971)))) (or ((_ is Undefined!10901) lt!622096) (ite ((_ is Found!10901) lt!622096) (= (select (arr!46568 lt!621971) (index!45981 lt!622096)) (select (arr!46568 a!2901) j!112)) (and ((_ is MissingVacant!10901) lt!622096) (= (index!45983 lt!622096) (index!45982 lt!621968)) (= (select (arr!46568 lt!621971) (index!45983 lt!622096)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!151965 (= lt!622096 e!799119)))

(declare-fun c!130892 () Bool)

(assert (=> d!151965 (= c!130892 (bvsge (x!127571 lt!621968) #b01111111111111111111111111111110))))

(assert (=> d!151965 (= lt!622097 (select (arr!46568 lt!621971) (index!45982 lt!621968)))))

(assert (=> d!151965 (validMask!0 mask!2840)))

(assert (=> d!151965 (= (seekKeyOrZeroReturnVacant!0 (x!127571 lt!621968) (index!45982 lt!621968) (index!45982 lt!621968) (select (arr!46568 a!2901) j!112) lt!621971 mask!2840) lt!622096)))

(declare-fun b!1412082 () Bool)

(declare-fun c!130891 () Bool)

(assert (=> b!1412082 (= c!130891 (= lt!622097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1412082 (= e!799117 e!799118)))

(assert (= (and d!151965 c!130892) b!1412081))

(assert (= (and d!151965 (not c!130892)) b!1412077))

(assert (= (and b!1412077 c!130893) b!1412080))

(assert (= (and b!1412077 (not c!130893)) b!1412082))

(assert (= (and b!1412082 c!130891) b!1412078))

(assert (= (and b!1412082 (not c!130891)) b!1412079))

(declare-fun m!1302125 () Bool)

(assert (=> b!1412079 m!1302125))

(assert (=> b!1412079 m!1302125))

(assert (=> b!1412079 m!1301915))

(declare-fun m!1302127 () Bool)

(assert (=> b!1412079 m!1302127))

(declare-fun m!1302129 () Bool)

(assert (=> d!151965 m!1302129))

(declare-fun m!1302131 () Bool)

(assert (=> d!151965 m!1302131))

(declare-fun m!1302133 () Bool)

(assert (=> d!151965 m!1302133))

(assert (=> d!151965 m!1301931))

(assert (=> b!1411825 d!151965))

(declare-fun d!151973 () Bool)

(assert (=> d!151973 (and (not (undefined!11713 lt!621968)) (= (index!45982 lt!621968) i!1037) (bvslt (x!127571 lt!621968) (x!127571 lt!621969)))))

(declare-fun lt!622107 () Unit!47726)

(declare-fun choose!62 (array!96467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47726)

(assert (=> d!151973 (= lt!622107 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621972 (x!127571 lt!621969) (index!45982 lt!621969) (x!127571 lt!621968) (index!45982 lt!621968) (undefined!11713 lt!621968) mask!2840))))

(assert (=> d!151973 (validMask!0 mask!2840)))

(assert (=> d!151973 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621972 (x!127571 lt!621969) (index!45982 lt!621969) (x!127571 lt!621968) (index!45982 lt!621968) (undefined!11713 lt!621968) mask!2840) lt!622107)))

(declare-fun bs!41164 () Bool)

(assert (= bs!41164 d!151973))

(declare-fun m!1302145 () Bool)

(assert (=> bs!41164 m!1302145))

(assert (=> bs!41164 m!1301931))

(assert (=> b!1411825 d!151973))

(declare-fun b!1412102 () Bool)

(declare-fun e!799132 () Bool)

(declare-fun call!67090 () Bool)

(assert (=> b!1412102 (= e!799132 call!67090)))

(declare-fun b!1412103 () Bool)

(declare-fun e!799133 () Bool)

(assert (=> b!1412103 (= e!799133 e!799132)))

(declare-fun c!130899 () Bool)

(assert (=> b!1412103 (= c!130899 (validKeyInArray!0 (select (arr!46568 a!2901) j!112)))))

(declare-fun bm!67087 () Bool)

(assert (=> bm!67087 (= call!67090 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1412104 () Bool)

(declare-fun e!799131 () Bool)

(assert (=> b!1412104 (= e!799132 e!799131)))

(declare-fun lt!622109 () (_ BitVec 64))

(assert (=> b!1412104 (= lt!622109 (select (arr!46568 a!2901) j!112))))

(declare-fun lt!622110 () Unit!47726)

(assert (=> b!1412104 (= lt!622110 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!622109 j!112))))

(assert (=> b!1412104 (arrayContainsKey!0 a!2901 lt!622109 #b00000000000000000000000000000000)))

(declare-fun lt!622108 () Unit!47726)

(assert (=> b!1412104 (= lt!622108 lt!622110)))

(declare-fun res!949254 () Bool)

(assert (=> b!1412104 (= res!949254 (= (seekEntryOrOpen!0 (select (arr!46568 a!2901) j!112) a!2901 mask!2840) (Found!10901 j!112)))))

(assert (=> b!1412104 (=> (not res!949254) (not e!799131))))

(declare-fun d!151981 () Bool)

(declare-fun res!949255 () Bool)

(assert (=> d!151981 (=> res!949255 e!799133)))

(assert (=> d!151981 (= res!949255 (bvsge j!112 (size!47119 a!2901)))))

(assert (=> d!151981 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!799133)))

(declare-fun b!1412105 () Bool)

(assert (=> b!1412105 (= e!799131 call!67090)))

(assert (= (and d!151981 (not res!949255)) b!1412103))

(assert (= (and b!1412103 c!130899) b!1412104))

(assert (= (and b!1412103 (not c!130899)) b!1412102))

(assert (= (and b!1412104 res!949254) b!1412105))

(assert (= (or b!1412105 b!1412102) bm!67087))

(assert (=> b!1412103 m!1301915))

(assert (=> b!1412103 m!1301915))

(assert (=> b!1412103 m!1301917))

(declare-fun m!1302147 () Bool)

(assert (=> bm!67087 m!1302147))

(assert (=> b!1412104 m!1301915))

(declare-fun m!1302149 () Bool)

(assert (=> b!1412104 m!1302149))

(declare-fun m!1302151 () Bool)

(assert (=> b!1412104 m!1302151))

(assert (=> b!1412104 m!1301915))

(assert (=> b!1412104 m!1301919))

(assert (=> b!1411824 d!151981))

(declare-fun d!151987 () Bool)

(assert (=> d!151987 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!622121 () Unit!47726)

(declare-fun choose!38 (array!96467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47726)

(assert (=> d!151987 (= lt!622121 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151987 (validMask!0 mask!2840)))

(assert (=> d!151987 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!622121)))

(declare-fun bs!41165 () Bool)

(assert (= bs!41165 d!151987))

(assert (=> bs!41165 m!1301927))

(declare-fun m!1302179 () Bool)

(assert (=> bs!41165 m!1302179))

(assert (=> bs!41165 m!1301931))

(assert (=> b!1411824 d!151987))

(declare-fun b!1412125 () Bool)

(declare-fun e!799145 () SeekEntryResult!10901)

(declare-fun e!799149 () SeekEntryResult!10901)

(assert (=> b!1412125 (= e!799145 e!799149)))

(declare-fun c!130907 () Bool)

(declare-fun lt!622122 () (_ BitVec 64))

(assert (=> b!1412125 (= c!130907 (or (= lt!622122 (select (arr!46568 a!2901) j!112)) (= (bvadd lt!622122 lt!622122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1412126 () Bool)

(assert (=> b!1412126 (= e!799149 (Intermediate!10901 false lt!621972 #b00000000000000000000000000000000))))

(declare-fun b!1412127 () Bool)

(assert (=> b!1412127 (= e!799145 (Intermediate!10901 true lt!621972 #b00000000000000000000000000000000))))

(declare-fun d!151995 () Bool)

(declare-fun e!799147 () Bool)

(assert (=> d!151995 e!799147))

(declare-fun c!130909 () Bool)

(declare-fun lt!622123 () SeekEntryResult!10901)

(assert (=> d!151995 (= c!130909 (and ((_ is Intermediate!10901) lt!622123) (undefined!11713 lt!622123)))))

(assert (=> d!151995 (= lt!622123 e!799145)))

(declare-fun c!130908 () Bool)

(assert (=> d!151995 (= c!130908 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151995 (= lt!622122 (select (arr!46568 a!2901) lt!621972))))

(assert (=> d!151995 (validMask!0 mask!2840)))

(assert (=> d!151995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621972 (select (arr!46568 a!2901) j!112) a!2901 mask!2840) lt!622123)))

(declare-fun b!1412128 () Bool)

(declare-fun e!799146 () Bool)

(assert (=> b!1412128 (= e!799147 e!799146)))

(declare-fun res!949263 () Bool)

(assert (=> b!1412128 (= res!949263 (and ((_ is Intermediate!10901) lt!622123) (not (undefined!11713 lt!622123)) (bvslt (x!127571 lt!622123) #b01111111111111111111111111111110) (bvsge (x!127571 lt!622123) #b00000000000000000000000000000000) (bvsge (x!127571 lt!622123) #b00000000000000000000000000000000)))))

(assert (=> b!1412128 (=> (not res!949263) (not e!799146))))

(declare-fun b!1412129 () Bool)

(assert (=> b!1412129 (and (bvsge (index!45982 lt!622123) #b00000000000000000000000000000000) (bvslt (index!45982 lt!622123) (size!47119 a!2901)))))

(declare-fun res!949262 () Bool)

(assert (=> b!1412129 (= res!949262 (= (select (arr!46568 a!2901) (index!45982 lt!622123)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799148 () Bool)

(assert (=> b!1412129 (=> res!949262 e!799148)))

(declare-fun b!1412130 () Bool)

(assert (=> b!1412130 (and (bvsge (index!45982 lt!622123) #b00000000000000000000000000000000) (bvslt (index!45982 lt!622123) (size!47119 a!2901)))))

(assert (=> b!1412130 (= e!799148 (= (select (arr!46568 a!2901) (index!45982 lt!622123)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1412131 () Bool)

(assert (=> b!1412131 (= e!799149 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!621972 #b00000000000000000000000000000000 mask!2840) (select (arr!46568 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1412132 () Bool)

(assert (=> b!1412132 (and (bvsge (index!45982 lt!622123) #b00000000000000000000000000000000) (bvslt (index!45982 lt!622123) (size!47119 a!2901)))))

(declare-fun res!949264 () Bool)

(assert (=> b!1412132 (= res!949264 (= (select (arr!46568 a!2901) (index!45982 lt!622123)) (select (arr!46568 a!2901) j!112)))))

(assert (=> b!1412132 (=> res!949264 e!799148)))

(assert (=> b!1412132 (= e!799146 e!799148)))

(declare-fun b!1412133 () Bool)

(assert (=> b!1412133 (= e!799147 (bvsge (x!127571 lt!622123) #b01111111111111111111111111111110))))

(assert (= (and d!151995 c!130908) b!1412127))

(assert (= (and d!151995 (not c!130908)) b!1412125))

(assert (= (and b!1412125 c!130907) b!1412126))

(assert (= (and b!1412125 (not c!130907)) b!1412131))

(assert (= (and d!151995 c!130909) b!1412133))

(assert (= (and d!151995 (not c!130909)) b!1412128))

(assert (= (and b!1412128 res!949263) b!1412132))

(assert (= (and b!1412132 (not res!949264)) b!1412129))

(assert (= (and b!1412129 (not res!949262)) b!1412130))

(declare-fun m!1302181 () Bool)

(assert (=> b!1412131 m!1302181))

(assert (=> b!1412131 m!1302181))

(assert (=> b!1412131 m!1301915))

(declare-fun m!1302183 () Bool)

(assert (=> b!1412131 m!1302183))

(declare-fun m!1302185 () Bool)

(assert (=> b!1412132 m!1302185))

(declare-fun m!1302187 () Bool)

(assert (=> d!151995 m!1302187))

(assert (=> d!151995 m!1301931))

(assert (=> b!1412129 m!1302185))

(assert (=> b!1412130 m!1302185))

(assert (=> b!1411824 d!151995))

(declare-fun d!151997 () Bool)

(declare-fun lt!622131 () (_ BitVec 32))

(declare-fun lt!622130 () (_ BitVec 32))

(assert (=> d!151997 (= lt!622131 (bvmul (bvxor lt!622130 (bvlshr lt!622130 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151997 (= lt!622130 ((_ extract 31 0) (bvand (bvxor (select (arr!46568 a!2901) j!112) (bvlshr (select (arr!46568 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151997 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!949222 (let ((h!34537 ((_ extract 31 0) (bvand (bvxor (select (arr!46568 a!2901) j!112) (bvlshr (select (arr!46568 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127574 (bvmul (bvxor h!34537 (bvlshr h!34537 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127574 (bvlshr x!127574 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!949222 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!949222 #b00000000000000000000000000000000))))))

(assert (=> d!151997 (= (toIndex!0 (select (arr!46568 a!2901) j!112) mask!2840) (bvand (bvxor lt!622131 (bvlshr lt!622131 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1411824 d!151997))

(declare-fun d!152001 () Bool)

(assert (=> d!152001 (= (validKeyInArray!0 (select (arr!46568 a!2901) j!112)) (and (not (= (select (arr!46568 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46568 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1411819 d!152001))

(declare-fun d!152005 () Bool)

(assert (=> d!152005 (= (validKeyInArray!0 (select (arr!46568 a!2901) i!1037)) (and (not (= (select (arr!46568 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46568 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1411818 d!152005))

(check-sat (not d!151963) (not b!1411877) (not d!151933) (not b!1412007) (not b!1411879) (not b!1411863) (not b!1412079) (not d!151995) (not d!151973) (not b!1411937) (not b!1412131) (not d!151943) (not bm!67074) (not b!1411875) (not d!151987) (not bm!67077) (not b!1412103) (not bm!67087) (not b!1412104) (not b!1412033) (not b!1411862) (not d!151965))
(check-sat)
