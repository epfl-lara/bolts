; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45906 () Bool)

(assert start!45906)

(declare-fun b!508168 () Bool)

(declare-fun e!297295 () Bool)

(declare-fun e!297294 () Bool)

(assert (=> b!508168 (= e!297295 e!297294)))

(declare-fun res!309278 () Bool)

(assert (=> b!508168 (=> (not res!309278) (not e!297294))))

(declare-datatypes ((SeekEntryResult!4162 0))(
  ( (MissingZero!4162 (index!18836 (_ BitVec 32))) (Found!4162 (index!18837 (_ BitVec 32))) (Intermediate!4162 (undefined!4974 Bool) (index!18838 (_ BitVec 32)) (x!47846 (_ BitVec 32))) (Undefined!4162) (MissingVacant!4162 (index!18839 (_ BitVec 32))) )
))
(declare-fun lt!232178 () SeekEntryResult!4162)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508168 (= res!309278 (or (= lt!232178 (MissingZero!4162 i!1204)) (= lt!232178 (MissingVacant!4162 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32622 0))(
  ( (array!32623 (arr!15688 (Array (_ BitVec 32) (_ BitVec 64))) (size!16052 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32622)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32622 (_ BitVec 32)) SeekEntryResult!4162)

(assert (=> b!508168 (= lt!232178 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508169 () Bool)

(declare-fun res!309280 () Bool)

(assert (=> b!508169 (=> (not res!309280) (not e!297294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32622 (_ BitVec 32)) Bool)

(assert (=> b!508169 (= res!309280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!508170 () Bool)

(assert (=> b!508170 (= e!297294 (not (= (seekEntryOrOpen!0 (select (arr!15688 a!3235) j!176) a!3235 mask!3524) (Found!4162 j!176))))))

(assert (=> b!508170 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15574 0))(
  ( (Unit!15575) )
))
(declare-fun lt!232177 () Unit!15574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15574)

(assert (=> b!508170 (= lt!232177 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309283 () Bool)

(assert (=> start!45906 (=> (not res!309283) (not e!297295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45906 (= res!309283 (validMask!0 mask!3524))))

(assert (=> start!45906 e!297295))

(assert (=> start!45906 true))

(declare-fun array_inv!11462 (array!32622) Bool)

(assert (=> start!45906 (array_inv!11462 a!3235)))

(declare-fun b!508171 () Bool)

(declare-fun res!309282 () Bool)

(assert (=> b!508171 (=> (not res!309282) (not e!297295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508171 (= res!309282 (validKeyInArray!0 k0!2280))))

(declare-fun b!508172 () Bool)

(declare-fun res!309277 () Bool)

(assert (=> b!508172 (=> (not res!309277) (not e!297295))))

(assert (=> b!508172 (= res!309277 (and (= (size!16052 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16052 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16052 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508173 () Bool)

(declare-fun res!309284 () Bool)

(assert (=> b!508173 (=> (not res!309284) (not e!297295))))

(declare-fun arrayContainsKey!0 (array!32622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508173 (= res!309284 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508174 () Bool)

(declare-fun res!309279 () Bool)

(assert (=> b!508174 (=> (not res!309279) (not e!297295))))

(assert (=> b!508174 (= res!309279 (validKeyInArray!0 (select (arr!15688 a!3235) j!176)))))

(declare-fun b!508175 () Bool)

(declare-fun res!309281 () Bool)

(assert (=> b!508175 (=> (not res!309281) (not e!297294))))

(declare-datatypes ((List!9899 0))(
  ( (Nil!9896) (Cons!9895 (h!10772 (_ BitVec 64)) (t!16135 List!9899)) )
))
(declare-fun arrayNoDuplicates!0 (array!32622 (_ BitVec 32) List!9899) Bool)

(assert (=> b!508175 (= res!309281 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9896))))

(assert (= (and start!45906 res!309283) b!508172))

(assert (= (and b!508172 res!309277) b!508174))

(assert (= (and b!508174 res!309279) b!508171))

(assert (= (and b!508171 res!309282) b!508173))

(assert (= (and b!508173 res!309284) b!508168))

(assert (= (and b!508168 res!309278) b!508169))

(assert (= (and b!508169 res!309280) b!508175))

(assert (= (and b!508175 res!309281) b!508170))

(declare-fun m!488989 () Bool)

(assert (=> b!508170 m!488989))

(assert (=> b!508170 m!488989))

(declare-fun m!488991 () Bool)

(assert (=> b!508170 m!488991))

(declare-fun m!488993 () Bool)

(assert (=> b!508170 m!488993))

(declare-fun m!488995 () Bool)

(assert (=> b!508170 m!488995))

(assert (=> b!508174 m!488989))

(assert (=> b!508174 m!488989))

(declare-fun m!488997 () Bool)

(assert (=> b!508174 m!488997))

(declare-fun m!488999 () Bool)

(assert (=> b!508173 m!488999))

(declare-fun m!489001 () Bool)

(assert (=> b!508171 m!489001))

(declare-fun m!489003 () Bool)

(assert (=> b!508168 m!489003))

(declare-fun m!489005 () Bool)

(assert (=> start!45906 m!489005))

(declare-fun m!489007 () Bool)

(assert (=> start!45906 m!489007))

(declare-fun m!489009 () Bool)

(assert (=> b!508169 m!489009))

(declare-fun m!489011 () Bool)

(assert (=> b!508175 m!489011))

(check-sat (not b!508173) (not b!508170) (not b!508169) (not b!508168) (not b!508171) (not b!508175) (not start!45906) (not b!508174))
(check-sat)
(get-model)

(declare-fun d!78617 () Bool)

(declare-fun res!309317 () Bool)

(declare-fun e!297315 () Bool)

(assert (=> d!78617 (=> res!309317 e!297315)))

(assert (=> d!78617 (= res!309317 (bvsge #b00000000000000000000000000000000 (size!16052 a!3235)))))

(assert (=> d!78617 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9896) e!297315)))

(declare-fun b!508210 () Bool)

(declare-fun e!297313 () Bool)

(declare-fun call!31472 () Bool)

(assert (=> b!508210 (= e!297313 call!31472)))

(declare-fun b!508211 () Bool)

(assert (=> b!508211 (= e!297313 call!31472)))

(declare-fun bm!31469 () Bool)

(declare-fun c!59726 () Bool)

(assert (=> bm!31469 (= call!31472 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59726 (Cons!9895 (select (arr!15688 a!3235) #b00000000000000000000000000000000) Nil!9896) Nil!9896)))))

(declare-fun b!508212 () Bool)

(declare-fun e!297316 () Bool)

(assert (=> b!508212 (= e!297316 e!297313)))

(assert (=> b!508212 (= c!59726 (validKeyInArray!0 (select (arr!15688 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508213 () Bool)

(declare-fun e!297314 () Bool)

(declare-fun contains!2725 (List!9899 (_ BitVec 64)) Bool)

(assert (=> b!508213 (= e!297314 (contains!2725 Nil!9896 (select (arr!15688 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508214 () Bool)

(assert (=> b!508214 (= e!297315 e!297316)))

(declare-fun res!309316 () Bool)

(assert (=> b!508214 (=> (not res!309316) (not e!297316))))

(assert (=> b!508214 (= res!309316 (not e!297314))))

(declare-fun res!309315 () Bool)

(assert (=> b!508214 (=> (not res!309315) (not e!297314))))

(assert (=> b!508214 (= res!309315 (validKeyInArray!0 (select (arr!15688 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78617 (not res!309317)) b!508214))

(assert (= (and b!508214 res!309315) b!508213))

(assert (= (and b!508214 res!309316) b!508212))

(assert (= (and b!508212 c!59726) b!508210))

(assert (= (and b!508212 (not c!59726)) b!508211))

(assert (= (or b!508210 b!508211) bm!31469))

(declare-fun m!489037 () Bool)

(assert (=> bm!31469 m!489037))

(declare-fun m!489039 () Bool)

(assert (=> bm!31469 m!489039))

(assert (=> b!508212 m!489037))

(assert (=> b!508212 m!489037))

(declare-fun m!489041 () Bool)

(assert (=> b!508212 m!489041))

(assert (=> b!508213 m!489037))

(assert (=> b!508213 m!489037))

(declare-fun m!489043 () Bool)

(assert (=> b!508213 m!489043))

(assert (=> b!508214 m!489037))

(assert (=> b!508214 m!489037))

(assert (=> b!508214 m!489041))

(assert (=> b!508175 d!78617))

(declare-fun b!508235 () Bool)

(declare-fun c!59737 () Bool)

(declare-fun lt!232198 () (_ BitVec 64))

(assert (=> b!508235 (= c!59737 (= lt!232198 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!297331 () SeekEntryResult!4162)

(declare-fun e!297330 () SeekEntryResult!4162)

(assert (=> b!508235 (= e!297331 e!297330)))

(declare-fun b!508236 () Bool)

(declare-fun e!297329 () SeekEntryResult!4162)

(assert (=> b!508236 (= e!297329 e!297331)))

(declare-fun lt!232197 () SeekEntryResult!4162)

(assert (=> b!508236 (= lt!232198 (select (arr!15688 a!3235) (index!18838 lt!232197)))))

(declare-fun c!59736 () Bool)

(assert (=> b!508236 (= c!59736 (= lt!232198 (select (arr!15688 a!3235) j!176)))))

(declare-fun b!508237 () Bool)

(assert (=> b!508237 (= e!297331 (Found!4162 (index!18838 lt!232197)))))

(declare-fun b!508238 () Bool)

(assert (=> b!508238 (= e!297330 (MissingZero!4162 (index!18838 lt!232197)))))

(declare-fun b!508239 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32622 (_ BitVec 32)) SeekEntryResult!4162)

(assert (=> b!508239 (= e!297330 (seekKeyOrZeroReturnVacant!0 (x!47846 lt!232197) (index!18838 lt!232197) (index!18838 lt!232197) (select (arr!15688 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!78619 () Bool)

(declare-fun lt!232199 () SeekEntryResult!4162)

(get-info :version)

(assert (=> d!78619 (and (or ((_ is Undefined!4162) lt!232199) (not ((_ is Found!4162) lt!232199)) (and (bvsge (index!18837 lt!232199) #b00000000000000000000000000000000) (bvslt (index!18837 lt!232199) (size!16052 a!3235)))) (or ((_ is Undefined!4162) lt!232199) ((_ is Found!4162) lt!232199) (not ((_ is MissingZero!4162) lt!232199)) (and (bvsge (index!18836 lt!232199) #b00000000000000000000000000000000) (bvslt (index!18836 lt!232199) (size!16052 a!3235)))) (or ((_ is Undefined!4162) lt!232199) ((_ is Found!4162) lt!232199) ((_ is MissingZero!4162) lt!232199) (not ((_ is MissingVacant!4162) lt!232199)) (and (bvsge (index!18839 lt!232199) #b00000000000000000000000000000000) (bvslt (index!18839 lt!232199) (size!16052 a!3235)))) (or ((_ is Undefined!4162) lt!232199) (ite ((_ is Found!4162) lt!232199) (= (select (arr!15688 a!3235) (index!18837 lt!232199)) (select (arr!15688 a!3235) j!176)) (ite ((_ is MissingZero!4162) lt!232199) (= (select (arr!15688 a!3235) (index!18836 lt!232199)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4162) lt!232199) (= (select (arr!15688 a!3235) (index!18839 lt!232199)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78619 (= lt!232199 e!297329)))

(declare-fun c!59735 () Bool)

(assert (=> d!78619 (= c!59735 (and ((_ is Intermediate!4162) lt!232197) (undefined!4974 lt!232197)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32622 (_ BitVec 32)) SeekEntryResult!4162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!78619 (= lt!232197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15688 a!3235) j!176) mask!3524) (select (arr!15688 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78619 (validMask!0 mask!3524)))

(assert (=> d!78619 (= (seekEntryOrOpen!0 (select (arr!15688 a!3235) j!176) a!3235 mask!3524) lt!232199)))

(declare-fun b!508240 () Bool)

(assert (=> b!508240 (= e!297329 Undefined!4162)))

(assert (= (and d!78619 c!59735) b!508240))

(assert (= (and d!78619 (not c!59735)) b!508236))

(assert (= (and b!508236 c!59736) b!508237))

(assert (= (and b!508236 (not c!59736)) b!508235))

(assert (= (and b!508235 c!59737) b!508238))

(assert (= (and b!508235 (not c!59737)) b!508239))

(declare-fun m!489045 () Bool)

(assert (=> b!508236 m!489045))

(assert (=> b!508239 m!488989))

(declare-fun m!489047 () Bool)

(assert (=> b!508239 m!489047))

(declare-fun m!489049 () Bool)

(assert (=> d!78619 m!489049))

(assert (=> d!78619 m!489005))

(declare-fun m!489051 () Bool)

(assert (=> d!78619 m!489051))

(assert (=> d!78619 m!488989))

(declare-fun m!489053 () Bool)

(assert (=> d!78619 m!489053))

(declare-fun m!489055 () Bool)

(assert (=> d!78619 m!489055))

(assert (=> d!78619 m!489053))

(assert (=> d!78619 m!488989))

(declare-fun m!489057 () Bool)

(assert (=> d!78619 m!489057))

(assert (=> b!508170 d!78619))

(declare-fun call!31480 () Bool)

(declare-fun bm!31477 () Bool)

(assert (=> bm!31477 (= call!31480 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!508281 () Bool)

(declare-fun e!297358 () Bool)

(declare-fun e!297359 () Bool)

(assert (=> b!508281 (= e!297358 e!297359)))

(declare-fun lt!232218 () (_ BitVec 64))

(assert (=> b!508281 (= lt!232218 (select (arr!15688 a!3235) j!176))))

(declare-fun lt!232219 () Unit!15574)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32622 (_ BitVec 64) (_ BitVec 32)) Unit!15574)

(assert (=> b!508281 (= lt!232219 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!232218 j!176))))

(assert (=> b!508281 (arrayContainsKey!0 a!3235 lt!232218 #b00000000000000000000000000000000)))

(declare-fun lt!232220 () Unit!15574)

(assert (=> b!508281 (= lt!232220 lt!232219)))

(declare-fun res!309335 () Bool)

(assert (=> b!508281 (= res!309335 (= (seekEntryOrOpen!0 (select (arr!15688 a!3235) j!176) a!3235 mask!3524) (Found!4162 j!176)))))

(assert (=> b!508281 (=> (not res!309335) (not e!297359))))

(declare-fun b!508282 () Bool)

(declare-fun e!297360 () Bool)

(assert (=> b!508282 (= e!297360 e!297358)))

(declare-fun c!59752 () Bool)

(assert (=> b!508282 (= c!59752 (validKeyInArray!0 (select (arr!15688 a!3235) j!176)))))

(declare-fun b!508283 () Bool)

(assert (=> b!508283 (= e!297358 call!31480)))

(declare-fun b!508284 () Bool)

(assert (=> b!508284 (= e!297359 call!31480)))

(declare-fun d!78631 () Bool)

(declare-fun res!309334 () Bool)

(assert (=> d!78631 (=> res!309334 e!297360)))

(assert (=> d!78631 (= res!309334 (bvsge j!176 (size!16052 a!3235)))))

(assert (=> d!78631 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!297360)))

(assert (= (and d!78631 (not res!309334)) b!508282))

(assert (= (and b!508282 c!59752) b!508281))

(assert (= (and b!508282 (not c!59752)) b!508283))

(assert (= (and b!508281 res!309335) b!508284))

(assert (= (or b!508284 b!508283) bm!31477))

(declare-fun m!489085 () Bool)

(assert (=> bm!31477 m!489085))

(assert (=> b!508281 m!488989))

(declare-fun m!489087 () Bool)

(assert (=> b!508281 m!489087))

(declare-fun m!489089 () Bool)

(assert (=> b!508281 m!489089))

(assert (=> b!508281 m!488989))

(assert (=> b!508281 m!488991))

(assert (=> b!508282 m!488989))

(assert (=> b!508282 m!488989))

(assert (=> b!508282 m!488997))

(assert (=> b!508170 d!78631))

(declare-fun d!78643 () Bool)

(assert (=> d!78643 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!232223 () Unit!15574)

(declare-fun choose!38 (array!32622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15574)

(assert (=> d!78643 (= lt!232223 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78643 (validMask!0 mask!3524)))

(assert (=> d!78643 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!232223)))

(declare-fun bs!16092 () Bool)

(assert (= bs!16092 d!78643))

(assert (=> bs!16092 m!488993))

(declare-fun m!489097 () Bool)

(assert (=> bs!16092 m!489097))

(assert (=> bs!16092 m!489005))

(assert (=> b!508170 d!78643))

(declare-fun b!508296 () Bool)

(declare-fun c!59756 () Bool)

(declare-fun lt!232225 () (_ BitVec 64))

(assert (=> b!508296 (= c!59756 (= lt!232225 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!297375 () SeekEntryResult!4162)

(declare-fun e!297374 () SeekEntryResult!4162)

(assert (=> b!508296 (= e!297375 e!297374)))

(declare-fun b!508297 () Bool)

(declare-fun e!297373 () SeekEntryResult!4162)

(assert (=> b!508297 (= e!297373 e!297375)))

(declare-fun lt!232224 () SeekEntryResult!4162)

(assert (=> b!508297 (= lt!232225 (select (arr!15688 a!3235) (index!18838 lt!232224)))))

(declare-fun c!59755 () Bool)

(assert (=> b!508297 (= c!59755 (= lt!232225 k0!2280))))

(declare-fun b!508298 () Bool)

(assert (=> b!508298 (= e!297375 (Found!4162 (index!18838 lt!232224)))))

(declare-fun b!508299 () Bool)

(assert (=> b!508299 (= e!297374 (MissingZero!4162 (index!18838 lt!232224)))))

(declare-fun b!508300 () Bool)

(assert (=> b!508300 (= e!297374 (seekKeyOrZeroReturnVacant!0 (x!47846 lt!232224) (index!18838 lt!232224) (index!18838 lt!232224) k0!2280 a!3235 mask!3524))))

(declare-fun d!78649 () Bool)

(declare-fun lt!232226 () SeekEntryResult!4162)

(assert (=> d!78649 (and (or ((_ is Undefined!4162) lt!232226) (not ((_ is Found!4162) lt!232226)) (and (bvsge (index!18837 lt!232226) #b00000000000000000000000000000000) (bvslt (index!18837 lt!232226) (size!16052 a!3235)))) (or ((_ is Undefined!4162) lt!232226) ((_ is Found!4162) lt!232226) (not ((_ is MissingZero!4162) lt!232226)) (and (bvsge (index!18836 lt!232226) #b00000000000000000000000000000000) (bvslt (index!18836 lt!232226) (size!16052 a!3235)))) (or ((_ is Undefined!4162) lt!232226) ((_ is Found!4162) lt!232226) ((_ is MissingZero!4162) lt!232226) (not ((_ is MissingVacant!4162) lt!232226)) (and (bvsge (index!18839 lt!232226) #b00000000000000000000000000000000) (bvslt (index!18839 lt!232226) (size!16052 a!3235)))) (or ((_ is Undefined!4162) lt!232226) (ite ((_ is Found!4162) lt!232226) (= (select (arr!15688 a!3235) (index!18837 lt!232226)) k0!2280) (ite ((_ is MissingZero!4162) lt!232226) (= (select (arr!15688 a!3235) (index!18836 lt!232226)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4162) lt!232226) (= (select (arr!15688 a!3235) (index!18839 lt!232226)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78649 (= lt!232226 e!297373)))

(declare-fun c!59754 () Bool)

(assert (=> d!78649 (= c!59754 (and ((_ is Intermediate!4162) lt!232224) (undefined!4974 lt!232224)))))

(assert (=> d!78649 (= lt!232224 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78649 (validMask!0 mask!3524)))

(assert (=> d!78649 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!232226)))

(declare-fun b!508301 () Bool)

(assert (=> b!508301 (= e!297373 Undefined!4162)))

(assert (= (and d!78649 c!59754) b!508301))

(assert (= (and d!78649 (not c!59754)) b!508297))

(assert (= (and b!508297 c!59755) b!508298))

(assert (= (and b!508297 (not c!59755)) b!508296))

(assert (= (and b!508296 c!59756) b!508299))

(assert (= (and b!508296 (not c!59756)) b!508300))

(declare-fun m!489099 () Bool)

(assert (=> b!508297 m!489099))

(declare-fun m!489101 () Bool)

(assert (=> b!508300 m!489101))

(declare-fun m!489103 () Bool)

(assert (=> d!78649 m!489103))

(assert (=> d!78649 m!489005))

(declare-fun m!489105 () Bool)

(assert (=> d!78649 m!489105))

(declare-fun m!489107 () Bool)

(assert (=> d!78649 m!489107))

(declare-fun m!489109 () Bool)

(assert (=> d!78649 m!489109))

(assert (=> d!78649 m!489107))

(declare-fun m!489111 () Bool)

(assert (=> d!78649 m!489111))

(assert (=> b!508168 d!78649))

(declare-fun d!78651 () Bool)

(assert (=> d!78651 (= (validKeyInArray!0 (select (arr!15688 a!3235) j!176)) (and (not (= (select (arr!15688 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15688 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!508174 d!78651))

(declare-fun bm!31481 () Bool)

(declare-fun call!31484 () Bool)

(assert (=> bm!31481 (= call!31484 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!508310 () Bool)

(declare-fun e!297380 () Bool)

(declare-fun e!297381 () Bool)

(assert (=> b!508310 (= e!297380 e!297381)))

(declare-fun lt!232233 () (_ BitVec 64))

(assert (=> b!508310 (= lt!232233 (select (arr!15688 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!232234 () Unit!15574)

(assert (=> b!508310 (= lt!232234 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!232233 #b00000000000000000000000000000000))))

(assert (=> b!508310 (arrayContainsKey!0 a!3235 lt!232233 #b00000000000000000000000000000000)))

(declare-fun lt!232235 () Unit!15574)

(assert (=> b!508310 (= lt!232235 lt!232234)))

(declare-fun res!309350 () Bool)

(assert (=> b!508310 (= res!309350 (= (seekEntryOrOpen!0 (select (arr!15688 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4162 #b00000000000000000000000000000000)))))

(assert (=> b!508310 (=> (not res!309350) (not e!297381))))

(declare-fun b!508311 () Bool)

(declare-fun e!297382 () Bool)

(assert (=> b!508311 (= e!297382 e!297380)))

(declare-fun c!59759 () Bool)

(assert (=> b!508311 (= c!59759 (validKeyInArray!0 (select (arr!15688 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508312 () Bool)

(assert (=> b!508312 (= e!297380 call!31484)))

(declare-fun b!508313 () Bool)

(assert (=> b!508313 (= e!297381 call!31484)))

(declare-fun d!78653 () Bool)

(declare-fun res!309349 () Bool)

(assert (=> d!78653 (=> res!309349 e!297382)))

(assert (=> d!78653 (= res!309349 (bvsge #b00000000000000000000000000000000 (size!16052 a!3235)))))

(assert (=> d!78653 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!297382)))

(assert (= (and d!78653 (not res!309349)) b!508311))

(assert (= (and b!508311 c!59759) b!508310))

(assert (= (and b!508311 (not c!59759)) b!508312))

(assert (= (and b!508310 res!309350) b!508313))

(assert (= (or b!508313 b!508312) bm!31481))

(declare-fun m!489113 () Bool)

(assert (=> bm!31481 m!489113))

(assert (=> b!508310 m!489037))

(declare-fun m!489115 () Bool)

(assert (=> b!508310 m!489115))

(declare-fun m!489117 () Bool)

(assert (=> b!508310 m!489117))

(assert (=> b!508310 m!489037))

(declare-fun m!489119 () Bool)

(assert (=> b!508310 m!489119))

(assert (=> b!508311 m!489037))

(assert (=> b!508311 m!489037))

(assert (=> b!508311 m!489041))

(assert (=> b!508169 d!78653))

(declare-fun d!78655 () Bool)

(declare-fun res!309357 () Bool)

(declare-fun e!297390 () Bool)

(assert (=> d!78655 (=> res!309357 e!297390)))

(assert (=> d!78655 (= res!309357 (= (select (arr!15688 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78655 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!297390)))

(declare-fun b!508322 () Bool)

(declare-fun e!297391 () Bool)

(assert (=> b!508322 (= e!297390 e!297391)))

(declare-fun res!309358 () Bool)

(assert (=> b!508322 (=> (not res!309358) (not e!297391))))

(assert (=> b!508322 (= res!309358 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16052 a!3235)))))

(declare-fun b!508323 () Bool)

(assert (=> b!508323 (= e!297391 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78655 (not res!309357)) b!508322))

(assert (= (and b!508322 res!309358) b!508323))

(assert (=> d!78655 m!489037))

(declare-fun m!489133 () Bool)

(assert (=> b!508323 m!489133))

(assert (=> b!508173 d!78655))

(declare-fun d!78659 () Bool)

(assert (=> d!78659 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45906 d!78659))

(declare-fun d!78667 () Bool)

(assert (=> d!78667 (= (array_inv!11462 a!3235) (bvsge (size!16052 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45906 d!78667))

(declare-fun d!78669 () Bool)

(assert (=> d!78669 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!508171 d!78669))

(check-sat (not bm!31469) (not b!508310) (not b!508281) (not b!508311) (not b!508214) (not bm!31481) (not b!508300) (not b!508282) (not b!508239) (not b!508323) (not d!78649) (not d!78643) (not b!508212) (not d!78619) (not bm!31477) (not b!508213))
(check-sat)
