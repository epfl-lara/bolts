; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64968 () Bool)

(assert start!64968)

(declare-fun b!733378 () Bool)

(declare-fun e!410364 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!325071 () (_ BitVec 32))

(assert (=> b!733378 (= e!410364 (or (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!325071 #b00000000000000000000000000000000) (bvslt lt!325071 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun b!733379 () Bool)

(declare-fun e!410370 () Bool)

(declare-fun e!410367 () Bool)

(assert (=> b!733379 (= e!410370 e!410367)))

(declare-fun res!493006 () Bool)

(assert (=> b!733379 (=> (not res!493006) (not e!410367))))

(declare-datatypes ((SeekEntryResult!7336 0))(
  ( (MissingZero!7336 (index!31711 (_ BitVec 32))) (Found!7336 (index!31712 (_ BitVec 32))) (Intermediate!7336 (undefined!8148 Bool) (index!31713 (_ BitVec 32)) (x!62727 (_ BitVec 32))) (Undefined!7336) (MissingVacant!7336 (index!31714 (_ BitVec 32))) )
))
(declare-fun lt!325067 () SeekEntryResult!7336)

(declare-fun lt!325068 () SeekEntryResult!7336)

(assert (=> b!733379 (= res!493006 (= lt!325067 lt!325068))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325070 () (_ BitVec 64))

(declare-datatypes ((array!41232 0))(
  ( (array!41233 (arr!19729 (Array (_ BitVec 32) (_ BitVec 64))) (size!20150 (_ BitVec 32))) )
))
(declare-fun lt!325066 () array!41232)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41232 (_ BitVec 32)) SeekEntryResult!7336)

(assert (=> b!733379 (= lt!325068 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325070 lt!325066 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733379 (= lt!325067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325070 mask!3328) lt!325070 lt!325066 mask!3328))))

(declare-fun a!3186 () array!41232)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!733379 (= lt!325070 (select (store (arr!19729 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!733379 (= lt!325066 (array!41233 (store (arr!19729 a!3186) i!1173 k0!2102) (size!20150 a!3186)))))

(declare-fun b!733380 () Bool)

(declare-fun res!493001 () Bool)

(declare-fun e!410366 () Bool)

(assert (=> b!733380 (=> (not res!493001) (not e!410366))))

(assert (=> b!733380 (= res!493001 (and (= (size!20150 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20150 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20150 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733381 () Bool)

(declare-fun res!493003 () Bool)

(declare-fun e!410369 () Bool)

(assert (=> b!733381 (=> (not res!493003) (not e!410369))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733381 (= res!493003 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20150 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20150 a!3186))))))

(declare-fun b!733382 () Bool)

(declare-fun res!492998 () Bool)

(assert (=> b!733382 (=> (not res!492998) (not e!410370))))

(declare-fun e!410371 () Bool)

(assert (=> b!733382 (= res!492998 e!410371)))

(declare-fun c!80568 () Bool)

(assert (=> b!733382 (= c!80568 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733383 () Bool)

(assert (=> b!733383 (= e!410369 e!410370)))

(declare-fun res!493014 () Bool)

(assert (=> b!733383 (=> (not res!493014) (not e!410370))))

(declare-fun lt!325069 () SeekEntryResult!7336)

(assert (=> b!733383 (= res!493014 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325069))))

(assert (=> b!733383 (= lt!325069 (Intermediate!7336 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733384 () Bool)

(declare-fun res!493012 () Bool)

(assert (=> b!733384 (=> (not res!493012) (not e!410369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41232 (_ BitVec 32)) Bool)

(assert (=> b!733384 (= res!493012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733385 () Bool)

(declare-fun res!493008 () Bool)

(assert (=> b!733385 (=> (not res!493008) (not e!410370))))

(assert (=> b!733385 (= res!493008 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19729 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733386 () Bool)

(declare-fun res!493013 () Bool)

(assert (=> b!733386 (=> res!493013 e!410364)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41232 (_ BitVec 32)) SeekEntryResult!7336)

(assert (=> b!733386 (= res!493013 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) (Found!7336 j!159)))))

(declare-fun b!733387 () Bool)

(declare-fun res!492997 () Bool)

(assert (=> b!733387 (=> (not res!492997) (not e!410366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733387 (= res!492997 (validKeyInArray!0 (select (arr!19729 a!3186) j!159)))))

(declare-fun res!493009 () Bool)

(assert (=> start!64968 (=> (not res!493009) (not e!410366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64968 (= res!493009 (validMask!0 mask!3328))))

(assert (=> start!64968 e!410366))

(assert (=> start!64968 true))

(declare-fun array_inv!15503 (array!41232) Bool)

(assert (=> start!64968 (array_inv!15503 a!3186)))

(declare-fun b!733388 () Bool)

(declare-fun res!493002 () Bool)

(assert (=> b!733388 (=> (not res!493002) (not e!410366))))

(assert (=> b!733388 (= res!493002 (validKeyInArray!0 k0!2102))))

(declare-fun b!733389 () Bool)

(declare-fun res!493007 () Bool)

(assert (=> b!733389 (=> (not res!493007) (not e!410369))))

(declare-datatypes ((List!13784 0))(
  ( (Nil!13781) (Cons!13780 (h!14846 (_ BitVec 64)) (t!20107 List!13784)) )
))
(declare-fun arrayNoDuplicates!0 (array!41232 (_ BitVec 32) List!13784) Bool)

(assert (=> b!733389 (= res!493007 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13781))))

(declare-fun b!733390 () Bool)

(assert (=> b!733390 (= e!410366 e!410369)))

(declare-fun res!493004 () Bool)

(assert (=> b!733390 (=> (not res!493004) (not e!410369))))

(declare-fun lt!325073 () SeekEntryResult!7336)

(assert (=> b!733390 (= res!493004 (or (= lt!325073 (MissingZero!7336 i!1173)) (= lt!325073 (MissingVacant!7336 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41232 (_ BitVec 32)) SeekEntryResult!7336)

(assert (=> b!733390 (= lt!325073 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!733391 () Bool)

(declare-fun lt!325065 () SeekEntryResult!7336)

(declare-fun e!410365 () Bool)

(assert (=> b!733391 (= e!410365 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325065))))

(declare-fun b!733392 () Bool)

(declare-fun e!410372 () Bool)

(assert (=> b!733392 (= e!410372 e!410364)))

(declare-fun res!493005 () Bool)

(assert (=> b!733392 (=> res!493005 e!410364)))

(assert (=> b!733392 (= res!493005 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733392 (= lt!325071 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!733393 () Bool)

(assert (=> b!733393 (= e!410367 (not e!410372))))

(declare-fun res!493011 () Bool)

(assert (=> b!733393 (=> res!493011 e!410372)))

(get-info :version)

(assert (=> b!733393 (= res!493011 (or (not ((_ is Intermediate!7336) lt!325068)) (bvsge x!1131 (x!62727 lt!325068))))))

(declare-fun e!410368 () Bool)

(assert (=> b!733393 e!410368))

(declare-fun res!493000 () Bool)

(assert (=> b!733393 (=> (not res!493000) (not e!410368))))

(assert (=> b!733393 (= res!493000 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24990 0))(
  ( (Unit!24991) )
))
(declare-fun lt!325072 () Unit!24990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24990)

(assert (=> b!733393 (= lt!325072 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733394 () Bool)

(declare-fun res!493010 () Bool)

(assert (=> b!733394 (=> (not res!493010) (not e!410366))))

(declare-fun arrayContainsKey!0 (array!41232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733394 (= res!493010 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733395 () Bool)

(assert (=> b!733395 (= e!410371 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325069))))

(declare-fun b!733396 () Bool)

(assert (=> b!733396 (= e!410368 e!410365)))

(declare-fun res!492999 () Bool)

(assert (=> b!733396 (=> (not res!492999) (not e!410365))))

(assert (=> b!733396 (= res!492999 (= (seekEntryOrOpen!0 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325065))))

(assert (=> b!733396 (= lt!325065 (Found!7336 j!159))))

(declare-fun b!733397 () Bool)

(assert (=> b!733397 (= e!410371 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) (Found!7336 j!159)))))

(assert (= (and start!64968 res!493009) b!733380))

(assert (= (and b!733380 res!493001) b!733387))

(assert (= (and b!733387 res!492997) b!733388))

(assert (= (and b!733388 res!493002) b!733394))

(assert (= (and b!733394 res!493010) b!733390))

(assert (= (and b!733390 res!493004) b!733384))

(assert (= (and b!733384 res!493012) b!733389))

(assert (= (and b!733389 res!493007) b!733381))

(assert (= (and b!733381 res!493003) b!733383))

(assert (= (and b!733383 res!493014) b!733385))

(assert (= (and b!733385 res!493008) b!733382))

(assert (= (and b!733382 c!80568) b!733395))

(assert (= (and b!733382 (not c!80568)) b!733397))

(assert (= (and b!733382 res!492998) b!733379))

(assert (= (and b!733379 res!493006) b!733393))

(assert (= (and b!733393 res!493000) b!733396))

(assert (= (and b!733396 res!492999) b!733391))

(assert (= (and b!733393 (not res!493011)) b!733392))

(assert (= (and b!733392 (not res!493005)) b!733386))

(assert (= (and b!733386 (not res!493013)) b!733378))

(declare-fun m!686353 () Bool)

(assert (=> b!733393 m!686353))

(declare-fun m!686355 () Bool)

(assert (=> b!733393 m!686355))

(declare-fun m!686357 () Bool)

(assert (=> b!733386 m!686357))

(assert (=> b!733386 m!686357))

(declare-fun m!686359 () Bool)

(assert (=> b!733386 m!686359))

(assert (=> b!733396 m!686357))

(assert (=> b!733396 m!686357))

(declare-fun m!686361 () Bool)

(assert (=> b!733396 m!686361))

(declare-fun m!686363 () Bool)

(assert (=> b!733388 m!686363))

(declare-fun m!686365 () Bool)

(assert (=> b!733390 m!686365))

(assert (=> b!733395 m!686357))

(assert (=> b!733395 m!686357))

(declare-fun m!686367 () Bool)

(assert (=> b!733395 m!686367))

(declare-fun m!686369 () Bool)

(assert (=> start!64968 m!686369))

(declare-fun m!686371 () Bool)

(assert (=> start!64968 m!686371))

(assert (=> b!733383 m!686357))

(assert (=> b!733383 m!686357))

(declare-fun m!686373 () Bool)

(assert (=> b!733383 m!686373))

(assert (=> b!733383 m!686373))

(assert (=> b!733383 m!686357))

(declare-fun m!686375 () Bool)

(assert (=> b!733383 m!686375))

(declare-fun m!686377 () Bool)

(assert (=> b!733389 m!686377))

(declare-fun m!686379 () Bool)

(assert (=> b!733392 m!686379))

(declare-fun m!686381 () Bool)

(assert (=> b!733394 m!686381))

(declare-fun m!686383 () Bool)

(assert (=> b!733384 m!686383))

(assert (=> b!733391 m!686357))

(assert (=> b!733391 m!686357))

(declare-fun m!686385 () Bool)

(assert (=> b!733391 m!686385))

(assert (=> b!733397 m!686357))

(assert (=> b!733397 m!686357))

(assert (=> b!733397 m!686359))

(assert (=> b!733387 m!686357))

(assert (=> b!733387 m!686357))

(declare-fun m!686387 () Bool)

(assert (=> b!733387 m!686387))

(declare-fun m!686389 () Bool)

(assert (=> b!733385 m!686389))

(declare-fun m!686391 () Bool)

(assert (=> b!733379 m!686391))

(declare-fun m!686393 () Bool)

(assert (=> b!733379 m!686393))

(declare-fun m!686395 () Bool)

(assert (=> b!733379 m!686395))

(declare-fun m!686397 () Bool)

(assert (=> b!733379 m!686397))

(declare-fun m!686399 () Bool)

(assert (=> b!733379 m!686399))

(assert (=> b!733379 m!686397))

(check-sat (not b!733395) (not b!733389) (not b!733388) (not start!64968) (not b!733379) (not b!733396) (not b!733384) (not b!733397) (not b!733394) (not b!733387) (not b!733391) (not b!733393) (not b!733390) (not b!733386) (not b!733392) (not b!733383))
(check-sat)
(get-model)

(declare-fun d!99803 () Bool)

(assert (=> d!99803 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!733388 d!99803))

(declare-fun d!99805 () Bool)

(declare-fun res!493075 () Bool)

(declare-fun e!410413 () Bool)

(assert (=> d!99805 (=> res!493075 e!410413)))

(assert (=> d!99805 (= res!493075 (bvsge #b00000000000000000000000000000000 (size!20150 a!3186)))))

(assert (=> d!99805 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13781) e!410413)))

(declare-fun b!733468 () Bool)

(declare-fun e!410415 () Bool)

(declare-fun contains!4060 (List!13784 (_ BitVec 64)) Bool)

(assert (=> b!733468 (= e!410415 (contains!4060 Nil!13781 (select (arr!19729 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!733469 () Bool)

(declare-fun e!410412 () Bool)

(declare-fun e!410414 () Bool)

(assert (=> b!733469 (= e!410412 e!410414)))

(declare-fun c!80574 () Bool)

(assert (=> b!733469 (= c!80574 (validKeyInArray!0 (select (arr!19729 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34869 () Bool)

(declare-fun call!34872 () Bool)

(assert (=> bm!34869 (= call!34872 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80574 (Cons!13780 (select (arr!19729 a!3186) #b00000000000000000000000000000000) Nil!13781) Nil!13781)))))

(declare-fun b!733470 () Bool)

(assert (=> b!733470 (= e!410413 e!410412)))

(declare-fun res!493077 () Bool)

(assert (=> b!733470 (=> (not res!493077) (not e!410412))))

(assert (=> b!733470 (= res!493077 (not e!410415))))

(declare-fun res!493076 () Bool)

(assert (=> b!733470 (=> (not res!493076) (not e!410415))))

(assert (=> b!733470 (= res!493076 (validKeyInArray!0 (select (arr!19729 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!733471 () Bool)

(assert (=> b!733471 (= e!410414 call!34872)))

(declare-fun b!733472 () Bool)

(assert (=> b!733472 (= e!410414 call!34872)))

(assert (= (and d!99805 (not res!493075)) b!733470))

(assert (= (and b!733470 res!493076) b!733468))

(assert (= (and b!733470 res!493077) b!733469))

(assert (= (and b!733469 c!80574) b!733471))

(assert (= (and b!733469 (not c!80574)) b!733472))

(assert (= (or b!733471 b!733472) bm!34869))

(declare-fun m!686449 () Bool)

(assert (=> b!733468 m!686449))

(assert (=> b!733468 m!686449))

(declare-fun m!686451 () Bool)

(assert (=> b!733468 m!686451))

(assert (=> b!733469 m!686449))

(assert (=> b!733469 m!686449))

(declare-fun m!686453 () Bool)

(assert (=> b!733469 m!686453))

(assert (=> bm!34869 m!686449))

(declare-fun m!686455 () Bool)

(assert (=> bm!34869 m!686455))

(assert (=> b!733470 m!686449))

(assert (=> b!733470 m!686449))

(assert (=> b!733470 m!686453))

(assert (=> b!733389 d!99805))

(declare-fun b!733491 () Bool)

(declare-fun lt!325106 () SeekEntryResult!7336)

(assert (=> b!733491 (and (bvsge (index!31713 lt!325106) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325106) (size!20150 lt!325066)))))

(declare-fun e!410427 () Bool)

(assert (=> b!733491 (= e!410427 (= (select (arr!19729 lt!325066) (index!31713 lt!325106)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733492 () Bool)

(assert (=> b!733492 (and (bvsge (index!31713 lt!325106) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325106) (size!20150 lt!325066)))))

(declare-fun res!493085 () Bool)

(assert (=> b!733492 (= res!493085 (= (select (arr!19729 lt!325066) (index!31713 lt!325106)) lt!325070))))

(assert (=> b!733492 (=> res!493085 e!410427)))

(declare-fun e!410429 () Bool)

(assert (=> b!733492 (= e!410429 e!410427)))

(declare-fun b!733493 () Bool)

(declare-fun e!410428 () SeekEntryResult!7336)

(assert (=> b!733493 (= e!410428 (Intermediate!7336 true index!1321 x!1131))))

(declare-fun b!733494 () Bool)

(assert (=> b!733494 (and (bvsge (index!31713 lt!325106) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325106) (size!20150 lt!325066)))))

(declare-fun res!493086 () Bool)

(assert (=> b!733494 (= res!493086 (= (select (arr!19729 lt!325066) (index!31713 lt!325106)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733494 (=> res!493086 e!410427)))

(declare-fun b!733495 () Bool)

(declare-fun e!410430 () Bool)

(assert (=> b!733495 (= e!410430 e!410429)))

(declare-fun res!493084 () Bool)

(assert (=> b!733495 (= res!493084 (and ((_ is Intermediate!7336) lt!325106) (not (undefined!8148 lt!325106)) (bvslt (x!62727 lt!325106) #b01111111111111111111111111111110) (bvsge (x!62727 lt!325106) #b00000000000000000000000000000000) (bvsge (x!62727 lt!325106) x!1131)))))

(assert (=> b!733495 (=> (not res!493084) (not e!410429))))

(declare-fun b!733496 () Bool)

(declare-fun e!410426 () SeekEntryResult!7336)

(assert (=> b!733496 (= e!410428 e!410426)))

(declare-fun c!80582 () Bool)

(declare-fun lt!325105 () (_ BitVec 64))

(assert (=> b!733496 (= c!80582 (or (= lt!325105 lt!325070) (= (bvadd lt!325105 lt!325105) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733497 () Bool)

(assert (=> b!733497 (= e!410430 (bvsge (x!62727 lt!325106) #b01111111111111111111111111111110))))

(declare-fun b!733498 () Bool)

(assert (=> b!733498 (= e!410426 (Intermediate!7336 false index!1321 x!1131))))

(declare-fun b!733499 () Bool)

(assert (=> b!733499 (= e!410426 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!325070 lt!325066 mask!3328))))

(declare-fun d!99807 () Bool)

(assert (=> d!99807 e!410430))

(declare-fun c!80581 () Bool)

(assert (=> d!99807 (= c!80581 (and ((_ is Intermediate!7336) lt!325106) (undefined!8148 lt!325106)))))

(assert (=> d!99807 (= lt!325106 e!410428)))

(declare-fun c!80583 () Bool)

(assert (=> d!99807 (= c!80583 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99807 (= lt!325105 (select (arr!19729 lt!325066) index!1321))))

(assert (=> d!99807 (validMask!0 mask!3328)))

(assert (=> d!99807 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325070 lt!325066 mask!3328) lt!325106)))

(assert (= (and d!99807 c!80583) b!733493))

(assert (= (and d!99807 (not c!80583)) b!733496))

(assert (= (and b!733496 c!80582) b!733498))

(assert (= (and b!733496 (not c!80582)) b!733499))

(assert (= (and d!99807 c!80581) b!733497))

(assert (= (and d!99807 (not c!80581)) b!733495))

(assert (= (and b!733495 res!493084) b!733492))

(assert (= (and b!733492 (not res!493085)) b!733494))

(assert (= (and b!733494 (not res!493086)) b!733491))

(declare-fun m!686457 () Bool)

(assert (=> d!99807 m!686457))

(assert (=> d!99807 m!686369))

(assert (=> b!733499 m!686379))

(assert (=> b!733499 m!686379))

(declare-fun m!686459 () Bool)

(assert (=> b!733499 m!686459))

(declare-fun m!686461 () Bool)

(assert (=> b!733494 m!686461))

(assert (=> b!733491 m!686461))

(assert (=> b!733492 m!686461))

(assert (=> b!733379 d!99807))

(declare-fun b!733500 () Bool)

(declare-fun lt!325108 () SeekEntryResult!7336)

(assert (=> b!733500 (and (bvsge (index!31713 lt!325108) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325108) (size!20150 lt!325066)))))

(declare-fun e!410432 () Bool)

(assert (=> b!733500 (= e!410432 (= (select (arr!19729 lt!325066) (index!31713 lt!325108)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733501 () Bool)

(assert (=> b!733501 (and (bvsge (index!31713 lt!325108) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325108) (size!20150 lt!325066)))))

(declare-fun res!493088 () Bool)

(assert (=> b!733501 (= res!493088 (= (select (arr!19729 lt!325066) (index!31713 lt!325108)) lt!325070))))

(assert (=> b!733501 (=> res!493088 e!410432)))

(declare-fun e!410434 () Bool)

(assert (=> b!733501 (= e!410434 e!410432)))

(declare-fun b!733502 () Bool)

(declare-fun e!410433 () SeekEntryResult!7336)

(assert (=> b!733502 (= e!410433 (Intermediate!7336 true (toIndex!0 lt!325070 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733503 () Bool)

(assert (=> b!733503 (and (bvsge (index!31713 lt!325108) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325108) (size!20150 lt!325066)))))

(declare-fun res!493089 () Bool)

(assert (=> b!733503 (= res!493089 (= (select (arr!19729 lt!325066) (index!31713 lt!325108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733503 (=> res!493089 e!410432)))

(declare-fun b!733504 () Bool)

(declare-fun e!410435 () Bool)

(assert (=> b!733504 (= e!410435 e!410434)))

(declare-fun res!493087 () Bool)

(assert (=> b!733504 (= res!493087 (and ((_ is Intermediate!7336) lt!325108) (not (undefined!8148 lt!325108)) (bvslt (x!62727 lt!325108) #b01111111111111111111111111111110) (bvsge (x!62727 lt!325108) #b00000000000000000000000000000000) (bvsge (x!62727 lt!325108) #b00000000000000000000000000000000)))))

(assert (=> b!733504 (=> (not res!493087) (not e!410434))))

(declare-fun b!733505 () Bool)

(declare-fun e!410431 () SeekEntryResult!7336)

(assert (=> b!733505 (= e!410433 e!410431)))

(declare-fun c!80585 () Bool)

(declare-fun lt!325107 () (_ BitVec 64))

(assert (=> b!733505 (= c!80585 (or (= lt!325107 lt!325070) (= (bvadd lt!325107 lt!325107) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733506 () Bool)

(assert (=> b!733506 (= e!410435 (bvsge (x!62727 lt!325108) #b01111111111111111111111111111110))))

(declare-fun b!733507 () Bool)

(assert (=> b!733507 (= e!410431 (Intermediate!7336 false (toIndex!0 lt!325070 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733508 () Bool)

(assert (=> b!733508 (= e!410431 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!325070 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!325070 lt!325066 mask!3328))))

(declare-fun d!99809 () Bool)

(assert (=> d!99809 e!410435))

(declare-fun c!80584 () Bool)

(assert (=> d!99809 (= c!80584 (and ((_ is Intermediate!7336) lt!325108) (undefined!8148 lt!325108)))))

(assert (=> d!99809 (= lt!325108 e!410433)))

(declare-fun c!80586 () Bool)

(assert (=> d!99809 (= c!80586 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99809 (= lt!325107 (select (arr!19729 lt!325066) (toIndex!0 lt!325070 mask!3328)))))

(assert (=> d!99809 (validMask!0 mask!3328)))

(assert (=> d!99809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325070 mask!3328) lt!325070 lt!325066 mask!3328) lt!325108)))

(assert (= (and d!99809 c!80586) b!733502))

(assert (= (and d!99809 (not c!80586)) b!733505))

(assert (= (and b!733505 c!80585) b!733507))

(assert (= (and b!733505 (not c!80585)) b!733508))

(assert (= (and d!99809 c!80584) b!733506))

(assert (= (and d!99809 (not c!80584)) b!733504))

(assert (= (and b!733504 res!493087) b!733501))

(assert (= (and b!733501 (not res!493088)) b!733503))

(assert (= (and b!733503 (not res!493089)) b!733500))

(assert (=> d!99809 m!686397))

(declare-fun m!686463 () Bool)

(assert (=> d!99809 m!686463))

(assert (=> d!99809 m!686369))

(assert (=> b!733508 m!686397))

(declare-fun m!686465 () Bool)

(assert (=> b!733508 m!686465))

(assert (=> b!733508 m!686465))

(declare-fun m!686467 () Bool)

(assert (=> b!733508 m!686467))

(declare-fun m!686469 () Bool)

(assert (=> b!733503 m!686469))

(assert (=> b!733500 m!686469))

(assert (=> b!733501 m!686469))

(assert (=> b!733379 d!99809))

(declare-fun d!99811 () Bool)

(declare-fun lt!325114 () (_ BitVec 32))

(declare-fun lt!325113 () (_ BitVec 32))

(assert (=> d!99811 (= lt!325114 (bvmul (bvxor lt!325113 (bvlshr lt!325113 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99811 (= lt!325113 ((_ extract 31 0) (bvand (bvxor lt!325070 (bvlshr lt!325070 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99811 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493090 (let ((h!14848 ((_ extract 31 0) (bvand (bvxor lt!325070 (bvlshr lt!325070 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62730 (bvmul (bvxor h!14848 (bvlshr h!14848 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62730 (bvlshr x!62730 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493090 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493090 #b00000000000000000000000000000000))))))

(assert (=> d!99811 (= (toIndex!0 lt!325070 mask!3328) (bvand (bvxor lt!325114 (bvlshr lt!325114 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733379 d!99811))

(declare-fun lt!325122 () SeekEntryResult!7336)

(declare-fun e!410442 () SeekEntryResult!7336)

(declare-fun b!733521 () Bool)

(assert (=> b!733521 (= e!410442 (seekKeyOrZeroReturnVacant!0 (x!62727 lt!325122) (index!31713 lt!325122) (index!31713 lt!325122) k0!2102 a!3186 mask!3328))))

(declare-fun b!733522 () Bool)

(assert (=> b!733522 (= e!410442 (MissingZero!7336 (index!31713 lt!325122)))))

(declare-fun b!733523 () Bool)

(declare-fun e!410444 () SeekEntryResult!7336)

(assert (=> b!733523 (= e!410444 (Found!7336 (index!31713 lt!325122)))))

(declare-fun b!733524 () Bool)

(declare-fun e!410443 () SeekEntryResult!7336)

(assert (=> b!733524 (= e!410443 Undefined!7336)))

(declare-fun d!99813 () Bool)

(declare-fun lt!325123 () SeekEntryResult!7336)

(assert (=> d!99813 (and (or ((_ is Undefined!7336) lt!325123) (not ((_ is Found!7336) lt!325123)) (and (bvsge (index!31712 lt!325123) #b00000000000000000000000000000000) (bvslt (index!31712 lt!325123) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325123) ((_ is Found!7336) lt!325123) (not ((_ is MissingZero!7336) lt!325123)) (and (bvsge (index!31711 lt!325123) #b00000000000000000000000000000000) (bvslt (index!31711 lt!325123) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325123) ((_ is Found!7336) lt!325123) ((_ is MissingZero!7336) lt!325123) (not ((_ is MissingVacant!7336) lt!325123)) (and (bvsge (index!31714 lt!325123) #b00000000000000000000000000000000) (bvslt (index!31714 lt!325123) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325123) (ite ((_ is Found!7336) lt!325123) (= (select (arr!19729 a!3186) (index!31712 lt!325123)) k0!2102) (ite ((_ is MissingZero!7336) lt!325123) (= (select (arr!19729 a!3186) (index!31711 lt!325123)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7336) lt!325123) (= (select (arr!19729 a!3186) (index!31714 lt!325123)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99813 (= lt!325123 e!410443)))

(declare-fun c!80595 () Bool)

(assert (=> d!99813 (= c!80595 (and ((_ is Intermediate!7336) lt!325122) (undefined!8148 lt!325122)))))

(assert (=> d!99813 (= lt!325122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99813 (validMask!0 mask!3328)))

(assert (=> d!99813 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!325123)))

(declare-fun b!733525 () Bool)

(assert (=> b!733525 (= e!410443 e!410444)))

(declare-fun lt!325121 () (_ BitVec 64))

(assert (=> b!733525 (= lt!325121 (select (arr!19729 a!3186) (index!31713 lt!325122)))))

(declare-fun c!80594 () Bool)

(assert (=> b!733525 (= c!80594 (= lt!325121 k0!2102))))

(declare-fun b!733526 () Bool)

(declare-fun c!80593 () Bool)

(assert (=> b!733526 (= c!80593 (= lt!325121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733526 (= e!410444 e!410442)))

(assert (= (and d!99813 c!80595) b!733524))

(assert (= (and d!99813 (not c!80595)) b!733525))

(assert (= (and b!733525 c!80594) b!733523))

(assert (= (and b!733525 (not c!80594)) b!733526))

(assert (= (and b!733526 c!80593) b!733522))

(assert (= (and b!733526 (not c!80593)) b!733521))

(declare-fun m!686471 () Bool)

(assert (=> b!733521 m!686471))

(declare-fun m!686473 () Bool)

(assert (=> d!99813 m!686473))

(declare-fun m!686475 () Bool)

(assert (=> d!99813 m!686475))

(declare-fun m!686477 () Bool)

(assert (=> d!99813 m!686477))

(declare-fun m!686479 () Bool)

(assert (=> d!99813 m!686479))

(declare-fun m!686481 () Bool)

(assert (=> d!99813 m!686481))

(assert (=> d!99813 m!686473))

(assert (=> d!99813 m!686369))

(declare-fun m!686483 () Bool)

(assert (=> b!733525 m!686483))

(assert (=> b!733390 d!99813))

(declare-fun b!733539 () Bool)

(declare-fun e!410453 () SeekEntryResult!7336)

(assert (=> b!733539 (= e!410453 (Found!7336 resIntermediateIndex!5))))

(declare-fun b!733540 () Bool)

(declare-fun c!80604 () Bool)

(declare-fun lt!325128 () (_ BitVec 64))

(assert (=> b!733540 (= c!80604 (= lt!325128 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410452 () SeekEntryResult!7336)

(assert (=> b!733540 (= e!410453 e!410452)))

(declare-fun b!733541 () Bool)

(assert (=> b!733541 (= e!410452 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733542 () Bool)

(assert (=> b!733542 (= e!410452 (MissingVacant!7336 resIntermediateIndex!5))))

(declare-fun lt!325129 () SeekEntryResult!7336)

(declare-fun d!99815 () Bool)

(assert (=> d!99815 (and (or ((_ is Undefined!7336) lt!325129) (not ((_ is Found!7336) lt!325129)) (and (bvsge (index!31712 lt!325129) #b00000000000000000000000000000000) (bvslt (index!31712 lt!325129) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325129) ((_ is Found!7336) lt!325129) (not ((_ is MissingVacant!7336) lt!325129)) (not (= (index!31714 lt!325129) resIntermediateIndex!5)) (and (bvsge (index!31714 lt!325129) #b00000000000000000000000000000000) (bvslt (index!31714 lt!325129) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325129) (ite ((_ is Found!7336) lt!325129) (= (select (arr!19729 a!3186) (index!31712 lt!325129)) (select (arr!19729 a!3186) j!159)) (and ((_ is MissingVacant!7336) lt!325129) (= (index!31714 lt!325129) resIntermediateIndex!5) (= (select (arr!19729 a!3186) (index!31714 lt!325129)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!410451 () SeekEntryResult!7336)

(assert (=> d!99815 (= lt!325129 e!410451)))

(declare-fun c!80602 () Bool)

(assert (=> d!99815 (= c!80602 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!99815 (= lt!325128 (select (arr!19729 a!3186) resIntermediateIndex!5))))

(assert (=> d!99815 (validMask!0 mask!3328)))

(assert (=> d!99815 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325129)))

(declare-fun b!733543 () Bool)

(assert (=> b!733543 (= e!410451 Undefined!7336)))

(declare-fun b!733544 () Bool)

(assert (=> b!733544 (= e!410451 e!410453)))

(declare-fun c!80603 () Bool)

(assert (=> b!733544 (= c!80603 (= lt!325128 (select (arr!19729 a!3186) j!159)))))

(assert (= (and d!99815 c!80602) b!733543))

(assert (= (and d!99815 (not c!80602)) b!733544))

(assert (= (and b!733544 c!80603) b!733539))

(assert (= (and b!733544 (not c!80603)) b!733540))

(assert (= (and b!733540 c!80604) b!733542))

(assert (= (and b!733540 (not c!80604)) b!733541))

(declare-fun m!686485 () Bool)

(assert (=> b!733541 m!686485))

(assert (=> b!733541 m!686485))

(assert (=> b!733541 m!686357))

(declare-fun m!686487 () Bool)

(assert (=> b!733541 m!686487))

(declare-fun m!686489 () Bool)

(assert (=> d!99815 m!686489))

(declare-fun m!686491 () Bool)

(assert (=> d!99815 m!686491))

(assert (=> d!99815 m!686389))

(assert (=> d!99815 m!686369))

(assert (=> b!733391 d!99815))

(declare-fun d!99819 () Bool)

(declare-fun lt!325132 () (_ BitVec 32))

(assert (=> d!99819 (and (bvsge lt!325132 #b00000000000000000000000000000000) (bvslt lt!325132 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99819 (= lt!325132 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99819 (validMask!0 mask!3328)))

(assert (=> d!99819 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!325132)))

(declare-fun bs!20966 () Bool)

(assert (= bs!20966 d!99819))

(declare-fun m!686493 () Bool)

(assert (=> bs!20966 m!686493))

(assert (=> bs!20966 m!686369))

(assert (=> b!733392 d!99819))

(declare-fun d!99823 () Bool)

(assert (=> d!99823 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64968 d!99823))

(declare-fun d!99825 () Bool)

(assert (=> d!99825 (= (array_inv!15503 a!3186) (bvsge (size!20150 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64968 d!99825))

(declare-fun b!733583 () Bool)

(declare-fun e!410476 () Bool)

(declare-fun e!410475 () Bool)

(assert (=> b!733583 (= e!410476 e!410475)))

(declare-fun lt!325152 () (_ BitVec 64))

(assert (=> b!733583 (= lt!325152 (select (arr!19729 a!3186) j!159))))

(declare-fun lt!325151 () Unit!24990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41232 (_ BitVec 64) (_ BitVec 32)) Unit!24990)

(assert (=> b!733583 (= lt!325151 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325152 j!159))))

(assert (=> b!733583 (arrayContainsKey!0 a!3186 lt!325152 #b00000000000000000000000000000000)))

(declare-fun lt!325153 () Unit!24990)

(assert (=> b!733583 (= lt!325153 lt!325151)))

(declare-fun res!493095 () Bool)

(assert (=> b!733583 (= res!493095 (= (seekEntryOrOpen!0 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) (Found!7336 j!159)))))

(assert (=> b!733583 (=> (not res!493095) (not e!410475))))

(declare-fun b!733584 () Bool)

(declare-fun e!410477 () Bool)

(assert (=> b!733584 (= e!410477 e!410476)))

(declare-fun c!80622 () Bool)

(assert (=> b!733584 (= c!80622 (validKeyInArray!0 (select (arr!19729 a!3186) j!159)))))

(declare-fun b!733585 () Bool)

(declare-fun call!34875 () Bool)

(assert (=> b!733585 (= e!410475 call!34875)))

(declare-fun bm!34872 () Bool)

(assert (=> bm!34872 (= call!34875 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!733586 () Bool)

(assert (=> b!733586 (= e!410476 call!34875)))

(declare-fun d!99827 () Bool)

(declare-fun res!493096 () Bool)

(assert (=> d!99827 (=> res!493096 e!410477)))

(assert (=> d!99827 (= res!493096 (bvsge j!159 (size!20150 a!3186)))))

(assert (=> d!99827 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!410477)))

(assert (= (and d!99827 (not res!493096)) b!733584))

(assert (= (and b!733584 c!80622) b!733583))

(assert (= (and b!733584 (not c!80622)) b!733586))

(assert (= (and b!733583 res!493095) b!733585))

(assert (= (or b!733585 b!733586) bm!34872))

(assert (=> b!733583 m!686357))

(declare-fun m!686503 () Bool)

(assert (=> b!733583 m!686503))

(declare-fun m!686505 () Bool)

(assert (=> b!733583 m!686505))

(assert (=> b!733583 m!686357))

(assert (=> b!733583 m!686361))

(assert (=> b!733584 m!686357))

(assert (=> b!733584 m!686357))

(assert (=> b!733584 m!686387))

(declare-fun m!686507 () Bool)

(assert (=> bm!34872 m!686507))

(assert (=> b!733393 d!99827))

(declare-fun d!99831 () Bool)

(assert (=> d!99831 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!325159 () Unit!24990)

(declare-fun choose!38 (array!41232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24990)

(assert (=> d!99831 (= lt!325159 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99831 (validMask!0 mask!3328)))

(assert (=> d!99831 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!325159)))

(declare-fun bs!20967 () Bool)

(assert (= bs!20967 d!99831))

(assert (=> bs!20967 m!686353))

(declare-fun m!686523 () Bool)

(assert (=> bs!20967 m!686523))

(assert (=> bs!20967 m!686369))

(assert (=> b!733393 d!99831))

(declare-fun b!733593 () Bool)

(declare-fun lt!325161 () SeekEntryResult!7336)

(assert (=> b!733593 (and (bvsge (index!31713 lt!325161) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325161) (size!20150 a!3186)))))

(declare-fun e!410482 () Bool)

(assert (=> b!733593 (= e!410482 (= (select (arr!19729 a!3186) (index!31713 lt!325161)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733594 () Bool)

(assert (=> b!733594 (and (bvsge (index!31713 lt!325161) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325161) (size!20150 a!3186)))))

(declare-fun res!493098 () Bool)

(assert (=> b!733594 (= res!493098 (= (select (arr!19729 a!3186) (index!31713 lt!325161)) (select (arr!19729 a!3186) j!159)))))

(assert (=> b!733594 (=> res!493098 e!410482)))

(declare-fun e!410484 () Bool)

(assert (=> b!733594 (= e!410484 e!410482)))

(declare-fun b!733595 () Bool)

(declare-fun e!410483 () SeekEntryResult!7336)

(assert (=> b!733595 (= e!410483 (Intermediate!7336 true (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733596 () Bool)

(assert (=> b!733596 (and (bvsge (index!31713 lt!325161) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325161) (size!20150 a!3186)))))

(declare-fun res!493099 () Bool)

(assert (=> b!733596 (= res!493099 (= (select (arr!19729 a!3186) (index!31713 lt!325161)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733596 (=> res!493099 e!410482)))

(declare-fun b!733597 () Bool)

(declare-fun e!410485 () Bool)

(assert (=> b!733597 (= e!410485 e!410484)))

(declare-fun res!493097 () Bool)

(assert (=> b!733597 (= res!493097 (and ((_ is Intermediate!7336) lt!325161) (not (undefined!8148 lt!325161)) (bvslt (x!62727 lt!325161) #b01111111111111111111111111111110) (bvsge (x!62727 lt!325161) #b00000000000000000000000000000000) (bvsge (x!62727 lt!325161) #b00000000000000000000000000000000)))))

(assert (=> b!733597 (=> (not res!493097) (not e!410484))))

(declare-fun b!733598 () Bool)

(declare-fun e!410481 () SeekEntryResult!7336)

(assert (=> b!733598 (= e!410483 e!410481)))

(declare-fun lt!325160 () (_ BitVec 64))

(declare-fun c!80627 () Bool)

(assert (=> b!733598 (= c!80627 (or (= lt!325160 (select (arr!19729 a!3186) j!159)) (= (bvadd lt!325160 lt!325160) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733599 () Bool)

(assert (=> b!733599 (= e!410485 (bvsge (x!62727 lt!325161) #b01111111111111111111111111111110))))

(declare-fun b!733600 () Bool)

(assert (=> b!733600 (= e!410481 (Intermediate!7336 false (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733601 () Bool)

(assert (=> b!733601 (= e!410481 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19729 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99835 () Bool)

(assert (=> d!99835 e!410485))

(declare-fun c!80626 () Bool)

(assert (=> d!99835 (= c!80626 (and ((_ is Intermediate!7336) lt!325161) (undefined!8148 lt!325161)))))

(assert (=> d!99835 (= lt!325161 e!410483)))

(declare-fun c!80628 () Bool)

(assert (=> d!99835 (= c!80628 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99835 (= lt!325160 (select (arr!19729 a!3186) (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328)))))

(assert (=> d!99835 (validMask!0 mask!3328)))

(assert (=> d!99835 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325161)))

(assert (= (and d!99835 c!80628) b!733595))

(assert (= (and d!99835 (not c!80628)) b!733598))

(assert (= (and b!733598 c!80627) b!733600))

(assert (= (and b!733598 (not c!80627)) b!733601))

(assert (= (and d!99835 c!80626) b!733599))

(assert (= (and d!99835 (not c!80626)) b!733597))

(assert (= (and b!733597 res!493097) b!733594))

(assert (= (and b!733594 (not res!493098)) b!733596))

(assert (= (and b!733596 (not res!493099)) b!733593))

(assert (=> d!99835 m!686373))

(declare-fun m!686525 () Bool)

(assert (=> d!99835 m!686525))

(assert (=> d!99835 m!686369))

(assert (=> b!733601 m!686373))

(declare-fun m!686527 () Bool)

(assert (=> b!733601 m!686527))

(assert (=> b!733601 m!686527))

(assert (=> b!733601 m!686357))

(declare-fun m!686529 () Bool)

(assert (=> b!733601 m!686529))

(declare-fun m!686531 () Bool)

(assert (=> b!733596 m!686531))

(assert (=> b!733593 m!686531))

(assert (=> b!733594 m!686531))

(assert (=> b!733383 d!99835))

(declare-fun d!99837 () Bool)

(declare-fun lt!325163 () (_ BitVec 32))

(declare-fun lt!325162 () (_ BitVec 32))

(assert (=> d!99837 (= lt!325163 (bvmul (bvxor lt!325162 (bvlshr lt!325162 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99837 (= lt!325162 ((_ extract 31 0) (bvand (bvxor (select (arr!19729 a!3186) j!159) (bvlshr (select (arr!19729 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99837 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493090 (let ((h!14848 ((_ extract 31 0) (bvand (bvxor (select (arr!19729 a!3186) j!159) (bvlshr (select (arr!19729 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62730 (bvmul (bvxor h!14848 (bvlshr h!14848 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62730 (bvlshr x!62730 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493090 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493090 #b00000000000000000000000000000000))))))

(assert (=> d!99837 (= (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) (bvand (bvxor lt!325163 (bvlshr lt!325163 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733383 d!99837))

(declare-fun d!99839 () Bool)

(declare-fun res!493108 () Bool)

(declare-fun e!410500 () Bool)

(assert (=> d!99839 (=> res!493108 e!410500)))

(assert (=> d!99839 (= res!493108 (= (select (arr!19729 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99839 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!410500)))

(declare-fun b!733622 () Bool)

(declare-fun e!410501 () Bool)

(assert (=> b!733622 (= e!410500 e!410501)))

(declare-fun res!493109 () Bool)

(assert (=> b!733622 (=> (not res!493109) (not e!410501))))

(assert (=> b!733622 (= res!493109 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20150 a!3186)))))

(declare-fun b!733623 () Bool)

(assert (=> b!733623 (= e!410501 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99839 (not res!493108)) b!733622))

(assert (= (and b!733622 res!493109) b!733623))

(assert (=> d!99839 m!686449))

(declare-fun m!686533 () Bool)

(assert (=> b!733623 m!686533))

(assert (=> b!733394 d!99839))

(declare-fun b!733624 () Bool)

(declare-fun e!410503 () Bool)

(declare-fun e!410502 () Bool)

(assert (=> b!733624 (= e!410503 e!410502)))

(declare-fun lt!325175 () (_ BitVec 64))

(assert (=> b!733624 (= lt!325175 (select (arr!19729 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!325174 () Unit!24990)

(assert (=> b!733624 (= lt!325174 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325175 #b00000000000000000000000000000000))))

(assert (=> b!733624 (arrayContainsKey!0 a!3186 lt!325175 #b00000000000000000000000000000000)))

(declare-fun lt!325176 () Unit!24990)

(assert (=> b!733624 (= lt!325176 lt!325174)))

(declare-fun res!493110 () Bool)

(assert (=> b!733624 (= res!493110 (= (seekEntryOrOpen!0 (select (arr!19729 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7336 #b00000000000000000000000000000000)))))

(assert (=> b!733624 (=> (not res!493110) (not e!410502))))

(declare-fun b!733625 () Bool)

(declare-fun e!410504 () Bool)

(assert (=> b!733625 (= e!410504 e!410503)))

(declare-fun c!80635 () Bool)

(assert (=> b!733625 (= c!80635 (validKeyInArray!0 (select (arr!19729 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!733626 () Bool)

(declare-fun call!34878 () Bool)

(assert (=> b!733626 (= e!410502 call!34878)))

(declare-fun bm!34875 () Bool)

(assert (=> bm!34875 (= call!34878 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!733627 () Bool)

(assert (=> b!733627 (= e!410503 call!34878)))

(declare-fun d!99841 () Bool)

(declare-fun res!493111 () Bool)

(assert (=> d!99841 (=> res!493111 e!410504)))

(assert (=> d!99841 (= res!493111 (bvsge #b00000000000000000000000000000000 (size!20150 a!3186)))))

(assert (=> d!99841 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!410504)))

(assert (= (and d!99841 (not res!493111)) b!733625))

(assert (= (and b!733625 c!80635) b!733624))

(assert (= (and b!733625 (not c!80635)) b!733627))

(assert (= (and b!733624 res!493110) b!733626))

(assert (= (or b!733626 b!733627) bm!34875))

(assert (=> b!733624 m!686449))

(declare-fun m!686535 () Bool)

(assert (=> b!733624 m!686535))

(declare-fun m!686537 () Bool)

(assert (=> b!733624 m!686537))

(assert (=> b!733624 m!686449))

(declare-fun m!686539 () Bool)

(assert (=> b!733624 m!686539))

(assert (=> b!733625 m!686449))

(assert (=> b!733625 m!686449))

(assert (=> b!733625 m!686453))

(declare-fun m!686541 () Bool)

(assert (=> bm!34875 m!686541))

(assert (=> b!733384 d!99841))

(declare-fun b!733632 () Bool)

(declare-fun lt!325178 () SeekEntryResult!7336)

(assert (=> b!733632 (and (bvsge (index!31713 lt!325178) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325178) (size!20150 a!3186)))))

(declare-fun e!410510 () Bool)

(assert (=> b!733632 (= e!410510 (= (select (arr!19729 a!3186) (index!31713 lt!325178)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733633 () Bool)

(assert (=> b!733633 (and (bvsge (index!31713 lt!325178) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325178) (size!20150 a!3186)))))

(declare-fun res!493115 () Bool)

(assert (=> b!733633 (= res!493115 (= (select (arr!19729 a!3186) (index!31713 lt!325178)) (select (arr!19729 a!3186) j!159)))))

(assert (=> b!733633 (=> res!493115 e!410510)))

(declare-fun e!410512 () Bool)

(assert (=> b!733633 (= e!410512 e!410510)))

(declare-fun b!733634 () Bool)

(declare-fun e!410511 () SeekEntryResult!7336)

(assert (=> b!733634 (= e!410511 (Intermediate!7336 true index!1321 x!1131))))

(declare-fun b!733635 () Bool)

(assert (=> b!733635 (and (bvsge (index!31713 lt!325178) #b00000000000000000000000000000000) (bvslt (index!31713 lt!325178) (size!20150 a!3186)))))

(declare-fun res!493116 () Bool)

(assert (=> b!733635 (= res!493116 (= (select (arr!19729 a!3186) (index!31713 lt!325178)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733635 (=> res!493116 e!410510)))

(declare-fun b!733636 () Bool)

(declare-fun e!410513 () Bool)

(assert (=> b!733636 (= e!410513 e!410512)))

(declare-fun res!493114 () Bool)

(assert (=> b!733636 (= res!493114 (and ((_ is Intermediate!7336) lt!325178) (not (undefined!8148 lt!325178)) (bvslt (x!62727 lt!325178) #b01111111111111111111111111111110) (bvsge (x!62727 lt!325178) #b00000000000000000000000000000000) (bvsge (x!62727 lt!325178) x!1131)))))

(assert (=> b!733636 (=> (not res!493114) (not e!410512))))

(declare-fun b!733637 () Bool)

(declare-fun e!410509 () SeekEntryResult!7336)

(assert (=> b!733637 (= e!410511 e!410509)))

(declare-fun c!80639 () Bool)

(declare-fun lt!325177 () (_ BitVec 64))

(assert (=> b!733637 (= c!80639 (or (= lt!325177 (select (arr!19729 a!3186) j!159)) (= (bvadd lt!325177 lt!325177) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733638 () Bool)

(assert (=> b!733638 (= e!410513 (bvsge (x!62727 lt!325178) #b01111111111111111111111111111110))))

(declare-fun b!733639 () Bool)

(assert (=> b!733639 (= e!410509 (Intermediate!7336 false index!1321 x!1131))))

(declare-fun b!733640 () Bool)

(assert (=> b!733640 (= e!410509 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19729 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99843 () Bool)

(assert (=> d!99843 e!410513))

(declare-fun c!80638 () Bool)

(assert (=> d!99843 (= c!80638 (and ((_ is Intermediate!7336) lt!325178) (undefined!8148 lt!325178)))))

(assert (=> d!99843 (= lt!325178 e!410511)))

(declare-fun c!80640 () Bool)

(assert (=> d!99843 (= c!80640 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99843 (= lt!325177 (select (arr!19729 a!3186) index!1321))))

(assert (=> d!99843 (validMask!0 mask!3328)))

(assert (=> d!99843 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325178)))

(assert (= (and d!99843 c!80640) b!733634))

(assert (= (and d!99843 (not c!80640)) b!733637))

(assert (= (and b!733637 c!80639) b!733639))

(assert (= (and b!733637 (not c!80639)) b!733640))

(assert (= (and d!99843 c!80638) b!733638))

(assert (= (and d!99843 (not c!80638)) b!733636))

(assert (= (and b!733636 res!493114) b!733633))

(assert (= (and b!733633 (not res!493115)) b!733635))

(assert (= (and b!733635 (not res!493116)) b!733632))

(declare-fun m!686543 () Bool)

(assert (=> d!99843 m!686543))

(assert (=> d!99843 m!686369))

(assert (=> b!733640 m!686379))

(assert (=> b!733640 m!686379))

(assert (=> b!733640 m!686357))

(declare-fun m!686545 () Bool)

(assert (=> b!733640 m!686545))

(declare-fun m!686547 () Bool)

(assert (=> b!733635 m!686547))

(assert (=> b!733632 m!686547))

(assert (=> b!733633 m!686547))

(assert (=> b!733395 d!99843))

(declare-fun b!733651 () Bool)

(declare-fun lt!325183 () SeekEntryResult!7336)

(declare-fun e!410519 () SeekEntryResult!7336)

(assert (=> b!733651 (= e!410519 (seekKeyOrZeroReturnVacant!0 (x!62727 lt!325183) (index!31713 lt!325183) (index!31713 lt!325183) (select (arr!19729 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733652 () Bool)

(assert (=> b!733652 (= e!410519 (MissingZero!7336 (index!31713 lt!325183)))))

(declare-fun b!733653 () Bool)

(declare-fun e!410521 () SeekEntryResult!7336)

(assert (=> b!733653 (= e!410521 (Found!7336 (index!31713 lt!325183)))))

(declare-fun b!733654 () Bool)

(declare-fun e!410520 () SeekEntryResult!7336)

(assert (=> b!733654 (= e!410520 Undefined!7336)))

(declare-fun d!99845 () Bool)

(declare-fun lt!325184 () SeekEntryResult!7336)

(assert (=> d!99845 (and (or ((_ is Undefined!7336) lt!325184) (not ((_ is Found!7336) lt!325184)) (and (bvsge (index!31712 lt!325184) #b00000000000000000000000000000000) (bvslt (index!31712 lt!325184) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325184) ((_ is Found!7336) lt!325184) (not ((_ is MissingZero!7336) lt!325184)) (and (bvsge (index!31711 lt!325184) #b00000000000000000000000000000000) (bvslt (index!31711 lt!325184) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325184) ((_ is Found!7336) lt!325184) ((_ is MissingZero!7336) lt!325184) (not ((_ is MissingVacant!7336) lt!325184)) (and (bvsge (index!31714 lt!325184) #b00000000000000000000000000000000) (bvslt (index!31714 lt!325184) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325184) (ite ((_ is Found!7336) lt!325184) (= (select (arr!19729 a!3186) (index!31712 lt!325184)) (select (arr!19729 a!3186) j!159)) (ite ((_ is MissingZero!7336) lt!325184) (= (select (arr!19729 a!3186) (index!31711 lt!325184)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7336) lt!325184) (= (select (arr!19729 a!3186) (index!31714 lt!325184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99845 (= lt!325184 e!410520)))

(declare-fun c!80644 () Bool)

(assert (=> d!99845 (= c!80644 (and ((_ is Intermediate!7336) lt!325183) (undefined!8148 lt!325183)))))

(assert (=> d!99845 (= lt!325183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19729 a!3186) j!159) mask!3328) (select (arr!19729 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99845 (validMask!0 mask!3328)))

(assert (=> d!99845 (= (seekEntryOrOpen!0 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325184)))

(declare-fun b!733655 () Bool)

(assert (=> b!733655 (= e!410520 e!410521)))

(declare-fun lt!325182 () (_ BitVec 64))

(assert (=> b!733655 (= lt!325182 (select (arr!19729 a!3186) (index!31713 lt!325183)))))

(declare-fun c!80643 () Bool)

(assert (=> b!733655 (= c!80643 (= lt!325182 (select (arr!19729 a!3186) j!159)))))

(declare-fun b!733656 () Bool)

(declare-fun c!80642 () Bool)

(assert (=> b!733656 (= c!80642 (= lt!325182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733656 (= e!410521 e!410519)))

(assert (= (and d!99845 c!80644) b!733654))

(assert (= (and d!99845 (not c!80644)) b!733655))

(assert (= (and b!733655 c!80643) b!733653))

(assert (= (and b!733655 (not c!80643)) b!733656))

(assert (= (and b!733656 c!80642) b!733652))

(assert (= (and b!733656 (not c!80642)) b!733651))

(assert (=> b!733651 m!686357))

(declare-fun m!686561 () Bool)

(assert (=> b!733651 m!686561))

(assert (=> d!99845 m!686373))

(assert (=> d!99845 m!686357))

(assert (=> d!99845 m!686375))

(declare-fun m!686563 () Bool)

(assert (=> d!99845 m!686563))

(declare-fun m!686565 () Bool)

(assert (=> d!99845 m!686565))

(declare-fun m!686567 () Bool)

(assert (=> d!99845 m!686567))

(assert (=> d!99845 m!686357))

(assert (=> d!99845 m!686373))

(assert (=> d!99845 m!686369))

(declare-fun m!686569 () Bool)

(assert (=> b!733655 m!686569))

(assert (=> b!733396 d!99845))

(declare-fun b!733663 () Bool)

(declare-fun e!410527 () SeekEntryResult!7336)

(assert (=> b!733663 (= e!410527 (Found!7336 index!1321))))

(declare-fun b!733664 () Bool)

(declare-fun c!80650 () Bool)

(declare-fun lt!325188 () (_ BitVec 64))

(assert (=> b!733664 (= c!80650 (= lt!325188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410526 () SeekEntryResult!7336)

(assert (=> b!733664 (= e!410527 e!410526)))

(declare-fun b!733665 () Bool)

(assert (=> b!733665 (= e!410526 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733666 () Bool)

(assert (=> b!733666 (= e!410526 (MissingVacant!7336 resIntermediateIndex!5))))

(declare-fun d!99849 () Bool)

(declare-fun lt!325189 () SeekEntryResult!7336)

(assert (=> d!99849 (and (or ((_ is Undefined!7336) lt!325189) (not ((_ is Found!7336) lt!325189)) (and (bvsge (index!31712 lt!325189) #b00000000000000000000000000000000) (bvslt (index!31712 lt!325189) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325189) ((_ is Found!7336) lt!325189) (not ((_ is MissingVacant!7336) lt!325189)) (not (= (index!31714 lt!325189) resIntermediateIndex!5)) (and (bvsge (index!31714 lt!325189) #b00000000000000000000000000000000) (bvslt (index!31714 lt!325189) (size!20150 a!3186)))) (or ((_ is Undefined!7336) lt!325189) (ite ((_ is Found!7336) lt!325189) (= (select (arr!19729 a!3186) (index!31712 lt!325189)) (select (arr!19729 a!3186) j!159)) (and ((_ is MissingVacant!7336) lt!325189) (= (index!31714 lt!325189) resIntermediateIndex!5) (= (select (arr!19729 a!3186) (index!31714 lt!325189)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!410525 () SeekEntryResult!7336)

(assert (=> d!99849 (= lt!325189 e!410525)))

(declare-fun c!80648 () Bool)

(assert (=> d!99849 (= c!80648 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99849 (= lt!325188 (select (arr!19729 a!3186) index!1321))))

(assert (=> d!99849 (validMask!0 mask!3328)))

(assert (=> d!99849 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19729 a!3186) j!159) a!3186 mask!3328) lt!325189)))

(declare-fun b!733667 () Bool)

(assert (=> b!733667 (= e!410525 Undefined!7336)))

(declare-fun b!733668 () Bool)

(assert (=> b!733668 (= e!410525 e!410527)))

(declare-fun c!80649 () Bool)

(assert (=> b!733668 (= c!80649 (= lt!325188 (select (arr!19729 a!3186) j!159)))))

(assert (= (and d!99849 c!80648) b!733667))

(assert (= (and d!99849 (not c!80648)) b!733668))

(assert (= (and b!733668 c!80649) b!733663))

(assert (= (and b!733668 (not c!80649)) b!733664))

(assert (= (and b!733664 c!80650) b!733666))

(assert (= (and b!733664 (not c!80650)) b!733665))

(assert (=> b!733665 m!686379))

(assert (=> b!733665 m!686379))

(assert (=> b!733665 m!686357))

(declare-fun m!686581 () Bool)

(assert (=> b!733665 m!686581))

(declare-fun m!686583 () Bool)

(assert (=> d!99849 m!686583))

(declare-fun m!686585 () Bool)

(assert (=> d!99849 m!686585))

(assert (=> d!99849 m!686543))

(assert (=> d!99849 m!686369))

(assert (=> b!733386 d!99849))

(assert (=> b!733397 d!99849))

(declare-fun d!99853 () Bool)

(assert (=> d!99853 (= (validKeyInArray!0 (select (arr!19729 a!3186) j!159)) (and (not (= (select (arr!19729 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19729 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!733387 d!99853))

(check-sat (not b!733470) (not d!99819) (not bm!34875) (not b!733583) (not b!733624) (not b!733665) (not d!99845) (not d!99809) (not d!99843) (not d!99849) (not b!733521) (not b!733625) (not b!733623) (not d!99815) (not b!733468) (not bm!34872) (not d!99831) (not b!733508) (not b!733541) (not bm!34869) (not d!99813) (not b!733601) (not b!733499) (not b!733640) (not d!99835) (not b!733469) (not b!733651) (not b!733584) (not d!99807))
(check-sat)
