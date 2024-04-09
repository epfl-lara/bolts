; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32018 () Bool)

(assert start!32018)

(declare-fun b!319423 () Bool)

(declare-fun res!173965 () Bool)

(declare-fun e!198366 () Bool)

(assert (=> b!319423 (=> (not res!173965) (not e!198366))))

(declare-datatypes ((array!16321 0))(
  ( (array!16322 (arr!7721 (Array (_ BitVec 32) (_ BitVec 64))) (size!8073 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16321)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2863 0))(
  ( (MissingZero!2863 (index!13628 (_ BitVec 32))) (Found!2863 (index!13629 (_ BitVec 32))) (Intermediate!2863 (undefined!3675 Bool) (index!13630 (_ BitVec 32)) (x!31868 (_ BitVec 32))) (Undefined!2863) (MissingVacant!2863 (index!13631 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16321 (_ BitVec 32)) SeekEntryResult!2863)

(assert (=> b!319423 (= res!173965 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2863 i!1250)))))

(declare-fun b!319424 () Bool)

(declare-fun res!173967 () Bool)

(assert (=> b!319424 (=> (not res!173967) (not e!198366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319424 (= res!173967 (validKeyInArray!0 k0!2497))))

(declare-fun b!319425 () Bool)

(assert (=> b!319425 (= e!198366 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsgt mask!3777 #b00111111111111111111111111111111)))))

(declare-fun b!319426 () Bool)

(declare-fun res!173966 () Bool)

(assert (=> b!319426 (=> (not res!173966) (not e!198366))))

(assert (=> b!319426 (= res!173966 (and (= (size!8073 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8073 a!3305))))))

(declare-fun b!319428 () Bool)

(declare-fun res!173968 () Bool)

(assert (=> b!319428 (=> (not res!173968) (not e!198366))))

(declare-fun arrayContainsKey!0 (array!16321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319428 (= res!173968 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!173970 () Bool)

(assert (=> start!32018 (=> (not res!173970) (not e!198366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32018 (= res!173970 (validMask!0 mask!3777))))

(assert (=> start!32018 e!198366))

(assert (=> start!32018 true))

(declare-fun array_inv!5675 (array!16321) Bool)

(assert (=> start!32018 (array_inv!5675 a!3305)))

(declare-fun b!319427 () Bool)

(declare-fun res!173969 () Bool)

(assert (=> b!319427 (=> (not res!173969) (not e!198366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16321 (_ BitVec 32)) Bool)

(assert (=> b!319427 (= res!173969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32018 res!173970) b!319426))

(assert (= (and b!319426 res!173966) b!319424))

(assert (= (and b!319424 res!173967) b!319428))

(assert (= (and b!319428 res!173968) b!319423))

(assert (= (and b!319423 res!173965) b!319427))

(assert (= (and b!319427 res!173969) b!319425))

(declare-fun m!328015 () Bool)

(assert (=> b!319424 m!328015))

(declare-fun m!328017 () Bool)

(assert (=> b!319427 m!328017))

(declare-fun m!328019 () Bool)

(assert (=> start!32018 m!328019))

(declare-fun m!328021 () Bool)

(assert (=> start!32018 m!328021))

(declare-fun m!328023 () Bool)

(assert (=> b!319428 m!328023))

(declare-fun m!328025 () Bool)

(assert (=> b!319423 m!328025))

(check-sat (not b!319423) (not start!32018) (not b!319428) (not b!319427) (not b!319424))
(check-sat)
(get-model)

(declare-fun b!319463 () Bool)

(declare-fun e!198388 () Bool)

(declare-fun call!26035 () Bool)

(assert (=> b!319463 (= e!198388 call!26035)))

(declare-fun b!319464 () Bool)

(declare-fun e!198386 () Bool)

(assert (=> b!319464 (= e!198386 call!26035)))

(declare-fun b!319465 () Bool)

(declare-fun e!198387 () Bool)

(assert (=> b!319465 (= e!198387 e!198386)))

(declare-fun c!50356 () Bool)

(assert (=> b!319465 (= c!50356 (validKeyInArray!0 (select (arr!7721 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26032 () Bool)

(assert (=> bm!26032 (= call!26035 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun d!69213 () Bool)

(declare-fun res!173998 () Bool)

(assert (=> d!69213 (=> res!173998 e!198387)))

(assert (=> d!69213 (= res!173998 (bvsge #b00000000000000000000000000000000 (size!8073 a!3305)))))

(assert (=> d!69213 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!198387)))

(declare-fun b!319466 () Bool)

(assert (=> b!319466 (= e!198386 e!198388)))

(declare-fun lt!155788 () (_ BitVec 64))

(assert (=> b!319466 (= lt!155788 (select (arr!7721 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9807 0))(
  ( (Unit!9808) )
))
(declare-fun lt!155787 () Unit!9807)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16321 (_ BitVec 64) (_ BitVec 32)) Unit!9807)

(assert (=> b!319466 (= lt!155787 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!155788 #b00000000000000000000000000000000))))

(assert (=> b!319466 (arrayContainsKey!0 a!3305 lt!155788 #b00000000000000000000000000000000)))

(declare-fun lt!155789 () Unit!9807)

(assert (=> b!319466 (= lt!155789 lt!155787)))

(declare-fun res!173997 () Bool)

(assert (=> b!319466 (= res!173997 (= (seekEntryOrOpen!0 (select (arr!7721 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2863 #b00000000000000000000000000000000)))))

(assert (=> b!319466 (=> (not res!173997) (not e!198388))))

(assert (= (and d!69213 (not res!173998)) b!319465))

(assert (= (and b!319465 c!50356) b!319466))

(assert (= (and b!319465 (not c!50356)) b!319464))

(assert (= (and b!319466 res!173997) b!319463))

(assert (= (or b!319463 b!319464) bm!26032))

(declare-fun m!328039 () Bool)

(assert (=> b!319465 m!328039))

(assert (=> b!319465 m!328039))

(declare-fun m!328041 () Bool)

(assert (=> b!319465 m!328041))

(declare-fun m!328043 () Bool)

(assert (=> bm!26032 m!328043))

(assert (=> b!319466 m!328039))

(declare-fun m!328045 () Bool)

(assert (=> b!319466 m!328045))

(declare-fun m!328047 () Bool)

(assert (=> b!319466 m!328047))

(assert (=> b!319466 m!328039))

(declare-fun m!328049 () Bool)

(assert (=> b!319466 m!328049))

(assert (=> b!319427 d!69213))

(declare-fun d!69221 () Bool)

(assert (=> d!69221 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32018 d!69221))

(declare-fun d!69225 () Bool)

(assert (=> d!69225 (= (array_inv!5675 a!3305) (bvsge (size!8073 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32018 d!69225))

(declare-fun b!319531 () Bool)

(declare-fun e!198430 () SeekEntryResult!2863)

(declare-fun e!198429 () SeekEntryResult!2863)

(assert (=> b!319531 (= e!198430 e!198429)))

(declare-fun lt!155823 () (_ BitVec 64))

(declare-fun lt!155825 () SeekEntryResult!2863)

(assert (=> b!319531 (= lt!155823 (select (arr!7721 a!3305) (index!13630 lt!155825)))))

(declare-fun c!50382 () Bool)

(assert (=> b!319531 (= c!50382 (= lt!155823 k0!2497))))

(declare-fun b!319533 () Bool)

(assert (=> b!319533 (= e!198430 Undefined!2863)))

(declare-fun b!319534 () Bool)

(declare-fun e!198428 () SeekEntryResult!2863)

(assert (=> b!319534 (= e!198428 (MissingZero!2863 (index!13630 lt!155825)))))

(declare-fun b!319535 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16321 (_ BitVec 32)) SeekEntryResult!2863)

(assert (=> b!319535 (= e!198428 (seekKeyOrZeroReturnVacant!0 (x!31868 lt!155825) (index!13630 lt!155825) (index!13630 lt!155825) k0!2497 a!3305 mask!3777))))

(declare-fun b!319536 () Bool)

(declare-fun c!50383 () Bool)

(assert (=> b!319536 (= c!50383 (= lt!155823 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!319536 (= e!198429 e!198428)))

(declare-fun d!69227 () Bool)

(declare-fun lt!155824 () SeekEntryResult!2863)

(get-info :version)

(assert (=> d!69227 (and (or ((_ is Undefined!2863) lt!155824) (not ((_ is Found!2863) lt!155824)) (and (bvsge (index!13629 lt!155824) #b00000000000000000000000000000000) (bvslt (index!13629 lt!155824) (size!8073 a!3305)))) (or ((_ is Undefined!2863) lt!155824) ((_ is Found!2863) lt!155824) (not ((_ is MissingZero!2863) lt!155824)) (and (bvsge (index!13628 lt!155824) #b00000000000000000000000000000000) (bvslt (index!13628 lt!155824) (size!8073 a!3305)))) (or ((_ is Undefined!2863) lt!155824) ((_ is Found!2863) lt!155824) ((_ is MissingZero!2863) lt!155824) (not ((_ is MissingVacant!2863) lt!155824)) (and (bvsge (index!13631 lt!155824) #b00000000000000000000000000000000) (bvslt (index!13631 lt!155824) (size!8073 a!3305)))) (or ((_ is Undefined!2863) lt!155824) (ite ((_ is Found!2863) lt!155824) (= (select (arr!7721 a!3305) (index!13629 lt!155824)) k0!2497) (ite ((_ is MissingZero!2863) lt!155824) (= (select (arr!7721 a!3305) (index!13628 lt!155824)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2863) lt!155824) (= (select (arr!7721 a!3305) (index!13631 lt!155824)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69227 (= lt!155824 e!198430)))

(declare-fun c!50384 () Bool)

(assert (=> d!69227 (= c!50384 (and ((_ is Intermediate!2863) lt!155825) (undefined!3675 lt!155825)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16321 (_ BitVec 32)) SeekEntryResult!2863)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69227 (= lt!155825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69227 (validMask!0 mask!3777)))

(assert (=> d!69227 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!155824)))

(declare-fun b!319532 () Bool)

(assert (=> b!319532 (= e!198429 (Found!2863 (index!13630 lt!155825)))))

(assert (= (and d!69227 c!50384) b!319533))

(assert (= (and d!69227 (not c!50384)) b!319531))

(assert (= (and b!319531 c!50382) b!319532))

(assert (= (and b!319531 (not c!50382)) b!319536))

(assert (= (and b!319536 c!50383) b!319534))

(assert (= (and b!319536 (not c!50383)) b!319535))

(declare-fun m!328091 () Bool)

(assert (=> b!319531 m!328091))

(declare-fun m!328093 () Bool)

(assert (=> b!319535 m!328093))

(declare-fun m!328095 () Bool)

(assert (=> d!69227 m!328095))

(declare-fun m!328097 () Bool)

(assert (=> d!69227 m!328097))

(declare-fun m!328099 () Bool)

(assert (=> d!69227 m!328099))

(declare-fun m!328101 () Bool)

(assert (=> d!69227 m!328101))

(assert (=> d!69227 m!328097))

(declare-fun m!328103 () Bool)

(assert (=> d!69227 m!328103))

(assert (=> d!69227 m!328019))

(assert (=> b!319423 d!69227))

(declare-fun d!69239 () Bool)

(declare-fun res!174017 () Bool)

(declare-fun e!198438 () Bool)

(assert (=> d!69239 (=> res!174017 e!198438)))

(assert (=> d!69239 (= res!174017 (= (select (arr!7721 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69239 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!198438)))

(declare-fun b!319547 () Bool)

(declare-fun e!198439 () Bool)

(assert (=> b!319547 (= e!198438 e!198439)))

(declare-fun res!174018 () Bool)

(assert (=> b!319547 (=> (not res!174018) (not e!198439))))

(assert (=> b!319547 (= res!174018 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8073 a!3305)))))

(declare-fun b!319548 () Bool)

(assert (=> b!319548 (= e!198439 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69239 (not res!174017)) b!319547))

(assert (= (and b!319547 res!174018) b!319548))

(assert (=> d!69239 m!328039))

(declare-fun m!328119 () Bool)

(assert (=> b!319548 m!328119))

(assert (=> b!319428 d!69239))

(declare-fun d!69245 () Bool)

(assert (=> d!69245 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319424 d!69245))

(check-sat (not b!319535) (not bm!26032) (not b!319548) (not b!319465) (not b!319466) (not d!69227))
(check-sat)
