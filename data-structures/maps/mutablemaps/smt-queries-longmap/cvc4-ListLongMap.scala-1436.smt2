; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27794 () Bool)

(assert start!27794)

(declare-fun b!286085 () Bool)

(declare-fun res!148273 () Bool)

(declare-fun e!181312 () Bool)

(assert (=> b!286085 (=> (not res!148273) (not e!181312))))

(declare-datatypes ((array!14304 0))(
  ( (array!14305 (arr!6786 (Array (_ BitVec 32) (_ BitVec 64))) (size!7138 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14304)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286085 (= res!148273 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286084 () Bool)

(declare-fun res!148275 () Bool)

(assert (=> b!286084 (=> (not res!148275) (not e!181312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286084 (= res!148275 (validKeyInArray!0 k!2524))))

(declare-fun b!286086 () Bool)

(assert (=> b!286086 (= e!181312 false)))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1946 0))(
  ( (MissingZero!1946 (index!9954 (_ BitVec 32))) (Found!1946 (index!9955 (_ BitVec 32))) (Intermediate!1946 (undefined!2758 Bool) (index!9956 (_ BitVec 32)) (x!28146 (_ BitVec 32))) (Undefined!1946) (MissingVacant!1946 (index!9957 (_ BitVec 32))) )
))
(declare-fun lt!141035 () SeekEntryResult!1946)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14304 (_ BitVec 32)) SeekEntryResult!1946)

(assert (=> b!286086 (= lt!141035 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!148272 () Bool)

(assert (=> start!27794 (=> (not res!148272) (not e!181312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27794 (= res!148272 (validMask!0 mask!3809))))

(assert (=> start!27794 e!181312))

(assert (=> start!27794 true))

(declare-fun array_inv!4740 (array!14304) Bool)

(assert (=> start!27794 (array_inv!4740 a!3312)))

(declare-fun b!286083 () Bool)

(declare-fun res!148274 () Bool)

(assert (=> b!286083 (=> (not res!148274) (not e!181312))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286083 (= res!148274 (and (= (size!7138 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7138 a!3312))))))

(assert (= (and start!27794 res!148272) b!286083))

(assert (= (and b!286083 res!148274) b!286084))

(assert (= (and b!286084 res!148275) b!286085))

(assert (= (and b!286085 res!148273) b!286086))

(declare-fun m!300873 () Bool)

(assert (=> b!286085 m!300873))

(declare-fun m!300875 () Bool)

(assert (=> b!286084 m!300875))

(declare-fun m!300877 () Bool)

(assert (=> b!286086 m!300877))

(declare-fun m!300879 () Bool)

(assert (=> start!27794 m!300879))

(declare-fun m!300881 () Bool)

(assert (=> start!27794 m!300881))

(push 1)

(assert (not b!286084))

(assert (not b!286085))

(assert (not start!27794))

(assert (not b!286086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

