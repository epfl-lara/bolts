; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25618 () Bool)

(assert start!25618)

(declare-fun b!265564 () Bool)

(declare-fun res!129900 () Bool)

(declare-fun e!171988 () Bool)

(assert (=> b!265564 (=> (not res!129900) (not e!171988))))

(declare-datatypes ((array!12784 0))(
  ( (array!12785 (arr!6046 (Array (_ BitVec 32) (_ BitVec 64))) (size!6398 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12784)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265564 (= res!129900 (and (= (size!6398 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6398 a!3436))))))

(declare-fun res!129899 () Bool)

(assert (=> start!25618 (=> (not res!129899) (not e!171988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25618 (= res!129899 (validMask!0 mask!4002))))

(assert (=> start!25618 e!171988))

(assert (=> start!25618 true))

(declare-fun array_inv!4000 (array!12784) Bool)

(assert (=> start!25618 (array_inv!4000 a!3436)))

(declare-fun b!265565 () Bool)

(declare-fun e!171987 () Bool)

(assert (=> b!265565 (= e!171988 e!171987)))

(declare-fun res!129901 () Bool)

(assert (=> b!265565 (=> (not res!129901) (not e!171987))))

(declare-datatypes ((SeekEntryResult!1248 0))(
  ( (MissingZero!1248 (index!7162 (_ BitVec 32))) (Found!1248 (index!7163 (_ BitVec 32))) (Intermediate!1248 (undefined!2060 Bool) (index!7164 (_ BitVec 32)) (x!25453 (_ BitVec 32))) (Undefined!1248) (MissingVacant!1248 (index!7165 (_ BitVec 32))) )
))
(declare-fun lt!134185 () SeekEntryResult!1248)

(assert (=> b!265565 (= res!129901 (or (= lt!134185 (MissingZero!1248 i!1355)) (= lt!134185 (MissingVacant!1248 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12784 (_ BitVec 32)) SeekEntryResult!1248)

(assert (=> b!265565 (= lt!134185 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265566 () Bool)

(declare-fun res!129902 () Bool)

(assert (=> b!265566 (=> (not res!129902) (not e!171988))))

(declare-fun arrayContainsKey!0 (array!12784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265566 (= res!129902 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265567 () Bool)

(declare-fun res!129903 () Bool)

(assert (=> b!265567 (=> (not res!129903) (not e!171988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265567 (= res!129903 (validKeyInArray!0 k!2698))))

(declare-fun b!265568 () Bool)

(declare-fun res!129898 () Bool)

(assert (=> b!265568 (=> (not res!129898) (not e!171987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12784 (_ BitVec 32)) Bool)

(assert (=> b!265568 (= res!129898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265569 () Bool)

(assert (=> b!265569 (= e!171987 false)))

(declare-fun lt!134186 () Bool)

(declare-datatypes ((List!3881 0))(
  ( (Nil!3878) (Cons!3877 (h!4544 (_ BitVec 64)) (t!8971 List!3881)) )
))
(declare-fun arrayNoDuplicates!0 (array!12784 (_ BitVec 32) List!3881) Bool)

(assert (=> b!265569 (= lt!134186 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3878))))

(assert (= (and start!25618 res!129899) b!265564))

(assert (= (and b!265564 res!129900) b!265567))

(assert (= (and b!265567 res!129903) b!265566))

(assert (= (and b!265566 res!129902) b!265565))

(assert (= (and b!265565 res!129901) b!265568))

(assert (= (and b!265568 res!129898) b!265569))

(declare-fun m!282377 () Bool)

(assert (=> b!265569 m!282377))

(declare-fun m!282379 () Bool)

(assert (=> b!265568 m!282379))

(declare-fun m!282381 () Bool)

(assert (=> b!265567 m!282381))

(declare-fun m!282383 () Bool)

(assert (=> start!25618 m!282383))

(declare-fun m!282385 () Bool)

(assert (=> start!25618 m!282385))

(declare-fun m!282387 () Bool)

(assert (=> b!265566 m!282387))

(declare-fun m!282389 () Bool)

(assert (=> b!265565 m!282389))

(push 1)

