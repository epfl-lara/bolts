; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44272 () Bool)

(assert start!44272)

(declare-fun b!486551 () Bool)

(declare-fun e!286397 () Bool)

(declare-fun e!286398 () Bool)

(assert (=> b!486551 (= e!286397 e!286398)))

(declare-fun res!290091 () Bool)

(assert (=> b!486551 (=> (not res!290091) (not e!286398))))

(declare-datatypes ((SeekEntryResult!3606 0))(
  ( (MissingZero!3606 (index!16603 (_ BitVec 32))) (Found!3606 (index!16604 (_ BitVec 32))) (Intermediate!3606 (undefined!4418 Bool) (index!16605 (_ BitVec 32)) (x!45765 (_ BitVec 32))) (Undefined!3606) (MissingVacant!3606 (index!16606 (_ BitVec 32))) )
))
(declare-fun lt!219805 () SeekEntryResult!3606)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486551 (= res!290091 (or (= lt!219805 (MissingZero!3606 i!1204)) (= lt!219805 (MissingVacant!3606 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31483 0))(
  ( (array!31484 (arr!15132 (Array (_ BitVec 32) (_ BitVec 64))) (size!15496 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31483)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31483 (_ BitVec 32)) SeekEntryResult!3606)

(assert (=> b!486551 (= lt!219805 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486552 () Bool)

(declare-fun res!290088 () Bool)

(assert (=> b!486552 (=> (not res!290088) (not e!286397))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486552 (= res!290088 (and (= (size!15496 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15496 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15496 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486553 () Bool)

(declare-fun res!290092 () Bool)

(assert (=> b!486553 (=> (not res!290092) (not e!286398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31483 (_ BitVec 32)) Bool)

(assert (=> b!486553 (= res!290092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486554 () Bool)

(declare-fun res!290090 () Bool)

(assert (=> b!486554 (=> (not res!290090) (not e!286397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486554 (= res!290090 (validKeyInArray!0 k!2280))))

(declare-fun b!486555 () Bool)

(declare-fun res!290093 () Bool)

(assert (=> b!486555 (=> (not res!290093) (not e!286397))))

(declare-fun arrayContainsKey!0 (array!31483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486555 (= res!290093 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!290089 () Bool)

(assert (=> start!44272 (=> (not res!290089) (not e!286397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44272 (= res!290089 (validMask!0 mask!3524))))

(assert (=> start!44272 e!286397))

(assert (=> start!44272 true))

(declare-fun array_inv!10906 (array!31483) Bool)

(assert (=> start!44272 (array_inv!10906 a!3235)))

(declare-fun b!486556 () Bool)

(assert (=> b!486556 (= e!286398 false)))

(declare-fun lt!219806 () Bool)

(declare-datatypes ((List!9343 0))(
  ( (Nil!9340) (Cons!9339 (h!10195 (_ BitVec 64)) (t!15579 List!9343)) )
))
(declare-fun arrayNoDuplicates!0 (array!31483 (_ BitVec 32) List!9343) Bool)

(assert (=> b!486556 (= lt!219806 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9340))))

(declare-fun b!486557 () Bool)

(declare-fun res!290087 () Bool)

(assert (=> b!486557 (=> (not res!290087) (not e!286397))))

(assert (=> b!486557 (= res!290087 (validKeyInArray!0 (select (arr!15132 a!3235) j!176)))))

(assert (= (and start!44272 res!290089) b!486552))

(assert (= (and b!486552 res!290088) b!486557))

(assert (= (and b!486557 res!290087) b!486554))

(assert (= (and b!486554 res!290090) b!486555))

(assert (= (and b!486555 res!290093) b!486551))

(assert (= (and b!486551 res!290091) b!486553))

(assert (= (and b!486553 res!290092) b!486556))

(declare-fun m!466483 () Bool)

(assert (=> start!44272 m!466483))

(declare-fun m!466485 () Bool)

(assert (=> start!44272 m!466485))

(declare-fun m!466487 () Bool)

(assert (=> b!486555 m!466487))

(declare-fun m!466489 () Bool)

(assert (=> b!486553 m!466489))

(declare-fun m!466491 () Bool)

(assert (=> b!486557 m!466491))

(assert (=> b!486557 m!466491))

(declare-fun m!466493 () Bool)

(assert (=> b!486557 m!466493))

(declare-fun m!466495 () Bool)

(assert (=> b!486556 m!466495))

(declare-fun m!466497 () Bool)

(assert (=> b!486551 m!466497))

(declare-fun m!466499 () Bool)

(assert (=> b!486554 m!466499))

(push 1)

