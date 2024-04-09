; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31026 () Bool)

(assert start!31026)

(declare-fun res!168284 () Bool)

(declare-fun e!194422 () Bool)

(assert (=> start!31026 (=> (not res!168284) (not e!194422))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31026 (= res!168284 (validMask!0 mask!3709))))

(assert (=> start!31026 e!194422))

(declare-datatypes ((array!15926 0))(
  ( (array!15927 (arr!7543 (Array (_ BitVec 32) (_ BitVec 64))) (size!7895 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15926)

(declare-fun array_inv!5497 (array!15926) Bool)

(assert (=> start!31026 (array_inv!5497 a!3293)))

(assert (=> start!31026 true))

(declare-fun b!311664 () Bool)

(declare-fun res!168283 () Bool)

(assert (=> b!311664 (=> (not res!168283) (not e!194422))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311664 (= res!168283 (and (= (size!7895 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7895 a!3293))))))

(declare-fun b!311665 () Bool)

(declare-fun e!194425 () Bool)

(declare-fun e!194424 () Bool)

(assert (=> b!311665 (= e!194425 e!194424)))

(declare-fun res!168280 () Bool)

(assert (=> b!311665 (=> (not res!168280) (not e!194424))))

(declare-datatypes ((SeekEntryResult!2694 0))(
  ( (MissingZero!2694 (index!12952 (_ BitVec 32))) (Found!2694 (index!12953 (_ BitVec 32))) (Intermediate!2694 (undefined!3506 Bool) (index!12954 (_ BitVec 32)) (x!31134 (_ BitVec 32))) (Undefined!2694) (MissingVacant!2694 (index!12955 (_ BitVec 32))) )
))
(declare-fun lt!152537 () SeekEntryResult!2694)

(declare-fun lt!152534 () SeekEntryResult!2694)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311665 (= res!168280 (and (= lt!152537 lt!152534) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7543 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15926 (_ BitVec 32)) SeekEntryResult!2694)

(assert (=> b!311665 (= lt!152537 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311666 () Bool)

(declare-fun res!168277 () Bool)

(assert (=> b!311666 (=> (not res!168277) (not e!194422))))

(declare-fun arrayContainsKey!0 (array!15926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311666 (= res!168277 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311667 () Bool)

(declare-fun res!168282 () Bool)

(assert (=> b!311667 (=> (not res!168282) (not e!194422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311667 (= res!168282 (validKeyInArray!0 k!2441))))

(declare-fun b!311668 () Bool)

(declare-fun res!168278 () Bool)

(assert (=> b!311668 (=> (not res!168278) (not e!194422))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15926 (_ BitVec 32)) SeekEntryResult!2694)

(assert (=> b!311668 (= res!168278 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2694 i!1240)))))

(declare-fun b!311669 () Bool)

(declare-fun res!168276 () Bool)

(assert (=> b!311669 (=> (not res!168276) (not e!194422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15926 (_ BitVec 32)) Bool)

(assert (=> b!311669 (= res!168276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311670 () Bool)

(assert (=> b!311670 (= e!194422 e!194425)))

(declare-fun res!168281 () Bool)

(assert (=> b!311670 (=> (not res!168281) (not e!194425))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311670 (= res!168281 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152534))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311670 (= lt!152534 (Intermediate!2694 false resIndex!52 resX!52))))

(declare-fun b!311671 () Bool)

(declare-fun res!168285 () Bool)

(assert (=> b!311671 (=> (not res!168285) (not e!194425))))

(assert (=> b!311671 (= res!168285 (and (= (select (arr!7543 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7895 a!3293))))))

(declare-fun b!311672 () Bool)

(declare-fun e!194423 () Bool)

(assert (=> b!311672 (= e!194423 (bvsge mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!152536 () SeekEntryResult!2694)

(declare-fun lt!152532 () SeekEntryResult!2694)

(assert (=> b!311672 (= lt!152536 lt!152532)))

(declare-fun lt!152533 () (_ BitVec 32))

(declare-datatypes ((Unit!9586 0))(
  ( (Unit!9587) )
))
(declare-fun lt!152535 () Unit!9586)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15926 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9586)

(assert (=> b!311672 (= lt!152535 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152533 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311673 () Bool)

(assert (=> b!311673 (= e!194424 (not e!194423))))

(declare-fun res!168279 () Bool)

(assert (=> b!311673 (=> res!168279 e!194423)))

(assert (=> b!311673 (= res!168279 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152533 #b00000000000000000000000000000000) (bvsge lt!152533 (size!7895 a!3293)) (not (= lt!152532 lt!152534))))))

(declare-fun lt!152530 () SeekEntryResult!2694)

(assert (=> b!311673 (= lt!152530 lt!152536)))

(declare-fun lt!152531 () array!15926)

(assert (=> b!311673 (= lt!152536 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152533 k!2441 lt!152531 mask!3709))))

(assert (=> b!311673 (= lt!152530 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152531 mask!3709))))

(assert (=> b!311673 (= lt!152531 (array!15927 (store (arr!7543 a!3293) i!1240 k!2441) (size!7895 a!3293)))))

(assert (=> b!311673 (= lt!152537 lt!152532)))

(assert (=> b!311673 (= lt!152532 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152533 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311673 (= lt!152533 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31026 res!168284) b!311664))

(assert (= (and b!311664 res!168283) b!311667))

(assert (= (and b!311667 res!168282) b!311666))

(assert (= (and b!311666 res!168277) b!311668))

(assert (= (and b!311668 res!168278) b!311669))

(assert (= (and b!311669 res!168276) b!311670))

(assert (= (and b!311670 res!168281) b!311671))

(assert (= (and b!311671 res!168285) b!311665))

(assert (= (and b!311665 res!168280) b!311673))

(assert (= (and b!311673 (not res!168279)) b!311672))

(declare-fun m!321715 () Bool)

(assert (=> b!311668 m!321715))

(declare-fun m!321717 () Bool)

(assert (=> b!311669 m!321717))

(declare-fun m!321719 () Bool)

(assert (=> b!311673 m!321719))

(declare-fun m!321721 () Bool)

(assert (=> b!311673 m!321721))

(declare-fun m!321723 () Bool)

(assert (=> b!311673 m!321723))

(declare-fun m!321725 () Bool)

(assert (=> b!311673 m!321725))

(declare-fun m!321727 () Bool)

(assert (=> b!311673 m!321727))

(declare-fun m!321729 () Bool)

(assert (=> b!311665 m!321729))

(declare-fun m!321731 () Bool)

(assert (=> b!311665 m!321731))

(declare-fun m!321733 () Bool)

(assert (=> b!311666 m!321733))

(declare-fun m!321735 () Bool)

(assert (=> b!311670 m!321735))

(assert (=> b!311670 m!321735))

(declare-fun m!321737 () Bool)

(assert (=> b!311670 m!321737))

(declare-fun m!321739 () Bool)

(assert (=> start!31026 m!321739))

(declare-fun m!321741 () Bool)

(assert (=> start!31026 m!321741))

(declare-fun m!321743 () Bool)

(assert (=> b!311667 m!321743))

(declare-fun m!321745 () Bool)

(assert (=> b!311672 m!321745))

(declare-fun m!321747 () Bool)

(assert (=> b!311671 m!321747))

(push 1)

