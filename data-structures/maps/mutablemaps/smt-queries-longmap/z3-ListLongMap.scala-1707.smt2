; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31382 () Bool)

(assert start!31382)

(declare-fun b!314285 () Bool)

(declare-fun res!170194 () Bool)

(declare-fun e!195748 () Bool)

(assert (=> b!314285 (=> (not res!170194) (not e!195748))))

(declare-datatypes ((array!16051 0))(
  ( (array!16052 (arr!7598 (Array (_ BitVec 32) (_ BitVec 64))) (size!7950 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16051)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16051 (_ BitVec 32)) Bool)

(assert (=> b!314285 (= res!170194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314286 () Bool)

(declare-fun res!170192 () Bool)

(assert (=> b!314286 (=> (not res!170192) (not e!195748))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314286 (= res!170192 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314287 () Bool)

(declare-fun res!170193 () Bool)

(assert (=> b!314287 (=> (not res!170193) (not e!195748))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314287 (= res!170193 (and (= (size!7950 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7950 a!3293))))))

(declare-fun b!314288 () Bool)

(declare-fun res!170196 () Bool)

(assert (=> b!314288 (=> (not res!170196) (not e!195748))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314288 (= res!170196 (and (= (select (arr!7598 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7950 a!3293))))))

(declare-fun b!314289 () Bool)

(assert (=> b!314289 (= e!195748 false)))

(declare-datatypes ((SeekEntryResult!2749 0))(
  ( (MissingZero!2749 (index!13172 (_ BitVec 32))) (Found!2749 (index!13173 (_ BitVec 32))) (Intermediate!2749 (undefined!3561 Bool) (index!13174 (_ BitVec 32)) (x!31366 (_ BitVec 32))) (Undefined!2749) (MissingVacant!2749 (index!13175 (_ BitVec 32))) )
))
(declare-fun lt!153872 () SeekEntryResult!2749)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16051 (_ BitVec 32)) SeekEntryResult!2749)

(assert (=> b!314289 (= lt!153872 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!170199 () Bool)

(assert (=> start!31382 (=> (not res!170199) (not e!195748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31382 (= res!170199 (validMask!0 mask!3709))))

(assert (=> start!31382 e!195748))

(declare-fun array_inv!5552 (array!16051) Bool)

(assert (=> start!31382 (array_inv!5552 a!3293)))

(assert (=> start!31382 true))

(declare-fun b!314290 () Bool)

(declare-fun res!170198 () Bool)

(assert (=> b!314290 (=> (not res!170198) (not e!195748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314290 (= res!170198 (validKeyInArray!0 k0!2441))))

(declare-fun b!314291 () Bool)

(declare-fun res!170195 () Bool)

(assert (=> b!314291 (=> (not res!170195) (not e!195748))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16051 (_ BitVec 32)) SeekEntryResult!2749)

(assert (=> b!314291 (= res!170195 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2749 i!1240)))))

(declare-fun b!314292 () Bool)

(declare-fun res!170197 () Bool)

(assert (=> b!314292 (=> (not res!170197) (not e!195748))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314292 (= res!170197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2749 false resIndex!52 resX!52)))))

(assert (= (and start!31382 res!170199) b!314287))

(assert (= (and b!314287 res!170193) b!314290))

(assert (= (and b!314290 res!170198) b!314286))

(assert (= (and b!314286 res!170192) b!314291))

(assert (= (and b!314291 res!170195) b!314285))

(assert (= (and b!314285 res!170194) b!314292))

(assert (= (and b!314292 res!170197) b!314288))

(assert (= (and b!314288 res!170196) b!314289))

(declare-fun m!323877 () Bool)

(assert (=> b!314288 m!323877))

(declare-fun m!323879 () Bool)

(assert (=> start!31382 m!323879))

(declare-fun m!323881 () Bool)

(assert (=> start!31382 m!323881))

(declare-fun m!323883 () Bool)

(assert (=> b!314285 m!323883))

(declare-fun m!323885 () Bool)

(assert (=> b!314289 m!323885))

(declare-fun m!323887 () Bool)

(assert (=> b!314286 m!323887))

(declare-fun m!323889 () Bool)

(assert (=> b!314290 m!323889))

(declare-fun m!323891 () Bool)

(assert (=> b!314292 m!323891))

(assert (=> b!314292 m!323891))

(declare-fun m!323893 () Bool)

(assert (=> b!314292 m!323893))

(declare-fun m!323895 () Bool)

(assert (=> b!314291 m!323895))

(check-sat (not b!314289) (not start!31382) (not b!314292) (not b!314291) (not b!314290) (not b!314285) (not b!314286))
