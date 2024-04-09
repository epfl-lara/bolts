; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128566 () Bool)

(assert start!128566)

(declare-fun b!1506956 () Bool)

(declare-fun res!1027353 () Bool)

(declare-fun e!842076 () Bool)

(assert (=> b!1506956 (=> (not res!1027353) (not e!842076))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100491 0))(
  ( (array!100492 (arr!48484 (Array (_ BitVec 32) (_ BitVec 64))) (size!49035 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100491)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12676 0))(
  ( (MissingZero!12676 (index!53098 (_ BitVec 32))) (Found!12676 (index!53099 (_ BitVec 32))) (Intermediate!12676 (undefined!13488 Bool) (index!53100 (_ BitVec 32)) (x!134863 (_ BitVec 32))) (Undefined!12676) (MissingVacant!12676 (index!53101 (_ BitVec 32))) )
))
(declare-fun lt!654253 () SeekEntryResult!12676)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100491 (_ BitVec 32)) SeekEntryResult!12676)

(assert (=> b!1506956 (= res!1027353 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48484 a!2804) j!70) a!2804 mask!2512) lt!654253))))

(declare-fun b!1506957 () Bool)

(declare-fun res!1027357 () Bool)

(declare-fun e!842078 () Bool)

(assert (=> b!1506957 (=> (not res!1027357) (not e!842078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100491 (_ BitVec 32)) Bool)

(assert (=> b!1506957 (= res!1027357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506958 () Bool)

(assert (=> b!1506958 (= e!842078 e!842076)))

(declare-fun res!1027355 () Bool)

(assert (=> b!1506958 (=> (not res!1027355) (not e!842076))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506958 (= res!1027355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512) (select (arr!48484 a!2804) j!70) a!2804 mask!2512) lt!654253))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506958 (= lt!654253 (Intermediate!12676 false resIndex!21 resX!21))))

(declare-fun b!1506959 () Bool)

(assert (=> b!1506959 (= e!842076 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun res!1027356 () Bool)

(assert (=> start!128566 (=> (not res!1027356) (not e!842078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128566 (= res!1027356 (validMask!0 mask!2512))))

(assert (=> start!128566 e!842078))

(assert (=> start!128566 true))

(declare-fun array_inv!37429 (array!100491) Bool)

(assert (=> start!128566 (array_inv!37429 a!2804)))

(declare-fun b!1506960 () Bool)

(declare-fun res!1027354 () Bool)

(assert (=> b!1506960 (=> (not res!1027354) (not e!842078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506960 (= res!1027354 (validKeyInArray!0 (select (arr!48484 a!2804) j!70)))))

(declare-fun b!1506961 () Bool)

(declare-fun res!1027352 () Bool)

(assert (=> b!1506961 (=> (not res!1027352) (not e!842078))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506961 (= res!1027352 (validKeyInArray!0 (select (arr!48484 a!2804) i!961)))))

(declare-fun b!1506962 () Bool)

(declare-fun res!1027351 () Bool)

(assert (=> b!1506962 (=> (not res!1027351) (not e!842078))))

(declare-datatypes ((List!35147 0))(
  ( (Nil!35144) (Cons!35143 (h!36544 (_ BitVec 64)) (t!49848 List!35147)) )
))
(declare-fun arrayNoDuplicates!0 (array!100491 (_ BitVec 32) List!35147) Bool)

(assert (=> b!1506962 (= res!1027351 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35144))))

(declare-fun b!1506963 () Bool)

(declare-fun res!1027358 () Bool)

(assert (=> b!1506963 (=> (not res!1027358) (not e!842078))))

(assert (=> b!1506963 (= res!1027358 (and (= (size!49035 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49035 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49035 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506964 () Bool)

(declare-fun res!1027359 () Bool)

(assert (=> b!1506964 (=> (not res!1027359) (not e!842078))))

(assert (=> b!1506964 (= res!1027359 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49035 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49035 a!2804))))))

(assert (= (and start!128566 res!1027356) b!1506963))

(assert (= (and b!1506963 res!1027358) b!1506961))

(assert (= (and b!1506961 res!1027352) b!1506960))

(assert (= (and b!1506960 res!1027354) b!1506957))

(assert (= (and b!1506957 res!1027357) b!1506962))

(assert (= (and b!1506962 res!1027351) b!1506964))

(assert (= (and b!1506964 res!1027359) b!1506958))

(assert (= (and b!1506958 res!1027355) b!1506956))

(assert (= (and b!1506956 res!1027353) b!1506959))

(declare-fun m!1389891 () Bool)

(assert (=> b!1506956 m!1389891))

(assert (=> b!1506956 m!1389891))

(declare-fun m!1389893 () Bool)

(assert (=> b!1506956 m!1389893))

(declare-fun m!1389895 () Bool)

(assert (=> start!128566 m!1389895))

(declare-fun m!1389897 () Bool)

(assert (=> start!128566 m!1389897))

(declare-fun m!1389899 () Bool)

(assert (=> b!1506962 m!1389899))

(assert (=> b!1506958 m!1389891))

(assert (=> b!1506958 m!1389891))

(declare-fun m!1389901 () Bool)

(assert (=> b!1506958 m!1389901))

(assert (=> b!1506958 m!1389901))

(assert (=> b!1506958 m!1389891))

(declare-fun m!1389903 () Bool)

(assert (=> b!1506958 m!1389903))

(declare-fun m!1389905 () Bool)

(assert (=> b!1506957 m!1389905))

(assert (=> b!1506960 m!1389891))

(assert (=> b!1506960 m!1389891))

(declare-fun m!1389907 () Bool)

(assert (=> b!1506960 m!1389907))

(declare-fun m!1389909 () Bool)

(assert (=> b!1506961 m!1389909))

(assert (=> b!1506961 m!1389909))

(declare-fun m!1389911 () Bool)

(assert (=> b!1506961 m!1389911))

(push 1)

(assert (not b!1506961))

(assert (not b!1506960))

(assert (not b!1506956))

(assert (not b!1506962))

(assert (not b!1506957))

(assert (not b!1506958))

(assert (not start!128566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158217 () Bool)

(assert (=> d!158217 (= (validKeyInArray!0 (select (arr!48484 a!2804) j!70)) (and (not (= (select (arr!48484 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48484 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506960 d!158217))

(declare-fun d!158219 () Bool)

(assert (=> d!158219 (= (validKeyInArray!0 (select (arr!48484 a!2804) i!961)) (and (not (= (select (arr!48484 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48484 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506961 d!158219))

(declare-fun b!1507101 () Bool)

(declare-fun e!842149 () SeekEntryResult!12676)

(declare-fun e!842145 () SeekEntryResult!12676)

(assert (=> b!1507101 (= e!842149 e!842145)))

(declare-fun c!139368 () Bool)

(declare-fun lt!654283 () (_ BitVec 64))

(assert (=> b!1507101 (= c!139368 (or (= lt!654283 (select (arr!48484 a!2804) j!70)) (= (bvadd lt!654283 lt!654283) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507102 () Bool)

(declare-fun lt!654282 () SeekEntryResult!12676)

(assert (=> b!1507102 (and (bvsge (index!53100 lt!654282) #b00000000000000000000000000000000) (bvslt (index!53100 lt!654282) (size!49035 a!2804)))))

(declare-fun res!1027447 () Bool)

(assert (=> b!1507102 (= res!1027447 (= (select (arr!48484 a!2804) (index!53100 lt!654282)) (select (arr!48484 a!2804) j!70)))))

(declare-fun e!842148 () Bool)

(assert (=> b!1507102 (=> res!1027447 e!842148)))

(declare-fun e!842146 () Bool)

(assert (=> b!1507102 (= e!842146 e!842148)))

(declare-fun b!1507103 () Bool)

(assert (=> b!1507103 (= e!842149 (Intermediate!12676 true (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1507104 () Bool)

(assert (=> b!1507104 (and (bvsge (index!53100 lt!654282) #b00000000000000000000000000000000) (bvslt (index!53100 lt!654282) (size!49035 a!2804)))))

(declare-fun res!1027446 () Bool)

(assert (=> b!1507104 (= res!1027446 (= (select (arr!48484 a!2804) (index!53100 lt!654282)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507104 (=> res!1027446 e!842148)))

(declare-fun b!1507105 () Bool)

(declare-fun e!842147 () Bool)

(assert (=> b!1507105 (= e!842147 (bvsge (x!134863 lt!654282) #b01111111111111111111111111111110))))

(declare-fun d!158221 () Bool)

(assert (=> d!158221 e!842147))

(declare-fun c!139369 () Bool)

(assert (=> d!158221 (= c!139369 (and (is-Intermediate!12676 lt!654282) (undefined!13488 lt!654282)))))

(assert (=> d!158221 (= lt!654282 e!842149)))

(declare-fun c!139367 () Bool)

(assert (=> d!158221 (= c!139367 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158221 (= lt!654283 (select (arr!48484 a!2804) (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512)))))

(assert (=> d!158221 (validMask!0 mask!2512)))

(assert (=> d!158221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512) (select (arr!48484 a!2804) j!70) a!2804 mask!2512) lt!654282)))

(declare-fun b!1507106 () Bool)

(assert (=> b!1507106 (= e!842147 e!842146)))

(declare-fun res!1027445 () Bool)

(assert (=> b!1507106 (= res!1027445 (and (is-Intermediate!12676 lt!654282) (not (undefined!13488 lt!654282)) (bvslt (x!134863 lt!654282) #b01111111111111111111111111111110) (bvsge (x!134863 lt!654282) #b00000000000000000000000000000000) (bvsge (x!134863 lt!654282) #b00000000000000000000000000000000)))))

(assert (=> b!1507106 (=> (not res!1027445) (not e!842146))))

(declare-fun b!1507107 () Bool)

(assert (=> b!1507107 (and (bvsge (index!53100 lt!654282) #b00000000000000000000000000000000) (bvslt (index!53100 lt!654282) (size!49035 a!2804)))))

(assert (=> b!1507107 (= e!842148 (= (select (arr!48484 a!2804) (index!53100 lt!654282)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507108 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507108 (= e!842145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48484 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507109 () Bool)

(assert (=> b!1507109 (= e!842145 (Intermediate!12676 false (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!158221 c!139367) b!1507103))

(assert (= (and d!158221 (not c!139367)) b!1507101))

(assert (= (and b!1507101 c!139368) b!1507109))

(assert (= (and b!1507101 (not c!139368)) b!1507108))

(assert (= (and d!158221 c!139369) b!1507105))

(assert (= (and d!158221 (not c!139369)) b!1507106))

(assert (= (and b!1507106 res!1027445) b!1507102))

(assert (= (and b!1507102 (not res!1027447)) b!1507104))

(assert (= (and b!1507104 (not res!1027446)) b!1507107))

(assert (=> b!1507108 m!1389901))

(declare-fun m!1389973 () Bool)

(assert (=> b!1507108 m!1389973))

(assert (=> b!1507108 m!1389973))

(assert (=> b!1507108 m!1389891))

(declare-fun m!1389975 () Bool)

(assert (=> b!1507108 m!1389975))

(assert (=> d!158221 m!1389901))

(declare-fun m!1389977 () Bool)

(assert (=> d!158221 m!1389977))

(assert (=> d!158221 m!1389895))

(declare-fun m!1389979 () Bool)

(assert (=> b!1507107 m!1389979))

(assert (=> b!1507102 m!1389979))

(assert (=> b!1507104 m!1389979))

(assert (=> b!1506958 d!158221))

(declare-fun d!158235 () Bool)

(declare-fun lt!654291 () (_ BitVec 32))

(declare-fun lt!654290 () (_ BitVec 32))

(assert (=> d!158235 (= lt!654291 (bvmul (bvxor lt!654290 (bvlshr lt!654290 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158235 (= lt!654290 ((_ extract 31 0) (bvand (bvxor (select (arr!48484 a!2804) j!70) (bvlshr (select (arr!48484 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158235 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1027451 (let ((h!36548 ((_ extract 31 0) (bvand (bvxor (select (arr!48484 a!2804) j!70) (bvlshr (select (arr!48484 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134870 (bvmul (bvxor h!36548 (bvlshr h!36548 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134870 (bvlshr x!134870 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1027451 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1027451 #b00000000000000000000000000000000))))))

(assert (=> d!158235 (= (toIndex!0 (select (arr!48484 a!2804) j!70) mask!2512) (bvand (bvxor lt!654291 (bvlshr lt!654291 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1506958 d!158235))

(declare-fun b!1507124 () Bool)

(declare-fun e!842163 () SeekEntryResult!12676)

(declare-fun e!842159 () SeekEntryResult!12676)

(assert (=> b!1507124 (= e!842163 e!842159)))

(declare-fun c!139375 () Bool)

(declare-fun lt!654293 () (_ BitVec 64))

(assert (=> b!1507124 (= c!139375 (or (= lt!654293 (select (arr!48484 a!2804) j!70)) (= (bvadd lt!654293 lt!654293) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507125 () Bool)

(declare-fun lt!654292 () SeekEntryResult!12676)

(assert (=> b!1507125 (and (bvsge (index!53100 lt!654292) #b00000000000000000000000000000000) (bvslt (index!53100 lt!654292) (size!49035 a!2804)))))

(declare-fun res!1027457 () Bool)

(assert (=> b!1507125 (= res!1027457 (= (select (arr!48484 a!2804) (index!53100 lt!654292)) (select (arr!48484 a!2804) j!70)))))

(declare-fun e!842162 () Bool)

(assert (=> b!1507125 (=> res!1027457 e!842162)))

(declare-fun e!842160 () Bool)

(assert (=> b!1507125 (= e!842160 e!842162)))

(declare-fun b!1507126 () Bool)

(assert (=> b!1507126 (= e!842163 (Intermediate!12676 true index!487 x!534))))

(declare-fun b!1507127 () Bool)

(assert (=> b!1507127 (and (bvsge (index!53100 lt!654292) #b00000000000000000000000000000000) (bvslt (index!53100 lt!654292) (size!49035 a!2804)))))

(declare-fun res!1027456 () Bool)

(assert (=> b!1507127 (= res!1027456 (= (select (arr!48484 a!2804) (index!53100 lt!654292)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507127 (=> res!1027456 e!842162)))

(declare-fun b!1507128 () Bool)

(declare-fun e!842161 () Bool)

(assert (=> b!1507128 (= e!842161 (bvsge (x!134863 lt!654292) #b01111111111111111111111111111110))))

(declare-fun d!158241 () Bool)

(assert (=> d!158241 e!842161))

(declare-fun c!139376 () Bool)

(assert (=> d!158241 (= c!139376 (and (is-Intermediate!12676 lt!654292) (undefined!13488 lt!654292)))))

(assert (=> d!158241 (= lt!654292 e!842163)))

(declare-fun c!139374 () Bool)

(assert (=> d!158241 (= c!139374 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158241 (= lt!654293 (select (arr!48484 a!2804) index!487))))

(assert (=> d!158241 (validMask!0 mask!2512)))

(assert (=> d!158241 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48484 a!2804) j!70) a!2804 mask!2512) lt!654292)))

(declare-fun b!1507129 () Bool)

(assert (=> b!1507129 (= e!842161 e!842160)))

(declare-fun res!1027455 () Bool)

(assert (=> b!1507129 (= res!1027455 (and (is-Intermediate!12676 lt!654292) (not (undefined!13488 lt!654292)) (bvslt (x!134863 lt!654292) #b01111111111111111111111111111110) (bvsge (x!134863 lt!654292) #b00000000000000000000000000000000) (bvsge (x!134863 lt!654292) x!534)))))

(assert (=> b!1507129 (=> (not res!1027455) (not e!842160))))

(declare-fun b!1507130 () Bool)

(assert (=> b!1507130 (and (bvsge (index!53100 lt!654292) #b00000000000000000000000000000000) (bvslt (index!53100 lt!654292) (size!49035 a!2804)))))

(assert (=> b!1507130 (= e!842162 (= (select (arr!48484 a!2804) (index!53100 lt!654292)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507131 () Bool)

(assert (=> b!1507131 (= e!842159 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48484 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507132 () Bool)

(assert (=> b!1507132 (= e!842159 (Intermediate!12676 false index!487 x!534))))

(assert (= (and d!158241 c!139374) b!1507126))

(assert (= (and d!158241 (not c!139374)) b!1507124))

(assert (= (and b!1507124 c!139375) b!1507132))

(assert (= (and b!1507124 (not c!139375)) b!1507131))

(assert (= (and d!158241 c!139376) b!1507128))

(assert (= (and d!158241 (not c!139376)) b!1507129))

(assert (= (and b!1507129 res!1027455) b!1507125))

(assert (= (and b!1507125 (not res!1027457)) b!1507127))

(assert (= (and b!1507127 (not res!1027456)) b!1507130))

(declare-fun m!1389997 () Bool)

(assert (=> b!1507131 m!1389997))

(assert (=> b!1507131 m!1389997))

(assert (=> b!1507131 m!1389891))

(declare-fun m!1389999 () Bool)

(assert (=> b!1507131 m!1389999))

(declare-fun m!1390001 () Bool)

(assert (=> d!158241 m!1390001))

(assert (=> d!158241 m!1389895))

(declare-fun m!1390003 () Bool)

(assert (=> b!1507130 m!1390003))

(assert (=> b!1507125 m!1390003))

(assert (=> b!1507127 m!1390003))

(assert (=> b!1506956 d!158241))

(declare-fun b!1507175 () Bool)

(declare-fun e!842198 () Bool)

(declare-fun e!842196 () Bool)

(assert (=> b!1507175 (= e!842198 e!842196)))

(declare-fun c!139387 () Bool)

(assert (=> b!1507175 (= c!139387 (validKeyInArray!0 (select (arr!48484 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158243 () Bool)

(declare-fun res!1027481 () Bool)

(assert (=> d!158243 (=> res!1027481 e!842198)))

(assert (=> d!158243 (= res!1027481 (bvsge #b00000000000000000000000000000000 (size!49035 a!2804)))))

(assert (=> d!158243 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842198)))

(declare-fun b!1507176 () Bool)

(declare-fun e!842197 () Bool)

(declare-fun call!68252 () Bool)

(assert (=> b!1507176 (= e!842197 call!68252)))

(declare-fun b!1507177 () Bool)

(assert (=> b!1507177 (= e!842196 e!842197)))

(declare-fun lt!654319 () (_ BitVec 64))

(assert (=> b!1507177 (= lt!654319 (select (arr!48484 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50276 0))(
  ( (Unit!50277) )
))
(declare-fun lt!654320 () Unit!50276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100491 (_ BitVec 64) (_ BitVec 32)) Unit!50276)

(assert (=> b!1507177 (= lt!654320 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654319 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1507177 (arrayContainsKey!0 a!2804 lt!654319 #b00000000000000000000000000000000)))

(declare-fun lt!654318 () Unit!50276)

(assert (=> b!1507177 (= lt!654318 lt!654320)))

(declare-fun res!1027480 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100491 (_ BitVec 32)) SeekEntryResult!12676)

(assert (=> b!1507177 (= res!1027480 (= (seekEntryOrOpen!0 (select (arr!48484 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12676 #b00000000000000000000000000000000)))))

(assert (=> b!1507177 (=> (not res!1027480) (not e!842197))))

(declare-fun b!1507178 () Bool)

(assert (=> b!1507178 (= e!842196 call!68252)))

(declare-fun bm!68249 () Bool)

(assert (=> bm!68249 (= call!68252 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158243 (not res!1027481)) b!1507175))

(assert (= (and b!1507175 c!139387) b!1507177))

(assert (= (and b!1507175 (not c!139387)) b!1507178))

(assert (= (and b!1507177 res!1027480) b!1507176))

(assert (= (or b!1507176 b!1507178) bm!68249))

(declare-fun m!1390025 () Bool)

(assert (=> b!1507175 m!1390025))

(assert (=> b!1507175 m!1390025))

(declare-fun m!1390027 () Bool)

(assert (=> b!1507175 m!1390027))

(assert (=> b!1507177 m!1390025))

(declare-fun m!1390029 () Bool)

(assert (=> b!1507177 m!1390029))

(declare-fun m!1390031 () Bool)

(assert (=> b!1507177 m!1390031))

(assert (=> b!1507177 m!1390025))

(declare-fun m!1390033 () Bool)

(assert (=> b!1507177 m!1390033))

(declare-fun m!1390035 () Bool)

(assert (=> bm!68249 m!1390035))

(assert (=> b!1506957 d!158243))

(declare-fun d!158249 () Bool)

(assert (=> d!158249 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128566 d!158249))

(declare-fun d!158261 () Bool)

(assert (=> d!158261 (= (array_inv!37429 a!2804) (bvsge (size!49035 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128566 d!158261))

(declare-fun bm!68253 () Bool)

(declare-fun call!68256 () Bool)

(declare-fun c!139394 () Bool)

(assert (=> bm!68253 (= call!68256 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139394 (Cons!35143 (select (arr!48484 a!2804) #b00000000000000000000000000000000) Nil!35144) Nil!35144)))))

(declare-fun b!1507204 () Bool)

(declare-fun e!842216 () Bool)

(declare-fun contains!9977 (List!35147 (_ BitVec 64)) Bool)

(assert (=> b!1507204 (= e!842216 (contains!9977 Nil!35144 (select (arr!48484 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507205 () Bool)

(declare-fun e!842218 () Bool)

(declare-fun e!842217 () Bool)

(assert (=> b!1507205 (= e!842218 e!842217)))

(assert (=> b!1507205 (= c!139394 (validKeyInArray!0 (select (arr!48484 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507206 () Bool)

(assert (=> b!1507206 (= e!842217 call!68256)))

(declare-fun b!1507207 () Bool)

(declare-fun e!842219 () Bool)

(assert (=> b!1507207 (= e!842219 e!842218)))

(declare-fun res!1027495 () Bool)

(assert (=> b!1507207 (=> (not res!1027495) (not e!842218))))

(assert (=> b!1507207 (= res!1027495 (not e!842216))))

(declare-fun res!1027496 () Bool)

(assert (=> b!1507207 (=> (not res!1027496) (not e!842216))))

(assert (=> b!1507207 (= res!1027496 (validKeyInArray!0 (select (arr!48484 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507203 () Bool)

(assert (=> b!1507203 (= e!842217 call!68256)))

(declare-fun d!158263 () Bool)

(declare-fun res!1027497 () Bool)

(assert (=> d!158263 (=> res!1027497 e!842219)))

(assert (=> d!158263 (= res!1027497 (bvsge #b00000000000000000000000000000000 (size!49035 a!2804)))))

(assert (=> d!158263 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35144) e!842219)))

(assert (= (and d!158263 (not res!1027497)) b!1507207))

(assert (= (and b!1507207 res!1027496) b!1507204))

(assert (= (and b!1507207 res!1027495) b!1507205))

(assert (= (and b!1507205 c!139394) b!1507203))

(assert (= (and b!1507205 (not c!139394)) b!1507206))

(assert (= (or b!1507203 b!1507206) bm!68253))

(assert (=> bm!68253 m!1390025))

(declare-fun m!1390049 () Bool)

(assert (=> bm!68253 m!1390049))

(assert (=> b!1507204 m!1390025))

(assert (=> b!1507204 m!1390025))

(declare-fun m!1390051 () Bool)

(assert (=> b!1507204 m!1390051))

(assert (=> b!1507205 m!1390025))

(assert (=> b!1507205 m!1390025))

(assert (=> b!1507205 m!1390027))

(assert (=> b!1507207 m!1390025))

(assert (=> b!1507207 m!1390025))

(assert (=> b!1507207 m!1390027))

(assert (=> b!1506962 d!158263))

(push 1)

