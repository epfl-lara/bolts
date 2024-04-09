; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27768 () Bool)

(assert start!27768)

(declare-fun b!285920 () Bool)

(declare-fun res!148109 () Bool)

(declare-fun e!181233 () Bool)

(assert (=> b!285920 (=> (not res!148109) (not e!181233))))

(declare-datatypes ((array!14278 0))(
  ( (array!14279 (arr!6773 (Array (_ BitVec 32) (_ BitVec 64))) (size!7125 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14278)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285920 (= res!148109 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!285918 () Bool)

(declare-fun res!148110 () Bool)

(assert (=> b!285918 (=> (not res!148110) (not e!181233))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!285918 (= res!148110 (and (= (size!7125 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7125 a!3312))))))

(declare-fun res!148108 () Bool)

(assert (=> start!27768 (=> (not res!148108) (not e!181233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27768 (= res!148108 (validMask!0 mask!3809))))

(assert (=> start!27768 e!181233))

(assert (=> start!27768 true))

(declare-fun array_inv!4727 (array!14278) Bool)

(assert (=> start!27768 (array_inv!4727 a!3312)))

(declare-fun b!285921 () Bool)

(assert (=> b!285921 (= e!181233 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!285919 () Bool)

(declare-fun res!148107 () Bool)

(assert (=> b!285919 (=> (not res!148107) (not e!181233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285919 (= res!148107 (validKeyInArray!0 k0!2524))))

(assert (= (and start!27768 res!148108) b!285918))

(assert (= (and b!285918 res!148110) b!285919))

(assert (= (and b!285919 res!148107) b!285920))

(assert (= (and b!285920 res!148109) b!285921))

(declare-fun m!300747 () Bool)

(assert (=> b!285920 m!300747))

(declare-fun m!300749 () Bool)

(assert (=> start!27768 m!300749))

(declare-fun m!300751 () Bool)

(assert (=> start!27768 m!300751))

(declare-fun m!300753 () Bool)

(assert (=> b!285919 m!300753))

(check-sat (not start!27768) (not b!285919) (not b!285920))
(check-sat)
