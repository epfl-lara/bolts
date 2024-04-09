; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45908 () Bool)

(assert start!45908)

(declare-fun b!508192 () Bool)

(declare-fun res!309303 () Bool)

(declare-fun e!297302 () Bool)

(assert (=> b!508192 (=> (not res!309303) (not e!297302))))

(declare-datatypes ((array!32624 0))(
  ( (array!32625 (arr!15689 (Array (_ BitVec 32) (_ BitVec 64))) (size!16053 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32624)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508192 (= res!309303 (validKeyInArray!0 (select (arr!15689 a!3235) j!176)))))

(declare-fun b!508193 () Bool)

(declare-fun e!297303 () Bool)

(assert (=> b!508193 (= e!297302 e!297303)))

(declare-fun res!309308 () Bool)

(assert (=> b!508193 (=> (not res!309308) (not e!297303))))

(declare-datatypes ((SeekEntryResult!4163 0))(
  ( (MissingZero!4163 (index!18840 (_ BitVec 32))) (Found!4163 (index!18841 (_ BitVec 32))) (Intermediate!4163 (undefined!4975 Bool) (index!18842 (_ BitVec 32)) (x!47847 (_ BitVec 32))) (Undefined!4163) (MissingVacant!4163 (index!18843 (_ BitVec 32))) )
))
(declare-fun lt!232184 () SeekEntryResult!4163)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508193 (= res!309308 (or (= lt!232184 (MissingZero!4163 i!1204)) (= lt!232184 (MissingVacant!4163 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32624 (_ BitVec 32)) SeekEntryResult!4163)

(assert (=> b!508193 (= lt!232184 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508194 () Bool)

(declare-fun res!309306 () Bool)

(assert (=> b!508194 (=> (not res!309306) (not e!297302))))

(declare-fun arrayContainsKey!0 (array!32624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508194 (= res!309306 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508195 () Bool)

(declare-fun res!309305 () Bool)

(assert (=> b!508195 (=> (not res!309305) (not e!297303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32624 (_ BitVec 32)) Bool)

(assert (=> b!508195 (= res!309305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508196 () Bool)

(declare-fun res!309307 () Bool)

(assert (=> b!508196 (=> (not res!309307) (not e!297303))))

(declare-datatypes ((List!9900 0))(
  ( (Nil!9897) (Cons!9896 (h!10773 (_ BitVec 64)) (t!16136 List!9900)) )
))
(declare-fun arrayNoDuplicates!0 (array!32624 (_ BitVec 32) List!9900) Bool)

(assert (=> b!508196 (= res!309307 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9897))))

(declare-fun b!508197 () Bool)

(declare-fun res!309301 () Bool)

(assert (=> b!508197 (=> (not res!309301) (not e!297302))))

(assert (=> b!508197 (= res!309301 (and (= (size!16053 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16053 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16053 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508199 () Bool)

(assert (=> b!508199 (= e!297303 (not (= (seekEntryOrOpen!0 (select (arr!15689 a!3235) j!176) a!3235 mask!3524) (Found!4163 j!176))))))

(assert (=> b!508199 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15576 0))(
  ( (Unit!15577) )
))
(declare-fun lt!232183 () Unit!15576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15576)

(assert (=> b!508199 (= lt!232183 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508198 () Bool)

(declare-fun res!309304 () Bool)

(assert (=> b!508198 (=> (not res!309304) (not e!297302))))

(assert (=> b!508198 (= res!309304 (validKeyInArray!0 k!2280))))

(declare-fun res!309302 () Bool)

(assert (=> start!45908 (=> (not res!309302) (not e!297302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45908 (= res!309302 (validMask!0 mask!3524))))

(assert (=> start!45908 e!297302))

(assert (=> start!45908 true))

(declare-fun array_inv!11463 (array!32624) Bool)

(assert (=> start!45908 (array_inv!11463 a!3235)))

(assert (= (and start!45908 res!309302) b!508197))

(assert (= (and b!508197 res!309301) b!508192))

(assert (= (and b!508192 res!309303) b!508198))

(assert (= (and b!508198 res!309304) b!508194))

(assert (= (and b!508194 res!309306) b!508193))

(assert (= (and b!508193 res!309308) b!508195))

(assert (= (and b!508195 res!309305) b!508196))

(assert (= (and b!508196 res!309307) b!508199))

(declare-fun m!489013 () Bool)

(assert (=> b!508192 m!489013))

(assert (=> b!508192 m!489013))

(declare-fun m!489015 () Bool)

(assert (=> b!508192 m!489015))

(declare-fun m!489017 () Bool)

(assert (=> b!508196 m!489017))

(declare-fun m!489019 () Bool)

(assert (=> b!508193 m!489019))

(declare-fun m!489021 () Bool)

(assert (=> b!508195 m!489021))

(assert (=> b!508199 m!489013))

(assert (=> b!508199 m!489013))

(declare-fun m!489023 () Bool)

(assert (=> b!508199 m!489023))

(declare-fun m!489025 () Bool)

(assert (=> b!508199 m!489025))

(declare-fun m!489027 () Bool)

(assert (=> b!508199 m!489027))

(declare-fun m!489029 () Bool)

(assert (=> b!508198 m!489029))

(declare-fun m!489031 () Bool)

(assert (=> b!508194 m!489031))

(declare-fun m!489033 () Bool)

(assert (=> start!45908 m!489033))

(declare-fun m!489035 () Bool)

(assert (=> start!45908 m!489035))

(push 1)

(assert (not b!508198))

(assert (not start!45908))

(assert (not b!508193))

(assert (not b!508195))

(assert (not b!508194))

(assert (not b!508192))

(assert (not b!508196))

(assert (not b!508199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78623 () Bool)

(assert (=> d!78623 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!508198 d!78623))

(declare-fun b!508275 () Bool)

(declare-fun e!297357 () SeekEntryResult!4163)

(assert (=> b!508275 (= e!297357 Undefined!4163)))

(declare-fun b!508277 () Bool)

(declare-fun e!297356 () SeekEntryResult!4163)

(assert (=> b!508277 (= e!297357 e!297356)))

(declare-fun lt!232216 () (_ BitVec 64))

(declare-fun lt!232215 () SeekEntryResult!4163)

(assert (=> b!508277 (= lt!232216 (select (arr!15689 a!3235) (index!18842 lt!232215)))))

(declare-fun c!59749 () Bool)

(assert (=> b!508277 (= c!59749 (= lt!232216 k!2280))))

(declare-fun e!297355 () SeekEntryResult!4163)

(declare-fun b!508278 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32624 (_ BitVec 32)) SeekEntryResult!4163)

(assert (=> b!508278 (= e!297355 (seekKeyOrZeroReturnVacant!0 (x!47847 lt!232215) (index!18842 lt!232215) (index!18842 lt!232215) k!2280 a!3235 mask!3524))))

(declare-fun b!508279 () Bool)

(declare-fun c!59751 () Bool)

(assert (=> b!508279 (= c!59751 (= lt!232216 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!508279 (= e!297356 e!297355)))

(declare-fun b!508280 () Bool)

(assert (=> b!508280 (= e!297355 (MissingZero!4163 (index!18842 lt!232215)))))

(declare-fun b!508276 () Bool)

(assert (=> b!508276 (= e!297356 (Found!4163 (index!18842 lt!232215)))))

(declare-fun d!78625 () Bool)

(declare-fun lt!232217 () SeekEntryResult!4163)

(assert (=> d!78625 (and (or (is-Undefined!4163 lt!232217) (not (is-Found!4163 lt!232217)) (and (bvsge (index!18841 lt!232217) #b00000000000000000000000000000000) (bvslt (index!18841 lt!232217) (size!16053 a!3235)))) (or (is-Undefined!4163 lt!232217) (is-Found!4163 lt!232217) (not (is-MissingZero!4163 lt!232217)) (and (bvsge (index!18840 lt!232217) #b00000000000000000000000000000000) (bvslt (index!18840 lt!232217) (size!16053 a!3235)))) (or (is-Undefined!4163 lt!232217) (is-Found!4163 lt!232217) (is-MissingZero!4163 lt!232217) (not (is-MissingVacant!4163 lt!232217)) (and (bvsge (index!18843 lt!232217) #b00000000000000000000000000000000) (bvslt (index!18843 lt!232217) (size!16053 a!3235)))) (or (is-Undefined!4163 lt!232217) (ite (is-Found!4163 lt!232217) (= (select (arr!15689 a!3235) (index!18841 lt!232217)) k!2280) (ite (is-MissingZero!4163 lt!232217) (= (select (arr!15689 a!3235) (index!18840 lt!232217)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4163 lt!232217) (= (select (arr!15689 a!3235) (index!18843 lt!232217)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78625 (= lt!232217 e!297357)))

(declare-fun c!59750 () Bool)

(assert (=> d!78625 (= c!59750 (and (is-Intermediate!4163 lt!232215) (undefined!4975 lt!232215)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32624 (_ BitVec 32)) SeekEntryResult!4163)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!78625 (= lt!232215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78625 (validMask!0 mask!3524)))

(assert (=> d!78625 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!232217)))

(assert (= (and d!78625 c!59750) b!508275))

(assert (= (and d!78625 (not c!59750)) b!508277))

(assert (= (and b!508277 c!59749) b!508276))

(assert (= (and b!508277 (not c!59749)) b!508279))

(assert (= (and b!508279 c!59751) b!508280))

(assert (= (and b!508279 (not c!59751)) b!508278))

(declare-fun m!489071 () Bool)

(assert (=> b!508277 m!489071))

(declare-fun m!489073 () Bool)

(assert (=> b!508278 m!489073))

(declare-fun m!489075 () Bool)

(assert (=> d!78625 m!489075))

(assert (=> d!78625 m!489075))

(declare-fun m!489077 () Bool)

(assert (=> d!78625 m!489077))

(assert (=> d!78625 m!489033))

(declare-fun m!489079 () Bool)

(assert (=> d!78625 m!489079))

(declare-fun m!489081 () Bool)

(assert (=> d!78625 m!489081))

(declare-fun m!489083 () Bool)

(assert (=> d!78625 m!489083))

(assert (=> b!508193 d!78625))

(declare-fun d!78639 () Bool)

(assert (=> d!78639 (= (validKeyInArray!0 (select (arr!15689 a!3235) j!176)) (and (not (= (select (arr!15689 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15689 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!508192 d!78639))

(declare-fun b!508314 () Bool)

(declare-fun e!297384 () Bool)

(declare-fun e!297383 () Bool)

(assert (=> b!508314 (= e!297384 e!297383)))

(declare-fun c!59760 () Bool)

(assert (=> b!508314 (= c!59760 (validKeyInArray!0 (select (arr!15689 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78641 () Bool)

(declare-fun res!309351 () Bool)

(assert (=> d!78641 (=> res!309351 e!297384)))

(assert (=> d!78641 (= res!309351 (bvsge #b00000000000000000000000000000000 (size!16053 a!3235)))))

(assert (=> d!78641 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!297384)))

(declare-fun b!508315 () Bool)

(declare-fun e!297385 () Bool)

(declare-fun call!31485 () Bool)

(assert (=> b!508315 (= e!297385 call!31485)))

(declare-fun b!508316 () Bool)

(assert (=> b!508316 (= e!297383 e!297385)))

(declare-fun lt!232238 () (_ BitVec 64))

(assert (=> b!508316 (= lt!232238 (select (arr!15689 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!232237 () Unit!15576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32624 (_ BitVec 64) (_ BitVec 32)) Unit!15576)

(assert (=> b!508316 (= lt!232237 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!232238 #b00000000000000000000000000000000))))

(assert (=> b!508316 (arrayContainsKey!0 a!3235 lt!232238 #b00000000000000000000000000000000)))

(declare-fun lt!232236 () Unit!15576)

(assert (=> b!508316 (= lt!232236 lt!232237)))

(declare-fun res!309352 () Bool)

(assert (=> b!508316 (= res!309352 (= (seekEntryOrOpen!0 (select (arr!15689 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4163 #b00000000000000000000000000000000)))))

(assert (=> b!508316 (=> (not res!309352) (not e!297385))))

(declare-fun bm!31482 () Bool)

(assert (=> bm!31482 (= call!31485 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!508317 () Bool)

(assert (=> b!508317 (= e!297383 call!31485)))

(assert (= (and d!78641 (not res!309351)) b!508314))

(assert (= (and b!508314 c!59760) b!508316))

(assert (= (and b!508314 (not c!59760)) b!508317))

(assert (= (and b!508316 res!309352) b!508315))

(assert (= (or b!508315 b!508317) bm!31482))

(declare-fun m!489121 () Bool)

(assert (=> b!508314 m!489121))

(assert (=> b!508314 m!489121))

(declare-fun m!489123 () Bool)

(assert (=> b!508314 m!489123))

(assert (=> b!508316 m!489121))

(declare-fun m!489125 () Bool)

(assert (=> b!508316 m!489125))

(declare-fun m!489127 () Bool)

(assert (=> b!508316 m!489127))

(assert (=> b!508316 m!489121))

(declare-fun m!489129 () Bool)

(assert (=> b!508316 m!489129))

(declare-fun m!489131 () Bool)

(assert (=> bm!31482 m!489131))

(assert (=> b!508195 d!78641))

(declare-fun b!508334 () Bool)

(declare-fun e!297401 () Bool)

(declare-fun e!297402 () Bool)

(assert (=> b!508334 (= e!297401 e!297402)))

(declare-fun c!59763 () Bool)

(assert (=> b!508334 (= c!59763 (validKeyInArray!0 (select (arr!15689 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78657 () Bool)

(declare-fun res!309366 () Bool)

(declare-fun e!297403 () Bool)

(assert (=> d!78657 (=> res!309366 e!297403)))

(assert (=> d!78657 (= res!309366 (bvsge #b00000000000000000000000000000000 (size!16053 a!3235)))))

(assert (=> d!78657 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9897) e!297403)))

(declare-fun b!508335 () Bool)

(declare-fun e!297400 () Bool)

(declare-fun contains!2727 (List!9900 (_ BitVec 64)) Bool)

(assert (=> b!508335 (= e!297400 (contains!2727 Nil!9897 (select (arr!15689 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508336 () Bool)

(declare-fun call!31488 () Bool)

(assert (=> b!508336 (= e!297402 call!31488)))

(declare-fun bm!31485 () Bool)

(assert (=> bm!31485 (= call!31488 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59763 (Cons!9896 (select (arr!15689 a!3235) #b00000000000000000000000000000000) Nil!9897) Nil!9897)))))

(declare-fun b!508337 () Bool)

(assert (=> b!508337 (= e!297403 e!297401)))

(declare-fun res!309365 () Bool)

(assert (=> b!508337 (=> (not res!309365) (not e!297401))))

(assert (=> b!508337 (= res!309365 (not e!297400))))

(declare-fun res!309367 () Bool)

(assert (=> b!508337 (=> (not res!309367) (not e!297400))))

(assert (=> b!508337 (= res!309367 (validKeyInArray!0 (select (arr!15689 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508338 () Bool)

(assert (=> b!508338 (= e!297402 call!31488)))

(assert (= (and d!78657 (not res!309366)) b!508337))

(assert (= (and b!508337 res!309367) b!508335))

(assert (= (and b!508337 res!309365) b!508334))

(assert (= (and b!508334 c!59763) b!508338))

(assert (= (and b!508334 (not c!59763)) b!508336))

(assert (= (or b!508338 b!508336) bm!31485))

(assert (=> b!508334 m!489121))

(assert (=> b!508334 m!489121))

(assert (=> b!508334 m!489123))

(assert (=> b!508335 m!489121))

(assert (=> b!508335 m!489121))

(declare-fun m!489135 () Bool)

(assert (=> b!508335 m!489135))

(assert (=> bm!31485 m!489121))

(declare-fun m!489137 () Bool)

(assert (=> bm!31485 m!489137))

(assert (=> b!508337 m!489121))

(assert (=> b!508337 m!489121))

(assert (=> b!508337 m!489123))

(assert (=> b!508196 d!78657))

(declare-fun b!508339 () Bool)

(declare-fun e!297406 () SeekEntryResult!4163)

(assert (=> b!508339 (= e!297406 Undefined!4163)))

(declare-fun b!508341 () Bool)

(declare-fun e!297405 () SeekEntryResult!4163)

(assert (=> b!508341 (= e!297406 e!297405)))

