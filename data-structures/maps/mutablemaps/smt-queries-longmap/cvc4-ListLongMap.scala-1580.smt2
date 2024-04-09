; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30034 () Bool)

(assert start!30034)

(declare-fun b!301135 () Bool)

(declare-fun res!159045 () Bool)

(declare-fun e!190071 () Bool)

(assert (=> b!301135 (=> (not res!159045) (not e!190071))))

(declare-datatypes ((array!15255 0))(
  ( (array!15256 (arr!7218 (Array (_ BitVec 32) (_ BitVec 64))) (size!7570 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15255)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15255 (_ BitVec 32)) Bool)

(assert (=> b!301135 (= res!159045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301136 () Bool)

(declare-fun res!159044 () Bool)

(assert (=> b!301136 (=> (not res!159044) (not e!190071))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301136 (= res!159044 (validKeyInArray!0 k!2441))))

(declare-fun b!301137 () Bool)

(declare-fun res!159046 () Bool)

(assert (=> b!301137 (=> (not res!159046) (not e!190071))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301137 (= res!159046 (and (= (size!7570 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7570 a!3293))))))

(declare-fun res!159048 () Bool)

(assert (=> start!30034 (=> (not res!159048) (not e!190071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30034 (= res!159048 (validMask!0 mask!3709))))

(assert (=> start!30034 e!190071))

(assert (=> start!30034 true))

(declare-fun array_inv!5172 (array!15255) Bool)

(assert (=> start!30034 (array_inv!5172 a!3293)))

(declare-fun b!301138 () Bool)

(assert (=> b!301138 (= e!190071 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsgt mask!3709 #b00111111111111111111111111111111)))))

(declare-fun b!301139 () Bool)

(declare-fun res!159047 () Bool)

(assert (=> b!301139 (=> (not res!159047) (not e!190071))))

(declare-datatypes ((SeekEntryResult!2369 0))(
  ( (MissingZero!2369 (index!11652 (_ BitVec 32))) (Found!2369 (index!11653 (_ BitVec 32))) (Intermediate!2369 (undefined!3181 Bool) (index!11654 (_ BitVec 32)) (x!29892 (_ BitVec 32))) (Undefined!2369) (MissingVacant!2369 (index!11655 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15255 (_ BitVec 32)) SeekEntryResult!2369)

(assert (=> b!301139 (= res!159047 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2369 i!1240)))))

(declare-fun b!301140 () Bool)

(declare-fun res!159043 () Bool)

(assert (=> b!301140 (=> (not res!159043) (not e!190071))))

(declare-fun arrayContainsKey!0 (array!15255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301140 (= res!159043 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30034 res!159048) b!301137))

(assert (= (and b!301137 res!159046) b!301136))

(assert (= (and b!301136 res!159044) b!301140))

(assert (= (and b!301140 res!159043) b!301139))

(assert (= (and b!301139 res!159047) b!301135))

(assert (= (and b!301135 res!159045) b!301138))

(declare-fun m!312979 () Bool)

(assert (=> b!301136 m!312979))

(declare-fun m!312981 () Bool)

(assert (=> start!30034 m!312981))

(declare-fun m!312983 () Bool)

(assert (=> start!30034 m!312983))

(declare-fun m!312985 () Bool)

(assert (=> b!301139 m!312985))

(declare-fun m!312987 () Bool)

(assert (=> b!301135 m!312987))

(declare-fun m!312989 () Bool)

(assert (=> b!301140 m!312989))

(push 1)

(assert (not start!30034))

(assert (not b!301136))

(assert (not b!301139))

(assert (not b!301135))

(assert (not b!301140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!301191 () Bool)

(declare-fun e!190108 () SeekEntryResult!2369)

(assert (=> b!301191 (= e!190108 Undefined!2369)))

(declare-fun b!301192 () Bool)

(declare-fun e!190107 () SeekEntryResult!2369)

(assert (=> b!301192 (= e!190108 e!190107)))

(declare-fun lt!149774 () (_ BitVec 64))

(declare-fun lt!149772 () SeekEntryResult!2369)

(assert (=> b!301192 (= lt!149774 (select (arr!7218 a!3293) (index!11654 lt!149772)))))

(declare-fun c!48660 () Bool)

(assert (=> b!301192 (= c!48660 (= lt!149774 k!2441))))

(declare-fun b!301193 () Bool)

(declare-fun c!48661 () Bool)

(assert (=> b!301193 (= c!48661 (= lt!149774 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!190106 () SeekEntryResult!2369)

(assert (=> b!301193 (= e!190107 e!190106)))

(declare-fun b!301194 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15255 (_ BitVec 32)) SeekEntryResult!2369)

(assert (=> b!301194 (= e!190106 (seekKeyOrZeroReturnVacant!0 (x!29892 lt!149772) (index!11654 lt!149772) (index!11654 lt!149772) k!2441 a!3293 mask!3709))))

(declare-fun d!67731 () Bool)

(declare-fun lt!149773 () SeekEntryResult!2369)

(assert (=> d!67731 (and (or (is-Undefined!2369 lt!149773) (not (is-Found!2369 lt!149773)) (and (bvsge (index!11653 lt!149773) #b00000000000000000000000000000000) (bvslt (index!11653 lt!149773) (size!7570 a!3293)))) (or (is-Undefined!2369 lt!149773) (is-Found!2369 lt!149773) (not (is-MissingZero!2369 lt!149773)) (and (bvsge (index!11652 lt!149773) #b00000000000000000000000000000000) (bvslt (index!11652 lt!149773) (size!7570 a!3293)))) (or (is-Undefined!2369 lt!149773) (is-Found!2369 lt!149773) (is-MissingZero!2369 lt!149773) (not (is-MissingVacant!2369 lt!149773)) (and (bvsge (index!11655 lt!149773) #b00000000000000000000000000000000) (bvslt (index!11655 lt!149773) (size!7570 a!3293)))) (or (is-Undefined!2369 lt!149773) (ite (is-Found!2369 lt!149773) (= (select (arr!7218 a!3293) (index!11653 lt!149773)) k!2441) (ite (is-MissingZero!2369 lt!149773) (= (select (arr!7218 a!3293) (index!11652 lt!149773)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2369 lt!149773) (= (select (arr!7218 a!3293) (index!11655 lt!149773)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67731 (= lt!149773 e!190108)))

(declare-fun c!48659 () Bool)

(assert (=> d!67731 (= c!48659 (and (is-Intermediate!2369 lt!149772) (undefined!3181 lt!149772)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15255 (_ BitVec 32)) SeekEntryResult!2369)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67731 (= lt!149772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!67731 (validMask!0 mask!3709)))

(assert (=> d!67731 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!149773)))

(declare-fun b!301195 () Bool)

(assert (=> b!301195 (= e!190106 (MissingZero!2369 (index!11654 lt!149772)))))

(declare-fun b!301196 () Bool)

(assert (=> b!301196 (= e!190107 (Found!2369 (index!11654 lt!149772)))))

(assert (= (and d!67731 c!48659) b!301191))

(assert (= (and d!67731 (not c!48659)) b!301192))

(assert (= (and b!301192 c!48660) b!301196))

(assert (= (and b!301192 (not c!48660)) b!301193))

(assert (= (and b!301193 c!48661) b!301195))

(assert (= (and b!301193 (not c!48661)) b!301194))

(declare-fun m!313013 () Bool)

(assert (=> b!301192 m!313013))

(declare-fun m!313015 () Bool)

(assert (=> b!301194 m!313015))

(declare-fun m!313017 () Bool)

(assert (=> d!67731 m!313017))

(declare-fun m!313019 () Bool)

(assert (=> d!67731 m!313019))

(assert (=> d!67731 m!312981))

(declare-fun m!313021 () Bool)

(assert (=> d!67731 m!313021))

(assert (=> d!67731 m!313017))

(declare-fun m!313023 () Bool)

(assert (=> d!67731 m!313023))

(declare-fun m!313025 () Bool)

(assert (=> d!67731 m!313025))

(assert (=> b!301139 d!67731))

(declare-fun d!67745 () Bool)

(assert (=> d!67745 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30034 d!67745))

(declare-fun d!67753 () Bool)

(assert (=> d!67753 (= (array_inv!5172 a!3293) (bvsge (size!7570 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30034 d!67753))

(declare-fun d!67755 () Bool)

(declare-fun res!159077 () Bool)

(declare-fun e!190135 () Bool)

(assert (=> d!67755 (=> res!159077 e!190135)))

(assert (=> d!67755 (= res!159077 (bvsge #b00000000000000000000000000000000 (size!7570 a!3293)))))

(assert (=> d!67755 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190135)))

(declare-fun b!301233 () Bool)

(declare-fun e!190134 () Bool)

(declare-fun call!25868 () Bool)

(assert (=> b!301233 (= e!190134 call!25868)))

(declare-fun bm!25865 () Bool)

(assert (=> bm!25865 (= call!25868 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!301234 () Bool)

(declare-fun e!190133 () Bool)

(assert (=> b!301234 (= e!190135 e!190133)))

(declare-fun c!48674 () Bool)

(assert (=> b!301234 (= c!48674 (validKeyInArray!0 (select (arr!7218 