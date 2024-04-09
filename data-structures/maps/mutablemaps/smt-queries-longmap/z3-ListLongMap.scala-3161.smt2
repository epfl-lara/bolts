; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44550 () Bool)

(assert start!44550)

(declare-fun b!488724 () Bool)

(declare-fun res!291926 () Bool)

(declare-fun e!287476 () Bool)

(assert (=> b!488724 (=> (not res!291926) (not e!287476))))

(declare-datatypes ((array!31620 0))(
  ( (array!31621 (arr!15196 (Array (_ BitVec 32) (_ BitVec 64))) (size!15560 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31620)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488724 (= res!291926 (validKeyInArray!0 (select (arr!15196 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!488725 () Bool)

(declare-fun e!287475 () Bool)

(declare-datatypes ((SeekEntryResult!3670 0))(
  ( (MissingZero!3670 (index!16859 (_ BitVec 32))) (Found!3670 (index!16860 (_ BitVec 32))) (Intermediate!3670 (undefined!4482 Bool) (index!16861 (_ BitVec 32)) (x!46000 (_ BitVec 32))) (Undefined!3670) (MissingVacant!3670 (index!16862 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31620 (_ BitVec 32)) SeekEntryResult!3670)

(assert (=> b!488725 (= e!287475 (= (seekEntryOrOpen!0 (select (arr!15196 a!3235) j!176) a!3235 mask!3524) (Found!3670 j!176)))))

(declare-fun res!291927 () Bool)

(assert (=> start!44550 (=> (not res!291927) (not e!287476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44550 (= res!291927 (validMask!0 mask!3524))))

(assert (=> start!44550 e!287476))

(assert (=> start!44550 true))

(declare-fun array_inv!10970 (array!31620) Bool)

(assert (=> start!44550 (array_inv!10970 a!3235)))

(declare-fun b!488726 () Bool)

(declare-fun res!291922 () Bool)

(assert (=> b!488726 (=> (not res!291922) (not e!287476))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!488726 (= res!291922 (validKeyInArray!0 k0!2280))))

(declare-fun b!488727 () Bool)

(declare-fun e!287473 () Bool)

(assert (=> b!488727 (= e!287476 e!287473)))

(declare-fun res!291921 () Bool)

(assert (=> b!488727 (=> (not res!291921) (not e!287473))))

(declare-fun lt!220538 () SeekEntryResult!3670)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488727 (= res!291921 (or (= lt!220538 (MissingZero!3670 i!1204)) (= lt!220538 (MissingVacant!3670 i!1204))))))

(assert (=> b!488727 (= lt!220538 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488728 () Bool)

(declare-fun res!291924 () Bool)

(assert (=> b!488728 (=> (not res!291924) (not e!287476))))

(declare-fun arrayContainsKey!0 (array!31620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488728 (= res!291924 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488729 () Bool)

(declare-fun res!291925 () Bool)

(assert (=> b!488729 (=> (not res!291925) (not e!287473))))

(declare-datatypes ((List!9407 0))(
  ( (Nil!9404) (Cons!9403 (h!10262 (_ BitVec 64)) (t!15643 List!9407)) )
))
(declare-fun arrayNoDuplicates!0 (array!31620 (_ BitVec 32) List!9407) Bool)

(assert (=> b!488729 (= res!291925 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9404))))

(declare-fun b!488730 () Bool)

(declare-fun lt!220536 () (_ BitVec 32))

(assert (=> b!488730 (= e!287473 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!220536 #b00000000000000000000000000000000) (bvslt lt!220536 (bvadd #b00000000000000000000000000000001 mask!3524))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488730 (= lt!220536 (toIndex!0 (select (store (arr!15196 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!488730 e!287475))

(declare-fun res!291929 () Bool)

(assert (=> b!488730 (=> (not res!291929) (not e!287475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31620 (_ BitVec 32)) Bool)

(assert (=> b!488730 (= res!291929 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14278 0))(
  ( (Unit!14279) )
))
(declare-fun lt!220537 () Unit!14278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14278)

(assert (=> b!488730 (= lt!220537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488731 () Bool)

(declare-fun res!291923 () Bool)

(assert (=> b!488731 (=> (not res!291923) (not e!287476))))

(assert (=> b!488731 (= res!291923 (and (= (size!15560 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15560 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15560 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488732 () Bool)

(declare-fun res!291928 () Bool)

(assert (=> b!488732 (=> (not res!291928) (not e!287473))))

(assert (=> b!488732 (= res!291928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44550 res!291927) b!488731))

(assert (= (and b!488731 res!291923) b!488724))

(assert (= (and b!488724 res!291926) b!488726))

(assert (= (and b!488726 res!291922) b!488728))

(assert (= (and b!488728 res!291924) b!488727))

(assert (= (and b!488727 res!291921) b!488732))

(assert (= (and b!488732 res!291928) b!488729))

(assert (= (and b!488729 res!291925) b!488730))

(assert (= (and b!488730 res!291929) b!488725))

(declare-fun m!468499 () Bool)

(assert (=> b!488729 m!468499))

(declare-fun m!468501 () Bool)

(assert (=> b!488728 m!468501))

(declare-fun m!468503 () Bool)

(assert (=> start!44550 m!468503))

(declare-fun m!468505 () Bool)

(assert (=> start!44550 m!468505))

(declare-fun m!468507 () Bool)

(assert (=> b!488726 m!468507))

(declare-fun m!468509 () Bool)

(assert (=> b!488727 m!468509))

(declare-fun m!468511 () Bool)

(assert (=> b!488730 m!468511))

(declare-fun m!468513 () Bool)

(assert (=> b!488730 m!468513))

(declare-fun m!468515 () Bool)

(assert (=> b!488730 m!468515))

(declare-fun m!468517 () Bool)

(assert (=> b!488730 m!468517))

(assert (=> b!488730 m!468515))

(declare-fun m!468519 () Bool)

(assert (=> b!488730 m!468519))

(declare-fun m!468521 () Bool)

(assert (=> b!488725 m!468521))

(assert (=> b!488725 m!468521))

(declare-fun m!468523 () Bool)

(assert (=> b!488725 m!468523))

(declare-fun m!468525 () Bool)

(assert (=> b!488732 m!468525))

(assert (=> b!488724 m!468521))

(assert (=> b!488724 m!468521))

(declare-fun m!468527 () Bool)

(assert (=> b!488724 m!468527))

(check-sat (not b!488732) (not b!488725) (not start!44550) (not b!488727) (not b!488728) (not b!488730) (not b!488724) (not b!488729) (not b!488726))
(check-sat)
(get-model)

(declare-fun d!77737 () Bool)

(assert (=> d!77737 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44550 d!77737))

(declare-fun d!77743 () Bool)

(assert (=> d!77743 (= (array_inv!10970 a!3235) (bvsge (size!15560 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44550 d!77743))

(declare-fun d!77745 () Bool)

(assert (=> d!77745 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488726 d!77745))

(declare-fun b!488817 () Bool)

(declare-fun e!287530 () SeekEntryResult!3670)

(assert (=> b!488817 (= e!287530 Undefined!3670)))

(declare-fun b!488818 () Bool)

(declare-fun e!287529 () SeekEntryResult!3670)

(declare-fun lt!220570 () SeekEntryResult!3670)

(assert (=> b!488818 (= e!287529 (MissingZero!3670 (index!16861 lt!220570)))))

(declare-fun b!488819 () Bool)

(declare-fun c!58691 () Bool)

(declare-fun lt!220571 () (_ BitVec 64))

(assert (=> b!488819 (= c!58691 (= lt!220571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287528 () SeekEntryResult!3670)

(assert (=> b!488819 (= e!287528 e!287529)))

(declare-fun b!488820 () Bool)

(assert (=> b!488820 (= e!287528 (Found!3670 (index!16861 lt!220570)))))

(declare-fun b!488821 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31620 (_ BitVec 32)) SeekEntryResult!3670)

(assert (=> b!488821 (= e!287529 (seekKeyOrZeroReturnVacant!0 (x!46000 lt!220570) (index!16861 lt!220570) (index!16861 lt!220570) k0!2280 a!3235 mask!3524))))

(declare-fun d!77747 () Bool)

(declare-fun lt!220569 () SeekEntryResult!3670)

(get-info :version)

(assert (=> d!77747 (and (or ((_ is Undefined!3670) lt!220569) (not ((_ is Found!3670) lt!220569)) (and (bvsge (index!16860 lt!220569) #b00000000000000000000000000000000) (bvslt (index!16860 lt!220569) (size!15560 a!3235)))) (or ((_ is Undefined!3670) lt!220569) ((_ is Found!3670) lt!220569) (not ((_ is MissingZero!3670) lt!220569)) (and (bvsge (index!16859 lt!220569) #b00000000000000000000000000000000) (bvslt (index!16859 lt!220569) (size!15560 a!3235)))) (or ((_ is Undefined!3670) lt!220569) ((_ is Found!3670) lt!220569) ((_ is MissingZero!3670) lt!220569) (not ((_ is MissingVacant!3670) lt!220569)) (and (bvsge (index!16862 lt!220569) #b00000000000000000000000000000000) (bvslt (index!16862 lt!220569) (size!15560 a!3235)))) (or ((_ is Undefined!3670) lt!220569) (ite ((_ is Found!3670) lt!220569) (= (select (arr!15196 a!3235) (index!16860 lt!220569)) k0!2280) (ite ((_ is MissingZero!3670) lt!220569) (= (select (arr!15196 a!3235) (index!16859 lt!220569)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3670) lt!220569) (= (select (arr!15196 a!3235) (index!16862 lt!220569)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77747 (= lt!220569 e!287530)))

(declare-fun c!58689 () Bool)

(assert (=> d!77747 (= c!58689 (and ((_ is Intermediate!3670) lt!220570) (undefined!4482 lt!220570)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31620 (_ BitVec 32)) SeekEntryResult!3670)

(assert (=> d!77747 (= lt!220570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77747 (validMask!0 mask!3524)))

(assert (=> d!77747 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!220569)))

(declare-fun b!488822 () Bool)

(assert (=> b!488822 (= e!287530 e!287528)))

(assert (=> b!488822 (= lt!220571 (select (arr!15196 a!3235) (index!16861 lt!220570)))))

(declare-fun c!58690 () Bool)

(assert (=> b!488822 (= c!58690 (= lt!220571 k0!2280))))

(assert (= (and d!77747 c!58689) b!488817))

(assert (= (and d!77747 (not c!58689)) b!488822))

(assert (= (and b!488822 c!58690) b!488820))

(assert (= (and b!488822 (not c!58690)) b!488819))

(assert (= (and b!488819 c!58691) b!488818))

(assert (= (and b!488819 (not c!58691)) b!488821))

(declare-fun m!468579 () Bool)

(assert (=> b!488821 m!468579))

(declare-fun m!468581 () Bool)

(assert (=> d!77747 m!468581))

(declare-fun m!468583 () Bool)

(assert (=> d!77747 m!468583))

(declare-fun m!468585 () Bool)

(assert (=> d!77747 m!468585))

(declare-fun m!468587 () Bool)

(assert (=> d!77747 m!468587))

(assert (=> d!77747 m!468585))

(assert (=> d!77747 m!468503))

(declare-fun m!468589 () Bool)

(assert (=> d!77747 m!468589))

(declare-fun m!468591 () Bool)

(assert (=> b!488822 m!468591))

(assert (=> b!488727 d!77747))

(declare-fun bm!31349 () Bool)

(declare-fun call!31352 () Bool)

(assert (=> bm!31349 (= call!31352 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488837 () Bool)

(declare-fun e!287542 () Bool)

(declare-fun e!287540 () Bool)

(assert (=> b!488837 (= e!287542 e!287540)))

(declare-fun lt!220581 () (_ BitVec 64))

(assert (=> b!488837 (= lt!220581 (select (arr!15196 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220582 () Unit!14278)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31620 (_ BitVec 64) (_ BitVec 32)) Unit!14278)

(assert (=> b!488837 (= lt!220582 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220581 #b00000000000000000000000000000000))))

(assert (=> b!488837 (arrayContainsKey!0 a!3235 lt!220581 #b00000000000000000000000000000000)))

(declare-fun lt!220583 () Unit!14278)

(assert (=> b!488837 (= lt!220583 lt!220582)))

(declare-fun res!291983 () Bool)

(assert (=> b!488837 (= res!291983 (= (seekEntryOrOpen!0 (select (arr!15196 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3670 #b00000000000000000000000000000000)))))

(assert (=> b!488837 (=> (not res!291983) (not e!287540))))

(declare-fun d!77757 () Bool)

(declare-fun res!291982 () Bool)

(declare-fun e!287541 () Bool)

(assert (=> d!77757 (=> res!291982 e!287541)))

(assert (=> d!77757 (= res!291982 (bvsge #b00000000000000000000000000000000 (size!15560 a!3235)))))

(assert (=> d!77757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!287541)))

(declare-fun b!488838 () Bool)

(assert (=> b!488838 (= e!287541 e!287542)))

(declare-fun c!58697 () Bool)

(assert (=> b!488838 (= c!58697 (validKeyInArray!0 (select (arr!15196 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488839 () Bool)

(assert (=> b!488839 (= e!287540 call!31352)))

(declare-fun b!488840 () Bool)

(assert (=> b!488840 (= e!287542 call!31352)))

(assert (= (and d!77757 (not res!291982)) b!488838))

(assert (= (and b!488838 c!58697) b!488837))

(assert (= (and b!488838 (not c!58697)) b!488840))

(assert (= (and b!488837 res!291983) b!488839))

(assert (= (or b!488839 b!488840) bm!31349))

(declare-fun m!468607 () Bool)

(assert (=> bm!31349 m!468607))

(declare-fun m!468609 () Bool)

(assert (=> b!488837 m!468609))

(declare-fun m!468611 () Bool)

(assert (=> b!488837 m!468611))

(declare-fun m!468613 () Bool)

(assert (=> b!488837 m!468613))

(assert (=> b!488837 m!468609))

(declare-fun m!468615 () Bool)

(assert (=> b!488837 m!468615))

(assert (=> b!488838 m!468609))

(assert (=> b!488838 m!468609))

(declare-fun m!468617 () Bool)

(assert (=> b!488838 m!468617))

(assert (=> b!488732 d!77757))

(declare-fun b!488863 () Bool)

(declare-fun e!287558 () Bool)

(declare-fun call!31355 () Bool)

(assert (=> b!488863 (= e!287558 call!31355)))

(declare-fun bm!31352 () Bool)

(declare-fun c!58706 () Bool)

(assert (=> bm!31352 (= call!31355 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58706 (Cons!9403 (select (arr!15196 a!3235) #b00000000000000000000000000000000) Nil!9404) Nil!9404)))))

(declare-fun b!488864 () Bool)

(assert (=> b!488864 (= e!287558 call!31355)))

(declare-fun b!488865 () Bool)

(declare-fun e!287560 () Bool)

(declare-fun contains!2710 (List!9407 (_ BitVec 64)) Bool)

(assert (=> b!488865 (= e!287560 (contains!2710 Nil!9404 (select (arr!15196 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77763 () Bool)

(declare-fun res!291990 () Bool)

(declare-fun e!287557 () Bool)

(assert (=> d!77763 (=> res!291990 e!287557)))

(assert (=> d!77763 (= res!291990 (bvsge #b00000000000000000000000000000000 (size!15560 a!3235)))))

(assert (=> d!77763 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9404) e!287557)))

(declare-fun b!488866 () Bool)

(declare-fun e!287559 () Bool)

(assert (=> b!488866 (= e!287557 e!287559)))

(declare-fun res!291991 () Bool)

(assert (=> b!488866 (=> (not res!291991) (not e!287559))))

(assert (=> b!488866 (= res!291991 (not e!287560))))

(declare-fun res!291992 () Bool)

(assert (=> b!488866 (=> (not res!291992) (not e!287560))))

(assert (=> b!488866 (= res!291992 (validKeyInArray!0 (select (arr!15196 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488867 () Bool)

(assert (=> b!488867 (= e!287559 e!287558)))

(assert (=> b!488867 (= c!58706 (validKeyInArray!0 (select (arr!15196 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77763 (not res!291990)) b!488866))

(assert (= (and b!488866 res!291992) b!488865))

(assert (= (and b!488866 res!291991) b!488867))

(assert (= (and b!488867 c!58706) b!488863))

(assert (= (and b!488867 (not c!58706)) b!488864))

(assert (= (or b!488863 b!488864) bm!31352))

(assert (=> bm!31352 m!468609))

(declare-fun m!468619 () Bool)

(assert (=> bm!31352 m!468619))

(assert (=> b!488865 m!468609))

(assert (=> b!488865 m!468609))

(declare-fun m!468621 () Bool)

(assert (=> b!488865 m!468621))

(assert (=> b!488866 m!468609))

(assert (=> b!488866 m!468609))

(assert (=> b!488866 m!468617))

(assert (=> b!488867 m!468609))

(assert (=> b!488867 m!468609))

(assert (=> b!488867 m!468617))

(assert (=> b!488729 d!77763))

(declare-fun d!77769 () Bool)

(declare-fun res!292001 () Bool)

(declare-fun e!287574 () Bool)

(assert (=> d!77769 (=> res!292001 e!287574)))

(assert (=> d!77769 (= res!292001 (= (select (arr!15196 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77769 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!287574)))

(declare-fun b!488886 () Bool)

(declare-fun e!287575 () Bool)

(assert (=> b!488886 (= e!287574 e!287575)))

(declare-fun res!292002 () Bool)

(assert (=> b!488886 (=> (not res!292002) (not e!287575))))

(assert (=> b!488886 (= res!292002 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15560 a!3235)))))

(declare-fun b!488887 () Bool)

(assert (=> b!488887 (= e!287575 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77769 (not res!292001)) b!488886))

(assert (= (and b!488886 res!292002) b!488887))

(assert (=> d!77769 m!468609))

(declare-fun m!468623 () Bool)

(assert (=> b!488887 m!468623))

(assert (=> b!488728 d!77769))

(declare-fun b!488888 () Bool)

(declare-fun e!287578 () SeekEntryResult!3670)

(assert (=> b!488888 (= e!287578 Undefined!3670)))

(declare-fun b!488889 () Bool)

(declare-fun e!287577 () SeekEntryResult!3670)

(declare-fun lt!220600 () SeekEntryResult!3670)

(assert (=> b!488889 (= e!287577 (MissingZero!3670 (index!16861 lt!220600)))))

(declare-fun b!488890 () Bool)

(declare-fun c!58714 () Bool)

(declare-fun lt!220601 () (_ BitVec 64))

(assert (=> b!488890 (= c!58714 (= lt!220601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287576 () SeekEntryResult!3670)

(assert (=> b!488890 (= e!287576 e!287577)))

(declare-fun b!488891 () Bool)

(assert (=> b!488891 (= e!287576 (Found!3670 (index!16861 lt!220600)))))

(declare-fun b!488892 () Bool)

(assert (=> b!488892 (= e!287577 (seekKeyOrZeroReturnVacant!0 (x!46000 lt!220600) (index!16861 lt!220600) (index!16861 lt!220600) (select (arr!15196 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!77771 () Bool)

(declare-fun lt!220599 () SeekEntryResult!3670)

(assert (=> d!77771 (and (or ((_ is Undefined!3670) lt!220599) (not ((_ is Found!3670) lt!220599)) (and (bvsge (index!16860 lt!220599) #b00000000000000000000000000000000) (bvslt (index!16860 lt!220599) (size!15560 a!3235)))) (or ((_ is Undefined!3670) lt!220599) ((_ is Found!3670) lt!220599) (not ((_ is MissingZero!3670) lt!220599)) (and (bvsge (index!16859 lt!220599) #b00000000000000000000000000000000) (bvslt (index!16859 lt!220599) (size!15560 a!3235)))) (or ((_ is Undefined!3670) lt!220599) ((_ is Found!3670) lt!220599) ((_ is MissingZero!3670) lt!220599) (not ((_ is MissingVacant!3670) lt!220599)) (and (bvsge (index!16862 lt!220599) #b00000000000000000000000000000000) (bvslt (index!16862 lt!220599) (size!15560 a!3235)))) (or ((_ is Undefined!3670) lt!220599) (ite ((_ is Found!3670) lt!220599) (= (select (arr!15196 a!3235) (index!16860 lt!220599)) (select (arr!15196 a!3235) j!176)) (ite ((_ is MissingZero!3670) lt!220599) (= (select (arr!15196 a!3235) (index!16859 lt!220599)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3670) lt!220599) (= (select (arr!15196 a!3235) (index!16862 lt!220599)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77771 (= lt!220599 e!287578)))

(declare-fun c!58712 () Bool)

(assert (=> d!77771 (= c!58712 (and ((_ is Intermediate!3670) lt!220600) (undefined!4482 lt!220600)))))

(assert (=> d!77771 (= lt!220600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15196 a!3235) j!176) mask!3524) (select (arr!15196 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77771 (validMask!0 mask!3524)))

(assert (=> d!77771 (= (seekEntryOrOpen!0 (select (arr!15196 a!3235) j!176) a!3235 mask!3524) lt!220599)))

(declare-fun b!488893 () Bool)

(assert (=> b!488893 (= e!287578 e!287576)))

(assert (=> b!488893 (= lt!220601 (select (arr!15196 a!3235) (index!16861 lt!220600)))))

(declare-fun c!58713 () Bool)

(assert (=> b!488893 (= c!58713 (= lt!220601 (select (arr!15196 a!3235) j!176)))))

(assert (= (and d!77771 c!58712) b!488888))

(assert (= (and d!77771 (not c!58712)) b!488893))

(assert (= (and b!488893 c!58713) b!488891))

(assert (= (and b!488893 (not c!58713)) b!488890))

(assert (= (and b!488890 c!58714) b!488889))

(assert (= (and b!488890 (not c!58714)) b!488892))

(assert (=> b!488892 m!468521))

(declare-fun m!468639 () Bool)

(assert (=> b!488892 m!468639))

(declare-fun m!468641 () Bool)

(assert (=> d!77771 m!468641))

(declare-fun m!468643 () Bool)

(assert (=> d!77771 m!468643))

(declare-fun m!468645 () Bool)

(assert (=> d!77771 m!468645))

(assert (=> d!77771 m!468521))

(declare-fun m!468647 () Bool)

(assert (=> d!77771 m!468647))

(assert (=> d!77771 m!468521))

(assert (=> d!77771 m!468645))

(assert (=> d!77771 m!468503))

(declare-fun m!468649 () Bool)

(assert (=> d!77771 m!468649))

(declare-fun m!468651 () Bool)

(assert (=> b!488893 m!468651))

(assert (=> b!488725 d!77771))

(declare-fun d!77775 () Bool)

(declare-fun lt!220623 () (_ BitVec 32))

(declare-fun lt!220622 () (_ BitVec 32))

(assert (=> d!77775 (= lt!220623 (bvmul (bvxor lt!220622 (bvlshr lt!220622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77775 (= lt!220622 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15196 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15196 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77775 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!292006 (let ((h!10265 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15196 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15196 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46003 (bvmul (bvxor h!10265 (bvlshr h!10265 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46003 (bvlshr x!46003 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!292006 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!292006 #b00000000000000000000000000000000))))))

(assert (=> d!77775 (= (toIndex!0 (select (store (arr!15196 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!220623 (bvlshr lt!220623 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!488730 d!77775))

(declare-fun call!31360 () Bool)

(declare-fun bm!31357 () Bool)

(assert (=> bm!31357 (= call!31360 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488902 () Bool)

(declare-fun e!287587 () Bool)

(declare-fun e!287585 () Bool)

(assert (=> b!488902 (= e!287587 e!287585)))

(declare-fun lt!220624 () (_ BitVec 64))

(assert (=> b!488902 (= lt!220624 (select (arr!15196 a!3235) j!176))))

(declare-fun lt!220625 () Unit!14278)

(assert (=> b!488902 (= lt!220625 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220624 j!176))))

(assert (=> b!488902 (arrayContainsKey!0 a!3235 lt!220624 #b00000000000000000000000000000000)))

(declare-fun lt!220626 () Unit!14278)

(assert (=> b!488902 (= lt!220626 lt!220625)))

(declare-fun res!292011 () Bool)

(assert (=> b!488902 (= res!292011 (= (seekEntryOrOpen!0 (select (arr!15196 a!3235) j!176) a!3235 mask!3524) (Found!3670 j!176)))))

(assert (=> b!488902 (=> (not res!292011) (not e!287585))))

(declare-fun d!77781 () Bool)

(declare-fun res!292010 () Bool)

(declare-fun e!287586 () Bool)

(assert (=> d!77781 (=> res!292010 e!287586)))

(assert (=> d!77781 (= res!292010 (bvsge j!176 (size!15560 a!3235)))))

(assert (=> d!77781 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!287586)))

(declare-fun b!488903 () Bool)

(assert (=> b!488903 (= e!287586 e!287587)))

(declare-fun c!58717 () Bool)

(assert (=> b!488903 (= c!58717 (validKeyInArray!0 (select (arr!15196 a!3235) j!176)))))

(declare-fun b!488904 () Bool)

(assert (=> b!488904 (= e!287585 call!31360)))

(declare-fun b!488905 () Bool)

(assert (=> b!488905 (= e!287587 call!31360)))

(assert (= (and d!77781 (not res!292010)) b!488903))

(assert (= (and b!488903 c!58717) b!488902))

(assert (= (and b!488903 (not c!58717)) b!488905))

(assert (= (and b!488902 res!292011) b!488904))

(assert (= (or b!488904 b!488905) bm!31357))

(declare-fun m!468669 () Bool)

(assert (=> bm!31357 m!468669))

(assert (=> b!488902 m!468521))

(declare-fun m!468671 () Bool)

(assert (=> b!488902 m!468671))

(declare-fun m!468673 () Bool)

(assert (=> b!488902 m!468673))

(assert (=> b!488902 m!468521))

(assert (=> b!488902 m!468523))

(assert (=> b!488903 m!468521))

(assert (=> b!488903 m!468521))

(assert (=> b!488903 m!468527))

(assert (=> b!488730 d!77781))

(declare-fun d!77787 () Bool)

(assert (=> d!77787 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220639 () Unit!14278)

(declare-fun choose!38 (array!31620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14278)

(assert (=> d!77787 (= lt!220639 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77787 (validMask!0 mask!3524)))

(assert (=> d!77787 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220639)))

(declare-fun bs!15580 () Bool)

(assert (= bs!15580 d!77787))

(assert (=> bs!15580 m!468517))

(declare-fun m!468683 () Bool)

(assert (=> bs!15580 m!468683))

(assert (=> bs!15580 m!468503))

(assert (=> b!488730 d!77787))

(declare-fun d!77793 () Bool)

(assert (=> d!77793 (= (validKeyInArray!0 (select (arr!15196 a!3235) j!176)) (and (not (= (select (arr!15196 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15196 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488724 d!77793))

(check-sat (not b!488838) (not b!488892) (not d!77787) (not b!488865) (not b!488902) (not d!77747) (not b!488887) (not bm!31352) (not b!488867) (not b!488837) (not b!488866) (not bm!31357) (not d!77771) (not bm!31349) (not b!488821) (not b!488903))
(check-sat)
