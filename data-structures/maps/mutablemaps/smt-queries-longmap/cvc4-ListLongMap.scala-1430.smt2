; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27740 () Bool)

(assert start!27740)

(declare-fun res!148058 () Bool)

(declare-fun e!181203 () Bool)

(assert (=> start!27740 (=> (not res!148058) (not e!181203))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27740 (= res!148058 (validMask!0 mask!3809))))

(assert (=> start!27740 e!181203))

(assert (=> start!27740 true))

(declare-datatypes ((array!14265 0))(
  ( (array!14266 (arr!6768 (Array (_ BitVec 32) (_ BitVec 64))) (size!7120 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14265)

(declare-fun array_inv!4722 (array!14265) Bool)

(assert (=> start!27740 (array_inv!4722 a!3312)))

(declare-fun b!285868 () Bool)

(declare-fun res!148057 () Bool)

(assert (=> b!285868 (=> (not res!148057) (not e!181203))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285868 (= res!148057 (and (= (size!7120 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7120 a!3312))))))

(declare-fun b!285869 () Bool)

(declare-fun res!148059 () Bool)

(assert (=> b!285869 (=> (not res!148059) (not e!181203))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285869 (= res!148059 (validKeyInArray!0 k!2524))))

(declare-fun b!285870 () Bool)

(assert (=> b!285870 (= e!181203 (bvsge #b00000000000000000000000000000000 (size!7120 a!3312)))))

(assert (= (and start!27740 res!148058) b!285868))

(assert (= (and b!285868 res!148057) b!285869))

(assert (= (and b!285869 res!148059) b!285870))

(declare-fun m!300715 () Bool)

(assert (=> start!27740 m!300715))

(declare-fun m!300717 () Bool)

(assert (=> start!27740 m!300717))

(declare-fun m!300719 () Bool)

(assert (=> b!285869 m!300719))

(push 1)

(assert (not b!285869))

(assert (not start!27740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

