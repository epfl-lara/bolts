; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44706 () Bool)

(assert start!44706)

(declare-fun b!490293 () Bool)

(declare-fun res!293383 () Bool)

(declare-fun e!288220 () Bool)

(assert (=> b!490293 (=> (not res!293383) (not e!288220))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490293 (= res!293383 (validKeyInArray!0 k0!2280))))

(declare-fun b!490294 () Bool)

(declare-fun res!293380 () Bool)

(declare-fun e!288221 () Bool)

(assert (=> b!490294 (=> (not res!293380) (not e!288221))))

(declare-datatypes ((array!31725 0))(
  ( (array!31726 (arr!15247 (Array (_ BitVec 32) (_ BitVec 64))) (size!15611 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31725)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31725 (_ BitVec 32)) Bool)

(assert (=> b!490294 (= res!293380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490295 () Bool)

(declare-fun res!293382 () Bool)

(assert (=> b!490295 (=> (not res!293382) (not e!288220))))

(declare-fun arrayContainsKey!0 (array!31725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490295 (= res!293382 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490296 () Bool)

(declare-fun res!293387 () Bool)

(assert (=> b!490296 (=> (not res!293387) (not e!288220))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490296 (= res!293387 (validKeyInArray!0 (select (arr!15247 a!3235) j!176)))))

(declare-fun b!490297 () Bool)

(assert (=> b!490297 (= e!288220 e!288221)))

(declare-fun res!293384 () Bool)

(assert (=> b!490297 (=> (not res!293384) (not e!288221))))

(declare-datatypes ((SeekEntryResult!3721 0))(
  ( (MissingZero!3721 (index!17063 (_ BitVec 32))) (Found!3721 (index!17064 (_ BitVec 32))) (Intermediate!3721 (undefined!4533 Bool) (index!17065 (_ BitVec 32)) (x!46190 (_ BitVec 32))) (Undefined!3721) (MissingVacant!3721 (index!17066 (_ BitVec 32))) )
))
(declare-fun lt!221491 () SeekEntryResult!3721)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490297 (= res!293384 (or (= lt!221491 (MissingZero!3721 i!1204)) (= lt!221491 (MissingVacant!3721 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31725 (_ BitVec 32)) SeekEntryResult!3721)

(assert (=> b!490297 (= lt!221491 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490298 () Bool)

(declare-fun res!293379 () Bool)

(assert (=> b!490298 (=> (not res!293379) (not e!288221))))

(declare-datatypes ((List!9458 0))(
  ( (Nil!9455) (Cons!9454 (h!10316 (_ BitVec 64)) (t!15694 List!9458)) )
))
(declare-fun arrayNoDuplicates!0 (array!31725 (_ BitVec 32) List!9458) Bool)

(assert (=> b!490298 (= res!293379 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9455))))

(declare-fun res!293385 () Bool)

(assert (=> start!44706 (=> (not res!293385) (not e!288220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44706 (= res!293385 (validMask!0 mask!3524))))

(assert (=> start!44706 e!288220))

(assert (=> start!44706 true))

(declare-fun array_inv!11021 (array!31725) Bool)

(assert (=> start!44706 (array_inv!11021 a!3235)))

(declare-fun b!490299 () Bool)

(declare-fun e!288223 () Bool)

(assert (=> b!490299 (= e!288221 (not e!288223))))

(declare-fun res!293386 () Bool)

(assert (=> b!490299 (=> res!293386 e!288223)))

(declare-fun lt!221492 () (_ BitVec 64))

(declare-fun lt!221490 () array!31725)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31725 (_ BitVec 32)) SeekEntryResult!3721)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490299 (= res!293386 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15247 a!3235) j!176) mask!3524) (select (arr!15247 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221492 mask!3524) lt!221492 lt!221490 mask!3524))))))

(assert (=> b!490299 (= lt!221492 (select (store (arr!15247 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490299 (= lt!221490 (array!31726 (store (arr!15247 a!3235) i!1204 k0!2280) (size!15611 a!3235)))))

(declare-fun lt!221488 () SeekEntryResult!3721)

(assert (=> b!490299 (= lt!221488 (Found!3721 j!176))))

(assert (=> b!490299 (= lt!221488 (seekEntryOrOpen!0 (select (arr!15247 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490299 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14380 0))(
  ( (Unit!14381) )
))
(declare-fun lt!221487 () Unit!14380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14380)

(assert (=> b!490299 (= lt!221487 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490300 () Bool)

(declare-fun res!293381 () Bool)

(assert (=> b!490300 (=> (not res!293381) (not e!288220))))

(assert (=> b!490300 (= res!293381 (and (= (size!15611 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15611 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15611 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490301 () Bool)

(assert (=> b!490301 (= e!288223 true)))

(assert (=> b!490301 (= lt!221488 (seekEntryOrOpen!0 lt!221492 lt!221490 mask!3524))))

(declare-fun lt!221489 () Unit!14380)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31725 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14380)

(assert (=> b!490301 (= lt!221489 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(assert (= (and start!44706 res!293385) b!490300))

(assert (= (and b!490300 res!293381) b!490296))

(assert (= (and b!490296 res!293387) b!490293))

(assert (= (and b!490293 res!293383) b!490295))

(assert (= (and b!490295 res!293382) b!490297))

(assert (= (and b!490297 res!293384) b!490294))

(assert (= (and b!490294 res!293380) b!490298))

(assert (= (and b!490298 res!293379) b!490299))

(assert (= (and b!490299 (not res!293386)) b!490301))

(declare-fun m!470459 () Bool)

(assert (=> b!490295 m!470459))

(declare-fun m!470461 () Bool)

(assert (=> b!490294 m!470461))

(declare-fun m!470463 () Bool)

(assert (=> b!490296 m!470463))

(assert (=> b!490296 m!470463))

(declare-fun m!470465 () Bool)

(assert (=> b!490296 m!470465))

(declare-fun m!470467 () Bool)

(assert (=> b!490301 m!470467))

(declare-fun m!470469 () Bool)

(assert (=> b!490301 m!470469))

(declare-fun m!470471 () Bool)

(assert (=> b!490299 m!470471))

(declare-fun m!470473 () Bool)

(assert (=> b!490299 m!470473))

(declare-fun m!470475 () Bool)

(assert (=> b!490299 m!470475))

(assert (=> b!490299 m!470463))

(declare-fun m!470477 () Bool)

(assert (=> b!490299 m!470477))

(assert (=> b!490299 m!470463))

(declare-fun m!470479 () Bool)

(assert (=> b!490299 m!470479))

(declare-fun m!470481 () Bool)

(assert (=> b!490299 m!470481))

(assert (=> b!490299 m!470463))

(declare-fun m!470483 () Bool)

(assert (=> b!490299 m!470483))

(declare-fun m!470485 () Bool)

(assert (=> b!490299 m!470485))

(assert (=> b!490299 m!470463))

(assert (=> b!490299 m!470481))

(assert (=> b!490299 m!470485))

(declare-fun m!470487 () Bool)

(assert (=> b!490299 m!470487))

(declare-fun m!470489 () Bool)

(assert (=> b!490293 m!470489))

(declare-fun m!470491 () Bool)

(assert (=> b!490298 m!470491))

(declare-fun m!470493 () Bool)

(assert (=> b!490297 m!470493))

(declare-fun m!470495 () Bool)

(assert (=> start!44706 m!470495))

(declare-fun m!470497 () Bool)

(assert (=> start!44706 m!470497))

(check-sat (not b!490294) (not b!490293) (not b!490301) (not b!490297) (not b!490296) (not b!490299) (not start!44706) (not b!490295) (not b!490298))
(check-sat)
