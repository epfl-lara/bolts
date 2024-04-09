; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31008 () Bool)

(assert start!31008)

(declare-fun b!311394 () Bool)

(declare-fun res!168006 () Bool)

(declare-fun e!194286 () Bool)

(assert (=> b!311394 (=> (not res!168006) (not e!194286))))

(declare-datatypes ((array!15908 0))(
  ( (array!15909 (arr!7534 (Array (_ BitVec 32) (_ BitVec 64))) (size!7886 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15908)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15908 (_ BitVec 32)) Bool)

(assert (=> b!311394 (= res!168006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311395 () Bool)

(declare-fun res!168007 () Bool)

(declare-fun e!194288 () Bool)

(assert (=> b!311395 (=> (not res!168007) (not e!194288))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311395 (= res!168007 (and (= (select (arr!7534 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7886 a!3293))))))

(declare-fun b!311396 () Bool)

(assert (=> b!311396 (= e!194286 e!194288)))

(declare-fun res!168010 () Bool)

(assert (=> b!311396 (=> (not res!168010) (not e!194288))))

(declare-datatypes ((SeekEntryResult!2685 0))(
  ( (MissingZero!2685 (index!12916 (_ BitVec 32))) (Found!2685 (index!12917 (_ BitVec 32))) (Intermediate!2685 (undefined!3497 Bool) (index!12918 (_ BitVec 32)) (x!31101 (_ BitVec 32))) (Undefined!2685) (MissingVacant!2685 (index!12919 (_ BitVec 32))) )
))
(declare-fun lt!152379 () SeekEntryResult!2685)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15908 (_ BitVec 32)) SeekEntryResult!2685)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311396 (= res!168010 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152379))))

(assert (=> b!311396 (= lt!152379 (Intermediate!2685 false resIndex!52 resX!52))))

(declare-fun b!311397 () Bool)

(declare-fun res!168011 () Bool)

(assert (=> b!311397 (=> (not res!168011) (not e!194286))))

(assert (=> b!311397 (= res!168011 (and (= (size!7886 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7886 a!3293))))))

(declare-fun b!311398 () Bool)

(declare-fun res!168014 () Bool)

(assert (=> b!311398 (=> (not res!168014) (not e!194286))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15908 (_ BitVec 32)) SeekEntryResult!2685)

(assert (=> b!311398 (= res!168014 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2685 i!1240)))))

(declare-fun b!311399 () Bool)

(declare-fun e!194289 () Bool)

(assert (=> b!311399 (= e!194288 e!194289)))

(declare-fun res!168015 () Bool)

(assert (=> b!311399 (=> (not res!168015) (not e!194289))))

(declare-fun lt!152380 () SeekEntryResult!2685)

(assert (=> b!311399 (= res!168015 (and (= lt!152380 lt!152379) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7534 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311399 (= lt!152380 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!168012 () Bool)

(assert (=> start!31008 (=> (not res!168012) (not e!194286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31008 (= res!168012 (validMask!0 mask!3709))))

(assert (=> start!31008 e!194286))

(declare-fun array_inv!5488 (array!15908) Bool)

(assert (=> start!31008 (array_inv!5488 a!3293)))

(assert (=> start!31008 true))

(declare-fun b!311400 () Bool)

(declare-fun lt!152381 () (_ BitVec 32))

(declare-fun e!194290 () Bool)

(declare-fun lt!152378 () array!15908)

(assert (=> b!311400 (= e!194290 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152378 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152381 k!2441 lt!152378 mask!3709)))))

(assert (=> b!311400 (= lt!152378 (array!15909 (store (arr!7534 a!3293) i!1240 k!2441) (size!7886 a!3293)))))

(declare-fun b!311401 () Bool)

(declare-fun res!168013 () Bool)

(assert (=> b!311401 (=> (not res!168013) (not e!194286))))

(declare-fun arrayContainsKey!0 (array!15908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311401 (= res!168013 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311402 () Bool)

(assert (=> b!311402 (= e!194289 (not true))))

(assert (=> b!311402 e!194290))

(declare-fun res!168009 () Bool)

(assert (=> b!311402 (=> (not res!168009) (not e!194290))))

(assert (=> b!311402 (= res!168009 (= lt!152380 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152381 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311402 (= lt!152381 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311403 () Bool)

(declare-fun res!168008 () Bool)

(assert (=> b!311403 (=> (not res!168008) (not e!194286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311403 (= res!168008 (validKeyInArray!0 k!2441))))

(assert (= (and start!31008 res!168012) b!311397))

(assert (= (and b!311397 res!168011) b!311403))

(assert (= (and b!311403 res!168008) b!311401))

(assert (= (and b!311401 res!168013) b!311398))

(assert (= (and b!311398 res!168014) b!311394))

(assert (= (and b!311394 res!168006) b!311396))

(assert (= (and b!311396 res!168010) b!311395))

(assert (= (and b!311395 res!168007) b!311399))

(assert (= (and b!311399 res!168015) b!311402))

(assert (= (and b!311402 res!168009) b!311400))

(declare-fun m!321421 () Bool)

(assert (=> start!31008 m!321421))

(declare-fun m!321423 () Bool)

(assert (=> start!31008 m!321423))

(declare-fun m!321425 () Bool)

(assert (=> b!311396 m!321425))

(assert (=> b!311396 m!321425))

(declare-fun m!321427 () Bool)

(assert (=> b!311396 m!321427))

(declare-fun m!321429 () Bool)

(assert (=> b!311402 m!321429))

(declare-fun m!321431 () Bool)

(assert (=> b!311402 m!321431))

(declare-fun m!321433 () Bool)

(assert (=> b!311395 m!321433))

(declare-fun m!321435 () Bool)

(assert (=> b!311394 m!321435))

(declare-fun m!321437 () Bool)

(assert (=> b!311401 m!321437))

(declare-fun m!321439 () Bool)

(assert (=> b!311398 m!321439))

(declare-fun m!321441 () Bool)

(assert (=> b!311399 m!321441))

(declare-fun m!321443 () Bool)

(assert (=> b!311399 m!321443))

(declare-fun m!321445 () Bool)

(assert (=> b!311400 m!321445))

(declare-fun m!321447 () Bool)

(assert (=> b!311400 m!321447))

(declare-fun m!321449 () Bool)

(assert (=> b!311400 m!321449))

(declare-fun m!321451 () Bool)

(assert (=> b!311403 m!321451))

(push 1)

