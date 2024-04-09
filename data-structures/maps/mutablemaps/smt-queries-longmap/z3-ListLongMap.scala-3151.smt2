; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44388 () Bool)

(assert start!44388)

(declare-fun res!290975 () Bool)

(declare-fun e!286862 () Bool)

(assert (=> start!44388 (=> (not res!290975) (not e!286862))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44388 (= res!290975 (validMask!0 mask!3524))))

(assert (=> start!44388 e!286862))

(assert (=> start!44388 true))

(declare-datatypes ((array!31554 0))(
  ( (array!31555 (arr!15166 (Array (_ BitVec 32) (_ BitVec 64))) (size!15530 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31554)

(declare-fun array_inv!10940 (array!31554) Bool)

(assert (=> start!44388 (array_inv!10940 a!3235)))

(declare-fun b!487548 () Bool)

(declare-fun res!290970 () Bool)

(assert (=> b!487548 (=> (not res!290970) (not e!286862))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487548 (= res!290970 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487549 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!286861 () Bool)

(declare-datatypes ((SeekEntryResult!3640 0))(
  ( (MissingZero!3640 (index!16739 (_ BitVec 32))) (Found!3640 (index!16740 (_ BitVec 32))) (Intermediate!3640 (undefined!4452 Bool) (index!16741 (_ BitVec 32)) (x!45887 (_ BitVec 32))) (Undefined!3640) (MissingVacant!3640 (index!16742 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31554 (_ BitVec 32)) SeekEntryResult!3640)

(assert (=> b!487549 (= e!286861 (= (seekEntryOrOpen!0 (select (arr!15166 a!3235) j!176) a!3235 mask!3524) (Found!3640 j!176)))))

(declare-fun b!487550 () Bool)

(declare-fun e!286864 () Bool)

(assert (=> b!487550 (= e!286864 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun lt!220105 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487550 (= lt!220105 (toIndex!0 (select (arr!15166 a!3235) j!176) mask!3524))))

(assert (=> b!487550 e!286861))

(declare-fun res!290973 () Bool)

(assert (=> b!487550 (=> (not res!290973) (not e!286861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31554 (_ BitVec 32)) Bool)

(assert (=> b!487550 (= res!290973 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14218 0))(
  ( (Unit!14219) )
))
(declare-fun lt!220104 () Unit!14218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14218)

(assert (=> b!487550 (= lt!220104 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487551 () Bool)

(declare-fun res!290976 () Bool)

(assert (=> b!487551 (=> (not res!290976) (not e!286864))))

(assert (=> b!487551 (= res!290976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487552 () Bool)

(assert (=> b!487552 (= e!286862 e!286864)))

(declare-fun res!290977 () Bool)

(assert (=> b!487552 (=> (not res!290977) (not e!286864))))

(declare-fun lt!220106 () SeekEntryResult!3640)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487552 (= res!290977 (or (= lt!220106 (MissingZero!3640 i!1204)) (= lt!220106 (MissingVacant!3640 i!1204))))))

(assert (=> b!487552 (= lt!220106 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487553 () Bool)

(declare-fun res!290978 () Bool)

(assert (=> b!487553 (=> (not res!290978) (not e!286862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487553 (= res!290978 (validKeyInArray!0 (select (arr!15166 a!3235) j!176)))))

(declare-fun b!487554 () Bool)

(declare-fun res!290972 () Bool)

(assert (=> b!487554 (=> (not res!290972) (not e!286862))))

(assert (=> b!487554 (= res!290972 (validKeyInArray!0 k0!2280))))

(declare-fun b!487555 () Bool)

(declare-fun res!290974 () Bool)

(assert (=> b!487555 (=> (not res!290974) (not e!286862))))

(assert (=> b!487555 (= res!290974 (and (= (size!15530 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15530 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15530 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487556 () Bool)

(declare-fun res!290971 () Bool)

(assert (=> b!487556 (=> (not res!290971) (not e!286864))))

(declare-datatypes ((List!9377 0))(
  ( (Nil!9374) (Cons!9373 (h!10229 (_ BitVec 64)) (t!15613 List!9377)) )
))
(declare-fun arrayNoDuplicates!0 (array!31554 (_ BitVec 32) List!9377) Bool)

(assert (=> b!487556 (= res!290971 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9374))))

(assert (= (and start!44388 res!290975) b!487555))

(assert (= (and b!487555 res!290974) b!487553))

(assert (= (and b!487553 res!290978) b!487554))

(assert (= (and b!487554 res!290972) b!487548))

(assert (= (and b!487548 res!290970) b!487552))

(assert (= (and b!487552 res!290977) b!487551))

(assert (= (and b!487551 res!290976) b!487556))

(assert (= (and b!487556 res!290971) b!487550))

(assert (= (and b!487550 res!290973) b!487549))

(declare-fun m!467373 () Bool)

(assert (=> b!487549 m!467373))

(assert (=> b!487549 m!467373))

(declare-fun m!467375 () Bool)

(assert (=> b!487549 m!467375))

(assert (=> b!487550 m!467373))

(assert (=> b!487550 m!467373))

(declare-fun m!467377 () Bool)

(assert (=> b!487550 m!467377))

(declare-fun m!467379 () Bool)

(assert (=> b!487550 m!467379))

(declare-fun m!467381 () Bool)

(assert (=> b!487550 m!467381))

(declare-fun m!467383 () Bool)

(assert (=> start!44388 m!467383))

(declare-fun m!467385 () Bool)

(assert (=> start!44388 m!467385))

(declare-fun m!467387 () Bool)

(assert (=> b!487556 m!467387))

(declare-fun m!467389 () Bool)

(assert (=> b!487554 m!467389))

(assert (=> b!487553 m!467373))

(assert (=> b!487553 m!467373))

(declare-fun m!467391 () Bool)

(assert (=> b!487553 m!467391))

(declare-fun m!467393 () Bool)

(assert (=> b!487548 m!467393))

(declare-fun m!467395 () Bool)

(assert (=> b!487551 m!467395))

(declare-fun m!467397 () Bool)

(assert (=> b!487552 m!467397))

(check-sat (not b!487549) (not b!487551) (not b!487552) (not b!487548) (not b!487556) (not b!487550) (not b!487553) (not start!44388) (not b!487554))
(check-sat)
