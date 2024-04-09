; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30026 () Bool)

(assert start!30026)

(declare-fun b!301063 () Bool)

(declare-fun res!158975 () Bool)

(declare-fun e!190048 () Bool)

(assert (=> b!301063 (=> (not res!158975) (not e!190048))))

(declare-datatypes ((array!15247 0))(
  ( (array!15248 (arr!7214 (Array (_ BitVec 32) (_ BitVec 64))) (size!7566 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15247)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301063 (= res!158975 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301064 () Bool)

(declare-fun res!158971 () Bool)

(assert (=> b!301064 (=> (not res!158971) (not e!190048))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301064 (= res!158971 (and (= (size!7566 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7566 a!3293))))))

(declare-fun b!301065 () Bool)

(declare-fun res!158973 () Bool)

(assert (=> b!301065 (=> (not res!158973) (not e!190048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15247 (_ BitVec 32)) Bool)

(assert (=> b!301065 (= res!158973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!158976 () Bool)

(assert (=> start!30026 (=> (not res!158976) (not e!190048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30026 (= res!158976 (validMask!0 mask!3709))))

(assert (=> start!30026 e!190048))

(assert (=> start!30026 true))

(declare-fun array_inv!5168 (array!15247) Bool)

(assert (=> start!30026 (array_inv!5168 a!3293)))

(declare-fun b!301066 () Bool)

(assert (=> b!301066 (= e!190048 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun b!301067 () Bool)

(declare-fun res!158972 () Bool)

(assert (=> b!301067 (=> (not res!158972) (not e!190048))))

(declare-datatypes ((SeekEntryResult!2365 0))(
  ( (MissingZero!2365 (index!11636 (_ BitVec 32))) (Found!2365 (index!11637 (_ BitVec 32))) (Intermediate!2365 (undefined!3177 Bool) (index!11638 (_ BitVec 32)) (x!29880 (_ BitVec 32))) (Undefined!2365) (MissingVacant!2365 (index!11639 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15247 (_ BitVec 32)) SeekEntryResult!2365)

(assert (=> b!301067 (= res!158972 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2365 i!1240)))))

(declare-fun b!301068 () Bool)

(declare-fun res!158974 () Bool)

(assert (=> b!301068 (=> (not res!158974) (not e!190048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301068 (= res!158974 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30026 res!158976) b!301064))

(assert (= (and b!301064 res!158971) b!301068))

(assert (= (and b!301068 res!158974) b!301063))

(assert (= (and b!301063 res!158975) b!301067))

(assert (= (and b!301067 res!158972) b!301065))

(assert (= (and b!301065 res!158973) b!301066))

(declare-fun m!312931 () Bool)

(assert (=> b!301063 m!312931))

(declare-fun m!312933 () Bool)

(assert (=> b!301065 m!312933))

(declare-fun m!312935 () Bool)

(assert (=> start!30026 m!312935))

(declare-fun m!312937 () Bool)

(assert (=> start!30026 m!312937))

(declare-fun m!312939 () Bool)

(assert (=> b!301067 m!312939))

(declare-fun m!312941 () Bool)

(assert (=> b!301068 m!312941))

(check-sat (not b!301065) (not b!301067) (not b!301068) (not start!30026) (not b!301063))
(check-sat)
