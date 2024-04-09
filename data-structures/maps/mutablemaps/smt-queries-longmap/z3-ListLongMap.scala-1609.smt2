; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30332 () Bool)

(assert start!30332)

(declare-fun b!303504 () Bool)

(declare-fun res!161154 () Bool)

(declare-fun e!190935 () Bool)

(assert (=> b!303504 (=> (not res!161154) (not e!190935))))

(declare-datatypes ((array!15436 0))(
  ( (array!15437 (arr!7304 (Array (_ BitVec 32) (_ BitVec 64))) (size!7656 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15436)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2455 0))(
  ( (MissingZero!2455 (index!11996 (_ BitVec 32))) (Found!2455 (index!11997 (_ BitVec 32))) (Intermediate!2455 (undefined!3267 Bool) (index!11998 (_ BitVec 32)) (x!30219 (_ BitVec 32))) (Undefined!2455) (MissingVacant!2455 (index!11999 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15436 (_ BitVec 32)) SeekEntryResult!2455)

(assert (=> b!303504 (= res!161154 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2455 i!1240)))))

(declare-fun b!303505 () Bool)

(declare-fun e!190936 () Bool)

(assert (=> b!303505 (= e!190935 e!190936)))

(declare-fun res!161153 () Bool)

(assert (=> b!303505 (=> (not res!161153) (not e!190936))))

(declare-fun lt!150203 () SeekEntryResult!2455)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15436 (_ BitVec 32)) SeekEntryResult!2455)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303505 (= res!161153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150203))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303505 (= lt!150203 (Intermediate!2455 false resIndex!52 resX!52))))

(declare-fun b!303506 () Bool)

(assert (=> b!303506 (= e!190936 false)))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!150202 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303506 (= lt!150202 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303507 () Bool)

(declare-fun res!161157 () Bool)

(assert (=> b!303507 (=> (not res!161157) (not e!190935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15436 (_ BitVec 32)) Bool)

(assert (=> b!303507 (= res!161157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303509 () Bool)

(declare-fun res!161151 () Bool)

(assert (=> b!303509 (=> (not res!161151) (not e!190935))))

(declare-fun arrayContainsKey!0 (array!15436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303509 (= res!161151 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303510 () Bool)

(declare-fun res!161150 () Bool)

(assert (=> b!303510 (=> (not res!161150) (not e!190936))))

(assert (=> b!303510 (= res!161150 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7304 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7304 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7304 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303511 () Bool)

(declare-fun res!161149 () Bool)

(assert (=> b!303511 (=> (not res!161149) (not e!190936))))

(assert (=> b!303511 (= res!161149 (and (= (select (arr!7304 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7656 a!3293))))))

(declare-fun b!303508 () Bool)

(declare-fun res!161156 () Bool)

(assert (=> b!303508 (=> (not res!161156) (not e!190935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303508 (= res!161156 (validKeyInArray!0 k0!2441))))

(declare-fun res!161155 () Bool)

(assert (=> start!30332 (=> (not res!161155) (not e!190935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30332 (= res!161155 (validMask!0 mask!3709))))

(assert (=> start!30332 e!190935))

(declare-fun array_inv!5258 (array!15436) Bool)

(assert (=> start!30332 (array_inv!5258 a!3293)))

(assert (=> start!30332 true))

(declare-fun b!303512 () Bool)

(declare-fun res!161148 () Bool)

(assert (=> b!303512 (=> (not res!161148) (not e!190936))))

(assert (=> b!303512 (= res!161148 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150203))))

(declare-fun b!303513 () Bool)

(declare-fun res!161152 () Bool)

(assert (=> b!303513 (=> (not res!161152) (not e!190935))))

(assert (=> b!303513 (= res!161152 (and (= (size!7656 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7656 a!3293))))))

(assert (= (and start!30332 res!161155) b!303513))

(assert (= (and b!303513 res!161152) b!303508))

(assert (= (and b!303508 res!161156) b!303509))

(assert (= (and b!303509 res!161151) b!303504))

(assert (= (and b!303504 res!161154) b!303507))

(assert (= (and b!303507 res!161157) b!303505))

(assert (= (and b!303505 res!161153) b!303511))

(assert (= (and b!303511 res!161149) b!303512))

(assert (= (and b!303512 res!161148) b!303510))

(assert (= (and b!303510 res!161150) b!303506))

(declare-fun m!314845 () Bool)

(assert (=> b!303504 m!314845))

(declare-fun m!314847 () Bool)

(assert (=> start!30332 m!314847))

(declare-fun m!314849 () Bool)

(assert (=> start!30332 m!314849))

(declare-fun m!314851 () Bool)

(assert (=> b!303512 m!314851))

(declare-fun m!314853 () Bool)

(assert (=> b!303510 m!314853))

(declare-fun m!314855 () Bool)

(assert (=> b!303511 m!314855))

(declare-fun m!314857 () Bool)

(assert (=> b!303505 m!314857))

(assert (=> b!303505 m!314857))

(declare-fun m!314859 () Bool)

(assert (=> b!303505 m!314859))

(declare-fun m!314861 () Bool)

(assert (=> b!303509 m!314861))

(declare-fun m!314863 () Bool)

(assert (=> b!303508 m!314863))

(declare-fun m!314865 () Bool)

(assert (=> b!303507 m!314865))

(declare-fun m!314867 () Bool)

(assert (=> b!303506 m!314867))

(check-sat (not b!303504) (not start!30332) (not b!303507) (not b!303506) (not b!303505) (not b!303508) (not b!303509) (not b!303512))
(check-sat)
