; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31020 () Bool)

(assert start!31020)

(declare-fun b!311574 () Bool)

(declare-fun e!194377 () Bool)

(assert (=> b!311574 (= e!194377 true)))

(declare-datatypes ((SeekEntryResult!2691 0))(
  ( (MissingZero!2691 (index!12940 (_ BitVec 32))) (Found!2691 (index!12941 (_ BitVec 32))) (Intermediate!2691 (undefined!3503 Bool) (index!12942 (_ BitVec 32)) (x!31123 (_ BitVec 32))) (Undefined!2691) (MissingVacant!2691 (index!12943 (_ BitVec 32))) )
))
(declare-fun lt!152458 () SeekEntryResult!2691)

(declare-fun lt!152464 () SeekEntryResult!2691)

(assert (=> b!311574 (= lt!152458 lt!152464)))

(declare-datatypes ((array!15920 0))(
  ( (array!15921 (arr!7540 (Array (_ BitVec 32) (_ BitVec 64))) (size!7892 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15920)

(declare-datatypes ((Unit!9580 0))(
  ( (Unit!9581) )
))
(declare-fun lt!152461 () Unit!9580)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152460 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15920 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9580)

(assert (=> b!311574 (= lt!152461 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152460 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311576 () Bool)

(declare-fun e!194379 () Bool)

(declare-fun e!194376 () Bool)

(assert (=> b!311576 (= e!194379 e!194376)))

(declare-fun res!168191 () Bool)

(assert (=> b!311576 (=> (not res!168191) (not e!194376))))

(declare-fun lt!152462 () SeekEntryResult!2691)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!152459 () SeekEntryResult!2691)

(assert (=> b!311576 (= res!168191 (and (= lt!152459 lt!152462) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7540 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15920 (_ BitVec 32)) SeekEntryResult!2691)

(assert (=> b!311576 (= lt!152459 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311577 () Bool)

(declare-fun res!168193 () Bool)

(declare-fun e!194378 () Bool)

(assert (=> b!311577 (=> (not res!168193) (not e!194378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311577 (= res!168193 (validKeyInArray!0 k!2441))))

(declare-fun b!311578 () Bool)

(declare-fun res!168189 () Bool)

(assert (=> b!311578 (=> (not res!168189) (not e!194378))))

(declare-fun arrayContainsKey!0 (array!15920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311578 (= res!168189 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311579 () Bool)

(declare-fun res!168194 () Bool)

(assert (=> b!311579 (=> (not res!168194) (not e!194378))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15920 (_ BitVec 32)) SeekEntryResult!2691)

(assert (=> b!311579 (= res!168194 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2691 i!1240)))))

(declare-fun b!311580 () Bool)

(declare-fun res!168192 () Bool)

(assert (=> b!311580 (=> (not res!168192) (not e!194378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15920 (_ BitVec 32)) Bool)

(assert (=> b!311580 (= res!168192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311581 () Bool)

(assert (=> b!311581 (= e!194376 (not e!194377))))

(declare-fun res!168195 () Bool)

(assert (=> b!311581 (=> res!168195 e!194377)))

(assert (=> b!311581 (= res!168195 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152460 #b00000000000000000000000000000000) (bvsge lt!152460 (size!7892 a!3293)) (not (= lt!152464 lt!152462))))))

(declare-fun lt!152465 () SeekEntryResult!2691)

(assert (=> b!311581 (= lt!152465 lt!152458)))

(declare-fun lt!152463 () array!15920)

(assert (=> b!311581 (= lt!152458 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152460 k!2441 lt!152463 mask!3709))))

(assert (=> b!311581 (= lt!152465 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152463 mask!3709))))

(assert (=> b!311581 (= lt!152463 (array!15921 (store (arr!7540 a!3293) i!1240 k!2441) (size!7892 a!3293)))))

(assert (=> b!311581 (= lt!152459 lt!152464)))

(assert (=> b!311581 (= lt!152464 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152460 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311581 (= lt!152460 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!168188 () Bool)

(assert (=> start!31020 (=> (not res!168188) (not e!194378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31020 (= res!168188 (validMask!0 mask!3709))))

(assert (=> start!31020 e!194378))

(declare-fun array_inv!5494 (array!15920) Bool)

(assert (=> start!31020 (array_inv!5494 a!3293)))

(assert (=> start!31020 true))

(declare-fun b!311575 () Bool)

(declare-fun res!168187 () Bool)

(assert (=> b!311575 (=> (not res!168187) (not e!194379))))

(assert (=> b!311575 (= res!168187 (and (= (select (arr!7540 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7892 a!3293))))))

(declare-fun b!311582 () Bool)

(declare-fun res!168186 () Bool)

(assert (=> b!311582 (=> (not res!168186) (not e!194378))))

(assert (=> b!311582 (= res!168186 (and (= (size!7892 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7892 a!3293))))))

(declare-fun b!311583 () Bool)

(assert (=> b!311583 (= e!194378 e!194379)))

(declare-fun res!168190 () Bool)

(assert (=> b!311583 (=> (not res!168190) (not e!194379))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311583 (= res!168190 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152462))))

(assert (=> b!311583 (= lt!152462 (Intermediate!2691 false resIndex!52 resX!52))))

(assert (= (and start!31020 res!168188) b!311582))

(assert (= (and b!311582 res!168186) b!311577))

(assert (= (and b!311577 res!168193) b!311578))

(assert (= (and b!311578 res!168189) b!311579))

(assert (= (and b!311579 res!168194) b!311580))

(assert (= (and b!311580 res!168192) b!311583))

(assert (= (and b!311583 res!168190) b!311575))

(assert (= (and b!311575 res!168187) b!311576))

(assert (= (and b!311576 res!168191) b!311581))

(assert (= (and b!311581 (not res!168195)) b!311574))

(declare-fun m!321613 () Bool)

(assert (=> b!311577 m!321613))

(declare-fun m!321615 () Bool)

(assert (=> b!311580 m!321615))

(declare-fun m!321617 () Bool)

(assert (=> b!311581 m!321617))

(declare-fun m!321619 () Bool)

(assert (=> b!311581 m!321619))

(declare-fun m!321621 () Bool)

(assert (=> b!311581 m!321621))

(declare-fun m!321623 () Bool)

(assert (=> b!311581 m!321623))

(declare-fun m!321625 () Bool)

(assert (=> b!311581 m!321625))

(declare-fun m!321627 () Bool)

(assert (=> b!311574 m!321627))

(declare-fun m!321629 () Bool)

(assert (=> b!311576 m!321629))

(declare-fun m!321631 () Bool)

(assert (=> b!311576 m!321631))

(declare-fun m!321633 () Bool)

(assert (=> b!311575 m!321633))

(declare-fun m!321635 () Bool)

(assert (=> b!311583 m!321635))

(assert (=> b!311583 m!321635))

(declare-fun m!321637 () Bool)

(assert (=> b!311583 m!321637))

(declare-fun m!321639 () Bool)

(assert (=> b!311578 m!321639))

(declare-fun m!321641 () Bool)

(assert (=> b!311579 m!321641))

(declare-fun m!321643 () Bool)

(assert (=> start!31020 m!321643))

(declare-fun m!321645 () Bool)

(assert (=> start!31020 m!321645))

(push 1)

