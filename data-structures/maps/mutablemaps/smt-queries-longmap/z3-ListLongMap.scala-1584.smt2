; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30092 () Bool)

(assert start!30092)

(declare-fun res!159282 () Bool)

(declare-fun e!190210 () Bool)

(assert (=> start!30092 (=> (not res!159282) (not e!190210))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30092 (= res!159282 (validMask!0 mask!3709))))

(assert (=> start!30092 e!190210))

(assert (=> start!30092 true))

(declare-datatypes ((array!15280 0))(
  ( (array!15281 (arr!7229 (Array (_ BitVec 32) (_ BitVec 64))) (size!7581 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15280)

(declare-fun array_inv!5183 (array!15280) Bool)

(assert (=> start!30092 (array_inv!5183 a!3293)))

(declare-fun b!301441 () Bool)

(declare-fun res!159280 () Bool)

(assert (=> b!301441 (=> (not res!159280) (not e!190210))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301441 (= res!159280 (and (= (size!7581 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7581 a!3293))))))

(declare-fun b!301442 () Bool)

(declare-fun res!159279 () Bool)

(assert (=> b!301442 (=> (not res!159279) (not e!190210))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2380 0))(
  ( (MissingZero!2380 (index!11696 (_ BitVec 32))) (Found!2380 (index!11697 (_ BitVec 32))) (Intermediate!2380 (undefined!3192 Bool) (index!11698 (_ BitVec 32)) (x!29935 (_ BitVec 32))) (Undefined!2380) (MissingVacant!2380 (index!11699 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15280 (_ BitVec 32)) SeekEntryResult!2380)

(assert (=> b!301442 (= res!159279 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2380 i!1240)))))

(declare-fun b!301443 () Bool)

(declare-fun res!159277 () Bool)

(assert (=> b!301443 (=> (not res!159277) (not e!190210))))

(declare-fun arrayContainsKey!0 (array!15280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301443 (= res!159277 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301444 () Bool)

(declare-fun lt!149837 () (_ BitVec 32))

(assert (=> b!301444 (= e!190210 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!149837 #b00000000000000000000000000000000) (bvsge lt!149837 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301444 (= lt!149837 (toIndex!0 k0!2441 mask!3709))))

(declare-fun b!301445 () Bool)

(declare-fun res!159278 () Bool)

(assert (=> b!301445 (=> (not res!159278) (not e!190210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301445 (= res!159278 (validKeyInArray!0 k0!2441))))

(declare-fun b!301446 () Bool)

(declare-fun res!159281 () Bool)

(assert (=> b!301446 (=> (not res!159281) (not e!190210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15280 (_ BitVec 32)) Bool)

(assert (=> b!301446 (= res!159281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30092 res!159282) b!301441))

(assert (= (and b!301441 res!159280) b!301445))

(assert (= (and b!301445 res!159278) b!301443))

(assert (= (and b!301443 res!159277) b!301442))

(assert (= (and b!301442 res!159279) b!301446))

(assert (= (and b!301446 res!159281) b!301444))

(declare-fun m!313215 () Bool)

(assert (=> b!301443 m!313215))

(declare-fun m!313217 () Bool)

(assert (=> start!30092 m!313217))

(declare-fun m!313219 () Bool)

(assert (=> start!30092 m!313219))

(declare-fun m!313221 () Bool)

(assert (=> b!301442 m!313221))

(declare-fun m!313223 () Bool)

(assert (=> b!301444 m!313223))

(declare-fun m!313225 () Bool)

(assert (=> b!301445 m!313225))

(declare-fun m!313227 () Bool)

(assert (=> b!301446 m!313227))

(check-sat (not b!301442) (not b!301443) (not start!30092) (not b!301445) (not b!301444) (not b!301446))
(check-sat)
(get-model)

(declare-fun d!67769 () Bool)

(declare-fun lt!149846 () (_ BitVec 32))

(declare-fun lt!149845 () (_ BitVec 32))

(assert (=> d!67769 (= lt!149846 (bvmul (bvxor lt!149845 (bvlshr lt!149845 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67769 (= lt!149845 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67769 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!159301 (let ((h!5348 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29937 (bvmul (bvxor h!5348 (bvlshr h!5348 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29937 (bvlshr x!29937 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!159301 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!159301 #b00000000000000000000000000000000))))))

(assert (=> d!67769 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!149846 (bvlshr lt!149846 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!301444 d!67769))

(declare-fun d!67773 () Bool)

(assert (=> d!67773 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30092 d!67773))

(declare-fun d!67783 () Bool)

(assert (=> d!67783 (= (array_inv!5183 a!3293) (bvsge (size!7581 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30092 d!67783))

(declare-fun d!67785 () Bool)

(assert (=> d!67785 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301445 d!67785))

(declare-fun b!301491 () Bool)

(declare-fun e!190240 () Bool)

(declare-fun e!190239 () Bool)

(assert (=> b!301491 (= e!190240 e!190239)))

(declare-fun c!48683 () Bool)

(assert (=> b!301491 (= c!48683 (validKeyInArray!0 (select (arr!7229 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!301492 () Bool)

(declare-fun e!190238 () Bool)

(assert (=> b!301492 (= e!190239 e!190238)))

(declare-fun lt!149862 () (_ BitVec 64))

(assert (=> b!301492 (= lt!149862 (select (arr!7229 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9366 0))(
  ( (Unit!9367) )
))
(declare-fun lt!149863 () Unit!9366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15280 (_ BitVec 64) (_ BitVec 32)) Unit!9366)

(assert (=> b!301492 (= lt!149863 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!149862 #b00000000000000000000000000000000))))

(assert (=> b!301492 (arrayContainsKey!0 a!3293 lt!149862 #b00000000000000000000000000000000)))

(declare-fun lt!149864 () Unit!9366)

(assert (=> b!301492 (= lt!149864 lt!149863)))

(declare-fun res!159318 () Bool)

(assert (=> b!301492 (= res!159318 (= (seekEntryOrOpen!0 (select (arr!7229 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2380 #b00000000000000000000000000000000)))))

(assert (=> b!301492 (=> (not res!159318) (not e!190238))))

(declare-fun b!301493 () Bool)

(declare-fun call!25874 () Bool)

(assert (=> b!301493 (= e!190239 call!25874)))

(declare-fun b!301494 () Bool)

(assert (=> b!301494 (= e!190238 call!25874)))

(declare-fun d!67789 () Bool)

(declare-fun res!159319 () Bool)

(assert (=> d!67789 (=> res!159319 e!190240)))

(assert (=> d!67789 (= res!159319 (bvsge #b00000000000000000000000000000000 (size!7581 a!3293)))))

(assert (=> d!67789 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190240)))

(declare-fun bm!25871 () Bool)

(assert (=> bm!25871 (= call!25874 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!67789 (not res!159319)) b!301491))

(assert (= (and b!301491 c!48683) b!301492))

(assert (= (and b!301491 (not c!48683)) b!301493))

(assert (= (and b!301492 res!159318) b!301494))

(assert (= (or b!301494 b!301493) bm!25871))

(declare-fun m!313259 () Bool)

(assert (=> b!301491 m!313259))

(assert (=> b!301491 m!313259))

(declare-fun m!313261 () Bool)

(assert (=> b!301491 m!313261))

(assert (=> b!301492 m!313259))

(declare-fun m!313263 () Bool)

(assert (=> b!301492 m!313263))

(declare-fun m!313265 () Bool)

(assert (=> b!301492 m!313265))

(assert (=> b!301492 m!313259))

(declare-fun m!313267 () Bool)

(assert (=> b!301492 m!313267))

(declare-fun m!313269 () Bool)

(assert (=> bm!25871 m!313269))

(assert (=> b!301446 d!67789))

(declare-fun b!301543 () Bool)

(declare-fun e!190266 () SeekEntryResult!2380)

(assert (=> b!301543 (= e!190266 Undefined!2380)))

(declare-fun b!301544 () Bool)

(declare-fun e!190265 () SeekEntryResult!2380)

(assert (=> b!301544 (= e!190266 e!190265)))

(declare-fun lt!149897 () (_ BitVec 64))

(declare-fun lt!149896 () SeekEntryResult!2380)

(assert (=> b!301544 (= lt!149897 (select (arr!7229 a!3293) (index!11698 lt!149896)))))

(declare-fun c!48710 () Bool)

(assert (=> b!301544 (= c!48710 (= lt!149897 k0!2441))))

(declare-fun b!301545 () Bool)

(declare-fun c!48708 () Bool)

(assert (=> b!301545 (= c!48708 (= lt!149897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!190267 () SeekEntryResult!2380)

(assert (=> b!301545 (= e!190265 e!190267)))

(declare-fun b!301546 () Bool)

(assert (=> b!301546 (= e!190265 (Found!2380 (index!11698 lt!149896)))))

(declare-fun b!301547 () Bool)

(assert (=> b!301547 (= e!190267 (MissingZero!2380 (index!11698 lt!149896)))))

(declare-fun d!67795 () Bool)

(declare-fun lt!149895 () SeekEntryResult!2380)

(get-info :version)

(assert (=> d!67795 (and (or ((_ is Undefined!2380) lt!149895) (not ((_ is Found!2380) lt!149895)) (and (bvsge (index!11697 lt!149895) #b00000000000000000000000000000000) (bvslt (index!11697 lt!149895) (size!7581 a!3293)))) (or ((_ is Undefined!2380) lt!149895) ((_ is Found!2380) lt!149895) (not ((_ is MissingZero!2380) lt!149895)) (and (bvsge (index!11696 lt!149895) #b00000000000000000000000000000000) (bvslt (index!11696 lt!149895) (size!7581 a!3293)))) (or ((_ is Undefined!2380) lt!149895) ((_ is Found!2380) lt!149895) ((_ is MissingZero!2380) lt!149895) (not ((_ is MissingVacant!2380) lt!149895)) (and (bvsge (index!11699 lt!149895) #b00000000000000000000000000000000) (bvslt (index!11699 lt!149895) (size!7581 a!3293)))) (or ((_ is Undefined!2380) lt!149895) (ite ((_ is Found!2380) lt!149895) (= (select (arr!7229 a!3293) (index!11697 lt!149895)) k0!2441) (ite ((_ is MissingZero!2380) lt!149895) (= (select (arr!7229 a!3293) (index!11696 lt!149895)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2380) lt!149895) (= (select (arr!7229 a!3293) (index!11699 lt!149895)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67795 (= lt!149895 e!190266)))

(declare-fun c!48709 () Bool)

(assert (=> d!67795 (= c!48709 (and ((_ is Intermediate!2380) lt!149896) (undefined!3192 lt!149896)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15280 (_ BitVec 32)) SeekEntryResult!2380)

(assert (=> d!67795 (= lt!149896 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!67795 (validMask!0 mask!3709)))

(assert (=> d!67795 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!149895)))

(declare-fun b!301548 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15280 (_ BitVec 32)) SeekEntryResult!2380)

(assert (=> b!301548 (= e!190267 (seekKeyOrZeroReturnVacant!0 (x!29935 lt!149896) (index!11698 lt!149896) (index!11698 lt!149896) k0!2441 a!3293 mask!3709))))

(assert (= (and d!67795 c!48709) b!301543))

(assert (= (and d!67795 (not c!48709)) b!301544))

(assert (= (and b!301544 c!48710) b!301546))

(assert (= (and b!301544 (not c!48710)) b!301545))

(assert (= (and b!301545 c!48708) b!301547))

(assert (= (and b!301545 (not c!48708)) b!301548))

(declare-fun m!313295 () Bool)

(assert (=> b!301544 m!313295))

(declare-fun m!313297 () Bool)

(assert (=> d!67795 m!313297))

(declare-fun m!313299 () Bool)

(assert (=> d!67795 m!313299))

(assert (=> d!67795 m!313223))

(declare-fun m!313301 () Bool)

(assert (=> d!67795 m!313301))

(assert (=> d!67795 m!313223))

(assert (=> d!67795 m!313217))

(declare-fun m!313303 () Bool)

(assert (=> d!67795 m!313303))

(declare-fun m!313305 () Bool)

(assert (=> b!301548 m!313305))

(assert (=> b!301442 d!67795))

(declare-fun d!67807 () Bool)

(declare-fun res!159326 () Bool)

(declare-fun e!190272 () Bool)

(assert (=> d!67807 (=> res!159326 e!190272)))

(assert (=> d!67807 (= res!159326 (= (select (arr!7229 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!67807 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!190272)))

(declare-fun b!301553 () Bool)

(declare-fun e!190273 () Bool)

(assert (=> b!301553 (= e!190272 e!190273)))

(declare-fun res!159327 () Bool)

(assert (=> b!301553 (=> (not res!159327) (not e!190273))))

(assert (=> b!301553 (= res!159327 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7581 a!3293)))))

(declare-fun b!301554 () Bool)

(assert (=> b!301554 (= e!190273 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67807 (not res!159326)) b!301553))

(assert (= (and b!301553 res!159327) b!301554))

(assert (=> d!67807 m!313259))

(declare-fun m!313307 () Bool)

(assert (=> b!301554 m!313307))

(assert (=> b!301443 d!67807))

(check-sat (not b!301491) (not b!301548) (not bm!25871) (not d!67795) (not b!301492) (not b!301554))
(check-sat)
