; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122158 () Bool)

(assert start!122158)

(declare-fun b!1417006 () Bool)

(declare-fun res!952993 () Bool)

(declare-fun e!801997 () Bool)

(assert (=> b!1417006 (=> (not res!952993) (not e!801997))))

(declare-datatypes ((array!96711 0))(
  ( (array!96712 (arr!46681 (Array (_ BitVec 32) (_ BitVec 64))) (size!47232 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96711)

(declare-datatypes ((List!33380 0))(
  ( (Nil!33377) (Cons!33376 (h!34666 (_ BitVec 64)) (t!48081 List!33380)) )
))
(declare-fun arrayNoDuplicates!0 (array!96711 (_ BitVec 32) List!33380) Bool)

(assert (=> b!1417006 (= res!952993 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33377))))

(declare-fun b!1417007 () Bool)

(declare-fun res!952992 () Bool)

(assert (=> b!1417007 (=> (not res!952992) (not e!801997))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417007 (= res!952992 (validKeyInArray!0 (select (arr!46681 a!2901) i!1037)))))

(declare-fun res!952997 () Bool)

(assert (=> start!122158 (=> (not res!952997) (not e!801997))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122158 (= res!952997 (validMask!0 mask!2840))))

(assert (=> start!122158 e!801997))

(assert (=> start!122158 true))

(declare-fun array_inv!35626 (array!96711) Bool)

(assert (=> start!122158 (array_inv!35626 a!2901)))

(declare-fun b!1417008 () Bool)

(declare-fun res!952994 () Bool)

(assert (=> b!1417008 (=> (not res!952994) (not e!801997))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417008 (= res!952994 (and (= (size!47232 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47232 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47232 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417009 () Bool)

(declare-datatypes ((SeekEntryResult!11014 0))(
  ( (MissingZero!11014 (index!46447 (_ BitVec 32))) (Found!11014 (index!46448 (_ BitVec 32))) (Intermediate!11014 (undefined!11826 Bool) (index!46449 (_ BitVec 32)) (x!128054 (_ BitVec 32))) (Undefined!11014) (MissingVacant!11014 (index!46450 (_ BitVec 32))) )
))
(declare-fun lt!625168 () SeekEntryResult!11014)

(assert (=> b!1417009 (= e!801997 (not (is-Intermediate!11014 lt!625168)))))

(declare-fun e!801996 () Bool)

(assert (=> b!1417009 e!801996))

(declare-fun res!952995 () Bool)

(assert (=> b!1417009 (=> (not res!952995) (not e!801996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96711 (_ BitVec 32)) Bool)

(assert (=> b!1417009 (= res!952995 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47952 0))(
  ( (Unit!47953) )
))
(declare-fun lt!625167 () Unit!47952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47952)

(assert (=> b!1417009 (= lt!625167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96711 (_ BitVec 32)) SeekEntryResult!11014)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417009 (= lt!625168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) (select (arr!46681 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417010 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96711 (_ BitVec 32)) SeekEntryResult!11014)

(assert (=> b!1417010 (= e!801996 (= (seekEntryOrOpen!0 (select (arr!46681 a!2901) j!112) a!2901 mask!2840) (Found!11014 j!112)))))

(declare-fun b!1417011 () Bool)

(declare-fun res!952998 () Bool)

(assert (=> b!1417011 (=> (not res!952998) (not e!801997))))

(assert (=> b!1417011 (= res!952998 (validKeyInArray!0 (select (arr!46681 a!2901) j!112)))))

(declare-fun b!1417012 () Bool)

(declare-fun res!952996 () Bool)

(assert (=> b!1417012 (=> (not res!952996) (not e!801997))))

(assert (=> b!1417012 (= res!952996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122158 res!952997) b!1417008))

(assert (= (and b!1417008 res!952994) b!1417007))

(assert (= (and b!1417007 res!952992) b!1417011))

(assert (= (and b!1417011 res!952998) b!1417012))

(assert (= (and b!1417012 res!952996) b!1417006))

(assert (= (and b!1417006 res!952993) b!1417009))

(assert (= (and b!1417009 res!952995) b!1417010))

(declare-fun m!1307855 () Bool)

(assert (=> start!122158 m!1307855))

(declare-fun m!1307857 () Bool)

(assert (=> start!122158 m!1307857))

(declare-fun m!1307859 () Bool)

(assert (=> b!1417011 m!1307859))

(assert (=> b!1417011 m!1307859))

(declare-fun m!1307861 () Bool)

(assert (=> b!1417011 m!1307861))

(declare-fun m!1307863 () Bool)

(assert (=> b!1417012 m!1307863))

(declare-fun m!1307865 () Bool)

(assert (=> b!1417006 m!1307865))

(declare-fun m!1307867 () Bool)

(assert (=> b!1417007 m!1307867))

(assert (=> b!1417007 m!1307867))

(declare-fun m!1307869 () Bool)

(assert (=> b!1417007 m!1307869))

(assert (=> b!1417010 m!1307859))

(assert (=> b!1417010 m!1307859))

(declare-fun m!1307871 () Bool)

(assert (=> b!1417010 m!1307871))

(assert (=> b!1417009 m!1307859))

(declare-fun m!1307873 () Bool)

(assert (=> b!1417009 m!1307873))

(assert (=> b!1417009 m!1307859))

(declare-fun m!1307875 () Bool)

(assert (=> b!1417009 m!1307875))

(assert (=> b!1417009 m!1307873))

(assert (=> b!1417009 m!1307859))

(declare-fun m!1307877 () Bool)

(assert (=> b!1417009 m!1307877))

(declare-fun m!1307879 () Bool)

(assert (=> b!1417009 m!1307879))

(push 1)

(assert (not b!1417012))

(assert (not b!1417007))

(assert (not start!122158))

(assert (not b!1417009))

(assert (not b!1417010))

(assert (not b!1417006))

(assert (not b!1417011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1417075 () Bool)

(declare-fun e!802032 () Bool)

(declare-fun call!67206 () Bool)

(assert (=> b!1417075 (= e!802032 call!67206)))

(declare-fun b!1417076 () Bool)

(declare-fun e!802033 () Bool)

(assert (=> b!1417076 (= e!802033 e!802032)))

(declare-fun c!131495 () Bool)

(assert (=> b!1417076 (= c!131495 (validKeyInArray!0 (select (arr!46681 a!2901) j!112)))))

(declare-fun b!1417078 () Bool)

(declare-fun e!802034 () Bool)

(assert (=> b!1417078 (= e!802032 e!802034)))

(declare-fun lt!625200 () (_ BitVec 64))

(assert (=> b!1417078 (= lt!625200 (select (arr!46681 a!2901) j!112))))

(declare-fun lt!625199 () Unit!47952)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96711 (_ BitVec 64) (_ BitVec 32)) Unit!47952)

(assert (=> b!1417078 (= lt!625199 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!625200 j!112))))

(declare-fun arrayContainsKey!0 (array!96711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417078 (arrayContainsKey!0 a!2901 lt!625200 #b00000000000000000000000000000000)))

(declare-fun lt!625198 () Unit!47952)

(assert (=> b!1417078 (= lt!625198 lt!625199)))

(declare-fun res!953051 () Bool)

(assert (=> b!1417078 (= res!953051 (= (seekEntryOrOpen!0 (select (arr!46681 a!2901) j!112) a!2901 mask!2840) (Found!11014 j!112)))))

(assert (=> b!1417078 (=> (not res!953051) (not e!802034))))

(declare-fun bm!67203 () Bool)

(assert (=> bm!67203 (= call!67206 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152563 () Bool)

(declare-fun res!953052 () Bool)

(assert (=> d!152563 (=> res!953052 e!802033)))

(assert (=> d!152563 (= res!953052 (bvsge j!112 (size!47232 a!2901)))))

(assert (=> d!152563 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!802033)))

(declare-fun b!1417077 () Bool)

(assert (=> b!1417077 (= e!802034 call!67206)))

(assert (= (and d!152563 (not res!953052)) b!1417076))

(assert (= (and b!1417076 c!131495) b!1417078))

(assert (= (and b!1417076 (not c!131495)) b!1417075))

(assert (= (and b!1417078 res!953051) b!1417077))

(assert (= (or b!1417077 b!1417075) bm!67203))

(assert (=> b!1417076 m!1307859))

(assert (=> b!1417076 m!1307859))

(assert (=> b!1417076 m!1307861))

(assert (=> b!1417078 m!1307859))

(declare-fun m!1307939 () Bool)

(assert (=> b!1417078 m!1307939))

(declare-fun m!1307941 () Bool)

(assert (=> b!1417078 m!1307941))

(assert (=> b!1417078 m!1307859))

(assert (=> b!1417078 m!1307871))

(declare-fun m!1307945 () Bool)

(assert (=> bm!67203 m!1307945))

(assert (=> b!1417009 d!152563))

(declare-fun d!152569 () Bool)

(assert (=> d!152569 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!625210 () Unit!47952)

(declare-fun choose!38 (array!96711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47952)

(assert (=> d!152569 (= lt!625210 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152569 (validMask!0 mask!2840)))

(assert (=> d!152569 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!625210)))

(declare-fun bs!41310 () Bool)

(assert (= bs!41310 d!152569))

(assert (=> bs!41310 m!1307879))

(declare-fun m!1307947 () Bool)

(assert (=> bs!41310 m!1307947))

(assert (=> bs!41310 m!1307855))

(assert (=> b!1417009 d!152569))

(declare-fun b!1417140 () Bool)

(declare-fun e!802075 () SeekEntryResult!11014)

(declare-fun e!802072 () SeekEntryResult!11014)

(assert (=> b!1417140 (= e!802075 e!802072)))

(declare-fun lt!625230 () (_ BitVec 64))

(declare-fun c!131516 () Bool)

(assert (=> b!1417140 (= c!131516 (or (= lt!625230 (select (arr!46681 a!2901) j!112)) (= (bvadd lt!625230 lt!625230) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!152573 () Bool)

(declare-fun e!802073 () Bool)

(assert (=> d!152573 e!802073))

(declare-fun c!131517 () Bool)

(declare-fun lt!625231 () SeekEntryResult!11014)

(assert (=> d!152573 (= c!131517 (and (is-Intermediate!11014 lt!625231) (undefined!11826 lt!625231)))))

(assert (=> d!152573 (= lt!625231 e!802075)))

(declare-fun c!131515 () Bool)

(assert (=> d!152573 (= c!131515 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152573 (= lt!625230 (select (arr!46681 a!2901) (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840)))))

(assert (=> d!152573 (validMask!0 mask!2840)))

(assert (=> d!152573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) (select (arr!46681 a!2901) j!112) a!2901 mask!2840) lt!625231)))

(declare-fun b!1417141 () Bool)

(assert (=> b!1417141 (= e!802073 (bvsge (x!128054 lt!625231) #b01111111111111111111111111111110))))

(declare-fun b!1417142 () Bool)

(assert (=> b!1417142 (= e!802072 (Intermediate!11014 false (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1417143 () Bool)

(assert (=> b!1417143 (and (bvsge (index!46449 lt!625231) #b00000000000000000000000000000000) (bvslt (index!46449 lt!625231) (size!47232 a!2901)))))

(declare-fun e!802074 () Bool)

(assert (=> b!1417143 (= e!802074 (= (select (arr!46681 a!2901) (index!46449 lt!625231)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417144 () Bool)

(assert (=> b!1417144 (and (bvsge (index!46449 lt!625231) #b00000000000000000000000000000000) (bvslt (index!46449 lt!625231) (size!47232 a!2901)))))

(declare-fun res!953077 () Bool)

(assert (=> b!1417144 (= res!953077 (= (select (arr!46681 a!2901) (index!46449 lt!625231)) (select (arr!46681 a!2901) j!112)))))

(assert (=> b!1417144 (=> res!953077 e!802074)))

(declare-fun e!802076 () Bool)

(assert (=> b!1417144 (= e!802076 e!802074)))

(declare-fun b!1417145 () Bool)

(assert (=> b!1417145 (and (bvsge (index!46449 lt!625231) #b00000000000000000000000000000000) (bvslt (index!46449 lt!625231) (size!47232 a!2901)))))

(declare-fun res!953079 () Bool)

(assert (=> b!1417145 (= res!953079 (= (select (arr!46681 a!2901) (index!46449 lt!625231)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1417145 (=> res!953079 e!802074)))

(declare-fun b!1417146 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417146 (= e!802072 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46681 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417147 () Bool)

(assert (=> b!1417147 (= e!802073 e!802076)))

(declare-fun res!953078 () Bool)

(assert (=> b!1417147 (= res!953078 (and (is-Intermediate!11014 lt!625231) (not (undefined!11826 lt!625231)) (bvslt (x!128054 lt!625231) #b01111111111111111111111111111110) (bvsge (x!128054 lt!625231) #b00000000000000000000000000000000) (bvsge (x!128054 lt!625231) #b00000000000000000000000000000000)))))

(assert (=> b!1417147 (=> (not res!953078) (not e!802076))))

(declare-fun b!1417148 () Bool)

(assert (=> b!1417148 (= e!802075 (Intermediate!11014 true (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!152573 c!131515) b!1417148))

(assert (= (and d!152573 (not c!131515)) b!1417140))

(assert (= (and b!1417140 c!131516) b!1417142))

(assert (= (and b!1417140 (not c!131516)) b!1417146))

(assert (= (and d!152573 c!131517) b!1417141))

(assert (= (and d!152573 (not c!131517)) b!1417147))

(assert (= (and b!1417147 res!953078) b!1417144))

(assert (= (and b!1417144 (not res!953077)) b!1417145))

(assert (= (and b!1417145 (not res!953079)) b!1417143))

(declare-fun m!1307977 () Bool)

(assert (=> b!1417144 m!1307977))

(assert (=> d!152573 m!1307873))

(declare-fun m!1307979 () Bool)

(assert (=> d!152573 m!1307979))

(assert (=> d!152573 m!1307855))

(assert (=> b!1417145 m!1307977))

(assert (=> b!1417146 m!1307873))

(declare-fun m!1307981 () Bool)

(assert (=> b!1417146 m!1307981))

(assert (=> b!1417146 m!1307981))

(assert (=> b!1417146 m!1307859))

(declare-fun m!1307983 () Bool)

(assert (=> b!1417146 m!1307983))

(assert (=> b!1417143 m!1307977))

(assert (=> b!1417009 d!152573))

(declare-fun d!152583 () Bool)

(declare-fun lt!625250 () (_ BitVec 32))

(declare-fun lt!625249 () (_ BitVec 32))

(assert (=> d!152583 (= lt!625250 (bvmul (bvxor lt!625249 (bvlshr lt!625249 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152583 (= lt!625249 ((_ extract 31 0) (bvand (bvxor (select (arr!46681 a!2901) j!112) (bvlshr (select (arr!46681 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152583 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!953080 (let ((h!34670 ((_ extract 31 0) (bvand (bvxor (select (arr!46681 a!2901) j!112) (bvlshr (select (arr!46681 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128061 (bvmul (bvxor h!34670 (bvlshr h!34670 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128061 (bvlshr x!128061 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!953080 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!953080 #b00000000000000000000000000000000))))))

(assert (=> d!152583 (= (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) (bvand (bvxor lt!625250 (bvlshr lt!625250 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1417009 d!152583))

(declare-fun d!152589 () Bool)

(assert (=> d!152589 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!122158 d!152589))

(declare-fun d!152595 () Bool)

(assert (=> d!152595 (= (array_inv!35626 a!2901) (bvsge (size!47232 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!122158 d!152595))

(declare-fun d!152597 () Bool)

(assert (=> d!152597 (= (validKeyInArray!0 (select (arr!46681 a!2901) i!1037)) (and (not (= (select (arr!46681 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46681 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417007 d!152597))

(declare-fun b!1417180 () Bool)

(declare-fun e!802095 () Bool)

(declare-fun call!67212 () Bool)

(assert (=> b!1417180 (= e!802095 call!67212)))

(declare-fun b!1417181 () Bool)

(declare-fun e!802096 () Bool)

(assert (=> b!1417181 (= e!802096 e!802095)))

(declare-fun c!131528 () Bool)

(assert (=> b!1417181 (= c!131528 (validKeyInArray!0 (select (arr!46681 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1417183 () Bool)

(declare-fun e!802097 () Bool)

(assert (=> b!1417183 (= e!802095 e!802097)))

(declare-fun lt!625261 () (_ BitVec 64))

(assert (=> b!1417183 (= lt!625261 (select (arr!46681 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!625260 () Unit!47952)

(assert (=> b!1417183 (= lt!625260 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!625261 #b00000000000000000000000000000000))))

(assert (=> b!1417183 (arrayContainsKey!0 a!2901 lt!625261 #b00000000000000000000000000000000)))

(declare-fun lt!625259 () Unit!47952)

(assert (=> b!1417183 (= lt!625259 lt!625260)))

(declare-fun res!953093 () Bool)

(assert (=> b!1417183 (= res!953093 (= (seekEntryOrOpen!0 (select (arr!46681 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!11014 #b00000000000000000000000000000000)))))

(assert (=> b!1417183 (=> (not res!953093) (not e!802097))))

(declare-fun bm!67209 () Bool)

(assert (=> bm!67209 (= call!67212 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152599 () Bool)

(declare-fun res!953094 () Bool)

(assert (=> d!152599 (=> res!953094 e!802096)))

(assert (=> d!152599 (= res!953094 (bvsge #b00000000000000000000000000000000 (size!47232 a!2901)))))

(assert (=> d!152599 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!802096)))

(declare-fun b!1417182 () Bool)

(assert (=> b!1417182 (= e!802097 call!67212)))

(assert (= (and d!152599 (not res!953094)) b!1417181))

(assert (= (and b!1417181 c!131528) b!1417183))

(assert (= (and b!1417181 (not c!131528)) b!1417180))

(assert (= (and b!1417183 res!953093) b!1417182))

(assert (= (or b!1417182 b!1417180) bm!67209))

(declare-fun m!1308005 () Bool)

(assert (=> b!1417181 m!1308005))

(assert (=> b!1417181 m!1308005))

(declare-fun m!1308007 () Bool)

(assert (=> b!1417181 m!1308007))

(assert (=> b!1417183 m!1308005))

(declare-fun m!1308009 () Bool)

(assert (=> b!1417183 m!1308009))

(declare-fun m!1308011 () Bool)

(assert (=> b!1417183 m!1308011))

(assert (=> b!1417183 m!1308005))

(declare-fun m!1308013 () Bool)

(assert (=> b!1417183 m!1308013))

(declare-fun m!1308015 () Bool)

(assert (=> bm!67209 m!1308015))

(assert (=> b!1417012 d!152599))

(declare-fun bm!67212 () Bool)

(declare-fun call!67215 () Bool)

(declare-fun c!131540 () Bool)

(assert (=> bm!67212 (= call!67215 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131540 (Cons!33376 (select (arr!46681 a!2901) #b00000000000000000000000000000000) Nil!33377) Nil!33377)))))

(declare-fun b!1417212 () Bool)

(declare-fun e!802117 () Bool)

(declare-fun contains!9842 (List!33380 (_ BitVec 64)) Bool)

(assert (=> b!1417212 (= e!802117 (contains!9842 Nil!33377 (select (arr!46681 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1417213 () Bool)

(declare-fun e!802116 () Bool)

(assert (=> b!1417213 (= e!802116 call!67215)))

(declare-fun b!1417214 () Bool)

(declare-fun e!802115 () Bool)

(assert (=> b!1417214 (= e!802115 e!802116)))

(assert (=> b!1417214 (= c!131540 (validKeyInArray!0 (select (arr!46681 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152601 () Bool)

(declare-fun res!953103 () Bool)

(declare-fun e!802118 () Bool)

(assert (=> d!152601 (=> res!953103 e!802118)))

(assert (=> d!152601 (= res!953103 (bvsge #b00000000000000000000000000000000 (size!47232 a!2901)))))

(assert (=> d!152601 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33377) e!802118)))

(declare-fun b!1417215 () Bool)

(assert (=> b!1417215 (= e!802116 call!67215)))

(declare-fun b!1417216 () Bool)

(assert (=> b!1417216 (= e!802118 e!802115)))

(declare-fun res!953101 () Bool)

(assert (=> b!1417216 (=> (not res!953101) (not e!802115))))

(assert (=> b!1417216 (= res!953101 (not e!802117))))

(declare-fun res!953102 () Bool)

(assert (=> b!1417216 (=> (not res!953102) (not e!802117))))

(assert (=> b!1417216 (= res!953102 (validKeyInArray!0 (select (arr!46681 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152601 (not res!953103)) b!1417216))

(assert (= (and b!1417216 res!953102) b!1417212))

(assert (= (and b!1417216 res!953101) b!1417214))

(assert (= (and b!1417214 c!131540) b!1417213))

(assert (= (and b!1417214 (not c!131540)) b!1417215))

(assert (= (or b!1417213 b!1417215) bm!67212))

(assert (=> bm!67212 m!1308005))

(declare-fun m!1308027 () Bool)

(assert (=> bm!67212 m!1308027))

(assert (=> b!1417212 m!1308005))

(assert (=> b!1417212 m!1308005))

(declare-fun m!1308029 () Bool)

(assert (=> b!1417212 m!1308029))

(assert (=> b!1417214 m!1308005))

(assert (=> b!1417214 m!1308005))

(assert (=> b!1417214 m!1308007))

(assert (=> b!1417216 m!1308005))

(assert (=> b!1417216 m!1308005))

(assert (=> b!1417216 m!1308007))

(assert (=> b!1417006 d!152601))

(declare-fun d!152617 () Bool)

(assert (=> d!152617 (= (validKeyInArray!0 (select (arr!46681 a!2901) j!112)) (and (not (= (select (arr!46681 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46681 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417011 d!152617))

(declare-fun d!152619 () Bool)

(declare-fun lt!625287 () SeekEntryResult!11014)

(assert (=> d!152619 (and (or (is-Undefined!11014 lt!625287) (not (is-Found!11014 lt!625287)) (and (bvsge (index!46448 lt!625287) #b00000000000000000000000000000000) (bvslt (index!46448 lt!625287) (size!47232 a!2901)))) (or (is-Undefined!11014 lt!625287) (is-Found!11014 lt!625287) (not (is-MissingZero!11014 lt!625287)) (and (bvsge (index!46447 lt!625287) #b00000000000000000000000000000000) (bvslt (index!46447 lt!625287) (size!47232 a!2901)))) (or (is-Undefined!11014 lt!625287) (is-Found!11014 lt!625287) (is-MissingZero!11014 lt!625287) (not (is-MissingVacant!11014 lt!625287)) (and (bvsge (index!46450 lt!625287) #b00000000000000000000000000000000) (bvslt (index!46450 lt!625287) (size!47232 a!2901)))) (or (is-Undefined!11014 lt!625287) (ite (is-Found!11014 lt!625287) (= (select (arr!46681 a!2901) (index!46448 lt!625287)) (select (arr!46681 a!2901) j!112)) (ite (is-MissingZero!11014 lt!625287) (= (select (arr!46681 a!2901) (index!46447 lt!625287)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11014 lt!625287) (= (select (arr!46681 a!2901) (index!46450 lt!625287)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!802148 () SeekEntryResult!11014)

(assert (=> d!152619 (= lt!625287 e!802148)))

(declare-fun c!131560 () Bool)

(declare-fun lt!625288 () SeekEntryResult!11014)

(assert (=> d!152619 (= c!131560 (and (is-Intermediate!11014 lt!625288) (undefined!11826 lt!625288)))))

(assert (=> d!152619 (= lt!625288 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46681 a!2901) j!112) mask!2840) (select (arr!46681 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152619 (validMask!0 mask!2840)))

(assert (=> d!152619 (= (seekEntryOrOpen!0 (select (arr!46681 a!2901) j!112) a!2901 mask!2840) lt!625287)))

(declare-fun b!1417262 () Bool)

(declare-fun c!131559 () Bool)

(declare-fun lt!625286 () (_ BitVec 64))

(assert (=> b!1417262 (= c!131559 (= lt!625286 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!802147 () SeekEntryResult!11014)

(declare-fun e!802146 () SeekEntryResult!11014)

(assert (=> b!1417262 (= e!802147 e!802146)))

(declare-fun b!1417263 () Bool)

(assert (=> b!1417263 (= e!802147 (Found!11014 (index!46449 lt!625288)))))

(declare-fun b!1417264 () Bool)

(assert (=> b!1417264 (= e!802148 e!802147)))

(assert (=> b!1417264 (= lt!625286 (select (arr!46681 a!2901) (index!46449 lt!625288)))))

(declare-fun c!131561 () Bool)

(assert (=> b!1417264 (= c!131561 (= lt!625286 (select (arr!46681 a!2901) j!112)))))

(declare-fun b!1417265 () Bool)

(assert (=> b!1417265 (= e!802148 Undefined!11014)))

(declare-fun b!1417266 () Bool)

(assert (=> b!1417266 (= e!802146 (MissingZero!11014 (index!46449 lt!625288)))))

(declare-fun b!1417267 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96711 (_ BitVec 32)) SeekEntryResult!11014)

(assert (=> b!1417267 (= e!802146 (seekKeyOrZeroReturnVacant!0 (x!128054 lt!625288) (index!46449 lt!625288) (index!46449 lt!625288) (select (arr!46681 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!152619 c!131560) b!1417265))

(assert (= (and d!152619 (not c!131560)) b!1417264))

(assert (= (and b!1417264 c!131561) b!1417263))

(assert (= (and b!1417264 (not c!131561)) b!1417262))

(assert (= (and b!1417262 c!131559) b!1417266))

(assert (= (and b!1417262 (not c!131559)) b!1417267))

(assert (=> d!152619 m!1307859))

(assert (=> d!152619 m!1307873))

(assert (=> d!152619 m!1307873))

(assert (=> d!152619 m!1307859))

(assert (=> d!152619 m!1307877))

(assert (=> d!152619 m!1307855))

(declare-fun m!1308045 () Bool)

(assert (=> d!152619 m!1308045))

(declare-fun m!1308047 () Bool)

(assert (=> d!152619 m!1308047))

(declare-fun m!1308049 () Bool)

(assert (=> d!152619 m!1308049))

(declare-fun m!1308051 () Bool)

(assert (=> b!1417264 m!1308051))

(assert (=> b!1417267 m!1307859))

(declare-fun m!1308053 () Bool)

(assert (=> b!1417267 m!1308053))

(assert (=> b!1417010 d!152619))

(push 1)

