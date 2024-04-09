; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85782 () Bool)

(assert start!85782)

(declare-fun b!994807 () Bool)

(declare-fun res!665471 () Bool)

(declare-fun e!561388 () Bool)

(assert (=> b!994807 (=> (not res!665471) (not e!561388))))

(declare-datatypes ((array!62939 0))(
  ( (array!62940 (arr!30304 (Array (_ BitVec 32) (_ BitVec 64))) (size!30807 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62939)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994807 (= res!665471 (validKeyInArray!0 (select (arr!30304 a!3219) j!170)))))

(declare-fun b!994808 () Bool)

(declare-fun res!665476 () Bool)

(declare-fun e!561389 () Bool)

(assert (=> b!994808 (=> (not res!665476) (not e!561389))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62939 (_ BitVec 32)) Bool)

(assert (=> b!994808 (= res!665476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!994809 () Bool)

(declare-fun res!665475 () Bool)

(assert (=> b!994809 (=> (not res!665475) (not e!561388))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!994809 (= res!665475 (validKeyInArray!0 k!2224))))

(declare-fun b!994810 () Bool)

(assert (=> b!994810 (= e!561388 e!561389)))

(declare-fun res!665473 () Bool)

(assert (=> b!994810 (=> (not res!665473) (not e!561389))))

(declare-datatypes ((SeekEntryResult!9236 0))(
  ( (MissingZero!9236 (index!39314 (_ BitVec 32))) (Found!9236 (index!39315 (_ BitVec 32))) (Intermediate!9236 (undefined!10048 Bool) (index!39316 (_ BitVec 32)) (x!86790 (_ BitVec 32))) (Undefined!9236) (MissingVacant!9236 (index!39317 (_ BitVec 32))) )
))
(declare-fun lt!440739 () SeekEntryResult!9236)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994810 (= res!665473 (or (= lt!440739 (MissingVacant!9236 i!1194)) (= lt!440739 (MissingZero!9236 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62939 (_ BitVec 32)) SeekEntryResult!9236)

(assert (=> b!994810 (= lt!440739 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!665470 () Bool)

(assert (=> start!85782 (=> (not res!665470) (not e!561388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85782 (= res!665470 (validMask!0 mask!3464))))

(assert (=> start!85782 e!561388))

(declare-fun array_inv!23294 (array!62939) Bool)

(assert (=> start!85782 (array_inv!23294 a!3219)))

(assert (=> start!85782 true))

(declare-fun b!994811 () Bool)

(assert (=> b!994811 (= e!561389 (and (bvsle #b00000000000000000000000000000000 (size!30807 a!3219)) (bvsge (size!30807 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!994812 () Bool)

(declare-fun res!665472 () Bool)

(assert (=> b!994812 (=> (not res!665472) (not e!561388))))

(declare-fun arrayContainsKey!0 (array!62939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994812 (= res!665472 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994813 () Bool)

(declare-fun res!665474 () Bool)

(assert (=> b!994813 (=> (not res!665474) (not e!561388))))

(assert (=> b!994813 (= res!665474 (and (= (size!30807 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30807 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30807 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85782 res!665470) b!994813))

(assert (= (and b!994813 res!665474) b!994807))

(assert (= (and b!994807 res!665471) b!994809))

(assert (= (and b!994809 res!665475) b!994812))

(assert (= (and b!994812 res!665472) b!994810))

(assert (= (and b!994810 res!665473) b!994808))

(assert (= (and b!994808 res!665476) b!994811))

(declare-fun m!922451 () Bool)

(assert (=> start!85782 m!922451))

(declare-fun m!922453 () Bool)

(assert (=> start!85782 m!922453))

(declare-fun m!922455 () Bool)

(assert (=> b!994807 m!922455))

(assert (=> b!994807 m!922455))

(declare-fun m!922457 () Bool)

(assert (=> b!994807 m!922457))

(declare-fun m!922459 () Bool)

(assert (=> b!994812 m!922459))

(declare-fun m!922461 () Bool)

(assert (=> b!994809 m!922461))

(declare-fun m!922463 () Bool)

(assert (=> b!994810 m!922463))

(declare-fun m!922465 () Bool)

(assert (=> b!994808 m!922465))

(push 1)

(assert (not b!994808))

(assert (not start!85782))

(assert (not b!994809))

(assert (not b!994807))

(assert (not b!994810))

(assert (not b!994812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118697 () Bool)

(assert (=> d!118697 (= (validKeyInArray!0 (select (arr!30304 a!3219) j!170)) (and (not (= (select (arr!30304 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30304 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994807 d!118697))

(declare-fun d!118699 () Bool)

(assert (=> d!118699 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85782 d!118699))

(declare-fun d!118713 () Bool)

(assert (=> d!118713 (= (array_inv!23294 a!3219) (bvsge (size!30807 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85782 d!118713))

(declare-fun d!118715 () Bool)

(declare-fun res!665539 () Bool)

(declare-fun e!561430 () Bool)

(assert (=> d!118715 (=> res!665539 e!561430)))

(assert (=> d!118715 (= res!665539 (= (select (arr!30304 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118715 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!561430)))

(declare-fun b!994880 () Bool)

(declare-fun e!561431 () Bool)

(assert (=> b!994880 (= e!561430 e!561431)))

(declare-fun res!665540 () Bool)

(assert (=> b!994880 (=> (not res!665540) (not e!561431))))

(assert (=> b!994880 (= res!665540 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30807 a!3219)))))

(declare-fun b!994881 () Bool)

(assert (=> b!994881 (= e!561431 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118715 (not res!665539)) b!994880))

(assert (= (and b!994880 res!665540) b!994881))

(declare-fun m!922507 () Bool)

(assert (=> d!118715 m!922507))

(declare-fun m!922509 () Bool)

(assert (=> b!994881 m!922509))

(assert (=> b!994812 d!118715))

(declare-fun d!118717 () Bool)

(declare-fun res!665548 () Bool)

(declare-fun e!561443 () Bool)

(assert (=> d!118717 (=> res!665548 e!561443)))

(assert (=> d!118717 (= res!665548 (bvsge #b00000000000000000000000000000000 (size!30807 a!3219)))))

(assert (=> d!118717 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561443)))

(declare-fun bm!42181 () Bool)

(declare-fun call!42184 () Bool)

(assert (=> bm!42181 (= call!42184 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!994894 () Bool)

(declare-fun e!561441 () Bool)

(assert (=> b!994894 (= e!561443 e!561441)))

(declare-fun c!100815 () Bool)

(assert (=> b!994894 (= c!100815 (validKeyInArray!0 (select (arr!30304 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!994895 () Bool)

(assert (=> b!994895 (= e!561441 call!42184)))

(declare-fun b!994896 () Bool)

(declare-fun e!561442 () Bool)

(assert (=> b!994896 (= e!561442 call!42184)))

(declare-fun b!994897 () Bool)

(assert (=> b!994897 (= e!561441 e!561442)))

(declare-fun lt!440761 () (_ BitVec 64))

(assert (=> b!994897 (= lt!440761 (select (arr!30304 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32904 0))(
  ( (Unit!32905) )
))
(declare-fun lt!440762 () Unit!32904)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62939 (_ BitVec 64) (_ BitVec 32)) Unit!32904)

(assert (=> b!994897 (= lt!440762 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440761 #b00000000000000000000000000000000))))

(assert (=> b!994897 (arrayContainsKey!0 a!3219 lt!440761 #b00000000000000000000000000000000)))

(declare-fun lt!440763 () Unit!32904)

(assert (=> b!994897 (= lt!440763 lt!440762)))

(declare-fun res!665547 () Bool)

(assert (=> b!994897 (= res!665547 (= (seekEntryOrOpen!0 (select (arr!30304 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9236 #b00000000000000000000000000000000)))))

(assert (=> b!994897 (=> (not res!665547) (not e!561442))))

(assert (= (and d!118717 (not res!665548)) b!994894))

(assert (= (and b!994894 c!100815) b!994897))

(assert (= (and b!994894 (not c!100815)) b!994895))

(assert (= (and b!994897 res!665547) b!994896))

(assert (= (or b!994896 b!994895) bm!42181))

(declare-fun m!922521 () Bool)

(assert (=> bm!42181 m!922521))

(assert (=> b!994894 m!922507))

(assert (=> b!994894 m!922507))

(declare-fun m!922523 () Bool)

(assert (=> b!994894 m!922523))

(assert (=> b!994897 m!922507))

(declare-fun m!922525 () Bool)

(assert (=> b!994897 m!922525))

(declare-fun m!922527 () Bool)

(assert (=> b!994897 m!922527))

(assert (=> b!994897 m!922507))

(declare-fun m!922529 () Bool)

(assert (=> b!994897 m!922529))

(assert (=> b!994808 d!118717))

(declare-fun d!118725 () Bool)

(assert (=> d!118725 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994809 d!118725))

(declare-fun lt!440790 () SeekEntryResult!9236)

(declare-fun e!561470 () SeekEntryResult!9236)

(declare-fun b!994940 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62939 (_ BitVec 32)) SeekEntryResult!9236)

(assert (=> b!994940 (= e!561470 (seekKeyOrZeroReturnVacant!0 (x!86790 lt!440790) (index!39316 lt!440790) (index!39316 lt!440790) k!2224 a!3219 mask!3464))))

(declare-fun b!994941 () Bool)

(declare-fun e!561469 () SeekEntryResult!9236)

(assert (=> b!994941 (= e!561469 (Found!9236 (index!39316 lt!440790)))))

(declare-fun b!994942 () Bool)

(declare-fun e!561468 () SeekEntryResult!9236)

(assert (=> b!994942 (= e!561468 e!561469)))

(declare-fun lt!440789 () (_ BitVec 64))

(assert (=> b!994942 (= lt!440789 (select (arr!30304 a!3219) (index!39316 lt!440790)))))

(declare-fun c!100836 () Bool)

(assert (=> b!994942 (= c!100836 (= lt!440789 k!2224))))

(declare-fun d!118727 () Bool)

(declare-fun lt!440788 () SeekEntryResult!9236)

(assert (=> d!118727 (and (or (is-Undefined!9236 lt!440788) (not (is-Found!9236 lt!440788)) (and (bvsge (index!39315 lt!440788) #b00000000000000000000000000000000) (bvslt (index!39315 lt!440788) (size!30807 a!3219)))) (or (is-Undefined!9236 lt!440788) (is-Found!9236 lt!440788) (not (is-MissingZero!9236 lt!440788)) (and (bvsge (index!39314 lt!440788) #b00000000000000000000000000000000) (bvslt (index!39314 lt!440788) (size!30807 a!3219)))) (or (is-Undefined!9236 lt!440788) (is-Found!9236 lt!440788) (is-MissingZero!9236 lt!440788) (not (is-MissingVacant!9236 lt!440788)) (and (bvsge (index!39317 lt!440788) #b00000000000000000000000000000000) (bvslt (index!39317 lt!440788) (size!30807 a!3219)))) (or (is-Undefined!9236 lt!440788) (ite (is-Found!9236 lt!440788) (= (select (arr!30304 a!3219) (index!39315 lt!440788)) k!2224) (ite (is-MissingZero!9236 lt!440788) (= (select (arr!30304 a!3219) (index!39314 lt!440788)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9236 lt!440788) (= (select (arr!30304 a!3219) (index!39317 lt!440788)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118727 (= lt!440788 e!561468)))

(declare-fun c!100835 () Bool)

(assert (=> d!118727 (= c!100835 (and (is-Intermediate!9236 lt!440790) (undefined!10048 lt!440790)))))

