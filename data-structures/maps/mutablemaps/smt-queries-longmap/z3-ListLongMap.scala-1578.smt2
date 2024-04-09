; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30020 () Bool)

(assert start!30020)

(declare-fun b!301014 () Bool)

(declare-fun res!158924 () Bool)

(declare-fun e!190029 () Bool)

(assert (=> b!301014 (=> (not res!158924) (not e!190029))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301014 (= res!158924 (validKeyInArray!0 k0!2441))))

(declare-fun b!301015 () Bool)

(declare-fun res!158922 () Bool)

(assert (=> b!301015 (=> (not res!158922) (not e!190029))))

(declare-datatypes ((array!15241 0))(
  ( (array!15242 (arr!7211 (Array (_ BitVec 32) (_ BitVec 64))) (size!7563 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15241)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301015 (= res!158922 (and (= (size!7563 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7563 a!3293))))))

(declare-fun b!301016 () Bool)

(declare-fun res!158925 () Bool)

(assert (=> b!301016 (=> (not res!158925) (not e!190029))))

(declare-datatypes ((SeekEntryResult!2362 0))(
  ( (MissingZero!2362 (index!11624 (_ BitVec 32))) (Found!2362 (index!11625 (_ BitVec 32))) (Intermediate!2362 (undefined!3174 Bool) (index!11626 (_ BitVec 32)) (x!29869 (_ BitVec 32))) (Undefined!2362) (MissingVacant!2362 (index!11627 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15241 (_ BitVec 32)) SeekEntryResult!2362)

(assert (=> b!301016 (= res!158925 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2362 i!1240)))))

(declare-fun b!301017 () Bool)

(declare-fun res!158923 () Bool)

(assert (=> b!301017 (=> (not res!158923) (not e!190029))))

(declare-fun arrayContainsKey!0 (array!15241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301017 (= res!158923 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301013 () Bool)

(assert (=> b!301013 (= e!190029 (bvsgt #b00000000000000000000000000000000 (size!7563 a!3293)))))

(declare-fun res!158921 () Bool)

(assert (=> start!30020 (=> (not res!158921) (not e!190029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30020 (= res!158921 (validMask!0 mask!3709))))

(assert (=> start!30020 e!190029))

(assert (=> start!30020 true))

(declare-fun array_inv!5165 (array!15241) Bool)

(assert (=> start!30020 (array_inv!5165 a!3293)))

(assert (= (and start!30020 res!158921) b!301015))

(assert (= (and b!301015 res!158922) b!301014))

(assert (= (and b!301014 res!158924) b!301017))

(assert (= (and b!301017 res!158923) b!301016))

(assert (= (and b!301016 res!158925) b!301013))

(declare-fun m!312899 () Bool)

(assert (=> b!301014 m!312899))

(declare-fun m!312901 () Bool)

(assert (=> b!301016 m!312901))

(declare-fun m!312903 () Bool)

(assert (=> b!301017 m!312903))

(declare-fun m!312905 () Bool)

(assert (=> start!30020 m!312905))

(declare-fun m!312907 () Bool)

(assert (=> start!30020 m!312907))

(check-sat (not start!30020) (not b!301014) (not b!301016) (not b!301017))
(check-sat)
