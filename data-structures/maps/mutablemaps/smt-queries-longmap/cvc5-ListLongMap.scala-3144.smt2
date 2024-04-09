; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44296 () Bool)

(assert start!44296)

(declare-fun res!290343 () Bool)

(declare-fun e!286507 () Bool)

(assert (=> start!44296 (=> (not res!290343) (not e!286507))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44296 (= res!290343 (validMask!0 mask!3524))))

(assert (=> start!44296 e!286507))

(assert (=> start!44296 true))

(declare-datatypes ((array!31507 0))(
  ( (array!31508 (arr!15144 (Array (_ BitVec 32) (_ BitVec 64))) (size!15508 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31507)

(declare-fun array_inv!10918 (array!31507) Bool)

(assert (=> start!44296 (array_inv!10918 a!3235)))

(declare-fun b!486805 () Bool)

(declare-fun res!290348 () Bool)

(assert (=> b!486805 (=> (not res!290348) (not e!286507))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486805 (= res!290348 (validKeyInArray!0 (select (arr!15144 a!3235) j!176)))))

(declare-fun b!486806 () Bool)

(declare-fun res!290342 () Bool)

(assert (=> b!486806 (=> (not res!290342) (not e!286507))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486806 (= res!290342 (and (= (size!15508 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15508 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15508 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486807 () Bool)

(declare-fun e!286505 () Bool)

(assert (=> b!486807 (= e!286505 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31507 (_ BitVec 32)) Bool)

(assert (=> b!486807 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14174 0))(
  ( (Unit!14175) )
))
(declare-fun lt!219878 () Unit!14174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14174)

(assert (=> b!486807 (= lt!219878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!486808 () Bool)

(assert (=> b!486808 (= e!286507 e!286505)))

(declare-fun res!290347 () Bool)

(assert (=> b!486808 (=> (not res!290347) (not e!286505))))

(declare-datatypes ((SeekEntryResult!3618 0))(
  ( (MissingZero!3618 (index!16651 (_ BitVec 32))) (Found!3618 (index!16652 (_ BitVec 32))) (Intermediate!3618 (undefined!4430 Bool) (index!16653 (_ BitVec 32)) (x!45809 (_ BitVec 32))) (Undefined!3618) (MissingVacant!3618 (index!16654 (_ BitVec 32))) )
))
(declare-fun lt!219877 () SeekEntryResult!3618)

(assert (=> b!486808 (= res!290347 (or (= lt!219877 (MissingZero!3618 i!1204)) (= lt!219877 (MissingVacant!3618 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31507 (_ BitVec 32)) SeekEntryResult!3618)

(assert (=> b!486808 (= lt!219877 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486809 () Bool)

(declare-fun res!290345 () Bool)

(assert (=> b!486809 (=> (not res!290345) (not e!286505))))

(declare-datatypes ((List!9355 0))(
  ( (Nil!9352) (Cons!9351 (h!10207 (_ BitVec 64)) (t!15591 List!9355)) )
))
(declare-fun arrayNoDuplicates!0 (array!31507 (_ BitVec 32) List!9355) Bool)

(assert (=> b!486809 (= res!290345 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9352))))

(declare-fun b!486810 () Bool)

(declare-fun res!290346 () Bool)

(assert (=> b!486810 (=> (not res!290346) (not e!286507))))

(assert (=> b!486810 (= res!290346 (validKeyInArray!0 k!2280))))

(declare-fun b!486811 () Bool)

(declare-fun res!290341 () Bool)

(assert (=> b!486811 (=> (not res!290341) (not e!286507))))

(declare-fun arrayContainsKey!0 (array!31507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486811 (= res!290341 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486812 () Bool)

(declare-fun res!290344 () Bool)

(assert (=> b!486812 (=> (not res!290344) (not e!286505))))

(assert (=> b!486812 (= res!290344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44296 res!290343) b!486806))

(assert (= (and b!486806 res!290342) b!486805))

(assert (= (and b!486805 res!290348) b!486810))

(assert (= (and b!486810 res!290346) b!486811))

(assert (= (and b!486811 res!290341) b!486808))

(assert (= (and b!486808 res!290347) b!486812))

(assert (= (and b!486812 res!290344) b!486809))

(assert (= (and b!486809 res!290345) b!486807))

(declare-fun m!466699 () Bool)

(assert (=> b!486805 m!466699))

(assert (=> b!486805 m!466699))

(declare-fun m!466701 () Bool)

(assert (=> b!486805 m!466701))

(declare-fun m!466703 () Bool)

(assert (=> b!486808 m!466703))

(declare-fun m!466705 () Bool)

(assert (=> b!486812 m!466705))

(declare-fun m!466707 () Bool)

(assert (=> start!44296 m!466707))

(declare-fun m!466709 () Bool)

(assert (=> start!44296 m!466709))

(declare-fun m!466711 () Bool)

(assert (=> b!486811 m!466711))

(declare-fun m!466713 () Bool)

(assert (=> b!486809 m!466713))

(declare-fun m!466715 () Bool)

(assert (=> b!486807 m!466715))

(declare-fun m!466717 () Bool)

(assert (=> b!486807 m!466717))

(declare-fun m!466719 () Bool)

(assert (=> b!486810 m!466719))

(push 1)

