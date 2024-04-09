; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31508 () Bool)

(assert start!31508)

(declare-fun b!315055 () Bool)

(declare-fun e!196154 () Bool)

(declare-fun e!196156 () Bool)

(assert (=> b!315055 (= e!196154 e!196156)))

(declare-fun res!170664 () Bool)

(assert (=> b!315055 (=> (not res!170664) (not e!196156))))

(declare-datatypes ((array!16081 0))(
  ( (array!16082 (arr!7610 (Array (_ BitVec 32) (_ BitVec 64))) (size!7962 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16081)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2761 0))(
  ( (MissingZero!2761 (index!13220 (_ BitVec 32))) (Found!2761 (index!13221 (_ BitVec 32))) (Intermediate!2761 (undefined!3573 Bool) (index!13222 (_ BitVec 32)) (x!31425 (_ BitVec 32))) (Undefined!2761) (MissingVacant!2761 (index!13223 (_ BitVec 32))) )
))
(declare-fun lt!154154 () SeekEntryResult!2761)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16081 (_ BitVec 32)) SeekEntryResult!2761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315055 (= res!170664 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154154))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315055 (= lt!154154 (Intermediate!2761 false resIndex!52 resX!52))))

(declare-fun res!170669 () Bool)

(assert (=> start!31508 (=> (not res!170669) (not e!196154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31508 (= res!170669 (validMask!0 mask!3709))))

(assert (=> start!31508 e!196154))

(declare-fun array_inv!5564 (array!16081) Bool)

(assert (=> start!31508 (array_inv!5564 a!3293)))

(assert (=> start!31508 true))

(declare-fun b!315056 () Bool)

(declare-fun e!196155 () Bool)

(assert (=> b!315056 (= e!196156 e!196155)))

(declare-fun res!170665 () Bool)

(assert (=> b!315056 (=> (not res!170665) (not e!196155))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!154152 () SeekEntryResult!2761)

(assert (=> b!315056 (= res!170665 (and (= lt!154152 lt!154154) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7610 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7610 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7610 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315056 (= lt!154152 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!315057 () Bool)

(declare-fun res!170670 () Bool)

(assert (=> b!315057 (=> (not res!170670) (not e!196154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315057 (= res!170670 (validKeyInArray!0 k0!2441))))

(declare-fun b!315058 () Bool)

(declare-fun res!170662 () Bool)

(assert (=> b!315058 (=> (not res!170662) (not e!196154))))

(declare-fun arrayContainsKey!0 (array!16081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315058 (= res!170662 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315059 () Bool)

(declare-fun res!170668 () Bool)

(assert (=> b!315059 (=> (not res!170668) (not e!196154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16081 (_ BitVec 32)) Bool)

(assert (=> b!315059 (= res!170668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315060 () Bool)

(declare-fun res!170667 () Bool)

(assert (=> b!315060 (=> (not res!170667) (not e!196154))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16081 (_ BitVec 32)) SeekEntryResult!2761)

(assert (=> b!315060 (= res!170667 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2761 i!1240)))))

(declare-fun b!315061 () Bool)

(declare-fun res!170666 () Bool)

(assert (=> b!315061 (=> (not res!170666) (not e!196154))))

(assert (=> b!315061 (= res!170666 (and (= (size!7962 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7962 a!3293))))))

(declare-fun b!315062 () Bool)

(declare-fun res!170663 () Bool)

(assert (=> b!315062 (=> (not res!170663) (not e!196156))))

(assert (=> b!315062 (= res!170663 (and (= (select (arr!7610 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7962 a!3293))))))

(declare-fun b!315063 () Bool)

(declare-fun lt!154153 () SeekEntryResult!2761)

(get-info :version)

(assert (=> b!315063 (= e!196155 (not ((_ is Intermediate!2761) lt!154153)))))

(assert (=> b!315063 (= lt!154152 lt!154153)))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315063 (= lt!154153 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (= (and start!31508 res!170669) b!315061))

(assert (= (and b!315061 res!170666) b!315057))

(assert (= (and b!315057 res!170670) b!315058))

(assert (= (and b!315058 res!170662) b!315060))

(assert (= (and b!315060 res!170667) b!315059))

(assert (= (and b!315059 res!170668) b!315055))

(assert (= (and b!315055 res!170664) b!315062))

(assert (= (and b!315062 res!170663) b!315056))

(assert (= (and b!315056 res!170665) b!315063))

(declare-fun m!324405 () Bool)

(assert (=> b!315063 m!324405))

(assert (=> b!315063 m!324405))

(declare-fun m!324407 () Bool)

(assert (=> b!315063 m!324407))

(declare-fun m!324409 () Bool)

(assert (=> b!315058 m!324409))

(declare-fun m!324411 () Bool)

(assert (=> b!315062 m!324411))

(declare-fun m!324413 () Bool)

(assert (=> b!315056 m!324413))

(declare-fun m!324415 () Bool)

(assert (=> b!315056 m!324415))

(declare-fun m!324417 () Bool)

(assert (=> b!315055 m!324417))

(assert (=> b!315055 m!324417))

(declare-fun m!324419 () Bool)

(assert (=> b!315055 m!324419))

(declare-fun m!324421 () Bool)

(assert (=> start!31508 m!324421))

(declare-fun m!324423 () Bool)

(assert (=> start!31508 m!324423))

(declare-fun m!324425 () Bool)

(assert (=> b!315057 m!324425))

(declare-fun m!324427 () Bool)

(assert (=> b!315060 m!324427))

(declare-fun m!324429 () Bool)

(assert (=> b!315059 m!324429))

(check-sat (not b!315055) (not b!315058) (not b!315059) (not start!31508) (not b!315057) (not b!315060) (not b!315056) (not b!315063))
(check-sat)
