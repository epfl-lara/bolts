; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45722 () Bool)

(assert start!45722)

(declare-fun b!504889 () Bool)

(declare-fun e!295594 () Bool)

(declare-fun e!295587 () Bool)

(assert (=> b!504889 (= e!295594 e!295587)))

(declare-fun res!306153 () Bool)

(assert (=> b!504889 (=> res!306153 e!295587)))

(declare-datatypes ((SeekEntryResult!4070 0))(
  ( (MissingZero!4070 (index!18468 (_ BitVec 32))) (Found!4070 (index!18469 (_ BitVec 32))) (Intermediate!4070 (undefined!4882 Bool) (index!18470 (_ BitVec 32)) (x!47506 (_ BitVec 32))) (Undefined!4070) (MissingVacant!4070 (index!18471 (_ BitVec 32))) )
))
(declare-fun lt!230056 () SeekEntryResult!4070)

(declare-datatypes ((array!32438 0))(
  ( (array!32439 (arr!15596 (Array (_ BitVec 32) (_ BitVec 64))) (size!15960 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32438)

(declare-fun lt!230060 () (_ BitVec 32))

(assert (=> b!504889 (= res!306153 (or (bvsgt (x!47506 lt!230056) #b01111111111111111111111111111110) (bvslt lt!230060 #b00000000000000000000000000000000) (bvsge lt!230060 (size!15960 a!3235)) (bvslt (index!18470 lt!230056) #b00000000000000000000000000000000) (bvsge (index!18470 lt!230056) (size!15960 a!3235)) (not (= lt!230056 (Intermediate!4070 false (index!18470 lt!230056) (x!47506 lt!230056))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504889 (= (index!18470 lt!230056) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((Unit!15370 0))(
  ( (Unit!15371) )
))
(declare-fun lt!230058 () Unit!15370)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15370)

(assert (=> b!504889 (= lt!230058 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230060 #b00000000000000000000000000000000 (index!18470 lt!230056) (x!47506 lt!230056) mask!3524))))

(assert (=> b!504889 (and (or (= (select (arr!15596 a!3235) (index!18470 lt!230056)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15596 a!3235) (index!18470 lt!230056)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15596 a!3235) (index!18470 lt!230056)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15596 a!3235) (index!18470 lt!230056)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230051 () Unit!15370)

(declare-fun e!295593 () Unit!15370)

(assert (=> b!504889 (= lt!230051 e!295593)))

(declare-fun c!59651 () Bool)

(assert (=> b!504889 (= c!59651 (= (select (arr!15596 a!3235) (index!18470 lt!230056)) (select (arr!15596 a!3235) j!176)))))

(assert (=> b!504889 (and (bvslt (x!47506 lt!230056) #b01111111111111111111111111111110) (or (= (select (arr!15596 a!3235) (index!18470 lt!230056)) (select (arr!15596 a!3235) j!176)) (= (select (arr!15596 a!3235) (index!18470 lt!230056)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15596 a!3235) (index!18470 lt!230056)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504890 () Bool)

(declare-fun res!306158 () Bool)

(declare-fun e!295588 () Bool)

(assert (=> b!504890 (=> (not res!306158) (not e!295588))))

(declare-datatypes ((List!9807 0))(
  ( (Nil!9804) (Cons!9803 (h!10680 (_ BitVec 64)) (t!16043 List!9807)) )
))
(declare-fun arrayNoDuplicates!0 (array!32438 (_ BitVec 32) List!9807) Bool)

(assert (=> b!504890 (= res!306158 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9804))))

(declare-fun b!504891 () Bool)

(declare-fun Unit!15372 () Unit!15370)

(assert (=> b!504891 (= e!295593 Unit!15372)))

(declare-fun b!504893 () Bool)

(declare-fun res!306144 () Bool)

(declare-fun e!295590 () Bool)

(assert (=> b!504893 (=> (not res!306144) (not e!295590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504893 (= res!306144 (validKeyInArray!0 (select (arr!15596 a!3235) j!176)))))

(declare-fun b!504894 () Bool)

(declare-fun res!306148 () Bool)

(assert (=> b!504894 (=> (not res!306148) (not e!295590))))

(assert (=> b!504894 (= res!306148 (validKeyInArray!0 k!2280))))

(declare-fun b!504895 () Bool)

(declare-fun e!295586 () Bool)

(assert (=> b!504895 (= e!295586 false)))

(declare-fun b!504896 () Bool)

(assert (=> b!504896 (= e!295590 e!295588)))

(declare-fun res!306155 () Bool)

(assert (=> b!504896 (=> (not res!306155) (not e!295588))))

(declare-fun lt!230055 () SeekEntryResult!4070)

(assert (=> b!504896 (= res!306155 (or (= lt!230055 (MissingZero!4070 i!1204)) (= lt!230055 (MissingVacant!4070 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32438 (_ BitVec 32)) SeekEntryResult!4070)

(assert (=> b!504896 (= lt!230055 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!295589 () Bool)

(declare-fun b!504897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32438 (_ BitVec 32)) SeekEntryResult!4070)

(assert (=> b!504897 (= e!295589 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230060 (index!18470 lt!230056) (select (arr!15596 a!3235) j!176) a!3235 mask!3524) (Found!4070 j!176))))))

(declare-fun res!306151 () Bool)

(assert (=> start!45722 (=> (not res!306151) (not e!295590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45722 (= res!306151 (validMask!0 mask!3524))))

(assert (=> start!45722 e!295590))

(assert (=> start!45722 true))

(declare-fun array_inv!11370 (array!32438) Bool)

(assert (=> start!45722 (array_inv!11370 a!3235)))

(declare-fun b!504892 () Bool)

(declare-fun res!306146 () Bool)

(assert (=> b!504892 (=> res!306146 e!295594)))

(assert (=> b!504892 (= res!306146 (or (undefined!4882 lt!230056) (not (is-Intermediate!4070 lt!230056))))))

(declare-fun b!504898 () Bool)

(assert (=> b!504898 (= e!295587 true)))

(declare-fun lt!230059 () (_ BitVec 64))

(declare-fun lt!230057 () SeekEntryResult!4070)

(declare-fun lt!230053 () array!32438)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32438 (_ BitVec 32)) SeekEntryResult!4070)

(assert (=> b!504898 (= lt!230057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230060 lt!230059 lt!230053 mask!3524))))

(declare-fun b!504899 () Bool)

(declare-fun Unit!15373 () Unit!15370)

(assert (=> b!504899 (= e!295593 Unit!15373)))

(declare-fun lt!230054 () Unit!15370)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15370)

(assert (=> b!504899 (= lt!230054 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230060 #b00000000000000000000000000000000 (index!18470 lt!230056) (x!47506 lt!230056) mask!3524))))

(declare-fun res!306147 () Bool)

(assert (=> b!504899 (= res!306147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230060 lt!230059 lt!230053 mask!3524) (Intermediate!4070 false (index!18470 lt!230056) (x!47506 lt!230056))))))

(assert (=> b!504899 (=> (not res!306147) (not e!295586))))

(assert (=> b!504899 e!295586))

(declare-fun b!504900 () Bool)

(declare-fun res!306157 () Bool)

(assert (=> b!504900 (=> (not res!306157) (not e!295590))))

(assert (=> b!504900 (= res!306157 (and (= (size!15960 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15960 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15960 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504901 () Bool)

(declare-fun res!306150 () Bool)

(assert (=> b!504901 (=> res!306150 e!295587)))

(assert (=> b!504901 (= res!306150 e!295589)))

(declare-fun res!306149 () Bool)

(assert (=> b!504901 (=> (not res!306149) (not e!295589))))

(assert (=> b!504901 (= res!306149 (bvsgt #b00000000000000000000000000000000 (x!47506 lt!230056)))))

(declare-fun b!504902 () Bool)

(assert (=> b!504902 (= e!295588 (not e!295594))))

(declare-fun res!306156 () Bool)

(assert (=> b!504902 (=> res!306156 e!295594)))

(declare-fun lt!230052 () (_ BitVec 32))

(assert (=> b!504902 (= res!306156 (= lt!230056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230052 lt!230059 lt!230053 mask!3524)))))

(assert (=> b!504902 (= lt!230056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230060 (select (arr!15596 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504902 (= lt!230052 (toIndex!0 lt!230059 mask!3524))))

(assert (=> b!504902 (= lt!230059 (select (store (arr!15596 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504902 (= lt!230060 (toIndex!0 (select (arr!15596 a!3235) j!176) mask!3524))))

(assert (=> b!504902 (= lt!230053 (array!32439 (store (arr!15596 a!3235) i!1204 k!2280) (size!15960 a!3235)))))

(declare-fun e!295591 () Bool)

(assert (=> b!504902 e!295591))

(declare-fun res!306145 () Bool)

(assert (=> b!504902 (=> (not res!306145) (not e!295591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32438 (_ BitVec 32)) Bool)

(assert (=> b!504902 (= res!306145 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230050 () Unit!15370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15370)

(assert (=> b!504902 (= lt!230050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504903 () Bool)

(assert (=> b!504903 (= e!295591 (= (seekEntryOrOpen!0 (select (arr!15596 a!3235) j!176) a!3235 mask!3524) (Found!4070 j!176)))))

(declare-fun b!504904 () Bool)

(declare-fun res!306152 () Bool)

(assert (=> b!504904 (=> (not res!306152) (not e!295590))))

(declare-fun arrayContainsKey!0 (array!32438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504904 (= res!306152 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504905 () Bool)

(declare-fun res!306154 () Bool)

(assert (=> b!504905 (=> (not res!306154) (not e!295588))))

(assert (=> b!504905 (= res!306154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45722 res!306151) b!504900))

(assert (= (and b!504900 res!306157) b!504893))

(assert (= (and b!504893 res!306144) b!504894))

(assert (= (and b!504894 res!306148) b!504904))

(assert (= (and b!504904 res!306152) b!504896))

(assert (= (and b!504896 res!306155) b!504905))

(assert (= (and b!504905 res!306154) b!504890))

(assert (= (and b!504890 res!306158) b!504902))

(assert (= (and b!504902 res!306145) b!504903))

(assert (= (and b!504902 (not res!306156)) b!504892))

(assert (= (and b!504892 (not res!306146)) b!504889))

(assert (= (and b!504889 c!59651) b!504899))

(assert (= (and b!504889 (not c!59651)) b!504891))

(assert (= (and b!504899 res!306147) b!504895))

(assert (= (and b!504889 (not res!306153)) b!504901))

(assert (= (and b!504901 res!306149) b!504897))

(assert (= (and b!504901 (not res!306150)) b!504898))

(declare-fun m!485601 () Bool)

(assert (=> b!504899 m!485601))

(declare-fun m!485603 () Bool)

(assert (=> b!504899 m!485603))

(declare-fun m!485605 () Bool)

(assert (=> b!504894 m!485605))

(declare-fun m!485607 () Bool)

(assert (=> b!504904 m!485607))

(declare-fun m!485609 () Bool)

(assert (=> b!504905 m!485609))

(declare-fun m!485611 () Bool)

(assert (=> b!504893 m!485611))

(assert (=> b!504893 m!485611))

(declare-fun m!485613 () Bool)

(assert (=> b!504893 m!485613))

(declare-fun m!485615 () Bool)

(assert (=> b!504896 m!485615))

(declare-fun m!485617 () Bool)

(assert (=> b!504889 m!485617))

(declare-fun m!485619 () Bool)

(assert (=> b!504889 m!485619))

(assert (=> b!504889 m!485611))

(declare-fun m!485621 () Bool)

(assert (=> b!504890 m!485621))

(assert (=> b!504898 m!485603))

(declare-fun m!485623 () Bool)

(assert (=> start!45722 m!485623))

(declare-fun m!485625 () Bool)

(assert (=> start!45722 m!485625))

(assert (=> b!504903 m!485611))

(assert (=> b!504903 m!485611))

(declare-fun m!485627 () Bool)

(assert (=> b!504903 m!485627))

(assert (=> b!504897 m!485611))

(assert (=> b!504897 m!485611))

(declare-fun m!485629 () Bool)

(assert (=> b!504897 m!485629))

(declare-fun m!485631 () Bool)

(assert (=> b!504902 m!485631))

(declare-fun m!485633 () Bool)

(assert (=> b!504902 m!485633))

(declare-fun m!485635 () Bool)

(assert (=> b!504902 m!485635))

(declare-fun m!485637 () Bool)

(assert (=> b!504902 m!485637))

(declare-fun m!485639 () Bool)

(assert (=> b!504902 m!485639))

(assert (=> b!504902 m!485611))

(declare-fun m!485641 () Bool)

(assert (=> b!504902 m!485641))

(assert (=> b!504902 m!485611))

(declare-fun m!485643 () Bool)

(assert (=> b!504902 m!485643))

(assert (=> b!504902 m!485611))

(declare-fun m!485645 () Bool)

(assert (=> b!504902 m!485645))

(push 1)

