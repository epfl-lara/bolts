; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25428 () Bool)

(assert start!25428)

(declare-fun b!264680 () Bool)

(declare-fun res!129234 () Bool)

(declare-fun e!171472 () Bool)

(assert (=> b!264680 (=> (not res!129234) (not e!171472))))

(declare-datatypes ((array!12711 0))(
  ( (array!12712 (arr!6014 (Array (_ BitVec 32) (_ BitVec 64))) (size!6366 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12711)

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264680 (= res!129234 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264681 () Bool)

(declare-fun res!129231 () Bool)

(assert (=> b!264681 (=> (not res!129231) (not e!171472))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264681 (= res!129231 (and (= (size!6366 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6366 a!3436))))))

(declare-fun b!264682 () Bool)

(declare-fun res!129233 () Bool)

(assert (=> b!264682 (=> (not res!129233) (not e!171472))))

(declare-datatypes ((SeekEntryResult!1216 0))(
  ( (MissingZero!1216 (index!7034 (_ BitVec 32))) (Found!1216 (index!7035 (_ BitVec 32))) (Intermediate!1216 (undefined!2028 Bool) (index!7036 (_ BitVec 32)) (x!25333 (_ BitVec 32))) (Undefined!1216) (MissingVacant!1216 (index!7037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12711 (_ BitVec 32)) SeekEntryResult!1216)

(assert (=> b!264682 (= res!129233 (not (= (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002) (MissingZero!1216 i!1355))))))

(declare-fun res!129232 () Bool)

(assert (=> start!25428 (=> (not res!129232) (not e!171472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25428 (= res!129232 (validMask!0 mask!4002))))

(assert (=> start!25428 e!171472))

(assert (=> start!25428 true))

(declare-fun array_inv!3968 (array!12711) Bool)

(assert (=> start!25428 (array_inv!3968 a!3436)))

(declare-fun b!264683 () Bool)

(assert (=> b!264683 (= e!171472 (bvslt mask!4002 #b00000000000000000000000000000000))))

(declare-fun b!264684 () Bool)

(declare-fun res!129230 () Bool)

(assert (=> b!264684 (=> (not res!129230) (not e!171472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264684 (= res!129230 (validKeyInArray!0 k0!2698))))

(assert (= (and start!25428 res!129232) b!264681))

(assert (= (and b!264681 res!129231) b!264684))

(assert (= (and b!264684 res!129230) b!264680))

(assert (= (and b!264680 res!129234) b!264682))

(assert (= (and b!264682 res!129233) b!264683))

(declare-fun m!281703 () Bool)

(assert (=> b!264680 m!281703))

(declare-fun m!281705 () Bool)

(assert (=> b!264682 m!281705))

(declare-fun m!281707 () Bool)

(assert (=> start!25428 m!281707))

(declare-fun m!281709 () Bool)

(assert (=> start!25428 m!281709))

(declare-fun m!281711 () Bool)

(assert (=> b!264684 m!281711))

(check-sat (not b!264682) (not b!264680) (not start!25428) (not b!264684))
(check-sat)
