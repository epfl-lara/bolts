; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45728 () Bool)

(assert start!45728)

(declare-fun b!505042 () Bool)

(declare-fun res!306289 () Bool)

(declare-fun e!295672 () Bool)

(assert (=> b!505042 (=> (not res!306289) (not e!295672))))

(declare-datatypes ((array!32444 0))(
  ( (array!32445 (arr!15599 (Array (_ BitVec 32) (_ BitVec 64))) (size!15963 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32444)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32444 (_ BitVec 32)) Bool)

(assert (=> b!505042 (= res!306289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505043 () Bool)

(declare-fun res!306285 () Bool)

(declare-fun e!295671 () Bool)

(assert (=> b!505043 (=> (not res!306285) (not e!295671))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505043 (= res!306285 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!306286 () Bool)

(assert (=> start!45728 (=> (not res!306286) (not e!295671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45728 (= res!306286 (validMask!0 mask!3524))))

(assert (=> start!45728 e!295671))

(assert (=> start!45728 true))

(declare-fun array_inv!11373 (array!32444) Bool)

(assert (=> start!45728 (array_inv!11373 a!3235)))

(declare-fun b!505044 () Bool)

(declare-fun e!295674 () Bool)

(assert (=> b!505044 (= e!295672 (not e!295674))))

(declare-fun res!306291 () Bool)

(assert (=> b!505044 (=> res!306291 e!295674)))

(declare-datatypes ((SeekEntryResult!4073 0))(
  ( (MissingZero!4073 (index!18480 (_ BitVec 32))) (Found!4073 (index!18481 (_ BitVec 32))) (Intermediate!4073 (undefined!4885 Bool) (index!18482 (_ BitVec 32)) (x!47517 (_ BitVec 32))) (Undefined!4073) (MissingVacant!4073 (index!18483 (_ BitVec 32))) )
))
(declare-fun lt!230165 () SeekEntryResult!4073)

(declare-fun lt!230170 () SeekEntryResult!4073)

(assert (=> b!505044 (= res!306291 (or (= lt!230165 lt!230170) (undefined!4885 lt!230165) (not (is-Intermediate!4073 lt!230165))))))

(declare-fun lt!230166 () array!32444)

(declare-fun lt!230175 () (_ BitVec 64))

(declare-fun lt!230168 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32444 (_ BitVec 32)) SeekEntryResult!4073)

(assert (=> b!505044 (= lt!230170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230168 lt!230175 lt!230166 mask!3524))))

(declare-fun lt!230167 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!505044 (= lt!230165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230167 (select (arr!15599 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505044 (= lt!230168 (toIndex!0 lt!230175 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505044 (= lt!230175 (select (store (arr!15599 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505044 (= lt!230167 (toIndex!0 (select (arr!15599 a!3235) j!176) mask!3524))))

(assert (=> b!505044 (= lt!230166 (array!32445 (store (arr!15599 a!3235) i!1204 k!2280) (size!15963 a!3235)))))

(declare-fun lt!230169 () SeekEntryResult!4073)

(assert (=> b!505044 (= lt!230169 (Found!4073 j!176))))

(declare-fun e!295667 () Bool)

(assert (=> b!505044 e!295667))

(declare-fun res!306280 () Bool)

(assert (=> b!505044 (=> (not res!306280) (not e!295667))))

(assert (=> b!505044 (= res!306280 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15382 0))(
  ( (Unit!15383) )
))
(declare-fun lt!230172 () Unit!15382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32444 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15382)

(assert (=> b!505044 (= lt!230172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505045 () Bool)

(declare-fun res!306281 () Bool)

(assert (=> b!505045 (=> (not res!306281) (not e!295671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505045 (= res!306281 (validKeyInArray!0 (select (arr!15599 a!3235) j!176)))))

(declare-fun b!505046 () Bool)

(declare-fun res!306290 () Bool)

(declare-fun e!295675 () Bool)

(assert (=> b!505046 (=> res!306290 e!295675)))

(declare-fun e!295670 () Bool)

(assert (=> b!505046 (= res!306290 e!295670)))

(declare-fun res!306282 () Bool)

(assert (=> b!505046 (=> (not res!306282) (not e!295670))))

(assert (=> b!505046 (= res!306282 (bvsgt #b00000000000000000000000000000000 (x!47517 lt!230165)))))

(declare-fun b!505047 () Bool)

(declare-fun e!295668 () Unit!15382)

(declare-fun Unit!15384 () Unit!15382)

(assert (=> b!505047 (= e!295668 Unit!15384)))

(declare-fun b!505048 () Bool)

(assert (=> b!505048 (= e!295675 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32444 (_ BitVec 32)) SeekEntryResult!4073)

(assert (=> b!505048 (= (seekEntryOrOpen!0 lt!230175 lt!230166 mask!3524) lt!230169)))

(declare-fun lt!230174 () Unit!15382)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15382)

(assert (=> b!505048 (= lt!230174 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230167 #b00000000000000000000000000000000 (index!18482 lt!230165) (x!47517 lt!230165) mask!3524))))

(declare-fun b!505049 () Bool)

(declare-fun res!306287 () Bool)

(assert (=> b!505049 (=> (not res!306287) (not e!295672))))

(declare-datatypes ((List!9810 0))(
  ( (Nil!9807) (Cons!9806 (h!10683 (_ BitVec 64)) (t!16046 List!9810)) )
))
(declare-fun arrayNoDuplicates!0 (array!32444 (_ BitVec 32) List!9810) Bool)

(assert (=> b!505049 (= res!306287 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9807))))

(declare-fun b!505050 () Bool)

(assert (=> b!505050 (= e!295667 (= (seekEntryOrOpen!0 (select (arr!15599 a!3235) j!176) a!3235 mask!3524) (Found!4073 j!176)))))

(declare-fun b!505051 () Bool)

(declare-fun res!306284 () Bool)

(assert (=> b!505051 (=> res!306284 e!295675)))

(assert (=> b!505051 (= res!306284 (not (= lt!230170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230167 lt!230175 lt!230166 mask!3524))))))

(declare-fun b!505052 () Bool)

(assert (=> b!505052 (= e!295674 e!295675)))

(declare-fun res!306283 () Bool)

(assert (=> b!505052 (=> res!306283 e!295675)))

(assert (=> b!505052 (= res!306283 (or (bvsgt (x!47517 lt!230165) #b01111111111111111111111111111110) (bvslt lt!230167 #b00000000000000000000000000000000) (bvsge lt!230167 (size!15963 a!3235)) (bvslt (index!18482 lt!230165) #b00000000000000000000000000000000) (bvsge (index!18482 lt!230165) (size!15963 a!3235)) (not (= lt!230165 (Intermediate!4073 false (index!18482 lt!230165) (x!47517 lt!230165))))))))

(assert (=> b!505052 (= (index!18482 lt!230165) i!1204)))

(declare-fun lt!230177 () Unit!15382)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15382)

(assert (=> b!505052 (= lt!230177 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230167 #b00000000000000000000000000000000 (index!18482 lt!230165) (x!47517 lt!230165) mask!3524))))

(assert (=> b!505052 (and (or (= (select (arr!15599 a!3235) (index!18482 lt!230165)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15599 a!3235) (index!18482 lt!230165)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15599 a!3235) (index!18482 lt!230165)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15599 a!3235) (index!18482 lt!230165)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230171 () Unit!15382)

(assert (=> b!505052 (= lt!230171 e!295668)))

(declare-fun c!59660 () Bool)

(assert (=> b!505052 (= c!59660 (= (select (arr!15599 a!3235) (index!18482 lt!230165)) (select (arr!15599 a!3235) j!176)))))

(assert (=> b!505052 (and (bvslt (x!47517 lt!230165) #b01111111111111111111111111111110) (or (= (select (arr!15599 a!3235) (index!18482 lt!230165)) (select (arr!15599 a!3235) j!176)) (= (select (arr!15599 a!3235) (index!18482 lt!230165)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15599 a!3235) (index!18482 lt!230165)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505053 () Bool)

(declare-fun res!306292 () Bool)

(assert (=> b!505053 (=> (not res!306292) (not e!295671))))

(assert (=> b!505053 (= res!306292 (and (= (size!15963 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15963 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15963 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505054 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32444 (_ BitVec 32)) SeekEntryResult!4073)

(assert (=> b!505054 (= e!295670 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230167 (index!18482 lt!230165) (select (arr!15599 a!3235) j!176) a!3235 mask!3524) lt!230169)))))

(declare-fun b!505055 () Bool)

(declare-fun e!295669 () Bool)

(assert (=> b!505055 (= e!295669 false)))

(declare-fun b!505056 () Bool)

(declare-fun res!306293 () Bool)

(assert (=> b!505056 (=> (not res!306293) (not e!295671))))

(assert (=> b!505056 (= res!306293 (validKeyInArray!0 k!2280))))

(declare-fun b!505057 () Bool)

(declare-fun Unit!15385 () Unit!15382)

(assert (=> b!505057 (= e!295668 Unit!15385)))

(declare-fun lt!230176 () Unit!15382)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15382)

(assert (=> b!505057 (= lt!230176 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230167 #b00000000000000000000000000000000 (index!18482 lt!230165) (x!47517 lt!230165) mask!3524))))

(declare-fun res!306279 () Bool)

(assert (=> b!505057 (= res!306279 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230167 lt!230175 lt!230166 mask!3524) (Intermediate!4073 false (index!18482 lt!230165) (x!47517 lt!230165))))))

(assert (=> b!505057 (=> (not res!306279) (not e!295669))))

(assert (=> b!505057 e!295669))

(declare-fun b!505058 () Bool)

(assert (=> b!505058 (= e!295671 e!295672)))

(declare-fun res!306288 () Bool)

(assert (=> b!505058 (=> (not res!306288) (not e!295672))))

(declare-fun lt!230173 () SeekEntryResult!4073)

(assert (=> b!505058 (= res!306288 (or (= lt!230173 (MissingZero!4073 i!1204)) (= lt!230173 (MissingVacant!4073 i!1204))))))

(assert (=> b!505058 (= lt!230173 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45728 res!306286) b!505053))

(assert (= (and b!505053 res!306292) b!505045))

(assert (= (and b!505045 res!306281) b!505056))

(assert (= (and b!505056 res!306293) b!505043))

(assert (= (and b!505043 res!306285) b!505058))

(assert (= (and b!505058 res!306288) b!505042))

(assert (= (and b!505042 res!306289) b!505049))

(assert (= (and b!505049 res!306287) b!505044))

(assert (= (and b!505044 res!306280) b!505050))

(assert (= (and b!505044 (not res!306291)) b!505052))

(assert (= (and b!505052 c!59660) b!505057))

(assert (= (and b!505052 (not c!59660)) b!505047))

(assert (= (and b!505057 res!306279) b!505055))

(assert (= (and b!505052 (not res!306283)) b!505046))

(assert (= (and b!505046 res!306282) b!505054))

(assert (= (and b!505046 (not res!306290)) b!505051))

(assert (= (and b!505051 (not res!306284)) b!505048))

(declare-fun m!485747 () Bool)

(assert (=> b!505050 m!485747))

(assert (=> b!505050 m!485747))

(declare-fun m!485749 () Bool)

(assert (=> b!505050 m!485749))

(declare-fun m!485751 () Bool)

(assert (=> b!505056 m!485751))

(declare-fun m!485753 () Bool)

(assert (=> b!505042 m!485753))

(declare-fun m!485755 () Bool)

(assert (=> start!45728 m!485755))

(declare-fun m!485757 () Bool)

(assert (=> start!45728 m!485757))

(assert (=> b!505045 m!485747))

(assert (=> b!505045 m!485747))

(declare-fun m!485759 () Bool)

(assert (=> b!505045 m!485759))

(declare-fun m!485761 () Bool)

(assert (=> b!505043 m!485761))

(declare-fun m!485763 () Bool)

(assert (=> b!505052 m!485763))

(declare-fun m!485765 () Bool)

(assert (=> b!505052 m!485765))

(assert (=> b!505052 m!485747))

(declare-fun m!485767 () Bool)

(assert (=> b!505057 m!485767))

(declare-fun m!485769 () Bool)

(assert (=> b!505057 m!485769))

(declare-fun m!485771 () Bool)

(assert (=> b!505048 m!485771))

(declare-fun m!485773 () Bool)

(assert (=> b!505048 m!485773))

(declare-fun m!485775 () Bool)

(assert (=> b!505049 m!485775))

(declare-fun m!485777 () Bool)

(assert (=> b!505044 m!485777))

(declare-fun m!485779 () Bool)

(assert (=> b!505044 m!485779))

(declare-fun m!485781 () Bool)

(assert (=> b!505044 m!485781))

(assert (=> b!505044 m!485747))

(declare-fun m!485783 () Bool)

(assert (=> b!505044 m!485783))

(assert (=> b!505044 m!485747))

(declare-fun m!485785 () Bool)

(assert (=> b!505044 m!485785))

(assert (=> b!505044 m!485747))

(declare-fun m!485787 () Bool)

(assert (=> b!505044 m!485787))

(declare-fun m!485789 () Bool)

(assert (=> b!505044 m!485789))

(declare-fun m!485791 () Bool)

(assert (=> b!505044 m!485791))

(assert (=> b!505051 m!485769))

(declare-fun m!485793 () Bool)

(assert (=> b!505058 m!485793))

(assert (=> b!505054 m!485747))

(assert (=> b!505054 m!485747))

(declare-fun m!485795 () Bool)

(assert (=> b!505054 m!485795))

(push 1)

