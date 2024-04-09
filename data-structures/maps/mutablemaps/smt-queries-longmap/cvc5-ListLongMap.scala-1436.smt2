; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27790 () Bool)

(assert start!27790)

(declare-fun b!286060 () Bool)

(declare-fun res!148248 () Bool)

(declare-fun e!181299 () Bool)

(assert (=> b!286060 (=> (not res!148248) (not e!181299))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286060 (= res!148248 (validKeyInArray!0 k!2524))))

(declare-fun b!286061 () Bool)

(declare-fun res!148250 () Bool)

(assert (=> b!286061 (=> (not res!148250) (not e!181299))))

(declare-datatypes ((array!14300 0))(
  ( (array!14301 (arr!6784 (Array (_ BitVec 32) (_ BitVec 64))) (size!7136 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14300)

(declare-fun arrayContainsKey!0 (array!14300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286061 (= res!148250 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148251 () Bool)

(assert (=> start!27790 (=> (not res!148251) (not e!181299))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27790 (= res!148251 (validMask!0 mask!3809))))

(assert (=> start!27790 e!181299))

(assert (=> start!27790 true))

(declare-fun array_inv!4738 (array!14300) Bool)

(assert (=> start!27790 (array_inv!4738 a!3312)))

(declare-fun b!286062 () Bool)

(assert (=> b!286062 (= e!181299 false)))

(declare-datatypes ((SeekEntryResult!1944 0))(
  ( (MissingZero!1944 (index!9946 (_ BitVec 32))) (Found!1944 (index!9947 (_ BitVec 32))) (Intermediate!1944 (undefined!2756 Bool) (index!9948 (_ BitVec 32)) (x!28144 (_ BitVec 32))) (Undefined!1944) (MissingVacant!1944 (index!9949 (_ BitVec 32))) )
))
(declare-fun lt!141029 () SeekEntryResult!1944)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14300 (_ BitVec 32)) SeekEntryResult!1944)

(assert (=> b!286062 (= lt!141029 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286059 () Bool)

(declare-fun res!148249 () Bool)

(assert (=> b!286059 (=> (not res!148249) (not e!181299))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286059 (= res!148249 (and (= (size!7136 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7136 a!3312))))))

(assert (= (and start!27790 res!148251) b!286059))

(assert (= (and b!286059 res!148249) b!286060))

(assert (= (and b!286060 res!148248) b!286061))

(assert (= (and b!286061 res!148250) b!286062))

(declare-fun m!300853 () Bool)

(assert (=> b!286060 m!300853))

(declare-fun m!300855 () Bool)

(assert (=> b!286061 m!300855))

(declare-fun m!300857 () Bool)

(assert (=> start!27790 m!300857))

(declare-fun m!300859 () Bool)

(assert (=> start!27790 m!300859))

(declare-fun m!300861 () Bool)

(assert (=> b!286062 m!300861))

(push 1)

(assert (not b!286060))

(assert (not start!27790))

(assert (not b!286061))

(assert (not b!286062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

