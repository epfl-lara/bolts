; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128568 () Bool)

(assert start!128568)

(declare-fun b!1506983 () Bool)

(declare-fun e!842087 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1506983 (= e!842087 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1506984 () Bool)

(declare-fun res!1027381 () Bool)

(declare-fun e!842086 () Bool)

(assert (=> b!1506984 (=> (not res!1027381) (not e!842086))))

(declare-datatypes ((array!100493 0))(
  ( (array!100494 (arr!48485 (Array (_ BitVec 32) (_ BitVec 64))) (size!49036 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100493)

(declare-datatypes ((List!35148 0))(
  ( (Nil!35145) (Cons!35144 (h!36545 (_ BitVec 64)) (t!49849 List!35148)) )
))
(declare-fun arrayNoDuplicates!0 (array!100493 (_ BitVec 32) List!35148) Bool)

(assert (=> b!1506984 (= res!1027381 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35145))))

(declare-fun b!1506985 () Bool)

(assert (=> b!1506985 (= e!842086 e!842087)))

(declare-fun res!1027383 () Bool)

(assert (=> b!1506985 (=> (not res!1027383) (not e!842087))))

(declare-datatypes ((SeekEntryResult!12677 0))(
  ( (MissingZero!12677 (index!53102 (_ BitVec 32))) (Found!12677 (index!53103 (_ BitVec 32))) (Intermediate!12677 (undefined!13489 Bool) (index!53104 (_ BitVec 32)) (x!134864 (_ BitVec 32))) (Undefined!12677) (MissingVacant!12677 (index!53105 (_ BitVec 32))) )
))
(declare-fun lt!654256 () SeekEntryResult!12677)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100493 (_ BitVec 32)) SeekEntryResult!12677)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506985 (= res!1027383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512) (select (arr!48485 a!2804) j!70) a!2804 mask!2512) lt!654256))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506985 (= lt!654256 (Intermediate!12677 false resIndex!21 resX!21))))

(declare-fun b!1506986 () Bool)

(declare-fun res!1027384 () Bool)

(assert (=> b!1506986 (=> (not res!1027384) (not e!842086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506986 (= res!1027384 (validKeyInArray!0 (select (arr!48485 a!2804) j!70)))))

(declare-fun b!1506987 () Bool)

(declare-fun res!1027379 () Bool)

(assert (=> b!1506987 (=> (not res!1027379) (not e!842087))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506987 (= res!1027379 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48485 a!2804) j!70) a!2804 mask!2512) lt!654256))))

(declare-fun b!1506988 () Bool)

(declare-fun res!1027385 () Bool)

(assert (=> b!1506988 (=> (not res!1027385) (not e!842086))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506988 (= res!1027385 (and (= (size!49036 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49036 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49036 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506990 () Bool)

(declare-fun res!1027380 () Bool)

(assert (=> b!1506990 (=> (not res!1027380) (not e!842086))))

(assert (=> b!1506990 (= res!1027380 (validKeyInArray!0 (select (arr!48485 a!2804) i!961)))))

(declare-fun b!1506991 () Bool)

(declare-fun res!1027382 () Bool)

(assert (=> b!1506991 (=> (not res!1027382) (not e!842086))))

(assert (=> b!1506991 (= res!1027382 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49036 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49036 a!2804))))))

(declare-fun b!1506989 () Bool)

(declare-fun res!1027386 () Bool)

(assert (=> b!1506989 (=> (not res!1027386) (not e!842086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100493 (_ BitVec 32)) Bool)

(assert (=> b!1506989 (= res!1027386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1027378 () Bool)

(assert (=> start!128568 (=> (not res!1027378) (not e!842086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128568 (= res!1027378 (validMask!0 mask!2512))))

(assert (=> start!128568 e!842086))

(assert (=> start!128568 true))

(declare-fun array_inv!37430 (array!100493) Bool)

(assert (=> start!128568 (array_inv!37430 a!2804)))

(assert (= (and start!128568 res!1027378) b!1506988))

(assert (= (and b!1506988 res!1027385) b!1506990))

(assert (= (and b!1506990 res!1027380) b!1506986))

(assert (= (and b!1506986 res!1027384) b!1506989))

(assert (= (and b!1506989 res!1027386) b!1506984))

(assert (= (and b!1506984 res!1027381) b!1506991))

(assert (= (and b!1506991 res!1027382) b!1506985))

(assert (= (and b!1506985 res!1027383) b!1506987))

(assert (= (and b!1506987 res!1027379) b!1506983))

(declare-fun m!1389913 () Bool)

(assert (=> b!1506990 m!1389913))

(assert (=> b!1506990 m!1389913))

(declare-fun m!1389915 () Bool)

(assert (=> b!1506990 m!1389915))

(declare-fun m!1389917 () Bool)

(assert (=> b!1506984 m!1389917))

(declare-fun m!1389919 () Bool)

(assert (=> b!1506986 m!1389919))

(assert (=> b!1506986 m!1389919))

(declare-fun m!1389921 () Bool)

(assert (=> b!1506986 m!1389921))

(declare-fun m!1389923 () Bool)

(assert (=> start!128568 m!1389923))

(declare-fun m!1389925 () Bool)

(assert (=> start!128568 m!1389925))

(declare-fun m!1389927 () Bool)

(assert (=> b!1506989 m!1389927))

(assert (=> b!1506985 m!1389919))

(assert (=> b!1506985 m!1389919))

(declare-fun m!1389929 () Bool)

(assert (=> b!1506985 m!1389929))

(assert (=> b!1506985 m!1389929))

(assert (=> b!1506985 m!1389919))

(declare-fun m!1389931 () Bool)

(assert (=> b!1506985 m!1389931))

(assert (=> b!1506987 m!1389919))

(assert (=> b!1506987 m!1389919))

(declare-fun m!1389933 () Bool)

(assert (=> b!1506987 m!1389933))

(check-sat (not start!128568) (not b!1506990) (not b!1506986) (not b!1506985) (not b!1506987) (not b!1506984) (not b!1506989))
(check-sat)
(get-model)

(declare-fun b!1507037 () Bool)

(declare-fun e!842109 () SeekEntryResult!12677)

(declare-fun e!842107 () SeekEntryResult!12677)

(assert (=> b!1507037 (= e!842109 e!842107)))

(declare-fun lt!654265 () (_ BitVec 64))

(declare-fun c!139349 () Bool)

(assert (=> b!1507037 (= c!139349 (or (= lt!654265 (select (arr!48485 a!2804) j!70)) (= (bvadd lt!654265 lt!654265) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507038 () Bool)

(assert (=> b!1507038 (= e!842109 (Intermediate!12677 true index!487 x!534))))

(declare-fun d!158215 () Bool)

(declare-fun e!842111 () Bool)

(assert (=> d!158215 e!842111))

(declare-fun c!139348 () Bool)

(declare-fun lt!654264 () SeekEntryResult!12677)

(get-info :version)

(assert (=> d!158215 (= c!139348 (and ((_ is Intermediate!12677) lt!654264) (undefined!13489 lt!654264)))))

(assert (=> d!158215 (= lt!654264 e!842109)))

(declare-fun c!139347 () Bool)

(assert (=> d!158215 (= c!139347 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158215 (= lt!654265 (select (arr!48485 a!2804) index!487))))

(assert (=> d!158215 (validMask!0 mask!2512)))

(assert (=> d!158215 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48485 a!2804) j!70) a!2804 mask!2512) lt!654264)))

(declare-fun b!1507039 () Bool)

(assert (=> b!1507039 (= e!842107 (Intermediate!12677 false index!487 x!534))))

(declare-fun b!1507040 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507040 (= e!842107 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48485 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507041 () Bool)

(assert (=> b!1507041 (and (bvsge (index!53104 lt!654264) #b00000000000000000000000000000000) (bvslt (index!53104 lt!654264) (size!49036 a!2804)))))

(declare-fun res!1027421 () Bool)

(assert (=> b!1507041 (= res!1027421 (= (select (arr!48485 a!2804) (index!53104 lt!654264)) (select (arr!48485 a!2804) j!70)))))

(declare-fun e!842110 () Bool)

(assert (=> b!1507041 (=> res!1027421 e!842110)))

(declare-fun e!842108 () Bool)

(assert (=> b!1507041 (= e!842108 e!842110)))

(declare-fun b!1507042 () Bool)

(assert (=> b!1507042 (and (bvsge (index!53104 lt!654264) #b00000000000000000000000000000000) (bvslt (index!53104 lt!654264) (size!49036 a!2804)))))

(assert (=> b!1507042 (= e!842110 (= (select (arr!48485 a!2804) (index!53104 lt!654264)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507043 () Bool)

(assert (=> b!1507043 (and (bvsge (index!53104 lt!654264) #b00000000000000000000000000000000) (bvslt (index!53104 lt!654264) (size!49036 a!2804)))))

(declare-fun res!1027422 () Bool)

(assert (=> b!1507043 (= res!1027422 (= (select (arr!48485 a!2804) (index!53104 lt!654264)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507043 (=> res!1027422 e!842110)))

(declare-fun b!1507044 () Bool)

(assert (=> b!1507044 (= e!842111 (bvsge (x!134864 lt!654264) #b01111111111111111111111111111110))))

(declare-fun b!1507045 () Bool)

(assert (=> b!1507045 (= e!842111 e!842108)))

(declare-fun res!1027420 () Bool)

(assert (=> b!1507045 (= res!1027420 (and ((_ is Intermediate!12677) lt!654264) (not (undefined!13489 lt!654264)) (bvslt (x!134864 lt!654264) #b01111111111111111111111111111110) (bvsge (x!134864 lt!654264) #b00000000000000000000000000000000) (bvsge (x!134864 lt!654264) x!534)))))

(assert (=> b!1507045 (=> (not res!1027420) (not e!842108))))

(assert (= (and d!158215 c!139347) b!1507038))

(assert (= (and d!158215 (not c!139347)) b!1507037))

(assert (= (and b!1507037 c!139349) b!1507039))

(assert (= (and b!1507037 (not c!139349)) b!1507040))

(assert (= (and d!158215 c!139348) b!1507044))

(assert (= (and d!158215 (not c!139348)) b!1507045))

(assert (= (and b!1507045 res!1027420) b!1507041))

(assert (= (and b!1507041 (not res!1027421)) b!1507043))

(assert (= (and b!1507043 (not res!1027422)) b!1507042))

(declare-fun m!1389957 () Bool)

(assert (=> b!1507043 m!1389957))

(declare-fun m!1389959 () Bool)

(assert (=> b!1507040 m!1389959))

(assert (=> b!1507040 m!1389959))

(assert (=> b!1507040 m!1389919))

(declare-fun m!1389961 () Bool)

(assert (=> b!1507040 m!1389961))

(declare-fun m!1389963 () Bool)

(assert (=> d!158215 m!1389963))

(assert (=> d!158215 m!1389923))

(assert (=> b!1507041 m!1389957))

(assert (=> b!1507042 m!1389957))

(assert (=> b!1506987 d!158215))

(declare-fun d!158225 () Bool)

(assert (=> d!158225 (= (validKeyInArray!0 (select (arr!48485 a!2804) j!70)) (and (not (= (select (arr!48485 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48485 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506986 d!158225))

(declare-fun d!158227 () Bool)

(assert (=> d!158227 (= (validKeyInArray!0 (select (arr!48485 a!2804) i!961)) (and (not (= (select (arr!48485 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48485 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506990 d!158227))

(declare-fun b!1507046 () Bool)

(declare-fun e!842114 () SeekEntryResult!12677)

(declare-fun e!842112 () SeekEntryResult!12677)

(assert (=> b!1507046 (= e!842114 e!842112)))

(declare-fun lt!654267 () (_ BitVec 64))

(declare-fun c!139352 () Bool)

(assert (=> b!1507046 (= c!139352 (or (= lt!654267 (select (arr!48485 a!2804) j!70)) (= (bvadd lt!654267 lt!654267) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507047 () Bool)

(assert (=> b!1507047 (= e!842114 (Intermediate!12677 true (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!158229 () Bool)

(declare-fun e!842116 () Bool)

(assert (=> d!158229 e!842116))

(declare-fun c!139351 () Bool)

(declare-fun lt!654266 () SeekEntryResult!12677)

(assert (=> d!158229 (= c!139351 (and ((_ is Intermediate!12677) lt!654266) (undefined!13489 lt!654266)))))

(assert (=> d!158229 (= lt!654266 e!842114)))

(declare-fun c!139350 () Bool)

(assert (=> d!158229 (= c!139350 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158229 (= lt!654267 (select (arr!48485 a!2804) (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512)))))

(assert (=> d!158229 (validMask!0 mask!2512)))

(assert (=> d!158229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512) (select (arr!48485 a!2804) j!70) a!2804 mask!2512) lt!654266)))

(declare-fun b!1507048 () Bool)

(assert (=> b!1507048 (= e!842112 (Intermediate!12677 false (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1507049 () Bool)

(assert (=> b!1507049 (= e!842112 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48485 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507050 () Bool)

(assert (=> b!1507050 (and (bvsge (index!53104 lt!654266) #b00000000000000000000000000000000) (bvslt (index!53104 lt!654266) (size!49036 a!2804)))))

(declare-fun res!1027424 () Bool)

(assert (=> b!1507050 (= res!1027424 (= (select (arr!48485 a!2804) (index!53104 lt!654266)) (select (arr!48485 a!2804) j!70)))))

(declare-fun e!842115 () Bool)

(assert (=> b!1507050 (=> res!1027424 e!842115)))

(declare-fun e!842113 () Bool)

(assert (=> b!1507050 (= e!842113 e!842115)))

(declare-fun b!1507051 () Bool)

(assert (=> b!1507051 (and (bvsge (index!53104 lt!654266) #b00000000000000000000000000000000) (bvslt (index!53104 lt!654266) (size!49036 a!2804)))))

(assert (=> b!1507051 (= e!842115 (= (select (arr!48485 a!2804) (index!53104 lt!654266)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507052 () Bool)

(assert (=> b!1507052 (and (bvsge (index!53104 lt!654266) #b00000000000000000000000000000000) (bvslt (index!53104 lt!654266) (size!49036 a!2804)))))

(declare-fun res!1027425 () Bool)

(assert (=> b!1507052 (= res!1027425 (= (select (arr!48485 a!2804) (index!53104 lt!654266)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507052 (=> res!1027425 e!842115)))

(declare-fun b!1507053 () Bool)

(assert (=> b!1507053 (= e!842116 (bvsge (x!134864 lt!654266) #b01111111111111111111111111111110))))

(declare-fun b!1507054 () Bool)

(assert (=> b!1507054 (= e!842116 e!842113)))

(declare-fun res!1027423 () Bool)

(assert (=> b!1507054 (= res!1027423 (and ((_ is Intermediate!12677) lt!654266) (not (undefined!13489 lt!654266)) (bvslt (x!134864 lt!654266) #b01111111111111111111111111111110) (bvsge (x!134864 lt!654266) #b00000000000000000000000000000000) (bvsge (x!134864 lt!654266) #b00000000000000000000000000000000)))))

(assert (=> b!1507054 (=> (not res!1027423) (not e!842113))))

(assert (= (and d!158229 c!139350) b!1507047))

(assert (= (and d!158229 (not c!139350)) b!1507046))

(assert (= (and b!1507046 c!139352) b!1507048))

(assert (= (and b!1507046 (not c!139352)) b!1507049))

(assert (= (and d!158229 c!139351) b!1507053))

(assert (= (and d!158229 (not c!139351)) b!1507054))

(assert (= (and b!1507054 res!1027423) b!1507050))

(assert (= (and b!1507050 (not res!1027424)) b!1507052))

(assert (= (and b!1507052 (not res!1027425)) b!1507051))

(declare-fun m!1389965 () Bool)

(assert (=> b!1507052 m!1389965))

(assert (=> b!1507049 m!1389929))

(declare-fun m!1389967 () Bool)

(assert (=> b!1507049 m!1389967))

(assert (=> b!1507049 m!1389967))

(assert (=> b!1507049 m!1389919))

(declare-fun m!1389969 () Bool)

(assert (=> b!1507049 m!1389969))

(assert (=> d!158229 m!1389929))

(declare-fun m!1389971 () Bool)

(assert (=> d!158229 m!1389971))

(assert (=> d!158229 m!1389923))

(assert (=> b!1507050 m!1389965))

(assert (=> b!1507051 m!1389965))

(assert (=> b!1506985 d!158229))

(declare-fun d!158231 () Bool)

(declare-fun lt!654281 () (_ BitVec 32))

(declare-fun lt!654280 () (_ BitVec 32))

(assert (=> d!158231 (= lt!654281 (bvmul (bvxor lt!654280 (bvlshr lt!654280 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158231 (= lt!654280 ((_ extract 31 0) (bvand (bvxor (select (arr!48485 a!2804) j!70) (bvlshr (select (arr!48485 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158231 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1027426 (let ((h!36547 ((_ extract 31 0) (bvand (bvxor (select (arr!48485 a!2804) j!70) (bvlshr (select (arr!48485 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134867 (bvmul (bvxor h!36547 (bvlshr h!36547 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134867 (bvlshr x!134867 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1027426 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1027426 #b00000000000000000000000000000000))))))

(assert (=> d!158231 (= (toIndex!0 (select (arr!48485 a!2804) j!70) mask!2512) (bvand (bvxor lt!654281 (bvlshr lt!654281 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1506985 d!158231))

(declare-fun b!1507119 () Bool)

(declare-fun e!842157 () Bool)

(declare-fun contains!9976 (List!35148 (_ BitVec 64)) Bool)

(assert (=> b!1507119 (= e!842157 (contains!9976 Nil!35145 (select (arr!48485 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507120 () Bool)

(declare-fun e!842155 () Bool)

(declare-fun call!68241 () Bool)

(assert (=> b!1507120 (= e!842155 call!68241)))

(declare-fun b!1507121 () Bool)

(declare-fun e!842158 () Bool)

(declare-fun e!842156 () Bool)

(assert (=> b!1507121 (= e!842158 e!842156)))

(declare-fun res!1027454 () Bool)

(assert (=> b!1507121 (=> (not res!1027454) (not e!842156))))

(assert (=> b!1507121 (= res!1027454 (not e!842157))))

(declare-fun res!1027453 () Bool)

(assert (=> b!1507121 (=> (not res!1027453) (not e!842157))))

(assert (=> b!1507121 (= res!1027453 (validKeyInArray!0 (select (arr!48485 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507122 () Bool)

(assert (=> b!1507122 (= e!842155 call!68241)))

(declare-fun b!1507123 () Bool)

(assert (=> b!1507123 (= e!842156 e!842155)))

(declare-fun c!139373 () Bool)

(assert (=> b!1507123 (= c!139373 (validKeyInArray!0 (select (arr!48485 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158233 () Bool)

(declare-fun res!1027452 () Bool)

(assert (=> d!158233 (=> res!1027452 e!842158)))

(assert (=> d!158233 (= res!1027452 (bvsge #b00000000000000000000000000000000 (size!49036 a!2804)))))

(assert (=> d!158233 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35145) e!842158)))

(declare-fun bm!68238 () Bool)

(assert (=> bm!68238 (= call!68241 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139373 (Cons!35144 (select (arr!48485 a!2804) #b00000000000000000000000000000000) Nil!35145) Nil!35145)))))

(assert (= (and d!158233 (not res!1027452)) b!1507121))

(assert (= (and b!1507121 res!1027453) b!1507119))

(assert (= (and b!1507121 res!1027454) b!1507123))

(assert (= (and b!1507123 c!139373) b!1507122))

(assert (= (and b!1507123 (not c!139373)) b!1507120))

(assert (= (or b!1507122 b!1507120) bm!68238))

(declare-fun m!1389989 () Bool)

(assert (=> b!1507119 m!1389989))

(assert (=> b!1507119 m!1389989))

(declare-fun m!1389991 () Bool)

(assert (=> b!1507119 m!1389991))

(assert (=> b!1507121 m!1389989))

(assert (=> b!1507121 m!1389989))

(declare-fun m!1389993 () Bool)

(assert (=> b!1507121 m!1389993))

(assert (=> b!1507123 m!1389989))

(assert (=> b!1507123 m!1389989))

(assert (=> b!1507123 m!1389993))

(assert (=> bm!68238 m!1389989))

(declare-fun m!1389995 () Bool)

(assert (=> bm!68238 m!1389995))

(assert (=> b!1506984 d!158233))

(declare-fun b!1507153 () Bool)

(declare-fun e!842179 () Bool)

(declare-fun call!68247 () Bool)

(assert (=> b!1507153 (= e!842179 call!68247)))

(declare-fun bm!68244 () Bool)

(assert (=> bm!68244 (= call!68247 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1507154 () Bool)

(declare-fun e!842181 () Bool)

(assert (=> b!1507154 (= e!842181 call!68247)))

(declare-fun d!158239 () Bool)

(declare-fun res!1027469 () Bool)

(declare-fun e!842180 () Bool)

(assert (=> d!158239 (=> res!1027469 e!842180)))

(assert (=> d!158239 (= res!1027469 (bvsge #b00000000000000000000000000000000 (size!49036 a!2804)))))

(assert (=> d!158239 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842180)))

(declare-fun b!1507155 () Bool)

(assert (=> b!1507155 (= e!842179 e!842181)))

(declare-fun lt!654309 () (_ BitVec 64))

(assert (=> b!1507155 (= lt!654309 (select (arr!48485 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50272 0))(
  ( (Unit!50273) )
))
(declare-fun lt!654311 () Unit!50272)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100493 (_ BitVec 64) (_ BitVec 32)) Unit!50272)

(assert (=> b!1507155 (= lt!654311 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654309 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1507155 (arrayContainsKey!0 a!2804 lt!654309 #b00000000000000000000000000000000)))

(declare-fun lt!654310 () Unit!50272)

(assert (=> b!1507155 (= lt!654310 lt!654311)))

(declare-fun res!1027468 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100493 (_ BitVec 32)) SeekEntryResult!12677)

(assert (=> b!1507155 (= res!1027468 (= (seekEntryOrOpen!0 (select (arr!48485 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12677 #b00000000000000000000000000000000)))))

(assert (=> b!1507155 (=> (not res!1027468) (not e!842181))))

(declare-fun b!1507156 () Bool)

(assert (=> b!1507156 (= e!842180 e!842179)))

(declare-fun c!139382 () Bool)

(assert (=> b!1507156 (= c!139382 (validKeyInArray!0 (select (arr!48485 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158239 (not res!1027469)) b!1507156))

(assert (= (and b!1507156 c!139382) b!1507155))

(assert (= (and b!1507156 (not c!139382)) b!1507153))

(assert (= (and b!1507155 res!1027468) b!1507154))

(assert (= (or b!1507154 b!1507153) bm!68244))

(declare-fun m!1390017 () Bool)

(assert (=> bm!68244 m!1390017))

(assert (=> b!1507155 m!1389989))

(declare-fun m!1390019 () Bool)

(assert (=> b!1507155 m!1390019))

(declare-fun m!1390021 () Bool)

(assert (=> b!1507155 m!1390021))

(assert (=> b!1507155 m!1389989))

(declare-fun m!1390023 () Bool)

(assert (=> b!1507155 m!1390023))

(assert (=> b!1507156 m!1389989))

(assert (=> b!1507156 m!1389989))

(assert (=> b!1507156 m!1389993))

(assert (=> b!1506989 d!158239))

(declare-fun d!158247 () Bool)

(assert (=> d!158247 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128568 d!158247))

(declare-fun d!158255 () Bool)

(assert (=> d!158255 (= (array_inv!37430 a!2804) (bvsge (size!49036 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128568 d!158255))

(check-sat (not b!1507049) (not b!1507156) (not b!1507123) (not d!158215) (not b!1507121) (not b!1507155) (not d!158229) (not bm!68244) (not b!1507040) (not bm!68238) (not b!1507119))
(check-sat)
