; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27798 () Bool)

(assert start!27798)

(declare-fun b!286110 () Bool)

(declare-fun e!181323 () Bool)

(assert (=> b!286110 (= e!181323 false)))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1948 0))(
  ( (MissingZero!1948 (index!9962 (_ BitVec 32))) (Found!1948 (index!9963 (_ BitVec 32))) (Intermediate!1948 (undefined!2760 Bool) (index!9964 (_ BitVec 32)) (x!28156 (_ BitVec 32))) (Undefined!1948) (MissingVacant!1948 (index!9965 (_ BitVec 32))) )
))
(declare-fun lt!141041 () SeekEntryResult!1948)

(declare-datatypes ((array!14308 0))(
  ( (array!14309 (arr!6788 (Array (_ BitVec 32) (_ BitVec 64))) (size!7140 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14308)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14308 (_ BitVec 32)) SeekEntryResult!1948)

(assert (=> b!286110 (= lt!141041 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!148296 () Bool)

(assert (=> start!27798 (=> (not res!148296) (not e!181323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27798 (= res!148296 (validMask!0 mask!3809))))

(assert (=> start!27798 e!181323))

(assert (=> start!27798 true))

(declare-fun array_inv!4742 (array!14308) Bool)

(assert (=> start!27798 (array_inv!4742 a!3312)))

(declare-fun b!286108 () Bool)

(declare-fun res!148299 () Bool)

(assert (=> b!286108 (=> (not res!148299) (not e!181323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286108 (= res!148299 (validKeyInArray!0 k0!2524))))

(declare-fun b!286107 () Bool)

(declare-fun res!148298 () Bool)

(assert (=> b!286107 (=> (not res!148298) (not e!181323))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286107 (= res!148298 (and (= (size!7140 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7140 a!3312))))))

(declare-fun b!286109 () Bool)

(declare-fun res!148297 () Bool)

(assert (=> b!286109 (=> (not res!148297) (not e!181323))))

(declare-fun arrayContainsKey!0 (array!14308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286109 (= res!148297 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27798 res!148296) b!286107))

(assert (= (and b!286107 res!148298) b!286108))

(assert (= (and b!286108 res!148299) b!286109))

(assert (= (and b!286109 res!148297) b!286110))

(declare-fun m!300893 () Bool)

(assert (=> b!286110 m!300893))

(declare-fun m!300895 () Bool)

(assert (=> start!27798 m!300895))

(declare-fun m!300897 () Bool)

(assert (=> start!27798 m!300897))

(declare-fun m!300899 () Bool)

(assert (=> b!286108 m!300899))

(declare-fun m!300901 () Bool)

(assert (=> b!286109 m!300901))

(check-sat (not b!286110) (not b!286108) (not b!286109) (not start!27798))
