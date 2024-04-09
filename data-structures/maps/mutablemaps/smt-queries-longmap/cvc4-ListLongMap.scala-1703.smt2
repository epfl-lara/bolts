; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31264 () Bool)

(assert start!31264)

(declare-fun b!313608 () Bool)

(declare-fun res!169783 () Bool)

(declare-fun e!195423 () Bool)

(assert (=> b!313608 (=> (not res!169783) (not e!195423))))

(declare-datatypes ((array!16023 0))(
  ( (array!16024 (arr!7587 (Array (_ BitVec 32) (_ BitVec 64))) (size!7939 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16023)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!313608 (= res!169783 (and (= (size!7939 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7939 a!3293))))))

(declare-fun b!313609 () Bool)

(declare-fun res!169785 () Bool)

(assert (=> b!313609 (=> (not res!169785) (not e!195423))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2738 0))(
  ( (MissingZero!2738 (index!13128 (_ BitVec 32))) (Found!2738 (index!13129 (_ BitVec 32))) (Intermediate!2738 (undefined!3550 Bool) (index!13130 (_ BitVec 32)) (x!31311 (_ BitVec 32))) (Undefined!2738) (MissingVacant!2738 (index!13131 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16023 (_ BitVec 32)) SeekEntryResult!2738)

(assert (=> b!313609 (= res!169785 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2738 i!1240)))))

(declare-fun res!169780 () Bool)

(assert (=> start!31264 (=> (not res!169780) (not e!195423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31264 (= res!169780 (validMask!0 mask!3709))))

(assert (=> start!31264 e!195423))

(declare-fun array_inv!5541 (array!16023) Bool)

(assert (=> start!31264 (array_inv!5541 a!3293)))

(assert (=> start!31264 true))

(declare-fun b!313610 () Bool)

(declare-fun res!169779 () Bool)

(assert (=> b!313610 (=> (not res!169779) (not e!195423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313610 (= res!169779 (validKeyInArray!0 k!2441))))

(declare-fun b!313611 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!313611 (= e!195423 (or (bvslt resIndex!52 #b00000000000000000000000000000000) (bvsge resIndex!52 (size!7939 a!3293))))))

(declare-fun b!313612 () Bool)

(declare-fun res!169781 () Bool)

(assert (=> b!313612 (=> (not res!169781) (not e!195423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16023 (_ BitVec 32)) Bool)

(assert (=> b!313612 (= res!169781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313613 () Bool)

(declare-fun res!169782 () Bool)

(assert (=> b!313613 (=> (not res!169782) (not e!195423))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16023 (_ BitVec 32)) SeekEntryResult!2738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313613 (= res!169782 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2738 false resIndex!52 resX!52)))))

(declare-fun b!313614 () Bool)

(declare-fun res!169784 () Bool)

(assert (=> b!313614 (=> (not res!169784) (not e!195423))))

(declare-fun arrayContainsKey!0 (array!16023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313614 (= res!169784 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31264 res!169780) b!313608))

(assert (= (and b!313608 res!169783) b!313610))

(assert (= (and b!313610 res!169779) b!313614))

(assert (= (and b!313614 res!169784) b!313609))

(assert (= (and b!313609 res!169785) b!313612))

(assert (= (and b!313612 res!169781) b!313613))

(assert (= (and b!313613 res!169782) b!313611))

(declare-fun m!323445 () Bool)

(assert (=> b!313609 m!323445))

(declare-fun m!323447 () Bool)

(assert (=> b!313612 m!323447))

(declare-fun m!323449 () Bool)

(assert (=> b!313610 m!323449))

(declare-fun m!323451 () Bool)

(assert (=> start!31264 m!323451))

(declare-fun m!323453 () Bool)

(assert (=> start!31264 m!323453))

(declare-fun m!323455 () Bool)

(assert (=> b!313613 m!323455))

(assert (=> b!313613 m!323455))

(declare-fun m!323457 () Bool)

(assert (=> b!313613 m!323457))

(declare-fun m!323459 () Bool)

(assert (=> b!313614 m!323459))

(push 1)

(assert (not b!313610))

(assert (not b!313609))

(assert (not b!313612))

(assert (not start!31264))

(assert (not b!313614))

(assert (not b!313613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68527 () Bool)

(assert (=> d!68527 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313610 d!68527))

(declare-fun d!68531 () Bool)

(declare-fun res!169809 () Bool)

(declare-fun e!195455 () Bool)

(assert (=> d!68531 (=> res!169809 e!195455)))

(assert (=> d!68531 (= res!169809 (bvsge #b00000000000000000000000000000000 (size!7939 a!3293)))))

(assert (=> d!68531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195455)))

(declare-fun b!313653 () Bool)

(declare-fun e!195457 () Bool)

(declare-fun call!25958 () Bool)

(assert (=> b!313653 (= e!195457 call!25958)))

(declare-fun b!313654 () Bool)

(declare-fun e!195456 () Bool)

(assert (=> b!313654 (= e!195456 call!25958)))

(declare-fun b!313655 () Bool)

(assert (=> b!313655 (= e!195455 e!195457)))

(declare-fun c!49532 () Bool)

(assert (=> b!313655 (= c!49532 (validKeyInArray!0 (select (arr!7587 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!313656 () Bool)

(assert (=> b!313656 (= e!195457 e!195456)))

(declare-fun lt!153678 () (_ BitVec 64))

(assert (=> b!313656 (= lt!153678 (select (arr!7587 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9674 0))(
  ( (Unit!9675) )
))
(declare-fun lt!153679 () Unit!9674)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16023 (_ BitVec 64) (_ BitVec 32)) Unit!9674)

(assert (=> b!313656 (= lt!153679 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153678 #b00000000000000000000000000000000))))

(assert (=> b!313656 (arrayContainsKey!0 a!3293 lt!153678 #b00000000000000000000000000000000)))

(declare-fun lt!153680 () Unit!9674)

(assert (=> b!313656 (= lt!153680 lt!153679)))

(declare-fun res!169808 () Bool)

(assert (=> b!313656 (= res!169808 (= (seekEntryOrOpen!0 (select (arr!7587 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2738 #b00000000000000000000000000000000)))))

(assert (=> b!313656 (=> (not res!169808) (not e!195456))))

(declare-fun bm!25955 () Bool)

(assert (=> bm!25955 (= call!25958 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!68531 (not res!169809)) b!313655))

(assert (= (and b!313655 c!49532) b!313656))

(assert (= (and b!313655 (not c!49532)) b!313653))

(assert (= (and b!313656 res!169808) b!313654))

(assert (= (or b!313654 b!313653) bm!25955))

(declare-fun m!323487 () Bool)

(assert (=> b!313655 m!323487))

(assert (=> b!313655 m!323487))

(declare-fun m!323489 () Bool)

(assert (=> b!313655 m!323489))

(assert (=> b!313656 m!323487))

(declare-fun m!323491 () Bool)

(assert (=> b!313656 m!323491))

(declare-fun m!323493 () Bool)

(assert (=> b!313656 m!323493))

(assert (=> b!313656 m!323487))

(declare-fun m!323495 () Bool)

(assert (=> b!313656 m!323495))

(declare-fun m!323497 () Bool)

(assert (=> bm!25955 m!323497))

(assert (=> b!313612 d!68531))

(declare-fun b!313711 () Bool)

(declare-fun e!195487 () SeekEntryResult!2738)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313711 (= e!195487 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!313712 () Bool)

(declare-fun lt!153703 () SeekEntryResult!2738)

(assert (=> b!313712 (and (bvsge (index!13130 lt!153703) #b00000000000000000000000000000000) (bvslt (index!13130 lt!153703) (size!7939 a!3293)))))

(declare-fun res!169817 () Bool)

(assert (=> b!313712 (= res!169817 (= (select (arr!7587 a!3293) (index!13130 lt!153703)) k!2441))))

(declare-fun e!195490 () Bool)

(assert (=> b!313712 (=> res!169817 e!195490)))

(declare-fun e!195488 () Bool)

(assert (=> b!313712 (= e!195488 e!195490)))

(declare-fun b!313713 () Bool)

(declare-fun e!195486 () Bool)

(assert (=> b!313713 (= e!195486 e!195488)))

(declare-fun res!169816 () Bool)

(assert (=> b!313713 (= res!169816 (and (is-Intermediate!2738 lt!153703) (not (undefined!3550 lt!153703)) (bvslt (x!31311 lt!153703) #b01111111111111111111111111111110) (bvsge (x!31311 lt!153703) #b00000000000000000000000000000000) (bvsge (x!31311 lt!153703) #b00000000000000000000000000000000)))))

(assert (=> b!313713 (=> (not res!169816) (not e!195488))))

(declare-fun b!313714 () Bool)

(assert (=> b!313714 (and (bvsge (index!13130 lt!153703) #b00000000000000000000000000000000) (bvslt (index!13130 lt!153703) (size!7939 a!3293)))))

(declare-fun res!169818 () Bool)

(assert (=> b!313714 (= res!169818 (= (select (arr!7587 a!3293) (index!13130 lt!153703)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313714 (=> res!169818 e!195490)))

(declare-fun b!313715 () Bool)

(declare-fun e!195489 () SeekEntryResult!2738)

(assert (=> b!313715 (= e!195489 e!195487)))

(declare-fun c!49558 () Bool)

(declare-fun lt!153704 () (_ BitVec 64))

(assert (=> b!313715 (= c!49558 (or (= lt!153704 k!2441) (= (bvadd lt!153704 lt!153704) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!68537 () Bool)

(assert (=> d!68537 e!195486))

(declare-fun c!49557 () Bool)

(assert (=> d!68537 (= c!49557 (and (is-Intermediate!2738 lt!153703) (undefined!3550 lt!153703)))))

(assert (=> d!68537 (= lt!153703 e!195489)))

(declare-fun c!49559 () Bool)

(assert (=> d!68537 (= c!49559 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68537 (= lt!153704 (select (arr!7587 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68537 (validMask!0 mask!3709)))

(assert (=> d!68537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153703)))

(declare-fun b!313716 () Bool)

(assert (=> b!313716 (= e!195489 (Intermediate!2738 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313717 () Bool)

(assert (=> b!313717 (and (bvsge (index!13130 lt!153703) #b00000000000000000000000000000000) (bvslt (index!13130 lt!153703) (size!7939 a!3293)))))

(assert (=> b!313717 (= e!195490 (= (select (arr!7587 a!3293) (index!13130 lt!153703)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313718 () Bool)

(assert (=> b!313718 (= e!195487 (Intermediate!2738 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313719 () Bool)

(assert (=> b!313719 (= e!195486 (bvsge (x!31311 lt!153703) #b01111111111111111111111111111110))))

(assert (= (and d!68537 c!49559) b!313716))

(assert (= (and d!68537 (not c!49559)) b!313715))

(assert (= (and b!313715 c!49558) b!313718))

(assert (= (and b!313715 (not c!49558)) b!313711))

(assert (= (and d!68537 c!49557) b!313719))

(assert (= (and d!68537 (not c!49557)) b!313713))

(assert (= (and b!313713 res!169816) b!313712))

(assert (= (and b!313712 (not res!169817)) b!313714))

(assert (= (and b!313714 (not res!169818)) b!313717))

(declare-fun m!323519 () Bool)

(assert (=> b!313717 m!323519))

(assert (=> d!68537 m!323455))

(declare-fun m!323521 () Bool)

(assert (=> d!68537 m!323521))

(assert (=> d!68537 m!323451))

(assert (=> b!313714 m!323519))

(assert (=> b!313711 m!323455))

(declare-fun m!323523 () Bool)

(assert (=> b!313711 m!323523))

(assert (=> b!313711 m!323523))

(declare-fun m!323525 () Bool)

(assert (=> b!313711 m!323525))

(assert (=> b!313712 m!323519))

(assert (=> b!313613 d!68537))

(declare-fun d!68545 () Bool)

(declare-fun lt!153710 () (_ BitVec 32))

(declare-fun lt!153709 () (_ BitVec 32))

(assert (=> d!68545 (= lt!153710 (bvmul (bvxor lt!153709 (bvlshr lt!153709 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68545 (= lt!153709 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68545 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169819 (let ((h!5375 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31313 (bvmul (bvxor h!5375 (bvlshr h!5375 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31313 (bvlshr x!31313 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169819 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169819 #b00000000000000000000000000000000))))))

(assert (=> d!68545 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153710 (bvlshr lt!153710 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313613 d!68545))

(declare-fun b!313786 () Bool)

(declare-fun e!195528 () SeekEntryResult!2738)

(assert (=> b!313786 (= e!195528 Undefined!2738)))

(declare-fun b!313787 () Bool)

(declare-fun c!49585 () Bool)

(declare-fun lt!153734 () (_ BitVec 64))

(assert (=> b!313787 (= c!49585 (= lt!153734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195527 () SeekEntryResult!2738)

(declare-fun e!195529 () SeekEntryResult!2738)

(assert (=> b!313787 (= e!195527 e!195529)))

(declare-fun b!313788 () Bool)

(declare-fun lt!153733 () SeekEntryResult!2738)

(assert (=> b!313788 (= e!195527 (Found!2738 (index!13130 lt!153733)))))

(declare-fun d!68553 () Bool)

(declare-fun lt!153735 () SeekEntryResult!2738)

(assert (=> d!68553 (and (or (is-Undefined!2738 lt!153735) (not (is-Found!2738 lt!153735)) (and (bvsge (index!13129 lt!153735) #b00000000000000000000000000000000) (bvslt (index!13129 lt!153735) (size!7939 a!3293)))) (or (is-Undefined!2738 lt!153735) (is-Found!2738 lt!153735) (not (is-MissingZero!2738 lt!153735)) (and (bvsge (index!13128 lt!153735) #b00000000000000000000000000000000) (bvslt (index!13128 lt!153735) (size!7939 a!3293)))) (or (is-Undefined!2738 lt!153735) (is-Found!2738 lt!153735) (is-MissingZero!2738 lt!153735) (not (is-MissingVacant!2738 lt!153735)) (and (bvsge (index!13131 lt!153735) #b00000000000000000000000000000000) (bvslt (index!13131 lt!153735) (size!7939 a!3293)))) (or (is-Undefined!2738 lt!153735) (ite (is-Found!2738 lt!153735) (= (select (arr!7587 a!3293) (index!13129 lt!153735)) k!2441) (ite (is-MissingZero!2738 lt!153735) (= (select (arr!7587 a!3293) (index!13128 lt!153735)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2738 lt!153735) (= (select (arr!7587 a!3293) (index!13131 lt!153735)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68553 (= lt!153735 e!195528)))

(declare-fun c!49584 () Bool)

(assert (=> d!68553 (= c!49584 (and (is-Intermediate!2738 lt!153733) (undefined!3550 lt!153733)))))

(assert (=> d!68553 (= lt!153733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68553 (validMask!0 mask!3709)))

(assert (=> d!68553 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153735)))

(declare-fun b!313789 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16023 (_ BitVec 32)) SeekEntryResult!2738)

(assert (=> b!313789 (= e!195529 (seekKeyOrZeroReturnVacant!0 (x!31311 lt!153733) (index!13130 lt!153733) (index!13130 lt!153733) k!2441 a!3293 mask!3709))))

(declare-fun b!313790 () Bool)

(assert (=> b!313790 (= e!195528 e!195527)))

(assert (=> b!313790 (= lt!153734 (select (arr!7587 a!3293) (index!13130 lt!153733)))))

(declare-fun c!49586 () Bool)

(assert (=> b!313790 (= c!49586 (= lt!153734 k!2441))))

(declare-fun b!313791 () Bool)

(assert (=> b!313791 (= e!195529 (MissingZero!2738 (index!13130 lt!153733)))))

(assert (= (and d!68553 c!49584) b!313786))

(assert (= (and d!68553 (not c!49584)) b!313790))

(assert (= (and b!313790 c!49586) b!313788))

(assert (= (and b!313790 (not c!49586)) b!313787))

(assert (= (and b!313787 c!49585) b!313791))

(assert (= (and b!313787 (not c!49585)) b!313789))

(assert (=> d!68553 m!323455))

(assert (=> d!68553 m!323457))

(declare-fun m!323543 () Bool)

(assert (=> d!68553 m!323543))

(assert (=> d!68553 m!323451))

(declare-fun m!323545 () Bool)

(assert (=> d!68553 m!323545))

(assert (=> d!68553 m!323455))

(declare-fun m!323547 () Bool)

(assert (=> d!68553 m!323547))

(declare-fun m!323549 () Bool)

(assert (=> b!313789 m!323549))

(declare-fun m!323551 () Bool)

(assert (=> b!313790 m!323551))

(assert (=> b!313609 d!68553))

(declare-fun d!68561 () Bool)

(declare-fun res!169844 () Bool)

(declare-fun e!195534 () Bool)

(assert (=> d!68561 (=> res!169844 e!195534)))

(assert (=> d!68561 (= res!169844 (= (select (arr!7587 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68561 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195534)))

(declare-fun b!313796 () Bool)

(declare-fun e!195535 () Bool)

(assert (=> b!313796 (= e!195534 e!195535)))

(declare-fun res!169845 () Bool)

(assert (=> b!313796 (=> (not res!169845) (not e!195535))))

(assert (=> b!313796 (= res!169845 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7939 a!3293)))))

(declare-fun b!313797 () Bool)

(assert (=> b!313797 (= e!195535 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68561 (not res!169844)) b!313796))

(assert (= (and b!313796 res!169845) b!313797))

(assert (=> d!68561 m!323487))

(declare-fun m!323553 () Bool)

(assert (=> b!313797 m!323553))

(assert (=> b!313614 d!68561))

(declare-fun d!68563 () Bool)

(assert (=> d!68563 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31264 d!68563))

(declare-fun d!68569 () Bool)

(assert (=> d!68569 (= (array_inv!5541 a!3293) (bvsge (size!7939 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31264 d!68569))

(push 1)

