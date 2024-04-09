; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25642 () Bool)

(assert start!25642)

(declare-fun b!265780 () Bool)

(declare-fun res!130115 () Bool)

(declare-fun e!172095 () Bool)

(assert (=> b!265780 (=> (not res!130115) (not e!172095))))

(declare-datatypes ((array!12808 0))(
  ( (array!12809 (arr!6058 (Array (_ BitVec 32) (_ BitVec 64))) (size!6410 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12808)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12808 (_ BitVec 32)) Bool)

(assert (=> b!265780 (= res!130115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265781 () Bool)

(declare-fun res!130116 () Bool)

(declare-fun e!172094 () Bool)

(assert (=> b!265781 (=> (not res!130116) (not e!172094))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265781 (= res!130116 (validKeyInArray!0 k!2698))))

(declare-fun b!265782 () Bool)

(assert (=> b!265782 (= e!172094 e!172095)))

(declare-fun res!130119 () Bool)

(assert (=> b!265782 (=> (not res!130119) (not e!172095))))

(declare-datatypes ((SeekEntryResult!1260 0))(
  ( (MissingZero!1260 (index!7210 (_ BitVec 32))) (Found!1260 (index!7211 (_ BitVec 32))) (Intermediate!1260 (undefined!2072 Bool) (index!7212 (_ BitVec 32)) (x!25497 (_ BitVec 32))) (Undefined!1260) (MissingVacant!1260 (index!7213 (_ BitVec 32))) )
))
(declare-fun lt!134258 () SeekEntryResult!1260)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265782 (= res!130119 (or (= lt!134258 (MissingZero!1260 i!1355)) (= lt!134258 (MissingVacant!1260 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12808 (_ BitVec 32)) SeekEntryResult!1260)

(assert (=> b!265782 (= lt!134258 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265783 () Bool)

(declare-fun res!130117 () Bool)

(assert (=> b!265783 (=> (not res!130117) (not e!172094))))

(assert (=> b!265783 (= res!130117 (and (= (size!6410 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6410 a!3436))))))

(declare-fun res!130118 () Bool)

(assert (=> start!25642 (=> (not res!130118) (not e!172094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25642 (= res!130118 (validMask!0 mask!4002))))

(assert (=> start!25642 e!172094))

(assert (=> start!25642 true))

(declare-fun array_inv!4012 (array!12808) Bool)

(assert (=> start!25642 (array_inv!4012 a!3436)))

(declare-fun b!265784 () Bool)

(declare-fun res!130114 () Bool)

(assert (=> b!265784 (=> (not res!130114) (not e!172094))))

(declare-fun arrayContainsKey!0 (array!12808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265784 (= res!130114 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265785 () Bool)

(assert (=> b!265785 (= e!172095 false)))

(declare-fun lt!134257 () Bool)

(declare-datatypes ((List!3893 0))(
  ( (Nil!3890) (Cons!3889 (h!4556 (_ BitVec 64)) (t!8983 List!3893)) )
))
(declare-fun arrayNoDuplicates!0 (array!12808 (_ BitVec 32) List!3893) Bool)

(assert (=> b!265785 (= lt!134257 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3890))))

(assert (= (and start!25642 res!130118) b!265783))

(assert (= (and b!265783 res!130117) b!265781))

(assert (= (and b!265781 res!130116) b!265784))

(assert (= (and b!265784 res!130114) b!265782))

(assert (= (and b!265782 res!130119) b!265780))

(assert (= (and b!265780 res!130115) b!265785))

(declare-fun m!282545 () Bool)

(assert (=> b!265781 m!282545))

(declare-fun m!282547 () Bool)

(assert (=> b!265782 m!282547))

(declare-fun m!282549 () Bool)

(assert (=> b!265780 m!282549))

(declare-fun m!282551 () Bool)

(assert (=> b!265784 m!282551))

(declare-fun m!282553 () Bool)

(assert (=> b!265785 m!282553))

(declare-fun m!282555 () Bool)

(assert (=> start!25642 m!282555))

(declare-fun m!282557 () Bool)

(assert (=> start!25642 m!282557))

(push 1)

(assert (not b!265782))

(assert (not b!265785))

(assert (not b!265780))

(assert (not b!265781))

(assert (not start!25642))

(assert (not b!265784))

(check-sat)

