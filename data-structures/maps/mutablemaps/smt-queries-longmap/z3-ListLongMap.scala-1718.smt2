; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31658 () Bool)

(assert start!31658)

(declare-fun b!316360 () Bool)

(declare-fun e!196778 () Bool)

(declare-fun e!196777 () Bool)

(assert (=> b!316360 (= e!196778 e!196777)))

(declare-fun res!171455 () Bool)

(assert (=> b!316360 (=> (not res!171455) (not e!196777))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2782 0))(
  ( (MissingZero!2782 (index!13304 (_ BitVec 32))) (Found!2782 (index!13305 (_ BitVec 32))) (Intermediate!2782 (undefined!3594 Bool) (index!13306 (_ BitVec 32)) (x!31520 (_ BitVec 32))) (Undefined!2782) (MissingVacant!2782 (index!13307 (_ BitVec 32))) )
))
(declare-fun lt!154573 () SeekEntryResult!2782)

(declare-datatypes ((array!16129 0))(
  ( (array!16130 (arr!7631 (Array (_ BitVec 32) (_ BitVec 64))) (size!7983 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16129)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16129 (_ BitVec 32)) SeekEntryResult!2782)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316360 (= res!171455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154573))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316360 (= lt!154573 (Intermediate!2782 false resIndex!52 resX!52))))

(declare-fun b!316361 () Bool)

(declare-fun res!171457 () Bool)

(assert (=> b!316361 (=> (not res!171457) (not e!196778))))

(declare-fun arrayContainsKey!0 (array!16129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316361 (= res!171457 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316362 () Bool)

(declare-fun res!171453 () Bool)

(assert (=> b!316362 (=> (not res!171453) (not e!196778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316362 (= res!171453 (validKeyInArray!0 k0!2441))))

(declare-fun b!316363 () Bool)

(declare-fun res!171456 () Bool)

(assert (=> b!316363 (=> (not res!171456) (not e!196778))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16129 (_ BitVec 32)) SeekEntryResult!2782)

(assert (=> b!316363 (= res!171456 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2782 i!1240)))))

(declare-fun b!316364 () Bool)

(declare-fun res!171451 () Bool)

(assert (=> b!316364 (=> (not res!171451) (not e!196777))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!316364 (= res!171451 (and (= (select (arr!7631 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7983 a!3293))))))

(declare-fun b!316365 () Bool)

(declare-fun res!171454 () Bool)

(assert (=> b!316365 (=> (not res!171454) (not e!196778))))

(assert (=> b!316365 (= res!171454 (and (= (size!7983 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7983 a!3293))))))

(declare-fun b!316366 () Bool)

(declare-fun e!196779 () Bool)

(assert (=> b!316366 (= e!196777 e!196779)))

(declare-fun res!171452 () Bool)

(assert (=> b!316366 (=> (not res!171452) (not e!196779))))

(declare-fun lt!154574 () SeekEntryResult!2782)

(assert (=> b!316366 (= res!171452 (and (= lt!154574 lt!154573) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7631 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316366 (= lt!154574 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!171458 () Bool)

(assert (=> start!31658 (=> (not res!171458) (not e!196778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31658 (= res!171458 (validMask!0 mask!3709))))

(assert (=> start!31658 e!196778))

(declare-fun array_inv!5585 (array!16129) Bool)

(assert (=> start!31658 (array_inv!5585 a!3293)))

(assert (=> start!31658 true))

(declare-fun b!316367 () Bool)

(declare-fun res!171459 () Bool)

(assert (=> b!316367 (=> (not res!171459) (not e!196778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16129 (_ BitVec 32)) Bool)

(assert (=> b!316367 (= res!171459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316368 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316368 (= e!196779 (not (= lt!154574 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))))

(assert (= (and start!31658 res!171458) b!316365))

(assert (= (and b!316365 res!171454) b!316362))

(assert (= (and b!316362 res!171453) b!316361))

(assert (= (and b!316361 res!171457) b!316363))

(assert (= (and b!316363 res!171456) b!316367))

(assert (= (and b!316367 res!171459) b!316360))

(assert (= (and b!316360 res!171455) b!316364))

(assert (= (and b!316364 res!171451) b!316366))

(assert (= (and b!316366 res!171452) b!316368))

(declare-fun m!325257 () Bool)

(assert (=> b!316361 m!325257))

(declare-fun m!325259 () Bool)

(assert (=> b!316366 m!325259))

(declare-fun m!325261 () Bool)

(assert (=> b!316366 m!325261))

(declare-fun m!325263 () Bool)

(assert (=> b!316363 m!325263))

(declare-fun m!325265 () Bool)

(assert (=> b!316364 m!325265))

(declare-fun m!325267 () Bool)

(assert (=> b!316368 m!325267))

(assert (=> b!316368 m!325267))

(declare-fun m!325269 () Bool)

(assert (=> b!316368 m!325269))

(declare-fun m!325271 () Bool)

(assert (=> b!316367 m!325271))

(declare-fun m!325273 () Bool)

(assert (=> b!316360 m!325273))

(assert (=> b!316360 m!325273))

(declare-fun m!325275 () Bool)

(assert (=> b!316360 m!325275))

(declare-fun m!325277 () Bool)

(assert (=> b!316362 m!325277))

(declare-fun m!325279 () Bool)

(assert (=> start!31658 m!325279))

(declare-fun m!325281 () Bool)

(assert (=> start!31658 m!325281))

(check-sat (not b!316363) (not b!316360) (not b!316366) (not b!316368) (not b!316361) (not b!316362) (not start!31658) (not b!316367))
(check-sat)
(get-model)

(declare-fun b!316420 () Bool)

(declare-fun e!196809 () SeekEntryResult!2782)

(declare-fun e!196810 () SeekEntryResult!2782)

(assert (=> b!316420 (= e!196809 e!196810)))

(declare-fun lt!154596 () (_ BitVec 64))

(declare-fun lt!154598 () SeekEntryResult!2782)

(assert (=> b!316420 (= lt!154596 (select (arr!7631 a!3293) (index!13306 lt!154598)))))

(declare-fun c!50083 () Bool)

(assert (=> b!316420 (= c!50083 (= lt!154596 k0!2441))))

(declare-fun d!68913 () Bool)

(declare-fun lt!154597 () SeekEntryResult!2782)

(get-info :version)

(assert (=> d!68913 (and (or ((_ is Undefined!2782) lt!154597) (not ((_ is Found!2782) lt!154597)) (and (bvsge (index!13305 lt!154597) #b00000000000000000000000000000000) (bvslt (index!13305 lt!154597) (size!7983 a!3293)))) (or ((_ is Undefined!2782) lt!154597) ((_ is Found!2782) lt!154597) (not ((_ is MissingZero!2782) lt!154597)) (and (bvsge (index!13304 lt!154597) #b00000000000000000000000000000000) (bvslt (index!13304 lt!154597) (size!7983 a!3293)))) (or ((_ is Undefined!2782) lt!154597) ((_ is Found!2782) lt!154597) ((_ is MissingZero!2782) lt!154597) (not ((_ is MissingVacant!2782) lt!154597)) (and (bvsge (index!13307 lt!154597) #b00000000000000000000000000000000) (bvslt (index!13307 lt!154597) (size!7983 a!3293)))) (or ((_ is Undefined!2782) lt!154597) (ite ((_ is Found!2782) lt!154597) (= (select (arr!7631 a!3293) (index!13305 lt!154597)) k0!2441) (ite ((_ is MissingZero!2782) lt!154597) (= (select (arr!7631 a!3293) (index!13304 lt!154597)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2782) lt!154597) (= (select (arr!7631 a!3293) (index!13307 lt!154597)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68913 (= lt!154597 e!196809)))

(declare-fun c!50084 () Bool)

(assert (=> d!68913 (= c!50084 (and ((_ is Intermediate!2782) lt!154598) (undefined!3594 lt!154598)))))

(assert (=> d!68913 (= lt!154598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68913 (validMask!0 mask!3709)))

(assert (=> d!68913 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!154597)))

(declare-fun b!316421 () Bool)

(declare-fun e!196808 () SeekEntryResult!2782)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16129 (_ BitVec 32)) SeekEntryResult!2782)

(assert (=> b!316421 (= e!196808 (seekKeyOrZeroReturnVacant!0 (x!31520 lt!154598) (index!13306 lt!154598) (index!13306 lt!154598) k0!2441 a!3293 mask!3709))))

(declare-fun b!316422 () Bool)

(assert (=> b!316422 (= e!196810 (Found!2782 (index!13306 lt!154598)))))

(declare-fun b!316423 () Bool)

(declare-fun c!50082 () Bool)

(assert (=> b!316423 (= c!50082 (= lt!154596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316423 (= e!196810 e!196808)))

(declare-fun b!316424 () Bool)

(assert (=> b!316424 (= e!196808 (MissingZero!2782 (index!13306 lt!154598)))))

(declare-fun b!316425 () Bool)

(assert (=> b!316425 (= e!196809 Undefined!2782)))

(assert (= (and d!68913 c!50084) b!316425))

(assert (= (and d!68913 (not c!50084)) b!316420))

(assert (= (and b!316420 c!50083) b!316422))

(assert (= (and b!316420 (not c!50083)) b!316423))

(assert (= (and b!316423 c!50082) b!316424))

(assert (= (and b!316423 (not c!50082)) b!316421))

(declare-fun m!325321 () Bool)

(assert (=> b!316420 m!325321))

(declare-fun m!325323 () Bool)

(assert (=> d!68913 m!325323))

(declare-fun m!325325 () Bool)

(assert (=> d!68913 m!325325))

(assert (=> d!68913 m!325279))

(assert (=> d!68913 m!325273))

(assert (=> d!68913 m!325275))

(assert (=> d!68913 m!325273))

(declare-fun m!325327 () Bool)

(assert (=> d!68913 m!325327))

(declare-fun m!325329 () Bool)

(assert (=> b!316421 m!325329))

(assert (=> b!316363 d!68913))

(declare-fun b!316452 () Bool)

(declare-fun e!196828 () Bool)

(declare-fun call!26009 () Bool)

(assert (=> b!316452 (= e!196828 call!26009)))

(declare-fun b!316453 () Bool)

(declare-fun e!196827 () Bool)

(assert (=> b!316453 (= e!196827 call!26009)))

(declare-fun bm!26006 () Bool)

(assert (=> bm!26006 (= call!26009 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68921 () Bool)

(declare-fun res!171498 () Bool)

(declare-fun e!196826 () Bool)

(assert (=> d!68921 (=> res!171498 e!196826)))

(assert (=> d!68921 (= res!171498 (bvsge #b00000000000000000000000000000000 (size!7983 a!3293)))))

(assert (=> d!68921 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196826)))

(declare-fun b!316454 () Bool)

(assert (=> b!316454 (= e!196826 e!196828)))

(declare-fun c!50096 () Bool)

(assert (=> b!316454 (= c!50096 (validKeyInArray!0 (select (arr!7631 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!316455 () Bool)

(assert (=> b!316455 (= e!196828 e!196827)))

(declare-fun lt!154616 () (_ BitVec 64))

(assert (=> b!316455 (= lt!154616 (select (arr!7631 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9775 0))(
  ( (Unit!9777) )
))
(declare-fun lt!154615 () Unit!9775)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16129 (_ BitVec 64) (_ BitVec 32)) Unit!9775)

(assert (=> b!316455 (= lt!154615 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154616 #b00000000000000000000000000000000))))

(assert (=> b!316455 (arrayContainsKey!0 a!3293 lt!154616 #b00000000000000000000000000000000)))

(declare-fun lt!154614 () Unit!9775)

(assert (=> b!316455 (= lt!154614 lt!154615)))

(declare-fun res!171497 () Bool)

(assert (=> b!316455 (= res!171497 (= (seekEntryOrOpen!0 (select (arr!7631 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2782 #b00000000000000000000000000000000)))))

(assert (=> b!316455 (=> (not res!171497) (not e!196827))))

(assert (= (and d!68921 (not res!171498)) b!316454))

(assert (= (and b!316454 c!50096) b!316455))

(assert (= (and b!316454 (not c!50096)) b!316452))

(assert (= (and b!316455 res!171497) b!316453))

(assert (= (or b!316453 b!316452) bm!26006))

(declare-fun m!325331 () Bool)

(assert (=> bm!26006 m!325331))

(declare-fun m!325335 () Bool)

(assert (=> b!316454 m!325335))

(assert (=> b!316454 m!325335))

(declare-fun m!325337 () Bool)

(assert (=> b!316454 m!325337))

(assert (=> b!316455 m!325335))

(declare-fun m!325343 () Bool)

(assert (=> b!316455 m!325343))

(declare-fun m!325347 () Bool)

(assert (=> b!316455 m!325347))

(assert (=> b!316455 m!325335))

(declare-fun m!325351 () Bool)

(assert (=> b!316455 m!325351))

(assert (=> b!316367 d!68921))

(declare-fun d!68925 () Bool)

(assert (=> d!68925 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!316362 d!68925))

(declare-fun b!316546 () Bool)

(declare-fun e!196882 () Bool)

(declare-fun e!196880 () Bool)

(assert (=> b!316546 (= e!196882 e!196880)))

(declare-fun res!171531 () Bool)

(declare-fun lt!154647 () SeekEntryResult!2782)

(assert (=> b!316546 (= res!171531 (and ((_ is Intermediate!2782) lt!154647) (not (undefined!3594 lt!154647)) (bvslt (x!31520 lt!154647) #b01111111111111111111111111111110) (bvsge (x!31520 lt!154647) #b00000000000000000000000000000000) (bvsge (x!31520 lt!154647) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316546 (=> (not res!171531) (not e!196880))))

(declare-fun b!316547 () Bool)

(assert (=> b!316547 (and (bvsge (index!13306 lt!154647) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154647) (size!7983 a!3293)))))

(declare-fun res!171532 () Bool)

(assert (=> b!316547 (= res!171532 (= (select (arr!7631 a!3293) (index!13306 lt!154647)) k0!2441))))

(declare-fun e!196881 () Bool)

(assert (=> b!316547 (=> res!171532 e!196881)))

(assert (=> b!316547 (= e!196880 e!196881)))

(declare-fun b!316548 () Bool)

(declare-fun e!196879 () SeekEntryResult!2782)

(assert (=> b!316548 (= e!196879 (Intermediate!2782 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316549 () Bool)

(declare-fun e!196883 () SeekEntryResult!2782)

(assert (=> b!316549 (= e!196883 (Intermediate!2782 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316550 () Bool)

(assert (=> b!316550 (and (bvsge (index!13306 lt!154647) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154647) (size!7983 a!3293)))))

(assert (=> b!316550 (= e!196881 (= (select (arr!7631 a!3293) (index!13306 lt!154647)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316551 () Bool)

(assert (=> b!316551 (and (bvsge (index!13306 lt!154647) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154647) (size!7983 a!3293)))))

(declare-fun res!171530 () Bool)

(assert (=> b!316551 (= res!171530 (= (select (arr!7631 a!3293) (index!13306 lt!154647)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316551 (=> res!171530 e!196881)))

(declare-fun b!316552 () Bool)

(assert (=> b!316552 (= e!196882 (bvsge (x!31520 lt!154647) #b01111111111111111111111111111110))))

(declare-fun d!68927 () Bool)

(assert (=> d!68927 e!196882))

(declare-fun c!50127 () Bool)

(assert (=> d!68927 (= c!50127 (and ((_ is Intermediate!2782) lt!154647) (undefined!3594 lt!154647)))))

(assert (=> d!68927 (= lt!154647 e!196879)))

(declare-fun c!50129 () Bool)

(assert (=> d!68927 (= c!50129 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154646 () (_ BitVec 64))

(assert (=> d!68927 (= lt!154646 (select (arr!7631 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68927 (validMask!0 mask!3709)))

(assert (=> d!68927 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709) lt!154647)))

(declare-fun b!316553 () Bool)

(assert (=> b!316553 (= e!196883 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316554 () Bool)

(assert (=> b!316554 (= e!196879 e!196883)))

(declare-fun c!50128 () Bool)

(assert (=> b!316554 (= c!50128 (or (= lt!154646 k0!2441) (= (bvadd lt!154646 lt!154646) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68927 c!50129) b!316548))

(assert (= (and d!68927 (not c!50129)) b!316554))

(assert (= (and b!316554 c!50128) b!316549))

(assert (= (and b!316554 (not c!50128)) b!316553))

(assert (= (and d!68927 c!50127) b!316552))

(assert (= (and d!68927 (not c!50127)) b!316546))

(assert (= (and b!316546 res!171531) b!316547))

(assert (= (and b!316547 (not res!171532)) b!316551))

(assert (= (and b!316551 (not res!171530)) b!316550))

(declare-fun m!325383 () Bool)

(assert (=> b!316547 m!325383))

(assert (=> b!316550 m!325383))

(assert (=> b!316551 m!325383))

(assert (=> b!316553 m!325267))

(declare-fun m!325385 () Bool)

(assert (=> b!316553 m!325385))

(assert (=> b!316553 m!325385))

(declare-fun m!325387 () Bool)

(assert (=> b!316553 m!325387))

(assert (=> d!68927 m!325267))

(declare-fun m!325389 () Bool)

(assert (=> d!68927 m!325389))

(assert (=> d!68927 m!325279))

(assert (=> b!316368 d!68927))

(declare-fun d!68943 () Bool)

(declare-fun lt!154655 () (_ BitVec 32))

(assert (=> d!68943 (and (bvsge lt!154655 #b00000000000000000000000000000000) (bvslt lt!154655 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68943 (= lt!154655 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68943 (validMask!0 mask!3709)))

(assert (=> d!68943 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154655)))

(declare-fun bs!11049 () Bool)

(assert (= bs!11049 d!68943))

(declare-fun m!325395 () Bool)

(assert (=> bs!11049 m!325395))

(assert (=> bs!11049 m!325279))

(assert (=> b!316368 d!68943))

(declare-fun b!316564 () Bool)

(declare-fun e!196892 () Bool)

(declare-fun e!196890 () Bool)

(assert (=> b!316564 (= e!196892 e!196890)))

(declare-fun res!171537 () Bool)

(declare-fun lt!154657 () SeekEntryResult!2782)

(assert (=> b!316564 (= res!171537 (and ((_ is Intermediate!2782) lt!154657) (not (undefined!3594 lt!154657)) (bvslt (x!31520 lt!154657) #b01111111111111111111111111111110) (bvsge (x!31520 lt!154657) #b00000000000000000000000000000000) (bvsge (x!31520 lt!154657) x!1427)))))

(assert (=> b!316564 (=> (not res!171537) (not e!196890))))

(declare-fun b!316565 () Bool)

(assert (=> b!316565 (and (bvsge (index!13306 lt!154657) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154657) (size!7983 a!3293)))))

(declare-fun res!171538 () Bool)

(assert (=> b!316565 (= res!171538 (= (select (arr!7631 a!3293) (index!13306 lt!154657)) k0!2441))))

(declare-fun e!196891 () Bool)

(assert (=> b!316565 (=> res!171538 e!196891)))

(assert (=> b!316565 (= e!196890 e!196891)))

(declare-fun b!316566 () Bool)

(declare-fun e!196889 () SeekEntryResult!2782)

(assert (=> b!316566 (= e!196889 (Intermediate!2782 true index!1781 x!1427))))

(declare-fun b!316567 () Bool)

(declare-fun e!196893 () SeekEntryResult!2782)

(assert (=> b!316567 (= e!196893 (Intermediate!2782 false index!1781 x!1427))))

(declare-fun b!316568 () Bool)

(assert (=> b!316568 (and (bvsge (index!13306 lt!154657) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154657) (size!7983 a!3293)))))

(assert (=> b!316568 (= e!196891 (= (select (arr!7631 a!3293) (index!13306 lt!154657)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316569 () Bool)

(assert (=> b!316569 (and (bvsge (index!13306 lt!154657) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154657) (size!7983 a!3293)))))

(declare-fun res!171536 () Bool)

(assert (=> b!316569 (= res!171536 (= (select (arr!7631 a!3293) (index!13306 lt!154657)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316569 (=> res!171536 e!196891)))

(declare-fun b!316570 () Bool)

(assert (=> b!316570 (= e!196892 (bvsge (x!31520 lt!154657) #b01111111111111111111111111111110))))

(declare-fun d!68947 () Bool)

(assert (=> d!68947 e!196892))

(declare-fun c!50133 () Bool)

(assert (=> d!68947 (= c!50133 (and ((_ is Intermediate!2782) lt!154657) (undefined!3594 lt!154657)))))

(assert (=> d!68947 (= lt!154657 e!196889)))

(declare-fun c!50135 () Bool)

(assert (=> d!68947 (= c!50135 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154656 () (_ BitVec 64))

(assert (=> d!68947 (= lt!154656 (select (arr!7631 a!3293) index!1781))))

(assert (=> d!68947 (validMask!0 mask!3709)))

(assert (=> d!68947 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154657)))

(declare-fun b!316571 () Bool)

(assert (=> b!316571 (= e!196893 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316572 () Bool)

(assert (=> b!316572 (= e!196889 e!196893)))

(declare-fun c!50134 () Bool)

(assert (=> b!316572 (= c!50134 (or (= lt!154656 k0!2441) (= (bvadd lt!154656 lt!154656) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68947 c!50135) b!316566))

(assert (= (and d!68947 (not c!50135)) b!316572))

(assert (= (and b!316572 c!50134) b!316567))

(assert (= (and b!316572 (not c!50134)) b!316571))

(assert (= (and d!68947 c!50133) b!316570))

(assert (= (and d!68947 (not c!50133)) b!316564))

(assert (= (and b!316564 res!171537) b!316565))

(assert (= (and b!316565 (not res!171538)) b!316569))

(assert (= (and b!316569 (not res!171536)) b!316568))

(declare-fun m!325403 () Bool)

(assert (=> b!316565 m!325403))

(assert (=> b!316568 m!325403))

(assert (=> b!316569 m!325403))

(assert (=> b!316571 m!325267))

(assert (=> b!316571 m!325267))

(declare-fun m!325405 () Bool)

(assert (=> b!316571 m!325405))

(assert (=> d!68947 m!325259))

(assert (=> d!68947 m!325279))

(assert (=> b!316366 d!68947))

(declare-fun d!68951 () Bool)

(declare-fun res!171544 () Bool)

(declare-fun e!196898 () Bool)

(assert (=> d!68951 (=> res!171544 e!196898)))

(assert (=> d!68951 (= res!171544 (= (select (arr!7631 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68951 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!196898)))

(declare-fun b!316577 () Bool)

(declare-fun e!196899 () Bool)

(assert (=> b!316577 (= e!196898 e!196899)))

(declare-fun res!171545 () Bool)

(assert (=> b!316577 (=> (not res!171545) (not e!196899))))

(assert (=> b!316577 (= res!171545 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7983 a!3293)))))

(declare-fun b!316578 () Bool)

(assert (=> b!316578 (= e!196899 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68951 (not res!171544)) b!316577))

(assert (= (and b!316577 res!171545) b!316578))

(assert (=> d!68951 m!325335))

(declare-fun m!325407 () Bool)

(assert (=> b!316578 m!325407))

(assert (=> b!316361 d!68951))

(declare-fun b!316579 () Bool)

(declare-fun e!196903 () Bool)

(declare-fun e!196901 () Bool)

(assert (=> b!316579 (= e!196903 e!196901)))

(declare-fun res!171547 () Bool)

(declare-fun lt!154659 () SeekEntryResult!2782)

(assert (=> b!316579 (= res!171547 (and ((_ is Intermediate!2782) lt!154659) (not (undefined!3594 lt!154659)) (bvslt (x!31520 lt!154659) #b01111111111111111111111111111110) (bvsge (x!31520 lt!154659) #b00000000000000000000000000000000) (bvsge (x!31520 lt!154659) #b00000000000000000000000000000000)))))

(assert (=> b!316579 (=> (not res!171547) (not e!196901))))

(declare-fun b!316580 () Bool)

(assert (=> b!316580 (and (bvsge (index!13306 lt!154659) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154659) (size!7983 a!3293)))))

(declare-fun res!171548 () Bool)

(assert (=> b!316580 (= res!171548 (= (select (arr!7631 a!3293) (index!13306 lt!154659)) k0!2441))))

(declare-fun e!196902 () Bool)

(assert (=> b!316580 (=> res!171548 e!196902)))

(assert (=> b!316580 (= e!196901 e!196902)))

(declare-fun b!316581 () Bool)

(declare-fun e!196900 () SeekEntryResult!2782)

(assert (=> b!316581 (= e!196900 (Intermediate!2782 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316582 () Bool)

(declare-fun e!196904 () SeekEntryResult!2782)

(assert (=> b!316582 (= e!196904 (Intermediate!2782 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316583 () Bool)

(assert (=> b!316583 (and (bvsge (index!13306 lt!154659) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154659) (size!7983 a!3293)))))

(assert (=> b!316583 (= e!196902 (= (select (arr!7631 a!3293) (index!13306 lt!154659)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316584 () Bool)

(assert (=> b!316584 (and (bvsge (index!13306 lt!154659) #b00000000000000000000000000000000) (bvslt (index!13306 lt!154659) (size!7983 a!3293)))))

(declare-fun res!171546 () Bool)

(assert (=> b!316584 (= res!171546 (= (select (arr!7631 a!3293) (index!13306 lt!154659)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316584 (=> res!171546 e!196902)))

(declare-fun b!316585 () Bool)

(assert (=> b!316585 (= e!196903 (bvsge (x!31520 lt!154659) #b01111111111111111111111111111110))))

(declare-fun d!68953 () Bool)

(assert (=> d!68953 e!196903))

(declare-fun c!50136 () Bool)

(assert (=> d!68953 (= c!50136 (and ((_ is Intermediate!2782) lt!154659) (undefined!3594 lt!154659)))))

(assert (=> d!68953 (= lt!154659 e!196900)))

(declare-fun c!50138 () Bool)

(assert (=> d!68953 (= c!50138 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!154658 () (_ BitVec 64))

(assert (=> d!68953 (= lt!154658 (select (arr!7631 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68953 (validMask!0 mask!3709)))

(assert (=> d!68953 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154659)))

(declare-fun b!316586 () Bool)

(assert (=> b!316586 (= e!196904 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316587 () Bool)

(assert (=> b!316587 (= e!196900 e!196904)))

(declare-fun c!50137 () Bool)

(assert (=> b!316587 (= c!50137 (or (= lt!154658 k0!2441) (= (bvadd lt!154658 lt!154658) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68953 c!50138) b!316581))

(assert (= (and d!68953 (not c!50138)) b!316587))

(assert (= (and b!316587 c!50137) b!316582))

(assert (= (and b!316587 (not c!50137)) b!316586))

(assert (= (and d!68953 c!50136) b!316585))

(assert (= (and d!68953 (not c!50136)) b!316579))

(assert (= (and b!316579 res!171547) b!316580))

(assert (= (and b!316580 (not res!171548)) b!316584))

(assert (= (and b!316584 (not res!171546)) b!316583))

(declare-fun m!325409 () Bool)

(assert (=> b!316580 m!325409))

(assert (=> b!316583 m!325409))

(assert (=> b!316584 m!325409))

(assert (=> b!316586 m!325273))

(declare-fun m!325411 () Bool)

(assert (=> b!316586 m!325411))

(assert (=> b!316586 m!325411))

(declare-fun m!325413 () Bool)

(assert (=> b!316586 m!325413))

(assert (=> d!68953 m!325273))

(declare-fun m!325415 () Bool)

(assert (=> d!68953 m!325415))

(assert (=> d!68953 m!325279))

(assert (=> b!316360 d!68953))

(declare-fun d!68955 () Bool)

(declare-fun lt!154677 () (_ BitVec 32))

(declare-fun lt!154676 () (_ BitVec 32))

(assert (=> d!68955 (= lt!154677 (bvmul (bvxor lt!154676 (bvlshr lt!154676 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68955 (= lt!154676 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68955 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171549 (let ((h!5395 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31530 (bvmul (bvxor h!5395 (bvlshr h!5395 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31530 (bvlshr x!31530 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171549 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171549 #b00000000000000000000000000000000))))))

(assert (=> d!68955 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!154677 (bvlshr lt!154677 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!316360 d!68955))

(declare-fun d!68959 () Bool)

(assert (=> d!68959 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31658 d!68959))

(declare-fun d!68967 () Bool)

(assert (=> d!68967 (= (array_inv!5585 a!3293) (bvsge (size!7983 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31658 d!68967))

(check-sat (not b!316421) (not d!68953) (not b!316571) (not b!316454) (not d!68943) (not b!316586) (not bm!26006) (not d!68913) (not d!68927) (not d!68947) (not b!316455) (not b!316553) (not b!316578))
(check-sat)
