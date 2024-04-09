; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81664 () Bool)

(assert start!81664)

(declare-fun b!953109 () Bool)

(declare-fun e!536878 () Bool)

(declare-fun mask!4034 () (_ BitVec 32))

(assert (=> b!953109 (= e!536878 (bvslt mask!4034 #b00000000000000000000000000000000))))

(declare-fun res!638455 () Bool)

(assert (=> start!81664 (=> (not res!638455) (not e!536878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81664 (= res!638455 (validMask!0 mask!4034))))

(assert (=> start!81664 e!536878))

(assert (=> start!81664 true))

(declare-datatypes ((array!57719 0))(
  ( (array!57720 (arr!27743 (Array (_ BitVec 32) (_ BitVec 64))) (size!28223 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57719)

(declare-fun array_inv!21476 (array!57719) Bool)

(assert (=> start!81664 (array_inv!21476 a!3460)))

(declare-fun b!953106 () Bool)

(declare-fun res!638453 () Bool)

(assert (=> b!953106 (=> (not res!638453) (not e!536878))))

(assert (=> b!953106 (= res!638453 (= (size!28223 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953108 () Bool)

(declare-fun res!638456 () Bool)

(assert (=> b!953108 (=> (not res!638456) (not e!536878))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953108 (= res!638456 (validKeyInArray!0 k!2725))))

(declare-fun b!953107 () Bool)

(declare-fun res!638454 () Bool)

(assert (=> b!953107 (=> (not res!638454) (not e!536878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57719 (_ BitVec 32)) Bool)

(assert (=> b!953107 (= res!638454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81664 res!638455) b!953106))

(assert (= (and b!953106 res!638453) b!953107))

(assert (= (and b!953107 res!638454) b!953108))

(assert (= (and b!953108 res!638456) b!953109))

(declare-fun m!885293 () Bool)

(assert (=> start!81664 m!885293))

(declare-fun m!885295 () Bool)

(assert (=> start!81664 m!885295))

(declare-fun m!885297 () Bool)

(assert (=> b!953108 m!885297))

(declare-fun m!885299 () Bool)

(assert (=> b!953107 m!885299))

(push 1)

(assert (not start!81664))

(assert (not b!953107))

(assert (not b!953108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!115567 () Bool)

(assert (=> d!115567 (= (validMask!0 mask!4034) (and (or (= mask!4034 #b00000000000000000000000000000111) (= mask!4034 #b00000000000000000000000000001111) (= mask!4034 #b00000000000000000000000000011111) (= mask!4034 #b00000000000000000000000000111111) (= mask!4034 #b00000000000000000000000001111111) (= mask!4034 #b00000000000000000000000011111111) (= mask!4034 #b00000000000000000000000111111111) (= mask!4034 #b00000000000000000000001111111111) (= mask!4034 #b00000000000000000000011111111111) (= mask!4034 #b00000000000000000000111111111111) (= mask!4034 #b00000000000000000001111111111111) (= mask!4034 #b00000000000000000011111111111111) (= mask!4034 #b00000000000000000111111111111111) (= mask!4034 #b00000000000000001111111111111111) (= mask!4034 #b00000000000000011111111111111111) (= mask!4034 #b00000000000000111111111111111111) (= mask!4034 #b00000000000001111111111111111111) (= mask!4034 #b00000000000011111111111111111111) (= mask!4034 #b00000000000111111111111111111111) (= mask!4034 #b00000000001111111111111111111111) (= mask!4034 #b00000000011111111111111111111111) (= mask!4034 #b00000000111111111111111111111111) (= mask!4034 #b00000001111111111111111111111111) (= mask!4034 #b00000011111111111111111111111111) (= mask!4034 #b00000111111111111111111111111111) (= mask!4034 #b00001111111111111111111111111111) (= mask!4034 #b00011111111111111111111111111111) (= mask!4034 #b00111111111111111111111111111111)) (bvsle mask!4034 #b00111111111111111111111111111111)))))

(assert (=> start!81664 d!115567))

(declare-fun d!115575 () Bool)

(assert (=> d!115575 (= (array_inv!21476 a!3460) (bvsge (size!28223 a!3460) #b00000000000000000000000000000000))))

(assert (=> start!81664 d!115575))

(declare-fun d!115577 () Bool)

(declare-fun res!638495 () Bool)

(declare-fun e!536912 () Bool)

(assert (=> d!115577 (=> res!638495 e!536912)))

(assert (=> d!115577 (= res!638495 (bvsge #b00000000000000000000000000000000 (size!28223 a!3460)))))

(assert (=> d!115577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034) e!536912)))

(declare-fun b!953162 () Bool)

(declare-fun e!536914 () Bool)

(declare-fun call!41656 () Bool)

(assert (=> b!953162 (= e!536914 call!41656)))

(declare-fun b!953163 () Bool)

(assert (=> b!953163 (= e!536912 e!536914)))

(declare-fun c!99708 () Bool)

(assert (=> b!953163 (= c!99708 (validKeyInArray!0 (select (arr!27743 a!3460) #b00000000000000000000000000000000)))))

(declare-fun bm!41653 () Bool)

(assert (=> bm!41653 (= call!41656 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3460 mask!4034))))

(declare-fun b!953164 () Bool)

(declare-fun e!536913 () Bool)

(assert (=> b!953164 (= e!536914 e!536913)))

(declare-fun lt!429618 () (_ BitVec 64))

(assert (=> b!953164 (= lt!429618 (select (arr!27743 a!3460) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32073 0))(
  ( (Unit!32074) )
))
(declare-fun lt!429616 () Unit!32073)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57719 (_ BitVec 64) (_ BitVec 32)) Unit!32073)

(assert (=> b!953164 (= lt!429616 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3460 lt!429618 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953164 (arrayContainsKey!0 a!3460 lt!429618 #b00000000000000000000000000000000)))

(declare-fun lt!429617 () Unit!32073)

(assert (=> b!953164 (= lt!429617 lt!429616)))

(declare-fun res!638496 () Bool)

(declare-datatypes ((SeekEntryResult!9158 0))(
  ( (MissingZero!9158 (index!39002 (_ BitVec 32))) (Found!9158 (index!39003 (_ BitVec 32))) (Intermediate!9158 (undefined!9970 Bool) (index!39004 (_ BitVec 32)) (x!82007 (_ BitVec 32))) (Undefined!9158) (MissingVacant!9158 (index!39005 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57719 (_ BitVec 32)) SeekEntryResult!9158)

(assert (=> b!953164 (= res!638496 (= (seekEntryOrOpen!0 (select (arr!27743 a!3460) #b00000000000000000000000000000000) a!3460 mask!4034) (Found!9158 #b00000000000000000000000000000000)))))

(assert (=> b!953164 (=> (not res!638496) (not e!536913))))

(declare-fun b!953165 () Bool)

(assert (=> b!953165 (= e!536913 call!41656)))

(assert (= (and d!115577 (not res!638495)) b!953163))

(assert (= (and b!953163 c!99708) b!953164))

(assert (= (and b!953163 (not c!99708)) b!953162))

(assert (= (and b!953164 res!638496) b!953165))

(assert (= (or b!953165 b!953162) bm!41653))

(declare-fun m!885329 () Bool)

(assert (=> b!953163 m!885329))

(assert (=> b!953163 m!885329))

(declare-fun m!885331 () Bool)

(assert (=> b!953163 m!885331))

(declare-fun m!885333 () Bool)

(assert (=> bm!41653 m!885333))

(assert (=> b!953164 m!885329))

(declare-fun m!885335 () Bool)

(assert (=> b!953164 m!885335))

(declare-fun m!885337 () Bool)

(assert (=> b!953164 m!885337))

(assert (=> b!953164 m!885329))

(declare-fun m!885339 () Bool)

(assert (=> b!953164 m!885339))

(assert (=> b!953107 d!115577))

(declare-fun d!115583 () Bool)

(assert (=> d!115583 (= (validKeyInArray!0 k!2725) (and (not (= k!2725 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2725 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!953108 d!115583))

(push 1)

(assert (not bm!41653))

(assert (not b!953164))

(assert (not b!953163))

(check-sat)

