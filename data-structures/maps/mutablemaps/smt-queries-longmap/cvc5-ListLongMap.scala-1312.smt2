; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26440 () Bool)

(assert start!26440)

(declare-fun res!138212 () Bool)

(declare-fun e!175591 () Bool)

(assert (=> start!26440 (=> (not res!138212) (not e!175591))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26440 (= res!138212 (validMask!0 mask!3868))))

(assert (=> start!26440 e!175591))

(declare-datatypes ((array!13526 0))(
  ( (array!13527 (arr!6412 (Array (_ BitVec 32) (_ BitVec 64))) (size!6764 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13526)

(declare-fun array_inv!4366 (array!13526) Bool)

(assert (=> start!26440 (array_inv!4366 a!3325)))

(assert (=> start!26440 true))

(declare-fun b!274182 () Bool)

(declare-fun e!175590 () Bool)

(assert (=> b!274182 (= e!175590 true)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lt!136845 () array!13526)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13526 (_ BitVec 32)) Bool)

(assert (=> b!274182 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136845 mask!3868)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((Unit!8628 0))(
  ( (Unit!8629) )
))
(declare-fun lt!136844 () Unit!8628)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13526 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8628)

(assert (=> b!274182 (= lt!136844 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274183 () Bool)

(declare-fun res!138216 () Bool)

(assert (=> b!274183 (=> (not res!138216) (not e!175591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274183 (= res!138216 (validKeyInArray!0 k!2581))))

(declare-fun b!274184 () Bool)

(declare-fun res!138217 () Bool)

(assert (=> b!274184 (=> (not res!138217) (not e!175591))))

(declare-fun arrayContainsKey!0 (array!13526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274184 (= res!138217 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274185 () Bool)

(declare-fun e!175587 () Bool)

(declare-fun e!175589 () Bool)

(assert (=> b!274185 (= e!175587 e!175589)))

(declare-fun res!138219 () Bool)

(assert (=> b!274185 (=> (not res!138219) (not e!175589))))

(assert (=> b!274185 (= res!138219 (not (= startIndex!26 i!1267)))))

(assert (=> b!274185 (= lt!136845 (array!13527 (store (arr!6412 a!3325) i!1267 k!2581) (size!6764 a!3325)))))

(declare-fun b!274186 () Bool)

(assert (=> b!274186 (= e!175591 e!175587)))

(declare-fun res!138210 () Bool)

(assert (=> b!274186 (=> (not res!138210) (not e!175587))))

(declare-datatypes ((SeekEntryResult!1581 0))(
  ( (MissingZero!1581 (index!8494 (_ BitVec 32))) (Found!1581 (index!8495 (_ BitVec 32))) (Intermediate!1581 (undefined!2393 Bool) (index!8496 (_ BitVec 32)) (x!26762 (_ BitVec 32))) (Undefined!1581) (MissingVacant!1581 (index!8497 (_ BitVec 32))) )
))
(declare-fun lt!136847 () SeekEntryResult!1581)

(assert (=> b!274186 (= res!138210 (or (= lt!136847 (MissingZero!1581 i!1267)) (= lt!136847 (MissingVacant!1581 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13526 (_ BitVec 32)) SeekEntryResult!1581)

(assert (=> b!274186 (= lt!136847 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274187 () Bool)

(declare-fun res!138218 () Bool)

(assert (=> b!274187 (=> (not res!138218) (not e!175587))))

(assert (=> b!274187 (= res!138218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274188 () Bool)

(declare-fun res!138211 () Bool)

(assert (=> b!274188 (=> (not res!138211) (not e!175589))))

(assert (=> b!274188 (= res!138211 (validKeyInArray!0 (select (arr!6412 a!3325) startIndex!26)))))

(declare-fun b!274189 () Bool)

(assert (=> b!274189 (= e!175589 (not e!175590))))

(declare-fun res!138214 () Bool)

(assert (=> b!274189 (=> res!138214 e!175590)))

(assert (=> b!274189 (= res!138214 (or (bvsge startIndex!26 (bvsub (size!6764 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274189 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!136843 () Unit!8628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8628)

(assert (=> b!274189 (= lt!136843 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274189 (= (seekEntryOrOpen!0 (select (arr!6412 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6412 a!3325) i!1267 k!2581) startIndex!26) lt!136845 mask!3868))))

(declare-fun lt!136846 () Unit!8628)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13526 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8628)

(assert (=> b!274189 (= lt!136846 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4241 0))(
  ( (Nil!4238) (Cons!4237 (h!4904 (_ BitVec 64)) (t!9331 List!4241)) )
))
(declare-fun arrayNoDuplicates!0 (array!13526 (_ BitVec 32) List!4241) Bool)

(assert (=> b!274189 (arrayNoDuplicates!0 lt!136845 #b00000000000000000000000000000000 Nil!4238)))

(declare-fun lt!136842 () Unit!8628)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13526 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4241) Unit!8628)

(assert (=> b!274189 (= lt!136842 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4238))))

(declare-fun b!274190 () Bool)

(declare-fun res!138213 () Bool)

(assert (=> b!274190 (=> (not res!138213) (not e!175591))))

(assert (=> b!274190 (= res!138213 (and (= (size!6764 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6764 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6764 a!3325))))))

(declare-fun b!274191 () Bool)

(declare-fun res!138215 () Bool)

(assert (=> b!274191 (=> (not res!138215) (not e!175591))))

(assert (=> b!274191 (= res!138215 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4238))))

(assert (= (and start!26440 res!138212) b!274190))

(assert (= (and b!274190 res!138213) b!274183))

(assert (= (and b!274183 res!138216) b!274191))

(assert (= (and b!274191 res!138215) b!274184))

(assert (= (and b!274184 res!138217) b!274186))

(assert (= (and b!274186 res!138210) b!274187))

(assert (= (and b!274187 res!138218) b!274185))

(assert (= (and b!274185 res!138219) b!274188))

(assert (= (and b!274188 res!138211) b!274189))

(assert (= (and b!274189 (not res!138214)) b!274182))

(declare-fun m!289675 () Bool)

(assert (=> b!274185 m!289675))

(declare-fun m!289677 () Bool)

(assert (=> b!274188 m!289677))

(assert (=> b!274188 m!289677))

(declare-fun m!289679 () Bool)

(assert (=> b!274188 m!289679))

(declare-fun m!289681 () Bool)

(assert (=> b!274191 m!289681))

(declare-fun m!289683 () Bool)

(assert (=> start!26440 m!289683))

(declare-fun m!289685 () Bool)

(assert (=> start!26440 m!289685))

(declare-fun m!289687 () Bool)

(assert (=> b!274183 m!289687))

(declare-fun m!289689 () Bool)

(assert (=> b!274184 m!289689))

(declare-fun m!289691 () Bool)

(assert (=> b!274182 m!289691))

(declare-fun m!289693 () Bool)

(assert (=> b!274182 m!289693))

(declare-fun m!289695 () Bool)

(assert (=> b!274186 m!289695))

(declare-fun m!289697 () Bool)

(assert (=> b!274189 m!289697))

(declare-fun m!289699 () Bool)

(assert (=> b!274189 m!289699))

(assert (=> b!274189 m!289675))

(declare-fun m!289701 () Bool)

(assert (=> b!274189 m!289701))

(assert (=> b!274189 m!289677))

(declare-fun m!289703 () Bool)

(assert (=> b!274189 m!289703))

(assert (=> b!274189 m!289699))

(declare-fun m!289705 () Bool)

(assert (=> b!274189 m!289705))

(declare-fun m!289707 () Bool)

(assert (=> b!274189 m!289707))

(declare-fun m!289709 () Bool)

(assert (=> b!274189 m!289709))

(assert (=> b!274189 m!289677))

(declare-fun m!289711 () Bool)

(assert (=> b!274189 m!289711))

(declare-fun m!289713 () Bool)

(assert (=> b!274187 m!289713))

(push 1)

