; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46138 () Bool)

(assert start!46138)

(declare-fun res!311827 () Bool)

(declare-fun e!298521 () Bool)

(assert (=> start!46138 (=> (not res!311827) (not e!298521))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46138 (= res!311827 (validMask!0 mask!3524))))

(assert (=> start!46138 e!298521))

(assert (=> start!46138 true))

(declare-datatypes ((array!32809 0))(
  ( (array!32810 (arr!15780 (Array (_ BitVec 32) (_ BitVec 64))) (size!16144 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32809)

(declare-fun array_inv!11554 (array!32809) Bool)

(assert (=> start!46138 (array_inv!11554 a!3235)))

(declare-fun b!510831 () Bool)

(declare-fun res!311828 () Bool)

(declare-fun e!298519 () Bool)

(assert (=> b!510831 (=> (not res!311828) (not e!298519))))

(declare-datatypes ((List!9991 0))(
  ( (Nil!9988) (Cons!9987 (h!10864 (_ BitVec 64)) (t!16227 List!9991)) )
))
(declare-fun arrayNoDuplicates!0 (array!32809 (_ BitVec 32) List!9991) Bool)

(assert (=> b!510831 (= res!311828 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9988))))

(declare-fun b!510832 () Bool)

(declare-fun res!311829 () Bool)

(assert (=> b!510832 (=> (not res!311829) (not e!298521))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510832 (= res!311829 (validKeyInArray!0 (select (arr!15780 a!3235) j!176)))))

(declare-fun b!510833 () Bool)

(declare-fun e!298520 () Bool)

(assert (=> b!510833 (= e!298519 (not e!298520))))

(declare-fun res!311830 () Bool)

(assert (=> b!510833 (=> res!311830 e!298520)))

(declare-fun lt!233737 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4254 0))(
  ( (MissingZero!4254 (index!19204 (_ BitVec 32))) (Found!4254 (index!19205 (_ BitVec 32))) (Intermediate!4254 (undefined!5066 Bool) (index!19206 (_ BitVec 32)) (x!48186 (_ BitVec 32))) (Undefined!4254) (MissingVacant!4254 (index!19207 (_ BitVec 32))) )
))
(declare-fun lt!233738 () SeekEntryResult!4254)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32809 (_ BitVec 32)) SeekEntryResult!4254)

(assert (=> b!510833 (= res!311830 (= lt!233738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233737 (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235)) mask!3524)))))

(declare-fun lt!233741 () (_ BitVec 32))

(assert (=> b!510833 (= lt!233738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233741 (select (arr!15780 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510833 (= lt!233737 (toIndex!0 (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510833 (= lt!233741 (toIndex!0 (select (arr!15780 a!3235) j!176) mask!3524))))

(declare-fun lt!233736 () SeekEntryResult!4254)

(assert (=> b!510833 (= lt!233736 (Found!4254 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32809 (_ BitVec 32)) SeekEntryResult!4254)

(assert (=> b!510833 (= lt!233736 (seekEntryOrOpen!0 (select (arr!15780 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32809 (_ BitVec 32)) Bool)

(assert (=> b!510833 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15758 0))(
  ( (Unit!15759) )
))
(declare-fun lt!233739 () Unit!15758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15758)

(assert (=> b!510833 (= lt!233739 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510834 () Bool)

(assert (=> b!510834 (= e!298521 e!298519)))

(declare-fun res!311832 () Bool)

(assert (=> b!510834 (=> (not res!311832) (not e!298519))))

(declare-fun lt!233740 () SeekEntryResult!4254)

(assert (=> b!510834 (= res!311832 (or (= lt!233740 (MissingZero!4254 i!1204)) (= lt!233740 (MissingVacant!4254 i!1204))))))

(assert (=> b!510834 (= lt!233740 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510835 () Bool)

(declare-fun res!311834 () Bool)

(assert (=> b!510835 (=> (not res!311834) (not e!298521))))

(assert (=> b!510835 (= res!311834 (and (= (size!16144 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16144 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16144 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510836 () Bool)

(assert (=> b!510836 (= e!298520 (or (not (is-Intermediate!4254 lt!233738)) (not (undefined!5066 lt!233738)) (= lt!233736 Undefined!4254)))))

(declare-fun b!510837 () Bool)

(declare-fun res!311831 () Bool)

(assert (=> b!510837 (=> (not res!311831) (not e!298519))))

(assert (=> b!510837 (= res!311831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510838 () Bool)

(declare-fun res!311833 () Bool)

(assert (=> b!510838 (=> (not res!311833) (not e!298521))))

(assert (=> b!510838 (= res!311833 (validKeyInArray!0 k!2280))))

(declare-fun b!510839 () Bool)

(declare-fun res!311826 () Bool)

(assert (=> b!510839 (=> (not res!311826) (not e!298521))))

(declare-fun arrayContainsKey!0 (array!32809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510839 (= res!311826 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46138 res!311827) b!510835))

(assert (= (and b!510835 res!311834) b!510832))

(assert (= (and b!510832 res!311829) b!510838))

(assert (= (and b!510838 res!311833) b!510839))

(assert (= (and b!510839 res!311826) b!510834))

(assert (= (and b!510834 res!311832) b!510837))

(assert (= (and b!510837 res!311831) b!510831))

(assert (= (and b!510831 res!311828) b!510833))

(assert (= (and b!510833 (not res!311830)) b!510836))

(declare-fun m!492379 () Bool)

(assert (=> b!510831 m!492379))

(declare-fun m!492381 () Bool)

(assert (=> b!510837 m!492381))

(declare-fun m!492383 () Bool)

(assert (=> b!510834 m!492383))

(declare-fun m!492385 () Bool)

(assert (=> b!510839 m!492385))

(declare-fun m!492387 () Bool)

(assert (=> b!510832 m!492387))

(assert (=> b!510832 m!492387))

(declare-fun m!492389 () Bool)

(assert (=> b!510832 m!492389))

(declare-fun m!492391 () Bool)

(assert (=> b!510838 m!492391))

(declare-fun m!492393 () Bool)

(assert (=> b!510833 m!492393))

(declare-fun m!492395 () Bool)

(assert (=> b!510833 m!492395))

(declare-fun m!492397 () Bool)

(assert (=> b!510833 m!492397))

(assert (=> b!510833 m!492387))

(declare-fun m!492399 () Bool)

(assert (=> b!510833 m!492399))

(assert (=> b!510833 m!492387))

(assert (=> b!510833 m!492397))

(declare-fun m!492401 () Bool)

(assert (=> b!510833 m!492401))

(declare-fun m!492403 () Bool)

(assert (=> b!510833 m!492403))

(assert (=> b!510833 m!492387))

(declare-fun m!492405 () Bool)

(assert (=> b!510833 m!492405))

(assert (=> b!510833 m!492397))

(declare-fun m!492407 () Bool)

(assert (=> b!510833 m!492407))

(assert (=> b!510833 m!492387))

(declare-fun m!492409 () Bool)

(assert (=> b!510833 m!492409))

(declare-fun m!492411 () Bool)

(assert (=> start!46138 m!492411))

(declare-fun m!492413 () Bool)

(assert (=> start!46138 m!492413))

(push 1)

(assert (not b!510833))

(assert (not b!510838))

(assert (not b!510831))

(assert (not b!510839))

(assert (not start!46138))

(assert (not b!510832))

(assert (not b!510837))

(assert (not b!510834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!510916 () Bool)

(declare-fun e!298564 () Bool)

(declare-fun e!298562 () Bool)

(assert (=> b!510916 (= e!298564 e!298562)))

(declare-fun c!59789 () Bool)

(assert (=> b!510916 (= c!59789 (validKeyInArray!0 (select (arr!15780 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31490 () Bool)

(declare-fun call!31493 () Bool)

(assert (=> bm!31490 (= call!31493 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59789 (Cons!9987 (select (arr!15780 a!3235) #b00000000000000000000000000000000) Nil!9988) Nil!9988)))))

(declare-fun d!78749 () Bool)

(declare-fun res!311898 () Bool)

(declare-fun e!298561 () Bool)

(assert (=> d!78749 (=> res!311898 e!298561)))

(assert (=> d!78749 (= res!311898 (bvsge #b00000000000000000000000000000000 (size!16144 a!3235)))))

(assert (=> d!78749 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9988) e!298561)))

(declare-fun b!510917 () Bool)

(assert (=> b!510917 (= e!298562 call!31493)))

(declare-fun b!510918 () Bool)

(assert (=> b!510918 (= e!298561 e!298564)))

(declare-fun res!311897 () Bool)

(assert (=> b!510918 (=> (not res!311897) (not e!298564))))

(declare-fun e!298563 () Bool)

(assert (=> b!510918 (= res!311897 (not e!298563))))

(declare-fun res!311896 () Bool)

(assert (=> b!510918 (=> (not res!311896) (not e!298563))))

(assert (=> b!510918 (= res!311896 (validKeyInArray!0 (select (arr!15780 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!510919 () Bool)

(assert (=> b!510919 (= e!298562 call!31493)))

(declare-fun b!510920 () Bool)

(declare-fun contains!2728 (List!9991 (_ BitVec 64)) Bool)

(assert (=> b!510920 (= e!298563 (contains!2728 Nil!9988 (select (arr!15780 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78749 (not res!311898)) b!510918))

(assert (= (and b!510918 res!311896) b!510920))

(assert (= (and b!510918 res!311897) b!510916))

(assert (= (and b!510916 c!59789) b!510917))

(assert (= (and b!510916 (not c!59789)) b!510919))

(assert (= (or b!510917 b!510919) bm!31490))

(declare-fun m!492487 () Bool)

(assert (=> b!510916 m!492487))

(assert (=> b!510916 m!492487))

(declare-fun m!492489 () Bool)

(assert (=> b!510916 m!492489))

(assert (=> bm!31490 m!492487))

(declare-fun m!492491 () Bool)

(assert (=> bm!31490 m!492491))

(assert (=> b!510918 m!492487))

(assert (=> b!510918 m!492487))

(assert (=> b!510918 m!492489))

(assert (=> b!510920 m!492487))

(assert (=> b!510920 m!492487))

(declare-fun m!492493 () Bool)

(assert (=> b!510920 m!492493))

(assert (=> b!510831 d!78749))

(declare-fun d!78753 () Bool)

(assert (=> d!78753 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!510838 d!78753))

(declare-fun d!78755 () Bool)

(assert (=> d!78755 (= (validKeyInArray!0 (select (arr!15780 a!3235) j!176)) (and (not (= (select (arr!15780 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15780 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!510832 d!78755))

(declare-fun b!510959 () Bool)

(declare-fun e!298594 () Bool)

(declare-fun call!31499 () Bool)

(assert (=> b!510959 (= e!298594 call!31499)))

(declare-fun b!510960 () Bool)

(declare-fun e!298592 () Bool)

(assert (=> b!510960 (= e!298592 call!31499)))

(declare-fun b!510961 () Bool)

(assert (=> b!510961 (= e!298592 e!298594)))

(declare-fun lt!233796 () (_ BitVec 64))

(assert (=> b!510961 (= lt!233796 (select (arr!15780 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!233798 () Unit!15758)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32809 (_ BitVec 64) (_ BitVec 32)) Unit!15758)

(assert (=> b!510961 (= lt!233798 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!233796 #b00000000000000000000000000000000))))

(assert (=> b!510961 (arrayContainsKey!0 a!3235 lt!233796 #b00000000000000000000000000000000)))

(declare-fun lt!233797 () Unit!15758)

(assert (=> b!510961 (= lt!233797 lt!233798)))

(declare-fun res!311921 () Bool)

(assert (=> b!510961 (= res!311921 (= (seekEntryOrOpen!0 (select (arr!15780 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4254 #b00000000000000000000000000000000)))))

(assert (=> b!510961 (=> (not res!311921) (not e!298594))))

(declare-fun bm!31496 () Bool)

(assert (=> bm!31496 (= call!31499 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!510962 () Bool)

(declare-fun e!298593 () Bool)

(assert (=> b!510962 (= e!298593 e!298592)))

(declare-fun c!59798 () Bool)

(assert (=> b!510962 (= c!59798 (validKeyInArray!0 (select (arr!15780 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78757 () Bool)

(declare-fun res!311922 () Bool)

(assert (=> d!78757 (=> res!311922 e!298593)))

(assert (=> d!78757 (= res!311922 (bvsge #b00000000000000000000000000000000 (size!16144 a!3235)))))

(assert (=> d!78757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!298593)))

(assert (= (and d!78757 (not res!311922)) b!510962))

(assert (= (and b!510962 c!59798) b!510961))

(assert (= (and b!510962 (not c!59798)) b!510960))

(assert (= (and b!510961 res!311921) b!510959))

(assert (= (or b!510959 b!510960) bm!31496))

(assert (=> b!510961 m!492487))

(declare-fun m!492511 () Bool)

(assert (=> b!510961 m!492511))

(declare-fun m!492513 () Bool)

(assert (=> b!510961 m!492513))

(assert (=> b!510961 m!492487))

(declare-fun m!492515 () Bool)

(assert (=> b!510961 m!492515))

(declare-fun m!492517 () Bool)

(assert (=> bm!31496 m!492517))

(assert (=> b!510962 m!492487))

(assert (=> b!510962 m!492487))

(assert (=> b!510962 m!492489))

(assert (=> b!510837 d!78757))

(declare-fun d!78763 () Bool)

(declare-fun lt!233825 () SeekEntryResult!4254)

(assert (=> d!78763 (and (or (is-Undefined!4254 lt!233825) (not (is-Found!4254 lt!233825)) (and (bvsge (index!19205 lt!233825) #b00000000000000000000000000000000) (bvslt (index!19205 lt!233825) (size!16144 a!3235)))) (or (is-Undefined!4254 lt!233825) (is-Found!4254 lt!233825) (not (is-MissingZero!4254 lt!233825)) (and (bvsge (index!19204 lt!233825) #b00000000000000000000000000000000) (bvslt (index!19204 lt!233825) (size!16144 a!3235)))) (or (is-Undefined!4254 lt!233825) (is-Found!4254 lt!233825) (is-MissingZero!4254 lt!233825) (not (is-MissingVacant!4254 lt!233825)) (and (bvsge (index!19207 lt!233825) #b00000000000000000000000000000000) (bvslt (index!19207 lt!233825) (size!16144 a!3235)))) (or (is-Undefined!4254 lt!233825) (ite (is-Found!4254 lt!233825) (= (select (arr!15780 a!3235) (index!19205 lt!233825)) k!2280) (ite (is-MissingZero!4254 lt!233825) (= (select (arr!15780 a!3235) (index!19204 lt!233825)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4254 lt!233825) (= (select (arr!15780 a!3235) (index!19207 lt!233825)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!298620 () SeekEntryResult!4254)

(assert (=> d!78763 (= lt!233825 e!298620)))

(declare-fun c!59825 () Bool)

(declare-fun lt!233824 () SeekEntryResult!4254)

(assert (=> d!78763 (= c!59825 (and (is-Intermediate!4254 lt!233824) (undefined!5066 lt!233824)))))

(assert (=> d!78763 (= lt!233824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78763 (validMask!0 mask!3524)))

(assert (=> d!78763 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!233825)))

(declare-fun b!511011 () Bool)

(declare-fun c!59824 () Bool)

(declare-fun lt!233823 () (_ BitVec 64))

(assert (=> b!511011 (= c!59824 (= lt!233823 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!298621 () SeekEntryResult!4254)

(declare-fun e!298619 () SeekEntryResult!4254)

(assert (=> b!511011 (= e!298621 e!298619)))

(declare-fun b!511012 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32809 (_ BitVec 32)) SeekEntryResult!4254)

(assert (=> b!511012 (= e!298619 (seekKeyOrZeroReturnVacant!0 (x!48186 lt!233824) (index!19206 lt!233824) (index!19206 lt!233824) k!2280 a!3235 mask!3524))))

(declare-fun b!511013 () Bool)

(assert (=> b!511013 (= e!298619 (MissingZero!4254 (index!19206 lt!233824)))))

(declare-fun b!511014 () Bool)

(assert (=> b!511014 (= e!298620 e!298621)))

(assert (=> b!511014 (= lt!233823 (select (arr!15780 a!3235) (index!19206 lt!233824)))))

(declare-fun c!59823 () Bool)

(assert (=> b!511014 (= c!59823 (= lt!233823 k!2280))))

(declare-fun b!511015 () Bool)

(assert (=> b!511015 (= e!298621 (Found!4254 (index!19206 lt!233824)))))

(declare-fun b!511016 () Bool)

(assert (=> b!511016 (= e!298620 Undefined!4254)))

(assert (= (and d!78763 c!59825) b!511016))

(assert (= (and d!78763 (not c!59825)) b!511014))

(assert (= (and b!511014 c!59823) b!511015))

(assert (= (and b!511014 (not c!59823)) b!511011))

(assert (= (and b!511011 c!59824) b!511013))

(assert (= (and b!511011 (not c!59824)) b!511012))

(declare-fun m!492545 () Bool)

(assert (=> d!78763 m!492545))

(declare-fun m!492547 () Bool)

(assert (=> d!78763 m!492547))

(assert (=> d!78763 m!492545))

(declare-fun m!492549 () Bool)

(assert (=> d!78763 m!492549))

(assert (=> d!78763 m!492411))

(declare-fun m!492551 () Bool)

(assert (=> d!78763 m!492551))

(declare-fun m!492553 () Bool)

(assert (=> d!78763 m!492553))

(declare-fun m!492555 () Bool)

(assert (=> b!511012 m!492555))

(declare-fun m!492557 () Bool)

(assert (=> b!511014 m!492557))

(assert (=> b!510834 d!78763))

(declare-fun d!78771 () Bool)

(declare-fun res!311931 () Bool)

(declare-fun e!298632 () Bool)

(assert (=> d!78771 (=> res!311931 e!298632)))

(assert (=> d!78771 (= res!311931 (= (select (arr!15780 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78771 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!298632)))

(declare-fun b!511029 () Bool)

(declare-fun e!298633 () Bool)

(assert (=> b!511029 (= e!298632 e!298633)))

(declare-fun res!311932 () Bool)

(assert (=> b!511029 (=> (not res!311932) (not e!298633))))

(assert (=> b!511029 (= res!311932 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16144 a!3235)))))

(declare-fun b!511030 () Bool)

(assert (=> b!511030 (= e!298633 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78771 (not res!311931)) b!511029))

(assert (= (and b!511029 res!311932) b!511030))

(assert (=> d!78771 m!492487))

(declare-fun m!492559 () Bool)

(assert (=> b!511030 m!492559))

(assert (=> b!510839 d!78771))

(declare-fun d!78773 () Bool)

(declare-fun lt!233842 () (_ BitVec 32))

(declare-fun lt!233841 () (_ BitVec 32))

(assert (=> d!78773 (= lt!233842 (bvmul (bvxor lt!233841 (bvlshr lt!233841 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78773 (= lt!233841 ((_ extract 31 0) (bvand (bvxor (select (arr!15780 a!3235) j!176) (bvlshr (select (arr!15780 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78773 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!311935 (let ((h!10868 ((_ extract 31 0) (bvand (bvxor (select (arr!15780 a!3235) j!176) (bvlshr (select (arr!15780 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48191 (bvmul (bvxor h!10868 (bvlshr h!10868 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48191 (bvlshr x!48191 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!311935 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!311935 #b00000000000000000000000000000000))))))

(assert (=> d!78773 (= (toIndex!0 (select (arr!15780 a!3235) j!176) mask!3524) (bvand (bvxor lt!233842 (bvlshr lt!233842 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!510833 d!78773))

(declare-fun d!78779 () Bool)

(declare-fun lt!233845 () SeekEntryResult!4254)

(assert (=> d!78779 (and (or (is-Undefined!4254 lt!233845) (not (is-Found!4254 lt!233845)) (and (bvsge (index!19205 lt!233845) #b00000000000000000000000000000000) (bvslt (index!19205 lt!233845) (size!16144 a!3235)))) (or (is-Undefined!4254 lt!233845) (is-Found!4254 lt!233845) (not (is-MissingZero!4254 lt!233845)) (and (bvsge (index!19204 lt!233845) #b00000000000000000000000000000000) (bvslt (index!19204 lt!233845) (size!16144 a!3235)))) (or (is-Undefined!4254 lt!233845) (is-Found!4254 lt!233845) (is-MissingZero!4254 lt!233845) (not (is-MissingVacant!4254 lt!233845)) (and (bvsge (index!19207 lt!233845) #b00000000000000000000000000000000) (bvslt (index!19207 lt!233845) (size!16144 a!3235)))) (or (is-Undefined!4254 lt!233845) (ite (is-Found!4254 lt!233845) (= (select (arr!15780 a!3235) (index!19205 lt!233845)) (select (arr!15780 a!3235) j!176)) (ite (is-MissingZero!4254 lt!233845) (= (select (arr!15780 a!3235) (index!19204 lt!233845)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4254 lt!233845) (= (select (arr!15780 a!3235) (index!19207 lt!233845)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!298643 () SeekEntryResult!4254)

(assert (=> d!78779 (= lt!233845 e!298643)))

(declare-fun c!59834 () Bool)

(declare-fun lt!233844 () SeekEntryResult!4254)

(assert (=> d!78779 (= c!59834 (and (is-Intermediate!4254 lt!233844) (undefined!5066 lt!233844)))))

(assert (=> d!78779 (= lt!233844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15780 a!3235) j!176) mask!3524) (select (arr!15780 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78779 (validMask!0 mask!3524)))

(assert (=> d!78779 (= (seekEntryOrOpen!0 (select (arr!15780 a!3235) j!176) a!3235 mask!3524) lt!233845)))

(declare-fun b!511044 () Bool)

(declare-fun c!59833 () Bool)

(declare-fun lt!233843 () (_ BitVec 64))

(assert (=> b!511044 (= c!59833 (= lt!233843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!298644 () SeekEntryResult!4254)

(declare-fun e!298642 () SeekEntryResult!4254)

(assert (=> b!511044 (= e!298644 e!298642)))

(declare-fun b!511045 () Bool)

(assert (=> b!511045 (= e!298642 (seekKeyOrZeroReturnVacant!0 (x!48186 lt!233844) (index!19206 lt!233844) (index!19206 lt!233844) (select (arr!15780 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!511046 () Bool)

(assert (=> b!511046 (= e!298642 (MissingZero!4254 (index!19206 lt!233844)))))

(declare-fun b!511047 () Bool)

(assert (=> b!511047 (= e!298643 e!298644)))

(assert (=> b!511047 (= lt!233843 (select (arr!15780 a!3235) (index!19206 lt!233844)))))

(declare-fun c!59832 () Bool)

(assert (=> b!511047 (= c!59832 (= lt!233843 (select (arr!15780 a!3235) j!176)))))

(declare-fun b!511048 () Bool)

(assert (=> b!511048 (= e!298644 (Found!4254 (index!19206 lt!233844)))))

(declare-fun b!511049 () Bool)

(assert (=> b!511049 (= e!298643 Undefined!4254)))

(assert (= (and d!78779 c!59834) b!511049))

(assert (= (and d!78779 (not c!59834)) b!511047))

(assert (= (and b!511047 c!59832) b!511048))

(assert (= (and b!511047 (not c!59832)) b!511044))

(assert (= (and b!511044 c!59833) b!511046))

(assert (= (and b!511044 (not c!59833)) b!511045))

(assert (=> d!78779 m!492387))

(assert (=> d!78779 m!492399))

(declare-fun m!492575 () Bool)

(assert (=> d!78779 m!492575))

(assert (=> d!78779 m!492399))

(assert (=> d!78779 m!492387))

(declare-fun m!492577 () Bool)

(assert (=> d!78779 m!492577))

(assert (=> d!78779 m!492411))

(declare-fun m!492579 () Bool)

(assert (=> d!78779 m!492579))

(declare-fun m!492581 () Bool)

(assert (=> d!78779 m!492581))

(assert (=> b!511045 m!492387))

(declare-fun m!492583 () Bool)

(assert (=> b!511045 m!492583))

(declare-fun m!492585 () Bool)

(assert (=> b!511047 m!492585))

(assert (=> b!510833 d!78779))

(declare-fun b!511050 () Bool)

(declare-fun e!298647 () Bool)

(declare-fun call!31503 () Bool)

(assert (=> b!511050 (= e!298647 call!31503)))

(declare-fun b!511051 () Bool)

(declare-fun e!298645 () Bool)

(assert (=> b!511051 (= e!298645 call!31503)))

(declare-fun b!511052 () Bool)

(assert (=> b!511052 (= e!298645 e!298647)))

(declare-fun lt!233848 () (_ BitVec 64))

(assert (=> b!511052 (= lt!233848 (select (arr!15780 a!3235) j!176))))

(declare-fun lt!233850 () Unit!15758)

(assert (=> b!511052 (= lt!233850 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!233848 j!176))))

(assert (=> b!511052 (arrayContainsKey!0 a!3235 lt!233848 #b00000000000000000000000000000000)))

(declare-fun lt!233849 () Unit!15758)

(assert (=> b!511052 (= lt!233849 lt!233850)))

(declare-fun res!311939 () Bool)

(assert (=> b!511052 (= res!311939 (= (seekEntryOrOpen!0 (select (arr!15780 a!3235) j!176) a!3235 mask!3524) (Found!4254 j!176)))))

(assert (=> b!511052 (=> (not res!311939) (not e!298647))))

(declare-fun bm!31500 () Bool)

(assert (=> bm!31500 (= call!31503 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!511053 () Bool)

(declare-fun e!298646 () Bool)

(assert (=> b!511053 (= e!298646 e!298645)))

(declare-fun c!59835 () Bool)

(assert (=> b!511053 (= c!59835 (validKeyInArray!0 (select (arr!15780 a!3235) j!176)))))

(declare-fun d!78781 () Bool)

(declare-fun res!311940 () Bool)

(assert (=> d!78781 (=> res!311940 e!298646)))

(assert (=> d!78781 (= res!311940 (bvsge j!176 (size!16144 a!3235)))))

(assert (=> d!78781 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!298646)))

(assert (= (and d!78781 (not res!311940)) b!511053))

(assert (= (and b!511053 c!59835) b!511052))

(assert (= (and b!511053 (not c!59835)) b!511051))

(assert (= (and b!511052 res!311939) b!511050))

(assert (= (or b!511050 b!511051) bm!31500))

(assert (=> b!511052 m!492387))

(declare-fun m!492587 () Bool)

(assert (=> b!511052 m!492587))

(declare-fun m!492589 () Bool)

(assert (=> b!511052 m!492589))

(assert (=> b!511052 m!492387))

(assert (=> b!511052 m!492405))

(declare-fun m!492591 () Bool)

(assert (=> bm!31500 m!492591))

(assert (=> b!511053 m!492387))

(assert (=> b!511053 m!492387))

(assert (=> b!511053 m!492389))

(assert (=> b!510833 d!78781))

(declare-fun b!511134 () Bool)

(declare-fun e!298700 () SeekEntryResult!4254)

(assert (=> b!511134 (= e!298700 (Intermediate!4254 true lt!233737 #b00000000000000000000000000000000))))

(declare-fun e!298701 () SeekEntryResult!4254)

(declare-fun b!511135 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511135 (= e!298701 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!233737 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235)) mask!3524))))

(declare-fun lt!233880 () SeekEntryResult!4254)

(declare-fun b!511136 () Bool)

(assert (=> b!511136 (and (bvsge (index!19206 lt!233880) #b00000000000000000000000000000000) (bvslt (index!19206 lt!233880) (size!16144 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235)))))))

(declare-fun res!311976 () Bool)

(assert (=> b!511136 (= res!311976 (= (select (arr!15780 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235))) (index!19206 lt!233880)) (select (store (arr!15780 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!298703 () Bool)

(assert (=> b!511136 (=> res!311976 e!298703)))

(declare-fun e!298704 () Bool)

(assert (=> b!511136 (= e!298704 e!298703)))

(declare-fun b!511137 () Bool)

(declare-fun e!298702 () Bool)

(assert (=> b!511137 (= e!298702 (bvsge (x!48186 lt!233880) #b01111111111111111111111111111110))))

(declare-fun b!511138 () Bool)

(assert (=> b!511138 (and (bvsge (index!19206 lt!233880) #b00000000000000000000000000000000) (bvslt (index!19206 lt!233880) (size!16144 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235)))))))

(assert (=> b!511138 (= e!298703 (= (select (arr!15780 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235))) (index!19206 lt!233880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!511139 () Bool)

(assert (=> b!511139 (and (bvsge (index!19206 lt!233880) #b00000000000000000000000000000000) (bvslt (index!19206 lt!233880) (size!16144 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235)))))))

(declare-fun res!311977 () Bool)

(assert (=> b!511139 (= res!311977 (= (select (arr!15780 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235))) (index!19206 lt!233880)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!511139 (=> res!311977 e!298703)))

(declare-fun b!511140 () Bool)

(assert (=> b!511140 (= e!298700 e!298701)))

(declare-fun c!59861 () Bool)

(declare-fun lt!233879 () (_ BitVec 64))

(assert (=> b!511140 (= c!59861 (or (= lt!233879 (select (store (arr!15780 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!233879 lt!233879) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!511141 () Bool)

(assert (=> b!511141 (= e!298702 e!298704)))

(declare-fun res!311978 () Bool)

(assert (=> b!511141 (= res!311978 (and (is-Intermediate!4254 lt!233880) (not (undefined!5066 lt!233880)) (bvslt (x!48186 lt!233880) #b01111111111111111111111111111110) (bvsge (x!48186 lt!233880) #b00000000000000000000000000000000) (bvsge (x!48186 lt!233880) #b00000000000000000000000000000000)))))

(assert (=> b!511141 (=> (not res!311978) (not e!298704))))

(declare-fun b!511142 () Bool)

(assert (=> b!511142 (= e!298701 (Intermediate!4254 false lt!233737 #b00000000000000000000000000000000))))

(declare-fun d!78783 () Bool)

(assert (=> d!78783 e!298702))

(declare-fun c!59860 () Bool)

(assert (=> d!78783 (= c!59860 (and (is-Intermediate!4254 lt!233880) (undefined!5066 lt!233880)))))

(assert (=> d!78783 (= lt!233880 e!298700)))

(declare-fun c!59859 () Bool)

(assert (=> d!78783 (= c!59859 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78783 (= lt!233879 (select (arr!15780 (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235))) lt!233737))))

(assert (=> d!78783 (validMask!0 mask!3524)))

(assert (=> d!78783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233737 (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) (array!32810 (store (arr!15780 a!3235) i!1204 k!2280) (size!16144 a!3235)) mask!3524) lt!233880)))

(assert (= (and d!78783 c!59859) b!511134))

(assert (= (and d!78783 (not c!59859)) b!511140))

(assert (= (and b!511140 c!59861) b!511142))

(assert (= (and b!511140 (not c!59861)) b!511135))

(assert (= (and d!78783 c!59860) b!511137))

(assert (= (and d!78783 (not c!59860)) b!511141))

(assert (= (and b!511141 res!311978) b!511136))

(assert (= (and b!511136 (not res!311976)) b!511139))

(assert (= (and b!511139 (not res!311977)) b!511138))

(declare-fun m!492625 () Bool)

(assert (=> d!78783 m!492625))

(assert (=> d!78783 m!492411))

(declare-fun m!492627 () Bool)

(assert (=> b!511136 m!492627))

(assert (=> b!511139 m!492627))

(assert (=> b!511138 m!492627))

(declare-fun m!492629 () Bool)

(assert (=> b!511135 m!492629))

(assert (=> b!511135 m!492629))

(assert (=> b!511135 m!492397))

(declare-fun m!492631 () Bool)

(assert (=> b!511135 m!492631))

(assert (=> b!510833 d!78783))

(declare-fun d!78803 () Bool)

(assert (=> d!78803 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233894 () Unit!15758)

(declare-fun choose!38 (array!32809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15758)

(assert (=> d!78803 (= lt!233894 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78803 (validMask!0 mask!3524)))

(assert (=> d!78803 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!233894)))

(declare-fun bs!16189 () Bool)

(assert (= bs!16189 d!78803))

(assert (=> bs!16189 m!492403))

(declare-fun m!492669 () Bool)

(assert (=> bs!16189 m!492669))

(assert (=> bs!16189 m!492411))

(assert (=> b!510833 d!78803))

(declare-fun d!78815 () Bool)

(declare-fun lt!233896 () (_ BitVec 32))

(declare-fun lt!233895 () (_ BitVec 32))

(assert (=> d!78815 (= lt!233896 (bvmul (bvxor lt!233895 (bvlshr lt!233895 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78815 (= lt!233895 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78815 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!311935 (let ((h!10868 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48191 (bvmul (bvxor h!10868 (bvlshr h!10868 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48191 (bvlshr x!48191 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!311935 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!311935 #b00000000000000000000000000000000))))))

(assert (=> d!78815 (= (toIndex!0 (select (store (arr!15780 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!233896 (bvlshr lt!233896 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!510833 d!78815))

(declare-fun b!511166 () Bool)

(declare-fun e!298719 () SeekEntryResult!4254)

(assert (=> b!511166 (= e!298719 (Intermediate!4254 true lt!233741 #b00000000000000000000000000000000))))

(declare-fun b!511167 () Bool)

(declare-fun e!298720 () SeekEntryResult!4254)

(assert (=> b!511167 (= e!298720 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!233741 #b00000000000000000000000000000000 mask!3524) (select (arr!15780 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!511168 () Bool)

(declare-fun lt!233898 () SeekEntryResult!4254)

(assert (=> b!511168 (and (bvsge (index!19206 lt!233898) #b00000000000000000000000000000000) (bvslt (index!19206 lt!233898) (size!16144 a!3235)))))

(declare-fun res!311986 () Bool)

(assert (=> b!511168 (= res!311986 (= (select (arr!15780 a!3235) (index!19206 lt!233898)) (select (arr!15780 a!3235) j!176)))))

(declare-fun e!298722 () Bool)

(assert (=> b!511168 (=> res!311986 e!298722)))

(declare-fun e!298723 () Bool)

(assert (=> b!511168 (= e!298723 e!298722)))

(declare-fun b!511169 () Bool)

(declare-fun e!298721 () Bool)

(assert (=> b!511169 (= e!298721 (bvsge (x!48186 lt!233898) #b01111111111111111111111111111110))))

(declare-fun b!511170 () Bool)

(assert (=> b!511170 (and (bvsge (index!19206 lt!233898) #b00000000000000000000000000000000) (bvslt (index!19206 lt!233898) (size!16144 a!3235)))))

(assert (=> b!511170 (= e!298722 (= (select (arr!15780 a!3235) (index!19206 lt!233898)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!511171 () Bool)

(assert (=> b!511171 (and (bvsge (index!19206 lt!233898) #b00000000000000000000000000000000) (bvslt (index!19206 lt!233898) (size!16144 a!3235)))))

(declare-fun res!311987 () Bool)

(assert (=> b!511171 (= res!311987 (= (select (arr!15780 a!3235) (index!19206 lt!233898)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!511171 (=> res!311987 e!298722)))

(declare-fun b!511172 () Bool)

(assert (=> b!511172 (= e!298719 e!298720)))

(declare-fun c!59872 () Bool)

(declare-fun lt!233897 () (_ BitVec 64))

(assert (=> b!511172 (= c!59872 (or (= lt!233897 (select (arr!15780 a!3235) j!176)) (= (bvadd lt!233897 lt!233897) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!511173 () Bool)

(assert (=> b!511173 (= e!298721 e!298723)))

(declare-fun res!311988 () Bool)

(assert (=> b!511173 (= res!311988 (and (is-Intermediate!4254 lt!233898) (not (undefined!5066 lt!233898)) (bvslt (x!48186 lt!233898) #b01111111111111111111111111111110) (bvsge (x!48186 lt!233898) #b00000000000000000000000000000000) (bvsge (x!48186 lt!233898) #b00000000000000000000000000000000)))))

(assert (=> b!511173 (=> (not res!311988) (not e!298723))))

(declare-fun b!511174 () Bool)

(assert (=> b!511174 (= e!298720 (Intermediate!4254 false lt!233741 #b00000000000000000000000000000000))))

(declare-fun d!78817 () Bool)

(assert (=> d!78817 e!298721))

(declare-fun c!59871 () Bool)

(assert (=> d!78817 (= c!59871 (and (is-Intermediate!4254 lt!233898) (undefined!5066 lt!233898)))))

(assert (=> d!78817 (= lt!233898 e!298719)))

(declare-fun c!59870 () Bool)

(assert (=> d!78817 (= c!59870 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78817 (= lt!233897 (select (arr!15780 a!3235) lt!233741))))

(assert (=> d!78817 (validMask!0 mask!3524)))

(assert (=> d!78817 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233741 (select (arr!15780 a!3235) j!176) a!3235 mask!3524) lt!233898)))

(assert (= (and d!78817 c!59870) b!511166))

(assert (= (and d!78817 (not c!59870)) b!511172))

(assert (= (and b!511172 c!59872) b!511174))

(assert (= (and b!511172 (not c!59872)) b!511167))

(assert (= (and d!78817 c!59871) b!511169))

(assert (= (and d!78817 (not c!59871)) b!511173))

(assert (= (and b!511173 res!311988) b!511168))

(assert (= (and b!511168 (not res!311986)) b!511171))

(assert (= (and b!511171 (not res!311987)) b!511170))

(declare-fun m!492671 () Bool)

(assert (=> d!78817 m!492671))

(assert (=> d!78817 m!492411))

(declare-fun m!492673 () Bool)

(assert (=> b!511168 m!492673))

(assert (=> b!511171 m!492673))

(assert (=> b!511170 m!492673))

(declare-fun m!492675 () Bool)

(assert (=> b!511167 m!492675))

(assert (=> b!511167 m!492675))

(assert (=> b!511167 m!492387))

(declare-fun m!492677 () Bool)

(assert (=> b!511167 m!492677))

(assert (=> b!510833 d!78817))

(declare-fun d!78819 () Bool)

(assert (=> d!78819 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46138 d!78819))

(declare-fun d!78829 () Bool)

(assert (=> d!78829 (= (array_inv!11554 a!3235) (bvsge (size!16144 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46138 d!78829))

(push 1)

(assert (not bm!31500))

(assert (not d!78763))

(assert (not bm!31496))

(assert (not b!510918))

(assert (not d!78817))

(assert (not b!511012))

(assert (not b!510920))

(assert (not b!511030))

(assert (not d!78783))

(assert (not bm!31490))

(assert (not d!78779))

(assert (not b!510916))

(assert (not b!511053))

(assert (not d!78803))

(assert (not b!510962))

(assert (not b!511167))

(assert (not b!510961))

(assert (not b!511052))

(assert (not b!511045))

(assert (not b!511135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

