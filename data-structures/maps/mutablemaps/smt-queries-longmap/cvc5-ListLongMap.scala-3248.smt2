; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45370 () Bool)

(assert start!45370)

(declare-fun b!497868 () Bool)

(declare-fun res!300164 () Bool)

(declare-fun e!291830 () Bool)

(assert (=> b!497868 (=> (not res!300164) (not e!291830))))

(declare-datatypes ((array!32155 0))(
  ( (array!32156 (arr!15456 (Array (_ BitVec 32) (_ BitVec 64))) (size!15820 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32155)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497868 (= res!300164 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497869 () Bool)

(declare-datatypes ((Unit!14810 0))(
  ( (Unit!14811) )
))
(declare-fun e!291833 () Unit!14810)

(declare-fun Unit!14812 () Unit!14810)

(assert (=> b!497869 (= e!291833 Unit!14812)))

(declare-fun b!497870 () Bool)

(declare-fun e!291828 () Bool)

(declare-fun e!291835 () Bool)

(assert (=> b!497870 (= e!291828 (not e!291835))))

(declare-fun res!300166 () Bool)

(assert (=> b!497870 (=> res!300166 e!291835)))

(declare-datatypes ((SeekEntryResult!3930 0))(
  ( (MissingZero!3930 (index!17902 (_ BitVec 32))) (Found!3930 (index!17903 (_ BitVec 32))) (Intermediate!3930 (undefined!4742 Bool) (index!17904 (_ BitVec 32)) (x!46986 (_ BitVec 32))) (Undefined!3930) (MissingVacant!3930 (index!17905 (_ BitVec 32))) )
))
(declare-fun lt!225500 () SeekEntryResult!3930)

(declare-fun lt!225492 () array!32155)

(declare-fun lt!225493 () (_ BitVec 64))

(declare-fun lt!225495 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32155 (_ BitVec 32)) SeekEntryResult!3930)

(assert (=> b!497870 (= res!300166 (= lt!225500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225495 lt!225493 lt!225492 mask!3524)))))

(declare-fun lt!225491 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!497870 (= lt!225500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225491 (select (arr!15456 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497870 (= lt!225495 (toIndex!0 lt!225493 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497870 (= lt!225493 (select (store (arr!15456 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!497870 (= lt!225491 (toIndex!0 (select (arr!15456 a!3235) j!176) mask!3524))))

(assert (=> b!497870 (= lt!225492 (array!32156 (store (arr!15456 a!3235) i!1204 k!2280) (size!15820 a!3235)))))

(declare-fun e!291834 () Bool)

(assert (=> b!497870 e!291834))

(declare-fun res!300167 () Bool)

(assert (=> b!497870 (=> (not res!300167) (not e!291834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32155 (_ BitVec 32)) Bool)

(assert (=> b!497870 (= res!300167 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225497 () Unit!14810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14810)

(assert (=> b!497870 (= lt!225497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497871 () Bool)

(declare-fun res!300175 () Bool)

(assert (=> b!497871 (=> (not res!300175) (not e!291828))))

(declare-datatypes ((List!9667 0))(
  ( (Nil!9664) (Cons!9663 (h!10537 (_ BitVec 64)) (t!15903 List!9667)) )
))
(declare-fun arrayNoDuplicates!0 (array!32155 (_ BitVec 32) List!9667) Bool)

(assert (=> b!497871 (= res!300175 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9664))))

(declare-fun b!497873 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32155 (_ BitVec 32)) SeekEntryResult!3930)

(assert (=> b!497873 (= e!291834 (= (seekEntryOrOpen!0 (select (arr!15456 a!3235) j!176) a!3235 mask!3524) (Found!3930 j!176)))))

(declare-fun b!497874 () Bool)

(declare-fun res!300170 () Bool)

(assert (=> b!497874 (=> (not res!300170) (not e!291830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497874 (= res!300170 (validKeyInArray!0 k!2280))))

(declare-fun b!497875 () Bool)

(assert (=> b!497875 (= e!291830 e!291828)))

(declare-fun res!300169 () Bool)

(assert (=> b!497875 (=> (not res!300169) (not e!291828))))

(declare-fun lt!225496 () SeekEntryResult!3930)

(assert (=> b!497875 (= res!300169 (or (= lt!225496 (MissingZero!3930 i!1204)) (= lt!225496 (MissingVacant!3930 i!1204))))))

(assert (=> b!497875 (= lt!225496 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497876 () Bool)

(declare-fun e!291832 () Bool)

(assert (=> b!497876 (= e!291832 false)))

(declare-fun b!497877 () Bool)

(declare-fun e!291829 () Bool)

(assert (=> b!497877 (= e!291829 true)))

(declare-fun lt!225499 () SeekEntryResult!3930)

(assert (=> b!497877 (= lt!225499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225491 lt!225493 lt!225492 mask!3524))))

(declare-fun b!497878 () Bool)

(assert (=> b!497878 (= e!291835 e!291829)))

(declare-fun res!300168 () Bool)

(assert (=> b!497878 (=> res!300168 e!291829)))

(assert (=> b!497878 (= res!300168 (or (bvsgt #b00000000000000000000000000000000 (x!46986 lt!225500)) (bvsgt (x!46986 lt!225500) #b01111111111111111111111111111110) (bvslt lt!225491 #b00000000000000000000000000000000) (bvsge lt!225491 (size!15820 a!3235)) (bvslt (index!17904 lt!225500) #b00000000000000000000000000000000) (bvsge (index!17904 lt!225500) (size!15820 a!3235)) (not (= lt!225500 (Intermediate!3930 false (index!17904 lt!225500) (x!46986 lt!225500))))))))

(assert (=> b!497878 (and (or (= (select (arr!15456 a!3235) (index!17904 lt!225500)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15456 a!3235) (index!17904 lt!225500)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15456 a!3235) (index!17904 lt!225500)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15456 a!3235) (index!17904 lt!225500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225494 () Unit!14810)

(assert (=> b!497878 (= lt!225494 e!291833)))

(declare-fun c!59129 () Bool)

(assert (=> b!497878 (= c!59129 (= (select (arr!15456 a!3235) (index!17904 lt!225500)) (select (arr!15456 a!3235) j!176)))))

(assert (=> b!497878 (and (bvslt (x!46986 lt!225500) #b01111111111111111111111111111110) (or (= (select (arr!15456 a!3235) (index!17904 lt!225500)) (select (arr!15456 a!3235) j!176)) (= (select (arr!15456 a!3235) (index!17904 lt!225500)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15456 a!3235) (index!17904 lt!225500)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497879 () Bool)

(declare-fun res!300171 () Bool)

(assert (=> b!497879 (=> (not res!300171) (not e!291830))))

(assert (=> b!497879 (= res!300171 (validKeyInArray!0 (select (arr!15456 a!3235) j!176)))))

(declare-fun b!497880 () Bool)

(declare-fun res!300172 () Bool)

(assert (=> b!497880 (=> res!300172 e!291835)))

(assert (=> b!497880 (= res!300172 (or (undefined!4742 lt!225500) (not (is-Intermediate!3930 lt!225500))))))

(declare-fun b!497881 () Bool)

(declare-fun res!300176 () Bool)

(assert (=> b!497881 (=> (not res!300176) (not e!291828))))

(assert (=> b!497881 (= res!300176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497882 () Bool)

(declare-fun res!300173 () Bool)

(assert (=> b!497882 (=> (not res!300173) (not e!291830))))

(assert (=> b!497882 (= res!300173 (and (= (size!15820 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15820 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15820 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497872 () Bool)

(declare-fun Unit!14813 () Unit!14810)

(assert (=> b!497872 (= e!291833 Unit!14813)))

(declare-fun lt!225498 () Unit!14810)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32155 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14810)

(assert (=> b!497872 (= lt!225498 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225491 #b00000000000000000000000000000000 (index!17904 lt!225500) (x!46986 lt!225500) mask!3524))))

(declare-fun res!300165 () Bool)

(assert (=> b!497872 (= res!300165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225491 lt!225493 lt!225492 mask!3524) (Intermediate!3930 false (index!17904 lt!225500) (x!46986 lt!225500))))))

(assert (=> b!497872 (=> (not res!300165) (not e!291832))))

(assert (=> b!497872 e!291832))

(declare-fun res!300174 () Bool)

(assert (=> start!45370 (=> (not res!300174) (not e!291830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45370 (= res!300174 (validMask!0 mask!3524))))

(assert (=> start!45370 e!291830))

(assert (=> start!45370 true))

(declare-fun array_inv!11230 (array!32155) Bool)

(assert (=> start!45370 (array_inv!11230 a!3235)))

(assert (= (and start!45370 res!300174) b!497882))

(assert (= (and b!497882 res!300173) b!497879))

(assert (= (and b!497879 res!300171) b!497874))

(assert (= (and b!497874 res!300170) b!497868))

(assert (= (and b!497868 res!300164) b!497875))

(assert (= (and b!497875 res!300169) b!497881))

(assert (= (and b!497881 res!300176) b!497871))

(assert (= (and b!497871 res!300175) b!497870))

(assert (= (and b!497870 res!300167) b!497873))

(assert (= (and b!497870 (not res!300166)) b!497880))

(assert (= (and b!497880 (not res!300172)) b!497878))

(assert (= (and b!497878 c!59129) b!497872))

(assert (= (and b!497878 (not c!59129)) b!497869))

(assert (= (and b!497872 res!300165) b!497876))

(assert (= (and b!497878 (not res!300168)) b!497877))

(declare-fun m!479197 () Bool)

(assert (=> start!45370 m!479197))

(declare-fun m!479199 () Bool)

(assert (=> start!45370 m!479199))

(declare-fun m!479201 () Bool)

(assert (=> b!497871 m!479201))

(declare-fun m!479203 () Bool)

(assert (=> b!497878 m!479203))

(declare-fun m!479205 () Bool)

(assert (=> b!497878 m!479205))

(declare-fun m!479207 () Bool)

(assert (=> b!497874 m!479207))

(declare-fun m!479209 () Bool)

(assert (=> b!497870 m!479209))

(declare-fun m!479211 () Bool)

(assert (=> b!497870 m!479211))

(declare-fun m!479213 () Bool)

(assert (=> b!497870 m!479213))

(assert (=> b!497870 m!479205))

(declare-fun m!479215 () Bool)

(assert (=> b!497870 m!479215))

(assert (=> b!497870 m!479205))

(declare-fun m!479217 () Bool)

(assert (=> b!497870 m!479217))

(assert (=> b!497870 m!479205))

(declare-fun m!479219 () Bool)

(assert (=> b!497870 m!479219))

(declare-fun m!479221 () Bool)

(assert (=> b!497870 m!479221))

(declare-fun m!479223 () Bool)

(assert (=> b!497870 m!479223))

(declare-fun m!479225 () Bool)

(assert (=> b!497875 m!479225))

(declare-fun m!479227 () Bool)

(assert (=> b!497877 m!479227))

(assert (=> b!497873 m!479205))

(assert (=> b!497873 m!479205))

(declare-fun m!479229 () Bool)

(assert (=> b!497873 m!479229))

(declare-fun m!479231 () Bool)

(assert (=> b!497868 m!479231))

(declare-fun m!479233 () Bool)

(assert (=> b!497872 m!479233))

(assert (=> b!497872 m!479227))

(declare-fun m!479235 () Bool)

(assert (=> b!497881 m!479235))

(assert (=> b!497879 m!479205))

(assert (=> b!497879 m!479205))

(declare-fun m!479237 () Bool)

(assert (=> b!497879 m!479237))

(push 1)

