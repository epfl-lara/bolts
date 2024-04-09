; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29966 () Bool)

(assert start!29966)

(declare-fun res!158714 () Bool)

(declare-fun e!189922 () Bool)

(assert (=> start!29966 (=> (not res!158714) (not e!189922))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29966 (= res!158714 (validMask!0 mask!3709))))

(assert (=> start!29966 e!189922))

(assert (=> start!29966 true))

(declare-datatypes ((array!15202 0))(
  ( (array!15203 (arr!7193 (Array (_ BitVec 32) (_ BitVec 64))) (size!7545 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15202)

(declare-fun array_inv!5147 (array!15202) Bool)

(assert (=> start!29966 (array_inv!5147 a!3293)))

(declare-fun b!300805 () Bool)

(declare-fun res!158715 () Bool)

(assert (=> b!300805 (=> (not res!158715) (not e!189922))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300805 (= res!158715 (and (= (size!7545 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7545 a!3293))))))

(declare-fun b!300806 () Bool)

(declare-fun res!158713 () Bool)

(assert (=> b!300806 (=> (not res!158713) (not e!189922))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300806 (= res!158713 (validKeyInArray!0 k0!2441))))

(declare-fun b!300807 () Bool)

(assert (=> b!300807 (= e!189922 (bvsge #b00000000000000000000000000000000 (size!7545 a!3293)))))

(assert (= (and start!29966 res!158714) b!300805))

(assert (= (and b!300805 res!158715) b!300806))

(assert (= (and b!300806 res!158713) b!300807))

(declare-fun m!312745 () Bool)

(assert (=> start!29966 m!312745))

(declare-fun m!312747 () Bool)

(assert (=> start!29966 m!312747))

(declare-fun m!312749 () Bool)

(assert (=> b!300806 m!312749))

(check-sat (not b!300806) (not start!29966))
(check-sat)
