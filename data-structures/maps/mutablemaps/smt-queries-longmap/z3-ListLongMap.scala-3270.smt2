; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45504 () Bool)

(assert start!45504)

(declare-fun b!500878 () Bool)

(declare-fun res!302776 () Bool)

(declare-fun e!293436 () Bool)

(assert (=> b!500878 (=> (not res!302776) (not e!293436))))

(declare-datatypes ((array!32289 0))(
  ( (array!32290 (arr!15523 (Array (_ BitVec 32) (_ BitVec 64))) (size!15887 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32289)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32289 (_ BitVec 32)) Bool)

(assert (=> b!500878 (= res!302776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!302772 () Bool)

(declare-fun e!293434 () Bool)

(assert (=> start!45504 (=> (not res!302772) (not e!293434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45504 (= res!302772 (validMask!0 mask!3524))))

(assert (=> start!45504 e!293434))

(assert (=> start!45504 true))

(declare-fun array_inv!11297 (array!32289) Bool)

(assert (=> start!45504 (array_inv!11297 a!3235)))

(declare-fun b!500879 () Bool)

(declare-fun res!302778 () Bool)

(assert (=> b!500879 (=> (not res!302778) (not e!293434))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500879 (= res!302778 (validKeyInArray!0 (select (arr!15523 a!3235) j!176)))))

(declare-fun b!500880 () Bool)

(declare-fun res!302773 () Bool)

(assert (=> b!500880 (=> (not res!302773) (not e!293436))))

(declare-datatypes ((List!9734 0))(
  ( (Nil!9731) (Cons!9730 (h!10604 (_ BitVec 64)) (t!15970 List!9734)) )
))
(declare-fun arrayNoDuplicates!0 (array!32289 (_ BitVec 32) List!9734) Bool)

(assert (=> b!500880 (= res!302773 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9731))))

(declare-fun b!500881 () Bool)

(assert (=> b!500881 (= e!293434 e!293436)))

(declare-fun res!302774 () Bool)

(assert (=> b!500881 (=> (not res!302774) (not e!293436))))

(declare-datatypes ((SeekEntryResult!3997 0))(
  ( (MissingZero!3997 (index!18170 (_ BitVec 32))) (Found!3997 (index!18171 (_ BitVec 32))) (Intermediate!3997 (undefined!4809 Bool) (index!18172 (_ BitVec 32)) (x!47229 (_ BitVec 32))) (Undefined!3997) (MissingVacant!3997 (index!18173 (_ BitVec 32))) )
))
(declare-fun lt!227509 () SeekEntryResult!3997)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500881 (= res!302774 (or (= lt!227509 (MissingZero!3997 i!1204)) (= lt!227509 (MissingVacant!3997 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32289 (_ BitVec 32)) SeekEntryResult!3997)

(assert (=> b!500881 (= lt!227509 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!500882 () Bool)

(declare-fun res!302782 () Bool)

(assert (=> b!500882 (=> (not res!302782) (not e!293434))))

(assert (=> b!500882 (= res!302782 (validKeyInArray!0 k0!2280))))

(declare-fun b!500883 () Bool)

(declare-fun e!293435 () Bool)

(assert (=> b!500883 (= e!293436 (not e!293435))))

(declare-fun res!302783 () Bool)

(assert (=> b!500883 (=> res!302783 e!293435)))

(declare-fun lt!227506 () (_ BitVec 64))

(declare-fun lt!227502 () array!32289)

(declare-fun lt!227501 () (_ BitVec 32))

(declare-fun lt!227510 () SeekEntryResult!3997)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32289 (_ BitVec 32)) SeekEntryResult!3997)

(assert (=> b!500883 (= res!302783 (= lt!227510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227501 lt!227506 lt!227502 mask!3524)))))

(declare-fun lt!227503 () (_ BitVec 32))

(assert (=> b!500883 (= lt!227510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227503 (select (arr!15523 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500883 (= lt!227501 (toIndex!0 lt!227506 mask!3524))))

(assert (=> b!500883 (= lt!227506 (select (store (arr!15523 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500883 (= lt!227503 (toIndex!0 (select (arr!15523 a!3235) j!176) mask!3524))))

(assert (=> b!500883 (= lt!227502 (array!32290 (store (arr!15523 a!3235) i!1204 k0!2280) (size!15887 a!3235)))))

(declare-fun e!293432 () Bool)

(assert (=> b!500883 e!293432))

(declare-fun res!302777 () Bool)

(assert (=> b!500883 (=> (not res!302777) (not e!293432))))

(assert (=> b!500883 (= res!302777 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15078 0))(
  ( (Unit!15079) )
))
(declare-fun lt!227507 () Unit!15078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15078)

(assert (=> b!500883 (= lt!227507 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500884 () Bool)

(assert (=> b!500884 (= e!293435 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!500884 (= (index!18172 lt!227510) i!1204)))

(declare-fun lt!227505 () Unit!15078)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32289 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15078)

(assert (=> b!500884 (= lt!227505 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!227503 #b00000000000000000000000000000000 (index!18172 lt!227510) (x!47229 lt!227510) mask!3524))))

(assert (=> b!500884 (and (or (= (select (arr!15523 a!3235) (index!18172 lt!227510)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15523 a!3235) (index!18172 lt!227510)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15523 a!3235) (index!18172 lt!227510)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15523 a!3235) (index!18172 lt!227510)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227508 () Unit!15078)

(declare-fun e!293433 () Unit!15078)

(assert (=> b!500884 (= lt!227508 e!293433)))

(declare-fun c!59330 () Bool)

(assert (=> b!500884 (= c!59330 (= (select (arr!15523 a!3235) (index!18172 lt!227510)) (select (arr!15523 a!3235) j!176)))))

(assert (=> b!500884 (and (bvslt (x!47229 lt!227510) #b01111111111111111111111111111110) (or (= (select (arr!15523 a!3235) (index!18172 lt!227510)) (select (arr!15523 a!3235) j!176)) (= (select (arr!15523 a!3235) (index!18172 lt!227510)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15523 a!3235) (index!18172 lt!227510)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500885 () Bool)

(declare-fun res!302780 () Bool)

(assert (=> b!500885 (=> (not res!302780) (not e!293434))))

(assert (=> b!500885 (= res!302780 (and (= (size!15887 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15887 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15887 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500886 () Bool)

(declare-fun Unit!15080 () Unit!15078)

(assert (=> b!500886 (= e!293433 Unit!15080)))

(declare-fun b!500887 () Bool)

(declare-fun e!293437 () Bool)

(assert (=> b!500887 (= e!293437 false)))

(declare-fun b!500888 () Bool)

(declare-fun Unit!15081 () Unit!15078)

(assert (=> b!500888 (= e!293433 Unit!15081)))

(declare-fun lt!227504 () Unit!15078)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32289 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15078)

(assert (=> b!500888 (= lt!227504 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227503 #b00000000000000000000000000000000 (index!18172 lt!227510) (x!47229 lt!227510) mask!3524))))

(declare-fun res!302781 () Bool)

(assert (=> b!500888 (= res!302781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227503 lt!227506 lt!227502 mask!3524) (Intermediate!3997 false (index!18172 lt!227510) (x!47229 lt!227510))))))

(assert (=> b!500888 (=> (not res!302781) (not e!293437))))

(assert (=> b!500888 e!293437))

(declare-fun b!500889 () Bool)

(assert (=> b!500889 (= e!293432 (= (seekEntryOrOpen!0 (select (arr!15523 a!3235) j!176) a!3235 mask!3524) (Found!3997 j!176)))))

(declare-fun b!500890 () Bool)

(declare-fun res!302779 () Bool)

(assert (=> b!500890 (=> (not res!302779) (not e!293434))))

(declare-fun arrayContainsKey!0 (array!32289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500890 (= res!302779 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500891 () Bool)

(declare-fun res!302775 () Bool)

(assert (=> b!500891 (=> res!302775 e!293435)))

(get-info :version)

(assert (=> b!500891 (= res!302775 (or (undefined!4809 lt!227510) (not ((_ is Intermediate!3997) lt!227510))))))

(assert (= (and start!45504 res!302772) b!500885))

(assert (= (and b!500885 res!302780) b!500879))

(assert (= (and b!500879 res!302778) b!500882))

(assert (= (and b!500882 res!302782) b!500890))

(assert (= (and b!500890 res!302779) b!500881))

(assert (= (and b!500881 res!302774) b!500878))

(assert (= (and b!500878 res!302776) b!500880))

(assert (= (and b!500880 res!302773) b!500883))

(assert (= (and b!500883 res!302777) b!500889))

(assert (= (and b!500883 (not res!302783)) b!500891))

(assert (= (and b!500891 (not res!302775)) b!500884))

(assert (= (and b!500884 c!59330) b!500888))

(assert (= (and b!500884 (not c!59330)) b!500886))

(assert (= (and b!500888 res!302781) b!500887))

(declare-fun m!482013 () Bool)

(assert (=> b!500879 m!482013))

(assert (=> b!500879 m!482013))

(declare-fun m!482015 () Bool)

(assert (=> b!500879 m!482015))

(declare-fun m!482017 () Bool)

(assert (=> b!500881 m!482017))

(declare-fun m!482019 () Bool)

(assert (=> b!500883 m!482019))

(assert (=> b!500883 m!482013))

(declare-fun m!482021 () Bool)

(assert (=> b!500883 m!482021))

(declare-fun m!482023 () Bool)

(assert (=> b!500883 m!482023))

(declare-fun m!482025 () Bool)

(assert (=> b!500883 m!482025))

(declare-fun m!482027 () Bool)

(assert (=> b!500883 m!482027))

(declare-fun m!482029 () Bool)

(assert (=> b!500883 m!482029))

(assert (=> b!500883 m!482013))

(declare-fun m!482031 () Bool)

(assert (=> b!500883 m!482031))

(assert (=> b!500883 m!482013))

(declare-fun m!482033 () Bool)

(assert (=> b!500883 m!482033))

(declare-fun m!482035 () Bool)

(assert (=> b!500882 m!482035))

(declare-fun m!482037 () Bool)

(assert (=> b!500888 m!482037))

(declare-fun m!482039 () Bool)

(assert (=> b!500888 m!482039))

(declare-fun m!482041 () Bool)

(assert (=> b!500878 m!482041))

(declare-fun m!482043 () Bool)

(assert (=> b!500880 m!482043))

(declare-fun m!482045 () Bool)

(assert (=> b!500890 m!482045))

(assert (=> b!500889 m!482013))

(assert (=> b!500889 m!482013))

(declare-fun m!482047 () Bool)

(assert (=> b!500889 m!482047))

(declare-fun m!482049 () Bool)

(assert (=> start!45504 m!482049))

(declare-fun m!482051 () Bool)

(assert (=> start!45504 m!482051))

(declare-fun m!482053 () Bool)

(assert (=> b!500884 m!482053))

(declare-fun m!482055 () Bool)

(assert (=> b!500884 m!482055))

(assert (=> b!500884 m!482013))

(check-sat (not b!500888) (not b!500890) (not b!500884) (not b!500879) (not start!45504) (not b!500883) (not b!500878) (not b!500882) (not b!500880) (not b!500881) (not b!500889))
(check-sat)
