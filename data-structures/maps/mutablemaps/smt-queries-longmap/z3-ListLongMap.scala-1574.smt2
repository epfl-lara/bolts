; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29996 () Bool)

(assert start!29996)

(declare-fun b!300867 () Bool)

(declare-fun e!189958 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!300867 (= e!189958 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun b!300864 () Bool)

(declare-fun res!158775 () Bool)

(assert (=> b!300864 (=> (not res!158775) (not e!189958))))

(declare-datatypes ((array!15217 0))(
  ( (array!15218 (arr!7199 (Array (_ BitVec 32) (_ BitVec 64))) (size!7551 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15217)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300864 (= res!158775 (and (= (size!7551 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7551 a!3293))))))

(declare-fun b!300865 () Bool)

(declare-fun res!158774 () Bool)

(assert (=> b!300865 (=> (not res!158774) (not e!189958))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300865 (= res!158774 (validKeyInArray!0 k0!2441))))

(declare-fun b!300866 () Bool)

(declare-fun res!158772 () Bool)

(assert (=> b!300866 (=> (not res!158772) (not e!189958))))

(declare-fun arrayContainsKey!0 (array!15217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300866 (= res!158772 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!158773 () Bool)

(assert (=> start!29996 (=> (not res!158773) (not e!189958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29996 (= res!158773 (validMask!0 mask!3709))))

(assert (=> start!29996 e!189958))

(assert (=> start!29996 true))

(declare-fun array_inv!5153 (array!15217) Bool)

(assert (=> start!29996 (array_inv!5153 a!3293)))

(assert (= (and start!29996 res!158773) b!300864))

(assert (= (and b!300864 res!158775) b!300865))

(assert (= (and b!300865 res!158774) b!300866))

(assert (= (and b!300866 res!158772) b!300867))

(declare-fun m!312783 () Bool)

(assert (=> b!300865 m!312783))

(declare-fun m!312785 () Bool)

(assert (=> b!300866 m!312785))

(declare-fun m!312787 () Bool)

(assert (=> start!29996 m!312787))

(declare-fun m!312789 () Bool)

(assert (=> start!29996 m!312789))

(check-sat (not start!29996) (not b!300866) (not b!300865))
(check-sat)
