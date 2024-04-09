; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45392 () Bool)

(assert start!45392)

(declare-fun b!498363 () Bool)

(declare-fun res!300597 () Bool)

(declare-fun e!292092 () Bool)

(assert (=> b!498363 (=> (not res!300597) (not e!292092))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498363 (= res!300597 (validKeyInArray!0 k!2280))))

(declare-fun b!498364 () Bool)

(declare-fun res!300598 () Bool)

(assert (=> b!498364 (=> (not res!300598) (not e!292092))))

(declare-datatypes ((array!32177 0))(
  ( (array!32178 (arr!15467 (Array (_ BitVec 32) (_ BitVec 64))) (size!15831 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32177)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498364 (= res!300598 (validKeyInArray!0 (select (arr!15467 a!3235) j!176)))))

(declare-fun b!498365 () Bool)

(declare-fun e!292097 () Bool)

(assert (=> b!498365 (= e!292097 true)))

(declare-fun lt!225829 () (_ BitVec 32))

(declare-fun lt!225824 () array!32177)

(declare-fun lt!225821 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3941 0))(
  ( (MissingZero!3941 (index!17946 (_ BitVec 32))) (Found!3941 (index!17947 (_ BitVec 32))) (Intermediate!3941 (undefined!4753 Bool) (index!17948 (_ BitVec 32)) (x!47021 (_ BitVec 32))) (Undefined!3941) (MissingVacant!3941 (index!17949 (_ BitVec 32))) )
))
(declare-fun lt!225825 () SeekEntryResult!3941)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32177 (_ BitVec 32)) SeekEntryResult!3941)

(assert (=> b!498365 (= lt!225825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225829 lt!225821 lt!225824 mask!3524))))

(declare-fun b!498366 () Bool)

(declare-fun e!292099 () Bool)

(assert (=> b!498366 (= e!292099 false)))

(declare-fun b!498367 () Bool)

(declare-fun res!300593 () Bool)

(declare-fun e!292094 () Bool)

(assert (=> b!498367 (=> (not res!300593) (not e!292094))))

(declare-datatypes ((List!9678 0))(
  ( (Nil!9675) (Cons!9674 (h!10548 (_ BitVec 64)) (t!15914 List!9678)) )
))
(declare-fun arrayNoDuplicates!0 (array!32177 (_ BitVec 32) List!9678) Bool)

(assert (=> b!498367 (= res!300593 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9675))))

(declare-fun b!498368 () Bool)

(declare-fun res!300602 () Bool)

(declare-fun e!292095 () Bool)

(assert (=> b!498368 (=> res!300602 e!292095)))

(declare-fun lt!225830 () SeekEntryResult!3941)

(assert (=> b!498368 (= res!300602 (or (undefined!4753 lt!225830) (not (is-Intermediate!3941 lt!225830))))))

(declare-fun b!498369 () Bool)

(assert (=> b!498369 (= e!292092 e!292094)))

(declare-fun res!300595 () Bool)

(assert (=> b!498369 (=> (not res!300595) (not e!292094))))

(declare-fun lt!225827 () SeekEntryResult!3941)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498369 (= res!300595 (or (= lt!225827 (MissingZero!3941 i!1204)) (= lt!225827 (MissingVacant!3941 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32177 (_ BitVec 32)) SeekEntryResult!3941)

(assert (=> b!498369 (= lt!225827 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498370 () Bool)

(declare-fun res!300601 () Bool)

(assert (=> b!498370 (=> (not res!300601) (not e!292092))))

(declare-fun arrayContainsKey!0 (array!32177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498370 (= res!300601 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498372 () Bool)

(assert (=> b!498372 (= e!292095 e!292097)))

(declare-fun res!300594 () Bool)

(assert (=> b!498372 (=> res!300594 e!292097)))

(assert (=> b!498372 (= res!300594 (or (bvsgt #b00000000000000000000000000000000 (x!47021 lt!225830)) (bvsgt (x!47021 lt!225830) #b01111111111111111111111111111110) (bvslt lt!225829 #b00000000000000000000000000000000) (bvsge lt!225829 (size!15831 a!3235)) (bvslt (index!17948 lt!225830) #b00000000000000000000000000000000) (bvsge (index!17948 lt!225830) (size!15831 a!3235)) (not (= lt!225830 (Intermediate!3941 false (index!17948 lt!225830) (x!47021 lt!225830))))))))

(assert (=> b!498372 (and (or (= (select (arr!15467 a!3235) (index!17948 lt!225830)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15467 a!3235) (index!17948 lt!225830)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15467 a!3235) (index!17948 lt!225830)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15467 a!3235) (index!17948 lt!225830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14854 0))(
  ( (Unit!14855) )
))
(declare-fun lt!225823 () Unit!14854)

(declare-fun e!292098 () Unit!14854)

(assert (=> b!498372 (= lt!225823 e!292098)))

(declare-fun c!59162 () Bool)

(assert (=> b!498372 (= c!59162 (= (select (arr!15467 a!3235) (index!17948 lt!225830)) (select (arr!15467 a!3235) j!176)))))

(assert (=> b!498372 (and (bvslt (x!47021 lt!225830) #b01111111111111111111111111111110) (or (= (select (arr!15467 a!3235) (index!17948 lt!225830)) (select (arr!15467 a!3235) j!176)) (= (select (arr!15467 a!3235) (index!17948 lt!225830)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15467 a!3235) (index!17948 lt!225830)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498373 () Bool)

(declare-fun Unit!14856 () Unit!14854)

(assert (=> b!498373 (= e!292098 Unit!14856)))

(declare-fun b!498371 () Bool)

(declare-fun res!300604 () Bool)

(assert (=> b!498371 (=> (not res!300604) (not e!292092))))

(assert (=> b!498371 (= res!300604 (and (= (size!15831 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15831 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15831 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!300600 () Bool)

(assert (=> start!45392 (=> (not res!300600) (not e!292092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45392 (= res!300600 (validMask!0 mask!3524))))

(assert (=> start!45392 e!292092))

(assert (=> start!45392 true))

(declare-fun array_inv!11241 (array!32177) Bool)

(assert (=> start!45392 (array_inv!11241 a!3235)))

(declare-fun b!498374 () Bool)

(declare-fun Unit!14857 () Unit!14854)

(assert (=> b!498374 (= e!292098 Unit!14857)))

(declare-fun lt!225828 () Unit!14854)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32177 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14854)

(assert (=> b!498374 (= lt!225828 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225829 #b00000000000000000000000000000000 (index!17948 lt!225830) (x!47021 lt!225830) mask!3524))))

(declare-fun res!300599 () Bool)

(assert (=> b!498374 (= res!300599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225829 lt!225821 lt!225824 mask!3524) (Intermediate!3941 false (index!17948 lt!225830) (x!47021 lt!225830))))))

(assert (=> b!498374 (=> (not res!300599) (not e!292099))))

(assert (=> b!498374 e!292099))

(declare-fun b!498375 () Bool)

(declare-fun res!300603 () Bool)

(assert (=> b!498375 (=> (not res!300603) (not e!292094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32177 (_ BitVec 32)) Bool)

(assert (=> b!498375 (= res!300603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498376 () Bool)

(declare-fun e!292096 () Bool)

(assert (=> b!498376 (= e!292096 (= (seekEntryOrOpen!0 (select (arr!15467 a!3235) j!176) a!3235 mask!3524) (Found!3941 j!176)))))

(declare-fun b!498377 () Bool)

(assert (=> b!498377 (= e!292094 (not e!292095))))

(declare-fun res!300605 () Bool)

(assert (=> b!498377 (=> res!300605 e!292095)))

(declare-fun lt!225826 () (_ BitVec 32))

(assert (=> b!498377 (= res!300605 (= lt!225830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225826 lt!225821 lt!225824 mask!3524)))))

(assert (=> b!498377 (= lt!225830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225829 (select (arr!15467 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498377 (= lt!225826 (toIndex!0 lt!225821 mask!3524))))

(assert (=> b!498377 (= lt!225821 (select (store (arr!15467 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498377 (= lt!225829 (toIndex!0 (select (arr!15467 a!3235) j!176) mask!3524))))

(assert (=> b!498377 (= lt!225824 (array!32178 (store (arr!15467 a!3235) i!1204 k!2280) (size!15831 a!3235)))))

(assert (=> b!498377 e!292096))

(declare-fun res!300596 () Bool)

(assert (=> b!498377 (=> (not res!300596) (not e!292096))))

(assert (=> b!498377 (= res!300596 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225822 () Unit!14854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32177 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14854)

(assert (=> b!498377 (= lt!225822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45392 res!300600) b!498371))

(assert (= (and b!498371 res!300604) b!498364))

(assert (= (and b!498364 res!300598) b!498363))

(assert (= (and b!498363 res!300597) b!498370))

(assert (= (and b!498370 res!300601) b!498369))

(assert (= (and b!498369 res!300595) b!498375))

(assert (= (and b!498375 res!300603) b!498367))

(assert (= (and b!498367 res!300593) b!498377))

(assert (= (and b!498377 res!300596) b!498376))

(assert (= (and b!498377 (not res!300605)) b!498368))

(assert (= (and b!498368 (not res!300602)) b!498372))

(assert (= (and b!498372 c!59162) b!498374))

(assert (= (and b!498372 (not c!59162)) b!498373))

(assert (= (and b!498374 res!300599) b!498366))

(assert (= (and b!498372 (not res!300594)) b!498365))

(declare-fun m!479659 () Bool)

(assert (=> b!498367 m!479659))

(declare-fun m!479661 () Bool)

(assert (=> b!498376 m!479661))

(assert (=> b!498376 m!479661))

(declare-fun m!479663 () Bool)

(assert (=> b!498376 m!479663))

(declare-fun m!479665 () Bool)

(assert (=> b!498363 m!479665))

(declare-fun m!479667 () Bool)

(assert (=> b!498370 m!479667))

(declare-fun m!479669 () Bool)

(assert (=> start!45392 m!479669))

(declare-fun m!479671 () Bool)

(assert (=> start!45392 m!479671))

(declare-fun m!479673 () Bool)

(assert (=> b!498372 m!479673))

(assert (=> b!498372 m!479661))

(declare-fun m!479675 () Bool)

(assert (=> b!498365 m!479675))

(declare-fun m!479677 () Bool)

(assert (=> b!498375 m!479677))

(declare-fun m!479679 () Bool)

(assert (=> b!498377 m!479679))

(declare-fun m!479681 () Bool)

(assert (=> b!498377 m!479681))

(declare-fun m!479683 () Bool)

(assert (=> b!498377 m!479683))

(declare-fun m!479685 () Bool)

(assert (=> b!498377 m!479685))

(assert (=> b!498377 m!479661))

(declare-fun m!479687 () Bool)

(assert (=> b!498377 m!479687))

(assert (=> b!498377 m!479661))

(assert (=> b!498377 m!479661))

(declare-fun m!479689 () Bool)

(assert (=> b!498377 m!479689))

(declare-fun m!479691 () Bool)

(assert (=> b!498377 m!479691))

(declare-fun m!479693 () Bool)

(assert (=> b!498377 m!479693))

(declare-fun m!479695 () Bool)

(assert (=> b!498374 m!479695))

(assert (=> b!498374 m!479675))

(assert (=> b!498364 m!479661))

(assert (=> b!498364 m!479661))

(declare-fun m!479697 () Bool)

(assert (=> b!498364 m!479697))

(declare-fun m!479699 () Bool)

(assert (=> b!498369 m!479699))

(push 1)

