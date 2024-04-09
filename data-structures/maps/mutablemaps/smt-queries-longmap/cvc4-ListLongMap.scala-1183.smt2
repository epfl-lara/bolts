; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25454 () Bool)

(assert start!25454)

(declare-fun b!264841 () Bool)

(declare-fun res!129393 () Bool)

(declare-fun e!171550 () Bool)

(assert (=> b!264841 (=> (not res!129393) (not e!171550))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264841 (= res!129393 (validKeyInArray!0 k!2698))))

(declare-fun b!264840 () Bool)

(declare-fun res!129391 () Bool)

(assert (=> b!264840 (=> (not res!129391) (not e!171550))))

(declare-datatypes ((array!12737 0))(
  ( (array!12738 (arr!6027 (Array (_ BitVec 32) (_ BitVec 64))) (size!6379 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12737)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264840 (= res!129391 (and (= (size!6379 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6379 a!3436))))))

(declare-fun b!264843 () Bool)

(assert (=> b!264843 (= e!171550 false)))

(declare-datatypes ((SeekEntryResult!1229 0))(
  ( (MissingZero!1229 (index!7086 (_ BitVec 32))) (Found!1229 (index!7087 (_ BitVec 32))) (Intermediate!1229 (undefined!2041 Bool) (index!7088 (_ BitVec 32)) (x!25378 (_ BitVec 32))) (Undefined!1229) (MissingVacant!1229 (index!7089 (_ BitVec 32))) )
))
(declare-fun lt!133952 () SeekEntryResult!1229)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12737 (_ BitVec 32)) SeekEntryResult!1229)

(assert (=> b!264843 (= lt!133952 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!129390 () Bool)

(assert (=> start!25454 (=> (not res!129390) (not e!171550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25454 (= res!129390 (validMask!0 mask!4002))))

(assert (=> start!25454 e!171550))

(assert (=> start!25454 true))

(declare-fun array_inv!3981 (array!12737) Bool)

(assert (=> start!25454 (array_inv!3981 a!3436)))

(declare-fun b!264842 () Bool)

(declare-fun res!129392 () Bool)

(assert (=> b!264842 (=> (not res!129392) (not e!171550))))

(declare-fun arrayContainsKey!0 (array!12737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264842 (= res!129392 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25454 res!129390) b!264840))

(assert (= (and b!264840 res!129391) b!264841))

(assert (= (and b!264841 res!129393) b!264842))

(assert (= (and b!264842 res!129392) b!264843))

(declare-fun m!281833 () Bool)

(assert (=> b!264841 m!281833))

(declare-fun m!281835 () Bool)

(assert (=> b!264843 m!281835))

(declare-fun m!281837 () Bool)

(assert (=> start!25454 m!281837))

(declare-fun m!281839 () Bool)

(assert (=> start!25454 m!281839))

(declare-fun m!281841 () Bool)

(assert (=> b!264842 m!281841))

(push 1)

(assert (not b!264842))

(assert (not start!25454))

(assert (not b!264841))

(assert (not b!264843))

(check-sat)

