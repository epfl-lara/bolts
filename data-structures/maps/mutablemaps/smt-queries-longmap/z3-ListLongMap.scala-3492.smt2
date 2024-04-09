; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48438 () Bool)

(assert start!48438)

(declare-fun b!531920 () Bool)

(declare-fun res!327569 () Bool)

(declare-fun e!309735 () Bool)

(assert (=> b!531920 (=> (not res!327569) (not e!309735))))

(declare-datatypes ((array!33702 0))(
  ( (array!33703 (arr!16189 (Array (_ BitVec 32) (_ BitVec 64))) (size!16553 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33702)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531920 (= res!327569 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531921 () Bool)

(declare-fun res!327566 () Bool)

(declare-fun e!309736 () Bool)

(assert (=> b!531921 (=> (not res!327566) (not e!309736))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33702 (_ BitVec 32)) Bool)

(assert (=> b!531921 (= res!327566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531922 () Bool)

(assert (=> b!531922 (= e!309736 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvsgt mask!3216 #b00111111111111111111111111111111)))))

(declare-fun b!531923 () Bool)

(declare-fun res!327560 () Bool)

(assert (=> b!531923 (=> (not res!327560) (not e!309735))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531923 (= res!327560 (validKeyInArray!0 (select (arr!16189 a!3154) j!147)))))

(declare-fun b!531924 () Bool)

(declare-fun res!327561 () Bool)

(assert (=> b!531924 (=> (not res!327561) (not e!309736))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4654 0))(
  ( (MissingZero!4654 (index!20840 (_ BitVec 32))) (Found!4654 (index!20841 (_ BitVec 32))) (Intermediate!4654 (undefined!5466 Bool) (index!20842 (_ BitVec 32)) (x!49839 (_ BitVec 32))) (Undefined!4654) (MissingVacant!4654 (index!20843 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33702 (_ BitVec 32)) SeekEntryResult!4654)

(assert (=> b!531924 (= res!327561 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16189 a!3154) j!147) a!3154 mask!3216) (Intermediate!4654 false resIndex!32 resX!32)))))

(declare-fun b!531925 () Bool)

(declare-fun res!327564 () Bool)

(assert (=> b!531925 (=> (not res!327564) (not e!309736))))

(assert (=> b!531925 (= res!327564 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16553 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16553 a!3154)) (= (select (arr!16189 a!3154) resIndex!32) (select (arr!16189 a!3154) j!147))))))

(declare-fun res!327567 () Bool)

(assert (=> start!48438 (=> (not res!327567) (not e!309735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48438 (= res!327567 (validMask!0 mask!3216))))

(assert (=> start!48438 e!309735))

(assert (=> start!48438 true))

(declare-fun array_inv!11963 (array!33702) Bool)

(assert (=> start!48438 (array_inv!11963 a!3154)))

(declare-fun b!531926 () Bool)

(declare-fun res!327562 () Bool)

(assert (=> b!531926 (=> (not res!327562) (not e!309735))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531926 (= res!327562 (and (= (size!16553 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16553 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16553 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531927 () Bool)

(assert (=> b!531927 (= e!309735 e!309736)))

(declare-fun res!327563 () Bool)

(assert (=> b!531927 (=> (not res!327563) (not e!309736))))

(declare-fun lt!245087 () SeekEntryResult!4654)

(assert (=> b!531927 (= res!327563 (or (= lt!245087 (MissingZero!4654 i!1153)) (= lt!245087 (MissingVacant!4654 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33702 (_ BitVec 32)) SeekEntryResult!4654)

(assert (=> b!531927 (= lt!245087 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!531928 () Bool)

(declare-fun res!327568 () Bool)

(assert (=> b!531928 (=> (not res!327568) (not e!309735))))

(assert (=> b!531928 (= res!327568 (validKeyInArray!0 k0!1998))))

(declare-fun b!531929 () Bool)

(declare-fun res!327565 () Bool)

(assert (=> b!531929 (=> (not res!327565) (not e!309736))))

(declare-datatypes ((List!10361 0))(
  ( (Nil!10358) (Cons!10357 (h!11297 (_ BitVec 64)) (t!16597 List!10361)) )
))
(declare-fun arrayNoDuplicates!0 (array!33702 (_ BitVec 32) List!10361) Bool)

(assert (=> b!531929 (= res!327565 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10358))))

(assert (= (and start!48438 res!327567) b!531926))

(assert (= (and b!531926 res!327562) b!531923))

(assert (= (and b!531923 res!327560) b!531928))

(assert (= (and b!531928 res!327568) b!531920))

(assert (= (and b!531920 res!327569) b!531927))

(assert (= (and b!531927 res!327563) b!531921))

(assert (= (and b!531921 res!327566) b!531929))

(assert (= (and b!531929 res!327565) b!531925))

(assert (= (and b!531925 res!327564) b!531924))

(assert (= (and b!531924 res!327561) b!531922))

(declare-fun m!512243 () Bool)

(assert (=> b!531921 m!512243))

(declare-fun m!512245 () Bool)

(assert (=> b!531920 m!512245))

(declare-fun m!512247 () Bool)

(assert (=> b!531925 m!512247))

(declare-fun m!512249 () Bool)

(assert (=> b!531925 m!512249))

(assert (=> b!531923 m!512249))

(assert (=> b!531923 m!512249))

(declare-fun m!512251 () Bool)

(assert (=> b!531923 m!512251))

(declare-fun m!512253 () Bool)

(assert (=> b!531928 m!512253))

(assert (=> b!531924 m!512249))

(assert (=> b!531924 m!512249))

(declare-fun m!512255 () Bool)

(assert (=> b!531924 m!512255))

(declare-fun m!512257 () Bool)

(assert (=> b!531929 m!512257))

(declare-fun m!512259 () Bool)

(assert (=> start!48438 m!512259))

(declare-fun m!512261 () Bool)

(assert (=> start!48438 m!512261))

(declare-fun m!512263 () Bool)

(assert (=> b!531927 m!512263))

(check-sat (not b!531924) (not b!531921) (not start!48438) (not b!531929) (not b!531923) (not b!531927) (not b!531928) (not b!531920))
(check-sat)
(get-model)

(declare-fun d!81219 () Bool)

(assert (=> d!81219 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531928 d!81219))

(declare-fun d!81221 () Bool)

(assert (=> d!81221 (= (validKeyInArray!0 (select (arr!16189 a!3154) j!147)) (and (not (= (select (arr!16189 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16189 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531923 d!81221))

(declare-fun b!531970 () Bool)

(declare-fun e!309754 () Bool)

(declare-fun contains!2792 (List!10361 (_ BitVec 64)) Bool)

(assert (=> b!531970 (= e!309754 (contains!2792 Nil!10358 (select (arr!16189 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!531971 () Bool)

(declare-fun e!309756 () Bool)

(declare-fun call!31961 () Bool)

(assert (=> b!531971 (= e!309756 call!31961)))

(declare-fun b!531972 () Bool)

(declare-fun e!309757 () Bool)

(declare-fun e!309755 () Bool)

(assert (=> b!531972 (= e!309757 e!309755)))

(declare-fun res!327607 () Bool)

(assert (=> b!531972 (=> (not res!327607) (not e!309755))))

(assert (=> b!531972 (= res!327607 (not e!309754))))

(declare-fun res!327606 () Bool)

(assert (=> b!531972 (=> (not res!327606) (not e!309754))))

(assert (=> b!531972 (= res!327606 (validKeyInArray!0 (select (arr!16189 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!531973 () Bool)

(assert (=> b!531973 (= e!309756 call!31961)))

(declare-fun d!81223 () Bool)

(declare-fun res!327608 () Bool)

(assert (=> d!81223 (=> res!327608 e!309757)))

(assert (=> d!81223 (= res!327608 (bvsge #b00000000000000000000000000000000 (size!16553 a!3154)))))

(assert (=> d!81223 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10358) e!309757)))

(declare-fun bm!31958 () Bool)

(declare-fun c!62492 () Bool)

(assert (=> bm!31958 (= call!31961 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62492 (Cons!10357 (select (arr!16189 a!3154) #b00000000000000000000000000000000) Nil!10358) Nil!10358)))))

(declare-fun b!531974 () Bool)

(assert (=> b!531974 (= e!309755 e!309756)))

(assert (=> b!531974 (= c!62492 (validKeyInArray!0 (select (arr!16189 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81223 (not res!327608)) b!531972))

(assert (= (and b!531972 res!327606) b!531970))

(assert (= (and b!531972 res!327607) b!531974))

(assert (= (and b!531974 c!62492) b!531971))

(assert (= (and b!531974 (not c!62492)) b!531973))

(assert (= (or b!531971 b!531973) bm!31958))

(declare-fun m!512287 () Bool)

(assert (=> b!531970 m!512287))

(assert (=> b!531970 m!512287))

(declare-fun m!512289 () Bool)

(assert (=> b!531970 m!512289))

(assert (=> b!531972 m!512287))

(assert (=> b!531972 m!512287))

(declare-fun m!512291 () Bool)

(assert (=> b!531972 m!512291))

(assert (=> bm!31958 m!512287))

(declare-fun m!512293 () Bool)

(assert (=> bm!31958 m!512293))

(assert (=> b!531974 m!512287))

(assert (=> b!531974 m!512287))

(assert (=> b!531974 m!512291))

(assert (=> b!531929 d!81223))

(declare-fun b!531997 () Bool)

(declare-fun e!309773 () SeekEntryResult!4654)

(declare-fun lt!245099 () SeekEntryResult!4654)

(assert (=> b!531997 (= e!309773 (Found!4654 (index!20842 lt!245099)))))

(declare-fun e!309772 () SeekEntryResult!4654)

(declare-fun b!531998 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33702 (_ BitVec 32)) SeekEntryResult!4654)

(assert (=> b!531998 (= e!309772 (seekKeyOrZeroReturnVacant!0 (x!49839 lt!245099) (index!20842 lt!245099) (index!20842 lt!245099) k0!1998 a!3154 mask!3216))))

(declare-fun b!531999 () Bool)

(declare-fun e!309774 () SeekEntryResult!4654)

(assert (=> b!531999 (= e!309774 Undefined!4654)))

(declare-fun b!532001 () Bool)

(assert (=> b!532001 (= e!309772 (MissingZero!4654 (index!20842 lt!245099)))))

(declare-fun b!532002 () Bool)

(assert (=> b!532002 (= e!309774 e!309773)))

(declare-fun lt!245097 () (_ BitVec 64))

(assert (=> b!532002 (= lt!245097 (select (arr!16189 a!3154) (index!20842 lt!245099)))))

(declare-fun c!62503 () Bool)

(assert (=> b!532002 (= c!62503 (= lt!245097 k0!1998))))

(declare-fun d!81225 () Bool)

(declare-fun lt!245098 () SeekEntryResult!4654)

(get-info :version)

(assert (=> d!81225 (and (or ((_ is Undefined!4654) lt!245098) (not ((_ is Found!4654) lt!245098)) (and (bvsge (index!20841 lt!245098) #b00000000000000000000000000000000) (bvslt (index!20841 lt!245098) (size!16553 a!3154)))) (or ((_ is Undefined!4654) lt!245098) ((_ is Found!4654) lt!245098) (not ((_ is MissingZero!4654) lt!245098)) (and (bvsge (index!20840 lt!245098) #b00000000000000000000000000000000) (bvslt (index!20840 lt!245098) (size!16553 a!3154)))) (or ((_ is Undefined!4654) lt!245098) ((_ is Found!4654) lt!245098) ((_ is MissingZero!4654) lt!245098) (not ((_ is MissingVacant!4654) lt!245098)) (and (bvsge (index!20843 lt!245098) #b00000000000000000000000000000000) (bvslt (index!20843 lt!245098) (size!16553 a!3154)))) (or ((_ is Undefined!4654) lt!245098) (ite ((_ is Found!4654) lt!245098) (= (select (arr!16189 a!3154) (index!20841 lt!245098)) k0!1998) (ite ((_ is MissingZero!4654) lt!245098) (= (select (arr!16189 a!3154) (index!20840 lt!245098)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4654) lt!245098) (= (select (arr!16189 a!3154) (index!20843 lt!245098)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81225 (= lt!245098 e!309774)))

(declare-fun c!62501 () Bool)

(assert (=> d!81225 (= c!62501 (and ((_ is Intermediate!4654) lt!245099) (undefined!5466 lt!245099)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81225 (= lt!245099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81225 (validMask!0 mask!3216)))

(assert (=> d!81225 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!245098)))

(declare-fun b!532000 () Bool)

(declare-fun c!62502 () Bool)

(assert (=> b!532000 (= c!62502 (= lt!245097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!532000 (= e!309773 e!309772)))

(assert (= (and d!81225 c!62501) b!531999))

(assert (= (and d!81225 (not c!62501)) b!532002))

(assert (= (and b!532002 c!62503) b!531997))

(assert (= (and b!532002 (not c!62503)) b!532000))

(assert (= (and b!532000 c!62502) b!532001))

(assert (= (and b!532000 (not c!62502)) b!531998))

(declare-fun m!512295 () Bool)

(assert (=> b!531998 m!512295))

(declare-fun m!512297 () Bool)

(assert (=> b!532002 m!512297))

(declare-fun m!512299 () Bool)

(assert (=> d!81225 m!512299))

(declare-fun m!512301 () Bool)

(assert (=> d!81225 m!512301))

(declare-fun m!512303 () Bool)

(assert (=> d!81225 m!512303))

(declare-fun m!512305 () Bool)

(assert (=> d!81225 m!512305))

(declare-fun m!512307 () Bool)

(assert (=> d!81225 m!512307))

(assert (=> d!81225 m!512259))

(assert (=> d!81225 m!512301))

(assert (=> b!531927 d!81225))

(declare-fun d!81233 () Bool)

(declare-fun res!327622 () Bool)

(declare-fun e!309789 () Bool)

(assert (=> d!81233 (=> res!327622 e!309789)))

(assert (=> d!81233 (= res!327622 (= (select (arr!16189 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81233 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!309789)))

(declare-fun b!532024 () Bool)

(declare-fun e!309790 () Bool)

(assert (=> b!532024 (= e!309789 e!309790)))

(declare-fun res!327623 () Bool)

(assert (=> b!532024 (=> (not res!327623) (not e!309790))))

(assert (=> b!532024 (= res!327623 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16553 a!3154)))))

(declare-fun b!532025 () Bool)

(assert (=> b!532025 (= e!309790 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81233 (not res!327622)) b!532024))

(assert (= (and b!532024 res!327623) b!532025))

(assert (=> d!81233 m!512287))

(declare-fun m!512317 () Bool)

(assert (=> b!532025 m!512317))

(assert (=> b!531920 d!81233))

(declare-fun d!81237 () Bool)

(declare-fun res!327634 () Bool)

(declare-fun e!309806 () Bool)

(assert (=> d!81237 (=> res!327634 e!309806)))

(assert (=> d!81237 (= res!327634 (bvsge #b00000000000000000000000000000000 (size!16553 a!3154)))))

(assert (=> d!81237 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309806)))

(declare-fun b!532046 () Bool)

(declare-fun e!309808 () Bool)

(assert (=> b!532046 (= e!309806 e!309808)))

(declare-fun c!62516 () Bool)

(assert (=> b!532046 (= c!62516 (validKeyInArray!0 (select (arr!16189 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532047 () Bool)

(declare-fun call!31967 () Bool)

(assert (=> b!532047 (= e!309808 call!31967)))

(declare-fun bm!31964 () Bool)

(assert (=> bm!31964 (= call!31967 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!532048 () Bool)

(declare-fun e!309807 () Bool)

(assert (=> b!532048 (= e!309808 e!309807)))

(declare-fun lt!245115 () (_ BitVec 64))

(assert (=> b!532048 (= lt!245115 (select (arr!16189 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16810 0))(
  ( (Unit!16811) )
))
(declare-fun lt!245117 () Unit!16810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33702 (_ BitVec 64) (_ BitVec 32)) Unit!16810)

(assert (=> b!532048 (= lt!245117 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!245115 #b00000000000000000000000000000000))))

(assert (=> b!532048 (arrayContainsKey!0 a!3154 lt!245115 #b00000000000000000000000000000000)))

(declare-fun lt!245116 () Unit!16810)

(assert (=> b!532048 (= lt!245116 lt!245117)))

(declare-fun res!327635 () Bool)

(assert (=> b!532048 (= res!327635 (= (seekEntryOrOpen!0 (select (arr!16189 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4654 #b00000000000000000000000000000000)))))

(assert (=> b!532048 (=> (not res!327635) (not e!309807))))

(declare-fun b!532049 () Bool)

(assert (=> b!532049 (= e!309807 call!31967)))

(assert (= (and d!81237 (not res!327634)) b!532046))

(assert (= (and b!532046 c!62516) b!532048))

(assert (= (and b!532046 (not c!62516)) b!532047))

(assert (= (and b!532048 res!327635) b!532049))

(assert (= (or b!532049 b!532047) bm!31964))

(assert (=> b!532046 m!512287))

(assert (=> b!532046 m!512287))

(assert (=> b!532046 m!512291))

(declare-fun m!512337 () Bool)

(assert (=> bm!31964 m!512337))

(assert (=> b!532048 m!512287))

(declare-fun m!512339 () Bool)

(assert (=> b!532048 m!512339))

(declare-fun m!512341 () Bool)

(assert (=> b!532048 m!512341))

(assert (=> b!532048 m!512287))

(declare-fun m!512343 () Bool)

(assert (=> b!532048 m!512343))

(assert (=> b!531921 d!81237))

(declare-fun d!81249 () Bool)

(assert (=> d!81249 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48438 d!81249))

(declare-fun d!81257 () Bool)

(assert (=> d!81257 (= (array_inv!11963 a!3154) (bvsge (size!16553 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48438 d!81257))

(declare-fun b!532127 () Bool)

(declare-fun e!309865 () SeekEntryResult!4654)

(declare-fun e!309862 () SeekEntryResult!4654)

(assert (=> b!532127 (= e!309865 e!309862)))

(declare-fun c!62541 () Bool)

(declare-fun lt!245146 () (_ BitVec 64))

(assert (=> b!532127 (= c!62541 (or (= lt!245146 (select (arr!16189 a!3154) j!147)) (= (bvadd lt!245146 lt!245146) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!532128 () Bool)

(assert (=> b!532128 (= e!309862 (Intermediate!4654 false index!1177 x!1030))))

(declare-fun b!532129 () Bool)

(declare-fun e!309863 () Bool)

(declare-fun lt!245147 () SeekEntryResult!4654)

(assert (=> b!532129 (= e!309863 (bvsge (x!49839 lt!245147) #b01111111111111111111111111111110))))

(declare-fun b!532130 () Bool)

(assert (=> b!532130 (= e!309865 (Intermediate!4654 true index!1177 x!1030))))

(declare-fun b!532131 () Bool)

(assert (=> b!532131 (and (bvsge (index!20842 lt!245147) #b00000000000000000000000000000000) (bvslt (index!20842 lt!245147) (size!16553 a!3154)))))

(declare-fun e!309864 () Bool)

(assert (=> b!532131 (= e!309864 (= (select (arr!16189 a!3154) (index!20842 lt!245147)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!532132 () Bool)

(assert (=> b!532132 (and (bvsge (index!20842 lt!245147) #b00000000000000000000000000000000) (bvslt (index!20842 lt!245147) (size!16553 a!3154)))))

(declare-fun res!327668 () Bool)

(assert (=> b!532132 (= res!327668 (= (select (arr!16189 a!3154) (index!20842 lt!245147)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!532132 (=> res!327668 e!309864)))

(declare-fun b!532133 () Bool)

(assert (=> b!532133 (and (bvsge (index!20842 lt!245147) #b00000000000000000000000000000000) (bvslt (index!20842 lt!245147) (size!16553 a!3154)))))

(declare-fun res!327667 () Bool)

(assert (=> b!532133 (= res!327667 (= (select (arr!16189 a!3154) (index!20842 lt!245147)) (select (arr!16189 a!3154) j!147)))))

(assert (=> b!532133 (=> res!327667 e!309864)))

(declare-fun e!309861 () Bool)

(assert (=> b!532133 (= e!309861 e!309864)))

(declare-fun d!81259 () Bool)

(assert (=> d!81259 e!309863))

(declare-fun c!62542 () Bool)

(assert (=> d!81259 (= c!62542 (and ((_ is Intermediate!4654) lt!245147) (undefined!5466 lt!245147)))))

(assert (=> d!81259 (= lt!245147 e!309865)))

(declare-fun c!62540 () Bool)

(assert (=> d!81259 (= c!62540 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81259 (= lt!245146 (select (arr!16189 a!3154) index!1177))))

(assert (=> d!81259 (validMask!0 mask!3216)))

(assert (=> d!81259 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16189 a!3154) j!147) a!3154 mask!3216) lt!245147)))

(declare-fun b!532134 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532134 (= e!309862 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16189 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!532135 () Bool)

(assert (=> b!532135 (= e!309863 e!309861)))

(declare-fun res!327669 () Bool)

(assert (=> b!532135 (= res!327669 (and ((_ is Intermediate!4654) lt!245147) (not (undefined!5466 lt!245147)) (bvslt (x!49839 lt!245147) #b01111111111111111111111111111110) (bvsge (x!49839 lt!245147) #b00000000000000000000000000000000) (bvsge (x!49839 lt!245147) x!1030)))))

(assert (=> b!532135 (=> (not res!327669) (not e!309861))))

(assert (= (and d!81259 c!62540) b!532130))

(assert (= (and d!81259 (not c!62540)) b!532127))

(assert (= (and b!532127 c!62541) b!532128))

(assert (= (and b!532127 (not c!62541)) b!532134))

(assert (= (and d!81259 c!62542) b!532129))

(assert (= (and d!81259 (not c!62542)) b!532135))

(assert (= (and b!532135 res!327669) b!532133))

(assert (= (and b!532133 (not res!327667)) b!532132))

(assert (= (and b!532132 (not res!327668)) b!532131))

(declare-fun m!512375 () Bool)

(assert (=> b!532133 m!512375))

(declare-fun m!512377 () Bool)

(assert (=> d!81259 m!512377))

(assert (=> d!81259 m!512259))

(assert (=> b!532132 m!512375))

(declare-fun m!512379 () Bool)

(assert (=> b!532134 m!512379))

(assert (=> b!532134 m!512379))

(assert (=> b!532134 m!512249))

(declare-fun m!512381 () Bool)

(assert (=> b!532134 m!512381))

(assert (=> b!532131 m!512375))

(assert (=> b!531924 d!81259))

(check-sat (not bm!31964) (not b!532025) (not b!531970) (not d!81259) (not b!531998) (not b!531974) (not b!532134) (not bm!31958) (not d!81225) (not b!531972) (not b!532046) (not b!532048))
(check-sat)
