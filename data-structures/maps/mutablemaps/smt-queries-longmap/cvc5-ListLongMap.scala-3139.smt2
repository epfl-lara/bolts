; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44266 () Bool)

(assert start!44266)

(declare-fun b!486488 () Bool)

(declare-fun res!290030 () Bool)

(declare-fun e!286370 () Bool)

(assert (=> b!486488 (=> (not res!290030) (not e!286370))))

(declare-datatypes ((array!31477 0))(
  ( (array!31478 (arr!15129 (Array (_ BitVec 32) (_ BitVec 64))) (size!15493 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31477)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31477 (_ BitVec 32)) Bool)

(assert (=> b!486488 (= res!290030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486489 () Bool)

(declare-fun res!290024 () Bool)

(declare-fun e!286371 () Bool)

(assert (=> b!486489 (=> (not res!290024) (not e!286371))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486489 (= res!290024 (validKeyInArray!0 (select (arr!15129 a!3235) j!176)))))

(declare-fun b!486491 () Bool)

(declare-fun res!290027 () Bool)

(assert (=> b!486491 (=> (not res!290027) (not e!286371))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486491 (= res!290027 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486492 () Bool)

(declare-fun res!290029 () Bool)

(assert (=> b!486492 (=> (not res!290029) (not e!286371))))

(assert (=> b!486492 (= res!290029 (validKeyInArray!0 k!2280))))

(declare-fun b!486493 () Bool)

(assert (=> b!486493 (= e!286371 e!286370)))

(declare-fun res!290026 () Bool)

(assert (=> b!486493 (=> (not res!290026) (not e!286370))))

(declare-datatypes ((SeekEntryResult!3603 0))(
  ( (MissingZero!3603 (index!16591 (_ BitVec 32))) (Found!3603 (index!16592 (_ BitVec 32))) (Intermediate!3603 (undefined!4415 Bool) (index!16593 (_ BitVec 32)) (x!45754 (_ BitVec 32))) (Undefined!3603) (MissingVacant!3603 (index!16594 (_ BitVec 32))) )
))
(declare-fun lt!219787 () SeekEntryResult!3603)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486493 (= res!290026 (or (= lt!219787 (MissingZero!3603 i!1204)) (= lt!219787 (MissingVacant!3603 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31477 (_ BitVec 32)) SeekEntryResult!3603)

(assert (=> b!486493 (= lt!219787 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486494 () Bool)

(assert (=> b!486494 (= e!286370 false)))

(declare-fun lt!219788 () Bool)

(declare-datatypes ((List!9340 0))(
  ( (Nil!9337) (Cons!9336 (h!10192 (_ BitVec 64)) (t!15576 List!9340)) )
))
(declare-fun arrayNoDuplicates!0 (array!31477 (_ BitVec 32) List!9340) Bool)

(assert (=> b!486494 (= lt!219788 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9337))))

(declare-fun res!290028 () Bool)

(assert (=> start!44266 (=> (not res!290028) (not e!286371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44266 (= res!290028 (validMask!0 mask!3524))))

(assert (=> start!44266 e!286371))

(assert (=> start!44266 true))

(declare-fun array_inv!10903 (array!31477) Bool)

(assert (=> start!44266 (array_inv!10903 a!3235)))

(declare-fun b!486490 () Bool)

(declare-fun res!290025 () Bool)

(assert (=> b!486490 (=> (not res!290025) (not e!286371))))

(assert (=> b!486490 (= res!290025 (and (= (size!15493 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15493 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15493 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44266 res!290028) b!486490))

(assert (= (and b!486490 res!290025) b!486489))

(assert (= (and b!486489 res!290024) b!486492))

(assert (= (and b!486492 res!290029) b!486491))

(assert (= (and b!486491 res!290027) b!486493))

(assert (= (and b!486493 res!290026) b!486488))

(assert (= (and b!486488 res!290030) b!486494))

(declare-fun m!466429 () Bool)

(assert (=> b!486494 m!466429))

(declare-fun m!466431 () Bool)

(assert (=> b!486492 m!466431))

(declare-fun m!466433 () Bool)

(assert (=> start!44266 m!466433))

(declare-fun m!466435 () Bool)

(assert (=> start!44266 m!466435))

(declare-fun m!466437 () Bool)

(assert (=> b!486489 m!466437))

(assert (=> b!486489 m!466437))

(declare-fun m!466439 () Bool)

(assert (=> b!486489 m!466439))

(declare-fun m!466441 () Bool)

(assert (=> b!486493 m!466441))

(declare-fun m!466443 () Bool)

(assert (=> b!486488 m!466443))

(declare-fun m!466445 () Bool)

(assert (=> b!486491 m!466445))

(push 1)

