; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44276 () Bool)

(assert start!44276)

(declare-fun res!290133 () Bool)

(declare-fun e!286416 () Bool)

(assert (=> start!44276 (=> (not res!290133) (not e!286416))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44276 (= res!290133 (validMask!0 mask!3524))))

(assert (=> start!44276 e!286416))

(assert (=> start!44276 true))

(declare-datatypes ((array!31487 0))(
  ( (array!31488 (arr!15134 (Array (_ BitVec 32) (_ BitVec 64))) (size!15498 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31487)

(declare-fun array_inv!10908 (array!31487) Bool)

(assert (=> start!44276 (array_inv!10908 a!3235)))

(declare-fun b!486593 () Bool)

(declare-fun res!290134 () Bool)

(assert (=> b!486593 (=> (not res!290134) (not e!286416))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486593 (= res!290134 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486594 () Bool)

(declare-fun e!286415 () Bool)

(assert (=> b!486594 (= e!286416 e!286415)))

(declare-fun res!290132 () Bool)

(assert (=> b!486594 (=> (not res!290132) (not e!286415))))

(declare-datatypes ((SeekEntryResult!3608 0))(
  ( (MissingZero!3608 (index!16611 (_ BitVec 32))) (Found!3608 (index!16612 (_ BitVec 32))) (Intermediate!3608 (undefined!4420 Bool) (index!16613 (_ BitVec 32)) (x!45767 (_ BitVec 32))) (Undefined!3608) (MissingVacant!3608 (index!16614 (_ BitVec 32))) )
))
(declare-fun lt!219817 () SeekEntryResult!3608)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486594 (= res!290132 (or (= lt!219817 (MissingZero!3608 i!1204)) (= lt!219817 (MissingVacant!3608 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31487 (_ BitVec 32)) SeekEntryResult!3608)

(assert (=> b!486594 (= lt!219817 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486595 () Bool)

(declare-fun res!290135 () Bool)

(assert (=> b!486595 (=> (not res!290135) (not e!286416))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486595 (= res!290135 (validKeyInArray!0 (select (arr!15134 a!3235) j!176)))))

(declare-fun b!486596 () Bool)

(declare-fun res!290129 () Bool)

(assert (=> b!486596 (=> (not res!290129) (not e!286416))))

(assert (=> b!486596 (= res!290129 (and (= (size!15498 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15498 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15498 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486597 () Bool)

(declare-fun res!290131 () Bool)

(assert (=> b!486597 (=> (not res!290131) (not e!286416))))

(assert (=> b!486597 (= res!290131 (validKeyInArray!0 k!2280))))

(declare-fun b!486598 () Bool)

(declare-fun res!290130 () Bool)

(assert (=> b!486598 (=> (not res!290130) (not e!286415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31487 (_ BitVec 32)) Bool)

(assert (=> b!486598 (= res!290130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486599 () Bool)

(assert (=> b!486599 (= e!286415 false)))

(declare-fun lt!219818 () Bool)

(declare-datatypes ((List!9345 0))(
  ( (Nil!9342) (Cons!9341 (h!10197 (_ BitVec 64)) (t!15581 List!9345)) )
))
(declare-fun arrayNoDuplicates!0 (array!31487 (_ BitVec 32) List!9345) Bool)

(assert (=> b!486599 (= lt!219818 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9342))))

(assert (= (and start!44276 res!290133) b!486596))

(assert (= (and b!486596 res!290129) b!486595))

(assert (= (and b!486595 res!290135) b!486597))

(assert (= (and b!486597 res!290131) b!486593))

(assert (= (and b!486593 res!290134) b!486594))

(assert (= (and b!486594 res!290132) b!486598))

(assert (= (and b!486598 res!290130) b!486599))

(declare-fun m!466519 () Bool)

(assert (=> b!486595 m!466519))

(assert (=> b!486595 m!466519))

(declare-fun m!466521 () Bool)

(assert (=> b!486595 m!466521))

(declare-fun m!466523 () Bool)

(assert (=> start!44276 m!466523))

(declare-fun m!466525 () Bool)

(assert (=> start!44276 m!466525))

(declare-fun m!466527 () Bool)

(assert (=> b!486594 m!466527))

(declare-fun m!466529 () Bool)

(assert (=> b!486597 m!466529))

(declare-fun m!466531 () Bool)

(assert (=> b!486593 m!466531))

(declare-fun m!466533 () Bool)

(assert (=> b!486598 m!466533))

(declare-fun m!466535 () Bool)

(assert (=> b!486599 m!466535))

(push 1)

(assert (not b!486595))

(assert (not b!486594))

(assert (not b!486599))

