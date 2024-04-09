; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129692 () Bool)

(assert start!129692)

(declare-fun b!1522123 () Bool)

(declare-fun e!848741 () Bool)

(declare-fun e!848739 () Bool)

(assert (=> b!1522123 (= e!848741 e!848739)))

(declare-fun res!1041490 () Bool)

(assert (=> b!1522123 (=> (not res!1041490) (not e!848739))))

(declare-datatypes ((SeekEntryResult!13061 0))(
  ( (MissingZero!13061 (index!54638 (_ BitVec 32))) (Found!13061 (index!54639 (_ BitVec 32))) (Intermediate!13061 (undefined!13873 Bool) (index!54640 (_ BitVec 32)) (x!136332 (_ BitVec 32))) (Undefined!13061) (MissingVacant!13061 (index!54641 (_ BitVec 32))) )
))
(declare-fun lt!659459 () SeekEntryResult!13061)

(declare-fun lt!659460 () SeekEntryResult!13061)

(assert (=> b!1522123 (= res!1041490 (= lt!659459 lt!659460))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522123 (= lt!659460 (Intermediate!13061 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101294 0))(
  ( (array!101295 (arr!48875 (Array (_ BitVec 32) (_ BitVec 64))) (size!49426 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101294)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101294 (_ BitVec 32)) SeekEntryResult!13061)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522123 (= lt!659459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) (select (arr!48875 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1041484 () Bool)

(assert (=> start!129692 (=> (not res!1041484) (not e!848741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129692 (= res!1041484 (validMask!0 mask!2512))))

(assert (=> start!129692 e!848741))

(assert (=> start!129692 true))

(declare-fun array_inv!37820 (array!101294) Bool)

(assert (=> start!129692 (array_inv!37820 a!2804)))

(declare-fun b!1522124 () Bool)

(declare-fun res!1041485 () Bool)

(assert (=> b!1522124 (=> (not res!1041485) (not e!848739))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522124 (= res!1041485 (= lt!659459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804)) mask!2512)))))

(declare-fun b!1522125 () Bool)

(declare-fun res!1041491 () Bool)

(assert (=> b!1522125 (=> (not res!1041491) (not e!848741))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522125 (= res!1041491 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49426 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49426 a!2804))))))

(declare-fun b!1522126 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101294 (_ BitVec 32)) SeekEntryResult!13061)

(assert (=> b!1522126 (= e!848739 (not (= (seekEntry!0 (select (arr!48875 a!2804) j!70) a!2804 mask!2512) (Found!13061 j!70))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101294 (_ BitVec 32)) Bool)

(assert (=> b!1522126 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50862 0))(
  ( (Unit!50863) )
))
(declare-fun lt!659461 () Unit!50862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50862)

(assert (=> b!1522126 (= lt!659461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522127 () Bool)

(declare-fun res!1041483 () Bool)

(assert (=> b!1522127 (=> (not res!1041483) (not e!848741))))

(assert (=> b!1522127 (= res!1041483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522128 () Bool)

(declare-fun res!1041492 () Bool)

(assert (=> b!1522128 (=> (not res!1041492) (not e!848741))))

(declare-datatypes ((List!35538 0))(
  ( (Nil!35535) (Cons!35534 (h!36956 (_ BitVec 64)) (t!50239 List!35538)) )
))
(declare-fun arrayNoDuplicates!0 (array!101294 (_ BitVec 32) List!35538) Bool)

(assert (=> b!1522128 (= res!1041492 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35535))))

(declare-fun b!1522129 () Bool)

(declare-fun res!1041486 () Bool)

(assert (=> b!1522129 (=> (not res!1041486) (not e!848741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522129 (= res!1041486 (validKeyInArray!0 (select (arr!48875 a!2804) j!70)))))

(declare-fun b!1522130 () Bool)

(declare-fun res!1041489 () Bool)

(assert (=> b!1522130 (=> (not res!1041489) (not e!848739))))

(assert (=> b!1522130 (= res!1041489 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48875 a!2804) j!70) a!2804 mask!2512) lt!659460))))

(declare-fun b!1522131 () Bool)

(declare-fun res!1041488 () Bool)

(assert (=> b!1522131 (=> (not res!1041488) (not e!848741))))

(assert (=> b!1522131 (= res!1041488 (and (= (size!49426 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49426 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49426 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522132 () Bool)

(declare-fun res!1041487 () Bool)

(assert (=> b!1522132 (=> (not res!1041487) (not e!848741))))

(assert (=> b!1522132 (= res!1041487 (validKeyInArray!0 (select (arr!48875 a!2804) i!961)))))

(assert (= (and start!129692 res!1041484) b!1522131))

(assert (= (and b!1522131 res!1041488) b!1522132))

(assert (= (and b!1522132 res!1041487) b!1522129))

(assert (= (and b!1522129 res!1041486) b!1522127))

(assert (= (and b!1522127 res!1041483) b!1522128))

(assert (= (and b!1522128 res!1041492) b!1522125))

(assert (= (and b!1522125 res!1041491) b!1522123))

(assert (= (and b!1522123 res!1041490) b!1522130))

(assert (= (and b!1522130 res!1041489) b!1522124))

(assert (= (and b!1522124 res!1041485) b!1522126))

(declare-fun m!1405319 () Bool)

(assert (=> b!1522132 m!1405319))

(assert (=> b!1522132 m!1405319))

(declare-fun m!1405321 () Bool)

(assert (=> b!1522132 m!1405321))

(declare-fun m!1405323 () Bool)

(assert (=> b!1522127 m!1405323))

(declare-fun m!1405325 () Bool)

(assert (=> b!1522130 m!1405325))

(assert (=> b!1522130 m!1405325))

(declare-fun m!1405327 () Bool)

(assert (=> b!1522130 m!1405327))

(assert (=> b!1522126 m!1405325))

(assert (=> b!1522126 m!1405325))

(declare-fun m!1405329 () Bool)

(assert (=> b!1522126 m!1405329))

(declare-fun m!1405331 () Bool)

(assert (=> b!1522126 m!1405331))

(declare-fun m!1405333 () Bool)

(assert (=> b!1522126 m!1405333))

(declare-fun m!1405335 () Bool)

(assert (=> b!1522124 m!1405335))

(declare-fun m!1405337 () Bool)

(assert (=> b!1522124 m!1405337))

(assert (=> b!1522124 m!1405337))

(declare-fun m!1405339 () Bool)

(assert (=> b!1522124 m!1405339))

(assert (=> b!1522124 m!1405339))

(assert (=> b!1522124 m!1405337))

(declare-fun m!1405341 () Bool)

(assert (=> b!1522124 m!1405341))

(assert (=> b!1522129 m!1405325))

(assert (=> b!1522129 m!1405325))

(declare-fun m!1405343 () Bool)

(assert (=> b!1522129 m!1405343))

(declare-fun m!1405345 () Bool)

(assert (=> b!1522128 m!1405345))

(declare-fun m!1405347 () Bool)

(assert (=> start!129692 m!1405347))

(declare-fun m!1405349 () Bool)

(assert (=> start!129692 m!1405349))

(assert (=> b!1522123 m!1405325))

(assert (=> b!1522123 m!1405325))

(declare-fun m!1405351 () Bool)

(assert (=> b!1522123 m!1405351))

(assert (=> b!1522123 m!1405351))

(assert (=> b!1522123 m!1405325))

(declare-fun m!1405353 () Bool)

(assert (=> b!1522123 m!1405353))

(check-sat (not start!129692) (not b!1522124) (not b!1522128) (not b!1522132) (not b!1522129) (not b!1522126) (not b!1522127) (not b!1522123) (not b!1522130))
(check-sat)
(get-model)

(declare-fun b!1522191 () Bool)

(declare-fun e!848772 () SeekEntryResult!13061)

(declare-fun e!848769 () SeekEntryResult!13061)

(assert (=> b!1522191 (= e!848772 e!848769)))

(declare-fun lt!659476 () (_ BitVec 64))

(declare-fun c!139878 () Bool)

(assert (=> b!1522191 (= c!139878 (or (= lt!659476 (select (arr!48875 a!2804) j!70)) (= (bvadd lt!659476 lt!659476) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522192 () Bool)

(declare-fun lt!659475 () SeekEntryResult!13061)

(assert (=> b!1522192 (and (bvsge (index!54640 lt!659475) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659475) (size!49426 a!2804)))))

(declare-fun e!848773 () Bool)

(assert (=> b!1522192 (= e!848773 (= (select (arr!48875 a!2804) (index!54640 lt!659475)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1522193 () Bool)

(assert (=> b!1522193 (= e!848769 (Intermediate!13061 false index!487 x!534))))

(declare-fun b!1522194 () Bool)

(assert (=> b!1522194 (and (bvsge (index!54640 lt!659475) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659475) (size!49426 a!2804)))))

(declare-fun res!1041537 () Bool)

(assert (=> b!1522194 (= res!1041537 (= (select (arr!48875 a!2804) (index!54640 lt!659475)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522194 (=> res!1041537 e!848773)))

(declare-fun d!158987 () Bool)

(declare-fun e!848770 () Bool)

(assert (=> d!158987 e!848770))

(declare-fun c!139877 () Bool)

(get-info :version)

(assert (=> d!158987 (= c!139877 (and ((_ is Intermediate!13061) lt!659475) (undefined!13873 lt!659475)))))

(assert (=> d!158987 (= lt!659475 e!848772)))

(declare-fun c!139879 () Bool)

(assert (=> d!158987 (= c!139879 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158987 (= lt!659476 (select (arr!48875 a!2804) index!487))))

(assert (=> d!158987 (validMask!0 mask!2512)))

(assert (=> d!158987 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48875 a!2804) j!70) a!2804 mask!2512) lt!659475)))

(declare-fun b!1522195 () Bool)

(assert (=> b!1522195 (and (bvsge (index!54640 lt!659475) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659475) (size!49426 a!2804)))))

(declare-fun res!1041535 () Bool)

(assert (=> b!1522195 (= res!1041535 (= (select (arr!48875 a!2804) (index!54640 lt!659475)) (select (arr!48875 a!2804) j!70)))))

(assert (=> b!1522195 (=> res!1041535 e!848773)))

(declare-fun e!848771 () Bool)

(assert (=> b!1522195 (= e!848771 e!848773)))

(declare-fun b!1522196 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522196 (= e!848769 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48875 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522197 () Bool)

(assert (=> b!1522197 (= e!848770 (bvsge (x!136332 lt!659475) #b01111111111111111111111111111110))))

(declare-fun b!1522198 () Bool)

(assert (=> b!1522198 (= e!848772 (Intermediate!13061 true index!487 x!534))))

(declare-fun b!1522199 () Bool)

(assert (=> b!1522199 (= e!848770 e!848771)))

(declare-fun res!1041536 () Bool)

(assert (=> b!1522199 (= res!1041536 (and ((_ is Intermediate!13061) lt!659475) (not (undefined!13873 lt!659475)) (bvslt (x!136332 lt!659475) #b01111111111111111111111111111110) (bvsge (x!136332 lt!659475) #b00000000000000000000000000000000) (bvsge (x!136332 lt!659475) x!534)))))

(assert (=> b!1522199 (=> (not res!1041536) (not e!848771))))

(assert (= (and d!158987 c!139879) b!1522198))

(assert (= (and d!158987 (not c!139879)) b!1522191))

(assert (= (and b!1522191 c!139878) b!1522193))

(assert (= (and b!1522191 (not c!139878)) b!1522196))

(assert (= (and d!158987 c!139877) b!1522197))

(assert (= (and d!158987 (not c!139877)) b!1522199))

(assert (= (and b!1522199 res!1041536) b!1522195))

(assert (= (and b!1522195 (not res!1041535)) b!1522194))

(assert (= (and b!1522194 (not res!1041537)) b!1522192))

(declare-fun m!1405391 () Bool)

(assert (=> b!1522195 m!1405391))

(assert (=> b!1522192 m!1405391))

(declare-fun m!1405393 () Bool)

(assert (=> d!158987 m!1405393))

(assert (=> d!158987 m!1405347))

(assert (=> b!1522194 m!1405391))

(declare-fun m!1405395 () Bool)

(assert (=> b!1522196 m!1405395))

(assert (=> b!1522196 m!1405395))

(assert (=> b!1522196 m!1405325))

(declare-fun m!1405397 () Bool)

(assert (=> b!1522196 m!1405397))

(assert (=> b!1522130 d!158987))

(declare-fun b!1522200 () Bool)

(declare-fun e!848777 () SeekEntryResult!13061)

(declare-fun e!848774 () SeekEntryResult!13061)

(assert (=> b!1522200 (= e!848777 e!848774)))

(declare-fun c!139881 () Bool)

(declare-fun lt!659478 () (_ BitVec 64))

(assert (=> b!1522200 (= c!139881 (or (= lt!659478 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659478 lt!659478) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522201 () Bool)

(declare-fun lt!659477 () SeekEntryResult!13061)

(assert (=> b!1522201 (and (bvsge (index!54640 lt!659477) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659477) (size!49426 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804)))))))

(declare-fun e!848778 () Bool)

(assert (=> b!1522201 (= e!848778 (= (select (arr!48875 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804))) (index!54640 lt!659477)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1522202 () Bool)

(assert (=> b!1522202 (= e!848774 (Intermediate!13061 false (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522203 () Bool)

(assert (=> b!1522203 (and (bvsge (index!54640 lt!659477) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659477) (size!49426 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804)))))))

(declare-fun res!1041540 () Bool)

(assert (=> b!1522203 (= res!1041540 (= (select (arr!48875 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804))) (index!54640 lt!659477)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522203 (=> res!1041540 e!848778)))

(declare-fun d!158995 () Bool)

(declare-fun e!848775 () Bool)

(assert (=> d!158995 e!848775))

(declare-fun c!139880 () Bool)

(assert (=> d!158995 (= c!139880 (and ((_ is Intermediate!13061) lt!659477) (undefined!13873 lt!659477)))))

(assert (=> d!158995 (= lt!659477 e!848777)))

(declare-fun c!139882 () Bool)

(assert (=> d!158995 (= c!139882 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158995 (= lt!659478 (select (arr!48875 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804))) (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158995 (validMask!0 mask!2512)))

(assert (=> d!158995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804)) mask!2512) lt!659477)))

(declare-fun b!1522204 () Bool)

(assert (=> b!1522204 (and (bvsge (index!54640 lt!659477) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659477) (size!49426 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804)))))))

(declare-fun res!1041538 () Bool)

(assert (=> b!1522204 (= res!1041538 (= (select (arr!48875 (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804))) (index!54640 lt!659477)) (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1522204 (=> res!1041538 e!848778)))

(declare-fun e!848776 () Bool)

(assert (=> b!1522204 (= e!848776 e!848778)))

(declare-fun b!1522205 () Bool)

(assert (=> b!1522205 (= e!848774 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101295 (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49426 a!2804)) mask!2512))))

(declare-fun b!1522206 () Bool)

(assert (=> b!1522206 (= e!848775 (bvsge (x!136332 lt!659477) #b01111111111111111111111111111110))))

(declare-fun b!1522207 () Bool)

(assert (=> b!1522207 (= e!848777 (Intermediate!13061 true (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522208 () Bool)

(assert (=> b!1522208 (= e!848775 e!848776)))

(declare-fun res!1041539 () Bool)

(assert (=> b!1522208 (= res!1041539 (and ((_ is Intermediate!13061) lt!659477) (not (undefined!13873 lt!659477)) (bvslt (x!136332 lt!659477) #b01111111111111111111111111111110) (bvsge (x!136332 lt!659477) #b00000000000000000000000000000000) (bvsge (x!136332 lt!659477) #b00000000000000000000000000000000)))))

(assert (=> b!1522208 (=> (not res!1041539) (not e!848776))))

(assert (= (and d!158995 c!139882) b!1522207))

(assert (= (and d!158995 (not c!139882)) b!1522200))

(assert (= (and b!1522200 c!139881) b!1522202))

(assert (= (and b!1522200 (not c!139881)) b!1522205))

(assert (= (and d!158995 c!139880) b!1522206))

(assert (= (and d!158995 (not c!139880)) b!1522208))

(assert (= (and b!1522208 res!1041539) b!1522204))

(assert (= (and b!1522204 (not res!1041538)) b!1522203))

(assert (= (and b!1522203 (not res!1041540)) b!1522201))

(declare-fun m!1405405 () Bool)

(assert (=> b!1522204 m!1405405))

(assert (=> b!1522201 m!1405405))

(assert (=> d!158995 m!1405339))

(declare-fun m!1405409 () Bool)

(assert (=> d!158995 m!1405409))

(assert (=> d!158995 m!1405347))

(assert (=> b!1522203 m!1405405))

(assert (=> b!1522205 m!1405339))

(declare-fun m!1405411 () Bool)

(assert (=> b!1522205 m!1405411))

(assert (=> b!1522205 m!1405411))

(assert (=> b!1522205 m!1405337))

(declare-fun m!1405413 () Bool)

(assert (=> b!1522205 m!1405413))

(assert (=> b!1522124 d!158995))

(declare-fun d!158999 () Bool)

(declare-fun lt!659484 () (_ BitVec 32))

(declare-fun lt!659483 () (_ BitVec 32))

(assert (=> d!158999 (= lt!659484 (bvmul (bvxor lt!659483 (bvlshr lt!659483 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158999 (= lt!659483 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158999 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1041544 (let ((h!36958 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136335 (bvmul (bvxor h!36958 (bvlshr h!36958 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136335 (bvlshr x!136335 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1041544 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1041544 #b00000000000000000000000000000000))))))

(assert (=> d!158999 (= (toIndex!0 (select (store (arr!48875 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659484 (bvlshr lt!659484 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1522124 d!158999))

(declare-fun b!1522244 () Bool)

(declare-fun e!848800 () SeekEntryResult!13061)

(declare-fun lt!659500 () SeekEntryResult!13061)

(assert (=> b!1522244 (= e!848800 (Found!13061 (index!54640 lt!659500)))))

(declare-fun b!1522245 () Bool)

(declare-fun e!848799 () SeekEntryResult!13061)

(assert (=> b!1522245 (= e!848799 Undefined!13061)))

(declare-fun b!1522246 () Bool)

(declare-fun e!848801 () SeekEntryResult!13061)

(assert (=> b!1522246 (= e!848801 (MissingZero!13061 (index!54640 lt!659500)))))

(declare-fun b!1522247 () Bool)

(declare-fun c!139896 () Bool)

(declare-fun lt!659498 () (_ BitVec 64))

(assert (=> b!1522247 (= c!139896 (= lt!659498 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522247 (= e!848800 e!848801)))

(declare-fun b!1522248 () Bool)

(declare-fun lt!659497 () SeekEntryResult!13061)

(assert (=> b!1522248 (= e!848801 (ite ((_ is MissingVacant!13061) lt!659497) (MissingZero!13061 (index!54641 lt!659497)) lt!659497))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101294 (_ BitVec 32)) SeekEntryResult!13061)

(assert (=> b!1522248 (= lt!659497 (seekKeyOrZeroReturnVacant!0 (x!136332 lt!659500) (index!54640 lt!659500) (index!54640 lt!659500) (select (arr!48875 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159003 () Bool)

(declare-fun lt!659499 () SeekEntryResult!13061)

(assert (=> d!159003 (and (or ((_ is MissingVacant!13061) lt!659499) (not ((_ is Found!13061) lt!659499)) (and (bvsge (index!54639 lt!659499) #b00000000000000000000000000000000) (bvslt (index!54639 lt!659499) (size!49426 a!2804)))) (not ((_ is MissingVacant!13061) lt!659499)) (or (not ((_ is Found!13061) lt!659499)) (= (select (arr!48875 a!2804) (index!54639 lt!659499)) (select (arr!48875 a!2804) j!70))))))

(assert (=> d!159003 (= lt!659499 e!848799)))

(declare-fun c!139898 () Bool)

(assert (=> d!159003 (= c!139898 (and ((_ is Intermediate!13061) lt!659500) (undefined!13873 lt!659500)))))

(assert (=> d!159003 (= lt!659500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) (select (arr!48875 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159003 (validMask!0 mask!2512)))

(assert (=> d!159003 (= (seekEntry!0 (select (arr!48875 a!2804) j!70) a!2804 mask!2512) lt!659499)))

(declare-fun b!1522249 () Bool)

(assert (=> b!1522249 (= e!848799 e!848800)))

(assert (=> b!1522249 (= lt!659498 (select (arr!48875 a!2804) (index!54640 lt!659500)))))

(declare-fun c!139897 () Bool)

(assert (=> b!1522249 (= c!139897 (= lt!659498 (select (arr!48875 a!2804) j!70)))))

(assert (= (and d!159003 c!139898) b!1522245))

(assert (= (and d!159003 (not c!139898)) b!1522249))

(assert (= (and b!1522249 c!139897) b!1522244))

(assert (= (and b!1522249 (not c!139897)) b!1522247))

(assert (= (and b!1522247 c!139896) b!1522246))

(assert (= (and b!1522247 (not c!139896)) b!1522248))

(assert (=> b!1522248 m!1405325))

(declare-fun m!1405415 () Bool)

(assert (=> b!1522248 m!1405415))

(declare-fun m!1405417 () Bool)

(assert (=> d!159003 m!1405417))

(assert (=> d!159003 m!1405325))

(assert (=> d!159003 m!1405351))

(assert (=> d!159003 m!1405351))

(assert (=> d!159003 m!1405325))

(assert (=> d!159003 m!1405353))

(assert (=> d!159003 m!1405347))

(declare-fun m!1405419 () Bool)

(assert (=> b!1522249 m!1405419))

(assert (=> b!1522126 d!159003))

(declare-fun call!68382 () Bool)

(declare-fun bm!68379 () Bool)

(assert (=> bm!68379 (= call!68382 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159007 () Bool)

(declare-fun res!1041573 () Bool)

(declare-fun e!848833 () Bool)

(assert (=> d!159007 (=> res!1041573 e!848833)))

(assert (=> d!159007 (= res!1041573 (bvsge j!70 (size!49426 a!2804)))))

(assert (=> d!159007 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848833)))

(declare-fun b!1522303 () Bool)

(declare-fun e!848835 () Bool)

(declare-fun e!848834 () Bool)

(assert (=> b!1522303 (= e!848835 e!848834)))

(declare-fun lt!659524 () (_ BitVec 64))

(assert (=> b!1522303 (= lt!659524 (select (arr!48875 a!2804) j!70))))

(declare-fun lt!659523 () Unit!50862)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101294 (_ BitVec 64) (_ BitVec 32)) Unit!50862)

(assert (=> b!1522303 (= lt!659523 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659524 j!70))))

(declare-fun arrayContainsKey!0 (array!101294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1522303 (arrayContainsKey!0 a!2804 lt!659524 #b00000000000000000000000000000000)))

(declare-fun lt!659525 () Unit!50862)

(assert (=> b!1522303 (= lt!659525 lt!659523)))

(declare-fun res!1041572 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101294 (_ BitVec 32)) SeekEntryResult!13061)

(assert (=> b!1522303 (= res!1041572 (= (seekEntryOrOpen!0 (select (arr!48875 a!2804) j!70) a!2804 mask!2512) (Found!13061 j!70)))))

(assert (=> b!1522303 (=> (not res!1041572) (not e!848834))))

(declare-fun b!1522304 () Bool)

(assert (=> b!1522304 (= e!848833 e!848835)))

(declare-fun c!139916 () Bool)

(assert (=> b!1522304 (= c!139916 (validKeyInArray!0 (select (arr!48875 a!2804) j!70)))))

(declare-fun b!1522305 () Bool)

(assert (=> b!1522305 (= e!848835 call!68382)))

(declare-fun b!1522306 () Bool)

(assert (=> b!1522306 (= e!848834 call!68382)))

(assert (= (and d!159007 (not res!1041573)) b!1522304))

(assert (= (and b!1522304 c!139916) b!1522303))

(assert (= (and b!1522304 (not c!139916)) b!1522305))

(assert (= (and b!1522303 res!1041572) b!1522306))

(assert (= (or b!1522306 b!1522305) bm!68379))

(declare-fun m!1405445 () Bool)

(assert (=> bm!68379 m!1405445))

(assert (=> b!1522303 m!1405325))

(declare-fun m!1405447 () Bool)

(assert (=> b!1522303 m!1405447))

(declare-fun m!1405449 () Bool)

(assert (=> b!1522303 m!1405449))

(assert (=> b!1522303 m!1405325))

(declare-fun m!1405451 () Bool)

(assert (=> b!1522303 m!1405451))

(assert (=> b!1522304 m!1405325))

(assert (=> b!1522304 m!1405325))

(assert (=> b!1522304 m!1405343))

(assert (=> b!1522126 d!159007))

(declare-fun d!159021 () Bool)

(assert (=> d!159021 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659538 () Unit!50862)

(declare-fun choose!38 (array!101294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50862)

(assert (=> d!159021 (= lt!659538 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159021 (validMask!0 mask!2512)))

(assert (=> d!159021 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659538)))

(declare-fun bs!43685 () Bool)

(assert (= bs!43685 d!159021))

(assert (=> bs!43685 m!1405331))

(declare-fun m!1405465 () Bool)

(assert (=> bs!43685 m!1405465))

(assert (=> bs!43685 m!1405347))

(assert (=> b!1522126 d!159021))

(declare-fun bm!68380 () Bool)

(declare-fun call!68383 () Bool)

(assert (=> bm!68380 (= call!68383 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159027 () Bool)

(declare-fun res!1041581 () Bool)

(declare-fun e!848846 () Bool)

(assert (=> d!159027 (=> res!1041581 e!848846)))

(assert (=> d!159027 (= res!1041581 (bvsge #b00000000000000000000000000000000 (size!49426 a!2804)))))

(assert (=> d!159027 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848846)))

(declare-fun b!1522325 () Bool)

(declare-fun e!848848 () Bool)

(declare-fun e!848847 () Bool)

(assert (=> b!1522325 (= e!848848 e!848847)))

(declare-fun lt!659540 () (_ BitVec 64))

(assert (=> b!1522325 (= lt!659540 (select (arr!48875 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659539 () Unit!50862)

(assert (=> b!1522325 (= lt!659539 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659540 #b00000000000000000000000000000000))))

(assert (=> b!1522325 (arrayContainsKey!0 a!2804 lt!659540 #b00000000000000000000000000000000)))

(declare-fun lt!659541 () Unit!50862)

(assert (=> b!1522325 (= lt!659541 lt!659539)))

(declare-fun res!1041580 () Bool)

(assert (=> b!1522325 (= res!1041580 (= (seekEntryOrOpen!0 (select (arr!48875 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13061 #b00000000000000000000000000000000)))))

(assert (=> b!1522325 (=> (not res!1041580) (not e!848847))))

(declare-fun b!1522326 () Bool)

(assert (=> b!1522326 (= e!848846 e!848848)))

(declare-fun c!139923 () Bool)

(assert (=> b!1522326 (= c!139923 (validKeyInArray!0 (select (arr!48875 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522327 () Bool)

(assert (=> b!1522327 (= e!848848 call!68383)))

(declare-fun b!1522328 () Bool)

(assert (=> b!1522328 (= e!848847 call!68383)))

(assert (= (and d!159027 (not res!1041581)) b!1522326))

(assert (= (and b!1522326 c!139923) b!1522325))

(assert (= (and b!1522326 (not c!139923)) b!1522327))

(assert (= (and b!1522325 res!1041580) b!1522328))

(assert (= (or b!1522328 b!1522327) bm!68380))

(declare-fun m!1405471 () Bool)

(assert (=> bm!68380 m!1405471))

(declare-fun m!1405473 () Bool)

(assert (=> b!1522325 m!1405473))

(declare-fun m!1405475 () Bool)

(assert (=> b!1522325 m!1405475))

(declare-fun m!1405477 () Bool)

(assert (=> b!1522325 m!1405477))

(assert (=> b!1522325 m!1405473))

(declare-fun m!1405479 () Bool)

(assert (=> b!1522325 m!1405479))

(assert (=> b!1522326 m!1405473))

(assert (=> b!1522326 m!1405473))

(declare-fun m!1405481 () Bool)

(assert (=> b!1522326 m!1405481))

(assert (=> b!1522127 d!159027))

(declare-fun d!159033 () Bool)

(assert (=> d!159033 (= (validKeyInArray!0 (select (arr!48875 a!2804) i!961)) (and (not (= (select (arr!48875 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48875 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522132 d!159033))

(declare-fun d!159035 () Bool)

(assert (=> d!159035 (= (validKeyInArray!0 (select (arr!48875 a!2804) j!70)) (and (not (= (select (arr!48875 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48875 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522129 d!159035))

(declare-fun d!159037 () Bool)

(assert (=> d!159037 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129692 d!159037))

(declare-fun d!159043 () Bool)

(assert (=> d!159043 (= (array_inv!37820 a!2804) (bvsge (size!49426 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129692 d!159043))

(declare-fun b!1522359 () Bool)

(declare-fun e!848870 () SeekEntryResult!13061)

(declare-fun e!848867 () SeekEntryResult!13061)

(assert (=> b!1522359 (= e!848870 e!848867)))

(declare-fun c!139937 () Bool)

(declare-fun lt!659566 () (_ BitVec 64))

(assert (=> b!1522359 (= c!139937 (or (= lt!659566 (select (arr!48875 a!2804) j!70)) (= (bvadd lt!659566 lt!659566) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522360 () Bool)

(declare-fun lt!659565 () SeekEntryResult!13061)

(assert (=> b!1522360 (and (bvsge (index!54640 lt!659565) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659565) (size!49426 a!2804)))))

(declare-fun e!848871 () Bool)

(assert (=> b!1522360 (= e!848871 (= (select (arr!48875 a!2804) (index!54640 lt!659565)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1522361 () Bool)

(assert (=> b!1522361 (= e!848867 (Intermediate!13061 false (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522362 () Bool)

(assert (=> b!1522362 (and (bvsge (index!54640 lt!659565) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659565) (size!49426 a!2804)))))

(declare-fun res!1041590 () Bool)

(assert (=> b!1522362 (= res!1041590 (= (select (arr!48875 a!2804) (index!54640 lt!659565)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522362 (=> res!1041590 e!848871)))

(declare-fun d!159045 () Bool)

(declare-fun e!848868 () Bool)

(assert (=> d!159045 e!848868))

(declare-fun c!139936 () Bool)

(assert (=> d!159045 (= c!139936 (and ((_ is Intermediate!13061) lt!659565) (undefined!13873 lt!659565)))))

(assert (=> d!159045 (= lt!659565 e!848870)))

(declare-fun c!139938 () Bool)

(assert (=> d!159045 (= c!139938 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159045 (= lt!659566 (select (arr!48875 a!2804) (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512)))))

(assert (=> d!159045 (validMask!0 mask!2512)))

(assert (=> d!159045 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) (select (arr!48875 a!2804) j!70) a!2804 mask!2512) lt!659565)))

(declare-fun b!1522363 () Bool)

(assert (=> b!1522363 (and (bvsge (index!54640 lt!659565) #b00000000000000000000000000000000) (bvslt (index!54640 lt!659565) (size!49426 a!2804)))))

(declare-fun res!1041588 () Bool)

(assert (=> b!1522363 (= res!1041588 (= (select (arr!48875 a!2804) (index!54640 lt!659565)) (select (arr!48875 a!2804) j!70)))))

(assert (=> b!1522363 (=> res!1041588 e!848871)))

(declare-fun e!848869 () Bool)

(assert (=> b!1522363 (= e!848869 e!848871)))

(declare-fun b!1522364 () Bool)

(assert (=> b!1522364 (= e!848867 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48875 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522365 () Bool)

(assert (=> b!1522365 (= e!848868 (bvsge (x!136332 lt!659565) #b01111111111111111111111111111110))))

(declare-fun b!1522366 () Bool)

(assert (=> b!1522366 (= e!848870 (Intermediate!13061 true (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522367 () Bool)

(assert (=> b!1522367 (= e!848868 e!848869)))

(declare-fun res!1041589 () Bool)

(assert (=> b!1522367 (= res!1041589 (and ((_ is Intermediate!13061) lt!659565) (not (undefined!13873 lt!659565)) (bvslt (x!136332 lt!659565) #b01111111111111111111111111111110) (bvsge (x!136332 lt!659565) #b00000000000000000000000000000000) (bvsge (x!136332 lt!659565) #b00000000000000000000000000000000)))))

(assert (=> b!1522367 (=> (not res!1041589) (not e!848869))))

(assert (= (and d!159045 c!139938) b!1522366))

(assert (= (and d!159045 (not c!139938)) b!1522359))

(assert (= (and b!1522359 c!139937) b!1522361))

(assert (= (and b!1522359 (not c!139937)) b!1522364))

(assert (= (and d!159045 c!139936) b!1522365))

(assert (= (and d!159045 (not c!139936)) b!1522367))

(assert (= (and b!1522367 res!1041589) b!1522363))

(assert (= (and b!1522363 (not res!1041588)) b!1522362))

(assert (= (and b!1522362 (not res!1041590)) b!1522360))

(declare-fun m!1405501 () Bool)

(assert (=> b!1522363 m!1405501))

(assert (=> b!1522360 m!1405501))

(assert (=> d!159045 m!1405351))

(declare-fun m!1405503 () Bool)

(assert (=> d!159045 m!1405503))

(assert (=> d!159045 m!1405347))

(assert (=> b!1522362 m!1405501))

(assert (=> b!1522364 m!1405351))

(declare-fun m!1405505 () Bool)

(assert (=> b!1522364 m!1405505))

(assert (=> b!1522364 m!1405505))

(assert (=> b!1522364 m!1405325))

(declare-fun m!1405507 () Bool)

(assert (=> b!1522364 m!1405507))

(assert (=> b!1522123 d!159045))

(declare-fun d!159047 () Bool)

(declare-fun lt!659568 () (_ BitVec 32))

(declare-fun lt!659567 () (_ BitVec 32))

(assert (=> d!159047 (= lt!659568 (bvmul (bvxor lt!659567 (bvlshr lt!659567 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159047 (= lt!659567 ((_ extract 31 0) (bvand (bvxor (select (arr!48875 a!2804) j!70) (bvlshr (select (arr!48875 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159047 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1041544 (let ((h!36958 ((_ extract 31 0) (bvand (bvxor (select (arr!48875 a!2804) j!70) (bvlshr (select (arr!48875 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136335 (bvmul (bvxor h!36958 (bvlshr h!36958 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136335 (bvlshr x!136335 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1041544 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1041544 #b00000000000000000000000000000000))))))

(assert (=> d!159047 (= (toIndex!0 (select (arr!48875 a!2804) j!70) mask!2512) (bvand (bvxor lt!659568 (bvlshr lt!659568 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1522123 d!159047))

(declare-fun b!1522390 () Bool)

(declare-fun e!848892 () Bool)

(declare-fun contains!9996 (List!35538 (_ BitVec 64)) Bool)

(assert (=> b!1522390 (= e!848892 (contains!9996 Nil!35535 (select (arr!48875 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68389 () Bool)

(declare-fun call!68392 () Bool)

(declare-fun c!139944 () Bool)

(assert (=> bm!68389 (= call!68392 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139944 (Cons!35534 (select (arr!48875 a!2804) #b00000000000000000000000000000000) Nil!35535) Nil!35535)))))

(declare-fun d!159049 () Bool)

(declare-fun res!1041603 () Bool)

(declare-fun e!848891 () Bool)

(assert (=> d!159049 (=> res!1041603 e!848891)))

(assert (=> d!159049 (= res!1041603 (bvsge #b00000000000000000000000000000000 (size!49426 a!2804)))))

(assert (=> d!159049 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35535) e!848891)))

(declare-fun b!1522391 () Bool)

(declare-fun e!848890 () Bool)

(assert (=> b!1522391 (= e!848890 call!68392)))

(declare-fun b!1522392 () Bool)

(declare-fun e!848889 () Bool)

(assert (=> b!1522392 (= e!848891 e!848889)))

(declare-fun res!1041604 () Bool)

(assert (=> b!1522392 (=> (not res!1041604) (not e!848889))))

(assert (=> b!1522392 (= res!1041604 (not e!848892))))

(declare-fun res!1041605 () Bool)

(assert (=> b!1522392 (=> (not res!1041605) (not e!848892))))

(assert (=> b!1522392 (= res!1041605 (validKeyInArray!0 (select (arr!48875 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522393 () Bool)

(assert (=> b!1522393 (= e!848889 e!848890)))

(assert (=> b!1522393 (= c!139944 (validKeyInArray!0 (select (arr!48875 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522394 () Bool)

(assert (=> b!1522394 (= e!848890 call!68392)))

(assert (= (and d!159049 (not res!1041603)) b!1522392))

(assert (= (and b!1522392 res!1041605) b!1522390))

(assert (= (and b!1522392 res!1041604) b!1522393))

(assert (= (and b!1522393 c!139944) b!1522391))

(assert (= (and b!1522393 (not c!139944)) b!1522394))

(assert (= (or b!1522391 b!1522394) bm!68389))

(assert (=> b!1522390 m!1405473))

(assert (=> b!1522390 m!1405473))

(declare-fun m!1405517 () Bool)

(assert (=> b!1522390 m!1405517))

(assert (=> bm!68389 m!1405473))

(declare-fun m!1405519 () Bool)

(assert (=> bm!68389 m!1405519))

(assert (=> b!1522392 m!1405473))

(assert (=> b!1522392 m!1405473))

(assert (=> b!1522392 m!1405481))

(assert (=> b!1522393 m!1405473))

(assert (=> b!1522393 m!1405473))

(assert (=> b!1522393 m!1405481))

(assert (=> b!1522128 d!159049))

(check-sat (not bm!68389) (not b!1522303) (not d!159021) (not b!1522393) (not bm!68380) (not b!1522392) (not b!1522325) (not b!1522205) (not d!158995) (not d!158987) (not bm!68379) (not b!1522390) (not d!159045) (not b!1522196) (not d!159003) (not b!1522364) (not b!1522326) (not b!1522248) (not b!1522304))
(check-sat)
