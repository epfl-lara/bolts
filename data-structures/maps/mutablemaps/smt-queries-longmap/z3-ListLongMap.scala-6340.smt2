; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81726 () Bool)

(assert start!81726)

(declare-fun b!953339 () Bool)

(declare-fun res!638670 () Bool)

(declare-fun e!537018 () Bool)

(assert (=> b!953339 (=> (not res!638670) (not e!537018))))

(declare-datatypes ((array!57760 0))(
  ( (array!57761 (arr!27762 (Array (_ BitVec 32) (_ BitVec 64))) (size!28242 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57760)

(declare-fun mask!4034 () (_ BitVec 32))

(assert (=> b!953339 (= res!638670 (= (size!28242 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953340 () Bool)

(declare-fun res!638669 () Bool)

(assert (=> b!953340 (=> (not res!638669) (not e!537018))))

(declare-fun k0!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953340 (= res!638669 (validKeyInArray!0 k0!2725))))

(declare-fun b!953341 () Bool)

(declare-datatypes ((SeekEntryResult!9170 0))(
  ( (MissingZero!9170 (index!39050 (_ BitVec 32))) (Found!9170 (index!39051 (_ BitVec 32))) (Intermediate!9170 (undefined!9982 Bool) (index!39052 (_ BitVec 32)) (x!82067 (_ BitVec 32))) (Undefined!9170) (MissingVacant!9170 (index!39053 (_ BitVec 32))) )
))
(declare-fun lt!429672 () SeekEntryResult!9170)

(declare-fun i!1375 () (_ BitVec 32))

(get-info :version)

(assert (=> b!953341 (= e!537018 (or (not ((_ is Found!9170) lt!429672)) (not (= (index!39051 lt!429672) i!1375))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57760 (_ BitVec 32)) SeekEntryResult!9170)

(assert (=> b!953341 (= lt!429672 (seekEntry!0 k0!2725 a!3460 mask!4034))))

(declare-fun b!953342 () Bool)

(declare-fun res!638668 () Bool)

(assert (=> b!953342 (=> (not res!638668) (not e!537018))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57760 (_ BitVec 32)) SeekEntryResult!9170)

(assert (=> b!953342 (= res!638668 (= (seekEntryOrOpen!0 k0!2725 a!3460 mask!4034) (Found!9170 i!1375)))))

(declare-fun b!953343 () Bool)

(declare-fun res!638672 () Bool)

(assert (=> b!953343 (=> (not res!638672) (not e!537018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57760 (_ BitVec 32)) Bool)

(assert (=> b!953343 (= res!638672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638671 () Bool)

(assert (=> start!81726 (=> (not res!638671) (not e!537018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81726 (= res!638671 (validMask!0 mask!4034))))

(assert (=> start!81726 e!537018))

(assert (=> start!81726 true))

(declare-fun array_inv!21495 (array!57760) Bool)

(assert (=> start!81726 (array_inv!21495 a!3460)))

(assert (= (and start!81726 res!638671) b!953339))

(assert (= (and b!953339 res!638670) b!953343))

(assert (= (and b!953343 res!638672) b!953340))

(assert (= (and b!953340 res!638669) b!953342))

(assert (= (and b!953342 res!638668) b!953341))

(declare-fun m!885491 () Bool)

(assert (=> b!953343 m!885491))

(declare-fun m!885493 () Bool)

(assert (=> b!953342 m!885493))

(declare-fun m!885495 () Bool)

(assert (=> b!953340 m!885495))

(declare-fun m!885497 () Bool)

(assert (=> b!953341 m!885497))

(declare-fun m!885499 () Bool)

(assert (=> start!81726 m!885499))

(declare-fun m!885501 () Bool)

(assert (=> start!81726 m!885501))

(check-sat (not start!81726) (not b!953341) (not b!953342) (not b!953340) (not b!953343))
(check-sat)
(get-model)

(declare-fun bm!41657 () Bool)

(declare-fun call!41660 () Bool)

(assert (=> bm!41657 (= call!41660 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3460 mask!4034))))

(declare-fun b!953367 () Bool)

(declare-fun e!537032 () Bool)

(declare-fun e!537033 () Bool)

(assert (=> b!953367 (= e!537032 e!537033)))

(declare-fun lt!429683 () (_ BitVec 64))

(assert (=> b!953367 (= lt!429683 (select (arr!27762 a!3460) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32079 0))(
  ( (Unit!32080) )
))
(declare-fun lt!429682 () Unit!32079)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57760 (_ BitVec 64) (_ BitVec 32)) Unit!32079)

(assert (=> b!953367 (= lt!429682 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3460 lt!429683 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953367 (arrayContainsKey!0 a!3460 lt!429683 #b00000000000000000000000000000000)))

(declare-fun lt!429684 () Unit!32079)

(assert (=> b!953367 (= lt!429684 lt!429682)))

(declare-fun res!638692 () Bool)

(assert (=> b!953367 (= res!638692 (= (seekEntryOrOpen!0 (select (arr!27762 a!3460) #b00000000000000000000000000000000) a!3460 mask!4034) (Found!9170 #b00000000000000000000000000000000)))))

(assert (=> b!953367 (=> (not res!638692) (not e!537033))))

(declare-fun d!115599 () Bool)

(declare-fun res!638693 () Bool)

(declare-fun e!537034 () Bool)

(assert (=> d!115599 (=> res!638693 e!537034)))

(assert (=> d!115599 (= res!638693 (bvsge #b00000000000000000000000000000000 (size!28242 a!3460)))))

(assert (=> d!115599 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034) e!537034)))

(declare-fun b!953368 () Bool)

(assert (=> b!953368 (= e!537032 call!41660)))

(declare-fun b!953369 () Bool)

(assert (=> b!953369 (= e!537034 e!537032)))

(declare-fun c!99712 () Bool)

(assert (=> b!953369 (= c!99712 (validKeyInArray!0 (select (arr!27762 a!3460) #b00000000000000000000000000000000)))))

(declare-fun b!953370 () Bool)

(assert (=> b!953370 (= e!537033 call!41660)))

(assert (= (and d!115599 (not res!638693)) b!953369))

(assert (= (and b!953369 c!99712) b!953367))

(assert (= (and b!953369 (not c!99712)) b!953368))

(assert (= (and b!953367 res!638692) b!953370))

(assert (= (or b!953370 b!953368) bm!41657))

(declare-fun m!885515 () Bool)

(assert (=> bm!41657 m!885515))

(declare-fun m!885517 () Bool)

(assert (=> b!953367 m!885517))

(declare-fun m!885519 () Bool)

(assert (=> b!953367 m!885519))

(declare-fun m!885521 () Bool)

(assert (=> b!953367 m!885521))

(assert (=> b!953367 m!885517))

(declare-fun m!885523 () Bool)

(assert (=> b!953367 m!885523))

(assert (=> b!953369 m!885517))

(assert (=> b!953369 m!885517))

(declare-fun m!885525 () Bool)

(assert (=> b!953369 m!885525))

(assert (=> b!953343 d!115599))

(declare-fun b!953425 () Bool)

(declare-fun c!99737 () Bool)

(declare-fun lt!429721 () (_ BitVec 64))

(assert (=> b!953425 (= c!99737 (= lt!429721 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!537065 () SeekEntryResult!9170)

(declare-fun e!537067 () SeekEntryResult!9170)

(assert (=> b!953425 (= e!537065 e!537067)))

(declare-fun d!115605 () Bool)

(declare-fun lt!429720 () SeekEntryResult!9170)

(assert (=> d!115605 (and (or ((_ is Undefined!9170) lt!429720) (not ((_ is Found!9170) lt!429720)) (and (bvsge (index!39051 lt!429720) #b00000000000000000000000000000000) (bvslt (index!39051 lt!429720) (size!28242 a!3460)))) (or ((_ is Undefined!9170) lt!429720) ((_ is Found!9170) lt!429720) (not ((_ is MissingZero!9170) lt!429720)) (and (bvsge (index!39050 lt!429720) #b00000000000000000000000000000000) (bvslt (index!39050 lt!429720) (size!28242 a!3460)))) (or ((_ is Undefined!9170) lt!429720) ((_ is Found!9170) lt!429720) ((_ is MissingZero!9170) lt!429720) (not ((_ is MissingVacant!9170) lt!429720)) (and (bvsge (index!39053 lt!429720) #b00000000000000000000000000000000) (bvslt (index!39053 lt!429720) (size!28242 a!3460)))) (or ((_ is Undefined!9170) lt!429720) (ite ((_ is Found!9170) lt!429720) (= (select (arr!27762 a!3460) (index!39051 lt!429720)) k0!2725) (ite ((_ is MissingZero!9170) lt!429720) (= (select (arr!27762 a!3460) (index!39050 lt!429720)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9170) lt!429720) (= (select (arr!27762 a!3460) (index!39053 lt!429720)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!537066 () SeekEntryResult!9170)

(assert (=> d!115605 (= lt!429720 e!537066)))

(declare-fun c!99738 () Bool)

(declare-fun lt!429722 () SeekEntryResult!9170)

(assert (=> d!115605 (= c!99738 (and ((_ is Intermediate!9170) lt!429722) (undefined!9982 lt!429722)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57760 (_ BitVec 32)) SeekEntryResult!9170)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115605 (= lt!429722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2725 mask!4034) k0!2725 a!3460 mask!4034))))

(assert (=> d!115605 (validMask!0 mask!4034)))

(assert (=> d!115605 (= (seekEntryOrOpen!0 k0!2725 a!3460 mask!4034) lt!429720)))

(declare-fun b!953426 () Bool)

(assert (=> b!953426 (= e!537066 e!537065)))

(assert (=> b!953426 (= lt!429721 (select (arr!27762 a!3460) (index!39052 lt!429722)))))

(declare-fun c!99739 () Bool)

(assert (=> b!953426 (= c!99739 (= lt!429721 k0!2725))))

(declare-fun b!953427 () Bool)

(assert (=> b!953427 (= e!537067 (MissingZero!9170 (index!39052 lt!429722)))))

(declare-fun b!953428 () Bool)

(assert (=> b!953428 (= e!537065 (Found!9170 (index!39052 lt!429722)))))

(declare-fun b!953429 () Bool)

(assert (=> b!953429 (= e!537066 Undefined!9170)))

