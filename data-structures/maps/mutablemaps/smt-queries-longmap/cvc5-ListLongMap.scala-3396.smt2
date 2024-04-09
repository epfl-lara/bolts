; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46858 () Bool)

(assert start!46858)

(declare-fun b!516961 () Bool)

(declare-fun res!316492 () Bool)

(declare-fun e!301677 () Bool)

(assert (=> b!516961 (=> (not res!316492) (not e!301677))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33073 0))(
  ( (array!33074 (arr!15900 (Array (_ BitVec 32) (_ BitVec 64))) (size!16264 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33073)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!516961 (= res!316492 (and (= (size!16264 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16264 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16264 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!301675 () Bool)

(declare-fun b!516962 () Bool)

(declare-datatypes ((SeekEntryResult!4374 0))(
  ( (MissingZero!4374 (index!19684 (_ BitVec 32))) (Found!4374 (index!19685 (_ BitVec 32))) (Intermediate!4374 (undefined!5186 Bool) (index!19686 (_ BitVec 32)) (x!48674 (_ BitVec 32))) (Undefined!4374) (MissingVacant!4374 (index!19687 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33073 (_ BitVec 32)) SeekEntryResult!4374)

(assert (=> b!516962 (= e!301675 (= (seekEntryOrOpen!0 (select (arr!15900 a!3235) j!176) a!3235 mask!3524) (Found!4374 j!176)))))

(declare-fun lt!236705 () SeekEntryResult!4374)

(declare-fun b!516963 () Bool)

(declare-fun e!301678 () Bool)

(declare-fun lt!236702 () (_ BitVec 32))

(assert (=> b!516963 (= e!301678 (or (not (= (select (arr!15900 a!3235) (index!19686 lt!236705)) (select (arr!15900 a!3235) j!176))) (bvsgt (x!48674 lt!236705) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48674 lt!236705)) (and (bvsge lt!236702 #b00000000000000000000000000000000) (bvslt lt!236702 (size!16264 a!3235)))))))

(assert (=> b!516963 (and (bvslt (x!48674 lt!236705) #b01111111111111111111111111111110) (or (= (select (arr!15900 a!3235) (index!19686 lt!236705)) (select (arr!15900 a!3235) j!176)) (= (select (arr!15900 a!3235) (index!19686 lt!236705)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15900 a!3235) (index!19686 lt!236705)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516964 () Bool)

(declare-fun res!316497 () Bool)

(declare-fun e!301674 () Bool)

(assert (=> b!516964 (=> (not res!316497) (not e!301674))))

(declare-datatypes ((List!10111 0))(
  ( (Nil!10108) (Cons!10107 (h!11008 (_ BitVec 64)) (t!16347 List!10111)) )
))
(declare-fun arrayNoDuplicates!0 (array!33073 (_ BitVec 32) List!10111) Bool)

(assert (=> b!516964 (= res!316497 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10108))))

(declare-fun b!516965 () Bool)

(assert (=> b!516965 (= e!301677 e!301674)))

(declare-fun res!316500 () Bool)

(assert (=> b!516965 (=> (not res!316500) (not e!301674))))

(declare-fun lt!236704 () SeekEntryResult!4374)

(assert (=> b!516965 (= res!316500 (or (= lt!236704 (MissingZero!4374 i!1204)) (= lt!236704 (MissingVacant!4374 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!516965 (= lt!236704 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516966 () Bool)

(declare-fun res!316501 () Bool)

(assert (=> b!516966 (=> (not res!316501) (not e!301677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516966 (= res!316501 (validKeyInArray!0 k!2280))))

(declare-fun res!316495 () Bool)

(assert (=> start!46858 (=> (not res!316495) (not e!301677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46858 (= res!316495 (validMask!0 mask!3524))))

(assert (=> start!46858 e!301677))

(assert (=> start!46858 true))

(declare-fun array_inv!11674 (array!33073) Bool)

(assert (=> start!46858 (array_inv!11674 a!3235)))

(declare-fun b!516967 () Bool)

(assert (=> b!516967 (= e!301674 (not e!301678))))

(declare-fun res!316493 () Bool)

(assert (=> b!516967 (=> res!316493 e!301678)))

(declare-fun lt!236701 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33073 (_ BitVec 32)) SeekEntryResult!4374)

(assert (=> b!516967 (= res!316493 (= lt!236705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236701 (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235)) mask!3524)))))

(assert (=> b!516967 (= lt!236705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236702 (select (arr!15900 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516967 (= lt!236701 (toIndex!0 (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516967 (= lt!236702 (toIndex!0 (select (arr!15900 a!3235) j!176) mask!3524))))

(assert (=> b!516967 e!301675))

(declare-fun res!316498 () Bool)

(assert (=> b!516967 (=> (not res!316498) (not e!301675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33073 (_ BitVec 32)) Bool)

(assert (=> b!516967 (= res!316498 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15998 0))(
  ( (Unit!15999) )
))
(declare-fun lt!236703 () Unit!15998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15998)

(assert (=> b!516967 (= lt!236703 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516968 () Bool)

(declare-fun res!316496 () Bool)

(assert (=> b!516968 (=> res!316496 e!301678)))

(assert (=> b!516968 (= res!316496 (or (undefined!5186 lt!236705) (not (is-Intermediate!4374 lt!236705))))))

(declare-fun b!516969 () Bool)

(declare-fun res!316494 () Bool)

(assert (=> b!516969 (=> (not res!316494) (not e!301677))))

(declare-fun arrayContainsKey!0 (array!33073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516969 (= res!316494 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516970 () Bool)

(declare-fun res!316502 () Bool)

(assert (=> b!516970 (=> (not res!316502) (not e!301677))))

(assert (=> b!516970 (= res!316502 (validKeyInArray!0 (select (arr!15900 a!3235) j!176)))))

(declare-fun b!516971 () Bool)

(declare-fun res!316499 () Bool)

(assert (=> b!516971 (=> (not res!316499) (not e!301674))))

(assert (=> b!516971 (= res!316499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46858 res!316495) b!516961))

(assert (= (and b!516961 res!316492) b!516970))

(assert (= (and b!516970 res!316502) b!516966))

(assert (= (and b!516966 res!316501) b!516969))

(assert (= (and b!516969 res!316494) b!516965))

(assert (= (and b!516965 res!316500) b!516971))

(assert (= (and b!516971 res!316499) b!516964))

(assert (= (and b!516964 res!316497) b!516967))

(assert (= (and b!516967 res!316498) b!516962))

(assert (= (and b!516967 (not res!316493)) b!516968))

(assert (= (and b!516968 (not res!316496)) b!516963))

(declare-fun m!498463 () Bool)

(assert (=> b!516967 m!498463))

(declare-fun m!498465 () Bool)

(assert (=> b!516967 m!498465))

(declare-fun m!498467 () Bool)

(assert (=> b!516967 m!498467))

(declare-fun m!498469 () Bool)

(assert (=> b!516967 m!498469))

(declare-fun m!498471 () Bool)

(assert (=> b!516967 m!498471))

(assert (=> b!516967 m!498469))

(declare-fun m!498473 () Bool)

(assert (=> b!516967 m!498473))

(assert (=> b!516967 m!498469))

(declare-fun m!498475 () Bool)

(assert (=> b!516967 m!498475))

(assert (=> b!516967 m!498467))

(declare-fun m!498477 () Bool)

(assert (=> b!516967 m!498477))

(assert (=> b!516967 m!498467))

(declare-fun m!498479 () Bool)

(assert (=> b!516967 m!498479))

(declare-fun m!498481 () Bool)

(assert (=> b!516971 m!498481))

(declare-fun m!498483 () Bool)

(assert (=> b!516965 m!498483))

(assert (=> b!516970 m!498469))

(assert (=> b!516970 m!498469))

(declare-fun m!498485 () Bool)

(assert (=> b!516970 m!498485))

(declare-fun m!498487 () Bool)

(assert (=> b!516966 m!498487))

(declare-fun m!498489 () Bool)

(assert (=> b!516963 m!498489))

(assert (=> b!516963 m!498469))

(assert (=> b!516962 m!498469))

(assert (=> b!516962 m!498469))

(declare-fun m!498491 () Bool)

(assert (=> b!516962 m!498491))

(declare-fun m!498493 () Bool)

(assert (=> b!516964 m!498493))

(declare-fun m!498495 () Bool)

(assert (=> b!516969 m!498495))

(declare-fun m!498497 () Bool)

(assert (=> start!46858 m!498497))

(declare-fun m!498499 () Bool)

(assert (=> start!46858 m!498499))

(push 1)

(assert (not b!516971))

(assert (not b!516970))

(assert (not b!516965))

(assert (not start!46858))

(assert (not b!516962))

(assert (not b!516964))

(assert (not b!516966))

(assert (not b!516969))

(assert (not b!516967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!517078 () Bool)

(declare-fun e!301735 () Bool)

(declare-fun e!301737 () Bool)

(assert (=> b!517078 (= e!301735 e!301737)))

(declare-fun c!60539 () Bool)

(assert (=> b!517078 (= c!60539 (validKeyInArray!0 (select (arr!15900 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31658 () Bool)

(declare-fun call!31661 () Bool)

(assert (=> bm!31658 (= call!31661 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60539 (Cons!10107 (select (arr!15900 a!3235) #b00000000000000000000000000000000) Nil!10108) Nil!10108)))))

(declare-fun b!517080 () Bool)

(declare-fun e!301738 () Bool)

(assert (=> b!517080 (= e!301738 e!301735)))

(declare-fun res!316581 () Bool)

(assert (=> b!517080 (=> (not res!316581) (not e!301735))))

(declare-fun e!301736 () Bool)

(assert (=> b!517080 (= res!316581 (not e!301736))))

(declare-fun res!316583 () Bool)

(assert (=> b!517080 (=> (not res!316583) (not e!301736))))

(assert (=> b!517080 (= res!316583 (validKeyInArray!0 (select (arr!15900 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79557 () Bool)

(declare-fun res!316582 () Bool)

(assert (=> d!79557 (=> res!316582 e!301738)))

(assert (=> d!79557 (= res!316582 (bvsge #b00000000000000000000000000000000 (size!16264 a!3235)))))

(assert (=> d!79557 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10108) e!301738)))

(declare-fun b!517079 () Bool)

(assert (=> b!517079 (= e!301737 call!31661)))

(declare-fun b!517081 () Bool)

(declare-fun contains!2750 (List!10111 (_ BitVec 64)) Bool)

(assert (=> b!517081 (= e!301736 (contains!2750 Nil!10108 (select (arr!15900 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517082 () Bool)

(assert (=> b!517082 (= e!301737 call!31661)))

(assert (= (and d!79557 (not res!316582)) b!517080))

(assert (= (and b!517080 res!316583) b!517081))

(assert (= (and b!517080 res!316581) b!517078))

(assert (= (and b!517078 c!60539) b!517079))

(assert (= (and b!517078 (not c!60539)) b!517082))

(assert (= (or b!517079 b!517082) bm!31658))

(declare-fun m!498607 () Bool)

(assert (=> b!517078 m!498607))

(assert (=> b!517078 m!498607))

(declare-fun m!498609 () Bool)

(assert (=> b!517078 m!498609))

(assert (=> bm!31658 m!498607))

(declare-fun m!498611 () Bool)

(assert (=> bm!31658 m!498611))

(assert (=> b!517080 m!498607))

(assert (=> b!517080 m!498607))

(assert (=> b!517080 m!498609))

(assert (=> b!517081 m!498607))

(assert (=> b!517081 m!498607))

(declare-fun m!498613 () Bool)

(assert (=> b!517081 m!498613))

(assert (=> b!516964 d!79557))

(declare-fun d!79563 () Bool)

(declare-fun res!316588 () Bool)

(declare-fun e!301743 () Bool)

(assert (=> d!79563 (=> res!316588 e!301743)))

(assert (=> d!79563 (= res!316588 (= (select (arr!15900 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79563 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!301743)))

(declare-fun b!517087 () Bool)

(declare-fun e!301744 () Bool)

(assert (=> b!517087 (= e!301743 e!301744)))

(declare-fun res!316589 () Bool)

(assert (=> b!517087 (=> (not res!316589) (not e!301744))))

(assert (=> b!517087 (= res!316589 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16264 a!3235)))))

(declare-fun b!517088 () Bool)

(assert (=> b!517088 (= e!301744 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79563 (not res!316588)) b!517087))

(assert (= (and b!517087 res!316589) b!517088))

(assert (=> d!79563 m!498607))

(declare-fun m!498615 () Bool)

(assert (=> b!517088 m!498615))

(assert (=> b!516969 d!79563))

(declare-fun b!517146 () Bool)

(declare-fun e!301788 () SeekEntryResult!4374)

(declare-fun e!301787 () SeekEntryResult!4374)

(assert (=> b!517146 (= e!301788 e!301787)))

(declare-fun lt!236778 () (_ BitVec 64))

(declare-fun lt!236779 () SeekEntryResult!4374)

(assert (=> b!517146 (= lt!236778 (select (arr!15900 a!3235) (index!19686 lt!236779)))))

(declare-fun c!60555 () Bool)

(assert (=> b!517146 (= c!60555 (= lt!236778 k!2280))))

(declare-fun b!517147 () Bool)

(assert (=> b!517147 (= e!301787 (Found!4374 (index!19686 lt!236779)))))

(declare-fun b!517148 () Bool)

(declare-fun c!60556 () Bool)

(assert (=> b!517148 (= c!60556 (= lt!236778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301789 () SeekEntryResult!4374)

(assert (=> b!517148 (= e!301787 e!301789)))

(declare-fun b!517149 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33073 (_ BitVec 32)) SeekEntryResult!4374)

(assert (=> b!517149 (= e!301789 (seekKeyOrZeroReturnVacant!0 (x!48674 lt!236779) (index!19686 lt!236779) (index!19686 lt!236779) k!2280 a!3235 mask!3524))))

(declare-fun b!517150 () Bool)

(assert (=> b!517150 (= e!301788 Undefined!4374)))

(declare-fun b!517151 () Bool)

(assert (=> b!517151 (= e!301789 (MissingZero!4374 (index!19686 lt!236779)))))

(declare-fun d!79565 () Bool)

(declare-fun lt!236780 () SeekEntryResult!4374)

(assert (=> d!79565 (and (or (is-Undefined!4374 lt!236780) (not (is-Found!4374 lt!236780)) (and (bvsge (index!19685 lt!236780) #b00000000000000000000000000000000) (bvslt (index!19685 lt!236780) (size!16264 a!3235)))) (or (is-Undefined!4374 lt!236780) (is-Found!4374 lt!236780) (not (is-MissingZero!4374 lt!236780)) (and (bvsge (index!19684 lt!236780) #b00000000000000000000000000000000) (bvslt (index!19684 lt!236780) (size!16264 a!3235)))) (or (is-Undefined!4374 lt!236780) (is-Found!4374 lt!236780) (is-MissingZero!4374 lt!236780) (not (is-MissingVacant!4374 lt!236780)) (and (bvsge (index!19687 lt!236780) #b00000000000000000000000000000000) (bvslt (index!19687 lt!236780) (size!16264 a!3235)))) (or (is-Undefined!4374 lt!236780) (ite (is-Found!4374 lt!236780) (= (select (arr!15900 a!3235) (index!19685 lt!236780)) k!2280) (ite (is-MissingZero!4374 lt!236780) (= (select (arr!15900 a!3235) (index!19684 lt!236780)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4374 lt!236780) (= (select (arr!15900 a!3235) (index!19687 lt!236780)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79565 (= lt!236780 e!301788)))

(declare-fun c!60557 () Bool)

(assert (=> d!79565 (= c!60557 (and (is-Intermediate!4374 lt!236779) (undefined!5186 lt!236779)))))

(assert (=> d!79565 (= lt!236779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79565 (validMask!0 mask!3524)))

(assert (=> d!79565 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!236780)))

(assert (= (and d!79565 c!60557) b!517150))

(assert (= (and d!79565 (not c!60557)) b!517146))

(assert (= (and b!517146 c!60555) b!517147))

(assert (= (and b!517146 (not c!60555)) b!517148))

(assert (= (and b!517148 c!60556) b!517151))

(assert (= (and b!517148 (not c!60556)) b!517149))

(declare-fun m!498645 () Bool)

(assert (=> b!517146 m!498645))

(declare-fun m!498647 () Bool)

(assert (=> b!517149 m!498647))

(declare-fun m!498649 () Bool)

(assert (=> d!79565 m!498649))

(declare-fun m!498651 () Bool)

(assert (=> d!79565 m!498651))

(declare-fun m!498653 () Bool)

(assert (=> d!79565 m!498653))

(assert (=> d!79565 m!498497))

(declare-fun m!498655 () Bool)

(assert (=> d!79565 m!498655))

(assert (=> d!79565 m!498655))

(declare-fun m!498657 () Bool)

(assert (=> d!79565 m!498657))

(assert (=> b!516965 d!79565))

(declare-fun d!79583 () Bool)

(assert (=> d!79583 (= (validKeyInArray!0 (select (arr!15900 a!3235) j!176)) (and (not (= (select (arr!15900 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15900 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516970 d!79583))

(declare-fun d!79585 () Bool)

(assert (=> d!79585 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516966 d!79585))

(declare-fun d!79587 () Bool)

(declare-fun res!316623 () Bool)

(declare-fun e!301804 () Bool)

(assert (=> d!79587 (=> res!316623 e!301804)))

(assert (=> d!79587 (= res!316623 (bvsge #b00000000000000000000000000000000 (size!16264 a!3235)))))

(assert (=> d!79587 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301804)))

(declare-fun b!517172 () Bool)

(declare-fun e!301802 () Bool)

(assert (=> b!517172 (= e!301804 e!301802)))

(declare-fun c!60566 () Bool)

(assert (=> b!517172 (= c!60566 (validKeyInArray!0 (select (arr!15900 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!517173 () Bool)

(declare-fun call!31673 () Bool)

(assert (=> b!517173 (= e!301802 call!31673)))

(declare-fun b!517174 () Bool)

(declare-fun e!301803 () Bool)

(assert (=> b!517174 (= e!301803 call!31673)))

(declare-fun b!517175 () Bool)

(assert (=> b!517175 (= e!301802 e!301803)))

(declare-fun lt!236794 () (_ BitVec 64))

(assert (=> b!517175 (= lt!236794 (select (arr!15900 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236793 () Unit!15998)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33073 (_ BitVec 64) (_ BitVec 32)) Unit!15998)

(assert (=> b!517175 (= lt!236793 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236794 #b00000000000000000000000000000000))))

(assert (=> b!517175 (arrayContainsKey!0 a!3235 lt!236794 #b00000000000000000000000000000000)))

(declare-fun lt!236795 () Unit!15998)

(assert (=> b!517175 (= lt!236795 lt!236793)))

(declare-fun res!316622 () Bool)

(assert (=> b!517175 (= res!316622 (= (seekEntryOrOpen!0 (select (arr!15900 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4374 #b00000000000000000000000000000000)))))

(assert (=> b!517175 (=> (not res!316622) (not e!301803))))

(declare-fun bm!31670 () Bool)

(assert (=> bm!31670 (= call!31673 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79587 (not res!316623)) b!517172))

(assert (= (and b!517172 c!60566) b!517175))

(assert (= (and b!517172 (not c!60566)) b!517173))

(assert (= (and b!517175 res!316622) b!517174))

(assert (= (or b!517174 b!517173) bm!31670))

(assert (=> b!517172 m!498607))

(assert (=> b!517172 m!498607))

(assert (=> b!517172 m!498609))

(assert (=> b!517175 m!498607))

(declare-fun m!498659 () Bool)

(assert (=> b!517175 m!498659))

(declare-fun m!498661 () Bool)

(assert (=> b!517175 m!498661))

(assert (=> b!517175 m!498607))

(declare-fun m!498663 () Bool)

(assert (=> b!517175 m!498663))

(declare-fun m!498665 () Bool)

(assert (=> bm!31670 m!498665))

(assert (=> b!516971 d!79587))

(declare-fun d!79589 () Bool)

(assert (=> d!79589 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46858 d!79589))

(declare-fun d!79597 () Bool)

(assert (=> d!79597 (= (array_inv!11674 a!3235) (bvsge (size!16264 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46858 d!79597))

(declare-fun b!517222 () Bool)

(declare-fun e!301832 () SeekEntryResult!4374)

(declare-fun e!301831 () SeekEntryResult!4374)

(assert (=> b!517222 (= e!301832 e!301831)))

(declare-fun lt!236810 () (_ BitVec 64))

(declare-fun lt!236811 () SeekEntryResult!4374)

(assert (=> b!517222 (= lt!236810 (select (arr!15900 a!3235) (index!19686 lt!236811)))))

(declare-fun c!60583 () Bool)

(assert (=> b!517222 (= c!60583 (= lt!236810 (select (arr!15900 a!3235) j!176)))))

(declare-fun b!517223 () Bool)

(assert (=> b!517223 (= e!301831 (Found!4374 (index!19686 lt!236811)))))

(declare-fun b!517224 () Bool)

(declare-fun c!60584 () Bool)

(assert (=> b!517224 (= c!60584 (= lt!236810 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301833 () SeekEntryResult!4374)

(assert (=> b!517224 (= e!301831 e!301833)))

(declare-fun b!517225 () Bool)

(assert (=> b!517225 (= e!301833 (seekKeyOrZeroReturnVacant!0 (x!48674 lt!236811) (index!19686 lt!236811) (index!19686 lt!236811) (select (arr!15900 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517226 () Bool)

(assert (=> b!517226 (= e!301832 Undefined!4374)))

(declare-fun b!517227 () Bool)

(assert (=> b!517227 (= e!301833 (MissingZero!4374 (index!19686 lt!236811)))))

(declare-fun d!79599 () Bool)

(declare-fun lt!236812 () SeekEntryResult!4374)

(assert (=> d!79599 (and (or (is-Undefined!4374 lt!236812) (not (is-Found!4374 lt!236812)) (and (bvsge (index!19685 lt!236812) #b00000000000000000000000000000000) (bvslt (index!19685 lt!236812) (size!16264 a!3235)))) (or (is-Undefined!4374 lt!236812) (is-Found!4374 lt!236812) (not (is-MissingZero!4374 lt!236812)) (and (bvsge (index!19684 lt!236812) #b00000000000000000000000000000000) (bvslt (index!19684 lt!236812) (size!16264 a!3235)))) (or (is-Undefined!4374 lt!236812) (is-Found!4374 lt!236812) (is-MissingZero!4374 lt!236812) (not (is-MissingVacant!4374 lt!236812)) (and (bvsge (index!19687 lt!236812) #b00000000000000000000000000000000) (bvslt (index!19687 lt!236812) (size!16264 a!3235)))) (or (is-Undefined!4374 lt!236812) (ite (is-Found!4374 lt!236812) (= (select (arr!15900 a!3235) (index!19685 lt!236812)) (select (arr!15900 a!3235) j!176)) (ite (is-MissingZero!4374 lt!236812) (= (select (arr!15900 a!3235) (index!19684 lt!236812)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4374 lt!236812) (= (select (arr!15900 a!3235) (index!19687 lt!236812)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79599 (= lt!236812 e!301832)))

(declare-fun c!60585 () Bool)

(assert (=> d!79599 (= c!60585 (and (is-Intermediate!4374 lt!236811) (undefined!5186 lt!236811)))))

(assert (=> d!79599 (= lt!236811 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15900 a!3235) j!176) mask!3524) (select (arr!15900 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79599 (validMask!0 mask!3524)))

(assert (=> d!79599 (= (seekEntryOrOpen!0 (select (arr!15900 a!3235) j!176) a!3235 mask!3524) lt!236812)))

(assert (= (and d!79599 c!60585) b!517226))

(assert (= (and d!79599 (not c!60585)) b!517222))

(assert (= (and b!517222 c!60583) b!517223))

(assert (= (and b!517222 (not c!60583)) b!517224))

(assert (= (and b!517224 c!60584) b!517227))

(assert (= (and b!517224 (not c!60584)) b!517225))

(declare-fun m!498701 () Bool)

(assert (=> b!517222 m!498701))

(assert (=> b!517225 m!498469))

(declare-fun m!498703 () Bool)

(assert (=> b!517225 m!498703))

(declare-fun m!498705 () Bool)

(assert (=> d!79599 m!498705))

(declare-fun m!498707 () Bool)

(assert (=> d!79599 m!498707))

(declare-fun m!498709 () Bool)

(assert (=> d!79599 m!498709))

(assert (=> d!79599 m!498497))

(assert (=> d!79599 m!498469))

(assert (=> d!79599 m!498471))

(assert (=> d!79599 m!498471))

(assert (=> d!79599 m!498469))

(declare-fun m!498711 () Bool)

(assert (=> d!79599 m!498711))

(assert (=> b!516962 d!79599))

(declare-fun d!79603 () Bool)

(declare-fun lt!236823 () (_ BitVec 32))

(declare-fun lt!236822 () (_ BitVec 32))

(assert (=> d!79603 (= lt!236823 (bvmul (bvxor lt!236822 (bvlshr lt!236822 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79603 (= lt!236822 ((_ extract 31 0) (bvand (bvxor (select (arr!15900 a!3235) j!176) (bvlshr (select (arr!15900 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79603 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316638 (let ((h!11012 ((_ extract 31 0) (bvand (bvxor (select (arr!15900 a!3235) j!176) (bvlshr (select (arr!15900 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48679 (bvmul (bvxor h!11012 (bvlshr h!11012 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48679 (bvlshr x!48679 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316638 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316638 #b00000000000000000000000000000000))))))

(assert (=> d!79603 (= (toIndex!0 (select (arr!15900 a!3235) j!176) mask!3524) (bvand (bvxor lt!236823 (bvlshr lt!236823 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516967 d!79603))

(declare-fun d!79611 () Bool)

(declare-fun res!316640 () Bool)

(declare-fun e!301836 () Bool)

(assert (=> d!79611 (=> res!316640 e!301836)))

(assert (=> d!79611 (= res!316640 (bvsge j!176 (size!16264 a!3235)))))

(assert (=> d!79611 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!301836)))

(declare-fun b!517228 () Bool)

(declare-fun e!301834 () Bool)

(assert (=> b!517228 (= e!301836 e!301834)))

(declare-fun c!60586 () Bool)

(assert (=> b!517228 (= c!60586 (validKeyInArray!0 (select (arr!15900 a!3235) j!176)))))

(declare-fun b!517229 () Bool)

(declare-fun call!31675 () Bool)

(assert (=> b!517229 (= e!301834 call!31675)))

(declare-fun b!517230 () Bool)

(declare-fun e!301835 () Bool)

(assert (=> b!517230 (= e!301835 call!31675)))

(declare-fun b!517231 () Bool)

(assert (=> b!517231 (= e!301834 e!301835)))

(declare-fun lt!236825 () (_ BitVec 64))

(assert (=> b!517231 (= lt!236825 (select (arr!15900 a!3235) j!176))))

(declare-fun lt!236824 () Unit!15998)

(assert (=> b!517231 (= lt!236824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236825 j!176))))

(assert (=> b!517231 (arrayContainsKey!0 a!3235 lt!236825 #b00000000000000000000000000000000)))

(declare-fun lt!236826 () Unit!15998)

(assert (=> b!517231 (= lt!236826 lt!236824)))

(declare-fun res!316639 () Bool)

(assert (=> b!517231 (= res!316639 (= (seekEntryOrOpen!0 (select (arr!15900 a!3235) j!176) a!3235 mask!3524) (Found!4374 j!176)))))

(assert (=> b!517231 (=> (not res!316639) (not e!301835))))

(declare-fun bm!31672 () Bool)

(assert (=> bm!31672 (= call!31675 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79611 (not res!316640)) b!517228))

(assert (= (and b!517228 c!60586) b!517231))

(assert (= (and b!517228 (not c!60586)) b!517229))

(assert (= (and b!517231 res!316639) b!517230))

(assert (= (or b!517230 b!517229) bm!31672))

(assert (=> b!517228 m!498469))

(assert (=> b!517228 m!498469))

(assert (=> b!517228 m!498485))

(assert (=> b!517231 m!498469))

(declare-fun m!498715 () Bool)

(assert (=> b!517231 m!498715))

(declare-fun m!498717 () Bool)

(assert (=> b!517231 m!498717))

(assert (=> b!517231 m!498469))

(assert (=> b!517231 m!498491))

(declare-fun m!498719 () Bool)

(assert (=> bm!31672 m!498719))

(assert (=> b!516967 d!79611))

(declare-fun b!517269 () Bool)

(declare-fun e!301862 () SeekEntryResult!4374)

(assert (=> b!517269 (= e!301862 (Intermediate!4374 false lt!236702 #b00000000000000000000000000000000))))

(declare-fun b!517270 () Bool)

(declare-fun e!301863 () SeekEntryResult!4374)

(assert (=> b!517270 (= e!301863 e!301862)))

(declare-fun c!60598 () Bool)

(declare-fun lt!236841 () (_ BitVec 64))

(assert (=> b!517270 (= c!60598 (or (= lt!236841 (select (arr!15900 a!3235) j!176)) (= (bvadd lt!236841 lt!236841) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!79613 () Bool)

(declare-fun e!301864 () Bool)

(assert (=> d!79613 e!301864))

(declare-fun c!60599 () Bool)

(declare-fun lt!236840 () SeekEntryResult!4374)

(assert (=> d!79613 (= c!60599 (and (is-Intermediate!4374 lt!236840) (undefined!5186 lt!236840)))))

(assert (=> d!79613 (= lt!236840 e!301863)))

(declare-fun c!60597 () Bool)

(assert (=> d!79613 (= c!60597 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79613 (= lt!236841 (select (arr!15900 a!3235) lt!236702))))

(assert (=> d!79613 (validMask!0 mask!3524)))

(assert (=> d!79613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236702 (select (arr!15900 a!3235) j!176) a!3235 mask!3524) lt!236840)))

(declare-fun b!517271 () Bool)

(assert (=> b!517271 (= e!301864 (bvsge (x!48674 lt!236840) #b01111111111111111111111111111110))))

(declare-fun b!517272 () Bool)

(assert (=> b!517272 (= e!301863 (Intermediate!4374 true lt!236702 #b00000000000000000000000000000000))))

(declare-fun b!517273 () Bool)

(assert (=> b!517273 (and (bvsge (index!19686 lt!236840) #b00000000000000000000000000000000) (bvslt (index!19686 lt!236840) (size!16264 a!3235)))))

(declare-fun e!301865 () Bool)

(assert (=> b!517273 (= e!301865 (= (select (arr!15900 a!3235) (index!19686 lt!236840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517274 () Bool)

(assert (=> b!517274 (and (bvsge (index!19686 lt!236840) #b00000000000000000000000000000000) (bvslt (index!19686 lt!236840) (size!16264 a!3235)))))

(declare-fun res!316659 () Bool)

(assert (=> b!517274 (= res!316659 (= (select (arr!15900 a!3235) (index!19686 lt!236840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517274 (=> res!316659 e!301865)))

(declare-fun b!517275 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517275 (= e!301862 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236702 #b00000000000000000000000000000000 mask!3524) (select (arr!15900 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!517276 () Bool)

(declare-fun e!301866 () Bool)

(assert (=> b!517276 (= e!301864 e!301866)))

(declare-fun res!316661 () Bool)

(assert (=> b!517276 (= res!316661 (and (is-Intermediate!4374 lt!236840) (not (undefined!5186 lt!236840)) (bvslt (x!48674 lt!236840) #b01111111111111111111111111111110) (bvsge (x!48674 lt!236840) #b00000000000000000000000000000000) (bvsge (x!48674 lt!236840) #b00000000000000000000000000000000)))))

(assert (=> b!517276 (=> (not res!316661) (not e!301866))))

(declare-fun b!517277 () Bool)

(assert (=> b!517277 (and (bvsge (index!19686 lt!236840) #b00000000000000000000000000000000) (bvslt (index!19686 lt!236840) (size!16264 a!3235)))))

(declare-fun res!316660 () Bool)

(assert (=> b!517277 (= res!316660 (= (select (arr!15900 a!3235) (index!19686 lt!236840)) (select (arr!15900 a!3235) j!176)))))

(assert (=> b!517277 (=> res!316660 e!301865)))

(assert (=> b!517277 (= e!301866 e!301865)))

(assert (= (and d!79613 c!60597) b!517272))

(assert (= (and d!79613 (not c!60597)) b!517270))

(assert (= (and b!517270 c!60598) b!517269))

(assert (= (and b!517270 (not c!60598)) b!517275))

(assert (= (and d!79613 c!60599) b!517271))

(assert (= (and d!79613 (not c!60599)) b!517276))

(assert (= (and b!517276 res!316661) b!517277))

(assert (= (and b!517277 (not res!316660)) b!517274))

(assert (= (and b!517274 (not res!316659)) b!517273))

(declare-fun m!498731 () Bool)

(assert (=> b!517274 m!498731))

(assert (=> b!517273 m!498731))

(declare-fun m!498733 () Bool)

(assert (=> d!79613 m!498733))

(assert (=> d!79613 m!498497))

(declare-fun m!498735 () Bool)

(assert (=> b!517275 m!498735))

(assert (=> b!517275 m!498735))

(assert (=> b!517275 m!498469))

(declare-fun m!498737 () Bool)

(assert (=> b!517275 m!498737))

(assert (=> b!517277 m!498731))

(assert (=> b!516967 d!79613))

(declare-fun b!517278 () Bool)

(declare-fun e!301867 () SeekEntryResult!4374)

(assert (=> b!517278 (= e!301867 (Intermediate!4374 false lt!236701 #b00000000000000000000000000000000))))

(declare-fun b!517279 () Bool)

(declare-fun e!301868 () SeekEntryResult!4374)

(assert (=> b!517279 (= e!301868 e!301867)))

(declare-fun c!60601 () Bool)

(declare-fun lt!236843 () (_ BitVec 64))

(assert (=> b!517279 (= c!60601 (or (= lt!236843 (select (store (arr!15900 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!236843 lt!236843) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!79621 () Bool)

(declare-fun e!301869 () Bool)

(assert (=> d!79621 e!301869))

(declare-fun c!60602 () Bool)

(declare-fun lt!236842 () SeekEntryResult!4374)

(assert (=> d!79621 (= c!60602 (and (is-Intermediate!4374 lt!236842) (undefined!5186 lt!236842)))))

(assert (=> d!79621 (= lt!236842 e!301868)))

(declare-fun c!60600 () Bool)

(assert (=> d!79621 (= c!60600 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79621 (= lt!236843 (select (arr!15900 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235))) lt!236701))))

(assert (=> d!79621 (validMask!0 mask!3524)))

(assert (=> d!79621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236701 (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235)) mask!3524) lt!236842)))

(declare-fun b!517280 () Bool)

(assert (=> b!517280 (= e!301869 (bvsge (x!48674 lt!236842) #b01111111111111111111111111111110))))

(declare-fun b!517281 () Bool)

(assert (=> b!517281 (= e!301868 (Intermediate!4374 true lt!236701 #b00000000000000000000000000000000))))

(declare-fun b!517282 () Bool)

(assert (=> b!517282 (and (bvsge (index!19686 lt!236842) #b00000000000000000000000000000000) (bvslt (index!19686 lt!236842) (size!16264 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235)))))))

(declare-fun e!301870 () Bool)

(assert (=> b!517282 (= e!301870 (= (select (arr!15900 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235))) (index!19686 lt!236842)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!517283 () Bool)

(assert (=> b!517283 (and (bvsge (index!19686 lt!236842) #b00000000000000000000000000000000) (bvslt (index!19686 lt!236842) (size!16264 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235)))))))

(declare-fun res!316662 () Bool)

(assert (=> b!517283 (= res!316662 (= (select (arr!15900 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235))) (index!19686 lt!236842)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!517283 (=> res!316662 e!301870)))

(declare-fun b!517284 () Bool)

(assert (=> b!517284 (= e!301867 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236701 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235)) mask!3524))))

(declare-fun b!517285 () Bool)

(declare-fun e!301871 () Bool)

(assert (=> b!517285 (= e!301869 e!301871)))

(declare-fun res!316664 () Bool)

(assert (=> b!517285 (= res!316664 (and (is-Intermediate!4374 lt!236842) (not (undefined!5186 lt!236842)) (bvslt (x!48674 lt!236842) #b01111111111111111111111111111110) (bvsge (x!48674 lt!236842) #b00000000000000000000000000000000) (bvsge (x!48674 lt!236842) #b00000000000000000000000000000000)))))

(assert (=> b!517285 (=> (not res!316664) (not e!301871))))

(declare-fun b!517286 () Bool)

(assert (=> b!517286 (and (bvsge (index!19686 lt!236842) #b00000000000000000000000000000000) (bvslt (index!19686 lt!236842) (size!16264 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235)))))))

(declare-fun res!316663 () Bool)

(assert (=> b!517286 (= res!316663 (= (select (arr!15900 (array!33074 (store (arr!15900 a!3235) i!1204 k!2280) (size!16264 a!3235))) (index!19686 lt!236842)) (select (store (arr!15900 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!517286 (=> res!316663 e!301870)))

(assert (=> b!517286 (= e!301871 e!301870)))

(assert (= (and d!79621 c!60600) b!517281))

(assert (= (and d!79621 (not c!60600)) b!517279))

(assert (= (and b!517279 c!60601) b!517278))

(assert (= (and b!517279 (not c!60601)) b!517284))

(assert (= (and d!79621 c!60602) b!517280))

(assert (= (and d!79621 (not c!60602)) b!517285))

(assert (= (and b!517285 res!316664) b!517286))

(assert (= (and b!517286 (not res!316663)) b!517283))

(assert (= (and b!517283 (not res!316662)) b!517282))

(declare-fun m!498739 () Bool)

(assert (=> b!517283 m!498739))

(assert (=> b!517282 m!498739))

(declare-fun m!498741 () Bool)

(assert (=> d!79621 m!498741))

(assert (=> d!79621 m!498497))

(declare-fun m!498743 () Bool)

(assert (=> b!517284 m!498743))

(assert (=> b!517284 m!498743))

(assert (=> b!517284 m!498467))

(declare-fun m!498745 () Bool)

(assert (=> b!517284 m!498745))

(assert (=> b!517286 m!498739))

(assert (=> b!516967 d!79621))

(declare-fun d!79623 () Bool)

(assert (=> d!79623 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!236850 () Unit!15998)

(declare-fun choose!38 (array!33073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15998)

(assert (=> d!79623 (= lt!236850 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79623 (validMask!0 mask!3524)))

(assert (=> d!79623 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!236850)))

(declare-fun bs!16333 () Bool)

(assert (= bs!16333 d!79623))

(assert (=> bs!16333 m!498475))

(declare-fun m!498747 () Bool)

(assert (=> bs!16333 m!498747))

(assert (=> bs!16333 m!498497))

(assert (=> b!516967 d!79623))

(declare-fun d!79625 () Bool)

(declare-fun lt!236852 () (_ BitVec 32))

(declare-fun lt!236851 () (_ BitVec 32))

(assert (=> d!79625 (= lt!236852 (bvmul (bvxor lt!236851 (bvlshr lt!236851 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79625 (= lt!236851 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79625 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316638 (let ((h!11012 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48679 (bvmul (bvxor h!11012 (bvlshr h!11012 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48679 (bvlshr x!48679 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316638 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316638 #b00000000000000000000000000000000))))))

(assert (=> d!79625 (= (toIndex!0 (select (store (arr!15900 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!236852 (bvlshr lt!236852 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516967 d!79625))

(push 1)

