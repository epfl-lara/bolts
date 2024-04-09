; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44534 () Bool)

(assert start!44534)

(declare-fun b!488508 () Bool)

(declare-fun e!287377 () Bool)

(declare-fun e!287378 () Bool)

(assert (=> b!488508 (= e!287377 e!287378)))

(declare-fun res!291712 () Bool)

(assert (=> b!488508 (=> (not res!291712) (not e!287378))))

(declare-datatypes ((SeekEntryResult!3662 0))(
  ( (MissingZero!3662 (index!16827 (_ BitVec 32))) (Found!3662 (index!16828 (_ BitVec 32))) (Intermediate!3662 (undefined!4474 Bool) (index!16829 (_ BitVec 32)) (x!45968 (_ BitVec 32))) (Undefined!3662) (MissingVacant!3662 (index!16830 (_ BitVec 32))) )
))
(declare-fun lt!220465 () SeekEntryResult!3662)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488508 (= res!291712 (or (= lt!220465 (MissingZero!3662 i!1204)) (= lt!220465 (MissingVacant!3662 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31604 0))(
  ( (array!31605 (arr!15188 (Array (_ BitVec 32) (_ BitVec 64))) (size!15552 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31604)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31604 (_ BitVec 32)) SeekEntryResult!3662)

(assert (=> b!488508 (= lt!220465 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488509 () Bool)

(declare-fun res!291708 () Bool)

(assert (=> b!488509 (=> (not res!291708) (not e!287377))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488509 (= res!291708 (and (= (size!15552 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15552 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15552 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488510 () Bool)

(declare-fun res!291707 () Bool)

(assert (=> b!488510 (=> (not res!291707) (not e!287378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31604 (_ BitVec 32)) Bool)

(assert (=> b!488510 (= res!291707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488511 () Bool)

(declare-fun res!291709 () Bool)

(assert (=> b!488511 (=> (not res!291709) (not e!287377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488511 (= res!291709 (validKeyInArray!0 (select (arr!15188 a!3235) j!176)))))

(declare-fun b!488512 () Bool)

(assert (=> b!488512 (= e!287378 (not true))))

(declare-fun lt!220464 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488512 (= lt!220464 (toIndex!0 (select (store (arr!15188 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287380 () Bool)

(assert (=> b!488512 e!287380))

(declare-fun res!291711 () Bool)

(assert (=> b!488512 (=> (not res!291711) (not e!287380))))

(assert (=> b!488512 (= res!291711 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14262 0))(
  ( (Unit!14263) )
))
(declare-fun lt!220466 () Unit!14262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14262)

(assert (=> b!488512 (= lt!220466 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488513 () Bool)

(declare-fun res!291710 () Bool)

(assert (=> b!488513 (=> (not res!291710) (not e!287378))))

(declare-datatypes ((List!9399 0))(
  ( (Nil!9396) (Cons!9395 (h!10254 (_ BitVec 64)) (t!15635 List!9399)) )
))
(declare-fun arrayNoDuplicates!0 (array!31604 (_ BitVec 32) List!9399) Bool)

(assert (=> b!488513 (= res!291710 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9396))))

(declare-fun b!488514 () Bool)

(assert (=> b!488514 (= e!287380 (= (seekEntryOrOpen!0 (select (arr!15188 a!3235) j!176) a!3235 mask!3524) (Found!3662 j!176)))))

(declare-fun b!488515 () Bool)

(declare-fun res!291705 () Bool)

(assert (=> b!488515 (=> (not res!291705) (not e!287377))))

(assert (=> b!488515 (= res!291705 (validKeyInArray!0 k!2280))))

(declare-fun res!291706 () Bool)

(assert (=> start!44534 (=> (not res!291706) (not e!287377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44534 (= res!291706 (validMask!0 mask!3524))))

(assert (=> start!44534 e!287377))

(assert (=> start!44534 true))

(declare-fun array_inv!10962 (array!31604) Bool)

(assert (=> start!44534 (array_inv!10962 a!3235)))

(declare-fun b!488516 () Bool)

(declare-fun res!291713 () Bool)

(assert (=> b!488516 (=> (not res!291713) (not e!287377))))

(declare-fun arrayContainsKey!0 (array!31604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488516 (= res!291713 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44534 res!291706) b!488509))

(assert (= (and b!488509 res!291708) b!488511))

(assert (= (and b!488511 res!291709) b!488515))

(assert (= (and b!488515 res!291705) b!488516))

(assert (= (and b!488516 res!291713) b!488508))

(assert (= (and b!488508 res!291712) b!488510))

(assert (= (and b!488510 res!291707) b!488513))

(assert (= (and b!488513 res!291710) b!488512))

(assert (= (and b!488512 res!291711) b!488514))

(declare-fun m!468259 () Bool)

(assert (=> b!488510 m!468259))

(declare-fun m!468261 () Bool)

(assert (=> b!488513 m!468261))

(declare-fun m!468263 () Bool)

(assert (=> b!488508 m!468263))

(declare-fun m!468265 () Bool)

(assert (=> b!488511 m!468265))

(assert (=> b!488511 m!468265))

(declare-fun m!468267 () Bool)

(assert (=> b!488511 m!468267))

(declare-fun m!468269 () Bool)

(assert (=> b!488515 m!468269))

(declare-fun m!468271 () Bool)

(assert (=> start!44534 m!468271))

(declare-fun m!468273 () Bool)

(assert (=> start!44534 m!468273))

(declare-fun m!468275 () Bool)

(assert (=> b!488516 m!468275))

(assert (=> b!488514 m!468265))

(assert (=> b!488514 m!468265))

(declare-fun m!468277 () Bool)

(assert (=> b!488514 m!468277))

(declare-fun m!468279 () Bool)

(assert (=> b!488512 m!468279))

(declare-fun m!468281 () Bool)

(assert (=> b!488512 m!468281))

(declare-fun m!468283 () Bool)

(assert (=> b!488512 m!468283))

(declare-fun m!468285 () Bool)

(assert (=> b!488512 m!468285))

(assert (=> b!488512 m!468283))

(declare-fun m!468287 () Bool)

(assert (=> b!488512 m!468287))

(push 1)

(assert (not b!488512))

(assert (not start!44534))

(assert (not b!488514))

(assert (not b!488516))

(assert (not b!488515))

(assert (not b!488508))

(assert (not b!488511))

(assert (not b!488510))

(assert (not b!488513))

(check-sat)

(pop 1)

(push 1)

