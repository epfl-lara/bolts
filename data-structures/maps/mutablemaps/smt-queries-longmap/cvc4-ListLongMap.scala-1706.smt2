; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31378 () Bool)

(assert start!31378)

(declare-fun b!314237 () Bool)

(declare-fun res!170145 () Bool)

(declare-fun e!195736 () Bool)

(assert (=> b!314237 (=> (not res!170145) (not e!195736))))

(declare-datatypes ((array!16047 0))(
  ( (array!16048 (arr!7596 (Array (_ BitVec 32) (_ BitVec 64))) (size!7948 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16047)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2747 0))(
  ( (MissingZero!2747 (index!13164 (_ BitVec 32))) (Found!2747 (index!13165 (_ BitVec 32))) (Intermediate!2747 (undefined!3559 Bool) (index!13166 (_ BitVec 32)) (x!31356 (_ BitVec 32))) (Undefined!2747) (MissingVacant!2747 (index!13167 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16047 (_ BitVec 32)) SeekEntryResult!2747)

(assert (=> b!314237 (= res!170145 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2747 i!1240)))))

(declare-fun b!314238 () Bool)

(declare-fun res!170144 () Bool)

(assert (=> b!314238 (=> (not res!170144) (not e!195736))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16047 (_ BitVec 32)) Bool)

(assert (=> b!314238 (= res!170144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314239 () Bool)

(declare-fun res!170146 () Bool)

(assert (=> b!314239 (=> (not res!170146) (not e!195736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314239 (= res!170146 (validKeyInArray!0 k!2441))))

(declare-fun b!314240 () Bool)

(declare-fun res!170149 () Bool)

(assert (=> b!314240 (=> (not res!170149) (not e!195736))))

(assert (=> b!314240 (= res!170149 (and (= (size!7948 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7948 a!3293))))))

(declare-fun b!314241 () Bool)

(assert (=> b!314241 (= e!195736 false)))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!153866 () SeekEntryResult!2747)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16047 (_ BitVec 32)) SeekEntryResult!2747)

(assert (=> b!314241 (= lt!153866 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314243 () Bool)

(declare-fun res!170150 () Bool)

(assert (=> b!314243 (=> (not res!170150) (not e!195736))))

(declare-fun arrayContainsKey!0 (array!16047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314243 (= res!170150 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314244 () Bool)

(declare-fun res!170147 () Bool)

(assert (=> b!314244 (=> (not res!170147) (not e!195736))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!314244 (= res!170147 (and (= (select (arr!7596 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7948 a!3293))))))

(declare-fun b!314242 () Bool)

(declare-fun res!170151 () Bool)

(assert (=> b!314242 (=> (not res!170151) (not e!195736))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314242 (= res!170151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2747 false resIndex!52 resX!52)))))

(declare-fun res!170148 () Bool)

(assert (=> start!31378 (=> (not res!170148) (not e!195736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31378 (= res!170148 (validMask!0 mask!3709))))

(assert (=> start!31378 e!195736))

(declare-fun array_inv!5550 (array!16047) Bool)

(assert (=> start!31378 (array_inv!5550 a!3293)))

(assert (=> start!31378 true))

(assert (= (and start!31378 res!170148) b!314240))

(assert (= (and b!314240 res!170149) b!314239))

(assert (= (and b!314239 res!170146) b!314243))

(assert (= (and b!314243 res!170150) b!314237))

(assert (= (and b!314237 res!170145) b!314238))

(assert (= (and b!314238 res!170144) b!314242))

(assert (= (and b!314242 res!170151) b!314244))

(assert (= (and b!314244 res!170147) b!314241))

(declare-fun m!323837 () Bool)

(assert (=> b!314238 m!323837))

(declare-fun m!323839 () Bool)

(assert (=> b!314244 m!323839))

(declare-fun m!323841 () Bool)

(assert (=> start!31378 m!323841))

(declare-fun m!323843 () Bool)

(assert (=> start!31378 m!323843))

(declare-fun m!323845 () Bool)

(assert (=> b!314239 m!323845))

(declare-fun m!323847 () Bool)

(assert (=> b!314243 m!323847))

(declare-fun m!323849 () Bool)

(assert (=> b!314237 m!323849))

(declare-fun m!323851 () Bool)

(assert (=> b!314241 m!323851))

(declare-fun m!323853 () Bool)

(assert (=> b!314242 m!323853))

(assert (=> b!314242 m!323853))

(declare-fun m!323855 () Bool)

(assert (=> b!314242 m!323855))

(push 1)

(assert (not b!314238))

(assert (not b!314241))

(assert (not b!314237))

(assert (not b!314239))

(assert (not b!314242))

(assert (not b!314243))

(assert (not start!31378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

