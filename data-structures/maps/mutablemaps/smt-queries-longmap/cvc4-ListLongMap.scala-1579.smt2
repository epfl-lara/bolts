; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30028 () Bool)

(assert start!30028)

(declare-fun b!301081 () Bool)

(declare-fun res!158994 () Bool)

(declare-fun e!190053 () Bool)

(assert (=> b!301081 (=> (not res!158994) (not e!190053))))

(declare-datatypes ((array!15249 0))(
  ( (array!15250 (arr!7215 (Array (_ BitVec 32) (_ BitVec 64))) (size!7567 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15249)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301081 (= res!158994 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301082 () Bool)

(declare-fun res!158992 () Bool)

(assert (=> b!301082 (=> (not res!158992) (not e!190053))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2366 0))(
  ( (MissingZero!2366 (index!11640 (_ BitVec 32))) (Found!2366 (index!11641 (_ BitVec 32))) (Intermediate!2366 (undefined!3178 Bool) (index!11642 (_ BitVec 32)) (x!29881 (_ BitVec 32))) (Undefined!2366) (MissingVacant!2366 (index!11643 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15249 (_ BitVec 32)) SeekEntryResult!2366)

(assert (=> b!301082 (= res!158992 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2366 i!1240)))))

(declare-fun b!301083 () Bool)

(assert (=> b!301083 (= e!190053 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun b!301084 () Bool)

(declare-fun res!158990 () Bool)

(assert (=> b!301084 (=> (not res!158990) (not e!190053))))

(assert (=> b!301084 (= res!158990 (and (= (size!7567 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7567 a!3293))))))

(declare-fun res!158989 () Bool)

(assert (=> start!30028 (=> (not res!158989) (not e!190053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30028 (= res!158989 (validMask!0 mask!3709))))

(assert (=> start!30028 e!190053))

(assert (=> start!30028 true))

(declare-fun array_inv!5169 (array!15249) Bool)

(assert (=> start!30028 (array_inv!5169 a!3293)))

(declare-fun b!301085 () Bool)

(declare-fun res!158993 () Bool)

(assert (=> b!301085 (=> (not res!158993) (not e!190053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15249 (_ BitVec 32)) Bool)

(assert (=> b!301085 (= res!158993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301086 () Bool)

(declare-fun res!158991 () Bool)

(assert (=> b!301086 (=> (not res!158991) (not e!190053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301086 (= res!158991 (validKeyInArray!0 k!2441))))

(assert (= (and start!30028 res!158989) b!301084))

(assert (= (and b!301084 res!158990) b!301086))

(assert (= (and b!301086 res!158991) b!301081))

(assert (= (and b!301081 res!158994) b!301082))

(assert (= (and b!301082 res!158992) b!301085))

(assert (= (and b!301085 res!158993) b!301083))

(declare-fun m!312943 () Bool)

(assert (=> start!30028 m!312943))

(declare-fun m!312945 () Bool)

(assert (=> start!30028 m!312945))

(declare-fun m!312947 () Bool)

(assert (=> b!301082 m!312947))

(declare-fun m!312949 () Bool)

(assert (=> b!301081 m!312949))

(declare-fun m!312951 () Bool)

(assert (=> b!301086 m!312951))

(declare-fun m!312953 () Bool)

(assert (=> b!301085 m!312953))

(push 1)

(assert (not start!30028))

(assert (not b!301082))

(assert (not b!301086))

(assert (not b!301081))

(assert (not b!301085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

