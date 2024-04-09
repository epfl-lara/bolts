; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30340 () Bool)

(assert start!30340)

(declare-fun b!303624 () Bool)

(declare-fun res!161268 () Bool)

(declare-fun e!190971 () Bool)

(assert (=> b!303624 (=> (not res!161268) (not e!190971))))

(declare-datatypes ((array!15444 0))(
  ( (array!15445 (arr!7308 (Array (_ BitVec 32) (_ BitVec 64))) (size!7660 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15444)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15444 (_ BitVec 32)) Bool)

(assert (=> b!303624 (= res!161268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303625 () Bool)

(declare-fun res!161277 () Bool)

(declare-fun e!190972 () Bool)

(assert (=> b!303625 (=> (not res!161277) (not e!190972))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303625 (= res!161277 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7308 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7308 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7308 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303626 () Bool)

(declare-fun res!161271 () Bool)

(assert (=> b!303626 (=> (not res!161271) (not e!190971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303626 (= res!161271 (validKeyInArray!0 k!2441))))

(declare-fun b!303627 () Bool)

(declare-fun res!161270 () Bool)

(assert (=> b!303627 (=> (not res!161270) (not e!190971))))

(declare-fun arrayContainsKey!0 (array!15444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303627 (= res!161270 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303628 () Bool)

(assert (=> b!303628 (= e!190971 e!190972)))

(declare-fun res!161273 () Bool)

(assert (=> b!303628 (=> (not res!161273) (not e!190972))))

(declare-datatypes ((SeekEntryResult!2459 0))(
  ( (MissingZero!2459 (index!12012 (_ BitVec 32))) (Found!2459 (index!12013 (_ BitVec 32))) (Intermediate!2459 (undefined!3271 Bool) (index!12014 (_ BitVec 32)) (x!30231 (_ BitVec 32))) (Undefined!2459) (MissingVacant!2459 (index!12015 (_ BitVec 32))) )
))
(declare-fun lt!150226 () SeekEntryResult!2459)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15444 (_ BitVec 32)) SeekEntryResult!2459)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303628 (= res!161273 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150226))))

(assert (=> b!303628 (= lt!150226 (Intermediate!2459 false resIndex!52 resX!52))))

(declare-fun b!303629 () Bool)

(declare-fun res!161276 () Bool)

(assert (=> b!303629 (=> (not res!161276) (not e!190972))))

(assert (=> b!303629 (= res!161276 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150226))))

(declare-fun b!303630 () Bool)

(assert (=> b!303630 (= e!190972 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!150227 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303630 (= lt!150227 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303631 () Bool)

(declare-fun res!161275 () Bool)

(assert (=> b!303631 (=> (not res!161275) (not e!190971))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303631 (= res!161275 (and (= (size!7660 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7660 a!3293))))))

(declare-fun b!303632 () Bool)

(declare-fun res!161274 () Bool)

(assert (=> b!303632 (=> (not res!161274) (not e!190972))))

(assert (=> b!303632 (= res!161274 (and (= (select (arr!7308 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7660 a!3293))))))

(declare-fun b!303633 () Bool)

(declare-fun res!161272 () Bool)

(assert (=> b!303633 (=> (not res!161272) (not e!190971))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15444 (_ BitVec 32)) SeekEntryResult!2459)

(assert (=> b!303633 (= res!161272 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2459 i!1240)))))

(declare-fun res!161269 () Bool)

(assert (=> start!30340 (=> (not res!161269) (not e!190971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30340 (= res!161269 (validMask!0 mask!3709))))

(assert (=> start!30340 e!190971))

(declare-fun array_inv!5262 (array!15444) Bool)

(assert (=> start!30340 (array_inv!5262 a!3293)))

(assert (=> start!30340 true))

(assert (= (and start!30340 res!161269) b!303631))

(assert (= (and b!303631 res!161275) b!303626))

(assert (= (and b!303626 res!161271) b!303627))

(assert (= (and b!303627 res!161270) b!303633))

(assert (= (and b!303633 res!161272) b!303624))

(assert (= (and b!303624 res!161268) b!303628))

(assert (= (and b!303628 res!161273) b!303632))

(assert (= (and b!303632 res!161274) b!303629))

(assert (= (and b!303629 res!161276) b!303625))

(assert (= (and b!303625 res!161277) b!303630))

(declare-fun m!314941 () Bool)

(assert (=> b!303633 m!314941))

(declare-fun m!314943 () Bool)

(assert (=> b!303624 m!314943))

(declare-fun m!314945 () Bool)

(assert (=> b!303625 m!314945))

(declare-fun m!314947 () Bool)

(assert (=> b!303632 m!314947))

(declare-fun m!314949 () Bool)

(assert (=> b!303629 m!314949))

(declare-fun m!314951 () Bool)

(assert (=> b!303626 m!314951))

(declare-fun m!314953 () Bool)

(assert (=> b!303630 m!314953))

(declare-fun m!314955 () Bool)

(assert (=> b!303628 m!314955))

(assert (=> b!303628 m!314955))

(declare-fun m!314957 () Bool)

(assert (=> b!303628 m!314957))

(declare-fun m!314959 () Bool)

(assert (=> b!303627 m!314959))

(declare-fun m!314961 () Bool)

(assert (=> start!30340 m!314961))

(declare-fun m!314963 () Bool)

(assert (=> start!30340 m!314963))

(push 1)

(assert (not b!303629))

(assert (not b!303630))

(assert (not b!303627))

(assert (not b!303624))

(assert (not b!303626))

(assert (not start!30340))

(assert (not b!303628))

(assert (not b!303633))

(check-sat)

