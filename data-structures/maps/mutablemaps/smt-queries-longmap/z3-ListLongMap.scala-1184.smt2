; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25458 () Bool)

(assert start!25458)

(declare-fun b!264866 () Bool)

(declare-fun res!129414 () Bool)

(declare-fun e!171562 () Bool)

(assert (=> b!264866 (=> (not res!129414) (not e!171562))))

(declare-datatypes ((array!12741 0))(
  ( (array!12742 (arr!6029 (Array (_ BitVec 32) (_ BitVec 64))) (size!6381 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12741)

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264866 (= res!129414 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264865 () Bool)

(declare-fun res!129416 () Bool)

(assert (=> b!264865 (=> (not res!129416) (not e!171562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264865 (= res!129416 (validKeyInArray!0 k0!2698))))

(declare-fun b!264867 () Bool)

(assert (=> b!264867 (= e!171562 false)))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1231 0))(
  ( (MissingZero!1231 (index!7094 (_ BitVec 32))) (Found!1231 (index!7095 (_ BitVec 32))) (Intermediate!1231 (undefined!2043 Bool) (index!7096 (_ BitVec 32)) (x!25388 (_ BitVec 32))) (Undefined!1231) (MissingVacant!1231 (index!7097 (_ BitVec 32))) )
))
(declare-fun lt!133958 () SeekEntryResult!1231)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12741 (_ BitVec 32)) SeekEntryResult!1231)

(assert (=> b!264867 (= lt!133958 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!264864 () Bool)

(declare-fun res!129415 () Bool)

(assert (=> b!264864 (=> (not res!129415) (not e!171562))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264864 (= res!129415 (and (= (size!6381 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6381 a!3436))))))

(declare-fun res!129417 () Bool)

(assert (=> start!25458 (=> (not res!129417) (not e!171562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25458 (= res!129417 (validMask!0 mask!4002))))

(assert (=> start!25458 e!171562))

(assert (=> start!25458 true))

(declare-fun array_inv!3983 (array!12741) Bool)

(assert (=> start!25458 (array_inv!3983 a!3436)))

(assert (= (and start!25458 res!129417) b!264864))

(assert (= (and b!264864 res!129415) b!264865))

(assert (= (and b!264865 res!129416) b!264866))

(assert (= (and b!264866 res!129414) b!264867))

(declare-fun m!281853 () Bool)

(assert (=> b!264866 m!281853))

(declare-fun m!281855 () Bool)

(assert (=> b!264865 m!281855))

(declare-fun m!281857 () Bool)

(assert (=> b!264867 m!281857))

(declare-fun m!281859 () Bool)

(assert (=> start!25458 m!281859))

(declare-fun m!281861 () Bool)

(assert (=> start!25458 m!281861))

(check-sat (not b!264867) (not b!264866) (not start!25458) (not b!264865))
