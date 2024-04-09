; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27814 () Bool)

(assert start!27814)

(declare-fun b!286204 () Bool)

(declare-fun res!148392 () Bool)

(declare-fun e!181371 () Bool)

(assert (=> b!286204 (=> (not res!148392) (not e!181371))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286204 (= res!148392 (validKeyInArray!0 k!2524))))

(declare-fun b!286205 () Bool)

(declare-fun res!148393 () Bool)

(assert (=> b!286205 (=> (not res!148393) (not e!181371))))

(declare-datatypes ((array!14324 0))(
  ( (array!14325 (arr!6796 (Array (_ BitVec 32) (_ BitVec 64))) (size!7148 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14324)

(declare-fun arrayContainsKey!0 (array!14324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286205 (= res!148393 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148395 () Bool)

(assert (=> start!27814 (=> (not res!148395) (not e!181371))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27814 (= res!148395 (validMask!0 mask!3809))))

(assert (=> start!27814 e!181371))

(assert (=> start!27814 true))

(declare-fun array_inv!4750 (array!14324) Bool)

(assert (=> start!27814 (array_inv!4750 a!3312)))

(declare-fun b!286203 () Bool)

(declare-fun res!148394 () Bool)

(assert (=> b!286203 (=> (not res!148394) (not e!181371))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286203 (= res!148394 (and (= (size!7148 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7148 a!3312))))))

(declare-fun b!286206 () Bool)

(declare-datatypes ((SeekEntryResult!1956 0))(
  ( (MissingZero!1956 (index!9994 (_ BitVec 32))) (Found!1956 (index!9995 (_ BitVec 32))) (Intermediate!1956 (undefined!2768 Bool) (index!9996 (_ BitVec 32)) (x!28188 (_ BitVec 32))) (Undefined!1956) (MissingVacant!1956 (index!9997 (_ BitVec 32))) )
))
(declare-fun lt!141065 () SeekEntryResult!1956)

(assert (=> b!286206 (= e!181371 (and (or (= lt!141065 (MissingZero!1956 i!1256)) (= lt!141065 (MissingVacant!1956 i!1256))) (bvsgt #b00000000000000000000000000000000 (size!7148 a!3312))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14324 (_ BitVec 32)) SeekEntryResult!1956)

(assert (=> b!286206 (= lt!141065 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!27814 res!148395) b!286203))

(assert (= (and b!286203 res!148394) b!286204))

(assert (= (and b!286204 res!148392) b!286205))

(assert (= (and b!286205 res!148393) b!286206))

(declare-fun m!300973 () Bool)

(assert (=> b!286204 m!300973))

(declare-fun m!300975 () Bool)

(assert (=> b!286205 m!300975))

(declare-fun m!300977 () Bool)

(assert (=> start!27814 m!300977))

(declare-fun m!300979 () Bool)

(assert (=> start!27814 m!300979))

(declare-fun m!300981 () Bool)

(assert (=> b!286206 m!300981))

(push 1)

(assert (not b!286204))

(assert (not b!286206))

(assert (not b!286205))

(assert (not start!27814))

(check-sat)

