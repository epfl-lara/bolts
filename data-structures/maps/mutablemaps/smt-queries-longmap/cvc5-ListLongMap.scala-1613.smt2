; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30408 () Bool)

(assert start!30408)

(declare-fun b!304050 () Bool)

(declare-fun res!161559 () Bool)

(declare-fun e!191166 () Bool)

(assert (=> b!304050 (=> (not res!161559) (not e!191166))))

(declare-datatypes ((array!15461 0))(
  ( (array!15462 (arr!7315 (Array (_ BitVec 32) (_ BitVec 64))) (size!7667 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15461)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304050 (= res!161559 (and (= (size!7667 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7667 a!3293))))))

(declare-fun res!161557 () Bool)

(assert (=> start!30408 (=> (not res!161557) (not e!191166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30408 (= res!161557 (validMask!0 mask!3709))))

(assert (=> start!30408 e!191166))

(declare-fun array_inv!5269 (array!15461) Bool)

(assert (=> start!30408 (array_inv!5269 a!3293)))

(assert (=> start!30408 true))

(declare-fun b!304051 () Bool)

(declare-fun res!161562 () Bool)

(assert (=> b!304051 (=> (not res!161562) (not e!191166))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2466 0))(
  ( (MissingZero!2466 (index!12040 (_ BitVec 32))) (Found!2466 (index!12041 (_ BitVec 32))) (Intermediate!2466 (undefined!3278 Bool) (index!12042 (_ BitVec 32)) (x!30271 (_ BitVec 32))) (Undefined!2466) (MissingVacant!2466 (index!12043 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15461 (_ BitVec 32)) SeekEntryResult!2466)

(assert (=> b!304051 (= res!161562 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2466 i!1240)))))

(declare-fun b!304052 () Bool)

(declare-fun res!161560 () Bool)

(declare-fun e!191167 () Bool)

(assert (=> b!304052 (=> (not res!161560) (not e!191167))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304052 (= res!161560 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7315 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7315 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7315 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!304053 () Bool)

(declare-fun res!161556 () Bool)

(assert (=> b!304053 (=> (not res!161556) (not e!191166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304053 (= res!161556 (validKeyInArray!0 k!2441))))

(declare-fun b!304054 () Bool)

(declare-fun res!161554 () Bool)

(assert (=> b!304054 (=> (not res!161554) (not e!191166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15461 (_ BitVec 32)) Bool)

(assert (=> b!304054 (= res!161554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304055 () Bool)

(declare-fun lt!150374 () (_ BitVec 32))

(assert (=> b!304055 (= e!191167 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge lt!150374 #b00000000000000000000000000000000) (bvslt lt!150374 (bvadd #b00000000000000000000000000000001 mask!3709)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304055 (= lt!150374 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!304056 () Bool)

(declare-fun res!161555 () Bool)

(assert (=> b!304056 (=> (not res!161555) (not e!191167))))

(declare-fun lt!150373 () SeekEntryResult!2466)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15461 (_ BitVec 32)) SeekEntryResult!2466)

(assert (=> b!304056 (= res!161555 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150373))))

(declare-fun b!304057 () Bool)

(declare-fun res!161561 () Bool)

(assert (=> b!304057 (=> (not res!161561) (not e!191167))))

(assert (=> b!304057 (= res!161561 (and (= (select (arr!7315 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7667 a!3293))))))

(declare-fun b!304058 () Bool)

(declare-fun res!161558 () Bool)

(assert (=> b!304058 (=> (not res!161558) (not e!191166))))

(declare-fun arrayContainsKey!0 (array!15461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304058 (= res!161558 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304059 () Bool)

(assert (=> b!304059 (= e!191166 e!191167)))

(declare-fun res!161553 () Bool)

(assert (=> b!304059 (=> (not res!161553) (not e!191167))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304059 (= res!161553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150373))))

(assert (=> b!304059 (= lt!150373 (Intermediate!2466 false resIndex!52 resX!52))))

(assert (= (and start!30408 res!161557) b!304050))

(assert (= (and b!304050 res!161559) b!304053))

(assert (= (and b!304053 res!161556) b!304058))

(assert (= (and b!304058 res!161558) b!304051))

(assert (= (and b!304051 res!161562) b!304054))

(assert (= (and b!304054 res!161554) b!304059))

(assert (= (and b!304059 res!161553) b!304057))

(assert (= (and b!304057 res!161561) b!304056))

(assert (= (and b!304056 res!161555) b!304052))

(assert (= (and b!304052 res!161560) b!304055))

(declare-fun m!315223 () Bool)

(assert (=> b!304053 m!315223))

(declare-fun m!315225 () Bool)

(assert (=> b!304051 m!315225))

(declare-fun m!315227 () Bool)

(assert (=> b!304056 m!315227))

(declare-fun m!315229 () Bool)

(assert (=> b!304055 m!315229))

(declare-fun m!315231 () Bool)

(assert (=> b!304057 m!315231))

(declare-fun m!315233 () Bool)

(assert (=> b!304059 m!315233))

(assert (=> b!304059 m!315233))

(declare-fun m!315235 () Bool)

(assert (=> b!304059 m!315235))

(declare-fun m!315237 () Bool)

(assert (=> b!304052 m!315237))

(declare-fun m!315239 () Bool)

(assert (=> b!304058 m!315239))

(declare-fun m!315241 () Bool)

(assert (=> b!304054 m!315241))

(declare-fun m!315243 () Bool)

(assert (=> start!30408 m!315243))

(declare-fun m!315245 () Bool)

(assert (=> start!30408 m!315245))

(push 1)

(assert (not b!304054))

(assert (not b!304055))

(assert (not b!304058))

(assert (not start!30408))

(assert (not b!304051))

(assert (not b!304059))

(assert (not b!304053))

(assert (not b!304056))

(check-sat)

(pop 1)

