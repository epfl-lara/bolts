; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30174 () Bool)

(assert start!30174)

(declare-fun b!301929 () Bool)

(declare-fun res!159696 () Bool)

(declare-fun e!190401 () Bool)

(assert (=> b!301929 (=> (not res!159696) (not e!190401))))

(declare-datatypes ((array!15323 0))(
  ( (array!15324 (arr!7249 (Array (_ BitVec 32) (_ BitVec 64))) (size!7601 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15323)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301929 (= res!159696 (and (= (size!7601 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7601 a!3293))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun b!301930 () Bool)

(assert (=> b!301930 (= e!190401 (and (= (select (arr!7249 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7601 a!3293)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!301931 () Bool)

(declare-fun res!159699 () Bool)

(assert (=> b!301931 (=> (not res!159699) (not e!190401))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301931 (= res!159699 (validKeyInArray!0 k!2441))))

(declare-fun b!301932 () Bool)

(declare-fun res!159700 () Bool)

(assert (=> b!301932 (=> (not res!159700) (not e!190401))))

(declare-datatypes ((SeekEntryResult!2400 0))(
  ( (MissingZero!2400 (index!11776 (_ BitVec 32))) (Found!2400 (index!11777 (_ BitVec 32))) (Intermediate!2400 (undefined!3212 Bool) (index!11778 (_ BitVec 32)) (x!30014 (_ BitVec 32))) (Undefined!2400) (MissingVacant!2400 (index!11779 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15323 (_ BitVec 32)) SeekEntryResult!2400)

(assert (=> b!301932 (= res!159700 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2400 i!1240)))))

(declare-fun b!301933 () Bool)

(declare-fun res!159701 () Bool)

(assert (=> b!301933 (=> (not res!159701) (not e!190401))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15323 (_ BitVec 32)) SeekEntryResult!2400)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301933 (= res!159701 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2400 false resIndex!52 resX!52)))))

(declare-fun res!159697 () Bool)

(assert (=> start!30174 (=> (not res!159697) (not e!190401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30174 (= res!159697 (validMask!0 mask!3709))))

(assert (=> start!30174 e!190401))

(declare-fun array_inv!5203 (array!15323) Bool)

(assert (=> start!30174 (array_inv!5203 a!3293)))

(assert (=> start!30174 true))

(declare-fun b!301934 () Bool)

(declare-fun res!159702 () Bool)

(assert (=> b!301934 (=> (not res!159702) (not e!190401))))

(declare-fun arrayContainsKey!0 (array!15323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301934 (= res!159702 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301935 () Bool)

(declare-fun res!159698 () Bool)

(assert (=> b!301935 (=> (not res!159698) (not e!190401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15323 (_ BitVec 32)) Bool)

(assert (=> b!301935 (= res!159698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30174 res!159697) b!301929))

(assert (= (and b!301929 res!159696) b!301931))

(assert (= (and b!301931 res!159699) b!301934))

(assert (= (and b!301934 res!159702) b!301932))

(assert (= (and b!301932 res!159700) b!301935))

(assert (= (and b!301935 res!159698) b!301933))

(assert (= (and b!301933 res!159701) b!301930))

(declare-fun m!313609 () Bool)

(assert (=> b!301934 m!313609))

(declare-fun m!313611 () Bool)

(assert (=> start!30174 m!313611))

(declare-fun m!313613 () Bool)

(assert (=> start!30174 m!313613))

(declare-fun m!313615 () Bool)

(assert (=> b!301930 m!313615))

(declare-fun m!313617 () Bool)

(assert (=> b!301933 m!313617))

(assert (=> b!301933 m!313617))

(declare-fun m!313619 () Bool)

(assert (=> b!301933 m!313619))

(declare-fun m!313621 () Bool)

(assert (=> b!301931 m!313621))

(declare-fun m!313623 () Bool)

(assert (=> b!301932 m!313623))

(declare-fun m!313625 () Bool)

(assert (=> b!301935 m!313625))

(push 1)

(assert (not b!301931))

(assert (not b!301932))

(assert (not start!30174))

(assert (not b!301935))

(assert (not b!301933))

(assert (not b!301934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67827 () Bool)

(declare-fun lt!149973 () SeekEntryResult!2400)

(assert (=> d!67827 (and (or (is-Undefined!2400 lt!149973) (not (is-Found!2400 lt!149973)) (and (bvsge (index!11777 lt!149973) #b00000000000000000000000000000000) (bvslt (index!11777 lt!149973) (size!7601 a!3293)))) (or (is-Undefined!2400 lt!149973) (is-Found!2400 lt!149973) (not (is-MissingZero!2400 lt!149973)) (and (bvsge (index!11776 lt!149973) #b00000000000000000000000000000000) (bvslt (index!11776 lt!149973) (size!7601 a!3293)))) (or (is-Undefined!2400 lt!149973) (is-Found!2400 lt!149973) (is-MissingZero!2400 lt!149973) (not (is-MissingVacant!2400 lt!149973)) (and (bvsge (index!11779 lt!149973) #b00000000000000000000000000000000) (bvslt (index!11779 lt!149973) (size!7601 a!3293)))) (or (is-Undefined!2400 lt!149973) (ite (is-Found!2400 lt!149973) (= (select (arr!7249 a!3293) (index!11777 lt!149973)) k!2441) (ite (is-MissingZero!2400 lt!149973) (= (select (arr!7249 a!3293) (index!11776 lt!149973)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2400 lt!149973) (= (select (arr!7249 a!3293) (index!11779 lt!149973)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!190446 () SeekEntryResult!2400)

(assert (=> d!67827 (= lt!149973 e!190446)))

(declare-fun c!48737 () Bool)

(declare-fun lt!149974 () SeekEntryResult!2400)

(assert (=> d!67827 (= c!48737 (and (is-Intermediate!2400 lt!149974) (undefined!3212 lt!149974)))))

(assert (=> d!67827 (= lt!149974 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!67827 (validMask!0 mask!3709)))

(assert (=> d!67827 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!149973)))

(declare-fun e!190448 () SeekEntryResult!2400)

(declare-fun b!302032 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15323 (_ BitVec 32)) SeekEntryResult!2400)

(assert (=> b!302032 (= e!190448 (seekKeyOrZeroReturnVacant!0 (x!30014 lt!149974) (index!11778 lt!149974) (index!11778 lt!149974) k!2441 a!3293 mask!3709))))

(declare-fun b!302033 () Bool)

(assert (=> b!302033 (= e!190446 Undefined!2400)))

(declare-fun b!302034 () Bool)

(declare-fun e!190447 () SeekEntryResult!2400)

(assert (=> b!302034 (= e!190447 (Found!2400 (index!11778 lt!149974)))))

(declare-fun b!302035 () Bool)

(declare-fun c!48735 () Bool)

(declare-fun lt!149972 () (_ BitVec 64))

(assert (=> b!302035 (= c!48735 (= lt!149972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!302035 (= e!190447 e!190448)))

(declare-fun b!302036 () Bool)

(assert (=> b!302036 (= e!190448 (MissingZero!2400 (index!11778 lt!149974)))))

(declare-fun b!302037 () Bool)

(assert (=> b!302037 (= e!190446 e!190447)))

(assert (=> b!302037 (= lt!149972 (select (arr!7249 a!3293) (index!11778 lt!149974)))))

(declare-fun c!48736 () Bool)

(assert (=> b!302037 (= c!48736 (= lt!149972 k!2441))))

(assert (= (and d!67827 c!48737) b!302033))

(assert (= (and d!67827 (not c!48737)) b!302037))

(assert (= (and b!302037 c!48736) b!302034))

(assert (= (and b!302037 (not c!48736)) b!302035))

(assert (= (and b!302035 c!48735) b!302036))

(assert (= (and b!302035 (not c!48735)) b!302032))

(declare-fun m!313675 () Bool)

(assert (=> d!67827 m!313675))

(assert (=> d!67827 m!313611))

(assert (=> d!67827 m!313617))

(assert (=> d!67827 m!313619))

(assert (=> d!67827 m!313617))

(declare-fun m!313677 () Bool)

(assert (=> d!67827 m!313677))

(declare-fun m!313679 () Bool)

(assert (=> d!67827 m!313679))

(declare-fun m!313681 () Bool)

(assert (=> b!302032 m!313681))

(declare-fun m!313683 () Bool)

(assert (=> b!302037 m!313683))

(assert (=> b!301932 d!67827))

(declare-fun d!67835 () Bool)

(assert (=> d!67835 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301931 d!67835))

(declare-fun b!302076 () Bool)

(declare-fun e!190476 () Bool)

(declare-fun e!190475 () Bool)

(assert (=> b!302076 (= e!190476 e!190475)))

(declare-fun lt!149999 () (_ BitVec 64))

(assert (=> b!302076 (= lt!149999 (select (arr!7249 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9374 0))(
  ( (Unit!9375) )
))
(declare-fun lt!149997 () Unit!9374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15323 (_ BitVec 64) (_ BitVec 32)) Unit!9374)

(assert (=> b!302076 (= lt!149997 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!149999 #b00000000000000000000000000000000))))

(assert (=> b!302076 (arrayContainsKey!0 a!3293 lt!149999 #b00000000000000000000000000000000)))

(declare-fun lt!149998 () Unit!9374)

(assert (=> b!302076 (= lt!149998 lt!149997)))

(declare-fun res!159781 () Bool)

(assert (=> b!302076 (= res!159781 (= (seekEntryOrOpen!0 (select (arr!7249 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2400 #b00000000000000000000000000000000)))))

(assert (=> b!302076 (=> (not res!159781) (not e!190475))))

(declare-fun d!67837 () Bool)

(declare-fun res!159782 () Bool)

(declare-fun e!190477 () Bool)

(assert (=> d!67837 (=> res!159782 e!190477)))

(assert (=> d!67837 (= res!159782 (bvsge #b00000000000000000000000000000000 (size!7601 a!3293)))))

(assert (=> d!67837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190477)))

(declare-fun b!302077 () Bool)

(declare-fun call!25883 () Bool)

(assert (=> b!302077 (= e!190476 call!25883)))

(declare-fun b!302078 () Bool)

(assert (=> b!302078 (= e!190477 e!190476)))

(declare-fun c!48746 () Bool)

(assert (=> b!302078 (= c!48746 (validKeyInArray!0 (select (arr!7249 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!302079 () Bool)

(assert (=> b!302079 (= e!190475 call!25883)))

(declare-fun bm!25880 () Bool)

(assert (=> bm!25880 (= call!25883 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!67837 (not res!159782)) b!302078))

(assert (= (and b!302078 c!48746) b!302076))

(assert (= (and b!302078 (not c!48746)) b!302077))

(assert (= (and b!302076 res!159781) b!302079))

(assert (= (or b!302079 b!302077) bm!25880))

(declare-fun m!313703 () Bool)

(assert (=> b!302076 m!313703))

(declare-fun m!313705 () Bool)

(assert (=> b!302076 m!313705))

(declare-fun m!313707 () Bool)

(assert (=> b!302076 m!313707))

(assert (=> b!302076 m!313703))

(declare-fun m!313709 () Bool)

(assert (=> b!302076 m!313709))

(assert (=> b!302078 m!313703))

(assert (=> b!302078 m!313703))

(declare-fun m!313711 () Bool)

(assert (=> b!302078 m!313711))

(declare-fun m!313713 () Bool)

(assert (=> bm!25880 m!313713))

(assert (=> b!301935 d!67837))

(declare-fun d!67849 () Bool)

(assert (=> d!67849 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30174 d!67849))

(declare-fun d!67855 () Bool)

(assert (=> d!67855 (= (array_inv!5203 a!3293) (bvsge (size!7601 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30174 d!67855))

(declare-fun d!67859 () Bool)

(declare-fun res!159793 () Bool)

(declare-fun e!190491 () Bool)

(assert (=> d!67859 (=> res!159793 e!190491)))

(assert (=> d!67859 (= res!159793 (= (select (arr!7249 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67859 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!190491)))

(declare-fun b!302096 () Bool)

(declare-fun e!190492 () Bool)

(assert (=> b!302096 (= e!190491 e!190492)))

(declare-fun res!159794 () Bool)

(assert (=> b!302096 (=> (not res!159794) (not e!190492))))

(assert (=> b!302096 (= res!159794 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7601 a!3293)))))

(declare-fun b!302097 () Bool)

(assert (=> b!302097 (= e!190492 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67859 (not res!159793)) b!302096))

(assert (= (and b!302096 res!159794) b!302097))

(assert (=> d!67859 m!313703))

(declare-fun m!313727 () Bool)

(assert (=> b!302097 m!313727))

(assert (=> b!301934 d!67859))

(declare-fun b!302140 () Bool)

(declare-fun lt!150022 () SeekEntryResult!2400)

(assert (=> b!302140 (and (bvsge (index!11778 lt!150022) #b00000000000000000000000000000000) (bvslt (index!11778 lt!150022) (size!7601 a!3293)))))

(declare-fun res!159808 () Bool)

(assert (=> b!302140 (= res!159808 (= (select (arr!7249 a!3293) (index!11778 lt!150022)) k!2441))))

(declare-fun e!190519 () Bool)

(assert (=> b!302140 (=> res!159808 e!190519)))

(declare-fun e!190520 () Bool)

(assert (=> b!302140 (= e!190520 e!190519)))

(declare-fun b!302141 () Bool)

(declare-fun e!190518 () SeekEntryResult!2400)

(assert (=> b!302141 (= e!190518 (Intermediate!2400 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!302142 () Bool)

(declare-fun e!190521 () SeekEntryResult!2400)

(assert (=> b!302142 (= e!190521 (Intermediate!2400 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!302143 () Bool)

(declare-fun e!190522 () Bool)

(assert (=> b!302143 (= e!190522 e!190520)))

(declare-fun res!159807 () Bool)

(assert (=> b!302143 (= res!159807 (and (is-Intermediate!2400 lt!150022) (not (undefined!3212 lt!150022)) (bvslt (x!30014 lt!150022) #b01111111111111111111111111111110) (bvsge (x!30014 lt!150022) #b00000000000000000000000000000000) (bvsge (x!30014 lt!150022) #b00000000000000000000000000000000)))))

(assert (=> b!302143 (=> (not res!159807) (not e!190520))))

(declare-fun d!67861 () Bool)

(assert (=> d!67861 e!190522))

(declare-fun c!48766 () Bool)

(assert (=> d!67861 (= c!48766 (and (is-Intermediate!2400 lt!150022) (undefined!3212 lt!150022)))))

(assert (=> d!67861 (= lt!150022 e!190521)))

(declare-fun c!48767 () Bool)

(assert (=> d!67861 (= c!48767 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!150023 () (_ BitVec 64))

(assert (=> d!67861 (= lt!150023 (select (arr!7249 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!67861 (validMask!0 mask!3709)))

(assert (=> d!67861 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150022)))

(declare-fun b!302144 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302144 (= e!190518 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!302145 () Bool)

(assert (=> b!302145 (= e!190521 e!190518)))

(declare-fun c!48765 () Bool)

(assert (=> b!302145 (= c!48765 (or (= lt!150023 k!2441) (= (bvadd lt!150023 lt!150023) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!302146 () Bool)

(assert (=> b!302146 (and (bvsge (index!11778 lt!150022) #b00000000000000000000000000000000) (bvslt (index!11778 lt!150022) (size!7601 a!3293)))))

(declare-fun res!159809 () Bool)

(assert (=> b!302146 (= res!159809 (= (select (arr!7249 a!3293) (index!11778 lt!150022)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!302146 (=> res!159809 e!190519)))

(declare-fun b!302147 () Bool)

(assert (=> b!302147 (and (bvsge (index!11778 lt!150022) #b00000000000000000000000000000000) (bvslt (index!11778 lt!150022) (size!7601 a!3293)))))

(assert (=> b!302147 (= e!190519 (= (select (arr!7249 a!3293) (index!11778 lt!150022)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!302148 () Bool)

(assert (=> b!302148 (= e!190522 (bvsge (x!30014 lt!150022) #b01111111111111111111111111111110))))

(assert (= (and d!67861 c!48767) b!302142))

(assert (= (and d!67861 (not c!48767)) b!302145))

(assert (= (and b!302145 c!48765) b!302141))

(assert (= (and b!302145 (not c!48765)) b!302144))

(assert (= (and d!67861 c!48766) b!302148))

(assert (= (and d!67861 (not c!48766)) b!302143))

(assert (= (and b!302143 res!159807) b!302140))

(assert (= (and b!302140 (not res!159808)) b!302146))

(assert (= (and b!302146 (not res!159809)) b!302147))

(declare-fun m!313741 () Bool)

(assert (=> b!302140 m!313741))

(assert (=> b!302147 m!313741))

(assert (=> b!302144 m!313617))

(declare-fun m!313743 () Bool)

(assert (=> b!302144 m!313743))

(assert (=> b!302144 m!313743))

(declare-fun m!313745 () Bool)

(assert (=> b!302144 m!313745))

(assert (=> b!302146 m!313741))

(assert (=> d!67861 m!313617))

(declare-fun m!313747 () Bool)

(assert (=> d!67861 m!313747))

(assert (=> d!67861 m!313611))

(assert (=> b!301933 d!67861))

(declare-fun d!67871 () Bool)

(declare-fun lt!150035 () (_ BitVec 32))

(declare-fun lt!150034 () (_ BitVec 32))

(assert (=> d!67871 (= lt!150035 (bvmul (bvxor lt!150034 (bvlshr lt!150034 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67871 (= lt!150034 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67871 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!159810 (let ((h!5353 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30022 (bvmul (bvxor h!5353 (bvlshr h!5353 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30022 (bvlshr x!30022 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!159810 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!159810 #b00000000000000000000000000000000))))))

(assert (=> d!67871 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!150035 (bvlshr lt!150035 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!301933 d!67871))

(push 1)

