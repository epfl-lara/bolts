; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49464 () Bool)

(assert start!49464)

(declare-fun b!544326 () Bool)

(declare-fun res!338740 () Bool)

(declare-fun e!314695 () Bool)

(assert (=> b!544326 (=> (not res!338740) (not e!314695))))

(declare-datatypes ((array!34347 0))(
  ( (array!34348 (arr!16501 (Array (_ BitVec 32) (_ BitVec 64))) (size!16865 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34347)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544326 (= res!338740 (validKeyInArray!0 (select (arr!16501 a!3154) j!147)))))

(declare-fun b!544327 () Bool)

(declare-fun lt!248474 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun e!314698 () Bool)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544327 (= e!314698 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (or (bvslt lt!248474 #b00000000000000000000000000000000) (bvsge lt!248474 (size!16865 a!3154)))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544327 (= lt!248474 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544328 () Bool)

(declare-fun res!338745 () Bool)

(assert (=> b!544328 (=> (not res!338745) (not e!314695))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!544328 (= res!338745 (validKeyInArray!0 k0!1998))))

(declare-fun res!338742 () Bool)

(assert (=> start!49464 (=> (not res!338742) (not e!314695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49464 (= res!338742 (validMask!0 mask!3216))))

(assert (=> start!49464 e!314695))

(assert (=> start!49464 true))

(declare-fun array_inv!12275 (array!34347) Bool)

(assert (=> start!49464 (array_inv!12275 a!3154)))

(declare-fun b!544329 () Bool)

(declare-fun res!338746 () Bool)

(assert (=> b!544329 (=> (not res!338746) (not e!314695))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544329 (= res!338746 (and (= (size!16865 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16865 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16865 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544330 () Bool)

(declare-fun e!314697 () Bool)

(assert (=> b!544330 (= e!314697 e!314698)))

(declare-fun res!338743 () Bool)

(assert (=> b!544330 (=> (not res!338743) (not e!314698))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4966 0))(
  ( (MissingZero!4966 (index!22088 (_ BitVec 32))) (Found!4966 (index!22089 (_ BitVec 32))) (Intermediate!4966 (undefined!5778 Bool) (index!22090 (_ BitVec 32)) (x!51031 (_ BitVec 32))) (Undefined!4966) (MissingVacant!4966 (index!22091 (_ BitVec 32))) )
))
(declare-fun lt!248473 () SeekEntryResult!4966)

(assert (=> b!544330 (= res!338743 (= lt!248473 (Intermediate!4966 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34347 (_ BitVec 32)) SeekEntryResult!4966)

(assert (=> b!544330 (= lt!248473 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16501 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544331 () Bool)

(declare-fun res!338750 () Bool)

(assert (=> b!544331 (=> (not res!338750) (not e!314698))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544331 (= res!338750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216) (select (arr!16501 a!3154) j!147) a!3154 mask!3216) lt!248473))))

(declare-fun b!544332 () Bool)

(assert (=> b!544332 (= e!314695 e!314697)))

(declare-fun res!338749 () Bool)

(assert (=> b!544332 (=> (not res!338749) (not e!314697))))

(declare-fun lt!248472 () SeekEntryResult!4966)

(assert (=> b!544332 (= res!338749 (or (= lt!248472 (MissingZero!4966 i!1153)) (= lt!248472 (MissingVacant!4966 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34347 (_ BitVec 32)) SeekEntryResult!4966)

(assert (=> b!544332 (= lt!248472 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!544333 () Bool)

(declare-fun res!338748 () Bool)

(assert (=> b!544333 (=> (not res!338748) (not e!314697))))

(declare-datatypes ((List!10673 0))(
  ( (Nil!10670) (Cons!10669 (h!11627 (_ BitVec 64)) (t!16909 List!10673)) )
))
(declare-fun arrayNoDuplicates!0 (array!34347 (_ BitVec 32) List!10673) Bool)

(assert (=> b!544333 (= res!338748 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10670))))

(declare-fun b!544334 () Bool)

(declare-fun res!338747 () Bool)

(assert (=> b!544334 (=> (not res!338747) (not e!314695))))

(declare-fun arrayContainsKey!0 (array!34347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544334 (= res!338747 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544335 () Bool)

(declare-fun res!338739 () Bool)

(assert (=> b!544335 (=> (not res!338739) (not e!314697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34347 (_ BitVec 32)) Bool)

(assert (=> b!544335 (= res!338739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544336 () Bool)

(declare-fun res!338741 () Bool)

(assert (=> b!544336 (=> (not res!338741) (not e!314698))))

(assert (=> b!544336 (= res!338741 (and (not (= (select (arr!16501 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16501 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16501 a!3154) index!1177) (select (arr!16501 a!3154) j!147)))))))

(declare-fun b!544337 () Bool)

(declare-fun res!338744 () Bool)

(assert (=> b!544337 (=> (not res!338744) (not e!314697))))

(assert (=> b!544337 (= res!338744 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16865 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16865 a!3154)) (= (select (arr!16501 a!3154) resIndex!32) (select (arr!16501 a!3154) j!147))))))

(assert (= (and start!49464 res!338742) b!544329))

(assert (= (and b!544329 res!338746) b!544326))

(assert (= (and b!544326 res!338740) b!544328))

(assert (= (and b!544328 res!338745) b!544334))

(assert (= (and b!544334 res!338747) b!544332))

(assert (= (and b!544332 res!338749) b!544335))

(assert (= (and b!544335 res!338739) b!544333))

(assert (= (and b!544333 res!338748) b!544337))

(assert (= (and b!544337 res!338744) b!544330))

(assert (= (and b!544330 res!338743) b!544331))

(assert (= (and b!544331 res!338750) b!544336))

(assert (= (and b!544336 res!338741) b!544327))

(declare-fun m!522247 () Bool)

(assert (=> b!544333 m!522247))

(declare-fun m!522249 () Bool)

(assert (=> b!544332 m!522249))

(declare-fun m!522251 () Bool)

(assert (=> b!544337 m!522251))

(declare-fun m!522253 () Bool)

(assert (=> b!544337 m!522253))

(declare-fun m!522255 () Bool)

(assert (=> b!544336 m!522255))

(assert (=> b!544336 m!522253))

(declare-fun m!522257 () Bool)

(assert (=> b!544327 m!522257))

(assert (=> b!544330 m!522253))

(assert (=> b!544330 m!522253))

(declare-fun m!522259 () Bool)

(assert (=> b!544330 m!522259))

(assert (=> b!544326 m!522253))

(assert (=> b!544326 m!522253))

(declare-fun m!522261 () Bool)

(assert (=> b!544326 m!522261))

(declare-fun m!522263 () Bool)

(assert (=> b!544335 m!522263))

(declare-fun m!522265 () Bool)

(assert (=> start!49464 m!522265))

(declare-fun m!522267 () Bool)

(assert (=> start!49464 m!522267))

(declare-fun m!522269 () Bool)

(assert (=> b!544334 m!522269))

(assert (=> b!544331 m!522253))

(assert (=> b!544331 m!522253))

(declare-fun m!522271 () Bool)

(assert (=> b!544331 m!522271))

(assert (=> b!544331 m!522271))

(assert (=> b!544331 m!522253))

(declare-fun m!522273 () Bool)

(assert (=> b!544331 m!522273))

(declare-fun m!522275 () Bool)

(assert (=> b!544328 m!522275))

(check-sat (not b!544335) (not b!544327) (not b!544334) (not start!49464) (not b!544330) (not b!544331) (not b!544333) (not b!544326) (not b!544328) (not b!544332))
(check-sat)
(get-model)

(declare-fun b!544384 () Bool)

(declare-fun e!314720 () Bool)

(declare-fun e!314719 () Bool)

(assert (=> b!544384 (= e!314720 e!314719)))

(declare-fun res!338795 () Bool)

(assert (=> b!544384 (=> (not res!338795) (not e!314719))))

(declare-fun e!314722 () Bool)

(assert (=> b!544384 (= res!338795 (not e!314722))))

(declare-fun res!338793 () Bool)

(assert (=> b!544384 (=> (not res!338793) (not e!314722))))

(assert (=> b!544384 (= res!338793 (validKeyInArray!0 (select (arr!16501 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544385 () Bool)

(declare-fun e!314721 () Bool)

(declare-fun call!32093 () Bool)

(assert (=> b!544385 (= e!314721 call!32093)))

(declare-fun d!81973 () Bool)

(declare-fun res!338794 () Bool)

(assert (=> d!81973 (=> res!338794 e!314720)))

(assert (=> d!81973 (= res!338794 (bvsge #b00000000000000000000000000000000 (size!16865 a!3154)))))

(assert (=> d!81973 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10670) e!314720)))

(declare-fun b!544386 () Bool)

(declare-fun contains!2813 (List!10673 (_ BitVec 64)) Bool)

(assert (=> b!544386 (= e!314722 (contains!2813 Nil!10670 (select (arr!16501 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544387 () Bool)

(assert (=> b!544387 (= e!314719 e!314721)))

(declare-fun c!63119 () Bool)

(assert (=> b!544387 (= c!63119 (validKeyInArray!0 (select (arr!16501 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544388 () Bool)

(assert (=> b!544388 (= e!314721 call!32093)))

(declare-fun bm!32090 () Bool)

(assert (=> bm!32090 (= call!32093 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63119 (Cons!10669 (select (arr!16501 a!3154) #b00000000000000000000000000000000) Nil!10670) Nil!10670)))))

(assert (= (and d!81973 (not res!338794)) b!544384))

(assert (= (and b!544384 res!338793) b!544386))

(assert (= (and b!544384 res!338795) b!544387))

(assert (= (and b!544387 c!63119) b!544388))

(assert (= (and b!544387 (not c!63119)) b!544385))

(assert (= (or b!544388 b!544385) bm!32090))

(declare-fun m!522307 () Bool)

(assert (=> b!544384 m!522307))

(assert (=> b!544384 m!522307))

(declare-fun m!522309 () Bool)

(assert (=> b!544384 m!522309))

(assert (=> b!544386 m!522307))

(assert (=> b!544386 m!522307))

(declare-fun m!522311 () Bool)

(assert (=> b!544386 m!522311))

(assert (=> b!544387 m!522307))

(assert (=> b!544387 m!522307))

(assert (=> b!544387 m!522309))

(assert (=> bm!32090 m!522307))

(declare-fun m!522313 () Bool)

(assert (=> bm!32090 m!522313))

(assert (=> b!544333 d!81973))

(declare-fun b!544401 () Bool)

(declare-fun e!314729 () SeekEntryResult!4966)

(assert (=> b!544401 (= e!314729 Undefined!4966)))

(declare-fun b!544402 () Bool)

(declare-fun e!314730 () SeekEntryResult!4966)

(declare-fun lt!248495 () SeekEntryResult!4966)

(assert (=> b!544402 (= e!314730 (Found!4966 (index!22090 lt!248495)))))

(declare-fun b!544403 () Bool)

(assert (=> b!544403 (= e!314729 e!314730)))

(declare-fun lt!248493 () (_ BitVec 64))

(assert (=> b!544403 (= lt!248493 (select (arr!16501 a!3154) (index!22090 lt!248495)))))

(declare-fun c!63128 () Bool)

(assert (=> b!544403 (= c!63128 (= lt!248493 k0!1998))))

(declare-fun e!314731 () SeekEntryResult!4966)

(declare-fun b!544404 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34347 (_ BitVec 32)) SeekEntryResult!4966)

(assert (=> b!544404 (= e!314731 (seekKeyOrZeroReturnVacant!0 (x!51031 lt!248495) (index!22090 lt!248495) (index!22090 lt!248495) k0!1998 a!3154 mask!3216))))

(declare-fun d!81975 () Bool)

(declare-fun lt!248494 () SeekEntryResult!4966)

(get-info :version)

(assert (=> d!81975 (and (or ((_ is Undefined!4966) lt!248494) (not ((_ is Found!4966) lt!248494)) (and (bvsge (index!22089 lt!248494) #b00000000000000000000000000000000) (bvslt (index!22089 lt!248494) (size!16865 a!3154)))) (or ((_ is Undefined!4966) lt!248494) ((_ is Found!4966) lt!248494) (not ((_ is MissingZero!4966) lt!248494)) (and (bvsge (index!22088 lt!248494) #b00000000000000000000000000000000) (bvslt (index!22088 lt!248494) (size!16865 a!3154)))) (or ((_ is Undefined!4966) lt!248494) ((_ is Found!4966) lt!248494) ((_ is MissingZero!4966) lt!248494) (not ((_ is MissingVacant!4966) lt!248494)) (and (bvsge (index!22091 lt!248494) #b00000000000000000000000000000000) (bvslt (index!22091 lt!248494) (size!16865 a!3154)))) (or ((_ is Undefined!4966) lt!248494) (ite ((_ is Found!4966) lt!248494) (= (select (arr!16501 a!3154) (index!22089 lt!248494)) k0!1998) (ite ((_ is MissingZero!4966) lt!248494) (= (select (arr!16501 a!3154) (index!22088 lt!248494)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4966) lt!248494) (= (select (arr!16501 a!3154) (index!22091 lt!248494)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81975 (= lt!248494 e!314729)))

(declare-fun c!63126 () Bool)

(assert (=> d!81975 (= c!63126 (and ((_ is Intermediate!4966) lt!248495) (undefined!5778 lt!248495)))))

(assert (=> d!81975 (= lt!248495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81975 (validMask!0 mask!3216)))

(assert (=> d!81975 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!248494)))

(declare-fun b!544405 () Bool)

(assert (=> b!544405 (= e!314731 (MissingZero!4966 (index!22090 lt!248495)))))

(declare-fun b!544406 () Bool)

(declare-fun c!63127 () Bool)

(assert (=> b!544406 (= c!63127 (= lt!248493 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544406 (= e!314730 e!314731)))

(assert (= (and d!81975 c!63126) b!544401))

(assert (= (and d!81975 (not c!63126)) b!544403))

(assert (= (and b!544403 c!63128) b!544402))

(assert (= (and b!544403 (not c!63128)) b!544406))

(assert (= (and b!544406 c!63127) b!544405))

(assert (= (and b!544406 (not c!63127)) b!544404))

(declare-fun m!522317 () Bool)

(assert (=> b!544403 m!522317))

(declare-fun m!522319 () Bool)

(assert (=> b!544404 m!522319))

(assert (=> d!81975 m!522265))

(declare-fun m!522321 () Bool)

(assert (=> d!81975 m!522321))

(declare-fun m!522323 () Bool)

(assert (=> d!81975 m!522323))

(declare-fun m!522325 () Bool)

(assert (=> d!81975 m!522325))

(declare-fun m!522327 () Bool)

(assert (=> d!81975 m!522327))

(declare-fun m!522329 () Bool)

(assert (=> d!81975 m!522329))

(assert (=> d!81975 m!522321))

(assert (=> b!544332 d!81975))

(declare-fun d!81983 () Bool)

(declare-fun lt!248504 () (_ BitVec 32))

(assert (=> d!81983 (and (bvsge lt!248504 #b00000000000000000000000000000000) (bvslt lt!248504 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81983 (= lt!248504 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!81983 (validMask!0 mask!3216)))

(assert (=> d!81983 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248504)))

(declare-fun bs!16987 () Bool)

(assert (= bs!16987 d!81983))

(declare-fun m!522331 () Bool)

(assert (=> bs!16987 m!522331))

(assert (=> bs!16987 m!522265))

(assert (=> b!544327 d!81983))

(declare-fun d!81985 () Bool)

(assert (=> d!81985 (= (validKeyInArray!0 (select (arr!16501 a!3154) j!147)) (and (not (= (select (arr!16501 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16501 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544326 d!81985))

(declare-fun b!544461 () Bool)

(declare-fun e!314771 () Bool)

(declare-fun e!314767 () Bool)

(assert (=> b!544461 (= e!314771 e!314767)))

(declare-fun res!338817 () Bool)

(declare-fun lt!248516 () SeekEntryResult!4966)

(assert (=> b!544461 (= res!338817 (and ((_ is Intermediate!4966) lt!248516) (not (undefined!5778 lt!248516)) (bvslt (x!51031 lt!248516) #b01111111111111111111111111111110) (bvsge (x!51031 lt!248516) #b00000000000000000000000000000000) (bvsge (x!51031 lt!248516) #b00000000000000000000000000000000)))))

(assert (=> b!544461 (=> (not res!338817) (not e!314767))))

(declare-fun b!544462 () Bool)

(assert (=> b!544462 (= e!314771 (bvsge (x!51031 lt!248516) #b01111111111111111111111111111110))))

(declare-fun b!544463 () Bool)

(declare-fun e!314770 () SeekEntryResult!4966)

(assert (=> b!544463 (= e!314770 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16501 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544464 () Bool)

(assert (=> b!544464 (= e!314770 (Intermediate!4966 false (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544465 () Bool)

(assert (=> b!544465 (and (bvsge (index!22090 lt!248516) #b00000000000000000000000000000000) (bvslt (index!22090 lt!248516) (size!16865 a!3154)))))

(declare-fun res!338818 () Bool)

(assert (=> b!544465 (= res!338818 (= (select (arr!16501 a!3154) (index!22090 lt!248516)) (select (arr!16501 a!3154) j!147)))))

(declare-fun e!314768 () Bool)

(assert (=> b!544465 (=> res!338818 e!314768)))

(assert (=> b!544465 (= e!314767 e!314768)))

(declare-fun b!544466 () Bool)

(declare-fun e!314769 () SeekEntryResult!4966)

(assert (=> b!544466 (= e!314769 (Intermediate!4966 true (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544467 () Bool)

(assert (=> b!544467 (and (bvsge (index!22090 lt!248516) #b00000000000000000000000000000000) (bvslt (index!22090 lt!248516) (size!16865 a!3154)))))

(assert (=> b!544467 (= e!314768 (= (select (arr!16501 a!3154) (index!22090 lt!248516)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544468 () Bool)

(assert (=> b!544468 (and (bvsge (index!22090 lt!248516) #b00000000000000000000000000000000) (bvslt (index!22090 lt!248516) (size!16865 a!3154)))))

(declare-fun res!338819 () Bool)

(assert (=> b!544468 (= res!338819 (= (select (arr!16501 a!3154) (index!22090 lt!248516)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544468 (=> res!338819 e!314768)))

(declare-fun d!81987 () Bool)

(assert (=> d!81987 e!314771))

(declare-fun c!63146 () Bool)

(assert (=> d!81987 (= c!63146 (and ((_ is Intermediate!4966) lt!248516) (undefined!5778 lt!248516)))))

(assert (=> d!81987 (= lt!248516 e!314769)))

(declare-fun c!63147 () Bool)

(assert (=> d!81987 (= c!63147 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!248517 () (_ BitVec 64))

(assert (=> d!81987 (= lt!248517 (select (arr!16501 a!3154) (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216)))))

(assert (=> d!81987 (validMask!0 mask!3216)))

(assert (=> d!81987 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216) (select (arr!16501 a!3154) j!147) a!3154 mask!3216) lt!248516)))

(declare-fun b!544460 () Bool)

(assert (=> b!544460 (= e!314769 e!314770)))

(declare-fun c!63145 () Bool)

(assert (=> b!544460 (= c!63145 (or (= lt!248517 (select (arr!16501 a!3154) j!147)) (= (bvadd lt!248517 lt!248517) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!81987 c!63147) b!544466))

(assert (= (and d!81987 (not c!63147)) b!544460))

(assert (= (and b!544460 c!63145) b!544464))

(assert (= (and b!544460 (not c!63145)) b!544463))

(assert (= (and d!81987 c!63146) b!544462))

(assert (= (and d!81987 (not c!63146)) b!544461))

(assert (= (and b!544461 res!338817) b!544465))

(assert (= (and b!544465 (not res!338818)) b!544468))

(assert (= (and b!544468 (not res!338819)) b!544467))

(declare-fun m!522349 () Bool)

(assert (=> b!544465 m!522349))

(assert (=> b!544468 m!522349))

(assert (=> b!544467 m!522349))

(assert (=> d!81987 m!522271))

(declare-fun m!522351 () Bool)

(assert (=> d!81987 m!522351))

(assert (=> d!81987 m!522265))

(assert (=> b!544463 m!522271))

(declare-fun m!522353 () Bool)

(assert (=> b!544463 m!522353))

(assert (=> b!544463 m!522353))

(assert (=> b!544463 m!522253))

(declare-fun m!522355 () Bool)

(assert (=> b!544463 m!522355))

(assert (=> b!544331 d!81987))

(declare-fun d!82003 () Bool)

(declare-fun lt!248525 () (_ BitVec 32))

(declare-fun lt!248524 () (_ BitVec 32))

(assert (=> d!82003 (= lt!248525 (bvmul (bvxor lt!248524 (bvlshr lt!248524 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82003 (= lt!248524 ((_ extract 31 0) (bvand (bvxor (select (arr!16501 a!3154) j!147) (bvlshr (select (arr!16501 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82003 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338826 (let ((h!11629 ((_ extract 31 0) (bvand (bvxor (select (arr!16501 a!3154) j!147) (bvlshr (select (arr!16501 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51037 (bvmul (bvxor h!11629 (bvlshr h!11629 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51037 (bvlshr x!51037 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338826 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338826 #b00000000000000000000000000000000))))))

(assert (=> d!82003 (= (toIndex!0 (select (arr!16501 a!3154) j!147) mask!3216) (bvand (bvxor lt!248525 (bvlshr lt!248525 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!544331 d!82003))

(declare-fun b!544489 () Bool)

(declare-fun e!314787 () Bool)

(declare-fun e!314783 () Bool)

(assert (=> b!544489 (= e!314787 e!314783)))

(declare-fun res!338830 () Bool)

(declare-fun lt!248526 () SeekEntryResult!4966)

(assert (=> b!544489 (= res!338830 (and ((_ is Intermediate!4966) lt!248526) (not (undefined!5778 lt!248526)) (bvslt (x!51031 lt!248526) #b01111111111111111111111111111110) (bvsge (x!51031 lt!248526) #b00000000000000000000000000000000) (bvsge (x!51031 lt!248526) x!1030)))))

(assert (=> b!544489 (=> (not res!338830) (not e!314783))))

(declare-fun b!544490 () Bool)

(assert (=> b!544490 (= e!314787 (bvsge (x!51031 lt!248526) #b01111111111111111111111111111110))))

(declare-fun e!314786 () SeekEntryResult!4966)

(declare-fun b!544491 () Bool)

(assert (=> b!544491 (= e!314786 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16501 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544492 () Bool)

(assert (=> b!544492 (= e!314786 (Intermediate!4966 false index!1177 x!1030))))

(declare-fun b!544493 () Bool)

(assert (=> b!544493 (and (bvsge (index!22090 lt!248526) #b00000000000000000000000000000000) (bvslt (index!22090 lt!248526) (size!16865 a!3154)))))

(declare-fun res!338831 () Bool)

(assert (=> b!544493 (= res!338831 (= (select (arr!16501 a!3154) (index!22090 lt!248526)) (select (arr!16501 a!3154) j!147)))))

(declare-fun e!314784 () Bool)

(assert (=> b!544493 (=> res!338831 e!314784)))

(assert (=> b!544493 (= e!314783 e!314784)))

(declare-fun b!544494 () Bool)

(declare-fun e!314785 () SeekEntryResult!4966)

(assert (=> b!544494 (= e!314785 (Intermediate!4966 true index!1177 x!1030))))

(declare-fun b!544495 () Bool)

(assert (=> b!544495 (and (bvsge (index!22090 lt!248526) #b00000000000000000000000000000000) (bvslt (index!22090 lt!248526) (size!16865 a!3154)))))

(assert (=> b!544495 (= e!314784 (= (select (arr!16501 a!3154) (index!22090 lt!248526)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544496 () Bool)

(assert (=> b!544496 (and (bvsge (index!22090 lt!248526) #b00000000000000000000000000000000) (bvslt (index!22090 lt!248526) (size!16865 a!3154)))))

(declare-fun res!338832 () Bool)

(assert (=> b!544496 (= res!338832 (= (select (arr!16501 a!3154) (index!22090 lt!248526)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544496 (=> res!338832 e!314784)))

(declare-fun d!82007 () Bool)

(assert (=> d!82007 e!314787))

(declare-fun c!63154 () Bool)

(assert (=> d!82007 (= c!63154 (and ((_ is Intermediate!4966) lt!248526) (undefined!5778 lt!248526)))))

(assert (=> d!82007 (= lt!248526 e!314785)))

(declare-fun c!63155 () Bool)

(assert (=> d!82007 (= c!63155 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!248527 () (_ BitVec 64))

(assert (=> d!82007 (= lt!248527 (select (arr!16501 a!3154) index!1177))))

(assert (=> d!82007 (validMask!0 mask!3216)))

(assert (=> d!82007 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16501 a!3154) j!147) a!3154 mask!3216) lt!248526)))

(declare-fun b!544488 () Bool)

(assert (=> b!544488 (= e!314785 e!314786)))

(declare-fun c!63153 () Bool)

(assert (=> b!544488 (= c!63153 (or (= lt!248527 (select (arr!16501 a!3154) j!147)) (= (bvadd lt!248527 lt!248527) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!82007 c!63155) b!544494))

(assert (= (and d!82007 (not c!63155)) b!544488))

(assert (= (and b!544488 c!63153) b!544492))

(assert (= (and b!544488 (not c!63153)) b!544491))

(assert (= (and d!82007 c!63154) b!544490))

(assert (= (and d!82007 (not c!63154)) b!544489))

(assert (= (and b!544489 res!338830) b!544493))

(assert (= (and b!544493 (not res!338831)) b!544496))

(assert (= (and b!544496 (not res!338832)) b!544495))

(declare-fun m!522365 () Bool)

(assert (=> b!544493 m!522365))

(assert (=> b!544496 m!522365))

(assert (=> b!544495 m!522365))

(assert (=> d!82007 m!522255))

(assert (=> d!82007 m!522265))

(assert (=> b!544491 m!522257))

(assert (=> b!544491 m!522257))

(assert (=> b!544491 m!522253))

(declare-fun m!522367 () Bool)

(assert (=> b!544491 m!522367))

(assert (=> b!544330 d!82007))

(declare-fun d!82009 () Bool)

(assert (=> d!82009 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49464 d!82009))

(declare-fun d!82017 () Bool)

(assert (=> d!82017 (= (array_inv!12275 a!3154) (bvsge (size!16865 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49464 d!82017))

(declare-fun d!82019 () Bool)

(declare-fun res!338854 () Bool)

(declare-fun e!314822 () Bool)

(assert (=> d!82019 (=> res!338854 e!314822)))

(assert (=> d!82019 (= res!338854 (bvsge #b00000000000000000000000000000000 (size!16865 a!3154)))))

(assert (=> d!82019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!314822)))

(declare-fun b!544544 () Bool)

(declare-fun e!314823 () Bool)

(assert (=> b!544544 (= e!314822 e!314823)))

(declare-fun c!63170 () Bool)

(assert (=> b!544544 (= c!63170 (validKeyInArray!0 (select (arr!16501 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544545 () Bool)

(declare-fun e!314821 () Bool)

(assert (=> b!544545 (= e!314823 e!314821)))

(declare-fun lt!248550 () (_ BitVec 64))

(assert (=> b!544545 (= lt!248550 (select (arr!16501 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16888 0))(
  ( (Unit!16889) )
))
(declare-fun lt!248549 () Unit!16888)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34347 (_ BitVec 64) (_ BitVec 32)) Unit!16888)

(assert (=> b!544545 (= lt!248549 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248550 #b00000000000000000000000000000000))))

(assert (=> b!544545 (arrayContainsKey!0 a!3154 lt!248550 #b00000000000000000000000000000000)))

(declare-fun lt!248551 () Unit!16888)

(assert (=> b!544545 (= lt!248551 lt!248549)))

(declare-fun res!338853 () Bool)

(assert (=> b!544545 (= res!338853 (= (seekEntryOrOpen!0 (select (arr!16501 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4966 #b00000000000000000000000000000000)))))

(assert (=> b!544545 (=> (not res!338853) (not e!314821))))

(declare-fun bm!32102 () Bool)

(declare-fun call!32105 () Bool)

(assert (=> bm!32102 (= call!32105 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!544546 () Bool)

(assert (=> b!544546 (= e!314823 call!32105)))

(declare-fun b!544547 () Bool)

(assert (=> b!544547 (= e!314821 call!32105)))

(assert (= (and d!82019 (not res!338854)) b!544544))

(assert (= (and b!544544 c!63170) b!544545))

(assert (= (and b!544544 (not c!63170)) b!544546))

(assert (= (and b!544545 res!338853) b!544547))

(assert (= (or b!544547 b!544546) bm!32102))

(assert (=> b!544544 m!522307))

(assert (=> b!544544 m!522307))

(assert (=> b!544544 m!522309))

(assert (=> b!544545 m!522307))

(declare-fun m!522393 () Bool)

(assert (=> b!544545 m!522393))

(declare-fun m!522395 () Bool)

(assert (=> b!544545 m!522395))

(assert (=> b!544545 m!522307))

(declare-fun m!522397 () Bool)

(assert (=> b!544545 m!522397))

(declare-fun m!522399 () Bool)

(assert (=> bm!32102 m!522399))

(assert (=> b!544335 d!82019))

(declare-fun d!82025 () Bool)

(declare-fun res!338863 () Bool)

(declare-fun e!314834 () Bool)

(assert (=> d!82025 (=> res!338863 e!314834)))

(assert (=> d!82025 (= res!338863 (= (select (arr!16501 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!82025 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!314834)))

(declare-fun b!544560 () Bool)

(declare-fun e!314835 () Bool)

(assert (=> b!544560 (= e!314834 e!314835)))

(declare-fun res!338864 () Bool)

(assert (=> b!544560 (=> (not res!338864) (not e!314835))))

(assert (=> b!544560 (= res!338864 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16865 a!3154)))))

(declare-fun b!544561 () Bool)

(assert (=> b!544561 (= e!314835 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82025 (not res!338863)) b!544560))

(assert (= (and b!544560 res!338864) b!544561))

(assert (=> d!82025 m!522307))

(declare-fun m!522401 () Bool)

(assert (=> b!544561 m!522401))

(assert (=> b!544334 d!82025))

(declare-fun d!82027 () Bool)

(assert (=> d!82027 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544328 d!82027))

(check-sat (not b!544384) (not b!544463) (not b!544544) (not b!544561) (not bm!32090) (not b!544404) (not b!544387) (not bm!32102) (not b!544545) (not d!81975) (not d!81987) (not b!544386) (not d!82007) (not d!81983) (not b!544491))
(check-sat)
