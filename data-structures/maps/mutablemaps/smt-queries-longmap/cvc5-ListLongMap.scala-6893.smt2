; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86698 () Bool)

(assert start!86698)

(declare-fun b!1004797 () Bool)

(declare-fun res!674246 () Bool)

(declare-fun e!565852 () Bool)

(assert (=> b!1004797 (=> (not res!674246) (not e!565852))))

(declare-datatypes ((array!63400 0))(
  ( (array!63401 (arr!30520 (Array (_ BitVec 32) (_ BitVec 64))) (size!31023 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63400)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004797 (= res!674246 (validKeyInArray!0 (select (arr!30520 a!3219) j!170)))))

(declare-fun b!1004798 () Bool)

(declare-fun res!674248 () Bool)

(assert (=> b!1004798 (=> (not res!674248) (not e!565852))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004798 (= res!674248 (and (= (size!31023 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31023 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31023 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!674240 () Bool)

(assert (=> start!86698 (=> (not res!674240) (not e!565852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86698 (= res!674240 (validMask!0 mask!3464))))

(assert (=> start!86698 e!565852))

(declare-fun array_inv!23510 (array!63400) Bool)

(assert (=> start!86698 (array_inv!23510 a!3219)))

(assert (=> start!86698 true))

(declare-fun b!1004799 () Bool)

(declare-fun e!565855 () Bool)

(assert (=> b!1004799 (= e!565852 e!565855)))

(declare-fun res!674236 () Bool)

(assert (=> b!1004799 (=> (not res!674236) (not e!565855))))

(declare-datatypes ((SeekEntryResult!9452 0))(
  ( (MissingZero!9452 (index!40178 (_ BitVec 32))) (Found!9452 (index!40179 (_ BitVec 32))) (Intermediate!9452 (undefined!10264 Bool) (index!40180 (_ BitVec 32)) (x!87615 (_ BitVec 32))) (Undefined!9452) (MissingVacant!9452 (index!40181 (_ BitVec 32))) )
))
(declare-fun lt!444318 () SeekEntryResult!9452)

(assert (=> b!1004799 (= res!674236 (or (= lt!444318 (MissingVacant!9452 i!1194)) (= lt!444318 (MissingZero!9452 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63400 (_ BitVec 32)) SeekEntryResult!9452)

(assert (=> b!1004799 (= lt!444318 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004800 () Bool)

(declare-fun res!674238 () Bool)

(assert (=> b!1004800 (=> (not res!674238) (not e!565855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63400 (_ BitVec 32)) Bool)

(assert (=> b!1004800 (= res!674238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004801 () Bool)

(declare-fun e!565853 () Bool)

(declare-fun e!565851 () Bool)

(assert (=> b!1004801 (= e!565853 e!565851)))

(declare-fun res!674241 () Bool)

(assert (=> b!1004801 (=> (not res!674241) (not e!565851))))

(declare-fun lt!444317 () SeekEntryResult!9452)

(declare-fun lt!444321 () SeekEntryResult!9452)

(assert (=> b!1004801 (= res!674241 (= lt!444317 lt!444321))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63400 (_ BitVec 32)) SeekEntryResult!9452)

(assert (=> b!1004801 (= lt!444317 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30520 a!3219) j!170) a!3219 mask!3464))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun e!565856 () Bool)

(declare-fun b!1004802 () Bool)

(assert (=> b!1004802 (= e!565856 (and (not (= index!1507 resIndex!38)) (= index!1507 i!1194)))))

(declare-fun b!1004803 () Bool)

(declare-fun res!674244 () Bool)

(assert (=> b!1004803 (=> (not res!674244) (not e!565852))))

(assert (=> b!1004803 (= res!674244 (validKeyInArray!0 k!2224))))

(declare-fun b!1004804 () Bool)

(declare-fun res!674247 () Bool)

(assert (=> b!1004804 (=> (not res!674247) (not e!565855))))

(declare-datatypes ((List!21322 0))(
  ( (Nil!21319) (Cons!21318 (h!22498 (_ BitVec 64)) (t!30331 List!21322)) )
))
(declare-fun arrayNoDuplicates!0 (array!63400 (_ BitVec 32) List!21322) Bool)

(assert (=> b!1004804 (= res!674247 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21319))))

(declare-fun b!1004805 () Bool)

(assert (=> b!1004805 (= e!565851 e!565856)))

(declare-fun res!674239 () Bool)

(assert (=> b!1004805 (=> (not res!674239) (not e!565856))))

(declare-fun lt!444316 () array!63400)

(declare-fun lt!444320 () SeekEntryResult!9452)

(declare-fun lt!444319 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004805 (= res!674239 (not (= lt!444320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444319 mask!3464) lt!444319 lt!444316 mask!3464))))))

(assert (=> b!1004805 (= lt!444319 (select (store (arr!30520 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004805 (= lt!444316 (array!63401 (store (arr!30520 a!3219) i!1194 k!2224) (size!31023 a!3219)))))

(declare-fun b!1004806 () Bool)

(declare-fun res!674243 () Bool)

(assert (=> b!1004806 (=> (not res!674243) (not e!565856))))

(assert (=> b!1004806 (= res!674243 (not (= lt!444317 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444319 lt!444316 mask!3464))))))

(declare-fun b!1004807 () Bool)

(assert (=> b!1004807 (= e!565855 e!565853)))

(declare-fun res!674242 () Bool)

(assert (=> b!1004807 (=> (not res!674242) (not e!565853))))

(assert (=> b!1004807 (= res!674242 (= lt!444320 lt!444321))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004807 (= lt!444321 (Intermediate!9452 false resIndex!38 resX!38))))

(assert (=> b!1004807 (= lt!444320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464) (select (arr!30520 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004808 () Bool)

(declare-fun res!674245 () Bool)

(assert (=> b!1004808 (=> (not res!674245) (not e!565855))))

(assert (=> b!1004808 (= res!674245 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31023 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31023 a!3219))))))

(declare-fun b!1004809 () Bool)

(declare-fun res!674237 () Bool)

(assert (=> b!1004809 (=> (not res!674237) (not e!565852))))

(declare-fun arrayContainsKey!0 (array!63400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004809 (= res!674237 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86698 res!674240) b!1004798))

(assert (= (and b!1004798 res!674248) b!1004797))

(assert (= (and b!1004797 res!674246) b!1004803))

(assert (= (and b!1004803 res!674244) b!1004809))

(assert (= (and b!1004809 res!674237) b!1004799))

(assert (= (and b!1004799 res!674236) b!1004800))

(assert (= (and b!1004800 res!674238) b!1004804))

(assert (= (and b!1004804 res!674247) b!1004808))

(assert (= (and b!1004808 res!674245) b!1004807))

(assert (= (and b!1004807 res!674242) b!1004801))

(assert (= (and b!1004801 res!674241) b!1004805))

(assert (= (and b!1004805 res!674239) b!1004806))

(assert (= (and b!1004806 res!674243) b!1004802))

(declare-fun m!930309 () Bool)

(assert (=> b!1004804 m!930309))

(declare-fun m!930311 () Bool)

(assert (=> b!1004806 m!930311))

(declare-fun m!930313 () Bool)

(assert (=> b!1004805 m!930313))

(assert (=> b!1004805 m!930313))

(declare-fun m!930315 () Bool)

(assert (=> b!1004805 m!930315))

(declare-fun m!930317 () Bool)

(assert (=> b!1004805 m!930317))

(declare-fun m!930319 () Bool)

(assert (=> b!1004805 m!930319))

(declare-fun m!930321 () Bool)

(assert (=> b!1004800 m!930321))

(declare-fun m!930323 () Bool)

(assert (=> b!1004801 m!930323))

(assert (=> b!1004801 m!930323))

(declare-fun m!930325 () Bool)

(assert (=> b!1004801 m!930325))

(declare-fun m!930327 () Bool)

(assert (=> b!1004809 m!930327))

(declare-fun m!930329 () Bool)

(assert (=> start!86698 m!930329))

(declare-fun m!930331 () Bool)

(assert (=> start!86698 m!930331))

(assert (=> b!1004807 m!930323))

(assert (=> b!1004807 m!930323))

(declare-fun m!930333 () Bool)

(assert (=> b!1004807 m!930333))

(assert (=> b!1004807 m!930333))

(assert (=> b!1004807 m!930323))

(declare-fun m!930335 () Bool)

(assert (=> b!1004807 m!930335))

(assert (=> b!1004797 m!930323))

(assert (=> b!1004797 m!930323))

(declare-fun m!930337 () Bool)

(assert (=> b!1004797 m!930337))

(declare-fun m!930339 () Bool)

(assert (=> b!1004803 m!930339))

(declare-fun m!930341 () Bool)

(assert (=> b!1004799 m!930341))

(push 1)

(assert (not b!1004809))

(assert (not b!1004807))

(assert (not b!1004806))

(assert (not b!1004800))

(assert (not b!1004799))

(assert (not b!1004805))

(assert (not b!1004801))

(assert (not start!86698))

(assert (not b!1004797))

(assert (not b!1004803))

(assert (not b!1004804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1004923 () Bool)

(declare-fun e!565916 () Bool)

(declare-fun e!565915 () Bool)

(assert (=> b!1004923 (= e!565916 e!565915)))

(declare-fun lt!444370 () (_ BitVec 64))

(assert (=> b!1004923 (= lt!444370 (select (arr!30520 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32948 0))(
  ( (Unit!32949) )
))
(declare-fun lt!444372 () Unit!32948)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63400 (_ BitVec 64) (_ BitVec 32)) Unit!32948)

(assert (=> b!1004923 (= lt!444372 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444370 #b00000000000000000000000000000000))))

(assert (=> b!1004923 (arrayContainsKey!0 a!3219 lt!444370 #b00000000000000000000000000000000)))

(declare-fun lt!444371 () Unit!32948)

(assert (=> b!1004923 (= lt!444371 lt!444372)))

(declare-fun res!674340 () Bool)

(assert (=> b!1004923 (= res!674340 (= (seekEntryOrOpen!0 (select (arr!30520 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9452 #b00000000000000000000000000000000)))))

(assert (=> b!1004923 (=> (not res!674340) (not e!565915))))

(declare-fun d!119437 () Bool)

(declare-fun res!674341 () Bool)

(declare-fun e!565914 () Bool)

(assert (=> d!119437 (=> res!674341 e!565914)))

(assert (=> d!119437 (= res!674341 (bvsge #b00000000000000000000000000000000 (size!31023 a!3219)))))

(assert (=> d!119437 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!565914)))

(declare-fun b!1004924 () Bool)

(assert (=> b!1004924 (= e!565914 e!565916)))

(declare-fun c!101442 () Bool)

(assert (=> b!1004924 (= c!101442 (validKeyInArray!0 (select (arr!30520 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004925 () Bool)

(declare-fun call!42334 () Bool)

(assert (=> b!1004925 (= e!565915 call!42334)))

(declare-fun b!1004926 () Bool)

(assert (=> b!1004926 (= e!565916 call!42334)))

(declare-fun bm!42331 () Bool)

(assert (=> bm!42331 (= call!42334 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!119437 (not res!674341)) b!1004924))

(assert (= (and b!1004924 c!101442) b!1004923))

(assert (= (and b!1004924 (not c!101442)) b!1004926))

(assert (= (and b!1004923 res!674340) b!1004925))

(assert (= (or b!1004925 b!1004926) bm!42331))

(declare-fun m!930419 () Bool)

(assert (=> b!1004923 m!930419))

(declare-fun m!930421 () Bool)

(assert (=> b!1004923 m!930421))

(declare-fun m!930423 () Bool)

(assert (=> b!1004923 m!930423))

(assert (=> b!1004923 m!930419))

(declare-fun m!930425 () Bool)

(assert (=> b!1004923 m!930425))

(assert (=> b!1004924 m!930419))

(assert (=> b!1004924 m!930419))

(declare-fun m!930427 () Bool)

(assert (=> b!1004924 m!930427))

(declare-fun m!930429 () Bool)

(assert (=> bm!42331 m!930429))

(assert (=> b!1004800 d!119437))

(declare-fun d!119441 () Bool)

(declare-fun e!565969 () Bool)

(assert (=> d!119441 e!565969))

(declare-fun c!101473 () Bool)

(declare-fun lt!444400 () SeekEntryResult!9452)

(assert (=> d!119441 (= c!101473 (and (is-Intermediate!9452 lt!444400) (undefined!10264 lt!444400)))))

(declare-fun e!565970 () SeekEntryResult!9452)

(assert (=> d!119441 (= lt!444400 e!565970)))

(declare-fun c!101475 () Bool)

(assert (=> d!119441 (= c!101475 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444401 () (_ BitVec 64))

(assert (=> d!119441 (= lt!444401 (select (arr!30520 a!3219) index!1507))))

(assert (=> d!119441 (validMask!0 mask!3464)))

(assert (=> d!119441 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30520 a!3219) j!170) a!3219 mask!3464) lt!444400)))

(declare-fun b!1005014 () Bool)

(declare-fun e!565968 () SeekEntryResult!9452)

(assert (=> b!1005014 (= e!565970 e!565968)))

(declare-fun c!101474 () Bool)

(assert (=> b!1005014 (= c!101474 (or (= lt!444401 (select (arr!30520 a!3219) j!170)) (= (bvadd lt!444401 lt!444401) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1005015 () Bool)

(assert (=> b!1005015 (and (bvsge (index!40180 lt!444400) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444400) (size!31023 a!3219)))))

(declare-fun e!565971 () Bool)

(assert (=> b!1005015 (= e!565971 (= (select (arr!30520 a!3219) (index!40180 lt!444400)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1005016 () Bool)

(assert (=> b!1005016 (and (bvsge (index!40180 lt!444400) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444400) (size!31023 a!3219)))))

(declare-fun res!674371 () Bool)

(assert (=> b!1005016 (= res!674371 (= (select (arr!30520 a!3219) (index!40180 lt!444400)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005016 (=> res!674371 e!565971)))

(declare-fun b!1005017 () Bool)

(assert (=> b!1005017 (= e!565970 (Intermediate!9452 true index!1507 x!1245))))

(declare-fun b!1005018 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005018 (= e!565968 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30520 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005019 () Bool)

(declare-fun e!565972 () Bool)

(assert (=> b!1005019 (= e!565969 e!565972)))

(declare-fun res!674370 () Bool)

(assert (=> b!1005019 (= res!674370 (and (is-Intermediate!9452 lt!444400) (not (undefined!10264 lt!444400)) (bvslt (x!87615 lt!444400) #b01111111111111111111111111111110) (bvsge (x!87615 lt!444400) #b00000000000000000000000000000000) (bvsge (x!87615 lt!444400) x!1245)))))

(assert (=> b!1005019 (=> (not res!674370) (not e!565972))))

(declare-fun b!1005020 () Bool)

(assert (=> b!1005020 (= e!565969 (bvsge (x!87615 lt!444400) #b01111111111111111111111111111110))))

(declare-fun b!1005021 () Bool)

(assert (=> b!1005021 (and (bvsge (index!40180 lt!444400) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444400) (size!31023 a!3219)))))

(declare-fun res!674372 () Bool)

(assert (=> b!1005021 (= res!674372 (= (select (arr!30520 a!3219) (index!40180 lt!444400)) (select (arr!30520 a!3219) j!170)))))

(assert (=> b!1005021 (=> res!674372 e!565971)))

(assert (=> b!1005021 (= e!565972 e!565971)))

(declare-fun b!1005022 () Bool)

(assert (=> b!1005022 (= e!565968 (Intermediate!9452 false index!1507 x!1245))))

(assert (= (and d!119441 c!101475) b!1005017))

(assert (= (and d!119441 (not c!101475)) b!1005014))

(assert (= (and b!1005014 c!101474) b!1005022))

(assert (= (and b!1005014 (not c!101474)) b!1005018))

(assert (= (and d!119441 c!101473) b!1005020))

(assert (= (and d!119441 (not c!101473)) b!1005019))

(assert (= (and b!1005019 res!674370) b!1005021))

(assert (= (and b!1005021 (not res!674372)) b!1005016))

(assert (= (and b!1005016 (not res!674371)) b!1005015))

(declare-fun m!930467 () Bool)

(assert (=> b!1005018 m!930467))

(assert (=> b!1005018 m!930467))

(assert (=> b!1005018 m!930323))

(declare-fun m!930469 () Bool)

(assert (=> b!1005018 m!930469))

(declare-fun m!930471 () Bool)

(assert (=> b!1005021 m!930471))

(declare-fun m!930473 () Bool)

(assert (=> d!119441 m!930473))

(assert (=> d!119441 m!930329))

(assert (=> b!1005016 m!930471))

(assert (=> b!1005015 m!930471))

(assert (=> b!1004801 d!119441))

(declare-fun d!119457 () Bool)

(assert (=> d!119457 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86698 d!119457))

(declare-fun d!119475 () Bool)

(assert (=> d!119475 (= (array_inv!23510 a!3219) (bvsge (size!31023 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86698 d!119475))

(declare-fun d!119477 () Bool)

(assert (=> d!119477 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004803 d!119477))

(declare-fun d!119479 () Bool)

(declare-fun res!674398 () Bool)

(declare-fun e!566013 () Bool)

(assert (=> d!119479 (=> res!674398 e!566013)))

(assert (=> d!119479 (= res!674398 (bvsge #b00000000000000000000000000000000 (size!31023 a!3219)))))

(assert (=> d!119479 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21319) e!566013)))

(declare-fun b!1005081 () Bool)

(declare-fun e!566010 () Bool)

(declare-fun call!42343 () Bool)

(assert (=> b!1005081 (= e!566010 call!42343)))

(declare-fun b!1005082 () Bool)

(declare-fun e!566012 () Bool)

(assert (=> b!1005082 (= e!566012 e!566010)))

(declare-fun c!101493 () Bool)

(assert (=> b!1005082 (= c!101493 (validKeyInArray!0 (select (arr!30520 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1005083 () Bool)

(declare-fun e!566011 () Bool)

(declare-fun contains!5892 (List!21322 (_ BitVec 64)) Bool)

(assert (=> b!1005083 (= e!566011 (contains!5892 Nil!21319 (select (arr!30520 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42340 () Bool)

(assert (=> bm!42340 (= call!42343 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101493 (Cons!21318 (select (arr!30520 a!3219) #b00000000000000000000000000000000) Nil!21319) Nil!21319)))))

(declare-fun b!1005084 () Bool)

(assert (=> b!1005084 (= e!566010 call!42343)))

(declare-fun b!1005085 () Bool)

(assert (=> b!1005085 (= e!566013 e!566012)))

(declare-fun res!674399 () Bool)

(assert (=> b!1005085 (=> (not res!674399) (not e!566012))))

(assert (=> b!1005085 (= res!674399 (not e!566011))))

(declare-fun res!674400 () Bool)

(assert (=> b!1005085 (=> (not res!674400) (not e!566011))))

(assert (=> b!1005085 (= res!674400 (validKeyInArray!0 (select (arr!30520 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119479 (not res!674398)) b!1005085))

(assert (= (and b!1005085 res!674400) b!1005083))

(assert (= (and b!1005085 res!674399) b!1005082))

(assert (= (and b!1005082 c!101493) b!1005084))

(assert (= (and b!1005082 (not c!101493)) b!1005081))

(assert (= (or b!1005084 b!1005081) bm!42340))

(assert (=> b!1005082 m!930419))

(assert (=> b!1005082 m!930419))

(assert (=> b!1005082 m!930427))

(assert (=> b!1005083 m!930419))

(assert (=> b!1005083 m!930419))

(declare-fun m!930513 () Bool)

(assert (=> b!1005083 m!930513))

(assert (=> bm!42340 m!930419))

(declare-fun m!930515 () Bool)

(assert (=> bm!42340 m!930515))

(assert (=> b!1005085 m!930419))

(assert (=> b!1005085 m!930419))

(assert (=> b!1005085 m!930427))

(assert (=> b!1004804 d!119479))

(declare-fun d!119485 () Bool)

(declare-fun e!566017 () Bool)

(assert (=> d!119485 e!566017))

(declare-fun c!101496 () Bool)

(declare-fun lt!444433 () SeekEntryResult!9452)

(assert (=> d!119485 (= c!101496 (and (is-Intermediate!9452 lt!444433) (undefined!10264 lt!444433)))))

(declare-fun e!566018 () SeekEntryResult!9452)

(assert (=> d!119485 (= lt!444433 e!566018)))

(declare-fun c!101498 () Bool)

(assert (=> d!119485 (= c!101498 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444434 () (_ BitVec 64))

(assert (=> d!119485 (= lt!444434 (select (arr!30520 lt!444316) (toIndex!0 lt!444319 mask!3464)))))

(assert (=> d!119485 (validMask!0 mask!3464)))

(assert (=> d!119485 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444319 mask!3464) lt!444319 lt!444316 mask!3464) lt!444433)))

(declare-fun b!1005094 () Bool)

(declare-fun e!566016 () SeekEntryResult!9452)

(assert (=> b!1005094 (= e!566018 e!566016)))

(declare-fun c!101497 () Bool)

(assert (=> b!1005094 (= c!101497 (or (= lt!444434 lt!444319) (= (bvadd lt!444434 lt!444434) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1005095 () Bool)

(assert (=> b!1005095 (and (bvsge (index!40180 lt!444433) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444433) (size!31023 lt!444316)))))

(declare-fun e!566019 () Bool)

(assert (=> b!1005095 (= e!566019 (= (select (arr!30520 lt!444316) (index!40180 lt!444433)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1005096 () Bool)

(assert (=> b!1005096 (and (bvsge (index!40180 lt!444433) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444433) (size!31023 lt!444316)))))

(declare-fun res!674402 () Bool)

(assert (=> b!1005096 (= res!674402 (= (select (arr!30520 lt!444316) (index!40180 lt!444433)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005096 (=> res!674402 e!566019)))

(declare-fun b!1005097 () Bool)

(assert (=> b!1005097 (= e!566018 (Intermediate!9452 true (toIndex!0 lt!444319 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005098 () Bool)

(assert (=> b!1005098 (= e!566016 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444319 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444319 lt!444316 mask!3464))))

(declare-fun b!1005099 () Bool)

(declare-fun e!566021 () Bool)

(assert (=> b!1005099 (= e!566017 e!566021)))

(declare-fun res!674401 () Bool)

(assert (=> b!1005099 (= res!674401 (and (is-Intermediate!9452 lt!444433) (not (undefined!10264 lt!444433)) (bvslt (x!87615 lt!444433) #b01111111111111111111111111111110) (bvsge (x!87615 lt!444433) #b00000000000000000000000000000000) (bvsge (x!87615 lt!444433) #b00000000000000000000000000000000)))))

(assert (=> b!1005099 (=> (not res!674401) (not e!566021))))

(declare-fun b!1005100 () Bool)

(assert (=> b!1005100 (= e!566017 (bvsge (x!87615 lt!444433) #b01111111111111111111111111111110))))

(declare-fun b!1005101 () Bool)

(assert (=> b!1005101 (and (bvsge (index!40180 lt!444433) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444433) (size!31023 lt!444316)))))

(declare-fun res!674403 () Bool)

(assert (=> b!1005101 (= res!674403 (= (select (arr!30520 lt!444316) (index!40180 lt!444433)) lt!444319))))

(assert (=> b!1005101 (=> res!674403 e!566019)))

(assert (=> b!1005101 (= e!566021 e!566019)))

(declare-fun b!1005102 () Bool)

(assert (=> b!1005102 (= e!566016 (Intermediate!9452 false (toIndex!0 lt!444319 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119485 c!101498) b!1005097))

(assert (= (and d!119485 (not c!101498)) b!1005094))

(assert (= (and b!1005094 c!101497) b!1005102))

(assert (= (and b!1005094 (not c!101497)) b!1005098))

(assert (= (and d!119485 c!101496) b!1005100))

(assert (= (and d!119485 (not c!101496)) b!1005099))

(assert (= (and b!1005099 res!674401) b!1005101))

(assert (= (and b!1005101 (not res!674403)) b!1005096))

(assert (= (and b!1005096 (not res!674402)) b!1005095))

(assert (=> b!1005098 m!930313))

(declare-fun m!930517 () Bool)

(assert (=> b!1005098 m!930517))

(assert (=> b!1005098 m!930517))

(declare-fun m!930519 () Bool)

(assert (=> b!1005098 m!930519))

(declare-fun m!930521 () Bool)

(assert (=> b!1005101 m!930521))

(assert (=> d!119485 m!930313))

(declare-fun m!930523 () Bool)

(assert (=> d!119485 m!930523))

(assert (=> d!119485 m!930329))

(assert (=> b!1005096 m!930521))

(assert (=> b!1005095 m!930521))

(assert (=> b!1004805 d!119485))

(declare-fun d!119489 () Bool)

(declare-fun lt!444447 () (_ BitVec 32))

(declare-fun lt!444446 () (_ BitVec 32))

(assert (=> d!119489 (= lt!444447 (bvmul (bvxor lt!444446 (bvlshr lt!444446 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119489 (= lt!444446 ((_ extract 31 0) (bvand (bvxor lt!444319 (bvlshr lt!444319 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119489 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674408 (let ((h!22503 ((_ extract 31 0) (bvand (bvxor lt!444319 (bvlshr lt!444319 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87623 (bvmul (bvxor h!22503 (bvlshr h!22503 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87623 (bvlshr x!87623 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674408 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674408 #b00000000000000000000000000000000))))))

(assert (=> d!119489 (= (toIndex!0 lt!444319 mask!3464) (bvand (bvxor lt!444447 (bvlshr lt!444447 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004805 d!119489))

(declare-fun d!119499 () Bool)

(declare-fun e!566040 () Bool)

(assert (=> d!119499 e!566040))

(declare-fun c!101509 () Bool)

(declare-fun lt!444448 () SeekEntryResult!9452)

(assert (=> d!119499 (= c!101509 (and (is-Intermediate!9452 lt!444448) (undefined!10264 lt!444448)))))

(declare-fun e!566041 () SeekEntryResult!9452)

(assert (=> d!119499 (= lt!444448 e!566041)))

(declare-fun c!101511 () Bool)

(assert (=> d!119499 (= c!101511 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444449 () (_ BitVec 64))

(assert (=> d!119499 (= lt!444449 (select (arr!30520 lt!444316) index!1507))))

(assert (=> d!119499 (validMask!0 mask!3464)))

(assert (=> d!119499 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444319 lt!444316 mask!3464) lt!444448)))

(declare-fun b!1005128 () Bool)

(declare-fun e!566039 () SeekEntryResult!9452)

(assert (=> b!1005128 (= e!566041 e!566039)))

(declare-fun c!101510 () Bool)

(assert (=> b!1005128 (= c!101510 (or (= lt!444449 lt!444319) (= (bvadd lt!444449 lt!444449) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1005129 () Bool)

(assert (=> b!1005129 (and (bvsge (index!40180 lt!444448) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444448) (size!31023 lt!444316)))))

(declare-fun e!566042 () Bool)

(assert (=> b!1005129 (= e!566042 (= (select (arr!30520 lt!444316) (index!40180 lt!444448)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1005130 () Bool)

(assert (=> b!1005130 (and (bvsge (index!40180 lt!444448) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444448) (size!31023 lt!444316)))))

(declare-fun res!674415 () Bool)

(assert (=> b!1005130 (= res!674415 (= (select (arr!30520 lt!444316) (index!40180 lt!444448)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005130 (=> res!674415 e!566042)))

(declare-fun b!1005131 () Bool)

(assert (=> b!1005131 (= e!566041 (Intermediate!9452 true index!1507 x!1245))))

(declare-fun b!1005132 () Bool)

(assert (=> b!1005132 (= e!566039 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444319 lt!444316 mask!3464))))

(declare-fun b!1005133 () Bool)

(declare-fun e!566043 () Bool)

(assert (=> b!1005133 (= e!566040 e!566043)))

(declare-fun res!674414 () Bool)

(assert (=> b!1005133 (= res!674414 (and (is-Intermediate!9452 lt!444448) (not (undefined!10264 lt!444448)) (bvslt (x!87615 lt!444448) #b01111111111111111111111111111110) (bvsge (x!87615 lt!444448) #b00000000000000000000000000000000) (bvsge (x!87615 lt!444448) x!1245)))))

(assert (=> b!1005133 (=> (not res!674414) (not e!566043))))

(declare-fun b!1005134 () Bool)

(assert (=> b!1005134 (= e!566040 (bvsge (x!87615 lt!444448) #b01111111111111111111111111111110))))

(declare-fun b!1005135 () Bool)

(assert (=> b!1005135 (and (bvsge (index!40180 lt!444448) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444448) (size!31023 lt!444316)))))

(declare-fun res!674416 () Bool)

(assert (=> b!1005135 (= res!674416 (= (select (arr!30520 lt!444316) (index!40180 lt!444448)) lt!444319))))

(assert (=> b!1005135 (=> res!674416 e!566042)))

(assert (=> b!1005135 (= e!566043 e!566042)))

(declare-fun b!1005136 () Bool)

(assert (=> b!1005136 (= e!566039 (Intermediate!9452 false index!1507 x!1245))))

(assert (= (and d!119499 c!101511) b!1005131))

(assert (= (and d!119499 (not c!101511)) b!1005128))

(assert (= (and b!1005128 c!101510) b!1005136))

(assert (= (and b!1005128 (not c!101510)) b!1005132))

(assert (= (and d!119499 c!101509) b!1005134))

(assert (= (and d!119499 (not c!101509)) b!1005133))

(assert (= (and b!1005133 res!674414) b!1005135))

(assert (= (and b!1005135 (not res!674416)) b!1005130))

(assert (= (and b!1005130 (not res!674415)) b!1005129))

(assert (=> b!1005132 m!930467))

(assert (=> b!1005132 m!930467))

(declare-fun m!930549 () Bool)

(assert (=> b!1005132 m!930549))

(declare-fun m!930551 () Bool)

(assert (=> b!1005135 m!930551))

(declare-fun m!930553 () Bool)

(assert (=> d!119499 m!930553))

(assert (=> d!119499 m!930329))

(assert (=> b!1005130 m!930551))

(assert (=> b!1005129 m!930551))

(assert (=> b!1004806 d!119499))

(declare-fun d!119501 () Bool)

(declare-fun e!566045 () Bool)

(assert (=> d!119501 e!566045))

(declare-fun c!101512 () Bool)

(declare-fun lt!444450 () SeekEntryResult!9452)

(assert (=> d!119501 (= c!101512 (and (is-Intermediate!9452 lt!444450) (undefined!10264 lt!444450)))))

(declare-fun e!566046 () SeekEntryResult!9452)

(assert (=> d!119501 (= lt!444450 e!566046)))

(declare-fun c!101514 () Bool)

(assert (=> d!119501 (= c!101514 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444451 () (_ BitVec 64))

(assert (=> d!119501 (= lt!444451 (select (arr!30520 a!3219) (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464)))))

(assert (=> d!119501 (validMask!0 mask!3464)))

(assert (=> d!119501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464) (select (arr!30520 a!3219) j!170) a!3219 mask!3464) lt!444450)))

(declare-fun b!1005137 () Bool)

(declare-fun e!566044 () SeekEntryResult!9452)

(assert (=> b!1005137 (= e!566046 e!566044)))

(declare-fun c!101513 () Bool)

(assert (=> b!1005137 (= c!101513 (or (= lt!444451 (select (arr!30520 a!3219) j!170)) (= (bvadd lt!444451 lt!444451) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1005138 () Bool)

(assert (=> b!1005138 (and (bvsge (index!40180 lt!444450) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444450) (size!31023 a!3219)))))

(declare-fun e!566047 () Bool)

(assert (=> b!1005138 (= e!566047 (= (select (arr!30520 a!3219) (index!40180 lt!444450)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1005139 () Bool)

(assert (=> b!1005139 (and (bvsge (index!40180 lt!444450) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444450) (size!31023 a!3219)))))

(declare-fun res!674418 () Bool)

(assert (=> b!1005139 (= res!674418 (= (select (arr!30520 a!3219) (index!40180 lt!444450)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005139 (=> res!674418 e!566047)))

(declare-fun b!1005140 () Bool)

(assert (=> b!1005140 (= e!566046 (Intermediate!9452 true (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005141 () Bool)

(assert (=> b!1005141 (= e!566044 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30520 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005142 () Bool)

(declare-fun e!566048 () Bool)

(assert (=> b!1005142 (= e!566045 e!566048)))

(declare-fun res!674417 () Bool)

(assert (=> b!1005142 (= res!674417 (and (is-Intermediate!9452 lt!444450) (not (undefined!10264 lt!444450)) (bvslt (x!87615 lt!444450) #b01111111111111111111111111111110) (bvsge (x!87615 lt!444450) #b00000000000000000000000000000000) (bvsge (x!87615 lt!444450) #b00000000000000000000000000000000)))))

(assert (=> b!1005142 (=> (not res!674417) (not e!566048))))

(declare-fun b!1005143 () Bool)

(assert (=> b!1005143 (= e!566045 (bvsge (x!87615 lt!444450) #b01111111111111111111111111111110))))

(declare-fun b!1005144 () Bool)

(assert (=> b!1005144 (and (bvsge (index!40180 lt!444450) #b00000000000000000000000000000000) (bvslt (index!40180 lt!444450) (size!31023 a!3219)))))

(declare-fun res!674419 () Bool)

(assert (=> b!1005144 (= res!674419 (= (select (arr!30520 a!3219) (index!40180 lt!444450)) (select (arr!30520 a!3219) j!170)))))

(assert (=> b!1005144 (=> res!674419 e!566047)))

(assert (=> b!1005144 (= e!566048 e!566047)))

(declare-fun b!1005145 () Bool)

(assert (=> b!1005145 (= e!566044 (Intermediate!9452 false (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119501 c!101514) b!1005140))

(assert (= (and d!119501 (not c!101514)) b!1005137))

(assert (= (and b!1005137 c!101513) b!1005145))

(assert (= (and b!1005137 (not c!101513)) b!1005141))

(assert (= (and d!119501 c!101512) b!1005143))

(assert (= (and d!119501 (not c!101512)) b!1005142))

(assert (= (and b!1005142 res!674417) b!1005144))

(assert (= (and b!1005144 (not res!674419)) b!1005139))

(assert (= (and b!1005139 (not res!674418)) b!1005138))

(assert (=> b!1005141 m!930333))

(declare-fun m!930555 () Bool)

(assert (=> b!1005141 m!930555))

(assert (=> b!1005141 m!930555))

(assert (=> b!1005141 m!930323))

(declare-fun m!930557 () Bool)

(assert (=> b!1005141 m!930557))

(declare-fun m!930559 () Bool)

(assert (=> b!1005144 m!930559))

(assert (=> d!119501 m!930333))

(declare-fun m!930561 () Bool)

(assert (=> d!119501 m!930561))

(assert (=> d!119501 m!930329))

(assert (=> b!1005139 m!930559))

(assert (=> b!1005138 m!930559))

(assert (=> b!1004807 d!119501))

(declare-fun d!119503 () Bool)

(declare-fun lt!444453 () (_ BitVec 32))

(declare-fun lt!444452 () (_ BitVec 32))

(assert (=> d!119503 (= lt!444453 (bvmul (bvxor lt!444452 (bvlshr lt!444452 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119503 (= lt!444452 ((_ extract 31 0) (bvand (bvxor (select (arr!30520 a!3219) j!170) (bvlshr (select (arr!30520 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119503 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674408 (let ((h!22503 ((_ extract 31 0) (bvand (bvxor (select (arr!30520 a!3219) j!170) (bvlshr (select (arr!30520 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87623 (bvmul (bvxor h!22503 (bvlshr h!22503 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87623 (bvlshr x!87623 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674408 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674408 #b00000000000000000000000000000000))))))

(assert (=> d!119503 (= (toIndex!0 (select (arr!30520 a!3219) j!170) mask!3464) (bvand (bvxor lt!444453 (bvlshr lt!444453 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004807 d!119503))

(declare-fun d!119505 () Bool)

(assert (=> d!119505 (= (validKeyInArray!0 (select (arr!30520 a!3219) j!170)) (and (not (= (select (arr!30520 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30520 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004797 d!119505))

(declare-fun d!119507 () Bool)

(declare-fun res!674430 () Bool)

(declare-fun e!566061 () Bool)

(assert (=> d!119507 (=> res!674430 e!566061)))

(assert (=> d!119507 (= res!674430 (= (select (arr!30520 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119507 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!566061)))

(declare-fun b!1005160 () Bool)

(declare-fun e!566062 () Bool)

(assert (=> b!1005160 (= e!566061 e!566062)))

(declare-fun res!674431 () Bool)

(assert (=> b!1005160 (=> (not res!674431) (not e!566062))))

(assert (=> b!1005160 (= res!674431 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31023 a!3219)))))

(declare-fun b!1005161 () Bool)

(assert (=> b!1005161 (= e!566062 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119507 (not res!674430)) b!1005160))

(assert (= (and b!1005160 res!674431) b!1005161))

(assert (=> d!119507 m!930419))

(declare-fun m!930563 () Bool)

(assert (=> b!1005161 m!930563))

(assert (=> b!1004809 d!119507))

(declare-fun b!1005197 () Bool)

(declare-fun e!566089 () SeekEntryResult!9452)

(declare-fun e!566088 () SeekEntryResult!9452)

(assert (=> b!1005197 (= e!566089 e!566088)))

(declare-fun lt!444469 () (_ BitVec 64))

(declare-fun lt!444470 () SeekEntryResult!9452)

(assert (=> b!1005197 (= lt!444469 (select (arr!30520 a!3219) (index!40180 lt!444470)))))

(declare-fun c!101528 () Bool)

(assert (=> b!1005197 (= c!101528 (= lt!444469 k!2224))))

(declare-fun b!1005198 () Bool)

(declare-fun e!566090 () SeekEntryResult!9452)

(assert (=> b!1005198 (= e!566090 (MissingZero!9452 (index!40180 lt!444470)))))

(declare-fun b!1005199 () Bool)

(declare-fun c!101527 () Bool)

(assert (=> b!1005199 (= c!101527 (= lt!444469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005199 (= e!566088 e!566090)))

(declare-fun b!1005200 () Bool)

(assert (=> b!1005200 (= e!566089 Undefined!9452)))

(declare-fun d!119509 () Bool)

(declare-fun lt!444471 () SeekEntryResult!9452)

(assert (=> d!119509 (and (or (is-Undefined!9452 lt!444471) (not (is-Found!9452 lt!444471)) (and (bvsge (index!40179 lt!444471) #b00000000000000000000000000000000) (bvslt (index!40179 lt!444471) (size!31023 a!3219)))) (or (is-Undefined!9452 lt!444471) (is-Found!9452 lt!444471) (not (is-MissingZero!9452 lt!444471)) (and (bvsge (index!40178 lt!444471) #b00000000000000000000000000000000) (bvslt (index!40178 lt!444471) (size!31023 a!3219)))) (or (is-Undefined!9452 lt!444471) (is-Found!9452 lt!444471) (is-MissingZero!9452 lt!444471) (not (is-MissingVacant!9452 lt!444471)) (and (bvsge (index!40181 lt!444471) #b00000000000000000000000000000000) (bvslt (index!40181 lt!444471) (size!31023 a!3219)))) (or (is-Undefined!9452 lt!444471) (ite (is-Found!9452 lt!444471) (= (select (arr!30520 a!3219) (index!40179 lt!444471)) k!2224) (ite (is-MissingZero!9452 lt!444471) (= (select (arr!30520 a!3219) (index!40178 lt!444471)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9452 lt!444471) (= (select (arr!30520 a!3219) (index!40181 lt!444471)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119509 (= lt!444471 e!566089)))

(declare-fun c!101529 () Bool)

(assert (=> d!119509 (= c!101529 (and (is-Intermediate!9452 lt!444470) (undefined!10264 lt!444470)))))

(assert (=> d!119509 (= lt!444470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119509 (validMask!0 mask!3464)))

(assert (=> d!119509 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!444471)))

(declare-fun b!1005201 () Bool)

(assert (=> b!1005201 (= e!566088 (Found!9452 (index!40180 lt!444470)))))

(declare-fun b!1005202 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63400 (_ BitVec 32)) SeekEntryResult!9452)

(assert (=> b!1005202 (= e!566090 (seekKeyOrZeroReturnVacant!0 (x!87615 lt!444470) (index!40180 lt!444470) (index!40180 lt!444470) k!2224 a!3219 mask!3464))))

(assert (= (and d!119509 c!101529) b!1005200))

(assert (= (and d!119509 (not c!101529)) b!1005197))

(assert (= (and b!1005197 c!101528) b!1005201))

(assert (= (and b!1005197 (not c!101528)) b!1005199))

(assert (= (and b!1005199 c!101527) b!1005198))

(assert (= (and b!1005199 (not c!101527)) b!1005202))

(declare-fun m!930583 () Bool)

(assert (=> b!1005197 m!930583))

(declare-fun m!930585 () Bool)

(assert (=> d!119509 m!930585))

(declare-fun m!930587 () Bool)

(assert (=> d!119509 m!930587))

(declare-fun m!930589 () Bool)

(assert (=> d!119509 m!930589))

(declare-fun m!930591 () Bool)

(assert (=> d!119509 m!930591))

(declare-fun m!930593 () Bool)

(assert (=> d!119509 m!930593))

(assert (=> d!119509 m!930329))

(assert (=> d!119509 m!930585))

(declare-fun m!930595 () Bool)

(assert (=> b!1005202 m!930595))

(assert (=> b!1004799 d!119509))

(push 1)

(assert (not b!1004924))

(assert (not b!1004923))

(assert (not b!1005083))

(assert (not d!119485))

(assert (not b!1005132))

(assert (not bm!42340))

(assert (not d!119441))

(assert (not d!119501))

(assert (not b!1005161))

(assert (not b!1005085))

(assert (not b!1005098))

(assert (not b!1005141))

(assert (not b!1005202))

(assert (not bm!42331))

(assert (not b!1005018))

(assert (not d!119509))

(assert (not b!1005082))

(assert (not d!119499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

