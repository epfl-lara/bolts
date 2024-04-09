; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130402 () Bool)

(assert start!130402)

(declare-fun lt!662734 () (_ BitVec 32))

(declare-datatypes ((array!101622 0))(
  ( (array!101623 (arr!49030 (Array (_ BitVec 32) (_ BitVec 64))) (size!49581 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101622)

(declare-fun b!1530299 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun e!852755 () Bool)

(assert (=> b!1530299 (= e!852755 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (and (bvsge lt!662734 #b00000000000000000000000000000000) (bvslt lt!662734 (size!49581 a!2804)))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530299 (= lt!662734 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530300 () Bool)

(declare-fun res!1047972 () Bool)

(declare-fun e!852753 () Bool)

(assert (=> b!1530300 (=> (not res!1047972) (not e!852753))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530300 (= res!1047972 (validKeyInArray!0 (select (arr!49030 a!2804) j!70)))))

(declare-fun b!1530301 () Bool)

(declare-fun res!1047969 () Bool)

(assert (=> b!1530301 (=> (not res!1047969) (not e!852753))))

(declare-datatypes ((List!35693 0))(
  ( (Nil!35690) (Cons!35689 (h!37129 (_ BitVec 64)) (t!50394 List!35693)) )
))
(declare-fun arrayNoDuplicates!0 (array!101622 (_ BitVec 32) List!35693) Bool)

(assert (=> b!1530301 (= res!1047969 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35690))))

(declare-fun b!1530303 () Bool)

(declare-fun res!1047970 () Bool)

(assert (=> b!1530303 (=> (not res!1047970) (not e!852753))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1530303 (= res!1047970 (and (= (size!49581 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49581 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49581 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530304 () Bool)

(declare-fun e!852754 () Bool)

(declare-datatypes ((SeekEntryResult!13216 0))(
  ( (MissingZero!13216 (index!55258 (_ BitVec 32))) (Found!13216 (index!55259 (_ BitVec 32))) (Intermediate!13216 (undefined!14028 Bool) (index!55260 (_ BitVec 32)) (x!136955 (_ BitVec 32))) (Undefined!13216) (MissingVacant!13216 (index!55261 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101622 (_ BitVec 32)) SeekEntryResult!13216)

(assert (=> b!1530304 (= e!852754 (= (seekEntry!0 (select (arr!49030 a!2804) j!70) a!2804 mask!2512) (Found!13216 j!70)))))

(declare-fun b!1530305 () Bool)

(declare-fun res!1047961 () Bool)

(assert (=> b!1530305 (=> (not res!1047961) (not e!852753))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530305 (= res!1047961 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49581 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49581 a!2804))))))

(declare-fun b!1530306 () Bool)

(declare-fun res!1047967 () Bool)

(declare-fun e!852751 () Bool)

(assert (=> b!1530306 (=> (not res!1047967) (not e!852751))))

(declare-fun lt!662736 () SeekEntryResult!13216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101622 (_ BitVec 32)) SeekEntryResult!13216)

(assert (=> b!1530306 (= res!1047967 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49030 a!2804) j!70) a!2804 mask!2512) lt!662736))))

(declare-fun res!1047964 () Bool)

(assert (=> start!130402 (=> (not res!1047964) (not e!852753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130402 (= res!1047964 (validMask!0 mask!2512))))

(assert (=> start!130402 e!852753))

(assert (=> start!130402 true))

(declare-fun array_inv!37975 (array!101622) Bool)

(assert (=> start!130402 (array_inv!37975 a!2804)))

(declare-fun b!1530302 () Bool)

(declare-fun res!1047962 () Bool)

(assert (=> b!1530302 (=> (not res!1047962) (not e!852751))))

(declare-fun lt!662737 () SeekEntryResult!13216)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530302 (= res!1047962 (= lt!662737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804)) mask!2512)))))

(declare-fun b!1530307 () Bool)

(declare-fun res!1047963 () Bool)

(assert (=> b!1530307 (=> (not res!1047963) (not e!852753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101622 (_ BitVec 32)) Bool)

(assert (=> b!1530307 (= res!1047963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530308 () Bool)

(assert (=> b!1530308 (= e!852753 e!852751)))

(declare-fun res!1047971 () Bool)

(assert (=> b!1530308 (=> (not res!1047971) (not e!852751))))

(assert (=> b!1530308 (= res!1047971 (= lt!662737 lt!662736))))

(assert (=> b!1530308 (= lt!662736 (Intermediate!13216 false resIndex!21 resX!21))))

(assert (=> b!1530308 (= lt!662737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) (select (arr!49030 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530309 () Bool)

(assert (=> b!1530309 (= e!852751 (not e!852755))))

(declare-fun res!1047965 () Bool)

(assert (=> b!1530309 (=> res!1047965 e!852755)))

(assert (=> b!1530309 (= res!1047965 (or (not (= (select (arr!49030 a!2804) j!70) (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1530309 e!852754))

(declare-fun res!1047968 () Bool)

(assert (=> b!1530309 (=> (not res!1047968) (not e!852754))))

(assert (=> b!1530309 (= res!1047968 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51172 0))(
  ( (Unit!51173) )
))
(declare-fun lt!662735 () Unit!51172)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51172)

(assert (=> b!1530309 (= lt!662735 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530310 () Bool)

(declare-fun res!1047966 () Bool)

(assert (=> b!1530310 (=> (not res!1047966) (not e!852753))))

(assert (=> b!1530310 (= res!1047966 (validKeyInArray!0 (select (arr!49030 a!2804) i!961)))))

(assert (= (and start!130402 res!1047964) b!1530303))

(assert (= (and b!1530303 res!1047970) b!1530310))

(assert (= (and b!1530310 res!1047966) b!1530300))

(assert (= (and b!1530300 res!1047972) b!1530307))

(assert (= (and b!1530307 res!1047963) b!1530301))

(assert (= (and b!1530301 res!1047969) b!1530305))

(assert (= (and b!1530305 res!1047961) b!1530308))

(assert (= (and b!1530308 res!1047971) b!1530306))

(assert (= (and b!1530306 res!1047967) b!1530302))

(assert (= (and b!1530302 res!1047962) b!1530309))

(assert (= (and b!1530309 res!1047968) b!1530304))

(assert (= (and b!1530309 (not res!1047965)) b!1530299))

(declare-fun m!1413219 () Bool)

(assert (=> b!1530310 m!1413219))

(assert (=> b!1530310 m!1413219))

(declare-fun m!1413221 () Bool)

(assert (=> b!1530310 m!1413221))

(declare-fun m!1413223 () Bool)

(assert (=> b!1530300 m!1413223))

(assert (=> b!1530300 m!1413223))

(declare-fun m!1413225 () Bool)

(assert (=> b!1530300 m!1413225))

(declare-fun m!1413227 () Bool)

(assert (=> b!1530302 m!1413227))

(declare-fun m!1413229 () Bool)

(assert (=> b!1530302 m!1413229))

(assert (=> b!1530302 m!1413229))

(declare-fun m!1413231 () Bool)

(assert (=> b!1530302 m!1413231))

(assert (=> b!1530302 m!1413231))

(assert (=> b!1530302 m!1413229))

(declare-fun m!1413233 () Bool)

(assert (=> b!1530302 m!1413233))

(declare-fun m!1413235 () Bool)

(assert (=> b!1530299 m!1413235))

(assert (=> b!1530304 m!1413223))

(assert (=> b!1530304 m!1413223))

(declare-fun m!1413237 () Bool)

(assert (=> b!1530304 m!1413237))

(assert (=> b!1530308 m!1413223))

(assert (=> b!1530308 m!1413223))

(declare-fun m!1413239 () Bool)

(assert (=> b!1530308 m!1413239))

(assert (=> b!1530308 m!1413239))

(assert (=> b!1530308 m!1413223))

(declare-fun m!1413241 () Bool)

(assert (=> b!1530308 m!1413241))

(assert (=> b!1530306 m!1413223))

(assert (=> b!1530306 m!1413223))

(declare-fun m!1413243 () Bool)

(assert (=> b!1530306 m!1413243))

(declare-fun m!1413245 () Bool)

(assert (=> start!130402 m!1413245))

(declare-fun m!1413247 () Bool)

(assert (=> start!130402 m!1413247))

(declare-fun m!1413249 () Bool)

(assert (=> b!1530301 m!1413249))

(assert (=> b!1530309 m!1413223))

(declare-fun m!1413251 () Bool)

(assert (=> b!1530309 m!1413251))

(assert (=> b!1530309 m!1413227))

(assert (=> b!1530309 m!1413229))

(declare-fun m!1413253 () Bool)

(assert (=> b!1530309 m!1413253))

(declare-fun m!1413255 () Bool)

(assert (=> b!1530307 m!1413255))

(push 1)

(assert (not b!1530304))

(assert (not b!1530306))

(assert (not b!1530307))

(assert (not start!130402))

(assert (not b!1530299))

(assert (not b!1530300))

(assert (not b!1530310))

(assert (not b!1530308))

(assert (not b!1530301))

(assert (not b!1530302))

(assert (not b!1530309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159753 () Bool)

(assert (=> d!159753 (= (validKeyInArray!0 (select (arr!49030 a!2804) j!70)) (and (not (= (select (arr!49030 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49030 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530300 d!159753))

(declare-fun d!159755 () Bool)

(declare-fun lt!662773 () (_ BitVec 32))

(assert (=> d!159755 (and (bvsge lt!662773 #b00000000000000000000000000000000) (bvslt lt!662773 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159755 (= lt!662773 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159755 (validMask!0 mask!2512)))

(assert (=> d!159755 (= (nextIndex!0 index!487 x!534 mask!2512) lt!662773)))

(declare-fun bs!43874 () Bool)

(assert (= bs!43874 d!159755))

(declare-fun m!1413345 () Bool)

(assert (=> bs!43874 m!1413345))

(assert (=> bs!43874 m!1413245))

(assert (=> b!1530299 d!159755))

(declare-fun d!159759 () Bool)

(assert (=> d!159759 (= (validKeyInArray!0 (select (arr!49030 a!2804) i!961)) (and (not (= (select (arr!49030 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49030 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530310 d!159759))

(declare-fun b!1530413 () Bool)

(declare-fun e!852812 () Bool)

(declare-fun e!852811 () Bool)

(assert (=> b!1530413 (= e!852812 e!852811)))

(declare-fun res!1048062 () Bool)

(assert (=> b!1530413 (=> (not res!1048062) (not e!852811))))

(declare-fun e!852809 () Bool)

(assert (=> b!1530413 (= res!1048062 (not e!852809))))

(declare-fun res!1048063 () Bool)

(assert (=> b!1530413 (=> (not res!1048063) (not e!852809))))

(assert (=> b!1530413 (= res!1048063 (validKeyInArray!0 (select (arr!49030 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530414 () Bool)

(declare-fun e!852810 () Bool)

(assert (=> b!1530414 (= e!852811 e!852810)))

(declare-fun c!140734 () Bool)

(assert (=> b!1530414 (= c!140734 (validKeyInArray!0 (select (arr!49030 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530415 () Bool)

(declare-fun contains!10012 (List!35693 (_ BitVec 64)) Bool)

(assert (=> b!1530415 (= e!852809 (contains!10012 Nil!35690 (select (arr!49030 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159761 () Bool)

(declare-fun res!1048061 () Bool)

(assert (=> d!159761 (=> res!1048061 e!852812)))

(assert (=> d!159761 (= res!1048061 (bvsge #b00000000000000000000000000000000 (size!49581 a!2804)))))

(assert (=> d!159761 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35690) e!852812)))

(declare-fun b!1530416 () Bool)

(declare-fun call!68516 () Bool)

(assert (=> b!1530416 (= e!852810 call!68516)))

(declare-fun bm!68513 () Bool)

(assert (=> bm!68513 (= call!68516 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140734 (Cons!35689 (select (arr!49030 a!2804) #b00000000000000000000000000000000) Nil!35690) Nil!35690)))))

(declare-fun b!1530417 () Bool)

(assert (=> b!1530417 (= e!852810 call!68516)))

(assert (= (and d!159761 (not res!1048061)) b!1530413))

(assert (= (and b!1530413 res!1048063) b!1530415))

(assert (= (and b!1530413 res!1048062) b!1530414))

(assert (= (and b!1530414 c!140734) b!1530416))

(assert (= (and b!1530414 (not c!140734)) b!1530417))

(assert (= (or b!1530416 b!1530417) bm!68513))

(declare-fun m!1413347 () Bool)

(assert (=> b!1530413 m!1413347))

(assert (=> b!1530413 m!1413347))

(declare-fun m!1413349 () Bool)

(assert (=> b!1530413 m!1413349))

(assert (=> b!1530414 m!1413347))

(assert (=> b!1530414 m!1413347))

(assert (=> b!1530414 m!1413349))

(assert (=> b!1530415 m!1413347))

(assert (=> b!1530415 m!1413347))

(declare-fun m!1413351 () Bool)

(assert (=> b!1530415 m!1413351))

(assert (=> bm!68513 m!1413347))

(declare-fun m!1413353 () Bool)

(assert (=> bm!68513 m!1413353))

(assert (=> b!1530301 d!159761))

(declare-fun e!852842 () SeekEntryResult!13216)

(declare-fun b!1530467 () Bool)

(assert (=> b!1530467 (= e!852842 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49030 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530468 () Bool)

(assert (=> b!1530468 (= e!852842 (Intermediate!13216 false (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530469 () Bool)

(declare-fun lt!662803 () SeekEntryResult!13216)

(assert (=> b!1530469 (and (bvsge (index!55260 lt!662803) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662803) (size!49581 a!2804)))))

(declare-fun res!1048083 () Bool)

(assert (=> b!1530469 (= res!1048083 (= (select (arr!49030 a!2804) (index!55260 lt!662803)) (select (arr!49030 a!2804) j!70)))))

(declare-fun e!852843 () Bool)

(assert (=> b!1530469 (=> res!1048083 e!852843)))

(declare-fun e!852841 () Bool)

(assert (=> b!1530469 (= e!852841 e!852843)))

(declare-fun e!852845 () SeekEntryResult!13216)

(declare-fun b!1530470 () Bool)

(assert (=> b!1530470 (= e!852845 (Intermediate!13216 true (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530471 () Bool)

(assert (=> b!1530471 (and (bvsge (index!55260 lt!662803) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662803) (size!49581 a!2804)))))

(declare-fun res!1048082 () Bool)

(assert (=> b!1530471 (= res!1048082 (= (select (arr!49030 a!2804) (index!55260 lt!662803)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530471 (=> res!1048082 e!852843)))

(declare-fun d!159767 () Bool)

(declare-fun e!852844 () Bool)

(assert (=> d!159767 e!852844))

(declare-fun c!140753 () Bool)

(assert (=> d!159767 (= c!140753 (and (is-Intermediate!13216 lt!662803) (undefined!14028 lt!662803)))))

(assert (=> d!159767 (= lt!662803 e!852845)))

(declare-fun c!140752 () Bool)

(assert (=> d!159767 (= c!140752 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!662804 () (_ BitVec 64))

(assert (=> d!159767 (= lt!662804 (select (arr!49030 a!2804) (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512)))))

(assert (=> d!159767 (validMask!0 mask!2512)))

(assert (=> d!159767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) (select (arr!49030 a!2804) j!70) a!2804 mask!2512) lt!662803)))

(declare-fun b!1530472 () Bool)

(assert (=> b!1530472 (= e!852844 e!852841)))

(declare-fun res!1048084 () Bool)

(assert (=> b!1530472 (= res!1048084 (and (is-Intermediate!13216 lt!662803) (not (undefined!14028 lt!662803)) (bvslt (x!136955 lt!662803) #b01111111111111111111111111111110) (bvsge (x!136955 lt!662803) #b00000000000000000000000000000000) (bvsge (x!136955 lt!662803) #b00000000000000000000000000000000)))))

(assert (=> b!1530472 (=> (not res!1048084) (not e!852841))))

(declare-fun b!1530473 () Bool)

(assert (=> b!1530473 (= e!852844 (bvsge (x!136955 lt!662803) #b01111111111111111111111111111110))))

(declare-fun b!1530474 () Bool)

(assert (=> b!1530474 (= e!852845 e!852842)))

(declare-fun c!140751 () Bool)

(assert (=> b!1530474 (= c!140751 (or (= lt!662804 (select (arr!49030 a!2804) j!70)) (= (bvadd lt!662804 lt!662804) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530475 () Bool)

(assert (=> b!1530475 (and (bvsge (index!55260 lt!662803) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662803) (size!49581 a!2804)))))

(assert (=> b!1530475 (= e!852843 (= (select (arr!49030 a!2804) (index!55260 lt!662803)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159767 c!140752) b!1530470))

(assert (= (and d!159767 (not c!140752)) b!1530474))

(assert (= (and b!1530474 c!140751) b!1530468))

(assert (= (and b!1530474 (not c!140751)) b!1530467))

(assert (= (and d!159767 c!140753) b!1530473))

(assert (= (and d!159767 (not c!140753)) b!1530472))

(assert (= (and b!1530472 res!1048084) b!1530469))

(assert (= (and b!1530469 (not res!1048083)) b!1530471))

(assert (= (and b!1530471 (not res!1048082)) b!1530475))

(declare-fun m!1413375 () Bool)

(assert (=> b!1530471 m!1413375))

(assert (=> b!1530469 m!1413375))

(assert (=> b!1530475 m!1413375))

(assert (=> d!159767 m!1413239))

(declare-fun m!1413377 () Bool)

(assert (=> d!159767 m!1413377))

(assert (=> d!159767 m!1413245))

(assert (=> b!1530467 m!1413239))

(declare-fun m!1413379 () Bool)

(assert (=> b!1530467 m!1413379))

(assert (=> b!1530467 m!1413379))

(assert (=> b!1530467 m!1413223))

(declare-fun m!1413381 () Bool)

(assert (=> b!1530467 m!1413381))

(assert (=> b!1530308 d!159767))

(declare-fun d!159779 () Bool)

(declare-fun lt!662824 () (_ BitVec 32))

(declare-fun lt!662823 () (_ BitVec 32))

(assert (=> d!159779 (= lt!662824 (bvmul (bvxor lt!662823 (bvlshr lt!662823 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159779 (= lt!662823 ((_ extract 31 0) (bvand (bvxor (select (arr!49030 a!2804) j!70) (bvlshr (select (arr!49030 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159779 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048085 (let ((h!37133 ((_ extract 31 0) (bvand (bvxor (select (arr!49030 a!2804) j!70) (bvlshr (select (arr!49030 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136963 (bvmul (bvxor h!37133 (bvlshr h!37133 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136963 (bvlshr x!136963 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048085 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048085 #b00000000000000000000000000000000))))))

(assert (=> d!159779 (= (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) (bvand (bvxor lt!662824 (bvlshr lt!662824 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530308 d!159779))

(declare-fun d!159789 () Bool)

(assert (=> d!159789 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130402 d!159789))

(declare-fun d!159797 () Bool)

(assert (=> d!159797 (= (array_inv!37975 a!2804) (bvsge (size!49581 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130402 d!159797))

(declare-fun b!1530554 () Bool)

(declare-fun e!852899 () Bool)

(declare-fun e!852901 () Bool)

(assert (=> b!1530554 (= e!852899 e!852901)))

(declare-fun c!140775 () Bool)

(assert (=> b!1530554 (= c!140775 (validKeyInArray!0 (select (arr!49030 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159799 () Bool)

(declare-fun res!1048124 () Bool)

(assert (=> d!159799 (=> res!1048124 e!852899)))

(assert (=> d!159799 (= res!1048124 (bvsge #b00000000000000000000000000000000 (size!49581 a!2804)))))

(assert (=> d!159799 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!852899)))

(declare-fun b!1530555 () Bool)

(declare-fun e!852900 () Bool)

(declare-fun call!68527 () Bool)

(assert (=> b!1530555 (= e!852900 call!68527)))

(declare-fun b!1530556 () Bool)

(assert (=> b!1530556 (= e!852901 e!852900)))

(declare-fun lt!662844 () (_ BitVec 64))

(assert (=> b!1530556 (= lt!662844 (select (arr!49030 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!662842 () Unit!51172)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101622 (_ BitVec 64) (_ BitVec 32)) Unit!51172)

(assert (=> b!1530556 (= lt!662842 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662844 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1530556 (arrayContainsKey!0 a!2804 lt!662844 #b00000000000000000000000000000000)))

(declare-fun lt!662843 () Unit!51172)

(assert (=> b!1530556 (= lt!662843 lt!662842)))

(declare-fun res!1048123 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101622 (_ BitVec 32)) SeekEntryResult!13216)

(assert (=> b!1530556 (= res!1048123 (= (seekEntryOrOpen!0 (select (arr!49030 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13216 #b00000000000000000000000000000000)))))

(assert (=> b!1530556 (=> (not res!1048123) (not e!852900))))

(declare-fun b!1530557 () Bool)

(assert (=> b!1530557 (= e!852901 call!68527)))

(declare-fun bm!68524 () Bool)

(assert (=> bm!68524 (= call!68527 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159799 (not res!1048124)) b!1530554))

(assert (= (and b!1530554 c!140775) b!1530556))

(assert (= (and b!1530554 (not c!140775)) b!1530557))

(assert (= (and b!1530556 res!1048123) b!1530555))

(assert (= (or b!1530555 b!1530557) bm!68524))

(assert (=> b!1530554 m!1413347))

(assert (=> b!1530554 m!1413347))

(assert (=> b!1530554 m!1413349))

(assert (=> b!1530556 m!1413347))

(declare-fun m!1413421 () Bool)

(assert (=> b!1530556 m!1413421))

(declare-fun m!1413423 () Bool)

(assert (=> b!1530556 m!1413423))

(assert (=> b!1530556 m!1413347))

(declare-fun m!1413425 () Bool)

(assert (=> b!1530556 m!1413425))

(declare-fun m!1413427 () Bool)

(assert (=> bm!68524 m!1413427))

(assert (=> b!1530307 d!159799))

(declare-fun b!1530558 () Bool)

(declare-fun e!852902 () Bool)

(declare-fun e!852904 () Bool)

(assert (=> b!1530558 (= e!852902 e!852904)))

(declare-fun c!140776 () Bool)

(assert (=> b!1530558 (= c!140776 (validKeyInArray!0 (select (arr!49030 a!2804) j!70)))))

(declare-fun d!159807 () Bool)

(declare-fun res!1048126 () Bool)

(assert (=> d!159807 (=> res!1048126 e!852902)))

(assert (=> d!159807 (= res!1048126 (bvsge j!70 (size!49581 a!2804)))))

(assert (=> d!159807 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!852902)))

(declare-fun b!1530559 () Bool)

(declare-fun e!852903 () Bool)

(declare-fun call!68528 () Bool)

(assert (=> b!1530559 (= e!852903 call!68528)))

(declare-fun b!1530560 () Bool)

(assert (=> b!1530560 (= e!852904 e!852903)))

(declare-fun lt!662847 () (_ BitVec 64))

(assert (=> b!1530560 (= lt!662847 (select (arr!49030 a!2804) j!70))))

(declare-fun lt!662845 () Unit!51172)

(assert (=> b!1530560 (= lt!662845 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662847 j!70))))

(assert (=> b!1530560 (arrayContainsKey!0 a!2804 lt!662847 #b00000000000000000000000000000000)))

(declare-fun lt!662846 () Unit!51172)

(assert (=> b!1530560 (= lt!662846 lt!662845)))

(declare-fun res!1048125 () Bool)

(assert (=> b!1530560 (= res!1048125 (= (seekEntryOrOpen!0 (select (arr!49030 a!2804) j!70) a!2804 mask!2512) (Found!13216 j!70)))))

(assert (=> b!1530560 (=> (not res!1048125) (not e!852903))))

(declare-fun b!1530561 () Bool)

(assert (=> b!1530561 (= e!852904 call!68528)))

(declare-fun bm!68525 () Bool)

(assert (=> bm!68525 (= call!68528 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159807 (not res!1048126)) b!1530558))

(assert (= (and b!1530558 c!140776) b!1530560))

(assert (= (and b!1530558 (not c!140776)) b!1530561))

(assert (= (and b!1530560 res!1048125) b!1530559))

(assert (= (or b!1530559 b!1530561) bm!68525))

(assert (=> b!1530558 m!1413223))

(assert (=> b!1530558 m!1413223))

(assert (=> b!1530558 m!1413225))

(assert (=> b!1530560 m!1413223))

(declare-fun m!1413429 () Bool)

(assert (=> b!1530560 m!1413429))

(declare-fun m!1413431 () Bool)

(assert (=> b!1530560 m!1413431))

(assert (=> b!1530560 m!1413223))

(declare-fun m!1413433 () Bool)

(assert (=> b!1530560 m!1413433))

(declare-fun m!1413435 () Bool)

(assert (=> bm!68525 m!1413435))

(assert (=> b!1530309 d!159807))

(declare-fun d!159809 () Bool)

(assert (=> d!159809 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!662858 () Unit!51172)

(declare-fun choose!38 (array!101622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51172)

(assert (=> d!159809 (= lt!662858 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159809 (validMask!0 mask!2512)))

(assert (=> d!159809 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!662858)))

(declare-fun bs!43879 () Bool)

(assert (= bs!43879 d!159809))

(assert (=> bs!43879 m!1413253))

(declare-fun m!1413437 () Bool)

(assert (=> bs!43879 m!1413437))

(assert (=> bs!43879 m!1413245))

(assert (=> b!1530309 d!159809))

(declare-fun b!1530574 () Bool)

(declare-fun e!852912 () SeekEntryResult!13216)

(assert (=> b!1530574 (= e!852912 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49030 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530575 () Bool)

(assert (=> b!1530575 (= e!852912 (Intermediate!13216 false index!487 x!534))))

(declare-fun b!1530576 () Bool)

(declare-fun lt!662859 () SeekEntryResult!13216)

(assert (=> b!1530576 (and (bvsge (index!55260 lt!662859) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662859) (size!49581 a!2804)))))

(declare-fun res!1048128 () Bool)

(assert (=> b!1530576 (= res!1048128 (= (select (arr!49030 a!2804) (index!55260 lt!662859)) (select (arr!49030 a!2804) j!70)))))

(declare-fun e!852913 () Bool)

(assert (=> b!1530576 (=> res!1048128 e!852913)))

(declare-fun e!852911 () Bool)

(assert (=> b!1530576 (= e!852911 e!852913)))

(declare-fun b!1530577 () Bool)

(declare-fun e!852915 () SeekEntryResult!13216)

(assert (=> b!1530577 (= e!852915 (Intermediate!13216 true index!487 x!534))))

(declare-fun b!1530578 () Bool)

(assert (=> b!1530578 (and (bvsge (index!55260 lt!662859) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662859) (size!49581 a!2804)))))

(declare-fun res!1048127 () Bool)

(assert (=> b!1530578 (= res!1048127 (= (select (arr!49030 a!2804) (index!55260 lt!662859)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530578 (=> res!1048127 e!852913)))

(declare-fun d!159811 () Bool)

(declare-fun e!852914 () Bool)

(assert (=> d!159811 e!852914))

(declare-fun c!140785 () Bool)

(assert (=> d!159811 (= c!140785 (and (is-Intermediate!13216 lt!662859) (undefined!14028 lt!662859)))))

(assert (=> d!159811 (= lt!662859 e!852915)))

(declare-fun c!140784 () Bool)

(assert (=> d!159811 (= c!140784 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!662860 () (_ BitVec 64))

(assert (=> d!159811 (= lt!662860 (select (arr!49030 a!2804) index!487))))

(assert (=> d!159811 (validMask!0 mask!2512)))

(assert (=> d!159811 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49030 a!2804) j!70) a!2804 mask!2512) lt!662859)))

(declare-fun b!1530579 () Bool)

(assert (=> b!1530579 (= e!852914 e!852911)))

(declare-fun res!1048129 () Bool)

(assert (=> b!1530579 (= res!1048129 (and (is-Intermediate!13216 lt!662859) (not (undefined!14028 lt!662859)) (bvslt (x!136955 lt!662859) #b01111111111111111111111111111110) (bvsge (x!136955 lt!662859) #b00000000000000000000000000000000) (bvsge (x!136955 lt!662859) x!534)))))

(assert (=> b!1530579 (=> (not res!1048129) (not e!852911))))

(declare-fun b!1530580 () Bool)

(assert (=> b!1530580 (= e!852914 (bvsge (x!136955 lt!662859) #b01111111111111111111111111111110))))

(declare-fun b!1530581 () Bool)

(assert (=> b!1530581 (= e!852915 e!852912)))

(declare-fun c!140783 () Bool)

(assert (=> b!1530581 (= c!140783 (or (= lt!662860 (select (arr!49030 a!2804) j!70)) (= (bvadd lt!662860 lt!662860) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530582 () Bool)

(assert (=> b!1530582 (and (bvsge (index!55260 lt!662859) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662859) (size!49581 a!2804)))))

(assert (=> b!1530582 (= e!852913 (= (select (arr!49030 a!2804) (index!55260 lt!662859)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159811 c!140784) b!1530577))

(assert (= (and d!159811 (not c!140784)) b!1530581))

(assert (= (and b!1530581 c!140783) b!1530575))

(assert (= (and b!1530581 (not c!140783)) b!1530574))

(assert (= (and d!159811 c!140785) b!1530580))

(assert (= (and d!159811 (not c!140785)) b!1530579))

(assert (= (and b!1530579 res!1048129) b!1530576))

(assert (= (and b!1530576 (not res!1048128)) b!1530578))

(assert (= (and b!1530578 (not res!1048127)) b!1530582))

(declare-fun m!1413439 () Bool)

(assert (=> b!1530578 m!1413439))

(assert (=> b!1530576 m!1413439))

(assert (=> b!1530582 m!1413439))

(declare-fun m!1413441 () Bool)

(assert (=> d!159811 m!1413441))

(assert (=> d!159811 m!1413245))

(assert (=> b!1530574 m!1413235))

(assert (=> b!1530574 m!1413235))

(assert (=> b!1530574 m!1413223))

(declare-fun m!1413445 () Bool)

(assert (=> b!1530574 m!1413445))

(assert (=> b!1530306 d!159811))

(declare-fun b!1530589 () Bool)

(declare-fun e!852920 () SeekEntryResult!13216)

(assert (=> b!1530589 (= e!852920 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804)) mask!2512))))

(declare-fun b!1530590 () Bool)

(assert (=> b!1530590 (= e!852920 (Intermediate!13216 false (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530591 () Bool)

(declare-fun lt!662865 () SeekEntryResult!13216)

(assert (=> b!1530591 (and (bvsge (index!55260 lt!662865) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662865) (size!49581 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804)))))))

(declare-fun res!1048131 () Bool)

(assert (=> b!1530591 (= res!1048131 (= (select (arr!49030 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804))) (index!55260 lt!662865)) (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!852921 () Bool)

(assert (=> b!1530591 (=> res!1048131 e!852921)))

(declare-fun e!852919 () Bool)

(assert (=> b!1530591 (= e!852919 e!852921)))

(declare-fun e!852923 () SeekEntryResult!13216)

(declare-fun b!1530592 () Bool)

(assert (=> b!1530592 (= e!852923 (Intermediate!13216 true (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530593 () Bool)

(assert (=> b!1530593 (and (bvsge (index!55260 lt!662865) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662865) (size!49581 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804)))))))

(declare-fun res!1048130 () Bool)

(assert (=> b!1530593 (= res!1048130 (= (select (arr!49030 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804))) (index!55260 lt!662865)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530593 (=> res!1048130 e!852921)))

(declare-fun d!159813 () Bool)

(declare-fun e!852922 () Bool)

(assert (=> d!159813 e!852922))

(declare-fun c!140791 () Bool)

(assert (=> d!159813 (= c!140791 (and (is-Intermediate!13216 lt!662865) (undefined!14028 lt!662865)))))

(assert (=> d!159813 (= lt!662865 e!852923)))

(declare-fun c!140790 () Bool)

(assert (=> d!159813 (= c!140790 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!662866 () (_ BitVec 64))

(assert (=> d!159813 (= lt!662866 (select (arr!49030 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804))) (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159813 (validMask!0 mask!2512)))

(assert (=> d!159813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804)) mask!2512) lt!662865)))

(declare-fun b!1530594 () Bool)

(assert (=> b!1530594 (= e!852922 e!852919)))

(declare-fun res!1048132 () Bool)

(assert (=> b!1530594 (= res!1048132 (and (is-Intermediate!13216 lt!662865) (not (undefined!14028 lt!662865)) (bvslt (x!136955 lt!662865) #b01111111111111111111111111111110) (bvsge (x!136955 lt!662865) #b00000000000000000000000000000000) (bvsge (x!136955 lt!662865) #b00000000000000000000000000000000)))))

(assert (=> b!1530594 (=> (not res!1048132) (not e!852919))))

(declare-fun b!1530595 () Bool)

(assert (=> b!1530595 (= e!852922 (bvsge (x!136955 lt!662865) #b01111111111111111111111111111110))))

(declare-fun b!1530596 () Bool)

(assert (=> b!1530596 (= e!852923 e!852920)))

(declare-fun c!140789 () Bool)

(assert (=> b!1530596 (= c!140789 (or (= lt!662866 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!662866 lt!662866) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530597 () Bool)

(assert (=> b!1530597 (and (bvsge (index!55260 lt!662865) #b00000000000000000000000000000000) (bvslt (index!55260 lt!662865) (size!49581 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804)))))))

(assert (=> b!1530597 (= e!852921 (= (select (arr!49030 (array!101623 (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49581 a!2804))) (index!55260 lt!662865)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159813 c!140790) b!1530592))

(assert (= (and d!159813 (not c!140790)) b!1530596))

(assert (= (and b!1530596 c!140789) b!1530590))

(assert (= (and b!1530596 (not c!140789)) b!1530589))

(assert (= (and d!159813 c!140791) b!1530595))

(assert (= (and d!159813 (not c!140791)) b!1530594))

(assert (= (and b!1530594 res!1048132) b!1530591))

(assert (= (and b!1530591 (not res!1048131)) b!1530593))

(assert (= (and b!1530593 (not res!1048130)) b!1530597))

(declare-fun m!1413451 () Bool)

(assert (=> b!1530593 m!1413451))

(assert (=> b!1530591 m!1413451))

(assert (=> b!1530597 m!1413451))

(assert (=> d!159813 m!1413231))

(declare-fun m!1413453 () Bool)

(assert (=> d!159813 m!1413453))

(assert (=> d!159813 m!1413245))

(assert (=> b!1530589 m!1413231))

(declare-fun m!1413455 () Bool)

(assert (=> b!1530589 m!1413455))

(assert (=> b!1530589 m!1413455))

(assert (=> b!1530589 m!1413229))

(declare-fun m!1413459 () Bool)

(assert (=> b!1530589 m!1413459))

(assert (=> b!1530302 d!159813))

(declare-fun d!159823 () Bool)

(declare-fun lt!662870 () (_ BitVec 32))

(declare-fun lt!662869 () (_ BitVec 32))

(assert (=> d!159823 (= lt!662870 (bvmul (bvxor lt!662869 (bvlshr lt!662869 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159823 (= lt!662869 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159823 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048085 (let ((h!37133 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136963 (bvmul (bvxor h!37133 (bvlshr h!37133 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136963 (bvlshr x!136963 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048085 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048085 #b00000000000000000000000000000000))))))

(assert (=> d!159823 (= (toIndex!0 (select (store (arr!49030 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!662870 (bvlshr lt!662870 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530302 d!159823))

(declare-fun b!1530641 () Bool)

(declare-fun c!140812 () Bool)

(declare-fun lt!662898 () (_ BitVec 64))

(assert (=> b!1530641 (= c!140812 (= lt!662898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852949 () SeekEntryResult!13216)

(declare-fun e!852948 () SeekEntryResult!13216)

(assert (=> b!1530641 (= e!852949 e!852948)))

(declare-fun b!1530642 () Bool)

(declare-fun lt!662899 () SeekEntryResult!13216)

(assert (=> b!1530642 (= e!852948 (ite (is-MissingVacant!13216 lt!662899) (MissingZero!13216 (index!55261 lt!662899)) lt!662899))))

(declare-fun lt!662896 () SeekEntryResult!13216)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101622 (_ BitVec 32)) SeekEntryResult!13216)

(assert (=> b!1530642 (= lt!662899 (seekKeyOrZeroReturnVacant!0 (x!136955 lt!662896) (index!55260 lt!662896) (index!55260 lt!662896) (select (arr!49030 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530643 () Bool)

(declare-fun e!852947 () SeekEntryResult!13216)

(assert (=> b!1530643 (= e!852947 Undefined!13216)))

(declare-fun d!159827 () Bool)

(declare-fun lt!662897 () SeekEntryResult!13216)

(assert (=> d!159827 (and (or (is-MissingVacant!13216 lt!662897) (not (is-Found!13216 lt!662897)) (and (bvsge (index!55259 lt!662897) #b00000000000000000000000000000000) (bvslt (index!55259 lt!662897) (size!49581 a!2804)))) (not (is-MissingVacant!13216 lt!662897)) (or (not (is-Found!13216 lt!662897)) (= (select (arr!49030 a!2804) (index!55259 lt!662897)) (select (arr!49030 a!2804) j!70))))))

(assert (=> d!159827 (= lt!662897 e!852947)))

(declare-fun c!140813 () Bool)

(assert (=> d!159827 (= c!140813 (and (is-Intermediate!13216 lt!662896) (undefined!14028 lt!662896)))))

(assert (=> d!159827 (= lt!662896 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49030 a!2804) j!70) mask!2512) (select (arr!49030 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159827 (validMask!0 mask!2512)))

(assert (=> d!159827 (= (seekEntry!0 (select (arr!49030 a!2804) j!70) a!2804 mask!2512) lt!662897)))

(declare-fun b!1530644 () Bool)

(assert (=> b!1530644 (= e!852947 e!852949)))

(assert (=> b!1530644 (= lt!662898 (select (arr!49030 a!2804) (index!55260 lt!662896)))))

(declare-fun c!140811 () Bool)

(assert (=> b!1530644 (= c!140811 (= lt!662898 (select (arr!49030 a!2804) j!70)))))

(declare-fun b!1530645 () Bool)

(assert (=> b!1530645 (= e!852948 (MissingZero!13216 (index!55260 lt!662896)))))

(declare-fun b!1530646 () Bool)

(assert (=> b!1530646 (= e!852949 (Found!13216 (index!55260 lt!662896)))))

(assert (= (and d!159827 c!140813) b!1530643))

(assert (= (and d!159827 (not c!140813)) b!1530644))

(assert (= (and b!1530644 c!140811) b!1530646))

(assert (= (and b!1530644 (not c!140811)) b!1530641))

(assert (= (and b!1530641 c!140812) b!1530645))

(assert (= (and b!1530641 (not c!140812)) b!1530642))

(assert (=> b!1530642 m!1413223))

(declare-fun m!1413481 () Bool)

(assert (=> b!1530642 m!1413481))

(declare-fun m!1413483 () Bool)

(assert (=> d!159827 m!1413483))

(assert (=> d!159827 m!1413223))

(assert (=> d!159827 m!1413239))

(assert (=> d!159827 m!1413239))

(assert (=> d!159827 m!1413223))

(assert (=> d!159827 m!1413241))

(assert (=> d!159827 m!1413245))

(declare-fun m!1413485 () Bool)

(assert (=> b!1530644 m!1413485))

(assert (=> b!1530304 d!159827))

(push 1)

(assert (not d!159811))

(assert (not d!159813))

(assert (not b!1530642))

(assert (not b!1530467))

(assert (not b!1530415))

(assert (not bm!68525))

(assert (not b!1530413))

(assert (not d!159809))

(assert (not bm!68524))

(assert (not bm!68513))

(assert (not b!1530574))

(assert (not d!159827))

(assert (not b!1530556))

(assert (not b!1530558))

(assert (not b!1530414))

(assert (not b!1530560))

(assert (not b!1530589))

(assert (not b!1530554))

(assert (not d!159755))

(assert (not d!159767))

(check-sat)

(pop 1)

(push 1)

(check-sat)

