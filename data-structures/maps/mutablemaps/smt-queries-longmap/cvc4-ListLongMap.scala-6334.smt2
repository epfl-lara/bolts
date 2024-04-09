; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81668 () Bool)

(assert start!81668)

(declare-fun b!953130 () Bool)

(declare-fun res!638479 () Bool)

(declare-fun e!536889 () Bool)

(assert (=> b!953130 (=> (not res!638479) (not e!536889))))

(declare-datatypes ((array!57723 0))(
  ( (array!57724 (arr!27745 (Array (_ BitVec 32) (_ BitVec 64))) (size!28225 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57723)

(declare-fun mask!4034 () (_ BitVec 32))

(assert (=> b!953130 (= res!638479 (= (size!28225 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953132 () Bool)

(declare-fun res!638478 () Bool)

(assert (=> b!953132 (=> (not res!638478) (not e!536889))))

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953132 (= res!638478 (validKeyInArray!0 k!2725))))

(declare-fun b!953131 () Bool)

(declare-fun res!638480 () Bool)

(assert (=> b!953131 (=> (not res!638480) (not e!536889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57723 (_ BitVec 32)) Bool)

(assert (=> b!953131 (= res!638480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun b!953133 () Bool)

(assert (=> b!953133 (= e!536889 (bvslt mask!4034 #b00000000000000000000000000000000))))

(declare-fun res!638477 () Bool)

(assert (=> start!81668 (=> (not res!638477) (not e!536889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81668 (= res!638477 (validMask!0 mask!4034))))

(assert (=> start!81668 e!536889))

(assert (=> start!81668 true))

(declare-fun array_inv!21478 (array!57723) Bool)

(assert (=> start!81668 (array_inv!21478 a!3460)))

(assert (= (and start!81668 res!638477) b!953130))

(assert (= (and b!953130 res!638479) b!953131))

(assert (= (and b!953131 res!638480) b!953132))

(assert (= (and b!953132 res!638478) b!953133))

(declare-fun m!885309 () Bool)

(assert (=> b!953132 m!885309))

(declare-fun m!885311 () Bool)

(assert (=> b!953131 m!885311))

(declare-fun m!885313 () Bool)

(assert (=> start!81668 m!885313))

(declare-fun m!885315 () Bool)

(assert (=> start!81668 m!885315))

(push 1)

(assert (not start!81668))

(assert (not b!953131))

(assert (not b!953132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!115569 () Bool)

(assert (=> d!115569 (= (validMask!0 mask!4034) (and (or (= mask!4034 #b00000000000000000000000000000111) (= mask!4034 #b00000000000000000000000000001111) (= mask!4034 #b00000000000000000000000000011111) (= mask!4034 #b00000000000000000000000000111111) (= mask!4034 #b00000000000000000000000001111111) (= mask!4034 #b00000000000000000000000011111111) (= mask!4034 #b00000000000000000000000111111111) (= mask!4034 #b00000000000000000000001111111111) (= mask!4034 #b00000000000000000000011111111111) (= mask!4034 #b00000000000000000000111111111111) (= mask!4034 #b00000000000000000001111111111111) (= mask!4034 #b00000000000000000011111111111111) (= mask!4034 #b00000000000000000111111111111111) (= mask!4034 #b00000000000000001111111111111111) (= mask!4034 #b00000000000000011111111111111111) (= mask!4034 #b00000000000000111111111111111111) (= mask!4034 #b00000000000001111111111111111111) (= mask!4034 #b00000000000011111111111111111111) (= mask!4034 #b00000000000111111111111111111111) (= mask!4034 #b00000000001111111111111111111111) (= mask!4034 #b00000000011111111111111111111111) (= mask!4034 #b00000000111111111111111111111111) (= mask!4034 #b00000001111111111111111111111111) (= mask!4034 #b00000011111111111111111111111111) (= mask!4034 #b00000111111111111111111111111111) (= mask!4034 #b00001111111111111111111111111111) (= mask!4034 #b00011111111111111111111111111111) (= mask!4034 #b00111111111111111111111111111111)) (bvsle mask!4034 #b00111111111111111111111111111111)))))

(assert (=> start!81668 d!115569))

(declare-fun d!115579 () Bool)

(assert (=> d!115579 (= (array_inv!21478 a!3460) (bvsge (size!28225 a!3460) #b00000000000000000000000000000000))))

(assert (=> start!81668 d!115579))

(declare-fun b!953166 () Bool)

(declare-fun e!536917 () Bool)

(declare-fun e!536916 () Bool)

(assert (=> b!953166 (= e!536917 e!536916)))

(declare-fun lt!429621 () (_ BitVec 64))

(assert (=> b!953166 (= lt!429621 (select (arr!27745 a!3460) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32075 0))(
  ( (Unit!32076) )
))
(declare-fun lt!429619 () Unit!32075)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57723 (_ BitVec 64) (_ BitVec 32)) Unit!32075)

(assert (=> b!953166 (= lt!429619 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3460 lt!429621 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953166 (arrayContainsKey!0 a!3460 lt!429621 #b00000000000000000000000000000000)))

(declare-fun lt!429620 () Unit!32075)

(assert (=> b!953166 (= lt!429620 lt!429619)))

(declare-fun res!638497 () Bool)

(declare-datatypes ((SeekEntryResult!9159 0))(
  ( (MissingZero!9159 (index!39006 (_ BitVec 32))) (Found!9159 (index!39007 (_ BitVec 32))) (Intermediate!9159 (undefined!9971 Bool) (index!39008 (_ BitVec 32)) (x!82008 (_ BitVec 32))) (Undefined!9159) (MissingVacant!9159 (index!39009 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57723 (_ BitVec 32)) SeekEntryResult!9159)

(assert (=> b!953166 (= res!638497 (= (seekEntryOrOpen!0 (select (arr!27745 a!3460) #b00000000000000000000000000000000) a!3460 mask!4034) (Found!9159 #b00000000000000000000000000000000)))))

(assert (=> b!953166 (=> (not res!638497) (not e!536916))))

(declare-fun b!953167 () Bool)

(declare-fun e!536915 () Bool)

(assert (=> b!953167 (= e!536915 e!536917)))

(declare-fun c!99709 () Bool)

(assert (=> b!953167 (= c!99709 (validKeyInArray!0 (select (arr!27745 a!3460) #b00000000000000000000000000000000)))))

(declare-fun bm!41654 () Bool)

(declare-fun call!41657 () Bool)

(assert (=> bm!41654 (= call!41657 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3460 mask!4034))))

(declare-fun b!953168 () Bool)

(assert (=> b!953168 (= e!536916 call!41657)))

(declare-fun d!115581 () Bool)

(declare-fun res!638498 () Bool)

(assert (=> d!115581 (=> res!638498 e!536915)))

(assert (=> d!115581 (= res!638498 (bvsge #b00000000000000000000000000000000 (size!28225 a!3460)))))

(assert (=> d!115581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034) e!536915)))

(declare-fun b!953169 () Bool)

(assert (=> b!953169 (= e!536917 call!41657)))

(assert (= (and d!115581 (not res!638498)) b!953167))

(assert (= (and b!953167 c!99709) b!953166))

(assert (= (and b!953167 (not c!99709)) b!953169))

(assert (= (and b!953166 res!638497) b!953168))

(assert (= (or b!953168 b!953169) bm!41654))

(declare-fun m!885341 () Bool)

(assert (=> b!953166 m!885341))

(declare-fun m!885343 () Bool)

(assert (=> b!953166 m!885343))

(declare-fun m!885345 () Bool)

(assert (=> b!953166 m!885345))

(assert (=> b!953166 m!885341))

(declare-fun m!885347 () Bool)

(assert (=> b!953166 m!885347))

(assert (=> b!953167 m!885341))

(assert (=> b!953167 m!885341))

(declare-fun m!885349 () Bool)

(assert (=> b!953167 m!885349))

(declare-fun m!885351 () Bool)

(assert (=> bm!41654 m!885351))

(assert (=> b!953131 d!115581))

(declare-fun d!115585 () Bool)

(assert (=> d!115585 (= (validKeyInArray!0 k!2725) (and (not (= k!2725 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2725 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!953132 d!115585))

(push 1)

