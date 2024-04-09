; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30330 () Bool)

(assert start!30330)

(declare-fun b!303474 () Bool)

(declare-fun e!190927 () Bool)

(declare-fun e!190926 () Bool)

(assert (=> b!303474 (= e!190927 e!190926)))

(declare-fun res!161124 () Bool)

(assert (=> b!303474 (=> (not res!161124) (not e!190926))))

(declare-datatypes ((SeekEntryResult!2454 0))(
  ( (MissingZero!2454 (index!11992 (_ BitVec 32))) (Found!2454 (index!11993 (_ BitVec 32))) (Intermediate!2454 (undefined!3266 Bool) (index!11994 (_ BitVec 32)) (x!30218 (_ BitVec 32))) (Undefined!2454) (MissingVacant!2454 (index!11995 (_ BitVec 32))) )
))
(declare-fun lt!150197 () SeekEntryResult!2454)

(declare-datatypes ((array!15434 0))(
  ( (array!15435 (arr!7303 (Array (_ BitVec 32) (_ BitVec 64))) (size!7655 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15434)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15434 (_ BitVec 32)) SeekEntryResult!2454)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303474 (= res!161124 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150197))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303474 (= lt!150197 (Intermediate!2454 false resIndex!52 resX!52))))

(declare-fun b!303475 () Bool)

(declare-fun res!161119 () Bool)

(assert (=> b!303475 (=> (not res!161119) (not e!190927))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303475 (= res!161119 (and (= (size!7655 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7655 a!3293))))))

(declare-fun b!303476 () Bool)

(declare-fun res!161118 () Bool)

(assert (=> b!303476 (=> (not res!161118) (not e!190927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15434 (_ BitVec 32)) Bool)

(assert (=> b!303476 (= res!161118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303477 () Bool)

(assert (=> b!303477 (= e!190926 false)))

(declare-fun lt!150196 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303477 (= lt!150196 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303478 () Bool)

(declare-fun res!161121 () Bool)

(assert (=> b!303478 (=> (not res!161121) (not e!190926))))

(assert (=> b!303478 (= res!161121 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150197))))

(declare-fun res!161122 () Bool)

(assert (=> start!30330 (=> (not res!161122) (not e!190927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30330 (= res!161122 (validMask!0 mask!3709))))

(assert (=> start!30330 e!190927))

(declare-fun array_inv!5257 (array!15434) Bool)

(assert (=> start!30330 (array_inv!5257 a!3293)))

(assert (=> start!30330 true))

(declare-fun b!303479 () Bool)

(declare-fun res!161127 () Bool)

(assert (=> b!303479 (=> (not res!161127) (not e!190927))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15434 (_ BitVec 32)) SeekEntryResult!2454)

(assert (=> b!303479 (= res!161127 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2454 i!1240)))))

(declare-fun b!303480 () Bool)

(declare-fun res!161125 () Bool)

(assert (=> b!303480 (=> (not res!161125) (not e!190927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303480 (= res!161125 (validKeyInArray!0 k!2441))))

(declare-fun b!303481 () Bool)

(declare-fun res!161120 () Bool)

(assert (=> b!303481 (=> (not res!161120) (not e!190926))))

(assert (=> b!303481 (= res!161120 (and (= (select (arr!7303 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7655 a!3293))))))

(declare-fun b!303482 () Bool)

(declare-fun res!161126 () Bool)

(assert (=> b!303482 (=> (not res!161126) (not e!190927))))

(declare-fun arrayContainsKey!0 (array!15434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303482 (= res!161126 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303483 () Bool)

(declare-fun res!161123 () Bool)

(assert (=> b!303483 (=> (not res!161123) (not e!190926))))

(assert (=> b!303483 (= res!161123 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7303 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7303 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7303 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!30330 res!161122) b!303475))

(assert (= (and b!303475 res!161119) b!303480))

(assert (= (and b!303480 res!161125) b!303482))

(assert (= (and b!303482 res!161126) b!303479))

(assert (= (and b!303479 res!161127) b!303476))

(assert (= (and b!303476 res!161118) b!303474))

(assert (= (and b!303474 res!161124) b!303481))

(assert (= (and b!303481 res!161120) b!303478))

(assert (= (and b!303478 res!161121) b!303483))

(assert (= (and b!303483 res!161123) b!303477))

(declare-fun m!314821 () Bool)

(assert (=> b!303483 m!314821))

(declare-fun m!314823 () Bool)

(assert (=> b!303476 m!314823))

(declare-fun m!314825 () Bool)

(assert (=> b!303479 m!314825))

(declare-fun m!314827 () Bool)

(assert (=> start!30330 m!314827))

(declare-fun m!314829 () Bool)

(assert (=> start!30330 m!314829))

(declare-fun m!314831 () Bool)

(assert (=> b!303477 m!314831))

(declare-fun m!314833 () Bool)

(assert (=> b!303481 m!314833))

(declare-fun m!314835 () Bool)

(assert (=> b!303478 m!314835))

(declare-fun m!314837 () Bool)

(assert (=> b!303480 m!314837))

(declare-fun m!314839 () Bool)

(assert (=> b!303482 m!314839))

(declare-fun m!314841 () Bool)

(assert (=> b!303474 m!314841))

(assert (=> b!303474 m!314841))

(declare-fun m!314843 () Bool)

(assert (=> b!303474 m!314843))

(push 1)

