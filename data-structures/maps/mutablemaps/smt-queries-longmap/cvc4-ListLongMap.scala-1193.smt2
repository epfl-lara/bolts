; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25640 () Bool)

(assert start!25640)

(declare-fun b!265762 () Bool)

(declare-fun e!172085 () Bool)

(declare-fun e!172087 () Bool)

(assert (=> b!265762 (= e!172085 e!172087)))

(declare-fun res!130100 () Bool)

(assert (=> b!265762 (=> (not res!130100) (not e!172087))))

(declare-datatypes ((SeekEntryResult!1259 0))(
  ( (MissingZero!1259 (index!7206 (_ BitVec 32))) (Found!1259 (index!7207 (_ BitVec 32))) (Intermediate!1259 (undefined!2071 Bool) (index!7208 (_ BitVec 32)) (x!25488 (_ BitVec 32))) (Undefined!1259) (MissingVacant!1259 (index!7209 (_ BitVec 32))) )
))
(declare-fun lt!134252 () SeekEntryResult!1259)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265762 (= res!130100 (or (= lt!134252 (MissingZero!1259 i!1355)) (= lt!134252 (MissingVacant!1259 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12806 0))(
  ( (array!12807 (arr!6057 (Array (_ BitVec 32) (_ BitVec 64))) (size!6409 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12806)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12806 (_ BitVec 32)) SeekEntryResult!1259)

(assert (=> b!265762 (= lt!134252 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265763 () Bool)

(declare-fun res!130096 () Bool)

(assert (=> b!265763 (=> (not res!130096) (not e!172085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265763 (= res!130096 (validKeyInArray!0 k!2698))))

(declare-fun b!265764 () Bool)

(declare-fun res!130097 () Bool)

(assert (=> b!265764 (=> (not res!130097) (not e!172085))))

(assert (=> b!265764 (= res!130097 (and (= (size!6409 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6409 a!3436))))))

(declare-fun res!130099 () Bool)

(assert (=> start!25640 (=> (not res!130099) (not e!172085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25640 (= res!130099 (validMask!0 mask!4002))))

(assert (=> start!25640 e!172085))

(assert (=> start!25640 true))

(declare-fun array_inv!4011 (array!12806) Bool)

(assert (=> start!25640 (array_inv!4011 a!3436)))

(declare-fun b!265765 () Bool)

(declare-fun res!130101 () Bool)

(assert (=> b!265765 (=> (not res!130101) (not e!172087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12806 (_ BitVec 32)) Bool)

(assert (=> b!265765 (= res!130101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265766 () Bool)

(assert (=> b!265766 (= e!172087 false)))

(declare-fun lt!134251 () Bool)

(declare-datatypes ((List!3892 0))(
  ( (Nil!3889) (Cons!3888 (h!4555 (_ BitVec 64)) (t!8982 List!3892)) )
))
(declare-fun arrayNoDuplicates!0 (array!12806 (_ BitVec 32) List!3892) Bool)

(assert (=> b!265766 (= lt!134251 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3889))))

(declare-fun b!265767 () Bool)

(declare-fun res!130098 () Bool)

(assert (=> b!265767 (=> (not res!130098) (not e!172085))))

(declare-fun arrayContainsKey!0 (array!12806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265767 (= res!130098 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25640 res!130099) b!265764))

(assert (= (and b!265764 res!130097) b!265763))

(assert (= (and b!265763 res!130096) b!265767))

(assert (= (and b!265767 res!130098) b!265762))

(assert (= (and b!265762 res!130100) b!265765))

(assert (= (and b!265765 res!130101) b!265766))

(declare-fun m!282531 () Bool)

(assert (=> b!265767 m!282531))

(declare-fun m!282533 () Bool)

(assert (=> b!265766 m!282533))

(declare-fun m!282535 () Bool)

(assert (=> start!25640 m!282535))

(declare-fun m!282537 () Bool)

(assert (=> start!25640 m!282537))

(declare-fun m!282539 () Bool)

(assert (=> b!265765 m!282539))

(declare-fun m!282541 () Bool)

(assert (=> b!265763 m!282541))

(declare-fun m!282543 () Bool)

(assert (=> b!265762 m!282543))

(push 1)

(assert (not start!25640))

(assert (not b!265763))

(assert (not b!265766))

(assert (not b!265767))

(assert (not b!265762))

(assert (not b!265765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

