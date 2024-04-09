; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44122 () Bool)

(assert start!44122)

(declare-fun b!485879 () Bool)

(declare-fun res!289635 () Bool)

(declare-fun e!286005 () Bool)

(assert (=> b!485879 (=> (not res!289635) (not e!286005))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31450 0))(
  ( (array!31451 (arr!15120 (Array (_ BitVec 32) (_ BitVec 64))) (size!15484 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31450)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485879 (= res!289635 (and (= (size!15484 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15484 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15484 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485880 () Bool)

(declare-fun res!289636 () Bool)

(declare-fun e!286004 () Bool)

(assert (=> b!485880 (=> (not res!289636) (not e!286004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31450 (_ BitVec 32)) Bool)

(assert (=> b!485880 (= res!289636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!485881 () Bool)

(declare-fun res!289637 () Bool)

(assert (=> b!485881 (=> (not res!289637) (not e!286005))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485881 (= res!289637 (validKeyInArray!0 k!2280))))

(declare-fun b!485882 () Bool)

(declare-fun res!289632 () Bool)

(assert (=> b!485882 (=> (not res!289632) (not e!286005))))

(assert (=> b!485882 (= res!289632 (validKeyInArray!0 (select (arr!15120 a!3235) j!176)))))

(declare-fun b!485883 () Bool)

(declare-fun res!289631 () Bool)

(assert (=> b!485883 (=> (not res!289631) (not e!286005))))

(declare-fun arrayContainsKey!0 (array!31450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485883 (= res!289631 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485884 () Bool)

(assert (=> b!485884 (= e!286005 e!286004)))

(declare-fun res!289634 () Bool)

(assert (=> b!485884 (=> (not res!289634) (not e!286004))))

(declare-datatypes ((SeekEntryResult!3594 0))(
  ( (MissingZero!3594 (index!16555 (_ BitVec 32))) (Found!3594 (index!16556 (_ BitVec 32))) (Intermediate!3594 (undefined!4406 Bool) (index!16557 (_ BitVec 32)) (x!45721 (_ BitVec 32))) (Undefined!3594) (MissingVacant!3594 (index!16558 (_ BitVec 32))) )
))
(declare-fun lt!219584 () SeekEntryResult!3594)

(assert (=> b!485884 (= res!289634 (or (= lt!219584 (MissingZero!3594 i!1204)) (= lt!219584 (MissingVacant!3594 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31450 (_ BitVec 32)) SeekEntryResult!3594)

(assert (=> b!485884 (= lt!219584 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!289633 () Bool)

(assert (=> start!44122 (=> (not res!289633) (not e!286005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44122 (= res!289633 (validMask!0 mask!3524))))

(assert (=> start!44122 e!286005))

(assert (=> start!44122 true))

(declare-fun array_inv!10894 (array!31450) Bool)

(assert (=> start!44122 (array_inv!10894 a!3235)))

(declare-fun b!485885 () Bool)

(assert (=> b!485885 (= e!286004 (and (bvsle #b00000000000000000000000000000000 (size!15484 a!3235)) (bvsge (size!15484 a!3235) #b01111111111111111111111111111111)))))

(assert (= (and start!44122 res!289633) b!485879))

(assert (= (and b!485879 res!289635) b!485882))

(assert (= (and b!485882 res!289632) b!485881))

(assert (= (and b!485881 res!289637) b!485883))

(assert (= (and b!485883 res!289631) b!485884))

(assert (= (and b!485884 res!289634) b!485880))

(assert (= (and b!485880 res!289636) b!485885))

(declare-fun m!465955 () Bool)

(assert (=> b!485884 m!465955))

(declare-fun m!465957 () Bool)

(assert (=> b!485882 m!465957))

(assert (=> b!485882 m!465957))

(declare-fun m!465959 () Bool)

(assert (=> b!485882 m!465959))

(declare-fun m!465961 () Bool)

(assert (=> b!485880 m!465961))

(declare-fun m!465963 () Bool)

(assert (=> b!485883 m!465963))

(declare-fun m!465965 () Bool)

(assert (=> start!44122 m!465965))

(declare-fun m!465967 () Bool)

(assert (=> start!44122 m!465967))

(declare-fun m!465969 () Bool)

(assert (=> b!485881 m!465969))

(push 1)

(assert (not b!485882))

(assert (not b!485884))

(assert (not start!44122))

(assert (not b!485883))

(assert (not b!485880))

(assert (not b!485881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77335 () Bool)

(assert (=> d!77335 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44122 d!77335))

(declare-fun d!77345 () Bool)

(assert (=> d!77345 (= (array_inv!10894 a!3235) (bvsge (size!15484 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44122 d!77345))

(declare-fun lt!219624 () SeekEntryResult!3594)

(declare-fun e!286066 () SeekEntryResult!3594)

(declare-fun b!485988 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31450 (_ BitVec 32)) SeekEntryResult!3594)

(assert (=> b!485988 (= e!286066 (seekKeyOrZeroReturnVacant!0 (x!45721 lt!219624) (index!16557 lt!219624) (index!16557 lt!219624) k!2280 a!3235 mask!3524))))

(declare-fun b!485989 () Bool)

(declare-fun e!286065 () SeekEntryResult!3594)

(declare-fun e!286064 () SeekEntryResult!3594)

(assert (=> b!485989 (= e!286065 e!286064)))

(declare-fun lt!219626 () (_ BitVec 64))

(assert (=> b!485989 (= lt!219626 (select (arr!15120 a!3235) (index!16557 lt!219624)))))

(declare-fun c!58413 () Bool)

(assert (=> b!485989 (= c!58413 (= lt!219626 k!2280))))

(declare-fun b!485990 () Bool)

(assert (=> b!485990 (= e!286065 Undefined!3594)))

(declare-fun b!485991 () Bool)

(declare-fun c!58414 () Bool)

(assert (=> b!485991 (= c!58414 (= lt!219626 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!485991 (= e!286064 e!286066)))

(declare-fun d!77347 () Bool)

(declare-fun lt!219625 () SeekEntryResult!3594)

(assert (=> d!77347 (and (or (is-Undefined!3594 lt!219625) (not (is-Found!3594 lt!219625)) (and (bvsge (index!16556 lt!219625) #b00000000000000000000000000000000) (bvslt (index!16556 lt!219625) (size!15484 a!3235)))) (or (is-Undefined!3594 lt!219625) (is-Found!3594 lt!219625) (not (is-MissingZero!3594 lt!219625)) (and (bvsge (index!16555 lt!219625) #b00000000000000000000000000000000) (bvslt (index!16555 lt!219625) (size!15484 a!3235)))) (or (is-Undefined!3594 lt!219625) (is-Found!3594 lt!219625) (is-MissingZero!3594 lt!219625) (not (is-MissingVacant!3594 lt!219625)) (and (bvsge (index!16558 lt!219625) #b00000000000000000000000000000000) (bvslt (index!16558 lt!219625) (size!15484 a!3235)))) (or (is-Undefined!3594 lt!219625) (ite (is-Found!3594 lt!219625) (= (select (arr!15120 a!3235) (index!16556 lt!219625)) k!2280) (ite (is-MissingZero!3594 lt!219625) (= (select (arr!15120 a!3235) (index!16555 lt!219625)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3594 lt!219625) (= (select (arr!15120 a!3235) (index!16558 lt!219625)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77347 (= lt!219625 e!286065)))

(declare-fun c!58415 () Bool)

(assert (=> d!77347 (= c!58415 (and (is-Intermediate!3594 lt!219624) (undefined!4406 lt!219624)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31450 (_ BitVec 32)) SeekEntryResult!3594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77347 (= lt!219624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77347 (validMask!0 mask!3524)))

(assert (=> d!77347 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!219625)))

(declare-fun b!485992 () Bool)

(assert (=> b!485992 (= e!286066 (MissingZero!3594 (index!16557 lt!219624)))))

(declare-fun b!485993 () Bool)

(assert (=> b!485993 (= e!286064 (Found!3594 (index!16557 lt!219624)))))

(assert (= (and d!77347 c!58415) b!485990))

(assert (= (and d!77347 (not c!58415)) b!485989))

(assert (= (and b!485989 c!58413) b!485993))

(assert (= (and b!485989 (not c!58413)) b!485991))

(assert (= (and b!485991 c!58414) b!485992))

(assert (= (and b!485991 (not c!58414)) b!485988))

(declare-fun m!466043 () Bool)

(assert (=> b!485988 m!466043))

(declare-fun m!466045 () Bool)

(assert (=> b!485989 m!466045))

(declare-fun m!466047 () Bool)

(assert (=> d!77347 m!466047))

(declare-fun m!466049 () Bool)

(assert (=> d!77347 m!466049))

(assert (=> d!77347 m!465965))

(declare-fun m!466051 () Bool)

(assert (=> d!77347 m!466051))

(declare-fun m!466053 () Bool)

(assert (=> d!77347 m!466053))

(declare-fun m!466055 () Bool)

(assert (=> d!77347 m!466055))

(assert (=> d!77347 m!466047))

(assert (=> b!485884 d!77347))

(declare-fun bm!31259 () Bool)

(declare-fun call!31262 () Bool)

(assert (=> bm!31259 (= call!31262 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!486024 () Bool)

(declare-fun e!286087 () Bool)

(assert (=> b!486024 (= e!286087 call!31262)))

(declare-fun b!486025 () Bool)

(declare-fun e!286086 () Bool)

(declare-fun e!286088 () Bool)

(assert (=> b!486025 (= e!286086 e!286088)))

(declare-fun c!58427 () Bool)

(assert (=> b!486025 (= c!58427 (validKeyInArray!0 (select (arr!15120 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!486026 () Bool)

(assert (=> b!486026 (= e!286088 call!31262)))

(declare-fun d!77357 () Bool)

(declare-fun res!289707 () Bool)

(assert (=> d!77357 (=> res!289707 e!286086)))

(assert (=> d!77357 (= res!289707 (bvsge #b00000000000000000000000000000000 (size!15484 a!3235)))))

(assert (=> d!77357 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286086)))

(declare-fun b!486027 () Bool)

(assert (=> b!486027 (= e!286088 e!286087)))

(declare-fun lt!219644 () (_ BitVec 64))

(assert (=> b!486027 (= lt!219644 (select (arr!15120 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14160 0))(
  ( (Unit!14161) )
))
(declare-fun lt!219643 () Unit!14160)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31450 (_ BitVec 64) (_ BitVec 32)) Unit!14160)

(assert (=> b!486027 (= lt!219643 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219644 #b00000000000000000000000000000000))))

(assert (=> b!486027 (arrayContainsKey!0 a!3235 lt!219644 #b00000000000000000000000000000000)))

(declare-fun lt!219642 () Unit!14160)

(assert (=> b!486027 (= lt!219642 lt!219643)))

(declare-fun res!289706 () Bool)

(assert (=> b!486027 (= res!289706 (= (seekEntryOrOpen!0 (select (arr!15120 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3594 #b00000000000000000000000000000000)))))

(assert (=> b!486027 (=> (not res!289706) (not e!286087))))

(assert (= (and d!77357 (not res!289707)) b!486025))

