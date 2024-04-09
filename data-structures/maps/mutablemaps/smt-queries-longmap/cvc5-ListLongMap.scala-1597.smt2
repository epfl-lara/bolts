; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30258 () Bool)

(assert start!30258)

(declare-fun b!302545 () Bool)

(declare-fun res!160196 () Bool)

(declare-fun e!190647 () Bool)

(assert (=> b!302545 (=> (not res!160196) (not e!190647))))

(declare-datatypes ((array!15362 0))(
  ( (array!15363 (arr!7267 (Array (_ BitVec 32) (_ BitVec 64))) (size!7619 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15362)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302545 (= res!160196 (and (= (select (arr!7267 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7619 a!3293))))))

(declare-fun b!302546 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!302546 (= e!190647 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7267 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7267 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7267 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun res!160194 () Bool)

(declare-fun e!190648 () Bool)

(assert (=> start!30258 (=> (not res!160194) (not e!190648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30258 (= res!160194 (validMask!0 mask!3709))))

(assert (=> start!30258 e!190648))

(declare-fun array_inv!5221 (array!15362) Bool)

(assert (=> start!30258 (array_inv!5221 a!3293)))

(assert (=> start!30258 true))

(declare-fun b!302547 () Bool)

(assert (=> b!302547 (= e!190648 e!190647)))

(declare-fun res!160193 () Bool)

(assert (=> b!302547 (=> (not res!160193) (not e!190647))))

(declare-datatypes ((SeekEntryResult!2418 0))(
  ( (MissingZero!2418 (index!11848 (_ BitVec 32))) (Found!2418 (index!11849 (_ BitVec 32))) (Intermediate!2418 (undefined!3230 Bool) (index!11850 (_ BitVec 32)) (x!30086 (_ BitVec 32))) (Undefined!2418) (MissingVacant!2418 (index!11851 (_ BitVec 32))) )
))
(declare-fun lt!150086 () SeekEntryResult!2418)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15362 (_ BitVec 32)) SeekEntryResult!2418)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302547 (= res!160193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150086))))

(assert (=> b!302547 (= lt!150086 (Intermediate!2418 false resIndex!52 resX!52))))

(declare-fun b!302548 () Bool)

(declare-fun res!160191 () Bool)

(assert (=> b!302548 (=> (not res!160191) (not e!190647))))

(assert (=> b!302548 (= res!160191 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150086))))

(declare-fun b!302549 () Bool)

(declare-fun res!160197 () Bool)

(assert (=> b!302549 (=> (not res!160197) (not e!190648))))

(assert (=> b!302549 (= res!160197 (and (= (size!7619 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7619 a!3293))))))

(declare-fun b!302550 () Bool)

(declare-fun res!160192 () Bool)

(assert (=> b!302550 (=> (not res!160192) (not e!190648))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15362 (_ BitVec 32)) SeekEntryResult!2418)

(assert (=> b!302550 (= res!160192 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2418 i!1240)))))

(declare-fun b!302551 () Bool)

(declare-fun res!160190 () Bool)

(assert (=> b!302551 (=> (not res!160190) (not e!190648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302551 (= res!160190 (validKeyInArray!0 k!2441))))

(declare-fun b!302552 () Bool)

(declare-fun res!160195 () Bool)

(assert (=> b!302552 (=> (not res!160195) (not e!190648))))

(declare-fun arrayContainsKey!0 (array!15362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302552 (= res!160195 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302553 () Bool)

(declare-fun res!160189 () Bool)

(assert (=> b!302553 (=> (not res!160189) (not e!190648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15362 (_ BitVec 32)) Bool)

(assert (=> b!302553 (= res!160189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30258 res!160194) b!302549))

(assert (= (and b!302549 res!160197) b!302551))

(assert (= (and b!302551 res!160190) b!302552))

(assert (= (and b!302552 res!160195) b!302550))

(assert (= (and b!302550 res!160192) b!302553))

(assert (= (and b!302553 res!160189) b!302547))

(assert (= (and b!302547 res!160193) b!302545))

(assert (= (and b!302545 res!160196) b!302548))

(assert (= (and b!302548 res!160191) b!302546))

(declare-fun m!314059 () Bool)

(assert (=> b!302545 m!314059))

(declare-fun m!314061 () Bool)

(assert (=> b!302551 m!314061))

(declare-fun m!314063 () Bool)

(assert (=> b!302547 m!314063))

(assert (=> b!302547 m!314063))

(declare-fun m!314065 () Bool)

(assert (=> b!302547 m!314065))

(declare-fun m!314067 () Bool)

(assert (=> b!302546 m!314067))

(declare-fun m!314069 () Bool)

(assert (=> start!30258 m!314069))

(declare-fun m!314071 () Bool)

(assert (=> start!30258 m!314071))

(declare-fun m!314073 () Bool)

(assert (=> b!302548 m!314073))

(declare-fun m!314075 () Bool)

(assert (=> b!302553 m!314075))

(declare-fun m!314077 () Bool)

(assert (=> b!302552 m!314077))

(declare-fun m!314079 () Bool)

(assert (=> b!302550 m!314079))

(push 1)

