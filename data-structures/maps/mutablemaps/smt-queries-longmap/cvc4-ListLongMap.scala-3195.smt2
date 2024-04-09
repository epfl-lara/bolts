; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44810 () Bool)

(assert start!44810)

(declare-fun b!491732 () Bool)

(declare-fun e!288883 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!491732 (= e!288883 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(declare-fun b!491733 () Bool)

(declare-fun res!294821 () Bool)

(declare-fun e!288880 () Bool)

(assert (=> b!491733 (=> (not res!294821) (not e!288880))))

(declare-datatypes ((array!31829 0))(
  ( (array!31830 (arr!15299 (Array (_ BitVec 32) (_ BitVec 64))) (size!15663 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31829)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491733 (= res!294821 (validKeyInArray!0 (select (arr!15299 a!3235) j!176)))))

(declare-fun res!294824 () Bool)

(assert (=> start!44810 (=> (not res!294824) (not e!288880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44810 (= res!294824 (validMask!0 mask!3524))))

(assert (=> start!44810 e!288880))

(assert (=> start!44810 true))

(declare-fun array_inv!11073 (array!31829) Bool)

(assert (=> start!44810 (array_inv!11073 a!3235)))

(declare-fun b!491734 () Bool)

(declare-fun e!288882 () Bool)

(assert (=> b!491734 (= e!288882 (not e!288883))))

(declare-fun res!294820 () Bool)

(assert (=> b!491734 (=> res!294820 e!288883)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3773 0))(
  ( (MissingZero!3773 (index!17271 (_ BitVec 32))) (Found!3773 (index!17272 (_ BitVec 32))) (Intermediate!3773 (undefined!4585 Bool) (index!17273 (_ BitVec 32)) (x!46378 (_ BitVec 32))) (Undefined!3773) (MissingVacant!3773 (index!17274 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31829 (_ BitVec 32)) SeekEntryResult!3773)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491734 (= res!294820 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) (select (arr!15299 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235)) mask!3524)))))

(declare-fun e!288881 () Bool)

(assert (=> b!491734 e!288881))

(declare-fun res!294825 () Bool)

(assert (=> b!491734 (=> (not res!294825) (not e!288881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31829 (_ BitVec 32)) Bool)

(assert (=> b!491734 (= res!294825 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14484 0))(
  ( (Unit!14485) )
))
(declare-fun lt!222355 () Unit!14484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14484)

(assert (=> b!491734 (= lt!222355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491735 () Bool)

(assert (=> b!491735 (= e!288880 e!288882)))

(declare-fun res!294827 () Bool)

(assert (=> b!491735 (=> (not res!294827) (not e!288882))))

(declare-fun lt!222356 () SeekEntryResult!3773)

(assert (=> b!491735 (= res!294827 (or (= lt!222356 (MissingZero!3773 i!1204)) (= lt!222356 (MissingVacant!3773 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31829 (_ BitVec 32)) SeekEntryResult!3773)

(assert (=> b!491735 (= lt!222356 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491736 () Bool)

(declare-fun res!294818 () Bool)

(assert (=> b!491736 (=> (not res!294818) (not e!288880))))

(assert (=> b!491736 (= res!294818 (validKeyInArray!0 k!2280))))

(declare-fun b!491737 () Bool)

(declare-fun res!294823 () Bool)

(assert (=> b!491737 (=> (not res!294823) (not e!288882))))

(declare-datatypes ((List!9510 0))(
  ( (Nil!9507) (Cons!9506 (h!10368 (_ BitVec 64)) (t!15746 List!9510)) )
))
(declare-fun arrayNoDuplicates!0 (array!31829 (_ BitVec 32) List!9510) Bool)

(assert (=> b!491737 (= res!294823 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9507))))

(declare-fun b!491738 () Bool)

(declare-fun res!294826 () Bool)

(assert (=> b!491738 (=> (not res!294826) (not e!288880))))

(assert (=> b!491738 (= res!294826 (and (= (size!15663 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15663 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15663 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491739 () Bool)

(declare-fun res!294819 () Bool)

(assert (=> b!491739 (=> (not res!294819) (not e!288880))))

(declare-fun arrayContainsKey!0 (array!31829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491739 (= res!294819 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491740 () Bool)

(assert (=> b!491740 (= e!288881 (= (seekEntryOrOpen!0 (select (arr!15299 a!3235) j!176) a!3235 mask!3524) (Found!3773 j!176)))))

(declare-fun b!491741 () Bool)

(declare-fun res!294822 () Bool)

(assert (=> b!491741 (=> (not res!294822) (not e!288882))))

(assert (=> b!491741 (= res!294822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44810 res!294824) b!491738))

(assert (= (and b!491738 res!294826) b!491733))

(assert (= (and b!491733 res!294821) b!491736))

(assert (= (and b!491736 res!294818) b!491739))

(assert (= (and b!491739 res!294819) b!491735))

(assert (= (and b!491735 res!294827) b!491741))

(assert (= (and b!491741 res!294822) b!491737))

(assert (= (and b!491737 res!294823) b!491734))

(assert (= (and b!491734 res!294825) b!491740))

(assert (= (and b!491734 (not res!294820)) b!491732))

(declare-fun m!472531 () Bool)

(assert (=> b!491733 m!472531))

(assert (=> b!491733 m!472531))

(declare-fun m!472533 () Bool)

(assert (=> b!491733 m!472533))

(declare-fun m!472535 () Bool)

(assert (=> b!491736 m!472535))

(declare-fun m!472537 () Bool)

(assert (=> start!44810 m!472537))

(declare-fun m!472539 () Bool)

(assert (=> start!44810 m!472539))

(declare-fun m!472541 () Bool)

(assert (=> b!491737 m!472541))

(declare-fun m!472543 () Bool)

(assert (=> b!491735 m!472543))

(declare-fun m!472545 () Bool)

(assert (=> b!491739 m!472545))

(declare-fun m!472547 () Bool)

(assert (=> b!491741 m!472547))

(declare-fun m!472549 () Bool)

(assert (=> b!491734 m!472549))

(declare-fun m!472551 () Bool)

(assert (=> b!491734 m!472551))

(declare-fun m!472553 () Bool)

(assert (=> b!491734 m!472553))

(declare-fun m!472555 () Bool)

(assert (=> b!491734 m!472555))

(assert (=> b!491734 m!472531))

(declare-fun m!472557 () Bool)

(assert (=> b!491734 m!472557))

(assert (=> b!491734 m!472531))

(assert (=> b!491734 m!472555))

(declare-fun m!472559 () Bool)

(assert (=> b!491734 m!472559))

(assert (=> b!491734 m!472553))

(declare-fun m!472561 () Bool)

(assert (=> b!491734 m!472561))

(assert (=> b!491734 m!472531))

(declare-fun m!472563 () Bool)

(assert (=> b!491734 m!472563))

(assert (=> b!491734 m!472553))

(assert (=> b!491734 m!472559))

(assert (=> b!491740 m!472531))

(assert (=> b!491740 m!472531))

(declare-fun m!472565 () Bool)

(assert (=> b!491740 m!472565))

(push 1)

(assert (not start!44810))

(assert (not b!491733))

(assert (not b!491735))

(assert (not b!491737))

(assert (not b!491740))

(assert (not b!491739))

(assert (not b!491741))

(assert (not b!491736))

(assert (not b!491734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!222378 () SeekEntryResult!3773)

(declare-fun b!491778 () Bool)

(declare-fun e!288905 () SeekEntryResult!3773)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31829 (_ BitVec 32)) SeekEntryResult!3773)

(assert (=> b!491778 (= e!288905 (seekKeyOrZeroReturnVacant!0 (x!46378 lt!222378) (index!17273 lt!222378) (index!17273 lt!222378) k!2280 a!3235 mask!3524))))

(declare-fun b!491779 () Bool)

(declare-fun c!58743 () Bool)

(declare-fun lt!222379 () (_ BitVec 64))

(assert (=> b!491779 (= c!58743 (= lt!222379 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!288907 () SeekEntryResult!3773)

(assert (=> b!491779 (= e!288907 e!288905)))

(declare-fun d!77889 () Bool)

(declare-fun lt!222380 () SeekEntryResult!3773)

(assert (=> d!77889 (and (or (is-Undefined!3773 lt!222380) (not (is-Found!3773 lt!222380)) (and (bvsge (index!17272 lt!222380) #b00000000000000000000000000000000) (bvslt (index!17272 lt!222380) (size!15663 a!3235)))) (or (is-Undefined!3773 lt!222380) (is-Found!3773 lt!222380) (not (is-MissingZero!3773 lt!222380)) (and (bvsge (index!17271 lt!222380) #b00000000000000000000000000000000) (bvslt (index!17271 lt!222380) (size!15663 a!3235)))) (or (is-Undefined!3773 lt!222380) (is-Found!3773 lt!222380) (is-MissingZero!3773 lt!222380) (not (is-MissingVacant!3773 lt!222380)) (and (bvsge (index!17274 lt!222380) #b00000000000000000000000000000000) (bvslt (index!17274 lt!222380) (size!15663 a!3235)))) (or (is-Undefined!3773 lt!222380) (ite (is-Found!3773 lt!222380) (= (select (arr!15299 a!3235) (index!17272 lt!222380)) k!2280) (ite (is-MissingZero!3773 lt!222380) (= (select (arr!15299 a!3235) (index!17271 lt!222380)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3773 lt!222380) (= (select (arr!15299 a!3235) (index!17274 lt!222380)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!288906 () SeekEntryResult!3773)

(assert (=> d!77889 (= lt!222380 e!288906)))

(declare-fun c!58745 () Bool)

(assert (=> d!77889 (= c!58745 (and (is-Intermediate!3773 lt!222378) (undefined!4585 lt!222378)))))

(assert (=> d!77889 (= lt!222378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77889 (validMask!0 mask!3524)))

(assert (=> d!77889 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!222380)))

(declare-fun b!491780 () Bool)

(assert (=> b!491780 (= e!288907 (Found!3773 (index!17273 lt!222378)))))

(declare-fun b!491781 () Bool)

(assert (=> b!491781 (= e!288906 e!288907)))

(assert (=> b!491781 (= lt!222379 (select (arr!15299 a!3235) (index!17273 lt!222378)))))

(declare-fun c!58744 () Bool)

(assert (=> b!491781 (= c!58744 (= lt!222379 k!2280))))

(declare-fun b!491782 () Bool)

(assert (=> b!491782 (= e!288905 (MissingZero!3773 (index!17273 lt!222378)))))

(declare-fun b!491783 () Bool)

(assert (=> b!491783 (= e!288906 Undefined!3773)))

(assert (= (and d!77889 c!58745) b!491783))

(assert (= (and d!77889 (not c!58745)) b!491781))

(assert (= (and b!491781 c!58744) b!491780))

(assert (= (and b!491781 (not c!58744)) b!491779))

(assert (= (and b!491779 c!58743) b!491782))

(assert (= (and b!491779 (not c!58743)) b!491778))

(declare-fun m!472579 () Bool)

(assert (=> b!491778 m!472579))

(declare-fun m!472581 () Bool)

(assert (=> d!77889 m!472581))

(assert (=> d!77889 m!472537))

(declare-fun m!472583 () Bool)

(assert (=> d!77889 m!472583))

(declare-fun m!472585 () Bool)

(assert (=> d!77889 m!472585))

(declare-fun m!472587 () Bool)

(assert (=> d!77889 m!472587))

(assert (=> d!77889 m!472587))

(declare-fun m!472589 () Bool)

(assert (=> d!77889 m!472589))

(declare-fun m!472591 () Bool)

(assert (=> b!491781 m!472591))

(assert (=> b!491735 d!77889))

(declare-fun b!491808 () Bool)

(declare-fun e!288926 () Bool)

(declare-fun e!288924 () Bool)

(assert (=> b!491808 (= e!288926 e!288924)))

(declare-fun lt!222395 () (_ BitVec 64))

(assert (=> b!491808 (= lt!222395 (select (arr!15299 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!222393 () Unit!14484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31829 (_ BitVec 64) (_ BitVec 32)) Unit!14484)

(assert (=> b!491808 (= lt!222393 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222395 #b00000000000000000000000000000000))))

(assert (=> b!491808 (arrayContainsKey!0 a!3235 lt!222395 #b00000000000000000000000000000000)))

(declare-fun lt!222394 () Unit!14484)

(assert (=> b!491808 (= lt!222394 lt!222393)))

(declare-fun res!294842 () Bool)

(assert (=> b!491808 (= res!294842 (= (seekEntryOrOpen!0 (select (arr!15299 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3773 #b00000000000000000000000000000000)))))

(assert (=> b!491808 (=> (not res!294842) (not e!288924))))

(declare-fun bm!31367 () Bool)

(declare-fun call!31370 () Bool)

(assert (=> bm!31367 (= call!31370 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!491809 () Bool)

(declare-fun e!288925 () Bool)

(assert (=> b!491809 (= e!288925 e!288926)))

(declare-fun c!58754 () Bool)

(assert (=> b!491809 (= c!58754 (validKeyInArray!0 (select (arr!15299 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77893 () Bool)

(declare-fun res!294843 () Bool)

(assert (=> d!77893 (=> res!294843 e!288925)))

(assert (=> d!77893 (= res!294843 (bvsge #b00000000000000000000000000000000 (size!15663 a!3235)))))

(assert (=> d!77893 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!288925)))

(declare-fun b!491810 () Bool)

(assert (=> b!491810 (= e!288926 call!31370)))

(declare-fun b!491811 () Bool)

(assert (=> b!491811 (= e!288924 call!31370)))

(assert (= (and d!77893 (not res!294843)) b!491809))

(assert (= (and b!491809 c!58754) b!491808))

(assert (= (and b!491809 (not c!58754)) b!491810))

(assert (= (and b!491808 res!294842) b!491811))

(assert (= (or b!491811 b!491810) bm!31367))

(declare-fun m!472617 () Bool)

(assert (=> b!491808 m!472617))

(declare-fun m!472619 () Bool)

(assert (=> b!491808 m!472619))

(declare-fun m!472621 () Bool)

(assert (=> b!491808 m!472621))

(assert (=> b!491808 m!472617))

(declare-fun m!472623 () Bool)

(assert (=> b!491808 m!472623))

(declare-fun m!472625 () Bool)

(assert (=> bm!31367 m!472625))

(assert (=> b!491809 m!472617))

(assert (=> b!491809 m!472617))

(declare-fun m!472627 () Bool)

(assert (=> b!491809 m!472627))

(assert (=> b!491741 d!77893))

(declare-fun d!77899 () Bool)

(assert (=> d!77899 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!491736 d!77899))

(declare-fun b!491836 () Bool)

(declare-fun e!288943 () Bool)

(declare-fun e!288945 () Bool)

(assert (=> b!491836 (= e!288943 e!288945)))

(declare-fun res!294854 () Bool)

(assert (=> b!491836 (=> (not res!294854) (not e!288945))))

(declare-fun e!288946 () Bool)

(assert (=> b!491836 (= res!294854 (not e!288946))))

(declare-fun res!294852 () Bool)

(assert (=> b!491836 (=> (not res!294852) (not e!288946))))

(assert (=> b!491836 (= res!294852 (validKeyInArray!0 (select (arr!15299 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491837 () Bool)

(declare-fun e!288944 () Bool)

(declare-fun call!31373 () Bool)

(assert (=> b!491837 (= e!288944 call!31373)))

(declare-fun b!491838 () Bool)

(declare-fun contains!2712 (List!9510 (_ BitVec 64)) Bool)

(assert (=> b!491838 (= e!288946 (contains!2712 Nil!9507 (select (arr!15299 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491839 () Bool)

(assert (=> b!491839 (= e!288944 call!31373)))

(declare-fun d!77901 () Bool)

(declare-fun res!294853 () Bool)

(assert (=> d!77901 (=> res!294853 e!288943)))

(assert (=> d!77901 (= res!294853 (bvsge #b00000000000000000000000000000000 (size!15663 a!3235)))))

(assert (=> d!77901 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9507) e!288943)))

(declare-fun b!491840 () Bool)

(assert (=> b!491840 (= e!288945 e!288944)))

(declare-fun c!58763 () Bool)

(assert (=> b!491840 (= c!58763 (validKeyInArray!0 (select (arr!15299 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31370 () Bool)

(assert (=> bm!31370 (= call!31373 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58763 (Cons!9506 (select (arr!15299 a!3235) #b00000000000000000000000000000000) Nil!9507) Nil!9507)))))

(assert (= (and d!77901 (not res!294853)) b!491836))

(assert (= (and b!491836 res!294852) b!491838))

(assert (= (and b!491836 res!294854) b!491840))

(assert (= (and b!491840 c!58763) b!491837))

(assert (= (and b!491840 (not c!58763)) b!491839))

(assert (= (or b!491837 b!491839) bm!31370))

(assert (=> b!491836 m!472617))

(assert (=> b!491836 m!472617))

(assert (=> b!491836 m!472627))

(assert (=> b!491838 m!472617))

(assert (=> b!491838 m!472617))

(declare-fun m!472631 () Bool)

(assert (=> b!491838 m!472631))

(assert (=> b!491840 m!472617))

(assert (=> b!491840 m!472617))

(assert (=> b!491840 m!472627))

(assert (=> bm!31370 m!472617))

(declare-fun m!472633 () Bool)

(assert (=> bm!31370 m!472633))

(assert (=> b!491737 d!77901))

(declare-fun d!77905 () Bool)

(assert (=> d!77905 (= (validKeyInArray!0 (select (arr!15299 a!3235) j!176)) (and (not (= (select (arr!15299 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15299 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!491733 d!77905))

(declare-fun d!77907 () Bool)

(declare-fun res!294859 () Bool)

(declare-fun e!288954 () Bool)

(assert (=> d!77907 (=> res!294859 e!288954)))

(assert (=> d!77907 (= res!294859 (= (select (arr!15299 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77907 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!288954)))

(declare-fun b!491851 () Bool)

(declare-fun e!288955 () Bool)

(assert (=> b!491851 (= e!288954 e!288955)))

(declare-fun res!294860 () Bool)

(assert (=> b!491851 (=> (not res!294860) (not e!288955))))

(assert (=> b!491851 (= res!294860 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15663 a!3235)))))

(declare-fun b!491852 () Bool)

(assert (=> b!491852 (= e!288955 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77907 (not res!294859)) b!491851))

(assert (= (and b!491851 res!294860) b!491852))

(assert (=> d!77907 m!472617))

(declare-fun m!472635 () Bool)

(assert (=> b!491852 m!472635))

(assert (=> b!491739 d!77907))

(declare-fun b!491907 () Bool)

(declare-fun e!288991 () Bool)

(declare-fun lt!222426 () SeekEntryResult!3773)

(assert (=> b!491907 (= e!288991 (bvsge (x!46378 lt!222426) #b01111111111111111111111111111110))))

(declare-fun b!491908 () Bool)

(assert (=> b!491908 (and (bvsge (index!17273 lt!222426) #b00000000000000000000000000000000) (bvslt (index!17273 lt!222426) (size!15663 a!3235)))))

(declare-fun e!288989 () Bool)

(assert (=> b!491908 (= e!288989 (= (select (arr!15299 a!3235) (index!17273 lt!222426)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!491910 () Bool)

(declare-fun e!288992 () SeekEntryResult!3773)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491910 (= e!288992 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (arr!15299 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!491911 () Bool)

(declare-fun e!288990 () SeekEntryResult!3773)

(assert (=> b!491911 (= e!288990 e!288992)))

(declare-fun lt!222425 () (_ BitVec 64))

(declare-fun c!58787 () Bool)

(assert (=> b!491911 (= c!58787 (or (= lt!222425 (select (arr!15299 a!3235) j!176)) (= (bvadd lt!222425 lt!222425) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!491912 () Bool)

(assert (=> b!491912 (and (bvsge (index!17273 lt!222426) #b00000000000000000000000000000000) (bvslt (index!17273 lt!222426) (size!15663 a!3235)))))

(declare-fun res!294880 () Bool)

(assert (=> b!491912 (= res!294880 (= (select (arr!15299 a!3235) (index!17273 lt!222426)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491912 (=> res!294880 e!288989)))

(declare-fun b!491913 () Bool)

(assert (=> b!491913 (= e!288992 (Intermediate!3773 false (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491914 () Bool)

(assert (=> b!491914 (and (bvsge (index!17273 lt!222426) #b00000000000000000000000000000000) (bvslt (index!17273 lt!222426) (size!15663 a!3235)))))

(declare-fun res!294879 () Bool)

(assert (=> b!491914 (= res!294879 (= (select (arr!15299 a!3235) (index!17273 lt!222426)) (select (arr!15299 a!3235) j!176)))))

(assert (=> b!491914 (=> res!294879 e!288989)))

(declare-fun e!288988 () Bool)

(assert (=> b!491914 (= e!288988 e!288989)))

(declare-fun b!491915 () Bool)

(assert (=> b!491915 (= e!288990 (Intermediate!3773 true (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491909 () Bool)

(assert (=> b!491909 (= e!288991 e!288988)))

(declare-fun res!294881 () Bool)

(assert (=> b!491909 (= res!294881 (and (is-Intermediate!3773 lt!222426) (not (undefined!4585 lt!222426)) (bvslt (x!46378 lt!222426) #b01111111111111111111111111111110) (bvsge (x!46378 lt!222426) #b00000000000000000000000000000000) (bvsge (x!46378 lt!222426) #b00000000000000000000000000000000)))))

(assert (=> b!491909 (=> (not res!294881) (not e!288988))))

(declare-fun d!77909 () Bool)

(assert (=> d!77909 e!288991))

(declare-fun c!58785 () Bool)

(assert (=> d!77909 (= c!58785 (and (is-Intermediate!3773 lt!222426) (undefined!4585 lt!222426)))))

(assert (=> d!77909 (= lt!222426 e!288990)))

(declare-fun c!58786 () Bool)

(assert (=> d!77909 (= c!58786 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77909 (= lt!222425 (select (arr!15299 a!3235) (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524)))))

(assert (=> d!77909 (validMask!0 mask!3524)))

(assert (=> d!77909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) (select (arr!15299 a!3235) j!176) a!3235 mask!3524) lt!222426)))

(assert (= (and d!77909 c!58786) b!491915))

(assert (= (and d!77909 (not c!58786)) b!491911))

(assert (= (and b!491911 c!58787) b!491913))

(assert (= (and b!491911 (not c!58787)) b!491910))

(assert (= (and d!77909 c!58785) b!491907))

(assert (= (and d!77909 (not c!58785)) b!491909))

(assert (= (and b!491909 res!294881) b!491914))

(assert (= (and b!491914 (not res!294879)) b!491912))

(assert (= (and b!491912 (not res!294880)) b!491908))

(assert (=> b!491910 m!472555))

(declare-fun m!472673 () Bool)

(assert (=> b!491910 m!472673))

(assert (=> b!491910 m!472673))

(assert (=> b!491910 m!472531))

(declare-fun m!472675 () Bool)

(assert (=> b!491910 m!472675))

(declare-fun m!472677 () Bool)

(assert (=> b!491912 m!472677))

(assert (=> b!491908 m!472677))

(assert (=> b!491914 m!472677))

(assert (=> d!77909 m!472555))

(declare-fun m!472679 () Bool)

(assert (=> d!77909 m!472679))

(assert (=> d!77909 m!472537))

(assert (=> b!491734 d!77909))

(declare-fun d!77917 () Bool)

(declare-fun lt!222434 () (_ BitVec 32))

(declare-fun lt!222433 () (_ BitVec 32))

(assert (=> d!77917 (= lt!222434 (bvmul (bvxor lt!222433 (bvlshr lt!222433 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77917 (= lt!222433 ((_ extract 31 0) (bvand (bvxor (select (arr!15299 a!3235) j!176) (bvlshr (select (arr!15299 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77917 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!294882 (let ((h!10369 ((_ extract 31 0) (bvand (bvxor (select (arr!15299 a!3235) j!176) (bvlshr (select (arr!15299 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46381 (bvmul (bvxor h!10369 (bvlshr h!10369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46381 (bvlshr x!46381 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!294882 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!294882 #b00000000000000000000000000000000))))))

(assert (=> d!77917 (= (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) (bvand (bvxor lt!222434 (bvlshr lt!222434 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!491734 d!77917))

(declare-fun b!491925 () Bool)

(declare-fun e!289000 () Bool)

(declare-fun e!288998 () Bool)

(assert (=> b!491925 (= e!289000 e!288998)))

(declare-fun lt!222437 () (_ BitVec 64))

(assert (=> b!491925 (= lt!222437 (select (arr!15299 a!3235) j!176))))

(declare-fun lt!222435 () Unit!14484)

(assert (=> b!491925 (= lt!222435 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222437 j!176))))

(assert (=> b!491925 (arrayContainsKey!0 a!3235 lt!222437 #b00000000000000000000000000000000)))

(declare-fun lt!222436 () Unit!14484)

(assert (=> b!491925 (= lt!222436 lt!222435)))

(declare-fun res!294887 () Bool)

(assert (=> b!491925 (= res!294887 (= (seekEntryOrOpen!0 (select (arr!15299 a!3235) j!176) a!3235 mask!3524) (Found!3773 j!176)))))

(assert (=> b!491925 (=> (not res!294887) (not e!288998))))

(declare-fun bm!31374 () Bool)

(declare-fun call!31377 () Bool)

(assert (=> bm!31374 (= call!31377 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!491926 () Bool)

(declare-fun e!288999 () Bool)

(assert (=> b!491926 (= e!288999 e!289000)))

(declare-fun c!58791 () Bool)

(assert (=> b!491926 (= c!58791 (validKeyInArray!0 (select (arr!15299 a!3235) j!176)))))

(declare-fun d!77921 () Bool)

(declare-fun res!294888 () Bool)

(assert (=> d!77921 (=> res!294888 e!288999)))

(assert (=> d!77921 (= res!294888 (bvsge j!176 (size!15663 a!3235)))))

(assert (=> d!77921 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!288999)))

(declare-fun b!491927 () Bool)

(assert (=> b!491927 (= e!289000 call!31377)))

(declare-fun b!491928 () Bool)

(assert (=> b!491928 (= e!288998 call!31377)))

(assert (= (and d!77921 (not res!294888)) b!491926))

(assert (= (and b!491926 c!58791) b!491925))

(assert (= (and b!491926 (not c!58791)) b!491927))

(assert (= (and b!491925 res!294887) b!491928))

(assert (= (or b!491928 b!491927) bm!31374))

(assert (=> b!491925 m!472531))

(declare-fun m!472689 () Bool)

(assert (=> b!491925 m!472689))

(declare-fun m!472691 () Bool)

(assert (=> b!491925 m!472691))

(assert (=> b!491925 m!472531))

(assert (=> b!491925 m!472565))

(declare-fun m!472693 () Bool)

(assert (=> bm!31374 m!472693))

(assert (=> b!491926 m!472531))

(assert (=> b!491926 m!472531))

(assert (=> b!491926 m!472533))

(assert (=> b!491734 d!77921))

(declare-fun d!77923 () Bool)

(assert (=> d!77923 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222444 () Unit!14484)

(declare-fun choose!38 (array!31829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14484)

(assert (=> d!77923 (= lt!222444 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77923 (validMask!0 mask!3524)))

(assert (=> d!77923 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!222444)))

(declare-fun bs!15684 () Bool)

(assert (= bs!15684 d!77923))

(assert (=> bs!15684 m!472563))

(declare-fun m!472695 () Bool)

(assert (=> bs!15684 m!472695))

(assert (=> bs!15684 m!472537))

(assert (=> b!491734 d!77923))

(declare-fun d!77925 () Bool)

(declare-fun lt!222446 () (_ BitVec 32))

(declare-fun lt!222445 () (_ BitVec 32))

(assert (=> d!77925 (= lt!222446 (bvmul (bvxor lt!222445 (bvlshr lt!222445 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77925 (= lt!222445 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77925 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!294882 (let ((h!10369 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46381 (bvmul (bvxor h!10369 (bvlshr h!10369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46381 (bvlshr x!46381 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!294882 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!294882 #b00000000000000000000000000000000))))))

(assert (=> d!77925 (= (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!222446 (bvlshr lt!222446 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!491734 d!77925))

(declare-fun b!491929 () Bool)

(declare-fun e!289004 () Bool)

(declare-fun lt!222448 () SeekEntryResult!3773)

(assert (=> b!491929 (= e!289004 (bvsge (x!46378 lt!222448) #b01111111111111111111111111111110))))

(declare-fun b!491930 () Bool)

(assert (=> b!491930 (and (bvsge (index!17273 lt!222448) #b00000000000000000000000000000000) (bvslt (index!17273 lt!222448) (size!15663 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235)))))))

(declare-fun e!289002 () Bool)

(assert (=> b!491930 (= e!289002 (= (select (arr!15299 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235))) (index!17273 lt!222448)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!491932 () Bool)

(declare-fun e!289005 () SeekEntryResult!3773)

(assert (=> b!491932 (= e!289005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235)) mask!3524))))

(declare-fun b!491933 () Bool)

(declare-fun e!289003 () SeekEntryResult!3773)

(assert (=> b!491933 (= e!289003 e!289005)))

(declare-fun lt!222447 () (_ BitVec 64))

(declare-fun c!58794 () Bool)

(assert (=> b!491933 (= c!58794 (or (= lt!222447 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!222447 lt!222447) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!491934 () Bool)

(assert (=> b!491934 (and (bvsge (index!17273 lt!222448) #b00000000000000000000000000000000) (bvslt (index!17273 lt!222448) (size!15663 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235)))))))

(declare-fun res!294890 () Bool)

(assert (=> b!491934 (= res!294890 (= (select (arr!15299 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235))) (index!17273 lt!222448)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491934 (=> res!294890 e!289002)))

(declare-fun b!491935 () Bool)

(assert (=> b!491935 (= e!289005 (Intermediate!3773 false (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491936 () Bool)

(assert (=> b!491936 (and (bvsge (index!17273 lt!222448) #b00000000000000000000000000000000) (bvslt (index!17273 lt!222448) (size!15663 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235)))))))

(declare-fun res!294889 () Bool)

(assert (=> b!491936 (= res!294889 (= (select (arr!15299 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235))) (index!17273 lt!222448)) (select (store (arr!15299 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!491936 (=> res!294889 e!289002)))

(declare-fun e!289001 () Bool)

(assert (=> b!491936 (= e!289001 e!289002)))

(declare-fun b!491937 () Bool)

(assert (=> b!491937 (= e!289003 (Intermediate!3773 true (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491931 () Bool)

(assert (=> b!491931 (= e!289004 e!289001)))

(declare-fun res!294891 () Bool)

(assert (=> b!491931 (= res!294891 (and (is-Intermediate!3773 lt!222448) (not (undefined!4585 lt!222448)) (bvslt (x!46378 lt!222448) #b01111111111111111111111111111110) (bvsge (x!46378 lt!222448) #b00000000000000000000000000000000) (bvsge (x!46378 lt!222448) #b00000000000000000000000000000000)))))

(assert (=> b!491931 (=> (not res!294891) (not e!289001))))

(declare-fun d!77927 () Bool)

(assert (=> d!77927 e!289004))

(declare-fun c!58792 () Bool)

(assert (=> d!77927 (= c!58792 (and (is-Intermediate!3773 lt!222448) (undefined!4585 lt!222448)))))

(assert (=> d!77927 (= lt!222448 e!289003)))

(declare-fun c!58793 () Bool)

(assert (=> d!77927 (= c!58793 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77927 (= lt!222447 (select (arr!15299 (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235))) (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524)))))

(assert (=> d!77927 (validMask!0 mask!3524)))

(assert (=> d!77927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15299 a!3235) i!1204 k!2280) j!176) (array!31830 (store (arr!15299 a!3235) i!1204 k!2280) (size!15663 a!3235)) mask!3524) lt!222448)))

(assert (= (and d!77927 c!58793) b!491937))

(assert (= (and d!77927 (not c!58793)) b!491933))

(assert (= (and b!491933 c!58794) b!491935))

(assert (= (and b!491933 (not c!58794)) b!491932))

(assert (= (and d!77927 c!58792) b!491929))

(assert (= (and d!77927 (not c!58792)) b!491931))

(assert (= (and b!491931 res!294891) b!491936))

(assert (= (and b!491936 (not res!294889)) b!491934))

(assert (= (and b!491934 (not res!294890)) b!491930))

(assert (=> b!491932 m!472559))

(declare-fun m!472697 () Bool)

(assert (=> b!491932 m!472697))

(assert (=> b!491932 m!472697))

(assert (=> b!491932 m!472553))

(declare-fun m!472699 () Bool)

(assert (=> b!491932 m!472699))

(declare-fun m!472701 () Bool)

(assert (=> b!491934 m!472701))

(assert (=> b!491930 m!472701))

(assert (=> b!491936 m!472701))

(assert (=> d!77927 m!472559))

(declare-fun m!472703 () Bool)

(assert (=> d!77927 m!472703))

(assert (=> d!77927 m!472537))

(assert (=> b!491734 d!77927))

(declare-fun lt!222454 () SeekEntryResult!3773)

(declare-fun b!491942 () Bool)

(declare-fun e!289009 () SeekEntryResult!3773)

(assert (=> b!491942 (= e!289009 (seekKeyOrZeroReturnVacant!0 (x!46378 lt!222454) (index!17273 lt!222454) (index!17273 lt!222454) (select (arr!15299 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!491943 () Bool)

(declare-fun c!58796 () Bool)

(declare-fun lt!222455 () (_ BitVec 64))

(assert (=> b!491943 (= c!58796 (= lt!222455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289011 () SeekEntryResult!3773)

(assert (=> b!491943 (= e!289011 e!289009)))

(declare-fun d!77931 () Bool)

(declare-fun lt!222456 () SeekEntryResult!3773)

(assert (=> d!77931 (and (or (is-Undefined!3773 lt!222456) (not (is-Found!3773 lt!222456)) (and (bvsge (index!17272 lt!222456) #b00000000000000000000000000000000) (bvslt (index!17272 lt!222456) (size!15663 a!3235)))) (or (is-Undefined!3773 lt!222456) (is-Found!3773 lt!222456) (not (is-MissingZero!3773 lt!222456)) (and (bvsge (index!17271 lt!222456) #b00000000000000000000000000000000) (bvslt (index!17271 lt!222456) (size!15663 a!3235)))) (or (is-Undefined!3773 lt!222456) (is-Found!3773 lt!222456) (is-MissingZero!3773 lt!222456) (not (is-MissingVacant!3773 lt!222456)) (and (bvsge (index!17274 lt!222456) #b00000000000000000000000000000000) (bvslt (index!17274 lt!222456) (size!15663 a!3235)))) (or (is-Undefined!3773 lt!222456) (ite (is-Found!3773 lt!222456) (= (select (arr!15299 a!3235) (index!17272 lt!222456)) (select (arr!15299 a!3235) j!176)) (ite (is-MissingZero!3773 lt!222456) (= (select (arr!15299 a!3235) (index!17271 lt!222456)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3773 lt!222456) (= (select (arr!15299 a!3235) (index!17274 lt!222456)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!289010 () SeekEntryResult!3773)

(assert (=> d!77931 (= lt!222456 e!289010)))

(declare-fun c!58798 () Bool)

(assert (=> d!77931 (= c!58798 (and (is-Intermediate!3773 lt!222454) (undefined!4585 lt!222454)))))

(assert (=> d!77931 (= lt!222454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15299 a!3235) j!176) mask!3524) (select (arr!15299 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77931 (validMask!0 mask!3524)))

(assert (=> d!77931 (= (seekEntryOrOpen!0 (select (arr!15299 a!3235) j!176) a!3235 mask!3524) lt!222456)))

(declare-fun b!491944 () Bool)

(assert (=> b!491944 (= e!289011 (Found!3773 (index!17273 lt!222454)))))

(declare-fun b!491945 () Bool)

(assert (=> b!491945 (= e!289010 e!289011)))

(assert (=> b!491945 (= lt!222455 (select (arr!15299 a!3235) (index!17273 lt!222454)))))

(declare-fun c!58797 () Bool)

(assert (=> b!491945 (= c!58797 (= lt!222455 (select (arr!15299 a!3235) j!176)))))

(declare-fun b!491946 () Bool)

(assert (=> b!491946 (= e!289009 (MissingZero!3773 (index!17273 lt!222454)))))

(declare-fun b!491947 () Bool)

(assert (=> b!491947 (= e!289010 Undefined!3773)))

(assert (= (and d!77931 c!58798) b!491947))

(assert (= (and d!77931 (not c!58798)) b!491945))

(assert (= (and b!491945 c!58797) b!491944))

(assert (= (and b!491945 (not c!58797)) b!491943))

(assert (= (and b!491943 c!58796) b!491946))

(assert (= (and b!491943 (not c!58796)) b!491942))

(assert (=> b!491942 m!472531))

(declare-fun m!472711 () Bool)

(assert (=> b!491942 m!472711))

(declare-fun m!472713 () Bool)

(assert (=> d!77931 m!472713))

(assert (=> d!77931 m!472537))

(declare-fun m!472715 () Bool)

(assert (=> d!77931 m!472715))

(declare-fun m!472717 () Bool)

(assert (=> d!77931 m!472717))

(assert (=> d!77931 m!472531))

(assert (=> d!77931 m!472555))

(assert (=> d!77931 m!472555))

(assert (=> d!77931 m!472531))

(assert (=> d!77931 m!472557))

(declare-fun m!472719 () Bool)

(assert (=> b!491945 m!472719))

(assert (=> b!491740 d!77931))

(declare-fun d!77935 () Bool)

(assert (=> d!77935 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44810 d!77935))

(declare-fun d!77947 () Bool)

(assert (=> d!77947 (= (array_inv!11073 a!3235) (bvsge (size!15663 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44810 d!77947))

(push 1)

