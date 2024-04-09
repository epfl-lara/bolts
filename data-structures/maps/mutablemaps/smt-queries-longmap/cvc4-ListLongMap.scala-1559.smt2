; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29584 () Bool)

(assert start!29584)

(declare-fun b!298569 () Bool)

(declare-fun res!157522 () Bool)

(declare-fun e!188625 () Bool)

(assert (=> b!298569 (=> (not res!157522) (not e!188625))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!15108 0))(
  ( (array!15109 (arr!7155 (Array (_ BitVec 32) (_ BitVec 64))) (size!7507 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15108)

(assert (=> b!298569 (= res!157522 (and (= (size!7507 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7507 a!3312))))))

(declare-fun b!298570 () Bool)

(declare-fun res!157520 () Bool)

(declare-fun e!188627 () Bool)

(assert (=> b!298570 (=> (not res!157520) (not e!188627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15108 (_ BitVec 32)) Bool)

(assert (=> b!298570 (= res!157520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298571 () Bool)

(declare-fun res!157521 () Bool)

(assert (=> b!298571 (=> (not res!157521) (not e!188625))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298571 (= res!157521 (validKeyInArray!0 k!2524))))

(declare-fun b!298572 () Bool)

(declare-fun res!157519 () Bool)

(assert (=> b!298572 (=> (not res!157519) (not e!188625))))

(declare-fun arrayContainsKey!0 (array!15108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298572 (= res!157519 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157523 () Bool)

(assert (=> start!29584 (=> (not res!157523) (not e!188625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29584 (= res!157523 (validMask!0 mask!3809))))

(assert (=> start!29584 e!188625))

(assert (=> start!29584 true))

(declare-fun array_inv!5109 (array!15108) Bool)

(assert (=> start!29584 (array_inv!5109 a!3312)))

(declare-fun b!298573 () Bool)

(declare-datatypes ((SeekEntryResult!2315 0))(
  ( (MissingZero!2315 (index!11433 (_ BitVec 32))) (Found!2315 (index!11434 (_ BitVec 32))) (Intermediate!2315 (undefined!3127 Bool) (index!11435 (_ BitVec 32)) (x!29627 (_ BitVec 32))) (Undefined!2315) (MissingVacant!2315 (index!11436 (_ BitVec 32))) )
))
(declare-fun lt!148512 () SeekEntryResult!2315)

(declare-fun lt!148513 () Bool)

(declare-fun lt!148514 () SeekEntryResult!2315)

(assert (=> b!298573 (= e!188627 (and (not lt!148513) (= lt!148512 (MissingVacant!2315 i!1256)) (let ((bdg!6425 (not (is-Intermediate!2315 lt!148514)))) (and (or bdg!6425 (not (undefined!3127 lt!148514))) (not bdg!6425) (= (select (arr!7155 a!3312) (index!11435 lt!148514)) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (index!11435 lt!148514) i!1256))))))))

(declare-fun lt!148510 () (_ BitVec 32))

(declare-fun lt!148511 () SeekEntryResult!2315)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15108 (_ BitVec 32)) SeekEntryResult!2315)

(assert (=> b!298573 (= lt!148511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148510 k!2524 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312)) mask!3809))))

(assert (=> b!298573 (= lt!148514 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148510 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298573 (= lt!148510 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298574 () Bool)

(assert (=> b!298574 (= e!188625 e!188627)))

(declare-fun res!157524 () Bool)

(assert (=> b!298574 (=> (not res!157524) (not e!188627))))

(assert (=> b!298574 (= res!157524 (or lt!148513 (= lt!148512 (MissingVacant!2315 i!1256))))))

(assert (=> b!298574 (= lt!148513 (= lt!148512 (MissingZero!2315 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15108 (_ BitVec 32)) SeekEntryResult!2315)

(assert (=> b!298574 (= lt!148512 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29584 res!157523) b!298569))

(assert (= (and b!298569 res!157522) b!298571))

(assert (= (and b!298571 res!157521) b!298572))

(assert (= (and b!298572 res!157519) b!298574))

(assert (= (and b!298574 res!157524) b!298570))

(assert (= (and b!298570 res!157520) b!298573))

(declare-fun m!311047 () Bool)

(assert (=> b!298570 m!311047))

(declare-fun m!311049 () Bool)

(assert (=> b!298573 m!311049))

(declare-fun m!311051 () Bool)

(assert (=> b!298573 m!311051))

(declare-fun m!311053 () Bool)

(assert (=> b!298573 m!311053))

(declare-fun m!311055 () Bool)

(assert (=> b!298573 m!311055))

(declare-fun m!311057 () Bool)

(assert (=> b!298573 m!311057))

(declare-fun m!311059 () Bool)

(assert (=> b!298574 m!311059))

(declare-fun m!311061 () Bool)

(assert (=> start!29584 m!311061))

(declare-fun m!311063 () Bool)

(assert (=> start!29584 m!311063))

(declare-fun m!311065 () Bool)

(assert (=> b!298571 m!311065))

(declare-fun m!311067 () Bool)

(assert (=> b!298572 m!311067))

(push 1)

(assert (not b!298571))

(assert (not b!298574))

(assert (not b!298573))

(assert (not b!298570))

(assert (not b!298572))

(assert (not start!29584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!298619 () Bool)

(declare-fun e!188656 () Bool)

(declare-fun e!188655 () Bool)

(assert (=> b!298619 (= e!188656 e!188655)))

(declare-fun c!48129 () Bool)

(assert (=> b!298619 (= c!48129 (validKeyInArray!0 (select (arr!7155 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298620 () Bool)

(declare-fun e!188657 () Bool)

(assert (=> b!298620 (= e!188655 e!188657)))

(declare-fun lt!148536 () (_ BitVec 64))

(assert (=> b!298620 (= lt!148536 (select (arr!7155 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9310 0))(
  ( (Unit!9311) )
))
(declare-fun lt!148538 () Unit!9310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15108 (_ BitVec 64) (_ BitVec 32)) Unit!9310)

(assert (=> b!298620 (= lt!148538 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148536 #b00000000000000000000000000000000))))

(assert (=> b!298620 (arrayContainsKey!0 a!3312 lt!148536 #b00000000000000000000000000000000)))

(declare-fun lt!148537 () Unit!9310)

(assert (=> b!298620 (= lt!148537 lt!148538)))

(declare-fun res!157535 () Bool)

(assert (=> b!298620 (= res!157535 (= (seekEntryOrOpen!0 (select (arr!7155 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2315 #b00000000000000000000000000000000)))))

(assert (=> b!298620 (=> (not res!157535) (not e!188657))))

(declare-fun b!298621 () Bool)

(declare-fun call!25788 () Bool)

(assert (=> b!298621 (= e!188657 call!25788)))

(declare-fun d!67289 () Bool)

(declare-fun res!157536 () Bool)

(assert (=> d!67289 (=> res!157536 e!188656)))

(assert (=> d!67289 (= res!157536 (bvsge #b00000000000000000000000000000000 (size!7507 a!3312)))))

(assert (=> d!67289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188656)))

(declare-fun b!298622 () Bool)

(assert (=> b!298622 (= e!188655 call!25788)))

(declare-fun bm!25785 () Bool)

(assert (=> bm!25785 (= call!25788 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67289 (not res!157536)) b!298619))

(assert (= (and b!298619 c!48129) b!298620))

(assert (= (and b!298619 (not c!48129)) b!298622))

(assert (= (and b!298620 res!157535) b!298621))

(assert (= (or b!298621 b!298622) bm!25785))

(declare-fun m!311085 () Bool)

(assert (=> b!298619 m!311085))

(assert (=> b!298619 m!311085))

(declare-fun m!311087 () Bool)

(assert (=> b!298619 m!311087))

(assert (=> b!298620 m!311085))

(declare-fun m!311089 () Bool)

(assert (=> b!298620 m!311089))

(declare-fun m!311091 () Bool)

(assert (=> b!298620 m!311091))

(assert (=> b!298620 m!311085))

(declare-fun m!311093 () Bool)

(assert (=> b!298620 m!311093))

(declare-fun m!311095 () Bool)

(assert (=> bm!25785 m!311095))

(assert (=> b!298570 d!67289))

(declare-fun d!67297 () Bool)

(assert (=> d!67297 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298571 d!67297))

(declare-fun d!67299 () Bool)

(declare-fun res!157541 () Bool)

(declare-fun e!188665 () Bool)

(assert (=> d!67299 (=> res!157541 e!188665)))

(assert (=> d!67299 (= res!157541 (= (select (arr!7155 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67299 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188665)))

(declare-fun b!298633 () Bool)

(declare-fun e!188666 () Bool)

(assert (=> b!298633 (= e!188665 e!188666)))

(declare-fun res!157542 () Bool)

(assert (=> b!298633 (=> (not res!157542) (not e!188666))))

(assert (=> b!298633 (= res!157542 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7507 a!3312)))))

(declare-fun b!298634 () Bool)

(assert (=> b!298634 (= e!188666 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67299 (not res!157541)) b!298633))

(assert (= (and b!298633 res!157542) b!298634))

(assert (=> d!67299 m!311085))

(declare-fun m!311109 () Bool)

(assert (=> b!298634 m!311109))

(assert (=> b!298572 d!67299))

(declare-fun d!67303 () Bool)

(assert (=> d!67303 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29584 d!67303))

(declare-fun d!67313 () Bool)

(assert (=> d!67313 (= (array_inv!5109 a!3312) (bvsge (size!7507 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29584 d!67313))

(declare-fun b!298691 () Bool)

(declare-fun e!188703 () SeekEntryResult!2315)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298691 (= e!188703 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148510 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312)) mask!3809))))

(declare-fun b!298692 () Bool)

(declare-fun e!188707 () Bool)

(declare-fun e!188706 () Bool)

(assert (=> b!298692 (= e!188707 e!188706)))

(declare-fun res!157563 () Bool)

(declare-fun lt!148568 () SeekEntryResult!2315)

(assert (=> b!298692 (= res!157563 (and (is-Intermediate!2315 lt!148568) (not (undefined!3127 lt!148568)) (bvslt (x!29627 lt!148568) #b01111111111111111111111111111110) (bvsge (x!29627 lt!148568) #b00000000000000000000000000000000) (bvsge (x!29627 lt!148568) #b00000000000000000000000000000000)))))

(assert (=> b!298692 (=> (not res!157563) (not e!188706))))

(declare-fun b!298693 () Bool)

(assert (=> b!298693 (and (bvsge (index!11435 lt!148568) #b00000000000000000000000000000000) (bvslt (index!11435 lt!148568) (size!7507 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312)))))))

(declare-fun res!157565 () Bool)

(assert (=> b!298693 (= res!157565 (= (select (arr!7155 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312))) (index!11435 lt!148568)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188704 () Bool)

(assert (=> b!298693 (=> res!157565 e!188704)))

(declare-fun b!298694 () Bool)

(assert (=> b!298694 (= e!188703 (Intermediate!2315 false lt!148510 #b00000000000000000000000000000000))))

(declare-fun b!298696 () Bool)

(assert (=> b!298696 (= e!188707 (bvsge (x!29627 lt!148568) #b01111111111111111111111111111110))))

(declare-fun b!298697 () Bool)

(assert (=> b!298697 (and (bvsge (index!11435 lt!148568) #b00000000000000000000000000000000) (bvslt (index!11435 lt!148568) (size!7507 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312)))))))

(declare-fun res!157564 () Bool)

(assert (=> b!298697 (= res!157564 (= (select (arr!7155 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312))) (index!11435 lt!148568)) k!2524))))

(assert (=> b!298697 (=> res!157564 e!188704)))

(assert (=> b!298697 (= e!188706 e!188704)))

(declare-fun b!298698 () Bool)

(declare-fun e!188705 () SeekEntryResult!2315)

(assert (=> b!298698 (= e!188705 (Intermediate!2315 true lt!148510 #b00000000000000000000000000000000))))

(declare-fun b!298699 () Bool)

(assert (=> b!298699 (and (bvsge (index!11435 lt!148568) #b00000000000000000000000000000000) (bvslt (index!11435 lt!148568) (size!7507 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312)))))))

(assert (=> b!298699 (= e!188704 (= (select (arr!7155 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312))) (index!11435 lt!148568)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!67315 () Bool)

(assert (=> d!67315 e!188707))

(declare-fun c!48153 () Bool)

(assert (=> d!67315 (= c!48153 (and (is-Intermediate!2315 lt!148568) (undefined!3127 lt!148568)))))

(assert (=> d!67315 (= lt!148568 e!188705)))

(declare-fun c!48151 () Bool)

(assert (=> d!67315 (= c!48151 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148569 () (_ BitVec 64))

(assert (=> d!67315 (= lt!148569 (select (arr!7155 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312))) lt!148510))))

(assert (=> d!67315 (validMask!0 mask!3809)))

(assert (=> d!67315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148510 k!2524 (array!15109 (store (arr!7155 a!3312) i!1256 k!2524) (size!7507 a!3312)) mask!3809) lt!148568)))

(declare-fun b!298695 () Bool)

(assert (=> b!298695 (= e!188705 e!188703)))

(declare-fun c!48152 () Bool)

(assert (=> b!298695 (= c!48152 (or (= lt!148569 k!2524) (= (bvadd lt!148569 lt!148569) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67315 c!48151) b!298698))

(assert (= (and d!67315 (not c!48151)) b!298695))

(assert (= (and b!298695 c!48152) b!298694))

(assert (= (and b!298695 (not c!48152)) b!298691))

(assert (= (and d!67315 c!48153) b!298696))

(assert (= (and d!67315 (not c!48153)) b!298692))

(assert (= (and b!298692 res!157563) b!298697))

(assert (= (and b!298697 (not res!157564)) b!298693))

(assert (= (and b!298693 (not res!157565)) b!298699))

(declare-fun m!311133 () Bool)

(assert (=> d!67315 m!311133))

(assert (=> d!67315 m!311061))

(declare-fun m!311135 () Bool)

(assert (=> b!298691 m!311135))

(assert (=> b!298691 m!311135))

(declare-fun m!311137 () Bool)

(assert (=> b!298691 m!311137))

(declare-fun m!311139 () Bool)

(assert (=> b!298699 m!311139))

(assert (=> b!298693 m!311139))

(assert (=> b!298697 m!311139))

(assert (=> b!298573 d!67315))

(declare-fun b!298704 () Bool)

(declare-fun e!188710 () SeekEntryResult!2315)

(assert (=> b!298704 (= e!188710 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148510 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!298705 () Bool)

(declare-fun e!188714 () Bool)

(declare-fun e!188713 () Bool)

(assert (=> b!298705 (= e!188714 e!188713)))

(declare-fun res!157570 () Bool)

(declare-fun lt!148570 () SeekEntryResult!2315)

(assert (=> b!298705 (= res!157570 (and (is-Intermediate!2315 lt!148570) (not (undefined!3127 lt!148570)) (bvslt (x!29627 lt!148570) #b01111111111111111111111111111110) (bvsge (x!29627 lt!148570) #b00000000000000000000000000000000) (bvsge (x!29627 lt!148570) #b00000000000000000000000000000000)))))

(assert (=> b!298705 (=> (not res!157570) (not e!188713))))

(declare-fun b!298706 () Bool)

(assert (=> b!298706 (and (bvsge (index!11435 lt!148570) #b00000000000000000000000000000000) (bvslt (index!11435 lt!148570) (size!7507 a!3312)))))

(declare-fun res!157572 () Bool)

(assert (=> b!298706 (= res!157572 (= (select (arr!7155 a!3312) (index!11435 lt!148570)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188711 () Bool)

(assert (=> b!298706 (=> res!157572 e!188711)))

(declare-fun b!298707 () Bool)

(assert (=> b!298707 (= e!188710 (Intermediate!2315 false lt!148510 #b00000000000000000000000000000000))))

(declare-fun b!298709 () Bool)

(assert (=> b!298709 (= e!188714 (bvsge (x!29627 lt!148570) #b01111111111111111111111111111110))))

(declare-fun b!298710 () Bool)

(assert (=> b!298710 (and (bvsge (index!11435 lt!148570) #b00000000000000000000000000000000) (bvslt (index!11435 lt!148570) (size!7507 a!3312)))))

(declare-fun res!157571 () Bool)

(assert (=> b!298710 (= res!157571 (= (select (arr!7155 a!3312) (index!11435 lt!148570)) k!2524))))

(assert (=> b!298710 (=> res!157571 e!188711)))

(assert (=> b!298710 (= e!188713 e!188711)))

(declare-fun b!298711 () Bool)

(declare-fun e!188712 () SeekEntryResult!2315)

(assert (=> b!298711 (= e!188712 (Intermediate!2315 true lt!148510 #b00000000000000000000000000000000))))

(declare-fun b!298712 () Bool)

(assert (=> b!298712 (and (bvsge (index!11435 lt!148570) #b00000000000000000000000000000000) (bvslt (index!11435 lt!148570) (size!7507 a!3312)))))

(assert (=> b!298712 (= e!188711 (= (select (arr!7155 a!3312) (index!11435 lt!148570)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!67323 () Bool)

(assert (=> d!67323 e!188714))

(declare-fun c!48156 () Bool)

(assert (=> d!67323 (= c!48156 (and (is-Intermediate!2315 lt!148570) (undefined!3127 lt!148570)))))

(assert (=> d!67323 (= lt!148570 e!188712)))

(declare-fun c!48154 () Bool)

(assert (=> d!67323 (= c!48154 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148571 () (_ BitVec 64))

(assert (=> d!67323 (= lt!148571 (select (arr!7155 a!3312) lt!148510))))

(assert (=> d!67323 (validMask!0 mask!3809)))

(assert (=> d!67323 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148510 k!2524 a!3312 mask!3809) lt!148570)))

(declare-fun b!298708 () Bool)

(assert (=> b!298708 (= e!188712 e!188710)))

(declare-fun c!48155 () Bool)

(assert (=> b!298708 (= c!48155 (or (= lt!148571 k!2524) (= (bvadd lt!148571 lt!148571) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67323 c!48154) b!298711))

(assert (= (and d!67323 (not c!48154)) b!298708))

(assert (= (and b!298708 c!48155) b!298707))

(assert (= (and b!298708 (not c!48155)) b!298704))

(assert (= (and d!67323 c!48156) b!298709))

(assert (= (and d!67323 (not c!48156)) b!298705))

(assert (= (and b!298705 res!157570) b!298710))

(assert (= (and b!298710 (not res!157571)) b!298706))

(assert (= (and b!298706 (not res!157572)) b!298712))

(declare-fun m!311141 () Bool)

(assert (=> d!67323 m!311141))

(assert (=> d!67323 m!311061))

(assert (=> b!298704 m!311135))

(assert (=> b!298704 m!311135))

(declare-fun m!311143 () Bool)

(assert (=> b!298704 m!311143))

(declare-fun m!311145 () Bool)

(assert (=> b!298712 m!311145))

(assert (=> b!298706 m!311145))

(assert (=> b!298710 m!311145))

(assert (=> b!298573 d!67323))

(declare-fun d!67325 () Bool)

(declare-fun lt!148585 () (_ BitVec 32))

(declare-fun lt!148584 () (_ BitVec 32))

(assert (=> d!67325 (= lt!148585 (bvmul (bvxor lt!148584 (bvlshr lt!148584 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67325 (= lt!148584 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67325 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157573 (let ((h!5330 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29630 (bvmul (bvxor h!5330 (bvlshr h!5330 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29630 (bvlshr x!29630 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157573 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157573 #b00000000000000000000000000000000))))))

(assert (=> d!67325 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148585 (bvlshr lt!148585 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!298573 d!67325))

(declare-fun lt!148610 () SeekEntryResult!2315)

(declare-fun e!188759 () SeekEntryResult!2315)

(declare-fun b!298785 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15108 (_ BitVec 32)) SeekEntryResult!2315)

(assert (=> b!298785 (= e!188759 (seekKeyOrZeroReturnVacant!0 (x!29627 lt!148610) (index!11435 lt!148610) (index!11435 lt!148610) k!2524 a!3312 mask!3809))))

(declare-fun b!298786 () Bool)

(declare-fun e!188757 () SeekEntryResult!2315)

(declare-fun e!188758 () SeekEntryResult!2315)

(assert (=> b!298786 (= e!188757 e!188758)))

(declare-fun lt!148608 () (_ BitVec 64))

(assert (=> b!298786 (= lt!148608 (select (arr!7155 a!3312) (index!11435 lt!148610)))))

(declare-fun c!48182 () Bool)

(assert (=> b!298786 (= c!48182 (= lt!148608 k!2524))))

(declare-fun b!298787 () Bool)

(assert (=> b!298787 (= e!188759 (MissingZero!2315 (index!11435 lt!148610)))))

(declare-fun d!67331 () Bool)

(declare-fun lt!148609 () SeekEntryResult!2315)

(assert (=> d!67331 (and (or (is-Undefined!2315 lt!148609) (not (is-Found!2315 lt!148609)) (and (bvsge (index!11434 lt!148609) #b00000000000000000000000000000000) (bvslt (index!11434 lt!148609) (size!7507 a!3312)))) (or (is-Undefined!2315 lt!148609) (is-Found!2315 lt!148609) (not (is-MissingZero!2315 lt!148609)) (and (bvsge (index!11433 lt!148609) #b00000000000000000000000000000000) (bvslt (index!11433 lt!148609) (size!7507 a!3312)))) (or (is-Undefined!2315 lt!148609) (is-Found!2315 lt!148609) (is-MissingZero!2315 lt!148609) (not (is-MissingVacant!2315 lt!148609)) (and (bvsge (index!11436 lt!148609) #b00000000000000000000000000000000) (bvslt (index!11436 lt!148609) (size!7507 a!3312)))) (or (is-Undefined!2315 lt!148609) (ite (is-Found!2315 lt!148609) (= (select (arr!7155 a!3312) (index!11434 lt!148609)) k!2524) (ite (is-MissingZero!2315 lt!148609) (= (select (arr!7155 a!3312) (index!11433 lt!148609)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2315 lt!148609) (= (select (arr!7155 a!3312) (index!11436 lt!148609)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67331 (= lt!148609 e!188757)))

(declare-fun c!48183 () Bool)

(assert (=> d!67331 (= c!48183 (and (is-Intermediate!2315 lt!148610) (undefined!3127 lt!148610)))))

(assert (=> d!67331 (= lt!148610 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67331 (validMask!0 mask!3809)))

(assert (=> d!67331 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148609)))

(declare-fun b!298788 () Bool)

(declare-fun c!48181 () Bool)

(assert (=> b!298788 (= c!48181 (= lt!148608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298788 (= e!188758 e!188759)))

(declare-fun b!298789 () Bool)

(assert (=> b!298789 (= e!188758 (Found!2315 (index!11435 lt!148610)))))

(declare-fun b!298790 () Bool)

(assert (=> b!298790 (= e!188757 Undefined!2315)))

(assert (= (and d!67331 c!48183) b!298790))

(assert (= (and d!67331 (not c!48183)) b!298786))

(assert (= (and b!298786 c!48182) b!298789))

(assert (= (and b!298786 (not c!48182)) b!298788))

(assert (= (and b!298788 c!48181) b!298787))

(assert (= (and b!298788 (not c!48181)) b!298785))

(declare-fun m!311177 () Bool)

(assert (=> b!298785 m!311177))

(declare-fun m!311179 () Bool)

(assert (=> b!298786 m!311179))

(declare-fun m!311181 () Bool)

(assert (=> d!67331 m!311181))

(assert (=> d!67331 m!311055))

(declare-fun m!311183 () Bool)

(assert (=> d!67331 m!311183))

(declare-fun m!311185 () Bool)

(assert (=> d!67331 m!311185))

(assert (=> d!67331 m!311061))

(declare-fun m!311187 () Bool)

(assert (=> d!67331 m!311187))

(assert (=> d!67331 m!311055))

(assert (=> b!298574 d!67331))

(push 1)

(assert (not d!67323))

(assert (not b!298785))

(assert (not b!298620))

(assert (not d!67315))

(assert (not b!298619))

(assert (not d!67331))

(assert (not b!298704))

(assert (not b!298691))

(assert (not b!298634))

(assert (not bm!25785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

