; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44290 () Bool)

(assert start!44290)

(declare-fun b!486740 () Bool)

(declare-fun res!290276 () Bool)

(declare-fun e!286480 () Bool)

(assert (=> b!486740 (=> (not res!290276) (not e!286480))))

(declare-datatypes ((array!31501 0))(
  ( (array!31502 (arr!15141 (Array (_ BitVec 32) (_ BitVec 64))) (size!15505 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31501)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486740 (= res!290276 (validKeyInArray!0 (select (arr!15141 a!3235) j!176)))))

(declare-fun b!486741 () Bool)

(declare-fun e!286479 () Bool)

(assert (=> b!486741 (= e!286479 false)))

(declare-fun lt!219859 () Bool)

(declare-datatypes ((List!9352 0))(
  ( (Nil!9349) (Cons!9348 (h!10204 (_ BitVec 64)) (t!15588 List!9352)) )
))
(declare-fun arrayNoDuplicates!0 (array!31501 (_ BitVec 32) List!9352) Bool)

(assert (=> b!486741 (= lt!219859 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9349))))

(declare-fun b!486742 () Bool)

(declare-fun res!290280 () Bool)

(assert (=> b!486742 (=> (not res!290280) (not e!286479))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31501 (_ BitVec 32)) Bool)

(assert (=> b!486742 (= res!290280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486744 () Bool)

(declare-fun res!290278 () Bool)

(assert (=> b!486744 (=> (not res!290278) (not e!286480))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486744 (= res!290278 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486745 () Bool)

(declare-fun res!290277 () Bool)

(assert (=> b!486745 (=> (not res!290277) (not e!286480))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486745 (= res!290277 (and (= (size!15505 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15505 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15505 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486746 () Bool)

(declare-fun res!290281 () Bool)

(assert (=> b!486746 (=> (not res!290281) (not e!286480))))

(assert (=> b!486746 (= res!290281 (validKeyInArray!0 k!2280))))

(declare-fun b!486743 () Bool)

(assert (=> b!486743 (= e!286480 e!286479)))

(declare-fun res!290279 () Bool)

(assert (=> b!486743 (=> (not res!290279) (not e!286479))))

(declare-datatypes ((SeekEntryResult!3615 0))(
  ( (MissingZero!3615 (index!16639 (_ BitVec 32))) (Found!3615 (index!16640 (_ BitVec 32))) (Intermediate!3615 (undefined!4427 Bool) (index!16641 (_ BitVec 32)) (x!45798 (_ BitVec 32))) (Undefined!3615) (MissingVacant!3615 (index!16642 (_ BitVec 32))) )
))
(declare-fun lt!219860 () SeekEntryResult!3615)

(assert (=> b!486743 (= res!290279 (or (= lt!219860 (MissingZero!3615 i!1204)) (= lt!219860 (MissingVacant!3615 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31501 (_ BitVec 32)) SeekEntryResult!3615)

(assert (=> b!486743 (= lt!219860 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!290282 () Bool)

(assert (=> start!44290 (=> (not res!290282) (not e!286480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44290 (= res!290282 (validMask!0 mask!3524))))

(assert (=> start!44290 e!286480))

(assert (=> start!44290 true))

(declare-fun array_inv!10915 (array!31501) Bool)

(assert (=> start!44290 (array_inv!10915 a!3235)))

(assert (= (and start!44290 res!290282) b!486745))

(assert (= (and b!486745 res!290277) b!486740))

(assert (= (and b!486740 res!290276) b!486746))

(assert (= (and b!486746 res!290281) b!486744))

(assert (= (and b!486744 res!290278) b!486743))

(assert (= (and b!486743 res!290279) b!486742))

(assert (= (and b!486742 res!290280) b!486741))

(declare-fun m!466645 () Bool)

(assert (=> b!486746 m!466645))

(declare-fun m!466647 () Bool)

(assert (=> b!486742 m!466647))

(declare-fun m!466649 () Bool)

(assert (=> b!486743 m!466649))

(declare-fun m!466651 () Bool)

(assert (=> b!486740 m!466651))

(assert (=> b!486740 m!466651))

(declare-fun m!466653 () Bool)

(assert (=> b!486740 m!466653))

(declare-fun m!466655 () Bool)

(assert (=> b!486744 m!466655))

(declare-fun m!466657 () Bool)

(assert (=> start!44290 m!466657))

(declare-fun m!466659 () Bool)

(assert (=> start!44290 m!466659))

(declare-fun m!466661 () Bool)

(assert (=> b!486741 m!466661))

(push 1)

