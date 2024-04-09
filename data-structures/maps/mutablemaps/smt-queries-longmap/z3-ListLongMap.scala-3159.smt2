; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44538 () Bool)

(assert start!44538)

(declare-fun b!488562 () Bool)

(declare-fun res!291765 () Bool)

(declare-fun e!287404 () Bool)

(assert (=> b!488562 (=> (not res!291765) (not e!287404))))

(declare-datatypes ((array!31608 0))(
  ( (array!31609 (arr!15190 (Array (_ BitVec 32) (_ BitVec 64))) (size!15554 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31608)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488562 (= res!291765 (validKeyInArray!0 (select (arr!15190 a!3235) j!176)))))

(declare-fun b!488563 () Bool)

(declare-fun e!287401 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!488563 (= e!287401 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!220483 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488563 (= lt!220483 (toIndex!0 (select (store (arr!15190 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(declare-fun e!287402 () Bool)

(assert (=> b!488563 e!287402))

(declare-fun res!291764 () Bool)

(assert (=> b!488563 (=> (not res!291764) (not e!287402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31608 (_ BitVec 32)) Bool)

(assert (=> b!488563 (= res!291764 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14266 0))(
  ( (Unit!14267) )
))
(declare-fun lt!220484 () Unit!14266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14266)

(assert (=> b!488563 (= lt!220484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488564 () Bool)

(declare-fun res!291759 () Bool)

(assert (=> b!488564 (=> (not res!291759) (not e!287404))))

(declare-fun arrayContainsKey!0 (array!31608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488564 (= res!291759 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488566 () Bool)

(assert (=> b!488566 (= e!287404 e!287401)))

(declare-fun res!291760 () Bool)

(assert (=> b!488566 (=> (not res!291760) (not e!287401))))

(declare-datatypes ((SeekEntryResult!3664 0))(
  ( (MissingZero!3664 (index!16835 (_ BitVec 32))) (Found!3664 (index!16836 (_ BitVec 32))) (Intermediate!3664 (undefined!4476 Bool) (index!16837 (_ BitVec 32)) (x!45978 (_ BitVec 32))) (Undefined!3664) (MissingVacant!3664 (index!16838 (_ BitVec 32))) )
))
(declare-fun lt!220482 () SeekEntryResult!3664)

(assert (=> b!488566 (= res!291760 (or (= lt!220482 (MissingZero!3664 i!1204)) (= lt!220482 (MissingVacant!3664 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31608 (_ BitVec 32)) SeekEntryResult!3664)

(assert (=> b!488566 (= lt!220482 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488567 () Bool)

(declare-fun res!291763 () Bool)

(assert (=> b!488567 (=> (not res!291763) (not e!287401))))

(assert (=> b!488567 (= res!291763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488568 () Bool)

(declare-fun res!291762 () Bool)

(assert (=> b!488568 (=> (not res!291762) (not e!287404))))

(assert (=> b!488568 (= res!291762 (and (= (size!15554 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15554 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15554 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488569 () Bool)

(assert (=> b!488569 (= e!287402 (= (seekEntryOrOpen!0 (select (arr!15190 a!3235) j!176) a!3235 mask!3524) (Found!3664 j!176)))))

(declare-fun b!488570 () Bool)

(declare-fun res!291767 () Bool)

(assert (=> b!488570 (=> (not res!291767) (not e!287404))))

(assert (=> b!488570 (= res!291767 (validKeyInArray!0 k0!2280))))

(declare-fun b!488565 () Bool)

(declare-fun res!291766 () Bool)

(assert (=> b!488565 (=> (not res!291766) (not e!287401))))

(declare-datatypes ((List!9401 0))(
  ( (Nil!9398) (Cons!9397 (h!10256 (_ BitVec 64)) (t!15637 List!9401)) )
))
(declare-fun arrayNoDuplicates!0 (array!31608 (_ BitVec 32) List!9401) Bool)

(assert (=> b!488565 (= res!291766 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9398))))

(declare-fun res!291761 () Bool)

(assert (=> start!44538 (=> (not res!291761) (not e!287404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44538 (= res!291761 (validMask!0 mask!3524))))

(assert (=> start!44538 e!287404))

(assert (=> start!44538 true))

(declare-fun array_inv!10964 (array!31608) Bool)

(assert (=> start!44538 (array_inv!10964 a!3235)))

(assert (= (and start!44538 res!291761) b!488568))

(assert (= (and b!488568 res!291762) b!488562))

(assert (= (and b!488562 res!291765) b!488570))

(assert (= (and b!488570 res!291767) b!488564))

(assert (= (and b!488564 res!291759) b!488566))

(assert (= (and b!488566 res!291760) b!488567))

(assert (= (and b!488567 res!291763) b!488565))

(assert (= (and b!488565 res!291766) b!488563))

(assert (= (and b!488563 res!291764) b!488569))

(declare-fun m!468319 () Bool)

(assert (=> b!488567 m!468319))

(declare-fun m!468321 () Bool)

(assert (=> b!488563 m!468321))

(declare-fun m!468323 () Bool)

(assert (=> b!488563 m!468323))

(declare-fun m!468325 () Bool)

(assert (=> b!488563 m!468325))

(declare-fun m!468327 () Bool)

(assert (=> b!488563 m!468327))

(assert (=> b!488563 m!468325))

(declare-fun m!468329 () Bool)

(assert (=> b!488563 m!468329))

(declare-fun m!468331 () Bool)

(assert (=> b!488565 m!468331))

(declare-fun m!468333 () Bool)

(assert (=> b!488564 m!468333))

(declare-fun m!468335 () Bool)

(assert (=> b!488566 m!468335))

(declare-fun m!468337 () Bool)

(assert (=> b!488570 m!468337))

(declare-fun m!468339 () Bool)

(assert (=> b!488569 m!468339))

(assert (=> b!488569 m!468339))

(declare-fun m!468341 () Bool)

(assert (=> b!488569 m!468341))

(assert (=> b!488562 m!468339))

(assert (=> b!488562 m!468339))

(declare-fun m!468343 () Bool)

(assert (=> b!488562 m!468343))

(declare-fun m!468345 () Bool)

(assert (=> start!44538 m!468345))

(declare-fun m!468347 () Bool)

(assert (=> start!44538 m!468347))

(check-sat (not b!488564) (not start!44538) (not b!488570) (not b!488562) (not b!488567) (not b!488566) (not b!488565) (not b!488563) (not b!488569))
(check-sat)
