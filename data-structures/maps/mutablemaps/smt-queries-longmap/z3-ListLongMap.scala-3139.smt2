; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44268 () Bool)

(assert start!44268)

(declare-fun res!290048 () Bool)

(declare-fun e!286380 () Bool)

(assert (=> start!44268 (=> (not res!290048) (not e!286380))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44268 (= res!290048 (validMask!0 mask!3524))))

(assert (=> start!44268 e!286380))

(assert (=> start!44268 true))

(declare-datatypes ((array!31479 0))(
  ( (array!31480 (arr!15130 (Array (_ BitVec 32) (_ BitVec 64))) (size!15494 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31479)

(declare-fun array_inv!10904 (array!31479) Bool)

(assert (=> start!44268 (array_inv!10904 a!3235)))

(declare-fun b!486509 () Bool)

(declare-fun e!286381 () Bool)

(assert (=> b!486509 (= e!286380 e!286381)))

(declare-fun res!290046 () Bool)

(assert (=> b!486509 (=> (not res!290046) (not e!286381))))

(declare-datatypes ((SeekEntryResult!3604 0))(
  ( (MissingZero!3604 (index!16595 (_ BitVec 32))) (Found!3604 (index!16596 (_ BitVec 32))) (Intermediate!3604 (undefined!4416 Bool) (index!16597 (_ BitVec 32)) (x!45755 (_ BitVec 32))) (Undefined!3604) (MissingVacant!3604 (index!16598 (_ BitVec 32))) )
))
(declare-fun lt!219793 () SeekEntryResult!3604)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486509 (= res!290046 (or (= lt!219793 (MissingZero!3604 i!1204)) (= lt!219793 (MissingVacant!3604 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31479 (_ BitVec 32)) SeekEntryResult!3604)

(assert (=> b!486509 (= lt!219793 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486510 () Bool)

(declare-fun res!290047 () Bool)

(assert (=> b!486510 (=> (not res!290047) (not e!286380))))

(declare-fun arrayContainsKey!0 (array!31479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486510 (= res!290047 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486511 () Bool)

(declare-fun res!290050 () Bool)

(assert (=> b!486511 (=> (not res!290050) (not e!286380))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486511 (= res!290050 (and (= (size!15494 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15494 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15494 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486512 () Bool)

(assert (=> b!486512 (= e!286381 false)))

(declare-fun lt!219794 () Bool)

(declare-datatypes ((List!9341 0))(
  ( (Nil!9338) (Cons!9337 (h!10193 (_ BitVec 64)) (t!15577 List!9341)) )
))
(declare-fun arrayNoDuplicates!0 (array!31479 (_ BitVec 32) List!9341) Bool)

(assert (=> b!486512 (= lt!219794 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9338))))

(declare-fun b!486513 () Bool)

(declare-fun res!290049 () Bool)

(assert (=> b!486513 (=> (not res!290049) (not e!286380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486513 (= res!290049 (validKeyInArray!0 (select (arr!15130 a!3235) j!176)))))

(declare-fun b!486514 () Bool)

(declare-fun res!290045 () Bool)

(assert (=> b!486514 (=> (not res!290045) (not e!286380))))

(assert (=> b!486514 (= res!290045 (validKeyInArray!0 k0!2280))))

(declare-fun b!486515 () Bool)

(declare-fun res!290051 () Bool)

(assert (=> b!486515 (=> (not res!290051) (not e!286381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31479 (_ BitVec 32)) Bool)

(assert (=> b!486515 (= res!290051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44268 res!290048) b!486511))

(assert (= (and b!486511 res!290050) b!486513))

(assert (= (and b!486513 res!290049) b!486514))

(assert (= (and b!486514 res!290045) b!486510))

(assert (= (and b!486510 res!290047) b!486509))

(assert (= (and b!486509 res!290046) b!486515))

(assert (= (and b!486515 res!290051) b!486512))

(declare-fun m!466447 () Bool)

(assert (=> b!486514 m!466447))

(declare-fun m!466449 () Bool)

(assert (=> b!486510 m!466449))

(declare-fun m!466451 () Bool)

(assert (=> start!44268 m!466451))

(declare-fun m!466453 () Bool)

(assert (=> start!44268 m!466453))

(declare-fun m!466455 () Bool)

(assert (=> b!486513 m!466455))

(assert (=> b!486513 m!466455))

(declare-fun m!466457 () Bool)

(assert (=> b!486513 m!466457))

(declare-fun m!466459 () Bool)

(assert (=> b!486509 m!466459))

(declare-fun m!466461 () Bool)

(assert (=> b!486512 m!466461))

(declare-fun m!466463 () Bool)

(assert (=> b!486515 m!466463))

(check-sat (not b!486512) (not start!44268) (not b!486509) (not b!486515) (not b!486513) (not b!486510) (not b!486514))
(check-sat)
