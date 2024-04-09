; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30316 () Bool)

(assert start!30316)

(declare-fun b!303283 () Bool)

(declare-fun res!160935 () Bool)

(declare-fun e!190864 () Bool)

(assert (=> b!303283 (=> (not res!160935) (not e!190864))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303283 (= res!160935 (validKeyInArray!0 k!2441))))

(declare-fun b!303284 () Bool)

(declare-fun res!160928 () Bool)

(assert (=> b!303284 (=> (not res!160928) (not e!190864))))

(declare-datatypes ((array!15420 0))(
  ( (array!15421 (arr!7296 (Array (_ BitVec 32) (_ BitVec 64))) (size!7648 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15420)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2447 0))(
  ( (MissingZero!2447 (index!11964 (_ BitVec 32))) (Found!2447 (index!11965 (_ BitVec 32))) (Intermediate!2447 (undefined!3259 Bool) (index!11966 (_ BitVec 32)) (x!30187 (_ BitVec 32))) (Undefined!2447) (MissingVacant!2447 (index!11967 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15420 (_ BitVec 32)) SeekEntryResult!2447)

(assert (=> b!303284 (= res!160928 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2447 i!1240)))))

(declare-fun b!303285 () Bool)

(declare-fun e!190862 () Bool)

(assert (=> b!303285 (= e!190864 e!190862)))

(declare-fun res!160929 () Bool)

(assert (=> b!303285 (=> (not res!160929) (not e!190862))))

(declare-fun lt!150173 () SeekEntryResult!2447)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15420 (_ BitVec 32)) SeekEntryResult!2447)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303285 (= res!160929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150173))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303285 (= lt!150173 (Intermediate!2447 false resIndex!52 resX!52))))

(declare-fun b!303286 () Bool)

(declare-fun res!160932 () Bool)

(assert (=> b!303286 (=> (not res!160932) (not e!190862))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!303286 (= res!160932 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150173))))

(declare-fun b!303287 () Bool)

(declare-fun res!160933 () Bool)

(assert (=> b!303287 (=> (not res!160933) (not e!190864))))

(declare-fun arrayContainsKey!0 (array!15420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303287 (= res!160933 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303288 () Bool)

(declare-fun res!160934 () Bool)

(assert (=> b!303288 (=> (not res!160934) (not e!190864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15420 (_ BitVec 32)) Bool)

(assert (=> b!303288 (= res!160934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160930 () Bool)

(assert (=> start!30316 (=> (not res!160930) (not e!190864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30316 (= res!160930 (validMask!0 mask!3709))))

(assert (=> start!30316 e!190864))

(declare-fun array_inv!5250 (array!15420) Bool)

(assert (=> start!30316 (array_inv!5250 a!3293)))

(assert (=> start!30316 true))

(declare-fun b!303289 () Bool)

(declare-fun res!160931 () Bool)

(assert (=> b!303289 (=> (not res!160931) (not e!190862))))

(assert (=> b!303289 (= res!160931 (and (= (select (arr!7296 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7648 a!3293))))))

(declare-fun b!303290 () Bool)

(assert (=> b!303290 (= e!190862 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7296 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7296 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7296 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!303291 () Bool)

(declare-fun res!160927 () Bool)

(assert (=> b!303291 (=> (not res!160927) (not e!190864))))

(assert (=> b!303291 (= res!160927 (and (= (size!7648 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7648 a!3293))))))

(assert (= (and start!30316 res!160930) b!303291))

(assert (= (and b!303291 res!160927) b!303283))

(assert (= (and b!303283 res!160935) b!303287))

(assert (= (and b!303287 res!160933) b!303284))

(assert (= (and b!303284 res!160928) b!303288))

(assert (= (and b!303288 res!160934) b!303285))

(assert (= (and b!303285 res!160929) b!303289))

(assert (= (and b!303289 res!160931) b!303286))

(assert (= (and b!303286 res!160932) b!303290))

(declare-fun m!314667 () Bool)

(assert (=> b!303289 m!314667))

(declare-fun m!314669 () Bool)

(assert (=> b!303283 m!314669))

(declare-fun m!314671 () Bool)

(assert (=> b!303288 m!314671))

(declare-fun m!314673 () Bool)

(assert (=> start!30316 m!314673))

(declare-fun m!314675 () Bool)

(assert (=> start!30316 m!314675))

(declare-fun m!314677 () Bool)

(assert (=> b!303285 m!314677))

(assert (=> b!303285 m!314677))

(declare-fun m!314679 () Bool)

(assert (=> b!303285 m!314679))

(declare-fun m!314681 () Bool)

(assert (=> b!303284 m!314681))

(declare-fun m!314683 () Bool)

(assert (=> b!303290 m!314683))

(declare-fun m!314685 () Bool)

(assert (=> b!303286 m!314685))

(declare-fun m!314687 () Bool)

(assert (=> b!303287 m!314687))

(push 1)

(assert (not b!303286))

(assert (not start!30316))

(assert (not b!303283))

(assert (not b!303284))

(assert (not b!303287))

