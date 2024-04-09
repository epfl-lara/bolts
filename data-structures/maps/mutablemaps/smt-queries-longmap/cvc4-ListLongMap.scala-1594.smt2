; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30244 () Bool)

(assert start!30244)

(declare-fun b!302365 () Bool)

(declare-fun res!160010 () Bool)

(declare-fun e!190594 () Bool)

(assert (=> b!302365 (=> (not res!160010) (not e!190594))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302365 (= res!160010 (validKeyInArray!0 k!2441))))

(declare-datatypes ((array!15348 0))(
  ( (array!15349 (arr!7260 (Array (_ BitVec 32) (_ BitVec 64))) (size!7612 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15348)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun b!302366 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun e!190593 () Bool)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302366 (= e!190593 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7260 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7260 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7260 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun res!160016 () Bool)

(assert (=> start!30244 (=> (not res!160016) (not e!190594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30244 (= res!160016 (validMask!0 mask!3709))))

(assert (=> start!30244 e!190594))

(declare-fun array_inv!5214 (array!15348) Bool)

(assert (=> start!30244 (array_inv!5214 a!3293)))

(assert (=> start!30244 true))

(declare-fun b!302367 () Bool)

(declare-fun res!160017 () Bool)

(assert (=> b!302367 (=> (not res!160017) (not e!190593))))

(declare-datatypes ((SeekEntryResult!2411 0))(
  ( (MissingZero!2411 (index!11820 (_ BitVec 32))) (Found!2411 (index!11821 (_ BitVec 32))) (Intermediate!2411 (undefined!3223 Bool) (index!11822 (_ BitVec 32)) (x!30055 (_ BitVec 32))) (Undefined!2411) (MissingVacant!2411 (index!11823 (_ BitVec 32))) )
))
(declare-fun lt!150065 () SeekEntryResult!2411)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15348 (_ BitVec 32)) SeekEntryResult!2411)

(assert (=> b!302367 (= res!160017 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150065))))

(declare-fun b!302368 () Bool)

(declare-fun res!160015 () Bool)

(assert (=> b!302368 (=> (not res!160015) (not e!190593))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302368 (= res!160015 (and (= (select (arr!7260 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7612 a!3293))))))

(declare-fun b!302369 () Bool)

(declare-fun res!160011 () Bool)

(assert (=> b!302369 (=> (not res!160011) (not e!190594))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15348 (_ BitVec 32)) SeekEntryResult!2411)

(assert (=> b!302369 (= res!160011 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2411 i!1240)))))

(declare-fun b!302370 () Bool)

(assert (=> b!302370 (= e!190594 e!190593)))

(declare-fun res!160009 () Bool)

(assert (=> b!302370 (=> (not res!160009) (not e!190593))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302370 (= res!160009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150065))))

(assert (=> b!302370 (= lt!150065 (Intermediate!2411 false resIndex!52 resX!52))))

(declare-fun b!302371 () Bool)

(declare-fun res!160012 () Bool)

(assert (=> b!302371 (=> (not res!160012) (not e!190594))))

(declare-fun arrayContainsKey!0 (array!15348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302371 (= res!160012 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302372 () Bool)

(declare-fun res!160013 () Bool)

(assert (=> b!302372 (=> (not res!160013) (not e!190594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15348 (_ BitVec 32)) Bool)

(assert (=> b!302372 (= res!160013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302373 () Bool)

(declare-fun res!160014 () Bool)

(assert (=> b!302373 (=> (not res!160014) (not e!190594))))

(assert (=> b!302373 (= res!160014 (and (= (size!7612 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7612 a!3293))))))

(assert (= (and start!30244 res!160016) b!302373))

(assert (= (and b!302373 res!160014) b!302365))

(assert (= (and b!302365 res!160010) b!302371))

(assert (= (and b!302371 res!160012) b!302369))

(assert (= (and b!302369 res!160011) b!302372))

(assert (= (and b!302372 res!160013) b!302370))

(assert (= (and b!302370 res!160009) b!302368))

(assert (= (and b!302368 res!160015) b!302367))

(assert (= (and b!302367 res!160017) b!302366))

(declare-fun m!313911 () Bool)

(assert (=> b!302370 m!313911))

(assert (=> b!302370 m!313911))

(declare-fun m!313913 () Bool)

(assert (=> b!302370 m!313913))

(declare-fun m!313915 () Bool)

(assert (=> b!302369 m!313915))

(declare-fun m!313917 () Bool)

(assert (=> b!302367 m!313917))

(declare-fun m!313919 () Bool)

(assert (=> b!302371 m!313919))

(declare-fun m!313921 () Bool)

(assert (=> start!30244 m!313921))

(declare-fun m!313923 () Bool)

(assert (=> start!30244 m!313923))

(declare-fun m!313925 () Bool)

(assert (=> b!302372 m!313925))

(declare-fun m!313927 () Bool)

(assert (=> b!302368 m!313927))

(declare-fun m!313929 () Bool)

(assert (=> b!302365 m!313929))

(declare-fun m!313931 () Bool)

(assert (=> b!302366 m!313931))

(push 1)

(assert (not start!30244))

(assert (not b!302371))

(assert (not b!302367))

(assert (not b!302370))

(assert (not b!302372))

(assert (not b!302369))

(assert (not b!302365))

(check-sat)

(pop 1)

