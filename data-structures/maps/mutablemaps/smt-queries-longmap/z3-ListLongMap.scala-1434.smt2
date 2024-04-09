; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27780 () Bool)

(assert start!27780)

(declare-fun res!148187 () Bool)

(declare-fun e!181270 () Bool)

(assert (=> start!27780 (=> (not res!148187) (not e!181270))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27780 (= res!148187 (validMask!0 mask!3809))))

(assert (=> start!27780 e!181270))

(assert (=> start!27780 true))

(declare-datatypes ((array!14290 0))(
  ( (array!14291 (arr!6779 (Array (_ BitVec 32) (_ BitVec 64))) (size!7131 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14290)

(declare-fun array_inv!4733 (array!14290) Bool)

(assert (=> start!27780 (array_inv!4733 a!3312)))

(declare-fun b!285995 () Bool)

(declare-fun res!148188 () Bool)

(assert (=> b!285995 (=> (not res!148188) (not e!181270))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285995 (= res!148188 (validKeyInArray!0 k0!2524))))

(declare-fun b!285996 () Bool)

(declare-fun res!148184 () Bool)

(assert (=> b!285996 (=> (not res!148184) (not e!181270))))

(declare-fun arrayContainsKey!0 (array!14290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285996 (= res!148184 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!285997 () Bool)

(declare-fun res!148185 () Bool)

(assert (=> b!285997 (=> (not res!148185) (not e!181270))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1939 0))(
  ( (MissingZero!1939 (index!9926 (_ BitVec 32))) (Found!1939 (index!9927 (_ BitVec 32))) (Intermediate!1939 (undefined!2751 Bool) (index!9928 (_ BitVec 32)) (x!28123 (_ BitVec 32))) (Undefined!1939) (MissingVacant!1939 (index!9929 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14290 (_ BitVec 32)) SeekEntryResult!1939)

(assert (=> b!285997 (= res!148185 (not (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) (MissingZero!1939 i!1256))))))

(declare-fun b!285998 () Bool)

(assert (=> b!285998 (= e!181270 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!285999 () Bool)

(declare-fun res!148186 () Bool)

(assert (=> b!285999 (=> (not res!148186) (not e!181270))))

(assert (=> b!285999 (= res!148186 (and (= (size!7131 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7131 a!3312))))))

(assert (= (and start!27780 res!148187) b!285999))

(assert (= (and b!285999 res!148186) b!285995))

(assert (= (and b!285995 res!148188) b!285996))

(assert (= (and b!285996 res!148184) b!285997))

(assert (= (and b!285997 res!148185) b!285998))

(declare-fun m!300803 () Bool)

(assert (=> start!27780 m!300803))

(declare-fun m!300805 () Bool)

(assert (=> start!27780 m!300805))

(declare-fun m!300807 () Bool)

(assert (=> b!285995 m!300807))

(declare-fun m!300809 () Bool)

(assert (=> b!285996 m!300809))

(declare-fun m!300811 () Bool)

(assert (=> b!285997 m!300811))

(check-sat (not b!285996) (not b!285997) (not start!27780) (not b!285995))
(check-sat)
