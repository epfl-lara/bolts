; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131416 () Bool)

(assert start!131416)

(declare-fun lt!665300 () (_ BitVec 64))

(declare-fun e!856720 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13500 0))(
  ( (MissingZero!13500 (index!56394 (_ BitVec 32))) (Found!13500 (index!56395 (_ BitVec 32))) (Intermediate!13500 (undefined!14312 Bool) (index!56396 (_ BitVec 32)) (x!138134 (_ BitVec 32))) (Undefined!13500) (MissingVacant!13500 (index!56397 (_ BitVec 32))) )
))
(declare-fun lt!665299 () SeekEntryResult!13500)

(declare-datatypes ((array!102291 0))(
  ( (array!102292 (arr!49351 (Array (_ BitVec 32) (_ BitVec 64))) (size!49902 (_ BitVec 32))) )
))
(declare-fun lt!665305 () array!102291)

(declare-fun b!1540378 () Bool)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102291 (_ BitVec 32)) SeekEntryResult!13500)

(assert (=> b!1540378 (= e!856720 (not (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 lt!665300 lt!665305 mask!2480) lt!665299)))))

(declare-fun lt!665301 () (_ BitVec 32))

(declare-fun lt!665304 () SeekEntryResult!13500)

(assert (=> b!1540378 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665301 vacantIndex!5 lt!665300 lt!665305 mask!2480) lt!665304)))

(declare-fun a!2792 () array!102291)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540378 (= lt!665300 (select (store (arr!49351 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))

(assert (=> b!1540378 (= lt!665305 (array!102292 (store (arr!49351 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49902 a!2792)))))

(declare-datatypes ((Unit!51392 0))(
  ( (Unit!51393) )
))
(declare-fun lt!665302 () Unit!51392)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51392)

(assert (=> b!1540378 (= lt!665302 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665301 vacantIndex!5 mask!2480))))

(declare-fun b!1540379 () Bool)

(declare-fun res!1057211 () Bool)

(declare-fun e!856722 () Bool)

(assert (=> b!1540379 (=> (not res!1057211) (not e!856722))))

(assert (=> b!1540379 (= res!1057211 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49902 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49902 a!2792)) (= (select (arr!49351 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540380 () Bool)

(declare-fun e!856723 () Bool)

(assert (=> b!1540380 (= e!856722 e!856723)))

(declare-fun res!1057213 () Bool)

(assert (=> b!1540380 (=> (not res!1057213) (not e!856723))))

(declare-fun lt!665303 () SeekEntryResult!13500)

(assert (=> b!1540380 (= res!1057213 (and (= lt!665299 lt!665303) (not (= (select (arr!49351 a!2792) index!463) (select (arr!49351 a!2792) j!64)))))))

(assert (=> b!1540380 (= lt!665303 (Found!13500 j!64))))

(assert (=> b!1540380 (= lt!665299 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49351 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540381 () Bool)

(declare-fun res!1057212 () Bool)

(assert (=> b!1540381 (=> (not res!1057212) (not e!856722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540381 (= res!1057212 (validKeyInArray!0 (select (arr!49351 a!2792) j!64)))))

(declare-fun res!1057206 () Bool)

(assert (=> start!131416 (=> (not res!1057206) (not e!856722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131416 (= res!1057206 (validMask!0 mask!2480))))

(assert (=> start!131416 e!856722))

(assert (=> start!131416 true))

(declare-fun array_inv!38296 (array!102291) Bool)

(assert (=> start!131416 (array_inv!38296 a!2792)))

(declare-fun b!1540382 () Bool)

(declare-fun e!856724 () Bool)

(assert (=> b!1540382 (= e!856724 e!856720)))

(declare-fun res!1057210 () Bool)

(assert (=> b!1540382 (=> (not res!1057210) (not e!856720))))

(assert (=> b!1540382 (= res!1057210 (= lt!665304 lt!665303))))

(assert (=> b!1540382 (= lt!665304 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665301 vacantIndex!5 (select (arr!49351 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540383 () Bool)

(declare-fun res!1057215 () Bool)

(assert (=> b!1540383 (=> (not res!1057215) (not e!856722))))

(declare-datatypes ((List!36005 0))(
  ( (Nil!36002) (Cons!36001 (h!37447 (_ BitVec 64)) (t!50706 List!36005)) )
))
(declare-fun arrayNoDuplicates!0 (array!102291 (_ BitVec 32) List!36005) Bool)

(assert (=> b!1540383 (= res!1057215 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!36002))))

(declare-fun b!1540384 () Bool)

(declare-fun res!1057207 () Bool)

(assert (=> b!1540384 (=> (not res!1057207) (not e!856722))))

(assert (=> b!1540384 (= res!1057207 (validKeyInArray!0 (select (arr!49351 a!2792) i!951)))))

(declare-fun b!1540385 () Bool)

(declare-fun res!1057209 () Bool)

(assert (=> b!1540385 (=> (not res!1057209) (not e!856722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102291 (_ BitVec 32)) Bool)

(assert (=> b!1540385 (= res!1057209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540386 () Bool)

(assert (=> b!1540386 (= e!856723 e!856724)))

(declare-fun res!1057208 () Bool)

(assert (=> b!1540386 (=> (not res!1057208) (not e!856724))))

(assert (=> b!1540386 (= res!1057208 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665301 #b00000000000000000000000000000000) (bvslt lt!665301 (size!49902 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540386 (= lt!665301 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540387 () Bool)

(declare-fun res!1057214 () Bool)

(assert (=> b!1540387 (=> (not res!1057214) (not e!856722))))

(assert (=> b!1540387 (= res!1057214 (and (= (size!49902 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49902 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49902 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131416 res!1057206) b!1540387))

(assert (= (and b!1540387 res!1057214) b!1540384))

(assert (= (and b!1540384 res!1057207) b!1540381))

(assert (= (and b!1540381 res!1057212) b!1540385))

(assert (= (and b!1540385 res!1057209) b!1540383))

(assert (= (and b!1540383 res!1057215) b!1540379))

(assert (= (and b!1540379 res!1057211) b!1540380))

(assert (= (and b!1540380 res!1057213) b!1540386))

(assert (= (and b!1540386 res!1057208) b!1540382))

(assert (= (and b!1540382 res!1057210) b!1540378))

(declare-fun m!1422543 () Bool)

(assert (=> b!1540385 m!1422543))

(declare-fun m!1422545 () Bool)

(assert (=> b!1540386 m!1422545))

(declare-fun m!1422547 () Bool)

(assert (=> b!1540380 m!1422547))

(declare-fun m!1422549 () Bool)

(assert (=> b!1540380 m!1422549))

(assert (=> b!1540380 m!1422549))

(declare-fun m!1422551 () Bool)

(assert (=> b!1540380 m!1422551))

(declare-fun m!1422553 () Bool)

(assert (=> b!1540384 m!1422553))

(assert (=> b!1540384 m!1422553))

(declare-fun m!1422555 () Bool)

(assert (=> b!1540384 m!1422555))

(declare-fun m!1422557 () Bool)

(assert (=> b!1540379 m!1422557))

(declare-fun m!1422559 () Bool)

(assert (=> b!1540383 m!1422559))

(declare-fun m!1422561 () Bool)

(assert (=> b!1540378 m!1422561))

(declare-fun m!1422563 () Bool)

(assert (=> b!1540378 m!1422563))

(declare-fun m!1422565 () Bool)

(assert (=> b!1540378 m!1422565))

(declare-fun m!1422567 () Bool)

(assert (=> b!1540378 m!1422567))

(declare-fun m!1422569 () Bool)

(assert (=> b!1540378 m!1422569))

(assert (=> b!1540381 m!1422549))

(assert (=> b!1540381 m!1422549))

(declare-fun m!1422571 () Bool)

(assert (=> b!1540381 m!1422571))

(assert (=> b!1540382 m!1422549))

(assert (=> b!1540382 m!1422549))

(declare-fun m!1422573 () Bool)

(assert (=> b!1540382 m!1422573))

(declare-fun m!1422575 () Bool)

(assert (=> start!131416 m!1422575))

(declare-fun m!1422577 () Bool)

(assert (=> start!131416 m!1422577))

(push 1)

(assert (not b!1540378))

(assert (not b!1540383))

(assert (not start!131416))

(assert (not b!1540380))

(assert (not b!1540382))

(assert (not b!1540384))

(assert (not b!1540386))

(assert (not b!1540385))

(assert (not b!1540381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!160469 () Bool)

(assert (=> d!160469 (= (validKeyInArray!0 (select (arr!49351 a!2792) i!951)) (and (not (= (select (arr!49351 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49351 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1540384 d!160469))

(declare-fun d!160471 () Bool)

(declare-fun lt!665365 () (_ BitVec 32))

(assert (=> d!160471 (and (bvsge lt!665365 #b00000000000000000000000000000000) (bvslt lt!665365 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160471 (= lt!665365 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160471 (validMask!0 mask!2480)))

(assert (=> d!160471 (= (nextIndex!0 index!463 x!510 mask!2480) lt!665365)))

(declare-fun bs!44216 () Bool)

(assert (= bs!44216 d!160471))

(declare-fun m!1422669 () Bool)

(assert (=> bs!44216 m!1422669))

(assert (=> bs!44216 m!1422575))

(assert (=> b!1540386 d!160471))

(declare-fun b!1540526 () Bool)

(declare-fun e!856798 () SeekEntryResult!13500)

(assert (=> b!1540526 (= e!856798 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49351 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540527 () Bool)

(declare-fun e!856797 () SeekEntryResult!13500)

(declare-fun e!856799 () SeekEntryResult!13500)

(assert (=> b!1540527 (= e!856797 e!856799)))

(declare-fun c!141185 () Bool)

(declare-fun lt!665383 () (_ BitVec 64))

(assert (=> b!1540527 (= c!141185 (= lt!665383 (select (arr!49351 a!2792) j!64)))))

(declare-fun b!1540528 () Bool)

(assert (=> b!1540528 (= e!856797 Undefined!13500)))

(declare-fun b!1540529 () Bool)

(assert (=> b!1540529 (= e!856799 (Found!13500 index!463))))

(declare-fun b!1540530 () Bool)

(assert (=> b!1540530 (= e!856798 (MissingVacant!13500 vacantIndex!5))))

(declare-fun b!1540531 () Bool)

(declare-fun c!141183 () Bool)

(assert (=> b!1540531 (= c!141183 (= lt!665383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540531 (= e!856799 e!856798)))

(declare-fun lt!665382 () SeekEntryResult!13500)

(declare-fun d!160475 () Bool)

(assert (=> d!160475 (and (or (is-Undefined!13500 lt!665382) (not (is-Found!13500 lt!665382)) (and (bvsge (index!56395 lt!665382) #b00000000000000000000000000000000) (bvslt (index!56395 lt!665382) (size!49902 a!2792)))) (or (is-Undefined!13500 lt!665382) (is-Found!13500 lt!665382) (not (is-MissingVacant!13500 lt!665382)) (not (= (index!56397 lt!665382) vacantIndex!5)) (and (bvsge (index!56397 lt!665382) #b00000000000000000000000000000000) (bvslt (index!56397 lt!665382) (size!49902 a!2792)))) (or (is-Undefined!13500 lt!665382) (ite (is-Found!13500 lt!665382) (= (select (arr!49351 a!2792) (index!56395 lt!665382)) (select (arr!49351 a!2792) j!64)) (and (is-MissingVacant!13500 lt!665382) (= (index!56397 lt!665382) vacantIndex!5) (= (select (arr!49351 a!2792) (index!56397 lt!665382)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160475 (= lt!665382 e!856797)))

(declare-fun c!141184 () Bool)

(assert (=> d!160475 (= c!141184 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160475 (= lt!665383 (select (arr!49351 a!2792) index!463))))

(assert (=> d!160475 (validMask!0 mask!2480)))

(assert (=> d!160475 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49351 a!2792) j!64) a!2792 mask!2480) lt!665382)))

(assert (= (and d!160475 c!141184) b!1540528))

(assert (= (and d!160475 (not c!141184)) b!1540527))

(assert (= (and b!1540527 c!141185) b!1540529))

(assert (= (and b!1540527 (not c!141185)) b!1540531))

(assert (= (and b!1540531 c!141183) b!1540530))

(assert (= (and b!1540531 (not c!141183)) b!1540526))

(assert (=> b!1540526 m!1422545))

(assert (=> b!1540526 m!1422545))

(assert (=> b!1540526 m!1422549))

(declare-fun m!1422707 () Bool)

(assert (=> b!1540526 m!1422707))

(declare-fun m!1422709 () Bool)

(assert (=> d!160475 m!1422709))

(declare-fun m!1422711 () Bool)

(assert (=> d!160475 m!1422711))

(assert (=> d!160475 m!1422547))

(assert (=> d!160475 m!1422575))

(assert (=> b!1540380 d!160475))

(declare-fun b!1540547 () Bool)

(declare-fun e!856817 () Bool)

(declare-fun e!856815 () Bool)

(assert (=> b!1540547 (= e!856817 e!856815)))

(declare-fun c!141188 () Bool)

(assert (=> b!1540547 (= c!141188 (validKeyInArray!0 (select (arr!49351 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1540548 () Bool)

(declare-fun e!856816 () Bool)

(assert (=> b!1540548 (= e!856815 e!856816)))

(declare-fun lt!665397 () (_ BitVec 64))

(assert (=> b!1540548 (= lt!665397 (select (arr!49351 a!2792) #b00000000000000000000000000000000))))

(declare-fun lt!665396 () Unit!51392)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102291 (_ BitVec 64) (_ BitVec 32)) Unit!51392)

(assert (=> b!1540548 (= lt!665396 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665397 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1540548 (arrayContainsKey!0 a!2792 lt!665397 #b00000000000000000000000000000000)))

(declare-fun lt!665398 () Unit!51392)

(assert (=> b!1540548 (= lt!665398 lt!665396)))

(declare-fun res!1057295 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102291 (_ BitVec 32)) SeekEntryResult!13500)

(assert (=> b!1540548 (= res!1057295 (= (seekEntryOrOpen!0 (select (arr!49351 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13500 #b00000000000000000000000000000000)))))

(assert (=> b!1540548 (=> (not res!1057295) (not e!856816))))

(declare-fun bm!68652 () Bool)

(declare-fun call!68655 () Bool)

(assert (=> bm!68652 (= call!68655 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1540549 () Bool)

(assert (=> b!1540549 (= e!856816 call!68655)))

(declare-fun d!160489 () Bool)

(declare-fun res!1057296 () Bool)

(assert (=> d!160489 (=> res!1057296 e!856817)))

(assert (=> d!160489 (= res!1057296 (bvsge #b00000000000000000000000000000000 (size!49902 a!2792)))))

(assert (=> d!160489 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856817)))

(declare-fun b!1540550 () Bool)

(assert (=> b!1540550 (= e!856815 call!68655)))

(assert (= (and d!160489 (not res!1057296)) b!1540547))

(assert (= (and b!1540547 c!141188) b!1540548))

(assert (= (and b!1540547 (not c!141188)) b!1540550))

(assert (= (and b!1540548 res!1057295) b!1540549))

(assert (= (or b!1540549 b!1540550) bm!68652))

(declare-fun m!1422719 () Bool)

(assert (=> b!1540547 m!1422719))

(assert (=> b!1540547 m!1422719))

(declare-fun m!1422721 () Bool)

(assert (=> b!1540547 m!1422721))

(assert (=> b!1540548 m!1422719))

(declare-fun m!1422723 () Bool)

(assert (=> b!1540548 m!1422723))

(declare-fun m!1422725 () Bool)

(assert (=> b!1540548 m!1422725))

(assert (=> b!1540548 m!1422719))

(declare-fun m!1422727 () Bool)

(assert (=> b!1540548 m!1422727))

(declare-fun m!1422729 () Bool)

(assert (=> bm!68652 m!1422729))

(assert (=> b!1540385 d!160489))

(declare-fun e!856821 () SeekEntryResult!13500)

(declare-fun b!1540557 () Bool)

(assert (=> b!1540557 (= e!856821 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510 #b00000000000000000000000000000001) (nextIndex!0 lt!665301 (bvadd #b00000000000000000000000000000001 x!510) mask!2480) vacantIndex!5 (select (arr!49351 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540558 () Bool)

(declare-fun e!856820 () SeekEntryResult!13500)

(declare-fun e!856822 () SeekEntryResult!13500)

(assert (=> b!1540558 (= e!856820 e!856822)))

(declare-fun lt!665400 () (_ BitVec 64))

(declare-fun c!141193 () Bool)

(assert (=> b!1540558 (= c!141193 (= lt!665400 (select (arr!49351 a!2792) j!64)))))

(declare-fun b!1540559 () Bool)

(assert (=> b!1540559 (= e!856820 Undefined!13500)))

(declare-fun b!1540560 () Bool)

(assert (=> b!1540560 (= e!856822 (Found!13500 lt!665301))))

(declare-fun b!1540561 () Bool)

(assert (=> b!1540561 (= e!856821 (MissingVacant!13500 vacantIndex!5))))

(declare-fun b!1540562 () Bool)

(declare-fun c!141191 () Bool)

(assert (=> b!1540562 (= c!141191 (= lt!665400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540562 (= e!856822 e!856821)))

(declare-fun lt!665399 () SeekEntryResult!13500)

(declare-fun d!160497 () Bool)

(assert (=> d!160497 (and (or (is-Undefined!13500 lt!665399) (not (is-Found!13500 lt!665399)) (and (bvsge (index!56395 lt!665399) #b00000000000000000000000000000000) (bvslt (index!56395 lt!665399) (size!49902 a!2792)))) (or (is-Undefined!13500 lt!665399) (is-Found!13500 lt!665399) (not (is-MissingVacant!13500 lt!665399)) (not (= (index!56397 lt!665399) vacantIndex!5)) (and (bvsge (index!56397 lt!665399) #b00000000000000000000000000000000) (bvslt (index!56397 lt!665399) (size!49902 a!2792)))) (or (is-Undefined!13500 lt!665399) (ite (is-Found!13500 lt!665399) (= (select (arr!49351 a!2792) (index!56395 lt!665399)) (select (arr!49351 a!2792) j!64)) (and (is-MissingVacant!13500 lt!665399) (= (index!56397 lt!665399) vacantIndex!5) (= (select (arr!49351 a!2792) (index!56397 lt!665399)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160497 (= lt!665399 e!856820)))

(declare-fun c!141192 () Bool)

(assert (=> d!160497 (= c!141192 (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110))))

(assert (=> d!160497 (= lt!665400 (select (arr!49351 a!2792) lt!665301))))

(assert (=> d!160497 (validMask!0 mask!2480)))

(assert (=> d!160497 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665301 vacantIndex!5 (select (arr!49351 a!2792) j!64) a!2792 mask!2480) lt!665399)))

(assert (= (and d!160497 c!141192) b!1540559))

(assert (= (and d!160497 (not c!141192)) b!1540558))

(assert (= (and b!1540558 c!141193) b!1540560))

(assert (= (and b!1540558 (not c!141193)) b!1540562))

(assert (= (and b!1540562 c!141191) b!1540561))

(assert (= (and b!1540562 (not c!141191)) b!1540557))

(declare-fun m!1422731 () Bool)

(assert (=> b!1540557 m!1422731))

(assert (=> b!1540557 m!1422731))

(assert (=> b!1540557 m!1422549))

(declare-fun m!1422733 () Bool)

(assert (=> b!1540557 m!1422733))

(declare-fun m!1422735 () Bool)

(assert (=> d!160497 m!1422735))

(declare-fun m!1422737 () Bool)

(assert (=> d!160497 m!1422737))

(declare-fun m!1422739 () Bool)

(assert (=> d!160497 m!1422739))

(assert (=> d!160497 m!1422575))

(assert (=> b!1540382 d!160497))

(declare-fun d!160499 () Bool)

(assert (=> d!160499 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131416 d!160499))

(declare-fun d!160507 () Bool)

(assert (=> d!160507 (= (array_inv!38296 a!2792) (bvsge (size!49902 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131416 d!160507))

(declare-fun d!160509 () Bool)

(assert (=> d!160509 (= (validKeyInArray!0 (select (arr!49351 a!2792) j!64)) (and (not (= (select (arr!49351 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49351 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1540381 d!160509))

(declare-fun b!1540598 () Bool)

(declare-fun e!856849 () SeekEntryResult!13500)

(assert (=> b!1540598 (= e!856849 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 lt!665300 lt!665305 mask!2480))))

(declare-fun b!1540599 () Bool)

(declare-fun e!856848 () SeekEntryResult!13500)

(declare-fun e!856850 () SeekEntryResult!13500)

(assert (=> b!1540599 (= e!856848 e!856850)))

(declare-fun c!141206 () Bool)

(declare-fun lt!665409 () (_ BitVec 64))

(assert (=> b!1540599 (= c!141206 (= lt!665409 lt!665300))))

(declare-fun b!1540600 () Bool)

(assert (=> b!1540600 (= e!856848 Undefined!13500)))

(declare-fun b!1540601 () Bool)

(assert (=> b!1540601 (= e!856850 (Found!13500 index!463))))

(declare-fun b!1540602 () Bool)

(assert (=> b!1540602 (= e!856849 (MissingVacant!13500 vacantIndex!5))))

(declare-fun b!1540603 () Bool)

(declare-fun c!141204 () Bool)

(assert (=> b!1540603 (= c!141204 (= lt!665409 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540603 (= e!856850 e!856849)))

(declare-fun lt!665408 () SeekEntryResult!13500)

(declare-fun d!160511 () Bool)

(assert (=> d!160511 (and (or (is-Undefined!13500 lt!665408) (not (is-Found!13500 lt!665408)) (and (bvsge (index!56395 lt!665408) #b00000000000000000000000000000000) (bvslt (index!56395 lt!665408) (size!49902 lt!665305)))) (or (is-Undefined!13500 lt!665408) (is-Found!13500 lt!665408) (not (is-MissingVacant!13500 lt!665408)) (not (= (index!56397 lt!665408) vacantIndex!5)) (and (bvsge (index!56397 lt!665408) #b00000000000000000000000000000000) (bvslt (index!56397 lt!665408) (size!49902 lt!665305)))) (or (is-Undefined!13500 lt!665408) (ite (is-Found!13500 lt!665408) (= (select (arr!49351 lt!665305) (index!56395 lt!665408)) lt!665300) (and (is-MissingVacant!13500 lt!665408) (= (index!56397 lt!665408) vacantIndex!5) (= (select (arr!49351 lt!665305) (index!56397 lt!665408)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160511 (= lt!665408 e!856848)))

(declare-fun c!141205 () Bool)

(assert (=> d!160511 (= c!141205 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160511 (= lt!665409 (select (arr!49351 lt!665305) index!463))))

(assert (=> d!160511 (validMask!0 mask!2480)))

(assert (=> d!160511 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 lt!665300 lt!665305 mask!2480) lt!665408)))

(assert (= (and d!160511 c!141205) b!1540600))

(assert (= (and d!160511 (not c!141205)) b!1540599))

(assert (= (and b!1540599 c!141206) b!1540601))

(assert (= (and b!1540599 (not c!141206)) b!1540603))

(assert (= (and b!1540603 c!141204) b!1540602))

(assert (= (and b!1540603 (not c!141204)) b!1540598))

(assert (=> b!1540598 m!1422545))

(assert (=> b!1540598 m!1422545))

(declare-fun m!1422771 () Bool)

(assert (=> b!1540598 m!1422771))

(declare-fun m!1422773 () Bool)

(assert (=> d!160511 m!1422773))

(declare-fun m!1422775 () Bool)

(assert (=> d!160511 m!1422775))

(declare-fun m!1422777 () Bool)

(assert (=> d!160511 m!1422777))

(assert (=> d!160511 m!1422575))

(assert (=> b!1540378 d!160511))

(declare-fun b!1540604 () Bool)

(declare-fun e!856852 () SeekEntryResult!13500)

(assert (=> b!1540604 (= e!856852 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510 #b00000000000000000000000000000001) (nextIndex!0 lt!665301 (bvadd #b00000000000000000000000000000001 x!510) mask!2480) vacantIndex!5 lt!665300 lt!665305 mask!2480))))

(declare-fun b!1540605 () Bool)

(declare-fun e!856851 () SeekEntryResult!13500)

(declare-fun e!856853 () SeekEntryResult!13500)

(assert (=> b!1540605 (= e!856851 e!856853)))

(declare-fun c!141209 () Bool)

(declare-fun lt!665411 () (_ BitVec 64))

(assert (=> b!1540605 (= c!141209 (= lt!665411 lt!665300))))

(declare-fun b!1540606 () Bool)

(assert (=> b!1540606 (= e!856851 Undefined!13500)))

(declare-fun b!1540607 () Bool)

(assert (=> b!1540607 (= e!856853 (Found!13500 lt!665301))))

(declare-fun b!1540608 () Bool)

