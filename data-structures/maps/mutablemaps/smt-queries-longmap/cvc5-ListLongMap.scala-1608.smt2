; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30324 () Bool)

(assert start!30324)

(declare-fun b!303391 () Bool)

(declare-fun res!161038 () Bool)

(declare-fun e!190900 () Bool)

(assert (=> b!303391 (=> (not res!161038) (not e!190900))))

(declare-datatypes ((array!15428 0))(
  ( (array!15429 (arr!7300 (Array (_ BitVec 32) (_ BitVec 64))) (size!7652 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15428)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15428 (_ BitVec 32)) Bool)

(assert (=> b!303391 (= res!161038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303393 () Bool)

(declare-fun res!161041 () Bool)

(assert (=> b!303393 (=> (not res!161041) (not e!190900))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303393 (= res!161041 (and (= (size!7652 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7652 a!3293))))))

(declare-fun b!303394 () Bool)

(declare-fun res!161037 () Bool)

(assert (=> b!303394 (=> (not res!161037) (not e!190900))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2451 0))(
  ( (MissingZero!2451 (index!11980 (_ BitVec 32))) (Found!2451 (index!11981 (_ BitVec 32))) (Intermediate!2451 (undefined!3263 Bool) (index!11982 (_ BitVec 32)) (x!30207 (_ BitVec 32))) (Undefined!2451) (MissingVacant!2451 (index!11983 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15428 (_ BitVec 32)) SeekEntryResult!2451)

(assert (=> b!303394 (= res!161037 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2451 i!1240)))))

(declare-fun b!303395 () Bool)

(declare-fun res!161035 () Bool)

(declare-fun e!190898 () Bool)

(assert (=> b!303395 (=> (not res!161035) (not e!190898))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303395 (= res!161035 (and (= (select (arr!7300 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7652 a!3293))))))

(declare-fun b!303396 () Bool)

(assert (=> b!303396 (= e!190898 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7300 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7300 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7300 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!303397 () Bool)

(declare-fun res!161043 () Bool)

(assert (=> b!303397 (=> (not res!161043) (not e!190900))))

(declare-fun arrayContainsKey!0 (array!15428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303397 (= res!161043 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303398 () Bool)

(declare-fun res!161036 () Bool)

(assert (=> b!303398 (=> (not res!161036) (not e!190900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303398 (= res!161036 (validKeyInArray!0 k!2441))))

(declare-fun b!303399 () Bool)

(assert (=> b!303399 (= e!190900 e!190898)))

(declare-fun res!161039 () Bool)

(assert (=> b!303399 (=> (not res!161039) (not e!190898))))

(declare-fun lt!150185 () SeekEntryResult!2451)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15428 (_ BitVec 32)) SeekEntryResult!2451)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303399 (= res!161039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150185))))

(assert (=> b!303399 (= lt!150185 (Intermediate!2451 false resIndex!52 resX!52))))

(declare-fun res!161042 () Bool)

(assert (=> start!30324 (=> (not res!161042) (not e!190900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30324 (= res!161042 (validMask!0 mask!3709))))

(assert (=> start!30324 e!190900))

(declare-fun array_inv!5254 (array!15428) Bool)

(assert (=> start!30324 (array_inv!5254 a!3293)))

(assert (=> start!30324 true))

(declare-fun b!303392 () Bool)

(declare-fun res!161040 () Bool)

(assert (=> b!303392 (=> (not res!161040) (not e!190898))))

(assert (=> b!303392 (= res!161040 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150185))))

(assert (= (and start!30324 res!161042) b!303393))

(assert (= (and b!303393 res!161041) b!303398))

(assert (= (and b!303398 res!161036) b!303397))

(assert (= (and b!303397 res!161043) b!303394))

(assert (= (and b!303394 res!161037) b!303391))

(assert (= (and b!303391 res!161038) b!303399))

(assert (= (and b!303399 res!161039) b!303395))

(assert (= (and b!303395 res!161035) b!303392))

(assert (= (and b!303392 res!161040) b!303396))

(declare-fun m!314755 () Bool)

(assert (=> b!303397 m!314755))

(declare-fun m!314757 () Bool)

(assert (=> b!303396 m!314757))

(declare-fun m!314759 () Bool)

(assert (=> b!303391 m!314759))

(declare-fun m!314761 () Bool)

(assert (=> start!30324 m!314761))

(declare-fun m!314763 () Bool)

(assert (=> start!30324 m!314763))

(declare-fun m!314765 () Bool)

(assert (=> b!303398 m!314765))

(declare-fun m!314767 () Bool)

(assert (=> b!303392 m!314767))

(declare-fun m!314769 () Bool)

(assert (=> b!303399 m!314769))

(assert (=> b!303399 m!314769))

(declare-fun m!314771 () Bool)

(assert (=> b!303399 m!314771))

(declare-fun m!314773 () Bool)

(assert (=> b!303394 m!314773))

(declare-fun m!314775 () Bool)

(assert (=> b!303395 m!314775))

(push 1)

