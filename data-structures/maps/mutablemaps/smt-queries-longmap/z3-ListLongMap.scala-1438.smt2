; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27804 () Bool)

(assert start!27804)

(declare-fun b!286144 () Bool)

(declare-fun res!148333 () Bool)

(declare-fun e!181342 () Bool)

(assert (=> b!286144 (=> (not res!148333) (not e!181342))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286144 (= res!148333 (validKeyInArray!0 k0!2524))))

(declare-fun b!286146 () Bool)

(assert (=> b!286146 (= e!181342 false)))

(declare-datatypes ((array!14314 0))(
  ( (array!14315 (arr!6791 (Array (_ BitVec 32) (_ BitVec 64))) (size!7143 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14314)

(declare-datatypes ((SeekEntryResult!1951 0))(
  ( (MissingZero!1951 (index!9974 (_ BitVec 32))) (Found!1951 (index!9975 (_ BitVec 32))) (Intermediate!1951 (undefined!2763 Bool) (index!9976 (_ BitVec 32)) (x!28167 (_ BitVec 32))) (Undefined!1951) (MissingVacant!1951 (index!9977 (_ BitVec 32))) )
))
(declare-fun lt!141050 () SeekEntryResult!1951)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14314 (_ BitVec 32)) SeekEntryResult!1951)

(assert (=> b!286146 (= lt!141050 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!148334 () Bool)

(assert (=> start!27804 (=> (not res!148334) (not e!181342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27804 (= res!148334 (validMask!0 mask!3809))))

(assert (=> start!27804 e!181342))

(assert (=> start!27804 true))

(declare-fun array_inv!4745 (array!14314) Bool)

(assert (=> start!27804 (array_inv!4745 a!3312)))

(declare-fun b!286145 () Bool)

(declare-fun res!148335 () Bool)

(assert (=> b!286145 (=> (not res!148335) (not e!181342))))

(declare-fun arrayContainsKey!0 (array!14314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286145 (= res!148335 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286143 () Bool)

(declare-fun res!148332 () Bool)

(assert (=> b!286143 (=> (not res!148332) (not e!181342))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286143 (= res!148332 (and (= (size!7143 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7143 a!3312))))))

(assert (= (and start!27804 res!148334) b!286143))

(assert (= (and b!286143 res!148332) b!286144))

(assert (= (and b!286144 res!148333) b!286145))

(assert (= (and b!286145 res!148335) b!286146))

(declare-fun m!300923 () Bool)

(assert (=> b!286144 m!300923))

(declare-fun m!300925 () Bool)

(assert (=> b!286146 m!300925))

(declare-fun m!300927 () Bool)

(assert (=> start!27804 m!300927))

(declare-fun m!300929 () Bool)

(assert (=> start!27804 m!300929))

(declare-fun m!300931 () Bool)

(assert (=> b!286145 m!300931))

(check-sat (not b!286146) (not b!286144) (not b!286145) (not start!27804))
