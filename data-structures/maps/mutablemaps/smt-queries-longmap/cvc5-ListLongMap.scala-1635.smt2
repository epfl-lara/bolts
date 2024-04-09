; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30594 () Bool)

(assert start!30594)

(declare-datatypes ((array!15596 0))(
  ( (array!15597 (arr!7381 (Array (_ BitVec 32) (_ BitVec 64))) (size!7733 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15596)

(declare-fun b!306552 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!192181 () Bool)

(assert (=> b!306552 (= e!192181 (not (or (not (= (select (arr!7381 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306552 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9538 0))(
  ( (Unit!9539) )
))
(declare-fun lt!150990 () Unit!9538)

(declare-fun e!192182 () Unit!9538)

(assert (=> b!306552 (= lt!150990 e!192182)))

(declare-fun c!49115 () Bool)

(assert (=> b!306552 (= c!49115 (not (= resIndex!52 index!1781)))))

(declare-fun b!306553 () Bool)

(declare-fun res!163535 () Bool)

(declare-fun e!192180 () Bool)

(assert (=> b!306553 (=> (not res!163535) (not e!192180))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306553 (= res!163535 (validKeyInArray!0 k!2441))))

(declare-fun b!306554 () Bool)

(declare-fun res!163529 () Bool)

(assert (=> b!306554 (=> (not res!163529) (not e!192181))))

(declare-datatypes ((SeekEntryResult!2532 0))(
  ( (MissingZero!2532 (index!12304 (_ BitVec 32))) (Found!2532 (index!12305 (_ BitVec 32))) (Intermediate!2532 (undefined!3344 Bool) (index!12306 (_ BitVec 32)) (x!30522 (_ BitVec 32))) (Undefined!2532) (MissingVacant!2532 (index!12307 (_ BitVec 32))) )
))
(declare-fun lt!150991 () SeekEntryResult!2532)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15596 (_ BitVec 32)) SeekEntryResult!2532)

(assert (=> b!306554 (= res!163529 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150991))))

(declare-fun b!306555 () Bool)

(declare-fun res!163527 () Bool)

(assert (=> b!306555 (=> (not res!163527) (not e!192180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15596 (_ BitVec 32)) Bool)

(assert (=> b!306555 (= res!163527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306556 () Bool)

(declare-fun res!163532 () Bool)

(assert (=> b!306556 (=> (not res!163532) (not e!192181))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306556 (= res!163532 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7381 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306557 () Bool)

(declare-fun res!163533 () Bool)

(assert (=> b!306557 (=> (not res!163533) (not e!192180))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15596 (_ BitVec 32)) SeekEntryResult!2532)

(assert (=> b!306557 (= res!163533 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2532 i!1240)))))

(declare-fun b!306558 () Bool)

(assert (=> b!306558 (= e!192180 e!192181)))

(declare-fun res!163530 () Bool)

(assert (=> b!306558 (=> (not res!163530) (not e!192181))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306558 (= res!163530 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150991))))

(assert (=> b!306558 (= lt!150991 (Intermediate!2532 false resIndex!52 resX!52))))

(declare-fun b!306551 () Bool)

(assert (=> b!306551 false))

(declare-fun e!192183 () Unit!9538)

(declare-fun Unit!9540 () Unit!9538)

(assert (=> b!306551 (= e!192183 Unit!9540)))

(declare-fun res!163531 () Bool)

(assert (=> start!30594 (=> (not res!163531) (not e!192180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30594 (= res!163531 (validMask!0 mask!3709))))

(assert (=> start!30594 e!192180))

(declare-fun array_inv!5335 (array!15596) Bool)

(assert (=> start!30594 (array_inv!5335 a!3293)))

(assert (=> start!30594 true))

(declare-fun b!306559 () Bool)

(assert (=> b!306559 (= e!192182 e!192183)))

(declare-fun c!49114 () Bool)

(assert (=> b!306559 (= c!49114 (or (= (select (arr!7381 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7381 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306560 () Bool)

(assert (=> b!306560 false))

(declare-fun lt!150992 () SeekEntryResult!2532)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306560 (= lt!150992 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9541 () Unit!9538)

(assert (=> b!306560 (= e!192183 Unit!9541)))

(declare-fun b!306561 () Bool)

(declare-fun Unit!9542 () Unit!9538)

(assert (=> b!306561 (= e!192182 Unit!9542)))

(declare-fun b!306562 () Bool)

(declare-fun res!163534 () Bool)

(assert (=> b!306562 (=> (not res!163534) (not e!192181))))

(assert (=> b!306562 (= res!163534 (and (= (select (arr!7381 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7733 a!3293))))))

(declare-fun b!306563 () Bool)

(declare-fun res!163528 () Bool)

(assert (=> b!306563 (=> (not res!163528) (not e!192180))))

(declare-fun arrayContainsKey!0 (array!15596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306563 (= res!163528 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306564 () Bool)

(declare-fun res!163536 () Bool)

(assert (=> b!306564 (=> (not res!163536) (not e!192180))))

(assert (=> b!306564 (= res!163536 (and (= (size!7733 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7733 a!3293))))))

(assert (= (and start!30594 res!163531) b!306564))

(assert (= (and b!306564 res!163536) b!306553))

(assert (= (and b!306553 res!163535) b!306563))

(assert (= (and b!306563 res!163528) b!306557))

(assert (= (and b!306557 res!163533) b!306555))

(assert (= (and b!306555 res!163527) b!306558))

(assert (= (and b!306558 res!163530) b!306562))

(assert (= (and b!306562 res!163534) b!306554))

(assert (= (and b!306554 res!163529) b!306556))

(assert (= (and b!306556 res!163532) b!306552))

(assert (= (and b!306552 c!49115) b!306559))

(assert (= (and b!306552 (not c!49115)) b!306561))

(assert (= (and b!306559 c!49114) b!306551))

(assert (= (and b!306559 (not c!49114)) b!306560))

(declare-fun m!317065 () Bool)

(assert (=> b!306555 m!317065))

(declare-fun m!317067 () Bool)

(assert (=> b!306558 m!317067))

(assert (=> b!306558 m!317067))

(declare-fun m!317069 () Bool)

(assert (=> b!306558 m!317069))

(declare-fun m!317071 () Bool)

(assert (=> b!306562 m!317071))

(declare-fun m!317073 () Bool)

(assert (=> b!306556 m!317073))

(declare-fun m!317075 () Bool)

(assert (=> b!306554 m!317075))

(declare-fun m!317077 () Bool)

(assert (=> b!306560 m!317077))

(assert (=> b!306560 m!317077))

(declare-fun m!317079 () Bool)

(assert (=> b!306560 m!317079))

(declare-fun m!317081 () Bool)

(assert (=> start!30594 m!317081))

(declare-fun m!317083 () Bool)

(assert (=> start!30594 m!317083))

(declare-fun m!317085 () Bool)

(assert (=> b!306563 m!317085))

(assert (=> b!306559 m!317073))

(declare-fun m!317087 () Bool)

(assert (=> b!306553 m!317087))

(assert (=> b!306552 m!317073))

(declare-fun m!317089 () Bool)

(assert (=> b!306557 m!317089))

(push 1)

