; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25466 () Bool)

(assert start!25466)

(declare-fun b!264913 () Bool)

(declare-fun res!129464 () Bool)

(declare-fun e!171586 () Bool)

(assert (=> b!264913 (=> (not res!129464) (not e!171586))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264913 (= res!129464 (validKeyInArray!0 k!2698))))

(declare-datatypes ((array!12749 0))(
  ( (array!12750 (arr!6033 (Array (_ BitVec 32) (_ BitVec 64))) (size!6385 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12749)

(declare-datatypes ((SeekEntryResult!1235 0))(
  ( (MissingZero!1235 (index!7110 (_ BitVec 32))) (Found!1235 (index!7111 (_ BitVec 32))) (Intermediate!1235 (undefined!2047 Bool) (index!7112 (_ BitVec 32)) (x!25400 (_ BitVec 32))) (Undefined!1235) (MissingVacant!1235 (index!7113 (_ BitVec 32))) )
))
(declare-fun lt!133970 () SeekEntryResult!1235)

(declare-fun i!1355 () (_ BitVec 32))

(declare-fun b!264915 () Bool)

(assert (=> b!264915 (= e!171586 (and (or (= lt!133970 (MissingZero!1235 i!1355)) (= lt!133970 (MissingVacant!1235 i!1355))) (bvsgt #b00000000000000000000000000000000 (size!6385 a!3436))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12749 (_ BitVec 32)) SeekEntryResult!1235)

(assert (=> b!264915 (= lt!133970 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264912 () Bool)

(declare-fun res!129463 () Bool)

(assert (=> b!264912 (=> (not res!129463) (not e!171586))))

(assert (=> b!264912 (= res!129463 (and (= (size!6385 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6385 a!3436))))))

(declare-fun b!264914 () Bool)

(declare-fun res!129465 () Bool)

(assert (=> b!264914 (=> (not res!129465) (not e!171586))))

(declare-fun arrayContainsKey!0 (array!12749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264914 (= res!129465 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!129462 () Bool)

(assert (=> start!25466 (=> (not res!129462) (not e!171586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25466 (= res!129462 (validMask!0 mask!4002))))

(assert (=> start!25466 e!171586))

(assert (=> start!25466 true))

(declare-fun array_inv!3987 (array!12749) Bool)

(assert (=> start!25466 (array_inv!3987 a!3436)))

(assert (= (and start!25466 res!129462) b!264912))

(assert (= (and b!264912 res!129463) b!264913))

(assert (= (and b!264913 res!129464) b!264914))

(assert (= (and b!264914 res!129465) b!264915))

(declare-fun m!281893 () Bool)

(assert (=> b!264913 m!281893))

(declare-fun m!281895 () Bool)

(assert (=> b!264915 m!281895))

(declare-fun m!281897 () Bool)

(assert (=> b!264914 m!281897))

(declare-fun m!281899 () Bool)

(assert (=> start!25466 m!281899))

(declare-fun m!281901 () Bool)

(assert (=> start!25466 m!281901))

(push 1)

(assert (not b!264915))

(assert (not b!264914))

(assert (not start!25466))

(assert (not b!264913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

