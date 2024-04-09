; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81666 () Bool)

(assert start!81666)

(declare-fun b!953121 () Bool)

(declare-fun e!536883 () Bool)

(declare-fun mask!4034 () (_ BitVec 32))

(assert (=> b!953121 (= e!536883 (bvslt mask!4034 #b00000000000000000000000000000000))))

(declare-fun b!953118 () Bool)

(declare-fun res!638468 () Bool)

(assert (=> b!953118 (=> (not res!638468) (not e!536883))))

(declare-datatypes ((array!57721 0))(
  ( (array!57722 (arr!27744 (Array (_ BitVec 32) (_ BitVec 64))) (size!28224 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57721)

(assert (=> b!953118 (= res!638468 (= (size!28224 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953119 () Bool)

(declare-fun res!638465 () Bool)

(assert (=> b!953119 (=> (not res!638465) (not e!536883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57721 (_ BitVec 32)) Bool)

(assert (=> b!953119 (= res!638465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638467 () Bool)

(assert (=> start!81666 (=> (not res!638467) (not e!536883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81666 (= res!638467 (validMask!0 mask!4034))))

(assert (=> start!81666 e!536883))

(assert (=> start!81666 true))

(declare-fun array_inv!21477 (array!57721) Bool)

(assert (=> start!81666 (array_inv!21477 a!3460)))

(declare-fun b!953120 () Bool)

(declare-fun res!638466 () Bool)

(assert (=> b!953120 (=> (not res!638466) (not e!536883))))

(declare-fun k0!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953120 (= res!638466 (validKeyInArray!0 k0!2725))))

(assert (= (and start!81666 res!638467) b!953118))

(assert (= (and b!953118 res!638468) b!953119))

(assert (= (and b!953119 res!638465) b!953120))

(assert (= (and b!953120 res!638466) b!953121))

(declare-fun m!885301 () Bool)

(assert (=> b!953119 m!885301))

(declare-fun m!885303 () Bool)

(assert (=> start!81666 m!885303))

(declare-fun m!885305 () Bool)

(assert (=> start!81666 m!885305))

(declare-fun m!885307 () Bool)

(assert (=> b!953120 m!885307))

(check-sat (not b!953120) (not start!81666) (not b!953119))
(check-sat)
(get-model)

(declare-fun d!115563 () Bool)

(assert (=> d!115563 (= (validKeyInArray!0 k0!2725) (and (not (= k0!2725 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2725 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!953120 d!115563))

(declare-fun d!115565 () Bool)

(assert (=> d!115565 (= (validMask!0 mask!4034) (and (or (= mask!4034 #b00000000000000000000000000000111) (= mask!4034 #b00000000000000000000000000001111) (= mask!4034 #b00000000000000000000000000011111) (= mask!4034 #b00000000000000000000000000111111) (= mask!4034 #b00000000000000000000000001111111) (= mask!4034 #b00000000000000000000000011111111) (= mask!4034 #b00000000000000000000000111111111) (= mask!4034 #b00000000000000000000001111111111) (= mask!4034 #b00000000000000000000011111111111) (= mask!4034 #b00000000000000000000111111111111) (= mask!4034 #b00000000000000000001111111111111) (= mask!4034 #b00000000000000000011111111111111) (= mask!4034 #b00000000000000000111111111111111) (= mask!4034 #b00000000000000001111111111111111) (= mask!4034 #b00000000000000011111111111111111) (= mask!4034 #b00000000000000111111111111111111) (= mask!4034 #b00000000000001111111111111111111) (= mask!4034 #b00000000000011111111111111111111) (= mask!4034 #b00000000000111111111111111111111) (= mask!4034 #b00000000001111111111111111111111) (= mask!4034 #b00000000011111111111111111111111) (= mask!4034 #b00000000111111111111111111111111) (= mask!4034 #b00000001111111111111111111111111) (= mask!4034 #b00000011111111111111111111111111) (= mask!4034 #b00000111111111111111111111111111) (= mask!4034 #b00001111111111111111111111111111) (= mask!4034 #b00011111111111111111111111111111) (= mask!4034 #b00111111111111111111111111111111)) (bvsle mask!4034 #b00111111111111111111111111111111)))))

(assert (=> start!81666 d!115565))

(declare-fun d!115571 () Bool)

(assert (=> d!115571 (= (array_inv!21477 a!3460) (bvsge (size!28224 a!3460) #b00000000000000000000000000000000))))

(assert (=> start!81666 d!115571))

(declare-fun bm!41652 () Bool)

(declare-fun call!41655 () Bool)

(assert (=> bm!41652 (= call!41655 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3460 mask!4034))))

(declare-fun b!953158 () Bool)

(declare-fun e!536911 () Bool)

(assert (=> b!953158 (= e!536911 call!41655)))

(declare-fun b!953159 () Bool)

(declare-fun e!536910 () Bool)

(assert (=> b!953159 (= e!536910 call!41655)))

(declare-fun b!953160 () Bool)

(assert (=> b!953160 (= e!536910 e!536911)))

(declare-fun lt!429615 () (_ BitVec 64))

(assert (=> b!953160 (= lt!429615 (select (arr!27744 a!3460) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32071 0))(
  ( (Unit!32072) )
))
(declare-fun lt!429613 () Unit!32071)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57721 (_ BitVec 64) (_ BitVec 32)) Unit!32071)

(assert (=> b!953160 (= lt!429613 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3460 lt!429615 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953160 (arrayContainsKey!0 a!3460 lt!429615 #b00000000000000000000000000000000)))

(declare-fun lt!429614 () Unit!32071)

(assert (=> b!953160 (= lt!429614 lt!429613)))

(declare-fun res!638493 () Bool)

(declare-datatypes ((SeekEntryResult!9157 0))(
  ( (MissingZero!9157 (index!38998 (_ BitVec 32))) (Found!9157 (index!38999 (_ BitVec 32))) (Intermediate!9157 (undefined!9969 Bool) (index!39000 (_ BitVec 32)) (x!82006 (_ BitVec 32))) (Undefined!9157) (MissingVacant!9157 (index!39001 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57721 (_ BitVec 32)) SeekEntryResult!9157)

(assert (=> b!953160 (= res!638493 (= (seekEntryOrOpen!0 (select (arr!27744 a!3460) #b00000000000000000000000000000000) a!3460 mask!4034) (Found!9157 #b00000000000000000000000000000000)))))

(assert (=> b!953160 (=> (not res!638493) (not e!536911))))

(declare-fun d!115573 () Bool)

(declare-fun res!638494 () Bool)

(declare-fun e!536909 () Bool)

(assert (=> d!115573 (=> res!638494 e!536909)))

(assert (=> d!115573 (= res!638494 (bvsge #b00000000000000000000000000000000 (size!28224 a!3460)))))

(assert (=> d!115573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034) e!536909)))

(declare-fun b!953161 () Bool)

(assert (=> b!953161 (= e!536909 e!536910)))

(declare-fun c!99707 () Bool)

(assert (=> b!953161 (= c!99707 (validKeyInArray!0 (select (arr!27744 a!3460) #b00000000000000000000000000000000)))))

(assert (= (and d!115573 (not res!638494)) b!953161))

(assert (= (and b!953161 c!99707) b!953160))

(assert (= (and b!953161 (not c!99707)) b!953159))

(assert (= (and b!953160 res!638493) b!953158))

(assert (= (or b!953158 b!953159) bm!41652))

(declare-fun m!885317 () Bool)

(assert (=> bm!41652 m!885317))

(declare-fun m!885319 () Bool)

(assert (=> b!953160 m!885319))

(declare-fun m!885321 () Bool)

(assert (=> b!953160 m!885321))

(declare-fun m!885323 () Bool)

(assert (=> b!953160 m!885323))

(assert (=> b!953160 m!885319))

(declare-fun m!885325 () Bool)

(assert (=> b!953160 m!885325))

(assert (=> b!953161 m!885319))

(assert (=> b!953161 m!885319))

(declare-fun m!885327 () Bool)

(assert (=> b!953161 m!885327))

(assert (=> b!953119 d!115573))

(check-sat (not b!953160) (not b!953161) (not bm!41652))
(check-sat)
