; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25676 () Bool)

(assert start!25676)

(declare-fun b!266086 () Bool)

(declare-fun res!130424 () Bool)

(declare-fun e!172247 () Bool)

(assert (=> b!266086 (=> (not res!130424) (not e!172247))))

(declare-datatypes ((array!12842 0))(
  ( (array!12843 (arr!6075 (Array (_ BitVec 32) (_ BitVec 64))) (size!6427 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12842)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12842 (_ BitVec 32)) Bool)

(assert (=> b!266086 (= res!130424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130422 () Bool)

(declare-fun e!172249 () Bool)

(assert (=> start!25676 (=> (not res!130422) (not e!172249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25676 (= res!130422 (validMask!0 mask!4002))))

(assert (=> start!25676 e!172249))

(assert (=> start!25676 true))

(declare-fun array_inv!4029 (array!12842) Bool)

(assert (=> start!25676 (array_inv!4029 a!3436)))

(declare-fun b!266087 () Bool)

(declare-fun res!130423 () Bool)

(assert (=> b!266087 (=> (not res!130423) (not e!172249))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266087 (= res!130423 (validKeyInArray!0 k!2698))))

(declare-fun b!266088 () Bool)

(declare-fun res!130425 () Bool)

(assert (=> b!266088 (=> (not res!130425) (not e!172249))))

(declare-fun arrayContainsKey!0 (array!12842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266088 (= res!130425 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266089 () Bool)

(declare-fun res!130420 () Bool)

(assert (=> b!266089 (=> (not res!130420) (not e!172249))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266089 (= res!130420 (and (= (size!6427 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6427 a!3436))))))

(declare-fun b!266090 () Bool)

(assert (=> b!266090 (= e!172247 false)))

(declare-fun lt!134359 () Bool)

(declare-datatypes ((List!3910 0))(
  ( (Nil!3907) (Cons!3906 (h!4573 (_ BitVec 64)) (t!9000 List!3910)) )
))
(declare-fun arrayNoDuplicates!0 (array!12842 (_ BitVec 32) List!3910) Bool)

(assert (=> b!266090 (= lt!134359 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3907))))

(declare-fun b!266091 () Bool)

(assert (=> b!266091 (= e!172249 e!172247)))

(declare-fun res!130421 () Bool)

(assert (=> b!266091 (=> (not res!130421) (not e!172247))))

(declare-datatypes ((SeekEntryResult!1277 0))(
  ( (MissingZero!1277 (index!7278 (_ BitVec 32))) (Found!1277 (index!7279 (_ BitVec 32))) (Intermediate!1277 (undefined!2089 Bool) (index!7280 (_ BitVec 32)) (x!25554 (_ BitVec 32))) (Undefined!1277) (MissingVacant!1277 (index!7281 (_ BitVec 32))) )
))
(declare-fun lt!134360 () SeekEntryResult!1277)

(assert (=> b!266091 (= res!130421 (or (= lt!134360 (MissingZero!1277 i!1355)) (= lt!134360 (MissingVacant!1277 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12842 (_ BitVec 32)) SeekEntryResult!1277)

(assert (=> b!266091 (= lt!134360 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25676 res!130422) b!266089))

(assert (= (and b!266089 res!130420) b!266087))

(assert (= (and b!266087 res!130423) b!266088))

(assert (= (and b!266088 res!130425) b!266091))

(assert (= (and b!266091 res!130421) b!266086))

(assert (= (and b!266086 res!130424) b!266090))

(declare-fun m!282783 () Bool)

(assert (=> b!266091 m!282783))

(declare-fun m!282785 () Bool)

(assert (=> b!266090 m!282785))

(declare-fun m!282787 () Bool)

(assert (=> start!25676 m!282787))

(declare-fun m!282789 () Bool)

(assert (=> start!25676 m!282789))

(declare-fun m!282791 () Bool)

(assert (=> b!266086 m!282791))

(declare-fun m!282793 () Bool)

(assert (=> b!266088 m!282793))

(declare-fun m!282795 () Bool)

(assert (=> b!266087 m!282795))

(push 1)

