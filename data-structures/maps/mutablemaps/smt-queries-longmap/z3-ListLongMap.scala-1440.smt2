; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27816 () Bool)

(assert start!27816)

(declare-fun b!286217 () Bool)

(declare-fun res!148404 () Bool)

(declare-fun e!181378 () Bool)

(assert (=> b!286217 (=> (not res!148404) (not e!181378))))

(declare-datatypes ((array!14326 0))(
  ( (array!14327 (arr!6797 (Array (_ BitVec 32) (_ BitVec 64))) (size!7149 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14326)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286217 (= res!148404 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!1957 0))(
  ( (MissingZero!1957 (index!9998 (_ BitVec 32))) (Found!1957 (index!9999 (_ BitVec 32))) (Intermediate!1957 (undefined!2769 Bool) (index!10000 (_ BitVec 32)) (x!28189 (_ BitVec 32))) (Undefined!1957) (MissingVacant!1957 (index!10001 (_ BitVec 32))) )
))
(declare-fun lt!141068 () SeekEntryResult!1957)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun b!286218 () Bool)

(assert (=> b!286218 (= e!181378 (and (or (= lt!141068 (MissingZero!1957 i!1256)) (= lt!141068 (MissingVacant!1957 i!1256))) (bvsgt #b00000000000000000000000000000000 (size!7149 a!3312))))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14326 (_ BitVec 32)) SeekEntryResult!1957)

(assert (=> b!286218 (= lt!141068 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!148406 () Bool)

(assert (=> start!27816 (=> (not res!148406) (not e!181378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27816 (= res!148406 (validMask!0 mask!3809))))

(assert (=> start!27816 e!181378))

(assert (=> start!27816 true))

(declare-fun array_inv!4751 (array!14326) Bool)

(assert (=> start!27816 (array_inv!4751 a!3312)))

(declare-fun b!286215 () Bool)

(declare-fun res!148405 () Bool)

(assert (=> b!286215 (=> (not res!148405) (not e!181378))))

(assert (=> b!286215 (= res!148405 (and (= (size!7149 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7149 a!3312))))))

(declare-fun b!286216 () Bool)

(declare-fun res!148407 () Bool)

(assert (=> b!286216 (=> (not res!148407) (not e!181378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286216 (= res!148407 (validKeyInArray!0 k0!2524))))

(assert (= (and start!27816 res!148406) b!286215))

(assert (= (and b!286215 res!148405) b!286216))

(assert (= (and b!286216 res!148407) b!286217))

(assert (= (and b!286217 res!148404) b!286218))

(declare-fun m!300983 () Bool)

(assert (=> b!286217 m!300983))

(declare-fun m!300985 () Bool)

(assert (=> b!286218 m!300985))

(declare-fun m!300987 () Bool)

(assert (=> start!27816 m!300987))

(declare-fun m!300989 () Bool)

(assert (=> start!27816 m!300989))

(declare-fun m!300991 () Bool)

(assert (=> b!286216 m!300991))

(check-sat (not b!286218) (not b!286217) (not start!27816) (not b!286216))
(check-sat)
