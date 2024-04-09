; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44396 () Bool)

(assert start!44396)

(declare-fun res!291080 () Bool)

(declare-fun e!286911 () Bool)

(assert (=> start!44396 (=> (not res!291080) (not e!286911))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44396 (= res!291080 (validMask!0 mask!3524))))

(assert (=> start!44396 e!286911))

(assert (=> start!44396 true))

(declare-datatypes ((array!31562 0))(
  ( (array!31563 (arr!15170 (Array (_ BitVec 32) (_ BitVec 64))) (size!15534 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31562)

(declare-fun array_inv!10944 (array!31562) Bool)

(assert (=> start!44396 (array_inv!10944 a!3235)))

(declare-fun b!487656 () Bool)

(declare-fun res!291086 () Bool)

(assert (=> b!487656 (=> (not res!291086) (not e!286911))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!487656 (= res!291086 (and (= (size!15534 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15534 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15534 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487657 () Bool)

(declare-fun res!291079 () Bool)

(declare-fun e!286910 () Bool)

(assert (=> b!487657 (=> (not res!291079) (not e!286910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31562 (_ BitVec 32)) Bool)

(assert (=> b!487657 (= res!291079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487658 () Bool)

(assert (=> b!487658 (= e!286910 (not true))))

(declare-fun lt!220140 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487658 (= lt!220140 (toIndex!0 (select (arr!15170 a!3235) j!176) mask!3524))))

(declare-fun e!286912 () Bool)

(assert (=> b!487658 e!286912))

(declare-fun res!291078 () Bool)

(assert (=> b!487658 (=> (not res!291078) (not e!286912))))

(assert (=> b!487658 (= res!291078 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14226 0))(
  ( (Unit!14227) )
))
(declare-fun lt!220142 () Unit!14226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14226)

(assert (=> b!487658 (= lt!220142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487659 () Bool)

(declare-fun res!291082 () Bool)

(assert (=> b!487659 (=> (not res!291082) (not e!286911))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487659 (= res!291082 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487660 () Bool)

(declare-fun res!291085 () Bool)

(assert (=> b!487660 (=> (not res!291085) (not e!286911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487660 (= res!291085 (validKeyInArray!0 k!2280))))

(declare-fun b!487661 () Bool)

(assert (=> b!487661 (= e!286911 e!286910)))

(declare-fun res!291083 () Bool)

(assert (=> b!487661 (=> (not res!291083) (not e!286910))))

(declare-datatypes ((SeekEntryResult!3644 0))(
  ( (MissingZero!3644 (index!16755 (_ BitVec 32))) (Found!3644 (index!16756 (_ BitVec 32))) (Intermediate!3644 (undefined!4456 Bool) (index!16757 (_ BitVec 32)) (x!45899 (_ BitVec 32))) (Undefined!3644) (MissingVacant!3644 (index!16758 (_ BitVec 32))) )
))
(declare-fun lt!220141 () SeekEntryResult!3644)

(assert (=> b!487661 (= res!291083 (or (= lt!220141 (MissingZero!3644 i!1204)) (= lt!220141 (MissingVacant!3644 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31562 (_ BitVec 32)) SeekEntryResult!3644)

(assert (=> b!487661 (= lt!220141 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487662 () Bool)

(declare-fun res!291084 () Bool)

(assert (=> b!487662 (=> (not res!291084) (not e!286910))))

(declare-datatypes ((List!9381 0))(
  ( (Nil!9378) (Cons!9377 (h!10233 (_ BitVec 64)) (t!15617 List!9381)) )
))
(declare-fun arrayNoDuplicates!0 (array!31562 (_ BitVec 32) List!9381) Bool)

(assert (=> b!487662 (= res!291084 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9378))))

(declare-fun b!487663 () Bool)

(assert (=> b!487663 (= e!286912 (= (seekEntryOrOpen!0 (select (arr!15170 a!3235) j!176) a!3235 mask!3524) (Found!3644 j!176)))))

(declare-fun b!487664 () Bool)

(declare-fun res!291081 () Bool)

(assert (=> b!487664 (=> (not res!291081) (not e!286911))))

(assert (=> b!487664 (= res!291081 (validKeyInArray!0 (select (arr!15170 a!3235) j!176)))))

(assert (= (and start!44396 res!291080) b!487656))

(assert (= (and b!487656 res!291086) b!487664))

(assert (= (and b!487664 res!291081) b!487660))

(assert (= (and b!487660 res!291085) b!487659))

(assert (= (and b!487659 res!291082) b!487661))

(assert (= (and b!487661 res!291083) b!487657))

(assert (= (and b!487657 res!291079) b!487662))

(assert (= (and b!487662 res!291084) b!487658))

(assert (= (and b!487658 res!291078) b!487663))

(declare-fun m!467477 () Bool)

(assert (=> b!487661 m!467477))

(declare-fun m!467479 () Bool)

(assert (=> b!487658 m!467479))

(assert (=> b!487658 m!467479))

(declare-fun m!467481 () Bool)

(assert (=> b!487658 m!467481))

(declare-fun m!467483 () Bool)

(assert (=> b!487658 m!467483))

(declare-fun m!467485 () Bool)

(assert (=> b!487658 m!467485))

(assert (=> b!487664 m!467479))

(assert (=> b!487664 m!467479))

(declare-fun m!467487 () Bool)

(assert (=> b!487664 m!467487))

(declare-fun m!467489 () Bool)

(assert (=> b!487657 m!467489))

(declare-fun m!467491 () Bool)

(assert (=> b!487660 m!467491))

(declare-fun m!467493 () Bool)

(assert (=> b!487662 m!467493))

(assert (=> b!487663 m!467479))

(assert (=> b!487663 m!467479))

(declare-fun m!467495 () Bool)

(assert (=> b!487663 m!467495))

(declare-fun m!467497 () Bool)

(assert (=> b!487659 m!467497))

(declare-fun m!467499 () Bool)

(assert (=> start!44396 m!467499))

(declare-fun m!467501 () Bool)

(assert (=> start!44396 m!467501))

(push 1)

