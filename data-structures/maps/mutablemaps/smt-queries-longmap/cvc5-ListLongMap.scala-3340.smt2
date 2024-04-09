; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46042 () Bool)

(assert start!46042)

(declare-fun b!509535 () Bool)

(declare-fun res!310532 () Bool)

(declare-fun e!297943 () Bool)

(assert (=> b!509535 (=> (not res!310532) (not e!297943))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509535 (= res!310532 (validKeyInArray!0 k!2280))))

(declare-fun b!509536 () Bool)

(declare-fun res!310538 () Bool)

(assert (=> b!509536 (=> (not res!310538) (not e!297943))))

(declare-datatypes ((array!32713 0))(
  ( (array!32714 (arr!15732 (Array (_ BitVec 32) (_ BitVec 64))) (size!16096 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32713)

(declare-fun arrayContainsKey!0 (array!32713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509536 (= res!310538 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297944 () Bool)

(declare-fun b!509537 () Bool)

(declare-datatypes ((SeekEntryResult!4206 0))(
  ( (MissingZero!4206 (index!19012 (_ BitVec 32))) (Found!4206 (index!19013 (_ BitVec 32))) (Intermediate!4206 (undefined!5018 Bool) (index!19014 (_ BitVec 32)) (x!48010 (_ BitVec 32))) (Undefined!4206) (MissingVacant!4206 (index!19015 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32713 (_ BitVec 32)) SeekEntryResult!4206)

(assert (=> b!509537 (= e!297944 (= (seekEntryOrOpen!0 (select (arr!15732 a!3235) j!176) a!3235 mask!3524) (Found!4206 j!176)))))

(declare-fun b!509538 () Bool)

(declare-fun res!310531 () Bool)

(declare-fun e!297946 () Bool)

(assert (=> b!509538 (=> (not res!310531) (not e!297946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32713 (_ BitVec 32)) Bool)

(assert (=> b!509538 (= res!310531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509539 () Bool)

(assert (=> b!509539 (= e!297943 e!297946)))

(declare-fun res!310537 () Bool)

(assert (=> b!509539 (=> (not res!310537) (not e!297946))))

(declare-fun lt!232874 () SeekEntryResult!4206)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509539 (= res!310537 (or (= lt!232874 (MissingZero!4206 i!1204)) (= lt!232874 (MissingVacant!4206 i!1204))))))

(assert (=> b!509539 (= lt!232874 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!310536 () Bool)

(assert (=> start!46042 (=> (not res!310536) (not e!297943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46042 (= res!310536 (validMask!0 mask!3524))))

(assert (=> start!46042 e!297943))

(assert (=> start!46042 true))

(declare-fun array_inv!11506 (array!32713) Bool)

(assert (=> start!46042 (array_inv!11506 a!3235)))

(declare-fun b!509540 () Bool)

(declare-fun res!310530 () Bool)

(assert (=> b!509540 (=> (not res!310530) (not e!297943))))

(assert (=> b!509540 (= res!310530 (validKeyInArray!0 (select (arr!15732 a!3235) j!176)))))

(declare-fun b!509541 () Bool)

(declare-fun res!310535 () Bool)

(assert (=> b!509541 (=> (not res!310535) (not e!297943))))

(assert (=> b!509541 (= res!310535 (and (= (size!16096 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16096 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16096 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509542 () Bool)

(assert (=> b!509542 (= e!297946 (not true))))

(declare-fun lt!232872 () (_ BitVec 32))

(declare-fun lt!232875 () SeekEntryResult!4206)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32713 (_ BitVec 32)) SeekEntryResult!4206)

(assert (=> b!509542 (= lt!232875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232872 (select (store (arr!15732 a!3235) i!1204 k!2280) j!176) (array!32714 (store (arr!15732 a!3235) i!1204 k!2280) (size!16096 a!3235)) mask!3524))))

(declare-fun lt!232876 () (_ BitVec 32))

(declare-fun lt!232877 () SeekEntryResult!4206)

(assert (=> b!509542 (= lt!232877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232876 (select (arr!15732 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509542 (= lt!232872 (toIndex!0 (select (store (arr!15732 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509542 (= lt!232876 (toIndex!0 (select (arr!15732 a!3235) j!176) mask!3524))))

(assert (=> b!509542 e!297944))

(declare-fun res!310533 () Bool)

(assert (=> b!509542 (=> (not res!310533) (not e!297944))))

(assert (=> b!509542 (= res!310533 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15662 0))(
  ( (Unit!15663) )
))
(declare-fun lt!232873 () Unit!15662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15662)

(assert (=> b!509542 (= lt!232873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509543 () Bool)

(declare-fun res!310534 () Bool)

(assert (=> b!509543 (=> (not res!310534) (not e!297946))))

(declare-datatypes ((List!9943 0))(
  ( (Nil!9940) (Cons!9939 (h!10816 (_ BitVec 64)) (t!16179 List!9943)) )
))
(declare-fun arrayNoDuplicates!0 (array!32713 (_ BitVec 32) List!9943) Bool)

(assert (=> b!509543 (= res!310534 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9940))))

(assert (= (and start!46042 res!310536) b!509541))

(assert (= (and b!509541 res!310535) b!509540))

(assert (= (and b!509540 res!310530) b!509535))

(assert (= (and b!509535 res!310532) b!509536))

(assert (= (and b!509536 res!310538) b!509539))

(assert (= (and b!509539 res!310537) b!509538))

(assert (= (and b!509538 res!310531) b!509543))

(assert (= (and b!509543 res!310534) b!509542))

(assert (= (and b!509542 res!310533) b!509537))

(declare-fun m!490555 () Bool)

(assert (=> b!509538 m!490555))

(declare-fun m!490557 () Bool)

(assert (=> b!509535 m!490557))

(declare-fun m!490559 () Bool)

(assert (=> b!509543 m!490559))

(declare-fun m!490561 () Bool)

(assert (=> b!509539 m!490561))

(declare-fun m!490563 () Bool)

(assert (=> b!509540 m!490563))

(assert (=> b!509540 m!490563))

(declare-fun m!490565 () Bool)

(assert (=> b!509540 m!490565))

(declare-fun m!490567 () Bool)

(assert (=> start!46042 m!490567))

(declare-fun m!490569 () Bool)

(assert (=> start!46042 m!490569))

(assert (=> b!509537 m!490563))

(assert (=> b!509537 m!490563))

(declare-fun m!490571 () Bool)

(assert (=> b!509537 m!490571))

(declare-fun m!490573 () Bool)

(assert (=> b!509542 m!490573))

(assert (=> b!509542 m!490563))

(declare-fun m!490575 () Bool)

(assert (=> b!509542 m!490575))

(declare-fun m!490577 () Bool)

(assert (=> b!509542 m!490577))

(declare-fun m!490579 () Bool)

(assert (=> b!509542 m!490579))

(assert (=> b!509542 m!490563))

(declare-fun m!490581 () Bool)

(assert (=> b!509542 m!490581))

(assert (=> b!509542 m!490563))

(declare-fun m!490583 () Bool)

(assert (=> b!509542 m!490583))

(assert (=> b!509542 m!490579))

(declare-fun m!490585 () Bool)

(assert (=> b!509542 m!490585))

(assert (=> b!509542 m!490579))

(declare-fun m!490587 () Bool)

(assert (=> b!509542 m!490587))

(declare-fun m!490589 () Bool)

(assert (=> b!509536 m!490589))

(push 1)

