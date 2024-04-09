; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27774 () Bool)

(assert start!27774)

(declare-fun b!285957 () Bool)

(declare-fun e!181252 () Bool)

(assert (=> b!285957 (= e!181252 false)))

(declare-datatypes ((SeekEntryResult!1936 0))(
  ( (MissingZero!1936 (index!9914 (_ BitVec 32))) (Found!1936 (index!9915 (_ BitVec 32))) (Intermediate!1936 (undefined!2748 Bool) (index!9916 (_ BitVec 32)) (x!28112 (_ BitVec 32))) (Undefined!1936) (MissingVacant!1936 (index!9917 (_ BitVec 32))) )
))
(declare-fun lt!141014 () SeekEntryResult!1936)

(declare-datatypes ((array!14284 0))(
  ( (array!14285 (arr!6776 (Array (_ BitVec 32) (_ BitVec 64))) (size!7128 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14284)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14284 (_ BitVec 32)) SeekEntryResult!1936)

(assert (=> b!285957 (= lt!141014 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!285956 () Bool)

(declare-fun res!148144 () Bool)

(assert (=> b!285956 (=> (not res!148144) (not e!181252))))

(declare-fun arrayContainsKey!0 (array!14284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285956 (= res!148144 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!285954 () Bool)

(declare-fun res!148145 () Bool)

(assert (=> b!285954 (=> (not res!148145) (not e!181252))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285954 (= res!148145 (and (= (size!7128 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7128 a!3312))))))

(declare-fun b!285955 () Bool)

(declare-fun res!148146 () Bool)

(assert (=> b!285955 (=> (not res!148146) (not e!181252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285955 (= res!148146 (validKeyInArray!0 k0!2524))))

(declare-fun res!148143 () Bool)

(assert (=> start!27774 (=> (not res!148143) (not e!181252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27774 (= res!148143 (validMask!0 mask!3809))))

(assert (=> start!27774 e!181252))

(assert (=> start!27774 true))

(declare-fun array_inv!4730 (array!14284) Bool)

(assert (=> start!27774 (array_inv!4730 a!3312)))

(assert (= (and start!27774 res!148143) b!285954))

(assert (= (and b!285954 res!148145) b!285955))

(assert (= (and b!285955 res!148146) b!285956))

(assert (= (and b!285956 res!148144) b!285957))

(declare-fun m!300773 () Bool)

(assert (=> b!285957 m!300773))

(declare-fun m!300775 () Bool)

(assert (=> b!285956 m!300775))

(declare-fun m!300777 () Bool)

(assert (=> b!285955 m!300777))

(declare-fun m!300779 () Bool)

(assert (=> start!27774 m!300779))

(declare-fun m!300781 () Bool)

(assert (=> start!27774 m!300781))

(check-sat (not b!285955) (not b!285956) (not start!27774) (not b!285957))
(check-sat)
