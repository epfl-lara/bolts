; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26982 () Bool)

(assert start!26982)

(declare-fun b!279238 () Bool)

(declare-fun res!142536 () Bool)

(declare-fun e!178036 () Bool)

(assert (=> b!279238 (=> (not res!142536) (not e!178036))))

(declare-datatypes ((array!13891 0))(
  ( (array!13892 (arr!6590 (Array (_ BitVec 32) (_ BitVec 64))) (size!6942 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13891)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!279238 (= res!142536 (and (= (size!6942 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6942 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6942 a!3325))))))

(declare-fun b!279239 () Bool)

(declare-fun res!142527 () Bool)

(declare-fun e!178033 () Bool)

(assert (=> b!279239 (=> (not res!142527) (not e!178033))))

(declare-datatypes ((List!4419 0))(
  ( (Nil!4416) (Cons!4415 (h!5085 (_ BitVec 64)) (t!9509 List!4419)) )
))
(declare-fun noDuplicate!153 (List!4419) Bool)

(assert (=> b!279239 (= res!142527 (noDuplicate!153 Nil!4416))))

(declare-fun b!279240 () Bool)

(declare-fun res!142533 () Bool)

(assert (=> b!279240 (=> (not res!142533) (not e!178033))))

(assert (=> b!279240 (= res!142533 (and (bvslt (size!6942 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6942 a!3325))))))

(declare-fun b!279241 () Bool)

(declare-fun res!142526 () Bool)

(assert (=> b!279241 (=> (not res!142526) (not e!178036))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279241 (= res!142526 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279242 () Bool)

(declare-fun res!142531 () Bool)

(assert (=> b!279242 (=> (not res!142531) (not e!178033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279242 (= res!142531 (validKeyInArray!0 (select (arr!6590 a!3325) startIndex!26)))))

(declare-fun b!279243 () Bool)

(declare-fun res!142529 () Bool)

(assert (=> b!279243 (=> (not res!142529) (not e!178033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13891 (_ BitVec 32)) Bool)

(assert (=> b!279243 (= res!142529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279244 () Bool)

(declare-fun e!178035 () Bool)

(assert (=> b!279244 (= e!178033 e!178035)))

(declare-fun res!142530 () Bool)

(assert (=> b!279244 (=> res!142530 e!178035)))

(declare-fun contains!1969 (List!4419 (_ BitVec 64)) Bool)

(assert (=> b!279244 (= res!142530 (contains!1969 Nil!4416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279245 () Bool)

(declare-fun res!142528 () Bool)

(assert (=> b!279245 (=> (not res!142528) (not e!178036))))

(assert (=> b!279245 (= res!142528 (validKeyInArray!0 k0!2581))))

(declare-fun res!142532 () Bool)

(assert (=> start!26982 (=> (not res!142532) (not e!178036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26982 (= res!142532 (validMask!0 mask!3868))))

(assert (=> start!26982 e!178036))

(declare-fun array_inv!4544 (array!13891) Bool)

(assert (=> start!26982 (array_inv!4544 a!3325)))

(assert (=> start!26982 true))

(declare-fun b!279246 () Bool)

(declare-fun res!142534 () Bool)

(assert (=> b!279246 (=> (not res!142534) (not e!178033))))

(assert (=> b!279246 (= res!142534 (not (= startIndex!26 i!1267)))))

(declare-fun b!279247 () Bool)

(assert (=> b!279247 (= e!178036 e!178033)))

(declare-fun res!142525 () Bool)

(assert (=> b!279247 (=> (not res!142525) (not e!178033))))

(declare-datatypes ((SeekEntryResult!1759 0))(
  ( (MissingZero!1759 (index!9206 (_ BitVec 32))) (Found!1759 (index!9207 (_ BitVec 32))) (Intermediate!1759 (undefined!2571 Bool) (index!9208 (_ BitVec 32)) (x!27421 (_ BitVec 32))) (Undefined!1759) (MissingVacant!1759 (index!9209 (_ BitVec 32))) )
))
(declare-fun lt!138608 () SeekEntryResult!1759)

(assert (=> b!279247 (= res!142525 (or (= lt!138608 (MissingZero!1759 i!1267)) (= lt!138608 (MissingVacant!1759 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13891 (_ BitVec 32)) SeekEntryResult!1759)

(assert (=> b!279247 (= lt!138608 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!279248 () Bool)

(assert (=> b!279248 (= e!178035 (contains!1969 Nil!4416 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279249 () Bool)

(declare-fun res!142535 () Bool)

(assert (=> b!279249 (=> (not res!142535) (not e!178036))))

(declare-fun arrayNoDuplicates!0 (array!13891 (_ BitVec 32) List!4419) Bool)

(assert (=> b!279249 (= res!142535 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4416))))

(assert (= (and start!26982 res!142532) b!279238))

(assert (= (and b!279238 res!142536) b!279245))

(assert (= (and b!279245 res!142528) b!279249))

(assert (= (and b!279249 res!142535) b!279241))

(assert (= (and b!279241 res!142526) b!279247))

(assert (= (and b!279247 res!142525) b!279243))

(assert (= (and b!279243 res!142529) b!279246))

(assert (= (and b!279246 res!142534) b!279242))

(assert (= (and b!279242 res!142531) b!279240))

(assert (= (and b!279240 res!142533) b!279239))

(assert (= (and b!279239 res!142527) b!279244))

(assert (= (and b!279244 (not res!142530)) b!279248))

(declare-fun m!294073 () Bool)

(assert (=> start!26982 m!294073))

(declare-fun m!294075 () Bool)

(assert (=> start!26982 m!294075))

(declare-fun m!294077 () Bool)

(assert (=> b!279248 m!294077))

(declare-fun m!294079 () Bool)

(assert (=> b!279242 m!294079))

(assert (=> b!279242 m!294079))

(declare-fun m!294081 () Bool)

(assert (=> b!279242 m!294081))

(declare-fun m!294083 () Bool)

(assert (=> b!279247 m!294083))

(declare-fun m!294085 () Bool)

(assert (=> b!279241 m!294085))

(declare-fun m!294087 () Bool)

(assert (=> b!279243 m!294087))

(declare-fun m!294089 () Bool)

(assert (=> b!279249 m!294089))

(declare-fun m!294091 () Bool)

(assert (=> b!279245 m!294091))

(declare-fun m!294093 () Bool)

(assert (=> b!279239 m!294093))

(declare-fun m!294095 () Bool)

(assert (=> b!279244 m!294095))

(check-sat (not b!279247) (not b!279241) (not b!279245) (not b!279249) (not b!279244) (not b!279239) (not start!26982) (not b!279243) (not b!279248) (not b!279242))
(check-sat)
(get-model)

(declare-fun d!64953 () Bool)

(assert (=> d!64953 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279245 d!64953))

(declare-fun d!64955 () Bool)

(declare-fun res!142577 () Bool)

(declare-fun e!178053 () Bool)

(assert (=> d!64955 (=> res!142577 e!178053)))

(get-info :version)

(assert (=> d!64955 (= res!142577 ((_ is Nil!4416) Nil!4416))))

(assert (=> d!64955 (= (noDuplicate!153 Nil!4416) e!178053)))

(declare-fun b!279290 () Bool)

(declare-fun e!178054 () Bool)

(assert (=> b!279290 (= e!178053 e!178054)))

(declare-fun res!142578 () Bool)

(assert (=> b!279290 (=> (not res!142578) (not e!178054))))

(assert (=> b!279290 (= res!142578 (not (contains!1969 (t!9509 Nil!4416) (h!5085 Nil!4416))))))

(declare-fun b!279291 () Bool)

(assert (=> b!279291 (= e!178054 (noDuplicate!153 (t!9509 Nil!4416)))))

(assert (= (and d!64955 (not res!142577)) b!279290))

(assert (= (and b!279290 res!142578) b!279291))

(declare-fun m!294121 () Bool)

(assert (=> b!279290 m!294121))

(declare-fun m!294123 () Bool)

(assert (=> b!279291 m!294123))

(assert (=> b!279239 d!64955))

(declare-fun d!64957 () Bool)

(declare-fun lt!138614 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!186 (List!4419) (InoxSet (_ BitVec 64)))

(assert (=> d!64957 (= lt!138614 (select (content!186 Nil!4416) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!178059 () Bool)

(assert (=> d!64957 (= lt!138614 e!178059)))

(declare-fun res!142584 () Bool)

(assert (=> d!64957 (=> (not res!142584) (not e!178059))))

(assert (=> d!64957 (= res!142584 ((_ is Cons!4415) Nil!4416))))

(assert (=> d!64957 (= (contains!1969 Nil!4416 #b0000000000000000000000000000000000000000000000000000000000000000) lt!138614)))

(declare-fun b!279296 () Bool)

(declare-fun e!178060 () Bool)

(assert (=> b!279296 (= e!178059 e!178060)))

(declare-fun res!142583 () Bool)

(assert (=> b!279296 (=> res!142583 e!178060)))

(assert (=> b!279296 (= res!142583 (= (h!5085 Nil!4416) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279297 () Bool)

(assert (=> b!279297 (= e!178060 (contains!1969 (t!9509 Nil!4416) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64957 res!142584) b!279296))

(assert (= (and b!279296 (not res!142583)) b!279297))

(declare-fun m!294125 () Bool)

(assert (=> d!64957 m!294125))

(declare-fun m!294127 () Bool)

(assert (=> d!64957 m!294127))

(declare-fun m!294129 () Bool)

(assert (=> b!279297 m!294129))

(assert (=> b!279244 d!64957))

(declare-fun b!279314 () Bool)

(declare-fun e!178077 () Bool)

(declare-fun e!178078 () Bool)

(assert (=> b!279314 (= e!178077 e!178078)))

(declare-fun c!45911 () Bool)

(assert (=> b!279314 (= c!45911 (validKeyInArray!0 (select (arr!6590 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279316 () Bool)

(declare-fun call!25424 () Bool)

(assert (=> b!279316 (= e!178078 call!25424)))

(declare-fun b!279317 () Bool)

(declare-fun e!178076 () Bool)

(assert (=> b!279317 (= e!178076 e!178077)))

(declare-fun res!142599 () Bool)

(assert (=> b!279317 (=> (not res!142599) (not e!178077))))

(declare-fun e!178075 () Bool)

(assert (=> b!279317 (= res!142599 (not e!178075))))

(declare-fun res!142597 () Bool)

(assert (=> b!279317 (=> (not res!142597) (not e!178075))))

(assert (=> b!279317 (= res!142597 (validKeyInArray!0 (select (arr!6590 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25421 () Bool)

(assert (=> bm!25421 (= call!25424 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45911 (Cons!4415 (select (arr!6590 a!3325) #b00000000000000000000000000000000) Nil!4416) Nil!4416)))))

(declare-fun b!279318 () Bool)

(assert (=> b!279318 (= e!178078 call!25424)))

(declare-fun d!64963 () Bool)

(declare-fun res!142598 () Bool)

(assert (=> d!64963 (=> res!142598 e!178076)))

(assert (=> d!64963 (= res!142598 (bvsge #b00000000000000000000000000000000 (size!6942 a!3325)))))

(assert (=> d!64963 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4416) e!178076)))

(declare-fun b!279315 () Bool)

(assert (=> b!279315 (= e!178075 (contains!1969 Nil!4416 (select (arr!6590 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64963 (not res!142598)) b!279317))

(assert (= (and b!279317 res!142597) b!279315))

(assert (= (and b!279317 res!142599) b!279314))

(assert (= (and b!279314 c!45911) b!279316))

(assert (= (and b!279314 (not c!45911)) b!279318))

(assert (= (or b!279316 b!279318) bm!25421))

(declare-fun m!294137 () Bool)

(assert (=> b!279314 m!294137))

(assert (=> b!279314 m!294137))

(declare-fun m!294139 () Bool)

(assert (=> b!279314 m!294139))

(assert (=> b!279317 m!294137))

(assert (=> b!279317 m!294137))

(assert (=> b!279317 m!294139))

(assert (=> bm!25421 m!294137))

(declare-fun m!294141 () Bool)

(assert (=> bm!25421 m!294141))

(assert (=> b!279315 m!294137))

(assert (=> b!279315 m!294137))

(declare-fun m!294143 () Bool)

(assert (=> b!279315 m!294143))

(assert (=> b!279249 d!64963))

(declare-fun b!279331 () Bool)

(declare-fun e!178088 () Bool)

(declare-fun call!25427 () Bool)

(assert (=> b!279331 (= e!178088 call!25427)))

(declare-fun b!279332 () Bool)

(declare-fun e!178089 () Bool)

(assert (=> b!279332 (= e!178088 e!178089)))

(declare-fun lt!138630 () (_ BitVec 64))

(assert (=> b!279332 (= lt!138630 (select (arr!6590 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8809 0))(
  ( (Unit!8810) )
))
(declare-fun lt!138632 () Unit!8809)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13891 (_ BitVec 64) (_ BitVec 32)) Unit!8809)

(assert (=> b!279332 (= lt!138632 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138630 #b00000000000000000000000000000000))))

(assert (=> b!279332 (arrayContainsKey!0 a!3325 lt!138630 #b00000000000000000000000000000000)))

(declare-fun lt!138631 () Unit!8809)

(assert (=> b!279332 (= lt!138631 lt!138632)))

(declare-fun res!142605 () Bool)

(assert (=> b!279332 (= res!142605 (= (seekEntryOrOpen!0 (select (arr!6590 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1759 #b00000000000000000000000000000000)))))

(assert (=> b!279332 (=> (not res!142605) (not e!178089))))

(declare-fun b!279333 () Bool)

(assert (=> b!279333 (= e!178089 call!25427)))

(declare-fun b!279334 () Bool)

(declare-fun e!178087 () Bool)

(assert (=> b!279334 (= e!178087 e!178088)))

(declare-fun c!45916 () Bool)

(assert (=> b!279334 (= c!45916 (validKeyInArray!0 (select (arr!6590 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64969 () Bool)

(declare-fun res!142604 () Bool)

(assert (=> d!64969 (=> res!142604 e!178087)))

(assert (=> d!64969 (= res!142604 (bvsge #b00000000000000000000000000000000 (size!6942 a!3325)))))

(assert (=> d!64969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!178087)))

(declare-fun bm!25424 () Bool)

(assert (=> bm!25424 (= call!25427 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(assert (= (and d!64969 (not res!142604)) b!279334))

(assert (= (and b!279334 c!45916) b!279332))

(assert (= (and b!279334 (not c!45916)) b!279331))

(assert (= (and b!279332 res!142605) b!279333))

(assert (= (or b!279333 b!279331) bm!25424))

(assert (=> b!279332 m!294137))

(declare-fun m!294145 () Bool)

(assert (=> b!279332 m!294145))

(declare-fun m!294147 () Bool)

(assert (=> b!279332 m!294147))

(assert (=> b!279332 m!294137))

(declare-fun m!294149 () Bool)

(assert (=> b!279332 m!294149))

(assert (=> b!279334 m!294137))

(assert (=> b!279334 m!294137))

(assert (=> b!279334 m!294139))

(declare-fun m!294151 () Bool)

(assert (=> bm!25424 m!294151))

(assert (=> b!279243 d!64969))

(declare-fun d!64975 () Bool)

(declare-fun lt!138633 () Bool)

(assert (=> d!64975 (= lt!138633 (select (content!186 Nil!4416) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!178094 () Bool)

(assert (=> d!64975 (= lt!138633 e!178094)))

(declare-fun res!142607 () Bool)

(assert (=> d!64975 (=> (not res!142607) (not e!178094))))

(assert (=> d!64975 (= res!142607 ((_ is Cons!4415) Nil!4416))))

(assert (=> d!64975 (= (contains!1969 Nil!4416 #b1000000000000000000000000000000000000000000000000000000000000000) lt!138633)))

(declare-fun b!279343 () Bool)

(declare-fun e!178095 () Bool)

(assert (=> b!279343 (= e!178094 e!178095)))

(declare-fun res!142606 () Bool)

(assert (=> b!279343 (=> res!142606 e!178095)))

(assert (=> b!279343 (= res!142606 (= (h!5085 Nil!4416) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279344 () Bool)

(assert (=> b!279344 (= e!178095 (contains!1969 (t!9509 Nil!4416) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64975 res!142607) b!279343))

(assert (= (and b!279343 (not res!142606)) b!279344))

(assert (=> d!64975 m!294125))

(declare-fun m!294153 () Bool)

(assert (=> d!64975 m!294153))

(declare-fun m!294155 () Bool)

(assert (=> b!279344 m!294155))

(assert (=> b!279248 d!64975))

(declare-fun d!64977 () Bool)

(assert (=> d!64977 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26982 d!64977))

(declare-fun d!64983 () Bool)

(assert (=> d!64983 (= (array_inv!4544 a!3325) (bvsge (size!6942 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26982 d!64983))

(declare-fun d!64985 () Bool)

(assert (=> d!64985 (= (validKeyInArray!0 (select (arr!6590 a!3325) startIndex!26)) (and (not (= (select (arr!6590 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6590 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279242 d!64985))

(declare-fun b!279420 () Bool)

(declare-fun e!178152 () SeekEntryResult!1759)

(declare-fun lt!138652 () SeekEntryResult!1759)

(assert (=> b!279420 (= e!178152 (MissingZero!1759 (index!9208 lt!138652)))))

(declare-fun b!279421 () Bool)

(declare-fun e!178151 () SeekEntryResult!1759)

(assert (=> b!279421 (= e!178151 (Found!1759 (index!9208 lt!138652)))))

(declare-fun b!279422 () Bool)

(declare-fun e!178150 () SeekEntryResult!1759)

(assert (=> b!279422 (= e!178150 e!178151)))

(declare-fun lt!138653 () (_ BitVec 64))

(assert (=> b!279422 (= lt!138653 (select (arr!6590 a!3325) (index!9208 lt!138652)))))

(declare-fun c!45943 () Bool)

(assert (=> b!279422 (= c!45943 (= lt!138653 k0!2581))))

(declare-fun b!279423 () Bool)

(declare-fun c!45944 () Bool)

(assert (=> b!279423 (= c!45944 (= lt!138653 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!279423 (= e!178151 e!178152)))

(declare-fun d!64987 () Bool)

(declare-fun lt!138654 () SeekEntryResult!1759)

(assert (=> d!64987 (and (or ((_ is Undefined!1759) lt!138654) (not ((_ is Found!1759) lt!138654)) (and (bvsge (index!9207 lt!138654) #b00000000000000000000000000000000) (bvslt (index!9207 lt!138654) (size!6942 a!3325)))) (or ((_ is Undefined!1759) lt!138654) ((_ is Found!1759) lt!138654) (not ((_ is MissingZero!1759) lt!138654)) (and (bvsge (index!9206 lt!138654) #b00000000000000000000000000000000) (bvslt (index!9206 lt!138654) (size!6942 a!3325)))) (or ((_ is Undefined!1759) lt!138654) ((_ is Found!1759) lt!138654) ((_ is MissingZero!1759) lt!138654) (not ((_ is MissingVacant!1759) lt!138654)) (and (bvsge (index!9209 lt!138654) #b00000000000000000000000000000000) (bvslt (index!9209 lt!138654) (size!6942 a!3325)))) (or ((_ is Undefined!1759) lt!138654) (ite ((_ is Found!1759) lt!138654) (= (select (arr!6590 a!3325) (index!9207 lt!138654)) k0!2581) (ite ((_ is MissingZero!1759) lt!138654) (= (select (arr!6590 a!3325) (index!9206 lt!138654)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1759) lt!138654) (= (select (arr!6590 a!3325) (index!9209 lt!138654)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64987 (= lt!138654 e!178150)))

(declare-fun c!45942 () Bool)

(assert (=> d!64987 (= c!45942 (and ((_ is Intermediate!1759) lt!138652) (undefined!2571 lt!138652)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13891 (_ BitVec 32)) SeekEntryResult!1759)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64987 (= lt!138652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!64987 (validMask!0 mask!3868)))

(assert (=> d!64987 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!138654)))

(declare-fun b!279424 () Bool)

(assert (=> b!279424 (= e!178150 Undefined!1759)))

(declare-fun b!279425 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13891 (_ BitVec 32)) SeekEntryResult!1759)

(assert (=> b!279425 (= e!178152 (seekKeyOrZeroReturnVacant!0 (x!27421 lt!138652) (index!9208 lt!138652) (index!9208 lt!138652) k0!2581 a!3325 mask!3868))))

(assert (= (and d!64987 c!45942) b!279424))

(assert (= (and d!64987 (not c!45942)) b!279422))

(assert (= (and b!279422 c!45943) b!279421))

(assert (= (and b!279422 (not c!45943)) b!279423))

(assert (= (and b!279423 c!45944) b!279420))

(assert (= (and b!279423 (not c!45944)) b!279425))

(declare-fun m!294207 () Bool)

(assert (=> b!279422 m!294207))

(declare-fun m!294209 () Bool)

(assert (=> d!64987 m!294209))

(assert (=> d!64987 m!294073))

(declare-fun m!294211 () Bool)

(assert (=> d!64987 m!294211))

(declare-fun m!294213 () Bool)

(assert (=> d!64987 m!294213))

(assert (=> d!64987 m!294211))

(declare-fun m!294215 () Bool)

(assert (=> d!64987 m!294215))

(declare-fun m!294217 () Bool)

(assert (=> d!64987 m!294217))

(declare-fun m!294219 () Bool)

(assert (=> b!279425 m!294219))

(assert (=> b!279247 d!64987))

(declare-fun d!65007 () Bool)

(declare-fun res!142653 () Bool)

(declare-fun e!178169 () Bool)

(assert (=> d!65007 (=> res!142653 e!178169)))

(assert (=> d!65007 (= res!142653 (= (select (arr!6590 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!65007 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!178169)))

(declare-fun b!279446 () Bool)

(declare-fun e!178170 () Bool)

(assert (=> b!279446 (= e!178169 e!178170)))

(declare-fun res!142654 () Bool)

(assert (=> b!279446 (=> (not res!142654) (not e!178170))))

(assert (=> b!279446 (= res!142654 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6942 a!3325)))))

(declare-fun b!279447 () Bool)

(assert (=> b!279447 (= e!178170 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65007 (not res!142653)) b!279446))

(assert (= (and b!279446 res!142654) b!279447))

(assert (=> d!65007 m!294137))

(declare-fun m!294221 () Bool)

(assert (=> b!279447 m!294221))

(assert (=> b!279241 d!65007))

(check-sat (not bm!25424) (not b!279314) (not d!64987) (not b!279344) (not b!279334) (not b!279291) (not b!279315) (not bm!25421) (not d!64957) (not d!64975) (not b!279332) (not b!279290) (not b!279297) (not b!279447) (not b!279425) (not b!279317))
(check-sat)
