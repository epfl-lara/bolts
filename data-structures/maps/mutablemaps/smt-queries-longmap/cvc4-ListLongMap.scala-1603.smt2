; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30298 () Bool)

(assert start!30298)

(declare-fun b!303058 () Bool)

(declare-fun e!190800 () Bool)

(declare-fun e!190801 () Bool)

(assert (=> b!303058 (= e!190800 e!190801)))

(declare-fun res!160710 () Bool)

(assert (=> b!303058 (=> (not res!160710) (not e!190801))))

(declare-datatypes ((array!15402 0))(
  ( (array!15403 (arr!7287 (Array (_ BitVec 32) (_ BitVec 64))) (size!7639 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15402)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2438 0))(
  ( (MissingZero!2438 (index!11928 (_ BitVec 32))) (Found!2438 (index!11929 (_ BitVec 32))) (Intermediate!2438 (undefined!3250 Bool) (index!11930 (_ BitVec 32)) (x!30154 (_ BitVec 32))) (Undefined!2438) (MissingVacant!2438 (index!11931 (_ BitVec 32))) )
))
(declare-fun lt!150146 () SeekEntryResult!2438)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15402 (_ BitVec 32)) SeekEntryResult!2438)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303058 (= res!160710 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150146))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303058 (= lt!150146 (Intermediate!2438 false resIndex!52 resX!52))))

(declare-fun b!303059 () Bool)

(declare-fun res!160707 () Bool)

(assert (=> b!303059 (=> (not res!160707) (not e!190800))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15402 (_ BitVec 32)) SeekEntryResult!2438)

(assert (=> b!303059 (= res!160707 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2438 i!1240)))))

(declare-fun b!303060 () Bool)

(declare-fun res!160703 () Bool)

(assert (=> b!303060 (=> (not res!160703) (not e!190800))))

(declare-fun arrayContainsKey!0 (array!15402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303060 (= res!160703 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303061 () Bool)

(declare-fun res!160702 () Bool)

(assert (=> b!303061 (=> (not res!160702) (not e!190801))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303061 (= res!160702 (and (= (select (arr!7287 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7639 a!3293))))))

(declare-fun b!303062 () Bool)

(declare-fun res!160704 () Bool)

(assert (=> b!303062 (=> (not res!160704) (not e!190801))))

(assert (=> b!303062 (= res!160704 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150146))))

(declare-fun b!303063 () Bool)

(declare-fun res!160709 () Bool)

(assert (=> b!303063 (=> (not res!160709) (not e!190800))))

(assert (=> b!303063 (= res!160709 (and (= (size!7639 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7639 a!3293))))))

(declare-fun b!303064 () Bool)

(assert (=> b!303064 (= e!190801 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7287 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7287 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7287 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun res!160708 () Bool)

(assert (=> start!30298 (=> (not res!160708) (not e!190800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30298 (= res!160708 (validMask!0 mask!3709))))

(assert (=> start!30298 e!190800))

(declare-fun array_inv!5241 (array!15402) Bool)

(assert (=> start!30298 (array_inv!5241 a!3293)))

(assert (=> start!30298 true))

(declare-fun b!303065 () Bool)

(declare-fun res!160706 () Bool)

(assert (=> b!303065 (=> (not res!160706) (not e!190800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303065 (= res!160706 (validKeyInArray!0 k!2441))))

(declare-fun b!303066 () Bool)

(declare-fun res!160705 () Bool)

(assert (=> b!303066 (=> (not res!160705) (not e!190800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15402 (_ BitVec 32)) Bool)

(assert (=> b!303066 (= res!160705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30298 res!160708) b!303063))

(assert (= (and b!303063 res!160709) b!303065))

(assert (= (and b!303065 res!160706) b!303060))

(assert (= (and b!303060 res!160703) b!303059))

(assert (= (and b!303059 res!160707) b!303066))

(assert (= (and b!303066 res!160705) b!303058))

(assert (= (and b!303058 res!160710) b!303061))

(assert (= (and b!303061 res!160702) b!303062))

(assert (= (and b!303062 res!160704) b!303064))

(declare-fun m!314481 () Bool)

(assert (=> b!303065 m!314481))

(declare-fun m!314483 () Bool)

(assert (=> b!303064 m!314483))

(declare-fun m!314485 () Bool)

(assert (=> b!303060 m!314485))

(declare-fun m!314487 () Bool)

(assert (=> b!303066 m!314487))

(declare-fun m!314489 () Bool)

(assert (=> b!303061 m!314489))

(declare-fun m!314491 () Bool)

(assert (=> b!303059 m!314491))

(declare-fun m!314493 () Bool)

(assert (=> b!303058 m!314493))

(assert (=> b!303058 m!314493))

(declare-fun m!314495 () Bool)

(assert (=> b!303058 m!314495))

(declare-fun m!314497 () Bool)

(assert (=> start!30298 m!314497))

(declare-fun m!314499 () Bool)

(assert (=> start!30298 m!314499))

(declare-fun m!314501 () Bool)

(assert (=> b!303062 m!314501))

(push 1)

(assert (not b!303065))

(assert (not b!303066))

