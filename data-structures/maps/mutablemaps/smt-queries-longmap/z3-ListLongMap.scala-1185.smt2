; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25464 () Bool)

(assert start!25464)

(declare-fun b!264902 () Bool)

(declare-fun res!129453 () Bool)

(declare-fun e!171579 () Bool)

(assert (=> b!264902 (=> (not res!129453) (not e!171579))))

(declare-datatypes ((array!12747 0))(
  ( (array!12748 (arr!6032 (Array (_ BitVec 32) (_ BitVec 64))) (size!6384 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12747)

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264902 (= res!129453 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264903 () Bool)

(declare-datatypes ((SeekEntryResult!1234 0))(
  ( (MissingZero!1234 (index!7106 (_ BitVec 32))) (Found!1234 (index!7107 (_ BitVec 32))) (Intermediate!1234 (undefined!2046 Bool) (index!7108 (_ BitVec 32)) (x!25399 (_ BitVec 32))) (Undefined!1234) (MissingVacant!1234 (index!7109 (_ BitVec 32))) )
))
(declare-fun lt!133967 () SeekEntryResult!1234)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264903 (= e!171579 (and (or (= lt!133967 (MissingZero!1234 i!1355)) (= lt!133967 (MissingVacant!1234 i!1355))) (bvsgt #b00000000000000000000000000000000 (size!6384 a!3436))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12747 (_ BitVec 32)) SeekEntryResult!1234)

(assert (=> b!264903 (= lt!133967 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!129452 () Bool)

(assert (=> start!25464 (=> (not res!129452) (not e!171579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25464 (= res!129452 (validMask!0 mask!4002))))

(assert (=> start!25464 e!171579))

(assert (=> start!25464 true))

(declare-fun array_inv!3986 (array!12747) Bool)

(assert (=> start!25464 (array_inv!3986 a!3436)))

(declare-fun b!264900 () Bool)

(declare-fun res!129450 () Bool)

(assert (=> b!264900 (=> (not res!129450) (not e!171579))))

(assert (=> b!264900 (= res!129450 (and (= (size!6384 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6384 a!3436))))))

(declare-fun b!264901 () Bool)

(declare-fun res!129451 () Bool)

(assert (=> b!264901 (=> (not res!129451) (not e!171579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264901 (= res!129451 (validKeyInArray!0 k0!2698))))

(assert (= (and start!25464 res!129452) b!264900))

(assert (= (and b!264900 res!129450) b!264901))

(assert (= (and b!264901 res!129451) b!264902))

(assert (= (and b!264902 res!129453) b!264903))

(declare-fun m!281883 () Bool)

(assert (=> b!264902 m!281883))

(declare-fun m!281885 () Bool)

(assert (=> b!264903 m!281885))

(declare-fun m!281887 () Bool)

(assert (=> start!25464 m!281887))

(declare-fun m!281889 () Bool)

(assert (=> start!25464 m!281889))

(declare-fun m!281891 () Bool)

(assert (=> b!264901 m!281891))

(check-sat (not b!264901) (not b!264903) (not b!264902) (not start!25464))
(check-sat)
