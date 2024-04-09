; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25422 () Bool)

(assert start!25422)

(declare-fun b!264640 () Bool)

(declare-fun res!129191 () Bool)

(declare-fun e!171453 () Bool)

(assert (=> b!264640 (=> (not res!129191) (not e!171453))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264640 (= res!129191 (validKeyInArray!0 k0!2698))))

(declare-fun b!264641 () Bool)

(declare-fun res!129189 () Bool)

(assert (=> b!264641 (=> (not res!129189) (not e!171453))))

(declare-datatypes ((array!12705 0))(
  ( (array!12706 (arr!6011 (Array (_ BitVec 32) (_ BitVec 64))) (size!6363 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12705)

(declare-fun arrayContainsKey!0 (array!12705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264641 (= res!129189 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264639 () Bool)

(declare-fun res!129190 () Bool)

(assert (=> b!264639 (=> (not res!129190) (not e!171453))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264639 (= res!129190 (and (= (size!6363 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6363 a!3436))))))

(declare-fun b!264642 () Bool)

(assert (=> b!264642 (= e!171453 false)))

(declare-datatypes ((SeekEntryResult!1213 0))(
  ( (MissingZero!1213 (index!7022 (_ BitVec 32))) (Found!1213 (index!7023 (_ BitVec 32))) (Intermediate!1213 (undefined!2025 Bool) (index!7024 (_ BitVec 32)) (x!25322 (_ BitVec 32))) (Undefined!1213) (MissingVacant!1213 (index!7025 (_ BitVec 32))) )
))
(declare-fun lt!133913 () SeekEntryResult!1213)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12705 (_ BitVec 32)) SeekEntryResult!1213)

(assert (=> b!264642 (= lt!133913 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!129192 () Bool)

(assert (=> start!25422 (=> (not res!129192) (not e!171453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25422 (= res!129192 (validMask!0 mask!4002))))

(assert (=> start!25422 e!171453))

(assert (=> start!25422 true))

(declare-fun array_inv!3965 (array!12705) Bool)

(assert (=> start!25422 (array_inv!3965 a!3436)))

(assert (= (and start!25422 res!129192) b!264639))

(assert (= (and b!264639 res!129190) b!264640))

(assert (= (and b!264640 res!129191) b!264641))

(assert (= (and b!264641 res!129189) b!264642))

(declare-fun m!281673 () Bool)

(assert (=> b!264640 m!281673))

(declare-fun m!281675 () Bool)

(assert (=> b!264641 m!281675))

(declare-fun m!281677 () Bool)

(assert (=> b!264642 m!281677))

(declare-fun m!281679 () Bool)

(assert (=> start!25422 m!281679))

(declare-fun m!281681 () Bool)

(assert (=> start!25422 m!281681))

(check-sat (not b!264641) (not start!25422) (not b!264642) (not b!264640))
