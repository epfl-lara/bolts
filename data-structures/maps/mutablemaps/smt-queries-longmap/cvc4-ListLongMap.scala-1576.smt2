; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30010 () Bool)

(assert start!30010)

(declare-fun b!300949 () Bool)

(declare-fun res!158856 () Bool)

(declare-fun e!190000 () Bool)

(assert (=> b!300949 (=> (not res!158856) (not e!190000))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300949 (= res!158856 (validKeyInArray!0 k!2441))))

(declare-fun b!300948 () Bool)

(declare-fun res!158858 () Bool)

(assert (=> b!300948 (=> (not res!158858) (not e!190000))))

(declare-datatypes ((array!15231 0))(
  ( (array!15232 (arr!7206 (Array (_ BitVec 32) (_ BitVec 64))) (size!7558 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15231)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300948 (= res!158858 (and (= (size!7558 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7558 a!3293))))))

(declare-fun res!158857 () Bool)

(assert (=> start!30010 (=> (not res!158857) (not e!190000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30010 (= res!158857 (validMask!0 mask!3709))))

(assert (=> start!30010 e!190000))

(assert (=> start!30010 true))

(declare-fun array_inv!5160 (array!15231) Bool)

(assert (=> start!30010 (array_inv!5160 a!3293)))

(declare-fun b!300951 () Bool)

(assert (=> b!300951 (= e!190000 false)))

(declare-datatypes ((SeekEntryResult!2357 0))(
  ( (MissingZero!2357 (index!11604 (_ BitVec 32))) (Found!2357 (index!11605 (_ BitVec 32))) (Intermediate!2357 (undefined!3169 Bool) (index!11606 (_ BitVec 32)) (x!29848 (_ BitVec 32))) (Undefined!2357) (MissingVacant!2357 (index!11607 (_ BitVec 32))) )
))
(declare-fun lt!149741 () SeekEntryResult!2357)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15231 (_ BitVec 32)) SeekEntryResult!2357)

(assert (=> b!300951 (= lt!149741 (seekEntryOrOpen!0 k!2441 a!3293 mask!3709))))

(declare-fun b!300950 () Bool)

(declare-fun res!158859 () Bool)

(assert (=> b!300950 (=> (not res!158859) (not e!190000))))

(declare-fun arrayContainsKey!0 (array!15231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300950 (= res!158859 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30010 res!158857) b!300948))

(assert (= (and b!300948 res!158858) b!300949))

(assert (= (and b!300949 res!158856) b!300950))

(assert (= (and b!300950 res!158859) b!300951))

(declare-fun m!312849 () Bool)

(assert (=> b!300949 m!312849))

(declare-fun m!312851 () Bool)

(assert (=> start!30010 m!312851))

(declare-fun m!312853 () Bool)

(assert (=> start!30010 m!312853))

(declare-fun m!312855 () Bool)

(assert (=> b!300951 m!312855))

(declare-fun m!312857 () Bool)

(assert (=> b!300950 m!312857))

(push 1)

(assert (not b!300949))

(assert (not b!300950))

(assert (not start!30010))

(assert (not b!300951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

