; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27738 () Bool)

(assert start!27738)

(declare-fun res!148049 () Bool)

(declare-fun e!181198 () Bool)

(assert (=> start!27738 (=> (not res!148049) (not e!181198))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27738 (= res!148049 (validMask!0 mask!3809))))

(assert (=> start!27738 e!181198))

(assert (=> start!27738 true))

(declare-datatypes ((array!14263 0))(
  ( (array!14264 (arr!6767 (Array (_ BitVec 32) (_ BitVec 64))) (size!7119 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14263)

(declare-fun array_inv!4721 (array!14263) Bool)

(assert (=> start!27738 (array_inv!4721 a!3312)))

(declare-fun b!285859 () Bool)

(declare-fun res!148050 () Bool)

(assert (=> b!285859 (=> (not res!148050) (not e!181198))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285859 (= res!148050 (and (= (size!7119 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7119 a!3312))))))

(declare-fun b!285860 () Bool)

(declare-fun res!148048 () Bool)

(assert (=> b!285860 (=> (not res!148048) (not e!181198))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285860 (= res!148048 (validKeyInArray!0 k0!2524))))

(declare-fun b!285861 () Bool)

(assert (=> b!285861 (= e!181198 (bvsge #b00000000000000000000000000000000 (size!7119 a!3312)))))

(assert (= (and start!27738 res!148049) b!285859))

(assert (= (and b!285859 res!148050) b!285860))

(assert (= (and b!285860 res!148048) b!285861))

(declare-fun m!300709 () Bool)

(assert (=> start!27738 m!300709))

(declare-fun m!300711 () Bool)

(assert (=> start!27738 m!300711))

(declare-fun m!300713 () Bool)

(assert (=> b!285860 m!300713))

(check-sat (not b!285860) (not start!27738))
(check-sat)
