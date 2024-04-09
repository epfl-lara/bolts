; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46032 () Bool)

(assert start!46032)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297883 () Bool)

(declare-fun b!509400 () Bool)

(declare-datatypes ((array!32703 0))(
  ( (array!32704 (arr!15727 (Array (_ BitVec 32) (_ BitVec 64))) (size!16091 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32703)

(declare-datatypes ((SeekEntryResult!4201 0))(
  ( (MissingZero!4201 (index!18992 (_ BitVec 32))) (Found!4201 (index!18993 (_ BitVec 32))) (Intermediate!4201 (undefined!5013 Bool) (index!18994 (_ BitVec 32)) (x!47989 (_ BitVec 32))) (Undefined!4201) (MissingVacant!4201 (index!18995 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32703 (_ BitVec 32)) SeekEntryResult!4201)

(assert (=> b!509400 (= e!297883 (= (seekEntryOrOpen!0 (select (arr!15727 a!3235) j!176) a!3235 mask!3524) (Found!4201 j!176)))))

(declare-fun b!509402 () Bool)

(declare-fun res!310401 () Bool)

(declare-fun e!297884 () Bool)

(assert (=> b!509402 (=> (not res!310401) (not e!297884))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509402 (= res!310401 (validKeyInArray!0 k0!2280))))

(declare-fun b!509403 () Bool)

(declare-fun res!310402 () Bool)

(assert (=> b!509403 (=> (not res!310402) (not e!297884))))

(assert (=> b!509403 (= res!310402 (validKeyInArray!0 (select (arr!15727 a!3235) j!176)))))

(declare-fun b!509404 () Bool)

(declare-fun res!310397 () Bool)

(declare-fun e!297885 () Bool)

(assert (=> b!509404 (=> (not res!310397) (not e!297885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32703 (_ BitVec 32)) Bool)

(assert (=> b!509404 (= res!310397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509405 () Bool)

(declare-fun res!310398 () Bool)

(assert (=> b!509405 (=> (not res!310398) (not e!297884))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509405 (= res!310398 (and (= (size!16091 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16091 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16091 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509406 () Bool)

(assert (=> b!509406 (= e!297885 (not true))))

(declare-fun lt!232787 () (_ BitVec 32))

(declare-fun lt!232785 () SeekEntryResult!4201)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32703 (_ BitVec 32)) SeekEntryResult!4201)

(assert (=> b!509406 (= lt!232785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232787 (select (store (arr!15727 a!3235) i!1204 k0!2280) j!176) (array!32704 (store (arr!15727 a!3235) i!1204 k0!2280) (size!16091 a!3235)) mask!3524))))

(declare-fun lt!232786 () SeekEntryResult!4201)

(declare-fun lt!232782 () (_ BitVec 32))

(assert (=> b!509406 (= lt!232786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232782 (select (arr!15727 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509406 (= lt!232787 (toIndex!0 (select (store (arr!15727 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509406 (= lt!232782 (toIndex!0 (select (arr!15727 a!3235) j!176) mask!3524))))

(assert (=> b!509406 e!297883))

(declare-fun res!310400 () Bool)

(assert (=> b!509406 (=> (not res!310400) (not e!297883))))

(assert (=> b!509406 (= res!310400 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15652 0))(
  ( (Unit!15653) )
))
(declare-fun lt!232783 () Unit!15652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15652)

(assert (=> b!509406 (= lt!232783 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509401 () Bool)

(assert (=> b!509401 (= e!297884 e!297885)))

(declare-fun res!310396 () Bool)

(assert (=> b!509401 (=> (not res!310396) (not e!297885))))

(declare-fun lt!232784 () SeekEntryResult!4201)

(assert (=> b!509401 (= res!310396 (or (= lt!232784 (MissingZero!4201 i!1204)) (= lt!232784 (MissingVacant!4201 i!1204))))))

(assert (=> b!509401 (= lt!232784 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!310399 () Bool)

(assert (=> start!46032 (=> (not res!310399) (not e!297884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46032 (= res!310399 (validMask!0 mask!3524))))

(assert (=> start!46032 e!297884))

(assert (=> start!46032 true))

(declare-fun array_inv!11501 (array!32703) Bool)

(assert (=> start!46032 (array_inv!11501 a!3235)))

(declare-fun b!509407 () Bool)

(declare-fun res!310395 () Bool)

(assert (=> b!509407 (=> (not res!310395) (not e!297884))))

(declare-fun arrayContainsKey!0 (array!32703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509407 (= res!310395 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509408 () Bool)

(declare-fun res!310403 () Bool)

(assert (=> b!509408 (=> (not res!310403) (not e!297885))))

(declare-datatypes ((List!9938 0))(
  ( (Nil!9935) (Cons!9934 (h!10811 (_ BitVec 64)) (t!16174 List!9938)) )
))
(declare-fun arrayNoDuplicates!0 (array!32703 (_ BitVec 32) List!9938) Bool)

(assert (=> b!509408 (= res!310403 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9935))))

(assert (= (and start!46032 res!310399) b!509405))

(assert (= (and b!509405 res!310398) b!509403))

(assert (= (and b!509403 res!310402) b!509402))

(assert (= (and b!509402 res!310401) b!509407))

(assert (= (and b!509407 res!310395) b!509401))

(assert (= (and b!509401 res!310396) b!509404))

(assert (= (and b!509404 res!310397) b!509408))

(assert (= (and b!509408 res!310403) b!509406))

(assert (= (and b!509406 res!310400) b!509400))

(declare-fun m!490375 () Bool)

(assert (=> b!509400 m!490375))

(assert (=> b!509400 m!490375))

(declare-fun m!490377 () Bool)

(assert (=> b!509400 m!490377))

(declare-fun m!490379 () Bool)

(assert (=> b!509406 m!490379))

(declare-fun m!490381 () Bool)

(assert (=> b!509406 m!490381))

(declare-fun m!490383 () Bool)

(assert (=> b!509406 m!490383))

(declare-fun m!490385 () Bool)

(assert (=> b!509406 m!490385))

(assert (=> b!509406 m!490379))

(assert (=> b!509406 m!490375))

(declare-fun m!490387 () Bool)

(assert (=> b!509406 m!490387))

(assert (=> b!509406 m!490375))

(declare-fun m!490389 () Bool)

(assert (=> b!509406 m!490389))

(assert (=> b!509406 m!490375))

(declare-fun m!490391 () Bool)

(assert (=> b!509406 m!490391))

(assert (=> b!509406 m!490379))

(declare-fun m!490393 () Bool)

(assert (=> b!509406 m!490393))

(declare-fun m!490395 () Bool)

(assert (=> b!509404 m!490395))

(declare-fun m!490397 () Bool)

(assert (=> b!509402 m!490397))

(declare-fun m!490399 () Bool)

(assert (=> start!46032 m!490399))

(declare-fun m!490401 () Bool)

(assert (=> start!46032 m!490401))

(declare-fun m!490403 () Bool)

(assert (=> b!509407 m!490403))

(declare-fun m!490405 () Bool)

(assert (=> b!509408 m!490405))

(assert (=> b!509403 m!490375))

(assert (=> b!509403 m!490375))

(declare-fun m!490407 () Bool)

(assert (=> b!509403 m!490407))

(declare-fun m!490409 () Bool)

(assert (=> b!509401 m!490409))

(check-sat (not b!509401) (not b!509406) (not b!509407) (not b!509404) (not start!46032) (not b!509400) (not b!509408) (not b!509403) (not b!509402))
(check-sat)
