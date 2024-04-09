; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87240 () Bool)

(assert start!87240)

(declare-fun b!1011001 () Bool)

(declare-fun e!568798 () Bool)

(declare-fun e!568792 () Bool)

(assert (=> b!1011001 (= e!568798 e!568792)))

(declare-fun res!679282 () Bool)

(assert (=> b!1011001 (=> (not res!679282) (not e!568792))))

(declare-datatypes ((SeekEntryResult!9567 0))(
  ( (MissingZero!9567 (index!40638 (_ BitVec 32))) (Found!9567 (index!40639 (_ BitVec 32))) (Intermediate!9567 (undefined!10379 Bool) (index!40640 (_ BitVec 32)) (x!88079 (_ BitVec 32))) (Undefined!9567) (MissingVacant!9567 (index!40641 (_ BitVec 32))) )
))
(declare-fun lt!446849 () SeekEntryResult!9567)

(declare-fun lt!446848 () SeekEntryResult!9567)

(assert (=> b!1011001 (= res!679282 (= lt!446849 lt!446848))))

(declare-datatypes ((array!63645 0))(
  ( (array!63646 (arr!30635 (Array (_ BitVec 32) (_ BitVec 64))) (size!31138 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63645)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63645 (_ BitVec 32)) SeekEntryResult!9567)

(assert (=> b!1011001 (= lt!446849 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30635 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011002 () Bool)

(declare-fun res!679292 () Bool)

(declare-fun e!568795 () Bool)

(assert (=> b!1011002 (=> (not res!679292) (not e!568795))))

(declare-datatypes ((List!21437 0))(
  ( (Nil!21434) (Cons!21433 (h!22628 (_ BitVec 64)) (t!30446 List!21437)) )
))
(declare-fun arrayNoDuplicates!0 (array!63645 (_ BitVec 32) List!21437) Bool)

(assert (=> b!1011002 (= res!679292 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21434))))

(declare-fun b!1011004 () Bool)

(declare-fun e!568794 () Bool)

(assert (=> b!1011004 (= e!568792 e!568794)))

(declare-fun res!679286 () Bool)

(assert (=> b!1011004 (=> (not res!679286) (not e!568794))))

(declare-fun lt!446850 () SeekEntryResult!9567)

(declare-fun lt!446846 () array!63645)

(declare-fun lt!446847 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011004 (= res!679286 (not (= lt!446850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446847 mask!3464) lt!446847 lt!446846 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1011004 (= lt!446847 (select (store (arr!30635 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1011004 (= lt!446846 (array!63646 (store (arr!30635 a!3219) i!1194 k0!2224) (size!31138 a!3219)))))

(declare-fun b!1011005 () Bool)

(declare-fun e!568799 () Bool)

(declare-fun e!568796 () Bool)

(assert (=> b!1011005 (= e!568799 e!568796)))

(declare-fun res!679294 () Bool)

(assert (=> b!1011005 (=> (not res!679294) (not e!568796))))

(declare-fun lt!446843 () SeekEntryResult!9567)

(assert (=> b!1011005 (= res!679294 (= lt!446843 lt!446848))))

(declare-fun lt!446844 () (_ BitVec 32))

(assert (=> b!1011005 (= lt!446843 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446844 (select (arr!30635 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011006 () Bool)

(declare-fun res!679284 () Bool)

(declare-fun e!568793 () Bool)

(assert (=> b!1011006 (=> (not res!679284) (not e!568793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011006 (= res!679284 (validKeyInArray!0 (select (arr!30635 a!3219) j!170)))))

(declare-fun b!1011007 () Bool)

(declare-fun res!679295 () Bool)

(assert (=> b!1011007 (=> (not res!679295) (not e!568793))))

(assert (=> b!1011007 (= res!679295 (and (= (size!31138 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31138 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31138 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011008 () Bool)

(declare-fun res!679283 () Bool)

(assert (=> b!1011008 (=> (not res!679283) (not e!568794))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1011008 (= res!679283 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1011009 () Bool)

(assert (=> b!1011009 (= e!568796 (= lt!446843 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446844 lt!446847 lt!446846 mask!3464)))))

(declare-fun b!1011010 () Bool)

(declare-fun res!679289 () Bool)

(assert (=> b!1011010 (=> (not res!679289) (not e!568793))))

(assert (=> b!1011010 (= res!679289 (validKeyInArray!0 k0!2224))))

(declare-fun b!1011011 () Bool)

(assert (=> b!1011011 (= e!568793 e!568795)))

(declare-fun res!679291 () Bool)

(assert (=> b!1011011 (=> (not res!679291) (not e!568795))))

(declare-fun lt!446845 () SeekEntryResult!9567)

(assert (=> b!1011011 (= res!679291 (or (= lt!446845 (MissingVacant!9567 i!1194)) (= lt!446845 (MissingZero!9567 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63645 (_ BitVec 32)) SeekEntryResult!9567)

(assert (=> b!1011011 (= lt!446845 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1011012 () Bool)

(declare-fun res!679285 () Bool)

(assert (=> b!1011012 (=> (not res!679285) (not e!568794))))

(assert (=> b!1011012 (= res!679285 (not (= lt!446849 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446847 lt!446846 mask!3464))))))

(declare-fun b!1011013 () Bool)

(declare-fun res!679288 () Bool)

(assert (=> b!1011013 (=> (not res!679288) (not e!568795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63645 (_ BitVec 32)) Bool)

(assert (=> b!1011013 (= res!679288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!679290 () Bool)

(assert (=> start!87240 (=> (not res!679290) (not e!568793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87240 (= res!679290 (validMask!0 mask!3464))))

(assert (=> start!87240 e!568793))

(declare-fun array_inv!23625 (array!63645) Bool)

(assert (=> start!87240 (array_inv!23625 a!3219)))

(assert (=> start!87240 true))

(declare-fun b!1011003 () Bool)

(declare-fun res!679297 () Bool)

(assert (=> b!1011003 (=> (not res!679297) (not e!568795))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1011003 (= res!679297 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31138 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31138 a!3219))))))

(declare-fun b!1011014 () Bool)

(assert (=> b!1011014 (= e!568795 e!568798)))

(declare-fun res!679287 () Bool)

(assert (=> b!1011014 (=> (not res!679287) (not e!568798))))

(assert (=> b!1011014 (= res!679287 (= lt!446850 lt!446848))))

(assert (=> b!1011014 (= lt!446848 (Intermediate!9567 false resIndex!38 resX!38))))

(assert (=> b!1011014 (= lt!446850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464) (select (arr!30635 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011015 () Bool)

(assert (=> b!1011015 (= e!568794 e!568799)))

(declare-fun res!679296 () Bool)

(assert (=> b!1011015 (=> (not res!679296) (not e!568799))))

(assert (=> b!1011015 (= res!679296 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446844 #b00000000000000000000000000000000) (bvslt lt!446844 (size!31138 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011015 (= lt!446844 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011016 () Bool)

(declare-fun res!679293 () Bool)

(assert (=> b!1011016 (=> (not res!679293) (not e!568793))))

(declare-fun arrayContainsKey!0 (array!63645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011016 (= res!679293 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!87240 res!679290) b!1011007))

(assert (= (and b!1011007 res!679295) b!1011006))

(assert (= (and b!1011006 res!679284) b!1011010))

(assert (= (and b!1011010 res!679289) b!1011016))

(assert (= (and b!1011016 res!679293) b!1011011))

(assert (= (and b!1011011 res!679291) b!1011013))

(assert (= (and b!1011013 res!679288) b!1011002))

(assert (= (and b!1011002 res!679292) b!1011003))

(assert (= (and b!1011003 res!679297) b!1011014))

(assert (= (and b!1011014 res!679287) b!1011001))

(assert (= (and b!1011001 res!679282) b!1011004))

(assert (= (and b!1011004 res!679286) b!1011012))

(assert (= (and b!1011012 res!679285) b!1011008))

(assert (= (and b!1011008 res!679283) b!1011015))

(assert (= (and b!1011015 res!679296) b!1011005))

(assert (= (and b!1011005 res!679294) b!1011009))

(declare-fun m!935269 () Bool)

(assert (=> b!1011010 m!935269))

(declare-fun m!935271 () Bool)

(assert (=> b!1011013 m!935271))

(declare-fun m!935273 () Bool)

(assert (=> b!1011016 m!935273))

(declare-fun m!935275 () Bool)

(assert (=> b!1011002 m!935275))

(declare-fun m!935277 () Bool)

(assert (=> b!1011005 m!935277))

(assert (=> b!1011005 m!935277))

(declare-fun m!935279 () Bool)

(assert (=> b!1011005 m!935279))

(assert (=> b!1011001 m!935277))

(assert (=> b!1011001 m!935277))

(declare-fun m!935281 () Bool)

(assert (=> b!1011001 m!935281))

(assert (=> b!1011006 m!935277))

(assert (=> b!1011006 m!935277))

(declare-fun m!935283 () Bool)

(assert (=> b!1011006 m!935283))

(declare-fun m!935285 () Bool)

(assert (=> b!1011009 m!935285))

(declare-fun m!935287 () Bool)

(assert (=> b!1011012 m!935287))

(declare-fun m!935289 () Bool)

(assert (=> b!1011011 m!935289))

(declare-fun m!935291 () Bool)

(assert (=> b!1011004 m!935291))

(assert (=> b!1011004 m!935291))

(declare-fun m!935293 () Bool)

(assert (=> b!1011004 m!935293))

(declare-fun m!935295 () Bool)

(assert (=> b!1011004 m!935295))

(declare-fun m!935297 () Bool)

(assert (=> b!1011004 m!935297))

(assert (=> b!1011014 m!935277))

(assert (=> b!1011014 m!935277))

(declare-fun m!935299 () Bool)

(assert (=> b!1011014 m!935299))

(assert (=> b!1011014 m!935299))

(assert (=> b!1011014 m!935277))

(declare-fun m!935301 () Bool)

(assert (=> b!1011014 m!935301))

(declare-fun m!935303 () Bool)

(assert (=> b!1011015 m!935303))

(declare-fun m!935305 () Bool)

(assert (=> start!87240 m!935305))

(declare-fun m!935307 () Bool)

(assert (=> start!87240 m!935307))

(check-sat (not b!1011004) (not b!1011013) (not b!1011006) (not b!1011009) (not b!1011005) (not b!1011011) (not b!1011015) (not b!1011012) (not start!87240) (not b!1011001) (not b!1011010) (not b!1011016) (not b!1011014) (not b!1011002))
(check-sat)
(get-model)

(declare-fun d!120061 () Bool)

(declare-fun res!679353 () Bool)

(declare-fun e!568835 () Bool)

(assert (=> d!120061 (=> res!679353 e!568835)))

(assert (=> d!120061 (= res!679353 (bvsge #b00000000000000000000000000000000 (size!31138 a!3219)))))

(assert (=> d!120061 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21434) e!568835)))

(declare-fun b!1011075 () Bool)

(declare-fun e!568832 () Bool)

(declare-fun e!568834 () Bool)

(assert (=> b!1011075 (= e!568832 e!568834)))

(declare-fun c!102024 () Bool)

(assert (=> b!1011075 (= c!102024 (validKeyInArray!0 (select (arr!30635 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1011076 () Bool)

(declare-fun call!42430 () Bool)

(assert (=> b!1011076 (= e!568834 call!42430)))

(declare-fun b!1011077 () Bool)

(assert (=> b!1011077 (= e!568834 call!42430)))

(declare-fun b!1011078 () Bool)

(declare-fun e!568833 () Bool)

(declare-fun contains!5906 (List!21437 (_ BitVec 64)) Bool)

(assert (=> b!1011078 (= e!568833 (contains!5906 Nil!21434 (select (arr!30635 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42427 () Bool)

(assert (=> bm!42427 (= call!42430 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!102024 (Cons!21433 (select (arr!30635 a!3219) #b00000000000000000000000000000000) Nil!21434) Nil!21434)))))

(declare-fun b!1011079 () Bool)

(assert (=> b!1011079 (= e!568835 e!568832)))

(declare-fun res!679354 () Bool)

(assert (=> b!1011079 (=> (not res!679354) (not e!568832))))

(assert (=> b!1011079 (= res!679354 (not e!568833))))

(declare-fun res!679352 () Bool)

(assert (=> b!1011079 (=> (not res!679352) (not e!568833))))

(assert (=> b!1011079 (= res!679352 (validKeyInArray!0 (select (arr!30635 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!120061 (not res!679353)) b!1011079))

(assert (= (and b!1011079 res!679352) b!1011078))

(assert (= (and b!1011079 res!679354) b!1011075))

(assert (= (and b!1011075 c!102024) b!1011077))

(assert (= (and b!1011075 (not c!102024)) b!1011076))

(assert (= (or b!1011077 b!1011076) bm!42427))

(declare-fun m!935349 () Bool)

(assert (=> b!1011075 m!935349))

(assert (=> b!1011075 m!935349))

(declare-fun m!935351 () Bool)

(assert (=> b!1011075 m!935351))

(assert (=> b!1011078 m!935349))

(assert (=> b!1011078 m!935349))

(declare-fun m!935353 () Bool)

(assert (=> b!1011078 m!935353))

(assert (=> bm!42427 m!935349))

(declare-fun m!935355 () Bool)

(assert (=> bm!42427 m!935355))

(assert (=> b!1011079 m!935349))

(assert (=> b!1011079 m!935349))

(assert (=> b!1011079 m!935351))

(assert (=> b!1011002 d!120061))

(declare-fun b!1011098 () Bool)

(declare-fun lt!446880 () SeekEntryResult!9567)

(assert (=> b!1011098 (and (bvsge (index!40640 lt!446880) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446880) (size!31138 a!3219)))))

(declare-fun res!679361 () Bool)

(assert (=> b!1011098 (= res!679361 (= (select (arr!30635 a!3219) (index!40640 lt!446880)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568848 () Bool)

(assert (=> b!1011098 (=> res!679361 e!568848)))

(declare-fun b!1011099 () Bool)

(declare-fun e!568849 () SeekEntryResult!9567)

(assert (=> b!1011099 (= e!568849 (Intermediate!9567 false index!1507 x!1245))))

(declare-fun b!1011100 () Bool)

(declare-fun e!568846 () Bool)

(declare-fun e!568850 () Bool)

(assert (=> b!1011100 (= e!568846 e!568850)))

(declare-fun res!679362 () Bool)

(get-info :version)

(assert (=> b!1011100 (= res!679362 (and ((_ is Intermediate!9567) lt!446880) (not (undefined!10379 lt!446880)) (bvslt (x!88079 lt!446880) #b01111111111111111111111111111110) (bvsge (x!88079 lt!446880) #b00000000000000000000000000000000) (bvsge (x!88079 lt!446880) x!1245)))))

(assert (=> b!1011100 (=> (not res!679362) (not e!568850))))

(declare-fun b!1011101 () Bool)

(assert (=> b!1011101 (= e!568846 (bvsge (x!88079 lt!446880) #b01111111111111111111111111111110))))

(declare-fun b!1011102 () Bool)

(assert (=> b!1011102 (and (bvsge (index!40640 lt!446880) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446880) (size!31138 a!3219)))))

(assert (=> b!1011102 (= e!568848 (= (select (arr!30635 a!3219) (index!40640 lt!446880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011103 () Bool)

(assert (=> b!1011103 (and (bvsge (index!40640 lt!446880) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446880) (size!31138 a!3219)))))

(declare-fun res!679363 () Bool)

(assert (=> b!1011103 (= res!679363 (= (select (arr!30635 a!3219) (index!40640 lt!446880)) (select (arr!30635 a!3219) j!170)))))

(assert (=> b!1011103 (=> res!679363 e!568848)))

(assert (=> b!1011103 (= e!568850 e!568848)))

(declare-fun b!1011104 () Bool)

(assert (=> b!1011104 (= e!568849 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30635 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011105 () Bool)

(declare-fun e!568847 () SeekEntryResult!9567)

(assert (=> b!1011105 (= e!568847 e!568849)))

(declare-fun c!102031 () Bool)

(declare-fun lt!446879 () (_ BitVec 64))

(assert (=> b!1011105 (= c!102031 (or (= lt!446879 (select (arr!30635 a!3219) j!170)) (= (bvadd lt!446879 lt!446879) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120063 () Bool)

(assert (=> d!120063 e!568846))

(declare-fun c!102033 () Bool)

(assert (=> d!120063 (= c!102033 (and ((_ is Intermediate!9567) lt!446880) (undefined!10379 lt!446880)))))

(assert (=> d!120063 (= lt!446880 e!568847)))

(declare-fun c!102032 () Bool)

(assert (=> d!120063 (= c!102032 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!120063 (= lt!446879 (select (arr!30635 a!3219) index!1507))))

(assert (=> d!120063 (validMask!0 mask!3464)))

(assert (=> d!120063 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30635 a!3219) j!170) a!3219 mask!3464) lt!446880)))

(declare-fun b!1011106 () Bool)

(assert (=> b!1011106 (= e!568847 (Intermediate!9567 true index!1507 x!1245))))

(assert (= (and d!120063 c!102032) b!1011106))

(assert (= (and d!120063 (not c!102032)) b!1011105))

(assert (= (and b!1011105 c!102031) b!1011099))

(assert (= (and b!1011105 (not c!102031)) b!1011104))

(assert (= (and d!120063 c!102033) b!1011101))

(assert (= (and d!120063 (not c!102033)) b!1011100))

(assert (= (and b!1011100 res!679362) b!1011103))

(assert (= (and b!1011103 (not res!679363)) b!1011098))

(assert (= (and b!1011098 (not res!679361)) b!1011102))

(declare-fun m!935357 () Bool)

(assert (=> b!1011098 m!935357))

(assert (=> b!1011103 m!935357))

(assert (=> b!1011102 m!935357))

(assert (=> b!1011104 m!935303))

(assert (=> b!1011104 m!935303))

(assert (=> b!1011104 m!935277))

(declare-fun m!935359 () Bool)

(assert (=> b!1011104 m!935359))

(declare-fun m!935361 () Bool)

(assert (=> d!120063 m!935361))

(assert (=> d!120063 m!935305))

(assert (=> b!1011001 d!120063))

(declare-fun b!1011107 () Bool)

(declare-fun lt!446882 () SeekEntryResult!9567)

(assert (=> b!1011107 (and (bvsge (index!40640 lt!446882) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446882) (size!31138 lt!446846)))))

(declare-fun res!679364 () Bool)

(assert (=> b!1011107 (= res!679364 (= (select (arr!30635 lt!446846) (index!40640 lt!446882)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568853 () Bool)

(assert (=> b!1011107 (=> res!679364 e!568853)))

(declare-fun b!1011108 () Bool)

(declare-fun e!568854 () SeekEntryResult!9567)

(assert (=> b!1011108 (= e!568854 (Intermediate!9567 false index!1507 x!1245))))

(declare-fun b!1011109 () Bool)

(declare-fun e!568851 () Bool)

(declare-fun e!568855 () Bool)

(assert (=> b!1011109 (= e!568851 e!568855)))

(declare-fun res!679365 () Bool)

(assert (=> b!1011109 (= res!679365 (and ((_ is Intermediate!9567) lt!446882) (not (undefined!10379 lt!446882)) (bvslt (x!88079 lt!446882) #b01111111111111111111111111111110) (bvsge (x!88079 lt!446882) #b00000000000000000000000000000000) (bvsge (x!88079 lt!446882) x!1245)))))

(assert (=> b!1011109 (=> (not res!679365) (not e!568855))))

(declare-fun b!1011110 () Bool)

(assert (=> b!1011110 (= e!568851 (bvsge (x!88079 lt!446882) #b01111111111111111111111111111110))))

(declare-fun b!1011111 () Bool)

(assert (=> b!1011111 (and (bvsge (index!40640 lt!446882) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446882) (size!31138 lt!446846)))))

(assert (=> b!1011111 (= e!568853 (= (select (arr!30635 lt!446846) (index!40640 lt!446882)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011112 () Bool)

(assert (=> b!1011112 (and (bvsge (index!40640 lt!446882) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446882) (size!31138 lt!446846)))))

(declare-fun res!679366 () Bool)

(assert (=> b!1011112 (= res!679366 (= (select (arr!30635 lt!446846) (index!40640 lt!446882)) lt!446847))))

(assert (=> b!1011112 (=> res!679366 e!568853)))

(assert (=> b!1011112 (= e!568855 e!568853)))

(declare-fun b!1011113 () Bool)

(assert (=> b!1011113 (= e!568854 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446847 lt!446846 mask!3464))))

(declare-fun b!1011114 () Bool)

(declare-fun e!568852 () SeekEntryResult!9567)

(assert (=> b!1011114 (= e!568852 e!568854)))

(declare-fun c!102034 () Bool)

(declare-fun lt!446881 () (_ BitVec 64))

(assert (=> b!1011114 (= c!102034 (or (= lt!446881 lt!446847) (= (bvadd lt!446881 lt!446881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120065 () Bool)

(assert (=> d!120065 e!568851))

(declare-fun c!102036 () Bool)

(assert (=> d!120065 (= c!102036 (and ((_ is Intermediate!9567) lt!446882) (undefined!10379 lt!446882)))))

(assert (=> d!120065 (= lt!446882 e!568852)))

(declare-fun c!102035 () Bool)

(assert (=> d!120065 (= c!102035 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!120065 (= lt!446881 (select (arr!30635 lt!446846) index!1507))))

(assert (=> d!120065 (validMask!0 mask!3464)))

(assert (=> d!120065 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446847 lt!446846 mask!3464) lt!446882)))

(declare-fun b!1011115 () Bool)

(assert (=> b!1011115 (= e!568852 (Intermediate!9567 true index!1507 x!1245))))

(assert (= (and d!120065 c!102035) b!1011115))

(assert (= (and d!120065 (not c!102035)) b!1011114))

(assert (= (and b!1011114 c!102034) b!1011108))

(assert (= (and b!1011114 (not c!102034)) b!1011113))

(assert (= (and d!120065 c!102036) b!1011110))

(assert (= (and d!120065 (not c!102036)) b!1011109))

(assert (= (and b!1011109 res!679365) b!1011112))

(assert (= (and b!1011112 (not res!679366)) b!1011107))

(assert (= (and b!1011107 (not res!679364)) b!1011111))

(declare-fun m!935363 () Bool)

(assert (=> b!1011107 m!935363))

(assert (=> b!1011112 m!935363))

(assert (=> b!1011111 m!935363))

(assert (=> b!1011113 m!935303))

(assert (=> b!1011113 m!935303))

(declare-fun m!935365 () Bool)

(assert (=> b!1011113 m!935365))

(declare-fun m!935367 () Bool)

(assert (=> d!120065 m!935367))

(assert (=> d!120065 m!935305))

(assert (=> b!1011012 d!120065))

(declare-fun b!1011116 () Bool)

(declare-fun lt!446884 () SeekEntryResult!9567)

(assert (=> b!1011116 (and (bvsge (index!40640 lt!446884) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446884) (size!31138 a!3219)))))

(declare-fun res!679367 () Bool)

(assert (=> b!1011116 (= res!679367 (= (select (arr!30635 a!3219) (index!40640 lt!446884)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568858 () Bool)

(assert (=> b!1011116 (=> res!679367 e!568858)))

(declare-fun b!1011117 () Bool)

(declare-fun e!568859 () SeekEntryResult!9567)

(assert (=> b!1011117 (= e!568859 (Intermediate!9567 false (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1011118 () Bool)

(declare-fun e!568856 () Bool)

(declare-fun e!568860 () Bool)

(assert (=> b!1011118 (= e!568856 e!568860)))

(declare-fun res!679368 () Bool)

(assert (=> b!1011118 (= res!679368 (and ((_ is Intermediate!9567) lt!446884) (not (undefined!10379 lt!446884)) (bvslt (x!88079 lt!446884) #b01111111111111111111111111111110) (bvsge (x!88079 lt!446884) #b00000000000000000000000000000000) (bvsge (x!88079 lt!446884) #b00000000000000000000000000000000)))))

(assert (=> b!1011118 (=> (not res!679368) (not e!568860))))

(declare-fun b!1011119 () Bool)

(assert (=> b!1011119 (= e!568856 (bvsge (x!88079 lt!446884) #b01111111111111111111111111111110))))

(declare-fun b!1011120 () Bool)

(assert (=> b!1011120 (and (bvsge (index!40640 lt!446884) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446884) (size!31138 a!3219)))))

(assert (=> b!1011120 (= e!568858 (= (select (arr!30635 a!3219) (index!40640 lt!446884)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011121 () Bool)

(assert (=> b!1011121 (and (bvsge (index!40640 lt!446884) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446884) (size!31138 a!3219)))))

(declare-fun res!679369 () Bool)

(assert (=> b!1011121 (= res!679369 (= (select (arr!30635 a!3219) (index!40640 lt!446884)) (select (arr!30635 a!3219) j!170)))))

(assert (=> b!1011121 (=> res!679369 e!568858)))

(assert (=> b!1011121 (= e!568860 e!568858)))

(declare-fun b!1011122 () Bool)

(assert (=> b!1011122 (= e!568859 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30635 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011123 () Bool)

(declare-fun e!568857 () SeekEntryResult!9567)

(assert (=> b!1011123 (= e!568857 e!568859)))

(declare-fun lt!446883 () (_ BitVec 64))

(declare-fun c!102037 () Bool)

(assert (=> b!1011123 (= c!102037 (or (= lt!446883 (select (arr!30635 a!3219) j!170)) (= (bvadd lt!446883 lt!446883) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120067 () Bool)

(assert (=> d!120067 e!568856))

(declare-fun c!102039 () Bool)

(assert (=> d!120067 (= c!102039 (and ((_ is Intermediate!9567) lt!446884) (undefined!10379 lt!446884)))))

(assert (=> d!120067 (= lt!446884 e!568857)))

(declare-fun c!102038 () Bool)

(assert (=> d!120067 (= c!102038 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120067 (= lt!446883 (select (arr!30635 a!3219) (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464)))))

(assert (=> d!120067 (validMask!0 mask!3464)))

(assert (=> d!120067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464) (select (arr!30635 a!3219) j!170) a!3219 mask!3464) lt!446884)))

(declare-fun b!1011124 () Bool)

(assert (=> b!1011124 (= e!568857 (Intermediate!9567 true (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!120067 c!102038) b!1011124))

(assert (= (and d!120067 (not c!102038)) b!1011123))

(assert (= (and b!1011123 c!102037) b!1011117))

(assert (= (and b!1011123 (not c!102037)) b!1011122))

(assert (= (and d!120067 c!102039) b!1011119))

(assert (= (and d!120067 (not c!102039)) b!1011118))

(assert (= (and b!1011118 res!679368) b!1011121))

(assert (= (and b!1011121 (not res!679369)) b!1011116))

(assert (= (and b!1011116 (not res!679367)) b!1011120))

(declare-fun m!935369 () Bool)

(assert (=> b!1011116 m!935369))

(assert (=> b!1011121 m!935369))

(assert (=> b!1011120 m!935369))

(assert (=> b!1011122 m!935299))

(declare-fun m!935371 () Bool)

(assert (=> b!1011122 m!935371))

(assert (=> b!1011122 m!935371))

(assert (=> b!1011122 m!935277))

(declare-fun m!935373 () Bool)

(assert (=> b!1011122 m!935373))

(assert (=> d!120067 m!935299))

(declare-fun m!935375 () Bool)

(assert (=> d!120067 m!935375))

(assert (=> d!120067 m!935305))

(assert (=> b!1011014 d!120067))

(declare-fun d!120069 () Bool)

(declare-fun lt!446890 () (_ BitVec 32))

(declare-fun lt!446889 () (_ BitVec 32))

(assert (=> d!120069 (= lt!446890 (bvmul (bvxor lt!446889 (bvlshr lt!446889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120069 (= lt!446889 ((_ extract 31 0) (bvand (bvxor (select (arr!30635 a!3219) j!170) (bvlshr (select (arr!30635 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120069 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679370 (let ((h!22630 ((_ extract 31 0) (bvand (bvxor (select (arr!30635 a!3219) j!170) (bvlshr (select (arr!30635 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88082 (bvmul (bvxor h!22630 (bvlshr h!22630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88082 (bvlshr x!88082 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679370 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679370 #b00000000000000000000000000000000))))))

(assert (=> d!120069 (= (toIndex!0 (select (arr!30635 a!3219) j!170) mask!3464) (bvand (bvxor lt!446890 (bvlshr lt!446890 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1011014 d!120069))

(declare-fun d!120071 () Bool)

(declare-fun res!679381 () Bool)

(declare-fun e!568875 () Bool)

(assert (=> d!120071 (=> res!679381 e!568875)))

(assert (=> d!120071 (= res!679381 (bvsge #b00000000000000000000000000000000 (size!31138 a!3219)))))

(assert (=> d!120071 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568875)))

(declare-fun b!1011143 () Bool)

(declare-fun e!568876 () Bool)

(assert (=> b!1011143 (= e!568875 e!568876)))

(declare-fun c!102044 () Bool)

(assert (=> b!1011143 (= c!102044 (validKeyInArray!0 (select (arr!30635 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42432 () Bool)

(declare-fun call!42435 () Bool)

(assert (=> bm!42432 (= call!42435 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1011144 () Bool)

(assert (=> b!1011144 (= e!568876 call!42435)))

(declare-fun b!1011145 () Bool)

(declare-fun e!568877 () Bool)

(assert (=> b!1011145 (= e!568876 e!568877)))

(declare-fun lt!446902 () (_ BitVec 64))

(assert (=> b!1011145 (= lt!446902 (select (arr!30635 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32978 0))(
  ( (Unit!32979) )
))
(declare-fun lt!446901 () Unit!32978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63645 (_ BitVec 64) (_ BitVec 32)) Unit!32978)

(assert (=> b!1011145 (= lt!446901 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446902 #b00000000000000000000000000000000))))

(assert (=> b!1011145 (arrayContainsKey!0 a!3219 lt!446902 #b00000000000000000000000000000000)))

(declare-fun lt!446900 () Unit!32978)

(assert (=> b!1011145 (= lt!446900 lt!446901)))

(declare-fun res!679382 () Bool)

(assert (=> b!1011145 (= res!679382 (= (seekEntryOrOpen!0 (select (arr!30635 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9567 #b00000000000000000000000000000000)))))

(assert (=> b!1011145 (=> (not res!679382) (not e!568877))))

(declare-fun b!1011146 () Bool)

(assert (=> b!1011146 (= e!568877 call!42435)))

(assert (= (and d!120071 (not res!679381)) b!1011143))

(assert (= (and b!1011143 c!102044) b!1011145))

(assert (= (and b!1011143 (not c!102044)) b!1011144))

(assert (= (and b!1011145 res!679382) b!1011146))

(assert (= (or b!1011146 b!1011144) bm!42432))

(assert (=> b!1011143 m!935349))

(assert (=> b!1011143 m!935349))

(assert (=> b!1011143 m!935351))

(declare-fun m!935379 () Bool)

(assert (=> bm!42432 m!935379))

(assert (=> b!1011145 m!935349))

(declare-fun m!935381 () Bool)

(assert (=> b!1011145 m!935381))

(declare-fun m!935383 () Bool)

(assert (=> b!1011145 m!935383))

(assert (=> b!1011145 m!935349))

(declare-fun m!935385 () Bool)

(assert (=> b!1011145 m!935385))

(assert (=> b!1011013 d!120071))

(declare-fun d!120079 () Bool)

(declare-fun lt!446905 () (_ BitVec 32))

(assert (=> d!120079 (and (bvsge lt!446905 #b00000000000000000000000000000000) (bvslt lt!446905 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!120079 (= lt!446905 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!120079 (validMask!0 mask!3464)))

(assert (=> d!120079 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446905)))

(declare-fun bs!28731 () Bool)

(assert (= bs!28731 d!120079))

(declare-fun m!935395 () Bool)

(assert (=> bs!28731 m!935395))

(assert (=> bs!28731 m!935305))

(assert (=> b!1011015 d!120079))

(declare-fun b!1011152 () Bool)

(declare-fun lt!446907 () SeekEntryResult!9567)

(assert (=> b!1011152 (and (bvsge (index!40640 lt!446907) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446907) (size!31138 lt!446846)))))

(declare-fun res!679386 () Bool)

(assert (=> b!1011152 (= res!679386 (= (select (arr!30635 lt!446846) (index!40640 lt!446907)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568884 () Bool)

(assert (=> b!1011152 (=> res!679386 e!568884)))

(declare-fun b!1011153 () Bool)

(declare-fun e!568885 () SeekEntryResult!9567)

(assert (=> b!1011153 (= e!568885 (Intermediate!9567 false (toIndex!0 lt!446847 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1011154 () Bool)

(declare-fun e!568882 () Bool)

(declare-fun e!568886 () Bool)

(assert (=> b!1011154 (= e!568882 e!568886)))

(declare-fun res!679387 () Bool)

(assert (=> b!1011154 (= res!679387 (and ((_ is Intermediate!9567) lt!446907) (not (undefined!10379 lt!446907)) (bvslt (x!88079 lt!446907) #b01111111111111111111111111111110) (bvsge (x!88079 lt!446907) #b00000000000000000000000000000000) (bvsge (x!88079 lt!446907) #b00000000000000000000000000000000)))))

(assert (=> b!1011154 (=> (not res!679387) (not e!568886))))

(declare-fun b!1011155 () Bool)

(assert (=> b!1011155 (= e!568882 (bvsge (x!88079 lt!446907) #b01111111111111111111111111111110))))

(declare-fun b!1011156 () Bool)

(assert (=> b!1011156 (and (bvsge (index!40640 lt!446907) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446907) (size!31138 lt!446846)))))

(assert (=> b!1011156 (= e!568884 (= (select (arr!30635 lt!446846) (index!40640 lt!446907)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011157 () Bool)

(assert (=> b!1011157 (and (bvsge (index!40640 lt!446907) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446907) (size!31138 lt!446846)))))

(declare-fun res!679388 () Bool)

(assert (=> b!1011157 (= res!679388 (= (select (arr!30635 lt!446846) (index!40640 lt!446907)) lt!446847))))

(assert (=> b!1011157 (=> res!679388 e!568884)))

(assert (=> b!1011157 (= e!568886 e!568884)))

(declare-fun b!1011158 () Bool)

(assert (=> b!1011158 (= e!568885 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446847 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446847 lt!446846 mask!3464))))

(declare-fun b!1011159 () Bool)

(declare-fun e!568883 () SeekEntryResult!9567)

(assert (=> b!1011159 (= e!568883 e!568885)))

(declare-fun c!102046 () Bool)

(declare-fun lt!446906 () (_ BitVec 64))

(assert (=> b!1011159 (= c!102046 (or (= lt!446906 lt!446847) (= (bvadd lt!446906 lt!446906) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120083 () Bool)

(assert (=> d!120083 e!568882))

(declare-fun c!102048 () Bool)

(assert (=> d!120083 (= c!102048 (and ((_ is Intermediate!9567) lt!446907) (undefined!10379 lt!446907)))))

(assert (=> d!120083 (= lt!446907 e!568883)))

(declare-fun c!102047 () Bool)

(assert (=> d!120083 (= c!102047 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120083 (= lt!446906 (select (arr!30635 lt!446846) (toIndex!0 lt!446847 mask!3464)))))

(assert (=> d!120083 (validMask!0 mask!3464)))

(assert (=> d!120083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446847 mask!3464) lt!446847 lt!446846 mask!3464) lt!446907)))

(declare-fun b!1011160 () Bool)

(assert (=> b!1011160 (= e!568883 (Intermediate!9567 true (toIndex!0 lt!446847 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!120083 c!102047) b!1011160))

(assert (= (and d!120083 (not c!102047)) b!1011159))

(assert (= (and b!1011159 c!102046) b!1011153))

(assert (= (and b!1011159 (not c!102046)) b!1011158))

(assert (= (and d!120083 c!102048) b!1011155))

(assert (= (and d!120083 (not c!102048)) b!1011154))

(assert (= (and b!1011154 res!679387) b!1011157))

(assert (= (and b!1011157 (not res!679388)) b!1011152))

(assert (= (and b!1011152 (not res!679386)) b!1011156))

(declare-fun m!935397 () Bool)

(assert (=> b!1011152 m!935397))

(assert (=> b!1011157 m!935397))

(assert (=> b!1011156 m!935397))

(assert (=> b!1011158 m!935291))

(declare-fun m!935399 () Bool)

(assert (=> b!1011158 m!935399))

(assert (=> b!1011158 m!935399))

(declare-fun m!935401 () Bool)

(assert (=> b!1011158 m!935401))

(assert (=> d!120083 m!935291))

(declare-fun m!935403 () Bool)

(assert (=> d!120083 m!935403))

(assert (=> d!120083 m!935305))

(assert (=> b!1011004 d!120083))

(declare-fun d!120085 () Bool)

(declare-fun lt!446909 () (_ BitVec 32))

(declare-fun lt!446908 () (_ BitVec 32))

(assert (=> d!120085 (= lt!446909 (bvmul (bvxor lt!446908 (bvlshr lt!446908 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120085 (= lt!446908 ((_ extract 31 0) (bvand (bvxor lt!446847 (bvlshr lt!446847 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120085 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679370 (let ((h!22630 ((_ extract 31 0) (bvand (bvxor lt!446847 (bvlshr lt!446847 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88082 (bvmul (bvxor h!22630 (bvlshr h!22630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88082 (bvlshr x!88082 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679370 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679370 #b00000000000000000000000000000000))))))

(assert (=> d!120085 (= (toIndex!0 lt!446847 mask!3464) (bvand (bvxor lt!446909 (bvlshr lt!446909 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1011004 d!120085))

(declare-fun d!120087 () Bool)

(assert (=> d!120087 (= (validKeyInArray!0 (select (arr!30635 a!3219) j!170)) (and (not (= (select (arr!30635 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30635 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1011006 d!120087))

(declare-fun b!1011161 () Bool)

(declare-fun lt!446911 () SeekEntryResult!9567)

(assert (=> b!1011161 (and (bvsge (index!40640 lt!446911) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446911) (size!31138 a!3219)))))

(declare-fun res!679389 () Bool)

(assert (=> b!1011161 (= res!679389 (= (select (arr!30635 a!3219) (index!40640 lt!446911)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568889 () Bool)

(assert (=> b!1011161 (=> res!679389 e!568889)))

(declare-fun b!1011162 () Bool)

(declare-fun e!568890 () SeekEntryResult!9567)

(assert (=> b!1011162 (= e!568890 (Intermediate!9567 false lt!446844 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011163 () Bool)

(declare-fun e!568887 () Bool)

(declare-fun e!568891 () Bool)

(assert (=> b!1011163 (= e!568887 e!568891)))

(declare-fun res!679390 () Bool)

(assert (=> b!1011163 (= res!679390 (and ((_ is Intermediate!9567) lt!446911) (not (undefined!10379 lt!446911)) (bvslt (x!88079 lt!446911) #b01111111111111111111111111111110) (bvsge (x!88079 lt!446911) #b00000000000000000000000000000000) (bvsge (x!88079 lt!446911) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1011163 (=> (not res!679390) (not e!568891))))

(declare-fun b!1011164 () Bool)

(assert (=> b!1011164 (= e!568887 (bvsge (x!88079 lt!446911) #b01111111111111111111111111111110))))

(declare-fun b!1011165 () Bool)

(assert (=> b!1011165 (and (bvsge (index!40640 lt!446911) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446911) (size!31138 a!3219)))))

(assert (=> b!1011165 (= e!568889 (= (select (arr!30635 a!3219) (index!40640 lt!446911)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011166 () Bool)

(assert (=> b!1011166 (and (bvsge (index!40640 lt!446911) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446911) (size!31138 a!3219)))))

(declare-fun res!679391 () Bool)

(assert (=> b!1011166 (= res!679391 (= (select (arr!30635 a!3219) (index!40640 lt!446911)) (select (arr!30635 a!3219) j!170)))))

(assert (=> b!1011166 (=> res!679391 e!568889)))

(assert (=> b!1011166 (= e!568891 e!568889)))

(declare-fun b!1011167 () Bool)

(assert (=> b!1011167 (= e!568890 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446844 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) (select (arr!30635 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011168 () Bool)

(declare-fun e!568888 () SeekEntryResult!9567)

(assert (=> b!1011168 (= e!568888 e!568890)))

(declare-fun c!102049 () Bool)

(declare-fun lt!446910 () (_ BitVec 64))

(assert (=> b!1011168 (= c!102049 (or (= lt!446910 (select (arr!30635 a!3219) j!170)) (= (bvadd lt!446910 lt!446910) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120089 () Bool)

(assert (=> d!120089 e!568887))

(declare-fun c!102051 () Bool)

(assert (=> d!120089 (= c!102051 (and ((_ is Intermediate!9567) lt!446911) (undefined!10379 lt!446911)))))

(assert (=> d!120089 (= lt!446911 e!568888)))

(declare-fun c!102050 () Bool)

(assert (=> d!120089 (= c!102050 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(assert (=> d!120089 (= lt!446910 (select (arr!30635 a!3219) lt!446844))))

(assert (=> d!120089 (validMask!0 mask!3464)))

(assert (=> d!120089 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446844 (select (arr!30635 a!3219) j!170) a!3219 mask!3464) lt!446911)))

(declare-fun b!1011169 () Bool)

(assert (=> b!1011169 (= e!568888 (Intermediate!9567 true lt!446844 (bvadd #b00000000000000000000000000000001 x!1245)))))

(assert (= (and d!120089 c!102050) b!1011169))

(assert (= (and d!120089 (not c!102050)) b!1011168))

(assert (= (and b!1011168 c!102049) b!1011162))

(assert (= (and b!1011168 (not c!102049)) b!1011167))

(assert (= (and d!120089 c!102051) b!1011164))

(assert (= (and d!120089 (not c!102051)) b!1011163))

(assert (= (and b!1011163 res!679390) b!1011166))

(assert (= (and b!1011166 (not res!679391)) b!1011161))

(assert (= (and b!1011161 (not res!679389)) b!1011165))

(declare-fun m!935405 () Bool)

(assert (=> b!1011161 m!935405))

(assert (=> b!1011166 m!935405))

(assert (=> b!1011165 m!935405))

(declare-fun m!935407 () Bool)

(assert (=> b!1011167 m!935407))

(assert (=> b!1011167 m!935407))

(assert (=> b!1011167 m!935277))

(declare-fun m!935409 () Bool)

(assert (=> b!1011167 m!935409))

(declare-fun m!935411 () Bool)

(assert (=> d!120089 m!935411))

(assert (=> d!120089 m!935305))

(assert (=> b!1011005 d!120089))

(declare-fun d!120091 () Bool)

(declare-fun res!679402 () Bool)

(declare-fun e!568906 () Bool)

(assert (=> d!120091 (=> res!679402 e!568906)))

(assert (=> d!120091 (= res!679402 (= (select (arr!30635 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!120091 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!568906)))

(declare-fun b!1011192 () Bool)

(declare-fun e!568907 () Bool)

(assert (=> b!1011192 (= e!568906 e!568907)))

(declare-fun res!679403 () Bool)

(assert (=> b!1011192 (=> (not res!679403) (not e!568907))))

(assert (=> b!1011192 (= res!679403 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31138 a!3219)))))

(declare-fun b!1011193 () Bool)

(assert (=> b!1011193 (= e!568907 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!120091 (not res!679402)) b!1011192))

(assert (= (and b!1011192 res!679403) b!1011193))

(assert (=> d!120091 m!935349))

(declare-fun m!935413 () Bool)

(assert (=> b!1011193 m!935413))

(assert (=> b!1011016 d!120091))

(declare-fun d!120093 () Bool)

(assert (=> d!120093 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1011010 d!120093))

(declare-fun b!1011194 () Bool)

(declare-fun lt!446917 () SeekEntryResult!9567)

(assert (=> b!1011194 (and (bvsge (index!40640 lt!446917) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446917) (size!31138 lt!446846)))))

(declare-fun res!679404 () Bool)

(assert (=> b!1011194 (= res!679404 (= (select (arr!30635 lt!446846) (index!40640 lt!446917)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568910 () Bool)

(assert (=> b!1011194 (=> res!679404 e!568910)))

(declare-fun b!1011195 () Bool)

(declare-fun e!568911 () SeekEntryResult!9567)

(assert (=> b!1011195 (= e!568911 (Intermediate!9567 false lt!446844 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011196 () Bool)

(declare-fun e!568908 () Bool)

(declare-fun e!568912 () Bool)

(assert (=> b!1011196 (= e!568908 e!568912)))

(declare-fun res!679405 () Bool)

(assert (=> b!1011196 (= res!679405 (and ((_ is Intermediate!9567) lt!446917) (not (undefined!10379 lt!446917)) (bvslt (x!88079 lt!446917) #b01111111111111111111111111111110) (bvsge (x!88079 lt!446917) #b00000000000000000000000000000000) (bvsge (x!88079 lt!446917) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1011196 (=> (not res!679405) (not e!568912))))

(declare-fun b!1011197 () Bool)

(assert (=> b!1011197 (= e!568908 (bvsge (x!88079 lt!446917) #b01111111111111111111111111111110))))

(declare-fun b!1011198 () Bool)

(assert (=> b!1011198 (and (bvsge (index!40640 lt!446917) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446917) (size!31138 lt!446846)))))

(assert (=> b!1011198 (= e!568910 (= (select (arr!30635 lt!446846) (index!40640 lt!446917)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011199 () Bool)

(assert (=> b!1011199 (and (bvsge (index!40640 lt!446917) #b00000000000000000000000000000000) (bvslt (index!40640 lt!446917) (size!31138 lt!446846)))))

(declare-fun res!679406 () Bool)

(assert (=> b!1011199 (= res!679406 (= (select (arr!30635 lt!446846) (index!40640 lt!446917)) lt!446847))))

(assert (=> b!1011199 (=> res!679406 e!568910)))

(assert (=> b!1011199 (= e!568912 e!568910)))

(declare-fun b!1011200 () Bool)

(assert (=> b!1011200 (= e!568911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446844 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) lt!446847 lt!446846 mask!3464))))

(declare-fun b!1011201 () Bool)

(declare-fun e!568909 () SeekEntryResult!9567)

(assert (=> b!1011201 (= e!568909 e!568911)))

(declare-fun c!102058 () Bool)

(declare-fun lt!446916 () (_ BitVec 64))

(assert (=> b!1011201 (= c!102058 (or (= lt!446916 lt!446847) (= (bvadd lt!446916 lt!446916) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120095 () Bool)

(assert (=> d!120095 e!568908))

(declare-fun c!102060 () Bool)

(assert (=> d!120095 (= c!102060 (and ((_ is Intermediate!9567) lt!446917) (undefined!10379 lt!446917)))))

(assert (=> d!120095 (= lt!446917 e!568909)))

(declare-fun c!102059 () Bool)

(assert (=> d!120095 (= c!102059 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(assert (=> d!120095 (= lt!446916 (select (arr!30635 lt!446846) lt!446844))))

(assert (=> d!120095 (validMask!0 mask!3464)))

(assert (=> d!120095 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446844 lt!446847 lt!446846 mask!3464) lt!446917)))

(declare-fun b!1011202 () Bool)

(assert (=> b!1011202 (= e!568909 (Intermediate!9567 true lt!446844 (bvadd #b00000000000000000000000000000001 x!1245)))))

(assert (= (and d!120095 c!102059) b!1011202))

(assert (= (and d!120095 (not c!102059)) b!1011201))

(assert (= (and b!1011201 c!102058) b!1011195))

(assert (= (and b!1011201 (not c!102058)) b!1011200))

(assert (= (and d!120095 c!102060) b!1011197))

(assert (= (and d!120095 (not c!102060)) b!1011196))

(assert (= (and b!1011196 res!679405) b!1011199))

(assert (= (and b!1011199 (not res!679406)) b!1011194))

(assert (= (and b!1011194 (not res!679404)) b!1011198))

(declare-fun m!935415 () Bool)

(assert (=> b!1011194 m!935415))

(assert (=> b!1011199 m!935415))

(assert (=> b!1011198 m!935415))

(assert (=> b!1011200 m!935407))

(assert (=> b!1011200 m!935407))

(declare-fun m!935417 () Bool)

(assert (=> b!1011200 m!935417))

(declare-fun m!935419 () Bool)

(assert (=> d!120095 m!935419))

(assert (=> d!120095 m!935305))

(assert (=> b!1011009 d!120095))

(declare-fun b!1011272 () Bool)

(declare-fun e!568957 () SeekEntryResult!9567)

(declare-fun lt!446936 () SeekEntryResult!9567)

(assert (=> b!1011272 (= e!568957 (Found!9567 (index!40640 lt!446936)))))

(declare-fun d!120097 () Bool)

(declare-fun lt!446934 () SeekEntryResult!9567)

(assert (=> d!120097 (and (or ((_ is Undefined!9567) lt!446934) (not ((_ is Found!9567) lt!446934)) (and (bvsge (index!40639 lt!446934) #b00000000000000000000000000000000) (bvslt (index!40639 lt!446934) (size!31138 a!3219)))) (or ((_ is Undefined!9567) lt!446934) ((_ is Found!9567) lt!446934) (not ((_ is MissingZero!9567) lt!446934)) (and (bvsge (index!40638 lt!446934) #b00000000000000000000000000000000) (bvslt (index!40638 lt!446934) (size!31138 a!3219)))) (or ((_ is Undefined!9567) lt!446934) ((_ is Found!9567) lt!446934) ((_ is MissingZero!9567) lt!446934) (not ((_ is MissingVacant!9567) lt!446934)) (and (bvsge (index!40641 lt!446934) #b00000000000000000000000000000000) (bvslt (index!40641 lt!446934) (size!31138 a!3219)))) (or ((_ is Undefined!9567) lt!446934) (ite ((_ is Found!9567) lt!446934) (= (select (arr!30635 a!3219) (index!40639 lt!446934)) k0!2224) (ite ((_ is MissingZero!9567) lt!446934) (= (select (arr!30635 a!3219) (index!40638 lt!446934)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9567) lt!446934) (= (select (arr!30635 a!3219) (index!40641 lt!446934)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!568956 () SeekEntryResult!9567)

(assert (=> d!120097 (= lt!446934 e!568956)))

(declare-fun c!102083 () Bool)

(assert (=> d!120097 (= c!102083 (and ((_ is Intermediate!9567) lt!446936) (undefined!10379 lt!446936)))))

(assert (=> d!120097 (= lt!446936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!120097 (validMask!0 mask!3464)))

(assert (=> d!120097 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!446934)))

(declare-fun b!1011273 () Bool)

(assert (=> b!1011273 (= e!568956 Undefined!9567)))

(declare-fun b!1011274 () Bool)

(declare-fun c!102082 () Bool)

(declare-fun lt!446935 () (_ BitVec 64))

(assert (=> b!1011274 (= c!102082 (= lt!446935 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568958 () SeekEntryResult!9567)

(assert (=> b!1011274 (= e!568957 e!568958)))

(declare-fun b!1011275 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63645 (_ BitVec 32)) SeekEntryResult!9567)

(assert (=> b!1011275 (= e!568958 (seekKeyOrZeroReturnVacant!0 (x!88079 lt!446936) (index!40640 lt!446936) (index!40640 lt!446936) k0!2224 a!3219 mask!3464))))

(declare-fun b!1011276 () Bool)

(assert (=> b!1011276 (= e!568958 (MissingZero!9567 (index!40640 lt!446936)))))

(declare-fun b!1011277 () Bool)

(assert (=> b!1011277 (= e!568956 e!568957)))

(assert (=> b!1011277 (= lt!446935 (select (arr!30635 a!3219) (index!40640 lt!446936)))))

(declare-fun c!102084 () Bool)

(assert (=> b!1011277 (= c!102084 (= lt!446935 k0!2224))))

(assert (= (and d!120097 c!102083) b!1011273))

(assert (= (and d!120097 (not c!102083)) b!1011277))

(assert (= (and b!1011277 c!102084) b!1011272))

(assert (= (and b!1011277 (not c!102084)) b!1011274))

(assert (= (and b!1011274 c!102082) b!1011276))

(assert (= (and b!1011274 (not c!102082)) b!1011275))

(declare-fun m!935447 () Bool)

(assert (=> d!120097 m!935447))

(assert (=> d!120097 m!935447))

(declare-fun m!935449 () Bool)

(assert (=> d!120097 m!935449))

(declare-fun m!935451 () Bool)

(assert (=> d!120097 m!935451))

(assert (=> d!120097 m!935305))

(declare-fun m!935453 () Bool)

(assert (=> d!120097 m!935453))

(declare-fun m!935455 () Bool)

(assert (=> d!120097 m!935455))

(declare-fun m!935457 () Bool)

(assert (=> b!1011275 m!935457))

(declare-fun m!935459 () Bool)

(assert (=> b!1011277 m!935459))

(assert (=> b!1011011 d!120097))

(declare-fun d!120109 () Bool)

(assert (=> d!120109 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87240 d!120109))

(declare-fun d!120117 () Bool)

(assert (=> d!120117 (= (array_inv!23625 a!3219) (bvsge (size!31138 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87240 d!120117))

(check-sat (not b!1011193) (not b!1011143) (not d!120083) (not b!1011145) (not d!120097) (not d!120067) (not b!1011075) (not d!120089) (not b!1011275) (not b!1011113) (not b!1011200) (not b!1011104) (not d!120079) (not d!120065) (not bm!42432) (not b!1011122) (not d!120063) (not d!120095) (not b!1011079) (not bm!42427) (not b!1011167) (not b!1011158) (not b!1011078))
(check-sat)
