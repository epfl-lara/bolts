; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27792 () Bool)

(assert start!27792)

(declare-fun b!286074 () Bool)

(declare-fun e!181306 () Bool)

(assert (=> b!286074 (= e!181306 false)))

(declare-datatypes ((array!14302 0))(
  ( (array!14303 (arr!6785 (Array (_ BitVec 32) (_ BitVec 64))) (size!7137 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14302)

(declare-datatypes ((SeekEntryResult!1945 0))(
  ( (MissingZero!1945 (index!9950 (_ BitVec 32))) (Found!1945 (index!9951 (_ BitVec 32))) (Intermediate!1945 (undefined!2757 Bool) (index!9952 (_ BitVec 32)) (x!28145 (_ BitVec 32))) (Undefined!1945) (MissingVacant!1945 (index!9953 (_ BitVec 32))) )
))
(declare-fun lt!141032 () SeekEntryResult!1945)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14302 (_ BitVec 32)) SeekEntryResult!1945)

(assert (=> b!286074 (= lt!141032 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286071 () Bool)

(declare-fun res!148260 () Bool)

(assert (=> b!286071 (=> (not res!148260) (not e!181306))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286071 (= res!148260 (and (= (size!7137 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7137 a!3312))))))

(declare-fun b!286072 () Bool)

(declare-fun res!148261 () Bool)

(assert (=> b!286072 (=> (not res!148261) (not e!181306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286072 (= res!148261 (validKeyInArray!0 k0!2524))))

(declare-fun res!148262 () Bool)

(assert (=> start!27792 (=> (not res!148262) (not e!181306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27792 (= res!148262 (validMask!0 mask!3809))))

(assert (=> start!27792 e!181306))

(assert (=> start!27792 true))

(declare-fun array_inv!4739 (array!14302) Bool)

(assert (=> start!27792 (array_inv!4739 a!3312)))

(declare-fun b!286073 () Bool)

(declare-fun res!148263 () Bool)

(assert (=> b!286073 (=> (not res!148263) (not e!181306))))

(declare-fun arrayContainsKey!0 (array!14302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286073 (= res!148263 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27792 res!148262) b!286071))

(assert (= (and b!286071 res!148260) b!286072))

(assert (= (and b!286072 res!148261) b!286073))

(assert (= (and b!286073 res!148263) b!286074))

(declare-fun m!300863 () Bool)

(assert (=> b!286074 m!300863))

(declare-fun m!300865 () Bool)

(assert (=> b!286072 m!300865))

(declare-fun m!300867 () Bool)

(assert (=> start!27792 m!300867))

(declare-fun m!300869 () Bool)

(assert (=> start!27792 m!300869))

(declare-fun m!300871 () Bool)

(assert (=> b!286073 m!300871))

(check-sat (not b!286074) (not b!286072) (not start!27792) (not b!286073))
(check-sat)
