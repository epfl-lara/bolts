; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30246 () Bool)

(assert start!30246)

(declare-fun b!302390 () Bool)

(declare-fun res!160036 () Bool)

(declare-fun e!190600 () Bool)

(assert (=> b!302390 (=> (not res!160036) (not e!190600))))

(declare-datatypes ((array!15350 0))(
  ( (array!15351 (arr!7261 (Array (_ BitVec 32) (_ BitVec 64))) (size!7613 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15350)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302390 (= res!160036 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302391 () Bool)

(declare-fun res!160037 () Bool)

(assert (=> b!302391 (=> (not res!160037) (not e!190600))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302391 (= res!160037 (and (= (size!7613 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7613 a!3293))))))

(declare-fun b!302392 () Bool)

(declare-fun res!160034 () Bool)

(assert (=> b!302392 (=> (not res!160034) (not e!190600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15350 (_ BitVec 32)) Bool)

(assert (=> b!302392 (= res!160034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302393 () Bool)

(declare-fun res!160041 () Bool)

(assert (=> b!302393 (=> (not res!160041) (not e!190600))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2412 0))(
  ( (MissingZero!2412 (index!11824 (_ BitVec 32))) (Found!2412 (index!11825 (_ BitVec 32))) (Intermediate!2412 (undefined!3224 Bool) (index!11826 (_ BitVec 32)) (x!30064 (_ BitVec 32))) (Undefined!2412) (MissingVacant!2412 (index!11827 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15350 (_ BitVec 32)) SeekEntryResult!2412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302393 (= res!160041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2412 false resIndex!52 resX!52)))))

(declare-fun b!302394 () Bool)

(declare-fun res!160039 () Bool)

(assert (=> b!302394 (=> (not res!160039) (not e!190600))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302394 (= res!160039 (and (= (select (arr!7261 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7613 a!3293))))))

(declare-fun b!302396 () Bool)

(declare-fun res!160040 () Bool)

(assert (=> b!302396 (=> (not res!160040) (not e!190600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302396 (= res!160040 (validKeyInArray!0 k!2441))))

(declare-fun b!302397 () Bool)

(declare-fun res!160035 () Bool)

(assert (=> b!302397 (=> (not res!160035) (not e!190600))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15350 (_ BitVec 32)) SeekEntryResult!2412)

(assert (=> b!302397 (= res!160035 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2412 i!1240)))))

(declare-fun b!302395 () Bool)

(assert (=> b!302395 (= e!190600 false)))

(declare-fun lt!150068 () SeekEntryResult!2412)

(assert (=> b!302395 (= lt!150068 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!160038 () Bool)

(assert (=> start!30246 (=> (not res!160038) (not e!190600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30246 (= res!160038 (validMask!0 mask!3709))))

(assert (=> start!30246 e!190600))

(declare-fun array_inv!5215 (array!15350) Bool)

(assert (=> start!30246 (array_inv!5215 a!3293)))

(assert (=> start!30246 true))

(assert (= (and start!30246 res!160038) b!302391))

(assert (= (and b!302391 res!160037) b!302396))

(assert (= (and b!302396 res!160040) b!302390))

(assert (= (and b!302390 res!160036) b!302397))

(assert (= (and b!302397 res!160035) b!302392))

(assert (= (and b!302392 res!160034) b!302393))

(assert (= (and b!302393 res!160041) b!302394))

(assert (= (and b!302394 res!160039) b!302395))

(declare-fun m!313933 () Bool)

(assert (=> b!302396 m!313933))

(declare-fun m!313935 () Bool)

(assert (=> b!302397 m!313935))

(declare-fun m!313937 () Bool)

(assert (=> b!302393 m!313937))

(assert (=> b!302393 m!313937))

(declare-fun m!313939 () Bool)

(assert (=> b!302393 m!313939))

(declare-fun m!313941 () Bool)

(assert (=> b!302394 m!313941))

(declare-fun m!313943 () Bool)

(assert (=> b!302395 m!313943))

(declare-fun m!313945 () Bool)

(assert (=> b!302390 m!313945))

(declare-fun m!313947 () Bool)

(assert (=> start!30246 m!313947))

(declare-fun m!313949 () Bool)

(assert (=> start!30246 m!313949))

(declare-fun m!313951 () Bool)

(assert (=> b!302392 m!313951))

(push 1)

(assert (not b!302395))

(assert (not b!302393))

(assert (not b!302392))

(assert (not start!30246))

(assert (not b!302397))

(assert (not b!302396))

(assert (not b!302390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

