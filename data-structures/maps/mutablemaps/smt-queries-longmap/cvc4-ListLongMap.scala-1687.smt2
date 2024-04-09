; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31018 () Bool)

(assert start!31018)

(declare-fun b!311544 () Bool)

(declare-fun e!194365 () Bool)

(assert (=> b!311544 (= e!194365 (not true))))

(declare-fun e!194361 () Bool)

(assert (=> b!311544 e!194361))

(declare-fun res!168158 () Bool)

(assert (=> b!311544 (=> (not res!168158) (not e!194361))))

(declare-datatypes ((array!15918 0))(
  ( (array!15919 (arr!7539 (Array (_ BitVec 32) (_ BitVec 64))) (size!7891 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15918)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152440 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2690 0))(
  ( (MissingZero!2690 (index!12936 (_ BitVec 32))) (Found!2690 (index!12937 (_ BitVec 32))) (Intermediate!2690 (undefined!3502 Bool) (index!12938 (_ BitVec 32)) (x!31114 (_ BitVec 32))) (Undefined!2690) (MissingVacant!2690 (index!12939 (_ BitVec 32))) )
))
(declare-fun lt!152439 () SeekEntryResult!2690)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15918 (_ BitVec 32)) SeekEntryResult!2690)

(assert (=> b!311544 (= res!168158 (= lt!152439 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152440 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311544 (= lt!152440 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311545 () Bool)

(declare-fun res!168156 () Bool)

(declare-fun e!194362 () Bool)

(assert (=> b!311545 (=> (not res!168156) (not e!194362))))

(declare-fun arrayContainsKey!0 (array!15918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311545 (= res!168156 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311546 () Bool)

(declare-fun res!168160 () Bool)

(assert (=> b!311546 (=> (not res!168160) (not e!194362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311546 (= res!168160 (validKeyInArray!0 k!2441))))

(declare-fun b!311547 () Bool)

(declare-fun res!168159 () Bool)

(assert (=> b!311547 (=> (not res!168159) (not e!194362))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15918 (_ BitVec 32)) SeekEntryResult!2690)

(assert (=> b!311547 (= res!168159 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2690 i!1240)))))

(declare-fun b!311548 () Bool)

(declare-fun e!194364 () Bool)

(assert (=> b!311548 (= e!194362 e!194364)))

(declare-fun res!168165 () Bool)

(assert (=> b!311548 (=> (not res!168165) (not e!194364))))

(declare-fun lt!152438 () SeekEntryResult!2690)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311548 (= res!168165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152438))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311548 (= lt!152438 (Intermediate!2690 false resIndex!52 resX!52))))

(declare-fun res!168163 () Bool)

(assert (=> start!31018 (=> (not res!168163) (not e!194362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31018 (= res!168163 (validMask!0 mask!3709))))

(assert (=> start!31018 e!194362))

(declare-fun array_inv!5493 (array!15918) Bool)

(assert (=> start!31018 (array_inv!5493 a!3293)))

(assert (=> start!31018 true))

(declare-fun b!311549 () Bool)

(declare-fun res!168157 () Bool)

(assert (=> b!311549 (=> (not res!168157) (not e!194362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15918 (_ BitVec 32)) Bool)

(assert (=> b!311549 (= res!168157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311550 () Bool)

(assert (=> b!311550 (= e!194364 e!194365)))

(declare-fun res!168161 () Bool)

(assert (=> b!311550 (=> (not res!168161) (not e!194365))))

(assert (=> b!311550 (= res!168161 (and (= lt!152439 lt!152438) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7539 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311550 (= lt!152439 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311551 () Bool)

(declare-fun res!168162 () Bool)

(assert (=> b!311551 (=> (not res!168162) (not e!194364))))

(assert (=> b!311551 (= res!168162 (and (= (select (arr!7539 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7891 a!3293))))))

(declare-fun b!311552 () Bool)

(declare-fun res!168164 () Bool)

(assert (=> b!311552 (=> (not res!168164) (not e!194362))))

(assert (=> b!311552 (= res!168164 (and (= (size!7891 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7891 a!3293))))))

(declare-fun b!311553 () Bool)

(declare-fun lt!152441 () array!15918)

(assert (=> b!311553 (= e!194361 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152441 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152440 k!2441 lt!152441 mask!3709)))))

(assert (=> b!311553 (= lt!152441 (array!15919 (store (arr!7539 a!3293) i!1240 k!2441) (size!7891 a!3293)))))

(assert (= (and start!31018 res!168163) b!311552))

(assert (= (and b!311552 res!168164) b!311546))

(assert (= (and b!311546 res!168160) b!311545))

(assert (= (and b!311545 res!168156) b!311547))

(assert (= (and b!311547 res!168159) b!311549))

(assert (= (and b!311549 res!168157) b!311548))

(assert (= (and b!311548 res!168165) b!311551))

(assert (= (and b!311551 res!168162) b!311550))

(assert (= (and b!311550 res!168161) b!311544))

(assert (= (and b!311544 res!168158) b!311553))

(declare-fun m!321581 () Bool)

(assert (=> b!311544 m!321581))

(declare-fun m!321583 () Bool)

(assert (=> b!311544 m!321583))

(declare-fun m!321585 () Bool)

(assert (=> start!31018 m!321585))

(declare-fun m!321587 () Bool)

(assert (=> start!31018 m!321587))

(declare-fun m!321589 () Bool)

(assert (=> b!311549 m!321589))

(declare-fun m!321591 () Bool)

(assert (=> b!311550 m!321591))

(declare-fun m!321593 () Bool)

(assert (=> b!311550 m!321593))

(declare-fun m!321595 () Bool)

(assert (=> b!311551 m!321595))

(declare-fun m!321597 () Bool)

(assert (=> b!311548 m!321597))

(assert (=> b!311548 m!321597))

(declare-fun m!321599 () Bool)

(assert (=> b!311548 m!321599))

(declare-fun m!321601 () Bool)

(assert (=> b!311553 m!321601))

(declare-fun m!321603 () Bool)

(assert (=> b!311553 m!321603))

(declare-fun m!321605 () Bool)

(assert (=> b!311553 m!321605))

(declare-fun m!321607 () Bool)

(assert (=> b!311547 m!321607))

(declare-fun m!321609 () Bool)

(assert (=> b!311546 m!321609))

(declare-fun m!321611 () Bool)

(assert (=> b!311545 m!321611))

(push 1)

(assert (not b!311544))

(assert (not b!311548))

(assert (not b!311550))

(assert (not b!311546))

(assert (not start!31018))

(assert (not b!311549))

