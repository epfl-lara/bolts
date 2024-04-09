; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25430 () Bool)

(assert start!25430)

(declare-fun b!264695 () Bool)

(declare-fun e!171477 () Bool)

(declare-fun mask!4002 () (_ BitVec 32))

(assert (=> b!264695 (= e!171477 (bvslt mask!4002 #b00000000000000000000000000000000))))

(declare-fun res!129245 () Bool)

(assert (=> start!25430 (=> (not res!129245) (not e!171477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25430 (= res!129245 (validMask!0 mask!4002))))

(assert (=> start!25430 e!171477))

(assert (=> start!25430 true))

(declare-datatypes ((array!12713 0))(
  ( (array!12714 (arr!6015 (Array (_ BitVec 32) (_ BitVec 64))) (size!6367 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12713)

(declare-fun array_inv!3969 (array!12713) Bool)

(assert (=> start!25430 (array_inv!3969 a!3436)))

(declare-fun b!264696 () Bool)

(declare-fun res!129249 () Bool)

(assert (=> b!264696 (=> (not res!129249) (not e!171477))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun i!1355 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1217 0))(
  ( (MissingZero!1217 (index!7038 (_ BitVec 32))) (Found!1217 (index!7039 (_ BitVec 32))) (Intermediate!1217 (undefined!2029 Bool) (index!7040 (_ BitVec 32)) (x!25334 (_ BitVec 32))) (Undefined!1217) (MissingVacant!1217 (index!7041 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12713 (_ BitVec 32)) SeekEntryResult!1217)

(assert (=> b!264696 (= res!129249 (not (= (seekEntryOrOpen!0 k!2698 a!3436 mask!4002) (MissingZero!1217 i!1355))))))

(declare-fun b!264697 () Bool)

(declare-fun res!129248 () Bool)

(assert (=> b!264697 (=> (not res!129248) (not e!171477))))

(declare-fun arrayContainsKey!0 (array!12713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264697 (= res!129248 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264698 () Bool)

(declare-fun res!129246 () Bool)

(assert (=> b!264698 (=> (not res!129246) (not e!171477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264698 (= res!129246 (validKeyInArray!0 k!2698))))

(declare-fun b!264699 () Bool)

(declare-fun res!129247 () Bool)

(assert (=> b!264699 (=> (not res!129247) (not e!171477))))

(assert (=> b!264699 (= res!129247 (and (= (size!6367 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6367 a!3436))))))

(assert (= (and start!25430 res!129245) b!264699))

(assert (= (and b!264699 res!129247) b!264698))

(assert (= (and b!264698 res!129246) b!264697))

(assert (= (and b!264697 res!129248) b!264696))

(assert (= (and b!264696 res!129249) b!264695))

(declare-fun m!281713 () Bool)

(assert (=> start!25430 m!281713))

(declare-fun m!281715 () Bool)

(assert (=> start!25430 m!281715))

(declare-fun m!281717 () Bool)

(assert (=> b!264696 m!281717))

(declare-fun m!281719 () Bool)

(assert (=> b!264697 m!281719))

(declare-fun m!281721 () Bool)

(assert (=> b!264698 m!281721))

(push 1)

(assert (not b!264697))

(assert (not b!264696))

(assert (not start!25430))

(assert (not b!264698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

