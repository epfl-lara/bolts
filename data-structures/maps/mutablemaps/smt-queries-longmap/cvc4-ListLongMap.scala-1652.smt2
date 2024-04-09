; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30754 () Bool)

(assert start!30754)

(declare-fun b!308295 () Bool)

(declare-fun res!165074 () Bool)

(declare-fun e!192786 () Bool)

(assert (=> b!308295 (=> (not res!165074) (not e!192786))))

(declare-datatypes ((array!15705 0))(
  ( (array!15706 (arr!7434 (Array (_ BitVec 32) (_ BitVec 64))) (size!7786 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15705)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308295 (= res!165074 (and (= (select (arr!7434 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7786 a!3293))))))

(declare-fun b!308296 () Bool)

(declare-fun res!165067 () Bool)

(declare-fun e!192787 () Bool)

(assert (=> b!308296 (=> (not res!165067) (not e!192787))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308296 (= res!165067 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308297 () Bool)

(assert (=> b!308297 (= e!192786 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!151339 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308297 (= lt!151339 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!308298 () Bool)

(assert (=> b!308298 (= e!192787 e!192786)))

(declare-fun res!165070 () Bool)

(assert (=> b!308298 (=> (not res!165070) (not e!192786))))

(declare-datatypes ((SeekEntryResult!2585 0))(
  ( (MissingZero!2585 (index!12516 (_ BitVec 32))) (Found!2585 (index!12517 (_ BitVec 32))) (Intermediate!2585 (undefined!3397 Bool) (index!12518 (_ BitVec 32)) (x!30720 (_ BitVec 32))) (Undefined!2585) (MissingVacant!2585 (index!12519 (_ BitVec 32))) )
))
(declare-fun lt!151340 () SeekEntryResult!2585)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15705 (_ BitVec 32)) SeekEntryResult!2585)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308298 (= res!165070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151340))))

(assert (=> b!308298 (= lt!151340 (Intermediate!2585 false resIndex!52 resX!52))))

(declare-fun b!308299 () Bool)

(declare-fun res!165071 () Bool)

(assert (=> b!308299 (=> (not res!165071) (not e!192787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308299 (= res!165071 (validKeyInArray!0 k!2441))))

(declare-fun b!308300 () Bool)

(declare-fun res!165069 () Bool)

(assert (=> b!308300 (=> (not res!165069) (not e!192787))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15705 (_ BitVec 32)) SeekEntryResult!2585)

(assert (=> b!308300 (= res!165069 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2585 i!1240)))))

(declare-fun b!308301 () Bool)

(declare-fun res!165068 () Bool)

(assert (=> b!308301 (=> (not res!165068) (not e!192786))))

(assert (=> b!308301 (= res!165068 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7434 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun res!165073 () Bool)

(assert (=> start!30754 (=> (not res!165073) (not e!192787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30754 (= res!165073 (validMask!0 mask!3709))))

(assert (=> start!30754 e!192787))

(declare-fun array_inv!5388 (array!15705) Bool)

(assert (=> start!30754 (array_inv!5388 a!3293)))

(assert (=> start!30754 true))

(declare-fun b!308302 () Bool)

(declare-fun res!165066 () Bool)

(assert (=> b!308302 (=> (not res!165066) (not e!192787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15705 (_ BitVec 32)) Bool)

(assert (=> b!308302 (= res!165066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308303 () Bool)

(declare-fun res!165072 () Bool)

(assert (=> b!308303 (=> (not res!165072) (not e!192787))))

(assert (=> b!308303 (= res!165072 (and (= (size!7786 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7786 a!3293))))))

(declare-fun b!308304 () Bool)

(declare-fun res!165075 () Bool)

(assert (=> b!308304 (=> (not res!165075) (not e!192786))))

(assert (=> b!308304 (= res!165075 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151340))))

(assert (= (and start!30754 res!165073) b!308303))

(assert (= (and b!308303 res!165072) b!308299))

(assert (= (and b!308299 res!165071) b!308296))

(assert (= (and b!308296 res!165067) b!308300))

(assert (= (and b!308300 res!165069) b!308302))

(assert (= (and b!308302 res!165066) b!308298))

(assert (= (and b!308298 res!165070) b!308295))

(assert (= (and b!308295 res!165074) b!308304))

(assert (= (and b!308304 res!165075) b!308301))

(assert (= (and b!308301 res!165068) b!308297))

(declare-fun m!318379 () Bool)

(assert (=> b!308299 m!318379))

(declare-fun m!318381 () Bool)

(assert (=> b!308304 m!318381))

(declare-fun m!318383 () Bool)

(assert (=> b!308300 m!318383))

(declare-fun m!318385 () Bool)

(assert (=> b!308295 m!318385))

(declare-fun m!318387 () Bool)

(assert (=> start!30754 m!318387))

(declare-fun m!318389 () Bool)

(assert (=> start!30754 m!318389))

(declare-fun m!318391 () Bool)

(assert (=> b!308301 m!318391))

(declare-fun m!318393 () Bool)

(assert (=> b!308302 m!318393))

(declare-fun m!318395 () Bool)

(assert (=> b!308296 m!318395))

(declare-fun m!318397 () Bool)

(assert (=> b!308298 m!318397))

(assert (=> b!308298 m!318397))

(declare-fun m!318399 () Bool)

(assert (=> b!308298 m!318399))

(declare-fun m!318401 () Bool)

(assert (=> b!308297 m!318401))

(push 1)

(assert (not b!308300))

