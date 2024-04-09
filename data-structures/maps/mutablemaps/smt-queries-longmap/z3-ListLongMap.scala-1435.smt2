; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27786 () Bool)

(assert start!27786)

(declare-fun b!286036 () Bool)

(declare-fun res!148226 () Bool)

(declare-fun e!181287 () Bool)

(assert (=> b!286036 (=> (not res!148226) (not e!181287))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286036 (= res!148226 (validKeyInArray!0 k0!2524))))

(declare-fun res!148227 () Bool)

(assert (=> start!27786 (=> (not res!148227) (not e!181287))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27786 (= res!148227 (validMask!0 mask!3809))))

(assert (=> start!27786 e!181287))

(assert (=> start!27786 true))

(declare-datatypes ((array!14296 0))(
  ( (array!14297 (arr!6782 (Array (_ BitVec 32) (_ BitVec 64))) (size!7134 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14296)

(declare-fun array_inv!4736 (array!14296) Bool)

(assert (=> start!27786 (array_inv!4736 a!3312)))

(declare-fun b!286038 () Bool)

(assert (=> b!286038 (= e!181287 false)))

(declare-datatypes ((SeekEntryResult!1942 0))(
  ( (MissingZero!1942 (index!9938 (_ BitVec 32))) (Found!1942 (index!9939 (_ BitVec 32))) (Intermediate!1942 (undefined!2754 Bool) (index!9940 (_ BitVec 32)) (x!28134 (_ BitVec 32))) (Undefined!1942) (MissingVacant!1942 (index!9941 (_ BitVec 32))) )
))
(declare-fun lt!141023 () SeekEntryResult!1942)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14296 (_ BitVec 32)) SeekEntryResult!1942)

(assert (=> b!286038 (= lt!141023 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286035 () Bool)

(declare-fun res!148224 () Bool)

(assert (=> b!286035 (=> (not res!148224) (not e!181287))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286035 (= res!148224 (and (= (size!7134 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7134 a!3312))))))

(declare-fun b!286037 () Bool)

(declare-fun res!148225 () Bool)

(assert (=> b!286037 (=> (not res!148225) (not e!181287))))

(declare-fun arrayContainsKey!0 (array!14296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286037 (= res!148225 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27786 res!148227) b!286035))

(assert (= (and b!286035 res!148224) b!286036))

(assert (= (and b!286036 res!148226) b!286037))

(assert (= (and b!286037 res!148225) b!286038))

(declare-fun m!300833 () Bool)

(assert (=> b!286036 m!300833))

(declare-fun m!300835 () Bool)

(assert (=> start!27786 m!300835))

(declare-fun m!300837 () Bool)

(assert (=> start!27786 m!300837))

(declare-fun m!300839 () Bool)

(assert (=> b!286038 m!300839))

(declare-fun m!300841 () Bool)

(assert (=> b!286037 m!300841))

(check-sat (not b!286037) (not start!27786) (not b!286038) (not b!286036))
(check-sat)
