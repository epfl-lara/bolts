; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45962 () Bool)

(assert start!45962)

(declare-fun b!508455 () Bool)

(declare-fun res!309453 () Bool)

(declare-fun e!297464 () Bool)

(assert (=> b!508455 (=> (not res!309453) (not e!297464))))

(declare-datatypes ((array!32633 0))(
  ( (array!32634 (arr!15692 (Array (_ BitVec 32) (_ BitVec 64))) (size!16056 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32633)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32633 (_ BitVec 32)) Bool)

(assert (=> b!508455 (= res!309453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508456 () Bool)

(declare-fun e!297465 () Bool)

(assert (=> b!508456 (= e!297465 e!297464)))

(declare-fun res!309451 () Bool)

(assert (=> b!508456 (=> (not res!309451) (not e!297464))))

(declare-datatypes ((SeekEntryResult!4166 0))(
  ( (MissingZero!4166 (index!18852 (_ BitVec 32))) (Found!4166 (index!18853 (_ BitVec 32))) (Intermediate!4166 (undefined!4978 Bool) (index!18854 (_ BitVec 32)) (x!47858 (_ BitVec 32))) (Undefined!4166) (MissingVacant!4166 (index!18855 (_ BitVec 32))) )
))
(declare-fun lt!232282 () SeekEntryResult!4166)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508456 (= res!309451 (or (= lt!232282 (MissingZero!4166 i!1204)) (= lt!232282 (MissingVacant!4166 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32633 (_ BitVec 32)) SeekEntryResult!4166)

(assert (=> b!508456 (= lt!232282 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508457 () Bool)

(declare-fun res!309456 () Bool)

(assert (=> b!508457 (=> (not res!309456) (not e!297465))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508457 (= res!309456 (validKeyInArray!0 (select (arr!15692 a!3235) j!176)))))

(declare-fun b!508458 () Bool)

(declare-fun res!309452 () Bool)

(assert (=> b!508458 (=> (not res!309452) (not e!297465))))

(declare-fun arrayContainsKey!0 (array!32633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508458 (= res!309452 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!297463 () Bool)

(declare-fun b!508459 () Bool)

(assert (=> b!508459 (= e!297463 (= (seekEntryOrOpen!0 (select (arr!15692 a!3235) j!176) a!3235 mask!3524) (Found!4166 j!176)))))

(declare-fun b!508460 () Bool)

(declare-fun res!309455 () Bool)

(assert (=> b!508460 (=> (not res!309455) (not e!297465))))

(assert (=> b!508460 (= res!309455 (and (= (size!16056 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16056 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16056 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508461 () Bool)

(declare-fun res!309457 () Bool)

(assert (=> b!508461 (=> (not res!309457) (not e!297465))))

(assert (=> b!508461 (= res!309457 (validKeyInArray!0 k!2280))))

(declare-fun b!508462 () Bool)

(assert (=> b!508462 (= e!297464 (not true))))

(assert (=> b!508462 e!297463))

(declare-fun res!309458 () Bool)

(assert (=> b!508462 (=> (not res!309458) (not e!297463))))

(assert (=> b!508462 (= res!309458 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15582 0))(
  ( (Unit!15583) )
))
(declare-fun lt!232283 () Unit!15582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15582)

(assert (=> b!508462 (= lt!232283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309450 () Bool)

(assert (=> start!45962 (=> (not res!309450) (not e!297465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45962 (= res!309450 (validMask!0 mask!3524))))

(assert (=> start!45962 e!297465))

(assert (=> start!45962 true))

(declare-fun array_inv!11466 (array!32633) Bool)

(assert (=> start!45962 (array_inv!11466 a!3235)))

(declare-fun b!508463 () Bool)

(declare-fun res!309454 () Bool)

(assert (=> b!508463 (=> (not res!309454) (not e!297464))))

(declare-datatypes ((List!9903 0))(
  ( (Nil!9900) (Cons!9899 (h!10776 (_ BitVec 64)) (t!16139 List!9903)) )
))
(declare-fun arrayNoDuplicates!0 (array!32633 (_ BitVec 32) List!9903) Bool)

(assert (=> b!508463 (= res!309454 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9900))))

(assert (= (and start!45962 res!309450) b!508460))

(assert (= (and b!508460 res!309455) b!508457))

(assert (= (and b!508457 res!309456) b!508461))

(assert (= (and b!508461 res!309457) b!508458))

(assert (= (and b!508458 res!309452) b!508456))

(assert (= (and b!508456 res!309451) b!508455))

(assert (= (and b!508455 res!309453) b!508463))

(assert (= (and b!508463 res!309454) b!508462))

(assert (= (and b!508462 res!309458) b!508459))

(declare-fun m!489247 () Bool)

(assert (=> b!508455 m!489247))

(declare-fun m!489249 () Bool)

(assert (=> b!508458 m!489249))

(declare-fun m!489251 () Bool)

(assert (=> b!508459 m!489251))

(assert (=> b!508459 m!489251))

(declare-fun m!489253 () Bool)

(assert (=> b!508459 m!489253))

(declare-fun m!489255 () Bool)

(assert (=> start!45962 m!489255))

(declare-fun m!489257 () Bool)

(assert (=> start!45962 m!489257))

(declare-fun m!489259 () Bool)

(assert (=> b!508456 m!489259))

(declare-fun m!489261 () Bool)

(assert (=> b!508461 m!489261))

(assert (=> b!508457 m!489251))

(assert (=> b!508457 m!489251))

(declare-fun m!489263 () Bool)

(assert (=> b!508457 m!489263))

(declare-fun m!489265 () Bool)

(assert (=> b!508462 m!489265))

(declare-fun m!489267 () Bool)

(assert (=> b!508462 m!489267))

(declare-fun m!489269 () Bool)

(assert (=> b!508463 m!489269))

(push 1)

(assert (not b!508455))

