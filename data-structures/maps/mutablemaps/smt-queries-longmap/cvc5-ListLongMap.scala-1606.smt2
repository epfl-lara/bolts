; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30312 () Bool)

(assert start!30312)

(declare-datatypes ((array!15416 0))(
  ( (array!15417 (arr!7294 (Array (_ BitVec 32) (_ BitVec 64))) (size!7646 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15416)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun b!303229 () Bool)

(declare-fun e!190845 () Bool)

(assert (=> b!303229 (= e!190845 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7294 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7294 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7294 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!303230 () Bool)

(declare-fun res!160877 () Bool)

(declare-fun e!190844 () Bool)

(assert (=> b!303230 (=> (not res!160877) (not e!190844))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2445 0))(
  ( (MissingZero!2445 (index!11956 (_ BitVec 32))) (Found!2445 (index!11957 (_ BitVec 32))) (Intermediate!2445 (undefined!3257 Bool) (index!11958 (_ BitVec 32)) (x!30185 (_ BitVec 32))) (Undefined!2445) (MissingVacant!2445 (index!11959 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15416 (_ BitVec 32)) SeekEntryResult!2445)

(assert (=> b!303230 (= res!160877 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2445 i!1240)))))

(declare-fun b!303231 () Bool)

(declare-fun res!160875 () Bool)

(assert (=> b!303231 (=> (not res!160875) (not e!190845))))

(declare-fun lt!150167 () SeekEntryResult!2445)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15416 (_ BitVec 32)) SeekEntryResult!2445)

(assert (=> b!303231 (= res!160875 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150167))))

(declare-fun b!303232 () Bool)

(assert (=> b!303232 (= e!190844 e!190845)))

(declare-fun res!160880 () Bool)

(assert (=> b!303232 (=> (not res!160880) (not e!190845))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303232 (= res!160880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150167))))

(assert (=> b!303232 (= lt!150167 (Intermediate!2445 false resIndex!52 resX!52))))

(declare-fun b!303233 () Bool)

(declare-fun res!160876 () Bool)

(assert (=> b!303233 (=> (not res!160876) (not e!190844))))

(declare-fun arrayContainsKey!0 (array!15416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303233 (= res!160876 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303234 () Bool)

(declare-fun res!160881 () Bool)

(assert (=> b!303234 (=> (not res!160881) (not e!190844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15416 (_ BitVec 32)) Bool)

(assert (=> b!303234 (= res!160881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303235 () Bool)

(declare-fun res!160879 () Bool)

(assert (=> b!303235 (=> (not res!160879) (not e!190844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303235 (= res!160879 (validKeyInArray!0 k!2441))))

(declare-fun res!160874 () Bool)

(assert (=> start!30312 (=> (not res!160874) (not e!190844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30312 (= res!160874 (validMask!0 mask!3709))))

(assert (=> start!30312 e!190844))

(declare-fun array_inv!5248 (array!15416) Bool)

(assert (=> start!30312 (array_inv!5248 a!3293)))

(assert (=> start!30312 true))

(declare-fun b!303236 () Bool)

(declare-fun res!160878 () Bool)

(assert (=> b!303236 (=> (not res!160878) (not e!190844))))

(assert (=> b!303236 (= res!160878 (and (= (size!7646 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7646 a!3293))))))

(declare-fun b!303237 () Bool)

(declare-fun res!160873 () Bool)

(assert (=> b!303237 (=> (not res!160873) (not e!190845))))

(assert (=> b!303237 (= res!160873 (and (= (select (arr!7294 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7646 a!3293))))))

(assert (= (and start!30312 res!160874) b!303236))

(assert (= (and b!303236 res!160878) b!303235))

(assert (= (and b!303235 res!160879) b!303233))

(assert (= (and b!303233 res!160876) b!303230))

(assert (= (and b!303230 res!160877) b!303234))

(assert (= (and b!303234 res!160881) b!303232))

(assert (= (and b!303232 res!160880) b!303237))

(assert (= (and b!303237 res!160873) b!303231))

(assert (= (and b!303231 res!160875) b!303229))

(declare-fun m!314623 () Bool)

(assert (=> b!303229 m!314623))

(declare-fun m!314625 () Bool)

(assert (=> b!303237 m!314625))

(declare-fun m!314627 () Bool)

(assert (=> b!303233 m!314627))

(declare-fun m!314629 () Bool)

(assert (=> b!303232 m!314629))

(assert (=> b!303232 m!314629))

(declare-fun m!314631 () Bool)

(assert (=> b!303232 m!314631))

(declare-fun m!314633 () Bool)

(assert (=> b!303231 m!314633))

(declare-fun m!314635 () Bool)

(assert (=> b!303234 m!314635))

(declare-fun m!314637 () Bool)

(assert (=> b!303235 m!314637))

(declare-fun m!314639 () Bool)

(assert (=> start!30312 m!314639))

(declare-fun m!314641 () Bool)

(assert (=> start!30312 m!314641))

(declare-fun m!314643 () Bool)

(assert (=> b!303230 m!314643))

(push 1)

(assert (not b!303230))

(assert (not b!303231))

(assert (not b!303235))

