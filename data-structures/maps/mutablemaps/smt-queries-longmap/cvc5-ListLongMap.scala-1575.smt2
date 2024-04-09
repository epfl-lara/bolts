; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30000 () Bool)

(assert start!30000)

(declare-fun b!300890 () Bool)

(declare-fun res!158796 () Bool)

(declare-fun e!189970 () Bool)

(assert (=> b!300890 (=> (not res!158796) (not e!189970))))

(declare-datatypes ((array!15221 0))(
  ( (array!15222 (arr!7201 (Array (_ BitVec 32) (_ BitVec 64))) (size!7553 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15221)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300890 (= res!158796 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300889 () Bool)

(declare-fun res!158799 () Bool)

(assert (=> b!300889 (=> (not res!158799) (not e!189970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300889 (= res!158799 (validKeyInArray!0 k!2441))))

(declare-fun res!158797 () Bool)

(assert (=> start!30000 (=> (not res!158797) (not e!189970))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30000 (= res!158797 (validMask!0 mask!3709))))

(assert (=> start!30000 e!189970))

(assert (=> start!30000 true))

(declare-fun array_inv!5155 (array!15221) Bool)

(assert (=> start!30000 (array_inv!5155 a!3293)))

(declare-fun b!300891 () Bool)

(assert (=> b!300891 (= e!189970 false)))

(declare-datatypes ((SeekEntryResult!2352 0))(
  ( (MissingZero!2352 (index!11584 (_ BitVec 32))) (Found!2352 (index!11585 (_ BitVec 32))) (Intermediate!2352 (undefined!3164 Bool) (index!11586 (_ BitVec 32)) (x!29835 (_ BitVec 32))) (Undefined!2352) (MissingVacant!2352 (index!11587 (_ BitVec 32))) )
))
(declare-fun lt!149726 () SeekEntryResult!2352)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15221 (_ BitVec 32)) SeekEntryResult!2352)

(assert (=> b!300891 (= lt!149726 (seekEntryOrOpen!0 k!2441 a!3293 mask!3709))))

(declare-fun b!300888 () Bool)

(declare-fun res!158798 () Bool)

(assert (=> b!300888 (=> (not res!158798) (not e!189970))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300888 (= res!158798 (and (= (size!7553 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7553 a!3293))))))

(assert (= (and start!30000 res!158797) b!300888))

(assert (= (and b!300888 res!158798) b!300889))

(assert (= (and b!300889 res!158799) b!300890))

(assert (= (and b!300890 res!158796) b!300891))

(declare-fun m!312799 () Bool)

(assert (=> b!300890 m!312799))

(declare-fun m!312801 () Bool)

(assert (=> b!300889 m!312801))

(declare-fun m!312803 () Bool)

(assert (=> start!30000 m!312803))

(declare-fun m!312805 () Bool)

(assert (=> start!30000 m!312805))

(declare-fun m!312807 () Bool)

(assert (=> b!300891 m!312807))

(push 1)

(assert (not b!300890))

(assert (not start!30000))

(assert (not b!300891))

(assert (not b!300889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

