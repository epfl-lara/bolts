; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85758 () Bool)

(assert start!85758)

(declare-fun b!994605 () Bool)

(declare-fun res!665269 () Bool)

(declare-fun e!561304 () Bool)

(assert (=> b!994605 (=> (not res!665269) (not e!561304))))

(declare-datatypes ((array!62915 0))(
  ( (array!62916 (arr!30292 (Array (_ BitVec 32) (_ BitVec 64))) (size!30795 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62915)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994605 (= res!665269 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994606 () Bool)

(assert (=> b!994606 (= e!561304 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9224 0))(
  ( (MissingZero!9224 (index!39266 (_ BitVec 32))) (Found!9224 (index!39267 (_ BitVec 32))) (Intermediate!9224 (undefined!10036 Bool) (index!39268 (_ BitVec 32)) (x!86746 (_ BitVec 32))) (Undefined!9224) (MissingVacant!9224 (index!39269 (_ BitVec 32))) )
))
(declare-fun lt!440703 () SeekEntryResult!9224)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62915 (_ BitVec 32)) SeekEntryResult!9224)

(assert (=> b!994606 (= lt!440703 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994607 () Bool)

(declare-fun res!665270 () Bool)

(assert (=> b!994607 (=> (not res!665270) (not e!561304))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994607 (= res!665270 (and (= (size!30795 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30795 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30795 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994608 () Bool)

(declare-fun res!665272 () Bool)

(assert (=> b!994608 (=> (not res!665272) (not e!561304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994608 (= res!665272 (validKeyInArray!0 k!2224))))

(declare-fun b!994609 () Bool)

(declare-fun res!665268 () Bool)

(assert (=> b!994609 (=> (not res!665268) (not e!561304))))

(assert (=> b!994609 (= res!665268 (validKeyInArray!0 (select (arr!30292 a!3219) j!170)))))

(declare-fun res!665271 () Bool)

(assert (=> start!85758 (=> (not res!665271) (not e!561304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85758 (= res!665271 (validMask!0 mask!3464))))

(assert (=> start!85758 e!561304))

(declare-fun array_inv!23282 (array!62915) Bool)

(assert (=> start!85758 (array_inv!23282 a!3219)))

(assert (=> start!85758 true))

(assert (= (and start!85758 res!665271) b!994607))

(assert (= (and b!994607 res!665270) b!994609))

(assert (= (and b!994609 res!665268) b!994608))

(assert (= (and b!994608 res!665272) b!994605))

(assert (= (and b!994605 res!665269) b!994606))

(declare-fun m!922277 () Bool)

(assert (=> b!994608 m!922277))

(declare-fun m!922279 () Bool)

(assert (=> b!994605 m!922279))

(declare-fun m!922281 () Bool)

(assert (=> b!994609 m!922281))

(assert (=> b!994609 m!922281))

(declare-fun m!922283 () Bool)

(assert (=> b!994609 m!922283))

(declare-fun m!922285 () Bool)

(assert (=> b!994606 m!922285))

(declare-fun m!922287 () Bool)

(assert (=> start!85758 m!922287))

(declare-fun m!922289 () Bool)

(assert (=> start!85758 m!922289))

(push 1)

(assert (not start!85758))

(assert (not b!994605))

(assert (not b!994606))

(assert (not b!994609))

(assert (not b!994608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

