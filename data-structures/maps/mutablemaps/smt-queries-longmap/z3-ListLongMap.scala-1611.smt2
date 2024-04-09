; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30344 () Bool)

(assert start!30344)

(declare-fun b!303684 () Bool)

(declare-fun res!161332 () Bool)

(declare-fun e!190988 () Bool)

(assert (=> b!303684 (=> (not res!161332) (not e!190988))))

(declare-datatypes ((array!15448 0))(
  ( (array!15449 (arr!7310 (Array (_ BitVec 32) (_ BitVec 64))) (size!7662 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15448)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15448 (_ BitVec 32)) Bool)

(assert (=> b!303684 (= res!161332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303685 () Bool)

(declare-fun res!161333 () Bool)

(assert (=> b!303685 (=> (not res!161333) (not e!190988))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303685 (= res!161333 (validKeyInArray!0 k0!2441))))

(declare-fun b!303686 () Bool)

(declare-fun res!161328 () Bool)

(assert (=> b!303686 (=> (not res!161328) (not e!190988))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303686 (= res!161328 (and (= (size!7662 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7662 a!3293))))))

(declare-fun b!303687 () Bool)

(declare-fun res!161334 () Bool)

(declare-fun e!190989 () Bool)

(assert (=> b!303687 (=> (not res!161334) (not e!190989))))

(declare-datatypes ((SeekEntryResult!2461 0))(
  ( (MissingZero!2461 (index!12020 (_ BitVec 32))) (Found!2461 (index!12021 (_ BitVec 32))) (Intermediate!2461 (undefined!3273 Bool) (index!12022 (_ BitVec 32)) (x!30241 (_ BitVec 32))) (Undefined!2461) (MissingVacant!2461 (index!12023 (_ BitVec 32))) )
))
(declare-fun lt!150239 () SeekEntryResult!2461)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15448 (_ BitVec 32)) SeekEntryResult!2461)

(assert (=> b!303687 (= res!161334 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150239))))

(declare-fun res!161331 () Bool)

(assert (=> start!30344 (=> (not res!161331) (not e!190988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30344 (= res!161331 (validMask!0 mask!3709))))

(assert (=> start!30344 e!190988))

(declare-fun array_inv!5264 (array!15448) Bool)

(assert (=> start!30344 (array_inv!5264 a!3293)))

(assert (=> start!30344 true))

(declare-fun b!303688 () Bool)

(declare-fun res!161336 () Bool)

(assert (=> b!303688 (=> (not res!161336) (not e!190988))))

(declare-fun arrayContainsKey!0 (array!15448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303688 (= res!161336 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303689 () Bool)

(declare-fun res!161337 () Bool)

(assert (=> b!303689 (=> (not res!161337) (not e!190989))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303689 (= res!161337 (and (= (select (arr!7310 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7662 a!3293))))))

(declare-fun b!303690 () Bool)

(declare-fun res!161335 () Bool)

(assert (=> b!303690 (=> (not res!161335) (not e!190989))))

(assert (=> b!303690 (= res!161335 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7310 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7310 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7310 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303691 () Bool)

(assert (=> b!303691 (= e!190988 e!190989)))

(declare-fun res!161330 () Bool)

(assert (=> b!303691 (=> (not res!161330) (not e!190989))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303691 (= res!161330 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150239))))

(assert (=> b!303691 (= lt!150239 (Intermediate!2461 false resIndex!52 resX!52))))

(declare-fun b!303692 () Bool)

(assert (=> b!303692 (= e!190989 false)))

(declare-fun lt!150238 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303692 (= lt!150238 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303693 () Bool)

(declare-fun res!161329 () Bool)

(assert (=> b!303693 (=> (not res!161329) (not e!190988))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15448 (_ BitVec 32)) SeekEntryResult!2461)

(assert (=> b!303693 (= res!161329 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2461 i!1240)))))

(assert (= (and start!30344 res!161331) b!303686))

(assert (= (and b!303686 res!161328) b!303685))

(assert (= (and b!303685 res!161333) b!303688))

(assert (= (and b!303688 res!161336) b!303693))

(assert (= (and b!303693 res!161329) b!303684))

(assert (= (and b!303684 res!161332) b!303691))

(assert (= (and b!303691 res!161330) b!303689))

(assert (= (and b!303689 res!161337) b!303687))

(assert (= (and b!303687 res!161334) b!303690))

(assert (= (and b!303690 res!161335) b!303692))

(declare-fun m!314989 () Bool)

(assert (=> b!303684 m!314989))

(declare-fun m!314991 () Bool)

(assert (=> start!30344 m!314991))

(declare-fun m!314993 () Bool)

(assert (=> start!30344 m!314993))

(declare-fun m!314995 () Bool)

(assert (=> b!303685 m!314995))

(declare-fun m!314997 () Bool)

(assert (=> b!303689 m!314997))

(declare-fun m!314999 () Bool)

(assert (=> b!303691 m!314999))

(assert (=> b!303691 m!314999))

(declare-fun m!315001 () Bool)

(assert (=> b!303691 m!315001))

(declare-fun m!315003 () Bool)

(assert (=> b!303690 m!315003))

(declare-fun m!315005 () Bool)

(assert (=> b!303693 m!315005))

(declare-fun m!315007 () Bool)

(assert (=> b!303688 m!315007))

(declare-fun m!315009 () Bool)

(assert (=> b!303692 m!315009))

(declare-fun m!315011 () Bool)

(assert (=> b!303687 m!315011))

(check-sat (not b!303684) (not b!303691) (not start!30344) (not b!303693) (not b!303692) (not b!303687) (not b!303685) (not b!303688))
(check-sat)
