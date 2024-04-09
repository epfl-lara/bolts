; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51424 () Bool)

(assert start!51424)

(declare-fun b!561413 () Bool)

(declare-fun res!352726 () Bool)

(declare-fun e!323523 () Bool)

(assert (=> b!561413 (=> (not res!352726) (not e!323523))))

(declare-datatypes ((array!35243 0))(
  ( (array!35244 (arr!16918 (Array (_ BitVec 32) (_ BitVec 64))) (size!17282 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35243)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35243 (_ BitVec 32)) Bool)

(assert (=> b!561413 (= res!352726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561414 () Bool)

(declare-fun e!323517 () Bool)

(declare-fun e!323524 () Bool)

(assert (=> b!561414 (= e!323517 e!323524)))

(declare-fun res!352716 () Bool)

(assert (=> b!561414 (=> (not res!352716) (not e!323524))))

(declare-datatypes ((SeekEntryResult!5374 0))(
  ( (MissingZero!5374 (index!23723 (_ BitVec 32))) (Found!5374 (index!23724 (_ BitVec 32))) (Intermediate!5374 (undefined!6186 Bool) (index!23725 (_ BitVec 32)) (x!52656 (_ BitVec 32))) (Undefined!5374) (MissingVacant!5374 (index!23726 (_ BitVec 32))) )
))
(declare-fun lt!255588 () SeekEntryResult!5374)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255590 () SeekEntryResult!5374)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35243 (_ BitVec 32)) SeekEntryResult!5374)

(assert (=> b!561414 (= res!352716 (= lt!255588 (seekKeyOrZeroReturnVacant!0 (x!52656 lt!255590) (index!23725 lt!255590) (index!23725 lt!255590) (select (arr!16918 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!352724 () Bool)

(declare-fun e!323519 () Bool)

(assert (=> start!51424 (=> (not res!352724) (not e!323519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51424 (= res!352724 (validMask!0 mask!3119))))

(assert (=> start!51424 e!323519))

(assert (=> start!51424 true))

(declare-fun array_inv!12692 (array!35243) Bool)

(assert (=> start!51424 (array_inv!12692 a!3118)))

(declare-fun lt!255592 () (_ BitVec 64))

(declare-fun lt!255589 () array!35243)

(declare-fun b!561415 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35243 (_ BitVec 32)) SeekEntryResult!5374)

(assert (=> b!561415 (= e!323524 (= (seekEntryOrOpen!0 lt!255592 lt!255589 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52656 lt!255590) (index!23725 lt!255590) (index!23725 lt!255590) lt!255592 lt!255589 mask!3119)))))

(declare-fun b!561416 () Bool)

(declare-fun res!352725 () Bool)

(assert (=> b!561416 (=> (not res!352725) (not e!323523))))

(declare-datatypes ((List!11051 0))(
  ( (Nil!11048) (Cons!11047 (h!12050 (_ BitVec 64)) (t!17287 List!11051)) )
))
(declare-fun arrayNoDuplicates!0 (array!35243 (_ BitVec 32) List!11051) Bool)

(assert (=> b!561416 (= res!352725 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11048))))

(declare-fun b!561417 () Bool)

(declare-fun res!352717 () Bool)

(assert (=> b!561417 (=> (not res!352717) (not e!323519))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561417 (= res!352717 (and (= (size!17282 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17282 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17282 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561418 () Bool)

(assert (=> b!561418 (= e!323519 e!323523)))

(declare-fun res!352719 () Bool)

(assert (=> b!561418 (=> (not res!352719) (not e!323523))))

(declare-fun lt!255593 () SeekEntryResult!5374)

(assert (=> b!561418 (= res!352719 (or (= lt!255593 (MissingZero!5374 i!1132)) (= lt!255593 (MissingVacant!5374 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!561418 (= lt!255593 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!561419 () Bool)

(declare-fun e!323520 () Bool)

(assert (=> b!561419 (= e!323520 (not true))))

(declare-fun e!323522 () Bool)

(assert (=> b!561419 e!323522))

(declare-fun res!352720 () Bool)

(assert (=> b!561419 (=> (not res!352720) (not e!323522))))

(assert (=> b!561419 (= res!352720 (= lt!255588 (Found!5374 j!142)))))

(assert (=> b!561419 (= lt!255588 (seekEntryOrOpen!0 (select (arr!16918 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561419 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17522 0))(
  ( (Unit!17523) )
))
(declare-fun lt!255591 () Unit!17522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35243 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17522)

(assert (=> b!561419 (= lt!255591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561420 () Bool)

(declare-fun res!352727 () Bool)

(assert (=> b!561420 (=> (not res!352727) (not e!323519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561420 (= res!352727 (validKeyInArray!0 k0!1914))))

(declare-fun b!561421 () Bool)

(declare-fun e!323521 () Bool)

(assert (=> b!561421 (= e!323521 e!323517)))

(declare-fun res!352715 () Bool)

(assert (=> b!561421 (=> res!352715 e!323517)))

(declare-fun lt!255596 () (_ BitVec 64))

(assert (=> b!561421 (= res!352715 (or (= lt!255596 (select (arr!16918 a!3118) j!142)) (= lt!255596 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561421 (= lt!255596 (select (arr!16918 a!3118) (index!23725 lt!255590)))))

(declare-fun b!561422 () Bool)

(declare-fun res!352722 () Bool)

(assert (=> b!561422 (=> (not res!352722) (not e!323519))))

(declare-fun arrayContainsKey!0 (array!35243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561422 (= res!352722 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561423 () Bool)

(assert (=> b!561423 (= e!323522 e!323521)))

(declare-fun res!352721 () Bool)

(assert (=> b!561423 (=> res!352721 e!323521)))

(get-info :version)

(assert (=> b!561423 (= res!352721 (or (undefined!6186 lt!255590) (not ((_ is Intermediate!5374) lt!255590))))))

(declare-fun b!561424 () Bool)

(assert (=> b!561424 (= e!323523 e!323520)))

(declare-fun res!352718 () Bool)

(assert (=> b!561424 (=> (not res!352718) (not e!323520))))

(declare-fun lt!255594 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35243 (_ BitVec 32)) SeekEntryResult!5374)

(assert (=> b!561424 (= res!352718 (= lt!255590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255594 lt!255592 lt!255589 mask!3119)))))

(declare-fun lt!255595 () (_ BitVec 32))

(assert (=> b!561424 (= lt!255590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255595 (select (arr!16918 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561424 (= lt!255594 (toIndex!0 lt!255592 mask!3119))))

(assert (=> b!561424 (= lt!255592 (select (store (arr!16918 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561424 (= lt!255595 (toIndex!0 (select (arr!16918 a!3118) j!142) mask!3119))))

(assert (=> b!561424 (= lt!255589 (array!35244 (store (arr!16918 a!3118) i!1132 k0!1914) (size!17282 a!3118)))))

(declare-fun b!561425 () Bool)

(declare-fun res!352723 () Bool)

(assert (=> b!561425 (=> (not res!352723) (not e!323519))))

(assert (=> b!561425 (= res!352723 (validKeyInArray!0 (select (arr!16918 a!3118) j!142)))))

(assert (= (and start!51424 res!352724) b!561417))

(assert (= (and b!561417 res!352717) b!561425))

(assert (= (and b!561425 res!352723) b!561420))

(assert (= (and b!561420 res!352727) b!561422))

(assert (= (and b!561422 res!352722) b!561418))

(assert (= (and b!561418 res!352719) b!561413))

(assert (= (and b!561413 res!352726) b!561416))

(assert (= (and b!561416 res!352725) b!561424))

(assert (= (and b!561424 res!352718) b!561419))

(assert (= (and b!561419 res!352720) b!561423))

(assert (= (and b!561423 (not res!352721)) b!561421))

(assert (= (and b!561421 (not res!352715)) b!561414))

(assert (= (and b!561414 res!352716) b!561415))

(declare-fun m!539367 () Bool)

(assert (=> b!561424 m!539367))

(declare-fun m!539369 () Bool)

(assert (=> b!561424 m!539369))

(assert (=> b!561424 m!539367))

(declare-fun m!539371 () Bool)

(assert (=> b!561424 m!539371))

(declare-fun m!539373 () Bool)

(assert (=> b!561424 m!539373))

(declare-fun m!539375 () Bool)

(assert (=> b!561424 m!539375))

(assert (=> b!561424 m!539367))

(declare-fun m!539377 () Bool)

(assert (=> b!561424 m!539377))

(declare-fun m!539379 () Bool)

(assert (=> b!561424 m!539379))

(assert (=> b!561421 m!539367))

(declare-fun m!539381 () Bool)

(assert (=> b!561421 m!539381))

(declare-fun m!539383 () Bool)

(assert (=> b!561416 m!539383))

(assert (=> b!561414 m!539367))

(assert (=> b!561414 m!539367))

(declare-fun m!539385 () Bool)

(assert (=> b!561414 m!539385))

(declare-fun m!539387 () Bool)

(assert (=> b!561422 m!539387))

(assert (=> b!561425 m!539367))

(assert (=> b!561425 m!539367))

(declare-fun m!539389 () Bool)

(assert (=> b!561425 m!539389))

(declare-fun m!539391 () Bool)

(assert (=> b!561418 m!539391))

(declare-fun m!539393 () Bool)

(assert (=> b!561415 m!539393))

(declare-fun m!539395 () Bool)

(assert (=> b!561415 m!539395))

(assert (=> b!561419 m!539367))

(assert (=> b!561419 m!539367))

(declare-fun m!539397 () Bool)

(assert (=> b!561419 m!539397))

(declare-fun m!539399 () Bool)

(assert (=> b!561419 m!539399))

(declare-fun m!539401 () Bool)

(assert (=> b!561419 m!539401))

(declare-fun m!539403 () Bool)

(assert (=> start!51424 m!539403))

(declare-fun m!539405 () Bool)

(assert (=> start!51424 m!539405))

(declare-fun m!539407 () Bool)

(assert (=> b!561420 m!539407))

(declare-fun m!539409 () Bool)

(assert (=> b!561413 m!539409))

(check-sat (not b!561414) (not b!561413) (not b!561415) (not b!561418) (not b!561419) (not b!561420) (not b!561425) (not start!51424) (not b!561424) (not b!561416) (not b!561422))
(check-sat)
