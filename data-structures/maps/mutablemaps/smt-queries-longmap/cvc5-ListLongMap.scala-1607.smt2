; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30318 () Bool)

(assert start!30318)

(declare-fun b!303310 () Bool)

(declare-fun res!160961 () Bool)

(declare-fun e!190873 () Bool)

(assert (=> b!303310 (=> (not res!160961) (not e!190873))))

(declare-datatypes ((array!15422 0))(
  ( (array!15423 (arr!7297 (Array (_ BitVec 32) (_ BitVec 64))) (size!7649 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15422)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303310 (= res!160961 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303311 () Bool)

(declare-fun res!160960 () Bool)

(assert (=> b!303311 (=> (not res!160960) (not e!190873))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15422 (_ BitVec 32)) Bool)

(assert (=> b!303311 (= res!160960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303312 () Bool)

(declare-fun res!160957 () Bool)

(declare-fun e!190871 () Bool)

(assert (=> b!303312 (=> (not res!160957) (not e!190871))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2448 0))(
  ( (MissingZero!2448 (index!11968 (_ BitVec 32))) (Found!2448 (index!11969 (_ BitVec 32))) (Intermediate!2448 (undefined!3260 Bool) (index!11970 (_ BitVec 32)) (x!30196 (_ BitVec 32))) (Undefined!2448) (MissingVacant!2448 (index!11971 (_ BitVec 32))) )
))
(declare-fun lt!150176 () SeekEntryResult!2448)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15422 (_ BitVec 32)) SeekEntryResult!2448)

(assert (=> b!303312 (= res!160957 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150176))))

(declare-fun b!303313 () Bool)

(declare-fun res!160956 () Bool)

(assert (=> b!303313 (=> (not res!160956) (not e!190873))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15422 (_ BitVec 32)) SeekEntryResult!2448)

(assert (=> b!303313 (= res!160956 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2448 i!1240)))))

(declare-fun b!303314 () Bool)

(declare-fun res!160962 () Bool)

(assert (=> b!303314 (=> (not res!160962) (not e!190871))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303314 (= res!160962 (and (= (select (arr!7297 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7649 a!3293))))))

(declare-fun res!160954 () Bool)

(assert (=> start!30318 (=> (not res!160954) (not e!190873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30318 (= res!160954 (validMask!0 mask!3709))))

(assert (=> start!30318 e!190873))

(declare-fun array_inv!5251 (array!15422) Bool)

(assert (=> start!30318 (array_inv!5251 a!3293)))

(assert (=> start!30318 true))

(declare-fun b!303315 () Bool)

(declare-fun res!160959 () Bool)

(assert (=> b!303315 (=> (not res!160959) (not e!190873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303315 (= res!160959 (validKeyInArray!0 k!2441))))

(declare-fun b!303316 () Bool)

(assert (=> b!303316 (= e!190873 e!190871)))

(declare-fun res!160958 () Bool)

(assert (=> b!303316 (=> (not res!160958) (not e!190871))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303316 (= res!160958 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150176))))

(assert (=> b!303316 (= lt!150176 (Intermediate!2448 false resIndex!52 resX!52))))

(declare-fun b!303317 () Bool)

(declare-fun res!160955 () Bool)

(assert (=> b!303317 (=> (not res!160955) (not e!190873))))

(assert (=> b!303317 (= res!160955 (and (= (size!7649 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7649 a!3293))))))

(declare-fun b!303318 () Bool)

(assert (=> b!303318 (= e!190871 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7297 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7297 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7297 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(assert (= (and start!30318 res!160954) b!303317))

(assert (= (and b!303317 res!160955) b!303315))

(assert (= (and b!303315 res!160959) b!303310))

(assert (= (and b!303310 res!160961) b!303313))

(assert (= (and b!303313 res!160956) b!303311))

(assert (= (and b!303311 res!160960) b!303316))

(assert (= (and b!303316 res!160958) b!303314))

(assert (= (and b!303314 res!160962) b!303312))

(assert (= (and b!303312 res!160957) b!303318))

(declare-fun m!314689 () Bool)

(assert (=> b!303310 m!314689))

(declare-fun m!314691 () Bool)

(assert (=> b!303314 m!314691))

(declare-fun m!314693 () Bool)

(assert (=> b!303311 m!314693))

(declare-fun m!314695 () Bool)

(assert (=> b!303316 m!314695))

(assert (=> b!303316 m!314695))

(declare-fun m!314697 () Bool)

(assert (=> b!303316 m!314697))

(declare-fun m!314699 () Bool)

(assert (=> start!30318 m!314699))

(declare-fun m!314701 () Bool)

(assert (=> start!30318 m!314701))

(declare-fun m!314703 () Bool)

(assert (=> b!303313 m!314703))

(declare-fun m!314705 () Bool)

(assert (=> b!303318 m!314705))

(declare-fun m!314707 () Bool)

(assert (=> b!303315 m!314707))

(declare-fun m!314709 () Bool)

(assert (=> b!303312 m!314709))

(push 1)

(assert (not b!303316))

(assert (not b!303315))

(assert (not start!30318))

(assert (not b!303310))

(assert (not b!303311))

(assert (not b!303312))

(assert (not b!303313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

