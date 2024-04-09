; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48036 () Bool)

(assert start!48036)

(declare-fun b!528832 () Bool)

(declare-fun res!324902 () Bool)

(declare-fun e!308172 () Bool)

(assert (=> b!528832 (=> (not res!324902) (not e!308172))))

(declare-datatypes ((array!33489 0))(
  ( (array!33490 (arr!16090 (Array (_ BitVec 32) (_ BitVec 64))) (size!16454 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33489)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528832 (= res!324902 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!308168 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!528833 () Bool)

(declare-datatypes ((SeekEntryResult!4564 0))(
  ( (MissingZero!4564 (index!20480 (_ BitVec 32))) (Found!4564 (index!20481 (_ BitVec 32))) (Intermediate!4564 (undefined!5376 Bool) (index!20482 (_ BitVec 32)) (x!49479 (_ BitVec 32))) (Undefined!4564) (MissingVacant!4564 (index!20483 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33489 (_ BitVec 32)) SeekEntryResult!4564)

(assert (=> b!528833 (= e!308168 (= (seekEntryOrOpen!0 (select (arr!16090 a!3235) j!176) a!3235 mask!3524) (Found!4564 j!176)))))

(declare-fun b!528834 () Bool)

(declare-fun lt!243766 () SeekEntryResult!4564)

(declare-fun e!308169 () Bool)

(declare-fun lt!243762 () SeekEntryResult!4564)

(declare-fun lt!243763 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33489 (_ BitVec 32)) SeekEntryResult!4564)

(assert (=> b!528834 (= e!308169 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243763 (index!20482 lt!243762) (select (arr!16090 a!3235) j!176) a!3235 mask!3524) lt!243766)))))

(declare-fun b!528836 () Bool)

(declare-datatypes ((Unit!16722 0))(
  ( (Unit!16723) )
))
(declare-fun e!308174 () Unit!16722)

(declare-fun Unit!16724 () Unit!16722)

(assert (=> b!528836 (= e!308174 Unit!16724)))

(declare-fun b!528837 () Bool)

(declare-fun Unit!16725 () Unit!16722)

(assert (=> b!528837 (= e!308174 Unit!16725)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!243758 () Unit!16722)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33489 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16722)

(assert (=> b!528837 (= lt!243758 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243763 #b00000000000000000000000000000000 (index!20482 lt!243762) (x!49479 lt!243762) mask!3524))))

(declare-fun res!324897 () Bool)

(declare-fun lt!243764 () (_ BitVec 64))

(declare-fun lt!243767 () array!33489)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33489 (_ BitVec 32)) SeekEntryResult!4564)

(assert (=> b!528837 (= res!324897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243763 lt!243764 lt!243767 mask!3524) (Intermediate!4564 false (index!20482 lt!243762) (x!49479 lt!243762))))))

(declare-fun e!308175 () Bool)

(assert (=> b!528837 (=> (not res!324897) (not e!308175))))

(assert (=> b!528837 e!308175))

(declare-fun b!528838 () Bool)

(declare-fun e!308171 () Bool)

(assert (=> b!528838 (= e!308171 true)))

(assert (=> b!528838 (= (seekEntryOrOpen!0 lt!243764 lt!243767 mask!3524) lt!243766)))

(declare-fun lt!243760 () Unit!16722)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33489 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16722)

(assert (=> b!528838 (= lt!243760 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!243763 #b00000000000000000000000000000000 (index!20482 lt!243762) (x!49479 lt!243762) mask!3524))))

(declare-fun b!528839 () Bool)

(declare-fun res!324905 () Bool)

(assert (=> b!528839 (=> (not res!324905) (not e!308172))))

(assert (=> b!528839 (= res!324905 (and (= (size!16454 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16454 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16454 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528840 () Bool)

(declare-fun res!324907 () Bool)

(declare-fun e!308176 () Bool)

(assert (=> b!528840 (=> (not res!324907) (not e!308176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33489 (_ BitVec 32)) Bool)

(assert (=> b!528840 (= res!324907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528841 () Bool)

(declare-fun res!324910 () Bool)

(assert (=> b!528841 (=> res!324910 e!308171)))

(declare-fun lt!243761 () SeekEntryResult!4564)

(assert (=> b!528841 (= res!324910 (not (= lt!243761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243763 lt!243764 lt!243767 mask!3524))))))

(declare-fun res!324899 () Bool)

(assert (=> start!48036 (=> (not res!324899) (not e!308172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48036 (= res!324899 (validMask!0 mask!3524))))

(assert (=> start!48036 e!308172))

(assert (=> start!48036 true))

(declare-fun array_inv!11864 (array!33489) Bool)

(assert (=> start!48036 (array_inv!11864 a!3235)))

(declare-fun b!528835 () Bool)

(declare-fun res!324901 () Bool)

(assert (=> b!528835 (=> res!324901 e!308171)))

(assert (=> b!528835 (= res!324901 e!308169)))

(declare-fun res!324898 () Bool)

(assert (=> b!528835 (=> (not res!324898) (not e!308169))))

(assert (=> b!528835 (= res!324898 (bvsgt #b00000000000000000000000000000000 (x!49479 lt!243762)))))

(declare-fun b!528842 () Bool)

(assert (=> b!528842 (= e!308175 false)))

(declare-fun b!528843 () Bool)

(declare-fun e!308173 () Bool)

(assert (=> b!528843 (= e!308176 (not e!308173))))

(declare-fun res!324911 () Bool)

(assert (=> b!528843 (=> res!324911 e!308173)))

(get-info :version)

(assert (=> b!528843 (= res!324911 (or (= lt!243762 lt!243761) (undefined!5376 lt!243762) (not ((_ is Intermediate!4564) lt!243762))))))

(declare-fun lt!243765 () (_ BitVec 32))

(assert (=> b!528843 (= lt!243761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243765 lt!243764 lt!243767 mask!3524))))

(assert (=> b!528843 (= lt!243762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243763 (select (arr!16090 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528843 (= lt!243765 (toIndex!0 lt!243764 mask!3524))))

(assert (=> b!528843 (= lt!243764 (select (store (arr!16090 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!528843 (= lt!243763 (toIndex!0 (select (arr!16090 a!3235) j!176) mask!3524))))

(assert (=> b!528843 (= lt!243767 (array!33490 (store (arr!16090 a!3235) i!1204 k0!2280) (size!16454 a!3235)))))

(assert (=> b!528843 (= lt!243766 (Found!4564 j!176))))

(assert (=> b!528843 e!308168))

(declare-fun res!324908 () Bool)

(assert (=> b!528843 (=> (not res!324908) (not e!308168))))

(assert (=> b!528843 (= res!324908 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243757 () Unit!16722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33489 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16722)

(assert (=> b!528843 (= lt!243757 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528844 () Bool)

(assert (=> b!528844 (= e!308172 e!308176)))

(declare-fun res!324904 () Bool)

(assert (=> b!528844 (=> (not res!324904) (not e!308176))))

(declare-fun lt!243759 () SeekEntryResult!4564)

(assert (=> b!528844 (= res!324904 (or (= lt!243759 (MissingZero!4564 i!1204)) (= lt!243759 (MissingVacant!4564 i!1204))))))

(assert (=> b!528844 (= lt!243759 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!528845 () Bool)

(assert (=> b!528845 (= e!308173 e!308171)))

(declare-fun res!324909 () Bool)

(assert (=> b!528845 (=> res!324909 e!308171)))

(assert (=> b!528845 (= res!324909 (or (bvsgt (x!49479 lt!243762) #b01111111111111111111111111111110) (bvslt lt!243763 #b00000000000000000000000000000000) (bvsge lt!243763 (size!16454 a!3235)) (bvslt (index!20482 lt!243762) #b00000000000000000000000000000000) (bvsge (index!20482 lt!243762) (size!16454 a!3235)) (not (= lt!243762 (Intermediate!4564 false (index!20482 lt!243762) (x!49479 lt!243762))))))))

(assert (=> b!528845 (= (index!20482 lt!243762) i!1204)))

(declare-fun lt!243755 () Unit!16722)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33489 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16722)

(assert (=> b!528845 (= lt!243755 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243763 #b00000000000000000000000000000000 (index!20482 lt!243762) (x!49479 lt!243762) mask!3524))))

(assert (=> b!528845 (and (or (= (select (arr!16090 a!3235) (index!20482 lt!243762)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16090 a!3235) (index!20482 lt!243762)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16090 a!3235) (index!20482 lt!243762)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16090 a!3235) (index!20482 lt!243762)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243756 () Unit!16722)

(assert (=> b!528845 (= lt!243756 e!308174)))

(declare-fun c!62276 () Bool)

(assert (=> b!528845 (= c!62276 (= (select (arr!16090 a!3235) (index!20482 lt!243762)) (select (arr!16090 a!3235) j!176)))))

(assert (=> b!528845 (and (bvslt (x!49479 lt!243762) #b01111111111111111111111111111110) (or (= (select (arr!16090 a!3235) (index!20482 lt!243762)) (select (arr!16090 a!3235) j!176)) (= (select (arr!16090 a!3235) (index!20482 lt!243762)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16090 a!3235) (index!20482 lt!243762)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528846 () Bool)

(declare-fun res!324900 () Bool)

(assert (=> b!528846 (=> (not res!324900) (not e!308176))))

(declare-datatypes ((List!10301 0))(
  ( (Nil!10298) (Cons!10297 (h!11234 (_ BitVec 64)) (t!16537 List!10301)) )
))
(declare-fun arrayNoDuplicates!0 (array!33489 (_ BitVec 32) List!10301) Bool)

(assert (=> b!528846 (= res!324900 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10298))))

(declare-fun b!528847 () Bool)

(declare-fun res!324906 () Bool)

(assert (=> b!528847 (=> (not res!324906) (not e!308172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528847 (= res!324906 (validKeyInArray!0 (select (arr!16090 a!3235) j!176)))))

(declare-fun b!528848 () Bool)

(declare-fun res!324903 () Bool)

(assert (=> b!528848 (=> (not res!324903) (not e!308172))))

(assert (=> b!528848 (= res!324903 (validKeyInArray!0 k0!2280))))

(assert (= (and start!48036 res!324899) b!528839))

(assert (= (and b!528839 res!324905) b!528847))

(assert (= (and b!528847 res!324906) b!528848))

(assert (= (and b!528848 res!324903) b!528832))

(assert (= (and b!528832 res!324902) b!528844))

(assert (= (and b!528844 res!324904) b!528840))

(assert (= (and b!528840 res!324907) b!528846))

(assert (= (and b!528846 res!324900) b!528843))

(assert (= (and b!528843 res!324908) b!528833))

(assert (= (and b!528843 (not res!324911)) b!528845))

(assert (= (and b!528845 c!62276) b!528837))

(assert (= (and b!528845 (not c!62276)) b!528836))

(assert (= (and b!528837 res!324897) b!528842))

(assert (= (and b!528845 (not res!324909)) b!528835))

(assert (= (and b!528835 res!324898) b!528834))

(assert (= (and b!528835 (not res!324901)) b!528841))

(assert (= (and b!528841 (not res!324910)) b!528838))

(declare-fun m!509397 () Bool)

(assert (=> b!528832 m!509397))

(declare-fun m!509399 () Bool)

(assert (=> b!528840 m!509399))

(declare-fun m!509401 () Bool)

(assert (=> b!528833 m!509401))

(assert (=> b!528833 m!509401))

(declare-fun m!509403 () Bool)

(assert (=> b!528833 m!509403))

(declare-fun m!509405 () Bool)

(assert (=> b!528846 m!509405))

(declare-fun m!509407 () Bool)

(assert (=> b!528844 m!509407))

(declare-fun m!509409 () Bool)

(assert (=> b!528841 m!509409))

(declare-fun m!509411 () Bool)

(assert (=> b!528845 m!509411))

(declare-fun m!509413 () Bool)

(assert (=> b!528845 m!509413))

(assert (=> b!528845 m!509401))

(declare-fun m!509415 () Bool)

(assert (=> b!528848 m!509415))

(declare-fun m!509417 () Bool)

(assert (=> start!48036 m!509417))

(declare-fun m!509419 () Bool)

(assert (=> start!48036 m!509419))

(declare-fun m!509421 () Bool)

(assert (=> b!528837 m!509421))

(assert (=> b!528837 m!509409))

(assert (=> b!528834 m!509401))

(assert (=> b!528834 m!509401))

(declare-fun m!509423 () Bool)

(assert (=> b!528834 m!509423))

(assert (=> b!528847 m!509401))

(assert (=> b!528847 m!509401))

(declare-fun m!509425 () Bool)

(assert (=> b!528847 m!509425))

(declare-fun m!509427 () Bool)

(assert (=> b!528838 m!509427))

(declare-fun m!509429 () Bool)

(assert (=> b!528838 m!509429))

(declare-fun m!509431 () Bool)

(assert (=> b!528843 m!509431))

(declare-fun m!509433 () Bool)

(assert (=> b!528843 m!509433))

(declare-fun m!509435 () Bool)

(assert (=> b!528843 m!509435))

(declare-fun m!509437 () Bool)

(assert (=> b!528843 m!509437))

(assert (=> b!528843 m!509401))

(declare-fun m!509439 () Bool)

(assert (=> b!528843 m!509439))

(assert (=> b!528843 m!509401))

(declare-fun m!509441 () Bool)

(assert (=> b!528843 m!509441))

(declare-fun m!509443 () Bool)

(assert (=> b!528843 m!509443))

(assert (=> b!528843 m!509401))

(declare-fun m!509445 () Bool)

(assert (=> b!528843 m!509445))

(check-sat (not b!528841) (not start!48036) (not b!528844) (not b!528837) (not b!528838) (not b!528847) (not b!528846) (not b!528848) (not b!528845) (not b!528843) (not b!528834) (not b!528833) (not b!528840) (not b!528832))
(check-sat)
