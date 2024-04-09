; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30024 () Bool)

(assert start!30024)

(declare-fun b!301045 () Bool)

(declare-fun res!158954 () Bool)

(declare-fun e!190042 () Bool)

(assert (=> b!301045 (=> (not res!158954) (not e!190042))))

(declare-datatypes ((array!15245 0))(
  ( (array!15246 (arr!7213 (Array (_ BitVec 32) (_ BitVec 64))) (size!7565 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15245)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2364 0))(
  ( (MissingZero!2364 (index!11632 (_ BitVec 32))) (Found!2364 (index!11633 (_ BitVec 32))) (Intermediate!2364 (undefined!3176 Bool) (index!11634 (_ BitVec 32)) (x!29879 (_ BitVec 32))) (Undefined!2364) (MissingVacant!2364 (index!11635 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15245 (_ BitVec 32)) SeekEntryResult!2364)

(assert (=> b!301045 (= res!158954 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2364 i!1240)))))

(declare-fun b!301046 () Bool)

(declare-fun res!158958 () Bool)

(assert (=> b!301046 (=> (not res!158958) (not e!190042))))

(declare-fun arrayContainsKey!0 (array!15245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301046 (= res!158958 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301047 () Bool)

(declare-fun res!158956 () Bool)

(assert (=> b!301047 (=> (not res!158956) (not e!190042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301047 (= res!158956 (validKeyInArray!0 k!2441))))

(declare-fun b!301048 () Bool)

(declare-fun res!158957 () Bool)

(assert (=> b!301048 (=> (not res!158957) (not e!190042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15245 (_ BitVec 32)) Bool)

(assert (=> b!301048 (= res!158957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301050 () Bool)

(assert (=> b!301050 (= e!190042 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun res!158955 () Bool)

(assert (=> start!30024 (=> (not res!158955) (not e!190042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30024 (= res!158955 (validMask!0 mask!3709))))

(assert (=> start!30024 e!190042))

(assert (=> start!30024 true))

(declare-fun array_inv!5167 (array!15245) Bool)

(assert (=> start!30024 (array_inv!5167 a!3293)))

(declare-fun b!301049 () Bool)

(declare-fun res!158953 () Bool)

(assert (=> b!301049 (=> (not res!158953) (not e!190042))))

(assert (=> b!301049 (= res!158953 (and (= (size!7565 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7565 a!3293))))))

(assert (= (and start!30024 res!158955) b!301049))

(assert (= (and b!301049 res!158953) b!301047))

(assert (= (and b!301047 res!158956) b!301046))

(assert (= (and b!301046 res!158958) b!301045))

(assert (= (and b!301045 res!158954) b!301048))

(assert (= (and b!301048 res!158957) b!301050))

(declare-fun m!312919 () Bool)

(assert (=> b!301045 m!312919))

(declare-fun m!312921 () Bool)

(assert (=> b!301047 m!312921))

(declare-fun m!312923 () Bool)

(assert (=> b!301048 m!312923))

(declare-fun m!312925 () Bool)

(assert (=> start!30024 m!312925))

(declare-fun m!312927 () Bool)

(assert (=> start!30024 m!312927))

(declare-fun m!312929 () Bool)

(assert (=> b!301046 m!312929))

(push 1)

(assert (not start!30024))

(assert (not b!301047))

(assert (not b!301048))

(assert (not b!301045))

(assert (not b!301046))

(check-sat)

(pop 1)

