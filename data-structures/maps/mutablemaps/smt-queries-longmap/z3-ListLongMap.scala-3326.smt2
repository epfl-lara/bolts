; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45960 () Bool)

(assert start!45960)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!508428 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297453 () Bool)

(declare-datatypes ((array!32631 0))(
  ( (array!32632 (arr!15691 (Array (_ BitVec 32) (_ BitVec 64))) (size!16055 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32631)

(declare-datatypes ((SeekEntryResult!4165 0))(
  ( (MissingZero!4165 (index!18848 (_ BitVec 32))) (Found!4165 (index!18849 (_ BitVec 32))) (Intermediate!4165 (undefined!4977 Bool) (index!18850 (_ BitVec 32)) (x!47857 (_ BitVec 32))) (Undefined!4165) (MissingVacant!4165 (index!18851 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32631 (_ BitVec 32)) SeekEntryResult!4165)

(assert (=> b!508428 (= e!297453 (= (seekEntryOrOpen!0 (select (arr!15691 a!3235) j!176) a!3235 mask!3524) (Found!4165 j!176)))))

(declare-fun b!508429 () Bool)

(declare-fun res!309425 () Bool)

(declare-fun e!297451 () Bool)

(assert (=> b!508429 (=> (not res!309425) (not e!297451))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508429 (= res!309425 (and (= (size!16055 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16055 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16055 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508430 () Bool)

(declare-fun res!309428 () Bool)

(assert (=> b!508430 (=> (not res!309428) (not e!297451))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508430 (= res!309428 (validKeyInArray!0 k0!2280))))

(declare-fun b!508431 () Bool)

(declare-fun res!309430 () Bool)

(assert (=> b!508431 (=> (not res!309430) (not e!297451))))

(declare-fun arrayContainsKey!0 (array!32631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508431 (= res!309430 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508432 () Bool)

(declare-fun res!309431 () Bool)

(declare-fun e!297452 () Bool)

(assert (=> b!508432 (=> (not res!309431) (not e!297452))))

(declare-datatypes ((List!9902 0))(
  ( (Nil!9899) (Cons!9898 (h!10775 (_ BitVec 64)) (t!16138 List!9902)) )
))
(declare-fun arrayNoDuplicates!0 (array!32631 (_ BitVec 32) List!9902) Bool)

(assert (=> b!508432 (= res!309431 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9899))))

(declare-fun b!508433 () Bool)

(declare-fun res!309429 () Bool)

(assert (=> b!508433 (=> (not res!309429) (not e!297451))))

(assert (=> b!508433 (= res!309429 (validKeyInArray!0 (select (arr!15691 a!3235) j!176)))))

(declare-fun b!508434 () Bool)

(declare-fun res!309427 () Bool)

(assert (=> b!508434 (=> (not res!309427) (not e!297452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32631 (_ BitVec 32)) Bool)

(assert (=> b!508434 (= res!309427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!309426 () Bool)

(assert (=> start!45960 (=> (not res!309426) (not e!297451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45960 (= res!309426 (validMask!0 mask!3524))))

(assert (=> start!45960 e!297451))

(assert (=> start!45960 true))

(declare-fun array_inv!11465 (array!32631) Bool)

(assert (=> start!45960 (array_inv!11465 a!3235)))

(declare-fun b!508435 () Bool)

(assert (=> b!508435 (= e!297452 (not true))))

(assert (=> b!508435 e!297453))

(declare-fun res!309423 () Bool)

(assert (=> b!508435 (=> (not res!309423) (not e!297453))))

(assert (=> b!508435 (= res!309423 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15580 0))(
  ( (Unit!15581) )
))
(declare-fun lt!232276 () Unit!15580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15580)

(assert (=> b!508435 (= lt!232276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508436 () Bool)

(assert (=> b!508436 (= e!297451 e!297452)))

(declare-fun res!309424 () Bool)

(assert (=> b!508436 (=> (not res!309424) (not e!297452))))

(declare-fun lt!232277 () SeekEntryResult!4165)

(assert (=> b!508436 (= res!309424 (or (= lt!232277 (MissingZero!4165 i!1204)) (= lt!232277 (MissingVacant!4165 i!1204))))))

(assert (=> b!508436 (= lt!232277 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45960 res!309426) b!508429))

(assert (= (and b!508429 res!309425) b!508433))

(assert (= (and b!508433 res!309429) b!508430))

(assert (= (and b!508430 res!309428) b!508431))

(assert (= (and b!508431 res!309430) b!508436))

(assert (= (and b!508436 res!309424) b!508434))

(assert (= (and b!508434 res!309427) b!508432))

(assert (= (and b!508432 res!309431) b!508435))

(assert (= (and b!508435 res!309423) b!508428))

(declare-fun m!489223 () Bool)

(assert (=> b!508435 m!489223))

(declare-fun m!489225 () Bool)

(assert (=> b!508435 m!489225))

(declare-fun m!489227 () Bool)

(assert (=> b!508436 m!489227))

(declare-fun m!489229 () Bool)

(assert (=> start!45960 m!489229))

(declare-fun m!489231 () Bool)

(assert (=> start!45960 m!489231))

(declare-fun m!489233 () Bool)

(assert (=> b!508433 m!489233))

(assert (=> b!508433 m!489233))

(declare-fun m!489235 () Bool)

(assert (=> b!508433 m!489235))

(declare-fun m!489237 () Bool)

(assert (=> b!508432 m!489237))

(assert (=> b!508428 m!489233))

(assert (=> b!508428 m!489233))

(declare-fun m!489239 () Bool)

(assert (=> b!508428 m!489239))

(declare-fun m!489241 () Bool)

(assert (=> b!508434 m!489241))

(declare-fun m!489243 () Bool)

(assert (=> b!508431 m!489243))

(declare-fun m!489245 () Bool)

(assert (=> b!508430 m!489245))

(check-sat (not start!45960) (not b!508431) (not b!508430) (not b!508428) (not b!508434) (not b!508433) (not b!508436) (not b!508432) (not b!508435))
(check-sat)
