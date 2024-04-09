; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44806 () Bool)

(assert start!44806)

(declare-fun b!491672 () Bool)

(declare-fun res!294766 () Bool)

(declare-fun e!288850 () Bool)

(assert (=> b!491672 (=> (not res!294766) (not e!288850))))

(declare-datatypes ((array!31825 0))(
  ( (array!31826 (arr!15297 (Array (_ BitVec 32) (_ BitVec 64))) (size!15661 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31825)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491672 (= res!294766 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!288849 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!491673 () Bool)

(declare-datatypes ((SeekEntryResult!3771 0))(
  ( (MissingZero!3771 (index!17263 (_ BitVec 32))) (Found!3771 (index!17264 (_ BitVec 32))) (Intermediate!3771 (undefined!4583 Bool) (index!17265 (_ BitVec 32)) (x!46376 (_ BitVec 32))) (Undefined!3771) (MissingVacant!3771 (index!17266 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31825 (_ BitVec 32)) SeekEntryResult!3771)

(assert (=> b!491673 (= e!288849 (= (seekEntryOrOpen!0 (select (arr!15297 a!3235) j!176) a!3235 mask!3524) (Found!3771 j!176)))))

(declare-fun b!491674 () Bool)

(declare-fun res!294763 () Bool)

(declare-fun e!288853 () Bool)

(assert (=> b!491674 (=> (not res!294763) (not e!288853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31825 (_ BitVec 32)) Bool)

(assert (=> b!491674 (= res!294763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491675 () Bool)

(declare-fun res!294758 () Bool)

(assert (=> b!491675 (=> (not res!294758) (not e!288853))))

(declare-datatypes ((List!9508 0))(
  ( (Nil!9505) (Cons!9504 (h!10366 (_ BitVec 64)) (t!15744 List!9508)) )
))
(declare-fun arrayNoDuplicates!0 (array!31825 (_ BitVec 32) List!9508) Bool)

(assert (=> b!491675 (= res!294758 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9505))))

(declare-fun b!491677 () Bool)

(declare-fun res!294759 () Bool)

(assert (=> b!491677 (=> (not res!294759) (not e!288850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491677 (= res!294759 (validKeyInArray!0 (select (arr!15297 a!3235) j!176)))))

(declare-fun b!491678 () Bool)

(declare-fun res!294761 () Bool)

(assert (=> b!491678 (=> (not res!294761) (not e!288850))))

(assert (=> b!491678 (= res!294761 (validKeyInArray!0 k!2280))))

(declare-fun b!491679 () Bool)

(assert (=> b!491679 (= e!288850 e!288853)))

(declare-fun res!294762 () Bool)

(assert (=> b!491679 (=> (not res!294762) (not e!288853))))

(declare-fun lt!222343 () SeekEntryResult!3771)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491679 (= res!294762 (or (= lt!222343 (MissingZero!3771 i!1204)) (= lt!222343 (MissingVacant!3771 i!1204))))))

(assert (=> b!491679 (= lt!222343 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!294760 () Bool)

(assert (=> start!44806 (=> (not res!294760) (not e!288850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44806 (= res!294760 (validMask!0 mask!3524))))

(assert (=> start!44806 e!288850))

(assert (=> start!44806 true))

(declare-fun array_inv!11071 (array!31825) Bool)

(assert (=> start!44806 (array_inv!11071 a!3235)))

(declare-fun b!491676 () Bool)

(declare-fun e!288851 () Bool)

(assert (=> b!491676 (= e!288853 (not e!288851))))

(declare-fun res!294764 () Bool)

(assert (=> b!491676 (=> res!294764 e!288851)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31825 (_ BitVec 32)) SeekEntryResult!3771)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491676 (= res!294764 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) (select (arr!15297 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235)) mask!3524)))))

(assert (=> b!491676 e!288849))

(declare-fun res!294765 () Bool)

(assert (=> b!491676 (=> (not res!294765) (not e!288849))))

(assert (=> b!491676 (= res!294765 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14480 0))(
  ( (Unit!14481) )
))
(declare-fun lt!222344 () Unit!14480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14480)

(assert (=> b!491676 (= lt!222344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491680 () Bool)

(assert (=> b!491680 (= e!288851 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(declare-fun b!491681 () Bool)

(declare-fun res!294767 () Bool)

(assert (=> b!491681 (=> (not res!294767) (not e!288850))))

(assert (=> b!491681 (= res!294767 (and (= (size!15661 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15661 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15661 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44806 res!294760) b!491681))

(assert (= (and b!491681 res!294767) b!491677))

(assert (= (and b!491677 res!294759) b!491678))

(assert (= (and b!491678 res!294761) b!491672))

(assert (= (and b!491672 res!294766) b!491679))

(assert (= (and b!491679 res!294762) b!491674))

(assert (= (and b!491674 res!294763) b!491675))

(assert (= (and b!491675 res!294758) b!491676))

(assert (= (and b!491676 res!294765) b!491673))

(assert (= (and b!491676 (not res!294764)) b!491680))

(declare-fun m!472459 () Bool)

(assert (=> b!491679 m!472459))

(declare-fun m!472461 () Bool)

(assert (=> b!491676 m!472461))

(declare-fun m!472463 () Bool)

(assert (=> b!491676 m!472463))

(declare-fun m!472465 () Bool)

(assert (=> b!491676 m!472465))

(declare-fun m!472467 () Bool)

(assert (=> b!491676 m!472467))

(declare-fun m!472469 () Bool)

(assert (=> b!491676 m!472469))

(declare-fun m!472471 () Bool)

(assert (=> b!491676 m!472471))

(assert (=> b!491676 m!472469))

(assert (=> b!491676 m!472467))

(declare-fun m!472473 () Bool)

(assert (=> b!491676 m!472473))

(assert (=> b!491676 m!472465))

(declare-fun m!472475 () Bool)

(assert (=> b!491676 m!472475))

(assert (=> b!491676 m!472469))

(declare-fun m!472477 () Bool)

(assert (=> b!491676 m!472477))

(assert (=> b!491676 m!472465))

(assert (=> b!491676 m!472473))

(declare-fun m!472479 () Bool)

(assert (=> start!44806 m!472479))

(declare-fun m!472481 () Bool)

(assert (=> start!44806 m!472481))

(declare-fun m!472483 () Bool)

(assert (=> b!491674 m!472483))

(assert (=> b!491677 m!472469))

(assert (=> b!491677 m!472469))

(declare-fun m!472485 () Bool)

(assert (=> b!491677 m!472485))

(declare-fun m!472487 () Bool)

(assert (=> b!491672 m!472487))

(assert (=> b!491673 m!472469))

(assert (=> b!491673 m!472469))

(declare-fun m!472489 () Bool)

(assert (=> b!491673 m!472489))

(declare-fun m!472491 () Bool)

(assert (=> b!491675 m!472491))

(declare-fun m!472493 () Bool)

(assert (=> b!491678 m!472493))

(push 1)

(assert (not b!491679))

(assert (not b!491672))

(assert (not b!491674))

(assert (not b!491675))

(assert (not b!491676))

(assert (not start!44806))

(assert (not b!491677))

(assert (not b!491678))

(assert (not b!491673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!491845 () Bool)

(declare-fun e!288953 () SeekEntryResult!3771)

(declare-fun lt!222402 () SeekEntryResult!3771)

(assert (=> b!491845 (= e!288953 (MissingZero!3771 (index!17265 lt!222402)))))

(declare-fun b!491846 () Bool)

(declare-fun e!288951 () SeekEntryResult!3771)

(declare-fun e!288952 () SeekEntryResult!3771)

(assert (=> b!491846 (= e!288951 e!288952)))

(declare-fun lt!222404 () (_ BitVec 64))

(assert (=> b!491846 (= lt!222404 (select (arr!15297 a!3235) (index!17265 lt!222402)))))

(declare-fun c!58766 () Bool)

(assert (=> b!491846 (= c!58766 (= lt!222404 (select (arr!15297 a!3235) j!176)))))

(declare-fun b!491847 () Bool)

(declare-fun c!58764 () Bool)

(assert (=> b!491847 (= c!58764 (= lt!222404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491847 (= e!288952 e!288953)))

(declare-fun d!77891 () Bool)

(declare-fun lt!222403 () SeekEntryResult!3771)

(assert (=> d!77891 (and (or (is-Undefined!3771 lt!222403) (not (is-Found!3771 lt!222403)) (and (bvsge (index!17264 lt!222403) #b00000000000000000000000000000000) (bvslt (index!17264 lt!222403) (size!15661 a!3235)))) (or (is-Undefined!3771 lt!222403) (is-Found!3771 lt!222403) (not (is-MissingZero!3771 lt!222403)) (and (bvsge (index!17263 lt!222403) #b00000000000000000000000000000000) (bvslt (index!17263 lt!222403) (size!15661 a!3235)))) (or (is-Undefined!3771 lt!222403) (is-Found!3771 lt!222403) (is-MissingZero!3771 lt!222403) (not (is-MissingVacant!3771 lt!222403)) (and (bvsge (index!17266 lt!222403) #b00000000000000000000000000000000) (bvslt (index!17266 lt!222403) (size!15661 a!3235)))) (or (is-Undefined!3771 lt!222403) (ite (is-Found!3771 lt!222403) (= (select (arr!15297 a!3235) (index!17264 lt!222403)) (select (arr!15297 a!3235) j!176)) (ite (is-MissingZero!3771 lt!222403) (= (select (arr!15297 a!3235) (index!17263 lt!222403)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3771 lt!222403) (= (select (arr!15297 a!3235) (index!17266 lt!222403)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77891 (= lt!222403 e!288951)))

(declare-fun c!58765 () Bool)

(assert (=> d!77891 (= c!58765 (and (is-Intermediate!3771 lt!222402) (undefined!4583 lt!222402)))))

(assert (=> d!77891 (= lt!222402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) (select (arr!15297 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77891 (validMask!0 mask!3524)))

(assert (=> d!77891 (= (seekEntryOrOpen!0 (select (arr!15297 a!3235) j!176) a!3235 mask!3524) lt!222403)))

(declare-fun b!491848 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31825 (_ BitVec 32)) SeekEntryResult!3771)

(assert (=> b!491848 (= e!288953 (seekKeyOrZeroReturnVacant!0 (x!46376 lt!222402) (index!17265 lt!222402) (index!17265 lt!222402) (select (arr!15297 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!491849 () Bool)

(assert (=> b!491849 (= e!288951 Undefined!3771)))

(declare-fun b!491850 () Bool)

(assert (=> b!491850 (= e!288952 (Found!3771 (index!17265 lt!222402)))))

(assert (= (and d!77891 c!58765) b!491849))

(assert (= (and d!77891 (not c!58765)) b!491846))

(assert (= (and b!491846 c!58766) b!491850))

(assert (= (and b!491846 (not c!58766)) b!491847))

(assert (= (and b!491847 c!58764) b!491845))

(assert (= (and b!491847 (not c!58764)) b!491848))

(declare-fun m!472637 () Bool)

(assert (=> b!491846 m!472637))

(assert (=> d!77891 m!472479))

(declare-fun m!472639 () Bool)

(assert (=> d!77891 m!472639))

(assert (=> d!77891 m!472469))

(assert (=> d!77891 m!472467))

(declare-fun m!472641 () Bool)

(assert (=> d!77891 m!472641))

(declare-fun m!472643 () Bool)

(assert (=> d!77891 m!472643))

(assert (=> d!77891 m!472467))

(assert (=> d!77891 m!472469))

(assert (=> d!77891 m!472471))

(assert (=> b!491848 m!472469))

(declare-fun m!472645 () Bool)

(assert (=> b!491848 m!472645))

(assert (=> b!491673 d!77891))

(declare-fun b!491853 () Bool)

(declare-fun e!288958 () SeekEntryResult!3771)

(declare-fun lt!222405 () SeekEntryResult!3771)

(assert (=> b!491853 (= e!288958 (MissingZero!3771 (index!17265 lt!222405)))))

(declare-fun b!491854 () Bool)

(declare-fun e!288956 () SeekEntryResult!3771)

(declare-fun e!288957 () SeekEntryResult!3771)

(assert (=> b!491854 (= e!288956 e!288957)))

(declare-fun lt!222407 () (_ BitVec 64))

(assert (=> b!491854 (= lt!222407 (select (arr!15297 a!3235) (index!17265 lt!222405)))))

(declare-fun c!58769 () Bool)

(assert (=> b!491854 (= c!58769 (= lt!222407 k!2280))))

(declare-fun b!491855 () Bool)

(declare-fun c!58767 () Bool)

(assert (=> b!491855 (= c!58767 (= lt!222407 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491855 (= e!288957 e!288958)))

(declare-fun d!77911 () Bool)

(declare-fun lt!222406 () SeekEntryResult!3771)

(assert (=> d!77911 (and (or (is-Undefined!3771 lt!222406) (not (is-Found!3771 lt!222406)) (and (bvsge (index!17264 lt!222406) #b00000000000000000000000000000000) (bvslt (index!17264 lt!222406) (size!15661 a!3235)))) (or (is-Undefined!3771 lt!222406) (is-Found!3771 lt!222406) (not (is-MissingZero!3771 lt!222406)) (and (bvsge (index!17263 lt!222406) #b00000000000000000000000000000000) (bvslt (index!17263 lt!222406) (size!15661 a!3235)))) (or (is-Undefined!3771 lt!222406) (is-Found!3771 lt!222406) (is-MissingZero!3771 lt!222406) (not (is-MissingVacant!3771 lt!222406)) (and (bvsge (index!17266 lt!222406) #b00000000000000000000000000000000) (bvslt (index!17266 lt!222406) (size!15661 a!3235)))) (or (is-Undefined!3771 lt!222406) (ite (is-Found!3771 lt!222406) (= (select (arr!15297 a!3235) (index!17264 lt!222406)) k!2280) (ite (is-MissingZero!3771 lt!222406) (= (select (arr!15297 a!3235) (index!17263 lt!222406)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3771 lt!222406) (= (select (arr!15297 a!3235) (index!17266 lt!222406)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77911 (= lt!222406 e!288956)))

(declare-fun c!58768 () Bool)

(assert (=> d!77911 (= c!58768 (and (is-Intermediate!3771 lt!222405) (undefined!4583 lt!222405)))))

(assert (=> d!77911 (= lt!222405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77911 (validMask!0 mask!3524)))

(assert (=> d!77911 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!222406)))

(declare-fun b!491856 () Bool)

(assert (=> b!491856 (= e!288958 (seekKeyOrZeroReturnVacant!0 (x!46376 lt!222405) (index!17265 lt!222405) (index!17265 lt!222405) k!2280 a!3235 mask!3524))))

(declare-fun b!491857 () Bool)

(assert (=> b!491857 (= e!288956 Undefined!3771)))

(declare-fun b!491858 () Bool)

(assert (=> b!491858 (= e!288957 (Found!3771 (index!17265 lt!222405)))))

(assert (= (and d!77911 c!58768) b!491857))

(assert (= (and d!77911 (not c!58768)) b!491854))

(assert (= (and b!491854 c!58769) b!491858))

(assert (= (and b!491854 (not c!58769)) b!491855))

(assert (= (and b!491855 c!58767) b!491853))

(assert (= (and b!491855 (not c!58767)) b!491856))

(declare-fun m!472647 () Bool)

(assert (=> b!491854 m!472647))

(assert (=> d!77911 m!472479))

(declare-fun m!472649 () Bool)

(assert (=> d!77911 m!472649))

(declare-fun m!472651 () Bool)

(assert (=> d!77911 m!472651))

(declare-fun m!472653 () Bool)

(assert (=> d!77911 m!472653))

(declare-fun m!472655 () Bool)

(assert (=> d!77911 m!472655))

(assert (=> d!77911 m!472651))

(declare-fun m!472657 () Bool)

(assert (=> d!77911 m!472657))

(declare-fun m!472659 () Bool)

(assert (=> b!491856 m!472659))

(assert (=> b!491679 d!77911))

(declare-fun bm!31373 () Bool)

(declare-fun call!31376 () Bool)

(assert (=> bm!31373 (= call!31376 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!491899 () Bool)

(declare-fun e!288986 () Bool)

(assert (=> b!491899 (= e!288986 call!31376)))

(declare-fun d!77913 () Bool)

(declare-fun res!294875 () Bool)

(declare-fun e!288987 () Bool)

(assert (=> d!77913 (=> res!294875 e!288987)))

(assert (=> d!77913 (= res!294875 (bvsge #b00000000000000000000000000000000 (size!15661 a!3235)))))

(assert (=> d!77913 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!288987)))

(declare-fun b!491900 () Bool)

(declare-fun e!288985 () Bool)

(assert (=> b!491900 (= e!288987 e!288985)))

(declare-fun c!58784 () Bool)

(assert (=> b!491900 (= c!58784 (validKeyInArray!0 (select (arr!15297 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491901 () Bool)

(assert (=> b!491901 (= e!288985 call!31376)))

(declare-fun b!491902 () Bool)

(assert (=> b!491902 (= e!288985 e!288986)))

(declare-fun lt!222424 () (_ BitVec 64))

(assert (=> b!491902 (= lt!222424 (select (arr!15297 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!222423 () Unit!14480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31825 (_ BitVec 64) (_ BitVec 32)) Unit!14480)

(assert (=> b!491902 (= lt!222423 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222424 #b00000000000000000000000000000000))))

(assert (=> b!491902 (arrayContainsKey!0 a!3235 lt!222424 #b00000000000000000000000000000000)))

(declare-fun lt!222422 () Unit!14480)

(assert (=> b!491902 (= lt!222422 lt!222423)))

(declare-fun res!294876 () Bool)

(assert (=> b!491902 (= res!294876 (= (seekEntryOrOpen!0 (select (arr!15297 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3771 #b00000000000000000000000000000000)))))

(assert (=> b!491902 (=> (not res!294876) (not e!288986))))

(assert (= (and d!77913 (not res!294875)) b!491900))

(assert (= (and b!491900 c!58784) b!491902))

(assert (= (and b!491900 (not c!58784)) b!491901))

(assert (= (and b!491902 res!294876) b!491899))

(assert (= (or b!491899 b!491901) bm!31373))

(declare-fun m!472661 () Bool)

(assert (=> bm!31373 m!472661))

(declare-fun m!472663 () Bool)

(assert (=> b!491900 m!472663))

(assert (=> b!491900 m!472663))

(declare-fun m!472665 () Bool)

(assert (=> b!491900 m!472665))

(assert (=> b!491902 m!472663))

(declare-fun m!472667 () Bool)

(assert (=> b!491902 m!472667))

(declare-fun m!472669 () Bool)

(assert (=> b!491902 m!472669))

(assert (=> b!491902 m!472663))

(declare-fun m!472671 () Bool)

(assert (=> b!491902 m!472671))

(assert (=> b!491674 d!77913))

(declare-fun d!77915 () Bool)

(assert (=> d!77915 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44806 d!77915))

(declare-fun d!77937 () Bool)

(assert (=> d!77937 (= (array_inv!11071 a!3235) (bvsge (size!15661 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44806 d!77937))

(declare-fun b!491967 () Bool)

(declare-fun e!289025 () Bool)

(declare-fun e!289026 () Bool)

(assert (=> b!491967 (= e!289025 e!289026)))

(declare-fun res!294905 () Bool)

(assert (=> b!491967 (=> (not res!294905) (not e!289026))))

(declare-fun e!289028 () Bool)

(assert (=> b!491967 (= res!294905 (not e!289028))))

(declare-fun res!294904 () Bool)

(assert (=> b!491967 (=> (not res!294904) (not e!289028))))

(assert (=> b!491967 (= res!294904 (validKeyInArray!0 (select (arr!15297 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491968 () Bool)

(declare-fun e!289027 () Bool)

(declare-fun call!31381 () Bool)

(assert (=> b!491968 (= e!289027 call!31381)))

(declare-fun b!491969 () Bool)

(assert (=> b!491969 (= e!289026 e!289027)))

(declare-fun c!58804 () Bool)

(assert (=> b!491969 (= c!58804 (validKeyInArray!0 (select (arr!15297 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491970 () Bool)

(declare-fun contains!2713 (List!9508 (_ BitVec 64)) Bool)

(assert (=> b!491970 (= e!289028 (contains!2713 Nil!9505 (select (arr!15297 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491971 () Bool)

(assert (=> b!491971 (= e!289027 call!31381)))

(declare-fun bm!31378 () Bool)

(assert (=> bm!31378 (= call!31381 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58804 (Cons!9504 (select (arr!15297 a!3235) #b00000000000000000000000000000000) Nil!9505) Nil!9505)))))

(declare-fun d!77939 () Bool)

(declare-fun res!294903 () Bool)

(assert (=> d!77939 (=> res!294903 e!289025)))

(assert (=> d!77939 (= res!294903 (bvsge #b00000000000000000000000000000000 (size!15661 a!3235)))))

(assert (=> d!77939 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9505) e!289025)))

(assert (= (and d!77939 (not res!294903)) b!491967))

(assert (= (and b!491967 res!294904) b!491970))

(assert (= (and b!491967 res!294905) b!491969))

(assert (= (and b!491969 c!58804) b!491971))

(assert (= (and b!491969 (not c!58804)) b!491968))

(assert (= (or b!491971 b!491968) bm!31378))

(assert (=> b!491967 m!472663))

(assert (=> b!491967 m!472663))

(assert (=> b!491967 m!472665))

(assert (=> b!491969 m!472663))

(assert (=> b!491969 m!472663))

(assert (=> b!491969 m!472665))

(assert (=> b!491970 m!472663))

(assert (=> b!491970 m!472663))

(declare-fun m!472731 () Bool)

(assert (=> b!491970 m!472731))

(assert (=> bm!31378 m!472663))

(declare-fun m!472733 () Bool)

(assert (=> bm!31378 m!472733))

(assert (=> b!491675 d!77939))

(declare-fun b!492005 () Bool)

(declare-fun e!289051 () Bool)

(declare-fun lt!222468 () SeekEntryResult!3771)

(assert (=> b!492005 (= e!289051 (bvsge (x!46376 lt!222468) #b01111111111111111111111111111110))))

(declare-fun b!492006 () Bool)

(declare-fun e!289052 () SeekEntryResult!3771)

(assert (=> b!492006 (= e!289052 (Intermediate!3771 false (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492007 () Bool)

(declare-fun e!289054 () Bool)

(assert (=> b!492007 (= e!289051 e!289054)))

(declare-fun res!294922 () Bool)

(assert (=> b!492007 (= res!294922 (and (is-Intermediate!3771 lt!222468) (not (undefined!4583 lt!222468)) (bvslt (x!46376 lt!222468) #b01111111111111111111111111111110) (bvsge (x!46376 lt!222468) #b00000000000000000000000000000000) (bvsge (x!46376 lt!222468) #b00000000000000000000000000000000)))))

(assert (=> b!492007 (=> (not res!294922) (not e!289054))))

(declare-fun b!492008 () Bool)

(assert (=> b!492008 (and (bvsge (index!17265 lt!222468) #b00000000000000000000000000000000) (bvslt (index!17265 lt!222468) (size!15661 a!3235)))))

(declare-fun res!294923 () Bool)

(assert (=> b!492008 (= res!294923 (= (select (arr!15297 a!3235) (index!17265 lt!222468)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289055 () Bool)

(assert (=> b!492008 (=> res!294923 e!289055)))

(declare-fun b!492009 () Bool)

(assert (=> b!492009 (and (bvsge (index!17265 lt!222468) #b00000000000000000000000000000000) (bvslt (index!17265 lt!222468) (size!15661 a!3235)))))

(assert (=> b!492009 (= e!289055 (= (select (arr!15297 a!3235) (index!17265 lt!222468)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492010 () Bool)

(assert (=> b!492010 (and (bvsge (index!17265 lt!222468) #b00000000000000000000000000000000) (bvslt (index!17265 lt!222468) (size!15661 a!3235)))))

(declare-fun res!294921 () Bool)

(assert (=> b!492010 (= res!294921 (= (select (arr!15297 a!3235) (index!17265 lt!222468)) (select (arr!15297 a!3235) j!176)))))

(assert (=> b!492010 (=> res!294921 e!289055)))

(assert (=> b!492010 (= e!289054 e!289055)))

(declare-fun b!492011 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492011 (= e!289052 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (arr!15297 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!492012 () Bool)

(declare-fun e!289053 () SeekEntryResult!3771)

(assert (=> b!492012 (= e!289053 (Intermediate!3771 true (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492013 () Bool)

(assert (=> b!492013 (= e!289053 e!289052)))

(declare-fun lt!222469 () (_ BitVec 64))

(declare-fun c!58816 () Bool)

(assert (=> b!492013 (= c!58816 (or (= lt!222469 (select (arr!15297 a!3235) j!176)) (= (bvadd lt!222469 lt!222469) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!77949 () Bool)

(assert (=> d!77949 e!289051))

(declare-fun c!58814 () Bool)

(assert (=> d!77949 (= c!58814 (and (is-Intermediate!3771 lt!222468) (undefined!4583 lt!222468)))))

(assert (=> d!77949 (= lt!222468 e!289053)))

(declare-fun c!58815 () Bool)

(assert (=> d!77949 (= c!58815 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77949 (= lt!222469 (select (arr!15297 a!3235) (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524)))))

(assert (=> d!77949 (validMask!0 mask!3524)))

(assert (=> d!77949 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) (select (arr!15297 a!3235) j!176) a!3235 mask!3524) lt!222468)))

(assert (= (and d!77949 c!58815) b!492012))

(assert (= (and d!77949 (not c!58815)) b!492013))

(assert (= (and b!492013 c!58816) b!492006))

(assert (= (and b!492013 (not c!58816)) b!492011))

(assert (= (and d!77949 c!58814) b!492005))

(assert (= (and d!77949 (not c!58814)) b!492007))

(assert (= (and b!492007 res!294922) b!492010))

(assert (= (and b!492010 (not res!294921)) b!492008))

(assert (= (and b!492008 (not res!294923)) b!492009))

(declare-fun m!472739 () Bool)

(assert (=> b!492008 m!472739))

(assert (=> d!77949 m!472467))

(declare-fun m!472741 () Bool)

(assert (=> d!77949 m!472741))

(assert (=> d!77949 m!472479))

(assert (=> b!492011 m!472467))

(declare-fun m!472743 () Bool)

(assert (=> b!492011 m!472743))

(assert (=> b!492011 m!472743))

(assert (=> b!492011 m!472469))

(declare-fun m!472745 () Bool)

(assert (=> b!492011 m!472745))

(assert (=> b!492010 m!472739))

(assert (=> b!492009 m!472739))

(assert (=> b!491676 d!77949))

(declare-fun d!77951 () Bool)

(declare-fun lt!222475 () (_ BitVec 32))

(declare-fun lt!222474 () (_ BitVec 32))

(assert (=> d!77951 (= lt!222475 (bvmul (bvxor lt!222474 (bvlshr lt!222474 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77951 (= lt!222474 ((_ extract 31 0) (bvand (bvxor (select (arr!15297 a!3235) j!176) (bvlshr (select (arr!15297 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77951 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!294924 (let ((h!10371 ((_ extract 31 0) (bvand (bvxor (select (arr!15297 a!3235) j!176) (bvlshr (select (arr!15297 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46384 (bvmul (bvxor h!10371 (bvlshr h!10371 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46384 (bvlshr x!46384 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!294924 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!294924 #b00000000000000000000000000000000))))))

(assert (=> d!77951 (= (toIndex!0 (select (arr!15297 a!3235) j!176) mask!3524) (bvand (bvxor lt!222475 (bvlshr lt!222475 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!491676 d!77951))

(declare-fun call!31385 () Bool)

(declare-fun bm!31382 () Bool)

(assert (=> bm!31382 (= call!31385 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!492014 () Bool)

(declare-fun e!289057 () Bool)

(assert (=> b!492014 (= e!289057 call!31385)))

(declare-fun d!77953 () Bool)

(declare-fun res!294925 () Bool)

(declare-fun e!289058 () Bool)

(assert (=> d!77953 (=> res!294925 e!289058)))

(assert (=> d!77953 (= res!294925 (bvsge j!176 (size!15661 a!3235)))))

(assert (=> d!77953 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!289058)))

(declare-fun b!492015 () Bool)

(declare-fun e!289056 () Bool)

(assert (=> b!492015 (= e!289058 e!289056)))

(declare-fun c!58817 () Bool)

(assert (=> b!492015 (= c!58817 (validKeyInArray!0 (select (arr!15297 a!3235) j!176)))))

(declare-fun b!492016 () Bool)

(assert (=> b!492016 (= e!289056 call!31385)))

(declare-fun b!492017 () Bool)

(assert (=> b!492017 (= e!289056 e!289057)))

(declare-fun lt!222478 () (_ BitVec 64))

(assert (=> b!492017 (= lt!222478 (select (arr!15297 a!3235) j!176))))

(declare-fun lt!222477 () Unit!14480)

(assert (=> b!492017 (= lt!222477 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222478 j!176))))

(assert (=> b!492017 (arrayContainsKey!0 a!3235 lt!222478 #b00000000000000000000000000000000)))

(declare-fun lt!222476 () Unit!14480)

(assert (=> b!492017 (= lt!222476 lt!222477)))

(declare-fun res!294926 () Bool)

(assert (=> b!492017 (= res!294926 (= (seekEntryOrOpen!0 (select (arr!15297 a!3235) j!176) a!3235 mask!3524) (Found!3771 j!176)))))

(assert (=> b!492017 (=> (not res!294926) (not e!289057))))

(assert (= (and d!77953 (not res!294925)) b!492015))

(assert (= (and b!492015 c!58817) b!492017))

(assert (= (and b!492015 (not c!58817)) b!492016))

(assert (= (and b!492017 res!294926) b!492014))

(assert (= (or b!492014 b!492016) bm!31382))

(declare-fun m!472747 () Bool)

(assert (=> bm!31382 m!472747))

(assert (=> b!492015 m!472469))

(assert (=> b!492015 m!472469))

(assert (=> b!492015 m!472485))

(assert (=> b!492017 m!472469))

(declare-fun m!472749 () Bool)

(assert (=> b!492017 m!472749))

(declare-fun m!472751 () Bool)

(assert (=> b!492017 m!472751))

(assert (=> b!492017 m!472469))

(assert (=> b!492017 m!472489))

(assert (=> b!491676 d!77953))

(declare-fun d!77955 () Bool)

(assert (=> d!77955 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222481 () Unit!14480)

(declare-fun choose!38 (array!31825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14480)

(assert (=> d!77955 (= lt!222481 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77955 (validMask!0 mask!3524)))

(assert (=> d!77955 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!222481)))

(declare-fun bs!15686 () Bool)

(assert (= bs!15686 d!77955))

(assert (=> bs!15686 m!472477))

(declare-fun m!472753 () Bool)

(assert (=> bs!15686 m!472753))

(assert (=> bs!15686 m!472479))

(assert (=> b!491676 d!77955))

(declare-fun d!77957 () Bool)

(declare-fun lt!222483 () (_ BitVec 32))

(declare-fun lt!222482 () (_ BitVec 32))

(assert (=> d!77957 (= lt!222483 (bvmul (bvxor lt!222482 (bvlshr lt!222482 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77957 (= lt!222482 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77957 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!294924 (let ((h!10371 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46384 (bvmul (bvxor h!10371 (bvlshr h!10371 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46384 (bvlshr x!46384 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!294924 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!294924 #b00000000000000000000000000000000))))))

(assert (=> d!77957 (= (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!222483 (bvlshr lt!222483 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!491676 d!77957))

(declare-fun b!492018 () Bool)

(declare-fun e!289059 () Bool)

(declare-fun lt!222484 () SeekEntryResult!3771)

(assert (=> b!492018 (= e!289059 (bvsge (x!46376 lt!222484) #b01111111111111111111111111111110))))

(declare-fun e!289060 () SeekEntryResult!3771)

(declare-fun b!492019 () Bool)

(assert (=> b!492019 (= e!289060 (Intermediate!3771 false (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492020 () Bool)

(declare-fun e!289062 () Bool)

(assert (=> b!492020 (= e!289059 e!289062)))

(declare-fun res!294928 () Bool)

(assert (=> b!492020 (= res!294928 (and (is-Intermediate!3771 lt!222484) (not (undefined!4583 lt!222484)) (bvslt (x!46376 lt!222484) #b01111111111111111111111111111110) (bvsge (x!46376 lt!222484) #b00000000000000000000000000000000) (bvsge (x!46376 lt!222484) #b00000000000000000000000000000000)))))

(assert (=> b!492020 (=> (not res!294928) (not e!289062))))

(declare-fun b!492021 () Bool)

(assert (=> b!492021 (and (bvsge (index!17265 lt!222484) #b00000000000000000000000000000000) (bvslt (index!17265 lt!222484) (size!15661 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235)))))))

(declare-fun res!294929 () Bool)

(assert (=> b!492021 (= res!294929 (= (select (arr!15297 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235))) (index!17265 lt!222484)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289063 () Bool)

(assert (=> b!492021 (=> res!294929 e!289063)))

(declare-fun b!492022 () Bool)

(assert (=> b!492022 (and (bvsge (index!17265 lt!222484) #b00000000000000000000000000000000) (bvslt (index!17265 lt!222484) (size!15661 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235)))))))

(assert (=> b!492022 (= e!289063 (= (select (arr!15297 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235))) (index!17265 lt!222484)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492023 () Bool)

(assert (=> b!492023 (and (bvsge (index!17265 lt!222484) #b00000000000000000000000000000000) (bvslt (index!17265 lt!222484) (size!15661 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235)))))))

(declare-fun res!294927 () Bool)

(assert (=> b!492023 (= res!294927 (= (select (arr!15297 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235))) (index!17265 lt!222484)) (select (store (arr!15297 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!492023 (=> res!294927 e!289063)))

(assert (=> b!492023 (= e!289062 e!289063)))

(declare-fun b!492024 () Bool)

(assert (=> b!492024 (= e!289060 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235)) mask!3524))))

(declare-fun e!289061 () SeekEntryResult!3771)

(declare-fun b!492025 () Bool)

(assert (=> b!492025 (= e!289061 (Intermediate!3771 true (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492026 () Bool)

(assert (=> b!492026 (= e!289061 e!289060)))

(declare-fun c!58820 () Bool)

(declare-fun lt!222485 () (_ BitVec 64))

(assert (=> b!492026 (= c!58820 (or (= lt!222485 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!222485 lt!222485) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!77959 () Bool)

(assert (=> d!77959 e!289059))

(declare-fun c!58818 () Bool)

(assert (=> d!77959 (= c!58818 (and (is-Intermediate!3771 lt!222484) (undefined!4583 lt!222484)))))

(assert (=> d!77959 (= lt!222484 e!289061)))

(declare-fun c!58819 () Bool)

(assert (=> d!77959 (= c!58819 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77959 (= lt!222485 (select (arr!15297 (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235))) (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524)))))

(assert (=> d!77959 (validMask!0 mask!3524)))

(assert (=> d!77959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15297 a!3235) i!1204 k!2280) j!176) (array!31826 (store (arr!15297 a!3235) i!1204 k!2280) (size!15661 a!3235)) mask!3524) lt!222484)))

(assert (= (and d!77959 c!58819) b!492025))

(assert (= (and d!77959 (not c!58819)) b!492026))

(assert (= (and b!492026 c!58820) b!492019))

(assert (= (and b!492026 (not c!58820)) b!492024))

(assert (= (and d!77959 c!58818) b!492018))

(assert (= (and d!77959 (not c!58818)) b!492020))

(assert (= (and b!492020 res!294928) b!492023))

(assert (= (and b!492023 (not res!294927)) b!492021))

(assert (= (and b!492021 (not res!294929)) b!492022))

(declare-fun m!472755 () Bool)

(assert (=> b!492021 m!472755))

(assert (=> d!77959 m!472473))

(declare-fun m!472757 () Bool)

(assert (=> d!77959 m!472757))

(assert (=> d!77959 m!472479))

(assert (=> b!492024 m!472473))

(declare-fun m!472759 () Bool)

(assert (=> b!492024 m!472759))

(assert (=> b!492024 m!472759))

(assert (=> b!492024 m!472465))

(declare-fun m!472761 () Bool)

(assert (=> b!492024 m!472761))

(assert (=> b!492023 m!472755))

(assert (=> b!492022 m!472755))

(assert (=> b!491676 d!77959))

(declare-fun d!77961 () Bool)

(assert (=> d!77961 (= (validKeyInArray!0 (select (arr!15297 a!3235) j!176)) (and (not (= (select (arr!15297 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15297 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!491677 d!77961))

(declare-fun d!77963 () Bool)

(declare-fun res!294934 () Bool)

(declare-fun e!289068 () Bool)

(assert (=> d!77963 (=> res!294934 e!289068)))

(assert (=> d!77963 (= res!294934 (= (select (arr!15297 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77963 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!289068)))

(declare-fun b!492031 () Bool)

(declare-fun e!289069 () Bool)

(assert (=> b!492031 (= e!289068 e!289069)))

(declare-fun res!294935 () Bool)

(assert (=> b!492031 (=> (not res!294935) (not e!289069))))

(assert (=> b!492031 (= res!294935 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15661 a!3235)))))

(declare-fun b!492032 () Bool)

(assert (=> b!492032 (= e!289069 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77963 (not res!294934)) b!492031))

(assert (= (and b!492031 res!294935) b!492032))

(assert (=> d!77963 m!472663))

(declare-fun m!472763 () Bool)

(assert (=> b!492032 m!472763))

(assert (=> b!491672 d!77963))

(declare-fun d!77965 () Bool)

(assert (=> d!77965 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!491678 d!77965))

