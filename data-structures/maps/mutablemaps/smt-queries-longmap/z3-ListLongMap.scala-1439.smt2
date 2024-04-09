; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27810 () Bool)

(assert start!27810)

(declare-fun b!286180 () Bool)

(declare-fun res!148371 () Bool)

(declare-fun e!181360 () Bool)

(assert (=> b!286180 (=> (not res!148371) (not e!181360))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286180 (= res!148371 (validKeyInArray!0 k0!2524))))

(declare-fun b!286179 () Bool)

(declare-fun res!148369 () Bool)

(assert (=> b!286179 (=> (not res!148369) (not e!181360))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14320 0))(
  ( (array!14321 (arr!6794 (Array (_ BitVec 32) (_ BitVec 64))) (size!7146 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14320)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286179 (= res!148369 (and (= (size!7146 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7146 a!3312))))))

(declare-fun b!286182 () Bool)

(assert (=> b!286182 (= e!181360 false)))

(declare-datatypes ((SeekEntryResult!1954 0))(
  ( (MissingZero!1954 (index!9986 (_ BitVec 32))) (Found!1954 (index!9987 (_ BitVec 32))) (Intermediate!1954 (undefined!2766 Bool) (index!9988 (_ BitVec 32)) (x!28178 (_ BitVec 32))) (Undefined!1954) (MissingVacant!1954 (index!9989 (_ BitVec 32))) )
))
(declare-fun lt!141059 () SeekEntryResult!1954)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14320 (_ BitVec 32)) SeekEntryResult!1954)

(assert (=> b!286182 (= lt!141059 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!148370 () Bool)

(assert (=> start!27810 (=> (not res!148370) (not e!181360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27810 (= res!148370 (validMask!0 mask!3809))))

(assert (=> start!27810 e!181360))

(assert (=> start!27810 true))

(declare-fun array_inv!4748 (array!14320) Bool)

(assert (=> start!27810 (array_inv!4748 a!3312)))

(declare-fun b!286181 () Bool)

(declare-fun res!148368 () Bool)

(assert (=> b!286181 (=> (not res!148368) (not e!181360))))

(declare-fun arrayContainsKey!0 (array!14320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286181 (= res!148368 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27810 res!148370) b!286179))

(assert (= (and b!286179 res!148369) b!286180))

(assert (= (and b!286180 res!148371) b!286181))

(assert (= (and b!286181 res!148368) b!286182))

(declare-fun m!300953 () Bool)

(assert (=> b!286180 m!300953))

(declare-fun m!300955 () Bool)

(assert (=> b!286182 m!300955))

(declare-fun m!300957 () Bool)

(assert (=> start!27810 m!300957))

(declare-fun m!300959 () Bool)

(assert (=> start!27810 m!300959))

(declare-fun m!300961 () Bool)

(assert (=> b!286181 m!300961))

(check-sat (not b!286180) (not b!286181) (not start!27810) (not b!286182))
(check-sat)
