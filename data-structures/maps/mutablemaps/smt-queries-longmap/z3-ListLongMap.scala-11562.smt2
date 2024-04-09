; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134684 () Bool)

(assert start!134684)

(declare-fun b!1571284 () Bool)

(declare-fun res!1073663 () Bool)

(declare-fun e!876128 () Bool)

(assert (=> b!1571284 (=> (not res!1073663) (not e!876128))))

(declare-fun k0!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571284 (= res!1073663 (validKeyInArray!0 k0!2731))))

(declare-fun b!1571285 () Bool)

(declare-fun res!1073659 () Bool)

(assert (=> b!1571285 (=> (not res!1073659) (not e!876128))))

(declare-datatypes ((array!104829 0))(
  ( (array!104830 (arr!50588 (Array (_ BitVec 32) (_ BitVec 64))) (size!51139 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104829)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104829 (_ BitVec 32)) Bool)

(assert (=> b!1571285 (= res!1073659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571286 () Bool)

(declare-fun res!1073662 () Bool)

(assert (=> b!1571286 (=> (not res!1073662) (not e!876128))))

(assert (=> b!1571286 (= res!1073662 (= (size!51139 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571287 () Bool)

(get-info :version)

(declare-datatypes ((SeekEntryResult!13541 0))(
  ( (MissingZero!13541 (index!56561 (_ BitVec 32))) (Found!13541 (index!56562 (_ BitVec 32))) (Intermediate!13541 (undefined!14353 Bool) (index!56563 (_ BitVec 32)) (x!141264 (_ BitVec 32))) (Undefined!13541) (MissingVacant!13541 (index!56564 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!104829 (_ BitVec 32)) SeekEntryResult!13541)

(assert (=> b!1571287 (= e!876128 ((_ is Found!13541) (seekEntry!0 k0!2731 a!3462 mask!4043)))))

(declare-fun res!1073661 () Bool)

(assert (=> start!134684 (=> (not res!1073661) (not e!876128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134684 (= res!1073661 (validMask!0 mask!4043))))

(assert (=> start!134684 e!876128))

(assert (=> start!134684 true))

(declare-fun array_inv!39233 (array!104829) Bool)

(assert (=> start!134684 (array_inv!39233 a!3462)))

(declare-fun b!1571288 () Bool)

(declare-fun res!1073660 () Bool)

(assert (=> b!1571288 (=> (not res!1073660) (not e!876128))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104829 (_ BitVec 32)) SeekEntryResult!13541)

(assert (=> b!1571288 (= res!1073660 (not ((_ is Found!13541) (seekEntryOrOpen!0 k0!2731 a!3462 mask!4043))))))

(assert (= (and start!134684 res!1073661) b!1571286))

(assert (= (and b!1571286 res!1073662) b!1571285))

(assert (= (and b!1571285 res!1073659) b!1571284))

(assert (= (and b!1571284 res!1073663) b!1571288))

(assert (= (and b!1571288 res!1073660) b!1571287))

(declare-fun m!1445293 () Bool)

(assert (=> b!1571287 m!1445293))

(declare-fun m!1445295 () Bool)

(assert (=> b!1571288 m!1445295))

(declare-fun m!1445297 () Bool)

(assert (=> start!134684 m!1445297))

(declare-fun m!1445299 () Bool)

(assert (=> start!134684 m!1445299))

(declare-fun m!1445301 () Bool)

(assert (=> b!1571284 m!1445301))

(declare-fun m!1445303 () Bool)

(assert (=> b!1571285 m!1445303))

(check-sat (not start!134684) (not b!1571285) (not b!1571288) (not b!1571287) (not b!1571284))
(check-sat)
(get-model)

(declare-fun d!164443 () Bool)

(declare-fun lt!673495 () SeekEntryResult!13541)

(assert (=> d!164443 (and (or ((_ is MissingVacant!13541) lt!673495) (not ((_ is Found!13541) lt!673495)) (and (bvsge (index!56562 lt!673495) #b00000000000000000000000000000000) (bvslt (index!56562 lt!673495) (size!51139 a!3462)))) (not ((_ is MissingVacant!13541) lt!673495)) (or (not ((_ is Found!13541) lt!673495)) (= (select (arr!50588 a!3462) (index!56562 lt!673495)) k0!2731)))))

(declare-fun e!876144 () SeekEntryResult!13541)

(assert (=> d!164443 (= lt!673495 e!876144)))

(declare-fun c!145057 () Bool)

(declare-fun lt!673494 () SeekEntryResult!13541)

(assert (=> d!164443 (= c!145057 (and ((_ is Intermediate!13541) lt!673494) (undefined!14353 lt!673494)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104829 (_ BitVec 32)) SeekEntryResult!13541)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!164443 (= lt!673494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2731 mask!4043) k0!2731 a!3462 mask!4043))))

(assert (=> d!164443 (validMask!0 mask!4043)))

(assert (=> d!164443 (= (seekEntry!0 k0!2731 a!3462 mask!4043) lt!673495)))

(declare-fun b!1571316 () Bool)

(declare-fun e!876143 () SeekEntryResult!13541)

(assert (=> b!1571316 (= e!876144 e!876143)))

(declare-fun lt!673493 () (_ BitVec 64))

(assert (=> b!1571316 (= lt!673493 (select (arr!50588 a!3462) (index!56563 lt!673494)))))

(declare-fun c!145058 () Bool)

(assert (=> b!1571316 (= c!145058 (= lt!673493 k0!2731))))

(declare-fun b!1571317 () Bool)

(assert (=> b!1571317 (= e!876143 (Found!13541 (index!56563 lt!673494)))))

(declare-fun b!1571318 () Bool)

(declare-fun e!876142 () SeekEntryResult!13541)

(assert (=> b!1571318 (= e!876142 (MissingZero!13541 (index!56563 lt!673494)))))

(declare-fun b!1571319 () Bool)

(declare-fun c!145059 () Bool)

(assert (=> b!1571319 (= c!145059 (= lt!673493 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1571319 (= e!876143 e!876142)))

(declare-fun b!1571320 () Bool)

(declare-fun lt!673492 () SeekEntryResult!13541)

(assert (=> b!1571320 (= e!876142 (ite ((_ is MissingVacant!13541) lt!673492) (MissingZero!13541 (index!56564 lt!673492)) lt!673492))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104829 (_ BitVec 32)) SeekEntryResult!13541)

(assert (=> b!1571320 (= lt!673492 (seekKeyOrZeroReturnVacant!0 (x!141264 lt!673494) (index!56563 lt!673494) (index!56563 lt!673494) k0!2731 a!3462 mask!4043))))

(declare-fun b!1571321 () Bool)

(assert (=> b!1571321 (= e!876144 Undefined!13541)))

(assert (= (and d!164443 c!145057) b!1571321))

(assert (= (and d!164443 (not c!145057)) b!1571316))

(assert (= (and b!1571316 c!145058) b!1571317))

(assert (= (and b!1571316 (not c!145058)) b!1571319))

(assert (= (and b!1571319 c!145059) b!1571318))

(assert (= (and b!1571319 (not c!145059)) b!1571320))

(declare-fun m!1445317 () Bool)

(assert (=> d!164443 m!1445317))

(declare-fun m!1445319 () Bool)

(assert (=> d!164443 m!1445319))

(assert (=> d!164443 m!1445319))

(declare-fun m!1445321 () Bool)

(assert (=> d!164443 m!1445321))

(assert (=> d!164443 m!1445297))

(declare-fun m!1445323 () Bool)

(assert (=> b!1571316 m!1445323))

(declare-fun m!1445325 () Bool)

(assert (=> b!1571320 m!1445325))

(assert (=> b!1571287 d!164443))

(declare-fun b!1571394 () Bool)

(declare-fun e!876187 () SeekEntryResult!13541)

(declare-fun lt!673538 () SeekEntryResult!13541)

(assert (=> b!1571394 (= e!876187 (Found!13541 (index!56563 lt!673538)))))

(declare-fun b!1571395 () Bool)

(declare-fun c!145090 () Bool)

(declare-fun lt!673539 () (_ BitVec 64))

(assert (=> b!1571395 (= c!145090 (= lt!673539 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!876189 () SeekEntryResult!13541)

(assert (=> b!1571395 (= e!876187 e!876189)))

(declare-fun d!164449 () Bool)

(declare-fun lt!673540 () SeekEntryResult!13541)

(assert (=> d!164449 (and (or ((_ is Undefined!13541) lt!673540) (not ((_ is Found!13541) lt!673540)) (and (bvsge (index!56562 lt!673540) #b00000000000000000000000000000000) (bvslt (index!56562 lt!673540) (size!51139 a!3462)))) (or ((_ is Undefined!13541) lt!673540) ((_ is Found!13541) lt!673540) (not ((_ is MissingZero!13541) lt!673540)) (and (bvsge (index!56561 lt!673540) #b00000000000000000000000000000000) (bvslt (index!56561 lt!673540) (size!51139 a!3462)))) (or ((_ is Undefined!13541) lt!673540) ((_ is Found!13541) lt!673540) ((_ is MissingZero!13541) lt!673540) (not ((_ is MissingVacant!13541) lt!673540)) (and (bvsge (index!56564 lt!673540) #b00000000000000000000000000000000) (bvslt (index!56564 lt!673540) (size!51139 a!3462)))) (or ((_ is Undefined!13541) lt!673540) (ite ((_ is Found!13541) lt!673540) (= (select (arr!50588 a!3462) (index!56562 lt!673540)) k0!2731) (ite ((_ is MissingZero!13541) lt!673540) (= (select (arr!50588 a!3462) (index!56561 lt!673540)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13541) lt!673540) (= (select (arr!50588 a!3462) (index!56564 lt!673540)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!876188 () SeekEntryResult!13541)

(assert (=> d!164449 (= lt!673540 e!876188)))

(declare-fun c!145091 () Bool)

(assert (=> d!164449 (= c!145091 (and ((_ is Intermediate!13541) lt!673538) (undefined!14353 lt!673538)))))

(assert (=> d!164449 (= lt!673538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2731 mask!4043) k0!2731 a!3462 mask!4043))))

(assert (=> d!164449 (validMask!0 mask!4043)))

(assert (=> d!164449 (= (seekEntryOrOpen!0 k0!2731 a!3462 mask!4043) lt!673540)))

(declare-fun b!1571396 () Bool)

(assert (=> b!1571396 (= e!876189 (seekKeyOrZeroReturnVacant!0 (x!141264 lt!673538) (index!56563 lt!673538) (index!56563 lt!673538) k0!2731 a!3462 mask!4043))))

(declare-fun b!1571397 () Bool)

(assert (=> b!1571397 (= e!876189 (MissingZero!13541 (index!56563 lt!673538)))))

(declare-fun b!1571398 () Bool)

(assert (=> b!1571398 (= e!876188 e!876187)))

(assert (=> b!1571398 (= lt!673539 (select (arr!50588 a!3462) (index!56563 lt!673538)))))

(declare-fun c!145092 () Bool)

(assert (=> b!1571398 (= c!145092 (= lt!673539 k0!2731))))

(declare-fun b!1571399 () Bool)

(assert (=> b!1571399 (= e!876188 Undefined!13541)))

(assert (= (and d!164449 c!145091) b!1571399))

(assert (= (and d!164449 (not c!145091)) b!1571398))

(assert (= (and b!1571398 c!145092) b!1571394))

(assert (= (and b!1571398 (not c!145092)) b!1571395))

(assert (= (and b!1571395 c!145090) b!1571397))

(assert (= (and b!1571395 (not c!145090)) b!1571396))

(assert (=> d!164449 m!1445319))

(assert (=> d!164449 m!1445297))

(declare-fun m!1445379 () Bool)

(assert (=> d!164449 m!1445379))

(declare-fun m!1445381 () Bool)

(assert (=> d!164449 m!1445381))

(assert (=> d!164449 m!1445319))

(assert (=> d!164449 m!1445321))

(declare-fun m!1445383 () Bool)

(assert (=> d!164449 m!1445383))

(declare-fun m!1445385 () Bool)

(assert (=> b!1571396 m!1445385))

(declare-fun m!1445387 () Bool)

(assert (=> b!1571398 m!1445387))

(assert (=> b!1571288 d!164449))

(declare-fun b!1571420 () Bool)

(declare-fun e!876203 () Bool)

(declare-fun call!72368 () Bool)

(assert (=> b!1571420 (= e!876203 call!72368)))

(declare-fun b!1571421 () Bool)

(declare-fun e!876202 () Bool)

(assert (=> b!1571421 (= e!876202 e!876203)))

(declare-fun lt!673557 () (_ BitVec 64))

(assert (=> b!1571421 (= lt!673557 (select (arr!50588 a!3462) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!52050 0))(
  ( (Unit!52051) )
))
(declare-fun lt!673556 () Unit!52050)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104829 (_ BitVec 64) (_ BitVec 32)) Unit!52050)

(assert (=> b!1571421 (= lt!673556 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3462 lt!673557 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1571421 (arrayContainsKey!0 a!3462 lt!673557 #b00000000000000000000000000000000)))

(declare-fun lt!673555 () Unit!52050)

(assert (=> b!1571421 (= lt!673555 lt!673556)))

(declare-fun res!1073696 () Bool)

(assert (=> b!1571421 (= res!1073696 (= (seekEntryOrOpen!0 (select (arr!50588 a!3462) #b00000000000000000000000000000000) a!3462 mask!4043) (Found!13541 #b00000000000000000000000000000000)))))

(assert (=> b!1571421 (=> (not res!1073696) (not e!876203))))

(declare-fun d!164461 () Bool)

(declare-fun res!1073695 () Bool)

(declare-fun e!876204 () Bool)

(assert (=> d!164461 (=> res!1073695 e!876204)))

(assert (=> d!164461 (= res!1073695 (bvsge #b00000000000000000000000000000000 (size!51139 a!3462)))))

(assert (=> d!164461 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043) e!876204)))

(declare-fun b!1571422 () Bool)

(assert (=> b!1571422 (= e!876202 call!72368)))

(declare-fun bm!72365 () Bool)

(assert (=> bm!72365 (= call!72368 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3462 mask!4043))))

(declare-fun b!1571423 () Bool)

(assert (=> b!1571423 (= e!876204 e!876202)))

(declare-fun c!145101 () Bool)

(assert (=> b!1571423 (= c!145101 (validKeyInArray!0 (select (arr!50588 a!3462) #b00000000000000000000000000000000)))))

(assert (= (and d!164461 (not res!1073695)) b!1571423))

(assert (= (and b!1571423 c!145101) b!1571421))

(assert (= (and b!1571423 (not c!145101)) b!1571422))

(assert (= (and b!1571421 res!1073696) b!1571420))

(assert (= (or b!1571420 b!1571422) bm!72365))

(declare-fun m!1445389 () Bool)

(assert (=> b!1571421 m!1445389))

(declare-fun m!1445391 () Bool)

(assert (=> b!1571421 m!1445391))

(declare-fun m!1445393 () Bool)

(assert (=> b!1571421 m!1445393))

(assert (=> b!1571421 m!1445389))

(declare-fun m!1445395 () Bool)

(assert (=> b!1571421 m!1445395))

(declare-fun m!1445397 () Bool)

(assert (=> bm!72365 m!1445397))

(assert (=> b!1571423 m!1445389))

(assert (=> b!1571423 m!1445389))

(declare-fun m!1445399 () Bool)

(assert (=> b!1571423 m!1445399))

(assert (=> b!1571285 d!164461))

(declare-fun d!164467 () Bool)

(assert (=> d!164467 (= (validKeyInArray!0 k0!2731) (and (not (= k0!2731 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2731 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571284 d!164467))

(declare-fun d!164469 () Bool)

(assert (=> d!164469 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134684 d!164469))

(declare-fun d!164473 () Bool)

(assert (=> d!164473 (= (array_inv!39233 a!3462) (bvsge (size!51139 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134684 d!164473))

(check-sat (not b!1571320) (not d!164449) (not b!1571396) (not b!1571421) (not d!164443) (not bm!72365) (not b!1571423))
(check-sat)
