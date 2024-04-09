; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81724 () Bool)

(assert start!81724)

(declare-fun res!638654 () Bool)

(declare-fun e!537012 () Bool)

(assert (=> start!81724 (=> (not res!638654) (not e!537012))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81724 (= res!638654 (validMask!0 mask!4034))))

(assert (=> start!81724 e!537012))

(assert (=> start!81724 true))

(declare-datatypes ((array!57758 0))(
  ( (array!57759 (arr!27761 (Array (_ BitVec 32) (_ BitVec 64))) (size!28241 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57758)

(declare-fun array_inv!21494 (array!57758) Bool)

(assert (=> start!81724 (array_inv!21494 a!3460)))

(declare-fun b!953324 () Bool)

(declare-datatypes ((SeekEntryResult!9169 0))(
  ( (MissingZero!9169 (index!39046 (_ BitVec 32))) (Found!9169 (index!39047 (_ BitVec 32))) (Intermediate!9169 (undefined!9981 Bool) (index!39048 (_ BitVec 32)) (x!82066 (_ BitVec 32))) (Undefined!9169) (MissingVacant!9169 (index!39049 (_ BitVec 32))) )
))
(declare-fun lt!429669 () SeekEntryResult!9169)

(declare-fun i!1375 () (_ BitVec 32))

(assert (=> b!953324 (= e!537012 (or (not (is-Found!9169 lt!429669)) (not (= (index!39047 lt!429669) i!1375))))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57758 (_ BitVec 32)) SeekEntryResult!9169)

(assert (=> b!953324 (= lt!429669 (seekEntry!0 k!2725 a!3460 mask!4034))))

(declare-fun b!953325 () Bool)

(declare-fun res!638653 () Bool)

(assert (=> b!953325 (=> (not res!638653) (not e!537012))))

(assert (=> b!953325 (= res!638653 (= (size!28241 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953326 () Bool)

(declare-fun res!638657 () Bool)

(assert (=> b!953326 (=> (not res!638657) (not e!537012))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57758 (_ BitVec 32)) SeekEntryResult!9169)

(assert (=> b!953326 (= res!638657 (= (seekEntryOrOpen!0 k!2725 a!3460 mask!4034) (Found!9169 i!1375)))))

(declare-fun b!953327 () Bool)

(declare-fun res!638655 () Bool)

(assert (=> b!953327 (=> (not res!638655) (not e!537012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953327 (= res!638655 (validKeyInArray!0 k!2725))))

(declare-fun b!953328 () Bool)

(declare-fun res!638656 () Bool)

(assert (=> b!953328 (=> (not res!638656) (not e!537012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57758 (_ BitVec 32)) Bool)

(assert (=> b!953328 (= res!638656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81724 res!638654) b!953325))

(assert (= (and b!953325 res!638653) b!953328))

(assert (= (and b!953328 res!638656) b!953327))

(assert (= (and b!953327 res!638655) b!953326))

(assert (= (and b!953326 res!638657) b!953324))

(declare-fun m!885479 () Bool)

(assert (=> b!953328 m!885479))

(declare-fun m!885481 () Bool)

(assert (=> b!953324 m!885481))

(declare-fun m!885483 () Bool)

(assert (=> b!953327 m!885483))

(declare-fun m!885485 () Bool)

(assert (=> start!81724 m!885485))

(declare-fun m!885487 () Bool)

(assert (=> start!81724 m!885487))

(declare-fun m!885489 () Bool)

(assert (=> b!953326 m!885489))

(push 1)

(assert (not b!953328))

(assert (not b!953327))

(assert (not start!81724))

(assert (not b!953326))

(assert (not b!953324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!953383 () Bool)

(declare-fun e!537042 () SeekEntryResult!9169)

(declare-fun lt!429696 () SeekEntryResult!9169)

(assert (=> b!953383 (= e!537042 (Found!9169 (index!39048 lt!429696)))))

(declare-fun b!953384 () Bool)

(declare-fun e!537043 () SeekEntryResult!9169)

(assert (=> b!953384 (= e!537043 e!537042)))

(declare-fun lt!429694 () (_ BitVec 64))

(assert (=> b!953384 (= lt!429694 (select (arr!27761 a!3460) (index!39048 lt!429696)))))

(declare-fun c!99719 () Bool)

(assert (=> b!953384 (= c!99719 (= lt!429694 k!2725))))

(declare-fun b!953385 () Bool)

(assert (=> b!953385 (= e!537043 Undefined!9169)))

(declare-fun d!115601 () Bool)

(declare-fun lt!429693 () SeekEntryResult!9169)

(assert (=> d!115601 (and (or (is-MissingVacant!9169 lt!429693) (not (is-Found!9169 lt!429693)) (and (bvsge (index!39047 lt!429693) #b00000000000000000000000000000000) (bvslt (index!39047 lt!429693) (size!28241 a!3460)))) (not (is-MissingVacant!9169 lt!429693)) (or (not (is-Found!9169 lt!429693)) (= (select (arr!27761 a!3460) (index!39047 lt!429693)) k!2725)))))

(assert (=> d!115601 (= lt!429693 e!537043)))

(declare-fun c!99720 () Bool)

(assert (=> d!115601 (= c!99720 (and (is-Intermediate!9169 lt!429696) (undefined!9981 lt!429696)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57758 (_ BitVec 32)) SeekEntryResult!9169)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115601 (= lt!429696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2725 mask!4034) k!2725 a!3460 mask!4034))))

(assert (=> d!115601 (validMask!0 mask!4034)))

(assert (=> d!115601 (= (seekEntry!0 k!2725 a!3460 mask!4034) lt!429693)))

(declare-fun b!953386 () Bool)

(declare-fun e!537041 () SeekEntryResult!9169)

(declare-fun lt!429695 () SeekEntryResult!9169)

(assert (=> b!953386 (= e!537041 (ite (is-MissingVacant!9169 lt!429695) (MissingZero!9169 (index!39049 lt!429695)) lt!429695))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57758 (_ BitVec 32)) SeekEntryResult!9169)

(assert (=> b!953386 (= lt!429695 (seekKeyOrZeroReturnVacant!0 (x!82066 lt!429696) (index!39048 lt!429696) (index!39048 lt!429696) k!2725 a!3460 mask!4034))))

(declare-fun b!953387 () Bool)

(declare-fun c!99721 () Bool)

(assert (=> b!953387 (= c!99721 (= lt!429694 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!953387 (= e!537042 e!537041)))

(declare-fun b!953388 () Bool)

(assert (=> b!953388 (= e!537041 (MissingZero!9169 (index!39048 lt!429696)))))

(assert (= (and d!115601 c!99720) b!953385))

(assert (= (and d!115601 (not c!99720)) b!953384))

(assert (= (and b!953384 c!99719) b!953383))

(assert (= (and b!953384 (not c!99719)) b!953387))

(assert (= (and b!953387 c!99721) b!953388))

(assert (= (and b!953387 (not c!99721)) b!953386))

(declare-fun m!885527 () Bool)

(assert (=> b!953384 m!885527))

(declare-fun m!885529 () Bool)

(assert (=> d!115601 m!885529))

(declare-fun m!885531 () Bool)

(assert (=> d!115601 m!885531))

(assert (=> d!115601 m!885531))

(declare-fun m!885533 () Bool)

(assert (=> d!115601 m!885533))

(assert (=> d!115601 m!885485))

(declare-fun m!885535 () Bool)

(assert (=> b!953386 m!885535))

(assert (=> b!953324 d!115601))

(declare-fun b!953397 () Bool)

(declare-fun e!537050 () Bool)

(declare-fun e!537051 () Bool)

(assert (=> b!953397 (= e!537050 e!537051)))

(declare-fun lt!429703 () (_ BitVec 64))

(assert (=> b!953397 (= lt!429703 (select (arr!27761 a!3460) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32077 0))(
  ( (Unit!32078) )
))
(declare-fun lt!429704 () Unit!32077)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57758 (_ BitVec 64) (_ BitVec 32)) Unit!32077)

(assert (=> b!953397 (= lt!429704 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3460 lt!429703 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953397 (arrayContainsKey!0 a!3460 lt!429703 #b00000000000000000000000000000000)))

(declare-fun lt!429705 () Unit!32077)

(assert (=> b!953397 (= lt!429705 lt!429704)))

(declare-fun res!638699 () Bool)

(assert (=> b!953397 (= res!638699 (= (seekEntryOrOpen!0 (select (arr!27761 a!3460) #b00000000000000000000000000000000) a!3460 mask!4034) (Found!9169 #b00000000000000000000000000000000)))))

(assert (=> b!953397 (=> (not res!638699) (not e!537051))))

(declare-fun bm!41660 () Bool)

(declare-fun call!41663 () Bool)

(assert (=> bm!41660 (= call!41663 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3460 mask!4034))))

(declare-fun d!115607 () Bool)

(declare-fun res!638698 () Bool)

(declare-fun e!537052 () Bool)

(assert (=> d!115607 (=> res!638698 e!537052)))

(assert (=> d!115607 (= res!638698 (bvsge #b00000000000000000000000000000000 (size!28241 a!3460)))))

(assert (=> d!115607 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034) e!537052)))

(declare-fun b!953398 () Bool)

(assert (=> b!953398 (= e!537052 e!537050)))

(declare-fun c!99724 () Bool)

(assert (=> b!953398 (= c!99724 (validKeyInArray!0 (select (arr!27761 a!3460) #b00000000000000000000000000000000)))))

(declare-fun b!953399 () Bool)

(assert (=> b!953399 (= e!537051 call!41663)))

(declare-fun b!953400 () Bool)

(assert (=> b!953400 (= e!537050 call!41663)))

(assert (= (and d!115607 (not res!638698)) b!953398))

(assert (= (and b!953398 c!99724) b!953397))

(assert (= (and b!953398 (not c!99724)) b!953400))

(assert (= (and b!953397 res!638699) b!953399))

(assert (= (or b!953399 b!953400) bm!41660))

(declare-fun m!885537 () Bool)

(assert (=> b!953397 m!885537))

(declare-fun m!885539 () Bool)

(assert (=> b!953397 m!885539))

(declare-fun m!885541 () Bool)

(assert (=> b!953397 m!885541))

(assert (=> b!953397 m!885537))

(declare-fun m!885543 () Bool)

(assert (=> b!953397 m!885543))

(declare-fun m!885545 () Bool)

(assert (=> bm!41660 m!885545))

(assert (=> b!953398 m!885537))

(assert (=> b!953398 m!885537))

(declare-fun m!885547 () Bool)

(assert (=> b!953398 m!885547))

(assert (=> b!953328 d!115607))

(declare-fun d!115613 () Bool)

(assert (=> d!115613 (= (validKeyInArray!0 k!2725) (and (not (= k!2725 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2725 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!953327 d!115613))

(declare-fun d!115615 () Bool)

(assert (=> d!115615 (= (validMask!0 mask!4034) (and (or (= mask!4034 #b00000000000000000000000000000111) (= mask!4034 #b00000000000000000000000000001111) (= mask!4034 #b00000000000000000000000000011111) (= mask!4034 #b00000000000000000000000000111111) (= mask!4034 #b00000000000000000000000001111111) (= mask!4034 #b00000000000000000000000011111111) (= mask!4034 #b00000000000000000000000111111111) (= mask!4034 #b00000000000000000000001111111111) (= mask!4034 #b00000000000000000000011111111111) (= mask!4034 #b00000000000000000000111111111111) (= mask!4034 #b00000000000000000001111111111111) (= mask!4034 #b00000000000000000011111111111111) (= mask!4034 #b00000000000000000111111111111111) (= mask!4034 #b00000000000000001111111111111111) (= mask!4034 #b00000000000000011111111111111111) (= mask!4034 #b00000000000000111111111111111111) (= mask!4034 #b00000000000001111111111111111111) (= mask!4034 #b00000000000011111111111111111111) (= mask!4034 #b00000000000111111111111111111111) (= mask!4034 #b00000000001111111111111111111111) (= mask!4034 #b00000000011111111111111111111111) (= mask!4034 #b00000000111111111111111111111111) (= mask!4034 #b00000001111111111111111111111111) (= mask!4034 #b00000011111111111111111111111111) (= mask!4034 #b00000111111111111111111111111111) (= mask!4034 #b00001111111111111111111111111111) (= mask!4034 #b00011111111111111111111111111111) (= mask!4034 #b00111111111111111111111111111111)) (bvsle mask!4034 #b00111111111111111111111111111111)))))

(assert (=> start!81724 d!115615))

(declare-fun d!115617 () Bool)

(assert (=> d!115617 (= (array_inv!21494 a!3460) (bvsge (size!28241 a!3460) #b00000000000000000000000000000000))))

(assert (=> start!81724 d!115617))

(declare-fun b!953449 () Bool)

(declare-fun e!537078 () SeekEntryResult!9169)

(declare-fun e!537079 () SeekEntryResult!9169)

(assert (=> b!953449 (= e!537078 e!537079)))

(declare-fun lt!429733 () (_ BitVec 64))

(declare-fun lt!429734 () SeekEntryResult!9169)

(assert (=> b!953449 (= lt!429733 (select (arr!27761 a!3460) (index!39048 lt!429734)))))

(declare-fun c!99749 () Bool)

(assert (=> b!953449 (= c!99749 (= lt!429733 k!2725))))

(declare-fun b!953450 () Bool)

(declare-fun c!99750 () Bool)

(assert (=> b!953450 (= c!99750 (= lt!429733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!537077 () SeekEntryResult!9169)

(assert (=> b!953450 (= e!537079 e!537077)))

(declare-fun b!953451 () Bool)

(assert (=> b!953451 (= e!537079 (Found!9169 (index!39048 lt!429734)))))

(declare-fun b!953452 () Bool)

(assert (=> b!953452 (= e!537078 Undefined!9169)))

(declare-fun b!953453 () Bool)

(assert (=> b!953453 (= e!537077 (MissingZero!9169 (index!39048 lt!429734)))))

(declare-fun d!115619 () Bool)

(declare-fun lt!429735 () SeekEntryResult!9169)

(assert (=> d!115619 (and (or (is-Undefined!9169 lt!429735) (not (is-Found!9169 lt!429735)) (and (bvsge (index!39047 lt!429735) #b00000000000000000000000000000000) (bvslt (index!39047 lt!429735) (size!28241 a!3460)))) (or (is-Undefined!9169 lt!429735) (is-Found!9169 lt!429735) (not (is-MissingZero!9169 lt!429735)) (and (bvsge (index!39046 lt!429735) #b00000000000000000000000000000000) (bvslt (index!39046 lt!429735) (size!28241 a!3460)))) (or (is-Undefined!9169 lt!429735) (is-Found!9169 lt!429735) (is-MissingZero!9169 lt!429735) (not (is-MissingVacant!9169 lt!429735)) (and (bvsge (index!39049 lt!429735) #b00000000000000000000000000000000) (bvslt (index!39049 lt!429735) (size!28241 a!3460)))) (or (is-Undefined!9169 lt!429735) (ite (is-Found!9169 lt!429735) (= (select (arr!27761 a!3460) (index!39047 lt!429735)) k!2725) (ite (is-MissingZero!9169 lt!429735) (= (select (arr!27761 a!3460) (index!39046 lt!429735)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9169 lt!429735) (= (select (arr!27761 a!3460) (index!39049 lt!429735)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!115619 (= lt!429735 e!537078)))

(declare-fun c!99751 () Bool)

(assert (=> d!115619 (= c!99751 (and (is-Intermediate!9169 lt!429734) (undefined!9981 lt!429734)))))

(assert (=> d!115619 (= lt!429734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2725 mask!4034) k!2725 a!3460 mask!4034))))

(assert (=> d!115619 (validMask!0 mask!4034)))

(assert (=> d!115619 (= (seekEntryOrOpen!0 k!2725 a!3460 mask!4034) lt!429735)))

(declare-fun b!953454 () Bool)

(assert (=> b!953454 (= e!537077 (seekKeyOrZeroReturnVacant!0 (x!82066 lt!429734) (index!39048 lt!429734) (index!39048 lt!429734) k!2725 a!3460 mask!4034))))

(assert (= (and d!115619 c!99751) b!953452))

(assert (= (and d!115619 (not c!99751)) b!953449))

(assert (= (and b!953449 c!99749) b!953451))

(assert (= (and b!953449 (not c!99749)) b!953450))

(assert (= (and b!953450 c!99750) b!953453))

(assert (= (and b!953450 (not c!99750)) b!953454))

(declare-fun m!885573 () Bool)

(assert (=> b!953449 m!885573))

(declare-fun m!885575 () Bool)

(assert (=> d!115619 m!885575))

(assert (=> d!115619 m!885485))

(declare-fun m!885577 () Bool)

(assert (=> d!115619 m!885577))

(declare-fun m!885579 () Bool)

(assert (=> d!115619 m!885579))

(assert (=> d!115619 m!885531))

(assert (=> d!115619 m!885531))

(assert (=> d!115619 m!885533))

(declare-fun m!885581 () Bool)

(assert (=> b!953454 m!885581))

(assert (=> b!953326 d!115619))

(push 1)

(assert (not d!115619))

(assert (not bm!41660))

(assert (not b!953386))

(assert (not d!115601))

(assert (not b!953397))

(assert (not b!953454))

(assert (not b!953398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

