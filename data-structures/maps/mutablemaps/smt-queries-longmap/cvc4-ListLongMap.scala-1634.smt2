; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30592 () Bool)

(assert start!30592)

(declare-fun b!306509 () Bool)

(declare-datatypes ((Unit!9533 0))(
  ( (Unit!9534) )
))
(declare-fun e!192166 () Unit!9533)

(declare-fun e!192165 () Unit!9533)

(assert (=> b!306509 (= e!192166 e!192165)))

(declare-fun c!49108 () Bool)

(declare-datatypes ((array!15594 0))(
  ( (array!15595 (arr!7380 (Array (_ BitVec 32) (_ BitVec 64))) (size!7732 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15594)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306509 (= c!49108 (or (= (select (arr!7380 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7380 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306510 () Bool)

(declare-fun e!192169 () Bool)

(declare-fun e!192167 () Bool)

(assert (=> b!306510 (= e!192169 e!192167)))

(declare-fun res!163500 () Bool)

(assert (=> b!306510 (=> (not res!163500) (not e!192167))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2531 0))(
  ( (MissingZero!2531 (index!12300 (_ BitVec 32))) (Found!2531 (index!12301 (_ BitVec 32))) (Intermediate!2531 (undefined!3343 Bool) (index!12302 (_ BitVec 32)) (x!30513 (_ BitVec 32))) (Undefined!2531) (MissingVacant!2531 (index!12303 (_ BitVec 32))) )
))
(declare-fun lt!150981 () SeekEntryResult!2531)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15594 (_ BitVec 32)) SeekEntryResult!2531)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306510 (= res!163500 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150981))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306510 (= lt!150981 (Intermediate!2531 false resIndex!52 resX!52))))

(declare-fun b!306511 () Bool)

(declare-fun res!163498 () Bool)

(assert (=> b!306511 (=> (not res!163498) (not e!192167))))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!306511 (= res!163498 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7380 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306512 () Bool)

(declare-fun res!163505 () Bool)

(assert (=> b!306512 (=> (not res!163505) (not e!192169))))

(declare-fun arrayContainsKey!0 (array!15594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306512 (= res!163505 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306513 () Bool)

(declare-fun res!163499 () Bool)

(assert (=> b!306513 (=> (not res!163499) (not e!192169))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15594 (_ BitVec 32)) SeekEntryResult!2531)

(assert (=> b!306513 (= res!163499 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2531 i!1240)))))

(declare-fun b!306514 () Bool)

(declare-fun res!163504 () Bool)

(assert (=> b!306514 (=> (not res!163504) (not e!192167))))

(assert (=> b!306514 (= res!163504 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150981))))

(declare-fun b!306515 () Bool)

(assert (=> b!306515 (= e!192167 (not (or (not (= (select (arr!7380 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(assert (=> b!306515 (= index!1781 resIndex!52)))

(declare-fun lt!150983 () Unit!9533)

(assert (=> b!306515 (= lt!150983 e!192166)))

(declare-fun c!49109 () Bool)

(assert (=> b!306515 (= c!49109 (not (= resIndex!52 index!1781)))))

(declare-fun b!306517 () Bool)

(declare-fun res!163502 () Bool)

(assert (=> b!306517 (=> (not res!163502) (not e!192169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15594 (_ BitVec 32)) Bool)

(assert (=> b!306517 (= res!163502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306518 () Bool)

(declare-fun res!163503 () Bool)

(assert (=> b!306518 (=> (not res!163503) (not e!192167))))

(assert (=> b!306518 (= res!163503 (and (= (select (arr!7380 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7732 a!3293))))))

(declare-fun b!306519 () Bool)

(assert (=> b!306519 false))

(declare-fun lt!150982 () SeekEntryResult!2531)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306519 (= lt!150982 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9535 () Unit!9533)

(assert (=> b!306519 (= e!192165 Unit!9535)))

(declare-fun b!306520 () Bool)

(assert (=> b!306520 false))

(declare-fun Unit!9536 () Unit!9533)

(assert (=> b!306520 (= e!192165 Unit!9536)))

(declare-fun b!306521 () Bool)

(declare-fun res!163497 () Bool)

(assert (=> b!306521 (=> (not res!163497) (not e!192169))))

(assert (=> b!306521 (= res!163497 (and (= (size!7732 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7732 a!3293))))))

(declare-fun b!306522 () Bool)

(declare-fun Unit!9537 () Unit!9533)

(assert (=> b!306522 (= e!192166 Unit!9537)))

(declare-fun res!163501 () Bool)

(assert (=> start!30592 (=> (not res!163501) (not e!192169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30592 (= res!163501 (validMask!0 mask!3709))))

(assert (=> start!30592 e!192169))

(declare-fun array_inv!5334 (array!15594) Bool)

(assert (=> start!30592 (array_inv!5334 a!3293)))

(assert (=> start!30592 true))

(declare-fun b!306516 () Bool)

(declare-fun res!163506 () Bool)

(assert (=> b!306516 (=> (not res!163506) (not e!192169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306516 (= res!163506 (validKeyInArray!0 k!2441))))

(assert (= (and start!30592 res!163501) b!306521))

(assert (= (and b!306521 res!163497) b!306516))

(assert (= (and b!306516 res!163506) b!306512))

(assert (= (and b!306512 res!163505) b!306513))

(assert (= (and b!306513 res!163499) b!306517))

(assert (= (and b!306517 res!163502) b!306510))

(assert (= (and b!306510 res!163500) b!306518))

(assert (= (and b!306518 res!163503) b!306514))

(assert (= (and b!306514 res!163504) b!306511))

(assert (= (and b!306511 res!163498) b!306515))

(assert (= (and b!306515 c!49109) b!306509))

(assert (= (and b!306515 (not c!49109)) b!306522))

(assert (= (and b!306509 c!49108) b!306520))

(assert (= (and b!306509 (not c!49108)) b!306519))

(declare-fun m!317039 () Bool)

(assert (=> b!306517 m!317039))

(declare-fun m!317041 () Bool)

(assert (=> b!306519 m!317041))

(assert (=> b!306519 m!317041))

(declare-fun m!317043 () Bool)

(assert (=> b!306519 m!317043))

(declare-fun m!317045 () Bool)

(assert (=> b!306512 m!317045))

(declare-fun m!317047 () Bool)

(assert (=> b!306513 m!317047))

(declare-fun m!317049 () Bool)

(assert (=> b!306515 m!317049))

(assert (=> b!306509 m!317049))

(declare-fun m!317051 () Bool)

(assert (=> b!306514 m!317051))

(declare-fun m!317053 () Bool)

(assert (=> b!306516 m!317053))

(assert (=> b!306511 m!317049))

(declare-fun m!317055 () Bool)

(assert (=> b!306518 m!317055))

(declare-fun m!317057 () Bool)

(assert (=> start!30592 m!317057))

(declare-fun m!317059 () Bool)

(assert (=> start!30592 m!317059))

(declare-fun m!317061 () Bool)

(assert (=> b!306510 m!317061))

(assert (=> b!306510 m!317061))

(declare-fun m!317063 () Bool)

(assert (=> b!306510 m!317063))

(push 1)

(assert (not b!306519))

(assert (not b!306510))

(assert (not b!306516))

(assert (not b!306513))

(assert (not start!30592))

(assert (not b!306514))

(assert (not b!306517))

(assert (not b!306512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

