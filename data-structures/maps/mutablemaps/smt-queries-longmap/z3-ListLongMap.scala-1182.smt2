; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25446 () Bool)

(assert start!25446)

(declare-fun res!129344 () Bool)

(declare-fun e!171526 () Bool)

(assert (=> start!25446 (=> (not res!129344) (not e!171526))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25446 (= res!129344 (validMask!0 mask!4002))))

(assert (=> start!25446 e!171526))

(assert (=> start!25446 true))

(declare-datatypes ((array!12729 0))(
  ( (array!12730 (arr!6023 (Array (_ BitVec 32) (_ BitVec 64))) (size!6375 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12729)

(declare-fun array_inv!3977 (array!12729) Bool)

(assert (=> start!25446 (array_inv!3977 a!3436)))

(declare-fun b!264793 () Bool)

(declare-fun res!129345 () Bool)

(assert (=> b!264793 (=> (not res!129345) (not e!171526))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264793 (= res!129345 (validKeyInArray!0 k0!2698))))

(declare-fun b!264794 () Bool)

(declare-fun res!129343 () Bool)

(assert (=> b!264794 (=> (not res!129343) (not e!171526))))

(declare-fun arrayContainsKey!0 (array!12729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264794 (= res!129343 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264795 () Bool)

(assert (=> b!264795 (= e!171526 false)))

(declare-datatypes ((SeekEntryResult!1225 0))(
  ( (MissingZero!1225 (index!7070 (_ BitVec 32))) (Found!1225 (index!7071 (_ BitVec 32))) (Intermediate!1225 (undefined!2037 Bool) (index!7072 (_ BitVec 32)) (x!25366 (_ BitVec 32))) (Undefined!1225) (MissingVacant!1225 (index!7073 (_ BitVec 32))) )
))
(declare-fun lt!133940 () SeekEntryResult!1225)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12729 (_ BitVec 32)) SeekEntryResult!1225)

(assert (=> b!264795 (= lt!133940 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!264792 () Bool)

(declare-fun res!129342 () Bool)

(assert (=> b!264792 (=> (not res!129342) (not e!171526))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264792 (= res!129342 (and (= (size!6375 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6375 a!3436))))))

(assert (= (and start!25446 res!129344) b!264792))

(assert (= (and b!264792 res!129342) b!264793))

(assert (= (and b!264793 res!129345) b!264794))

(assert (= (and b!264794 res!129343) b!264795))

(declare-fun m!281793 () Bool)

(assert (=> start!25446 m!281793))

(declare-fun m!281795 () Bool)

(assert (=> start!25446 m!281795))

(declare-fun m!281797 () Bool)

(assert (=> b!264793 m!281797))

(declare-fun m!281799 () Bool)

(assert (=> b!264794 m!281799))

(declare-fun m!281801 () Bool)

(assert (=> b!264795 m!281801))

(check-sat (not b!264795) (not start!25446) (not b!264794) (not b!264793))
