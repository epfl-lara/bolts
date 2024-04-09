; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27782 () Bool)

(assert start!27782)

(declare-fun b!286010 () Bool)

(declare-fun e!181275 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286010 (= e!181275 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!286011 () Bool)

(declare-fun res!148203 () Bool)

(assert (=> b!286011 (=> (not res!148203) (not e!181275))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14292 0))(
  ( (array!14293 (arr!6780 (Array (_ BitVec 32) (_ BitVec 64))) (size!7132 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14292)

(declare-fun k!2524 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1940 0))(
  ( (MissingZero!1940 (index!9930 (_ BitVec 32))) (Found!1940 (index!9931 (_ BitVec 32))) (Intermediate!1940 (undefined!2752 Bool) (index!9932 (_ BitVec 32)) (x!28124 (_ BitVec 32))) (Undefined!1940) (MissingVacant!1940 (index!9933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14292 (_ BitVec 32)) SeekEntryResult!1940)

(assert (=> b!286011 (= res!148203 (not (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) (MissingZero!1940 i!1256))))))

(declare-fun b!286012 () Bool)

(declare-fun res!148199 () Bool)

(assert (=> b!286012 (=> (not res!148199) (not e!181275))))

(assert (=> b!286012 (= res!148199 (and (= (size!7132 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7132 a!3312))))))

(declare-fun b!286013 () Bool)

(declare-fun res!148202 () Bool)

(assert (=> b!286013 (=> (not res!148202) (not e!181275))))

(declare-fun arrayContainsKey!0 (array!14292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286013 (= res!148202 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286014 () Bool)

(declare-fun res!148201 () Bool)

(assert (=> b!286014 (=> (not res!148201) (not e!181275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286014 (= res!148201 (validKeyInArray!0 k!2524))))

(declare-fun res!148200 () Bool)

(assert (=> start!27782 (=> (not res!148200) (not e!181275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27782 (= res!148200 (validMask!0 mask!3809))))

(assert (=> start!27782 e!181275))

(assert (=> start!27782 true))

(declare-fun array_inv!4734 (array!14292) Bool)

(assert (=> start!27782 (array_inv!4734 a!3312)))

(assert (= (and start!27782 res!148200) b!286012))

(assert (= (and b!286012 res!148199) b!286014))

(assert (= (and b!286014 res!148201) b!286013))

(assert (= (and b!286013 res!148202) b!286011))

(assert (= (and b!286011 res!148203) b!286010))

(declare-fun m!300813 () Bool)

(assert (=> b!286011 m!300813))

(declare-fun m!300815 () Bool)

(assert (=> b!286013 m!300815))

(declare-fun m!300817 () Bool)

(assert (=> b!286014 m!300817))

(declare-fun m!300819 () Bool)

(assert (=> start!27782 m!300819))

(declare-fun m!300821 () Bool)

(assert (=> start!27782 m!300821))

(push 1)

(assert (not start!27782))

(assert (not b!286011))

(assert (not b!286013))

(assert (not b!286014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

