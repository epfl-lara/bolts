; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30524 () Bool)

(assert start!30524)

(declare-fun b!305146 () Bool)

(declare-fun res!162497 () Bool)

(declare-fun e!191671 () Bool)

(assert (=> b!305146 (=> (not res!162497) (not e!191671))))

(declare-datatypes ((array!15526 0))(
  ( (array!15527 (arr!7346 (Array (_ BitVec 32) (_ BitVec 64))) (size!7698 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15526)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305146 (= res!162497 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305147 () Bool)

(declare-fun e!191669 () Bool)

(declare-fun e!191668 () Bool)

(assert (=> b!305147 (= e!191669 e!191668)))

(declare-fun res!162491 () Bool)

(assert (=> b!305147 (=> (not res!162491) (not e!191668))))

(declare-datatypes ((SeekEntryResult!2497 0))(
  ( (MissingZero!2497 (index!12164 (_ BitVec 32))) (Found!2497 (index!12165 (_ BitVec 32))) (Intermediate!2497 (undefined!3309 Bool) (index!12166 (_ BitVec 32)) (x!30391 (_ BitVec 32))) (Undefined!2497) (MissingVacant!2497 (index!12167 (_ BitVec 32))) )
))
(declare-fun lt!150686 () SeekEntryResult!2497)

(declare-fun lt!150685 () SeekEntryResult!2497)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305147 (= res!162491 (and (= lt!150685 lt!150686) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7346 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7346 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7346 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15526 (_ BitVec 32)) SeekEntryResult!2497)

(assert (=> b!305147 (= lt!150685 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!305148 () Bool)

(declare-fun res!162495 () Bool)

(assert (=> b!305148 (=> (not res!162495) (not e!191671))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305148 (= res!162495 (and (= (size!7698 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7698 a!3293))))))

(declare-fun b!305149 () Bool)

(declare-fun res!162496 () Bool)

(assert (=> b!305149 (=> (not res!162496) (not e!191671))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15526 (_ BitVec 32)) SeekEntryResult!2497)

(assert (=> b!305149 (= res!162496 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2497 i!1240)))))

(declare-fun b!305150 () Bool)

(declare-fun res!162490 () Bool)

(assert (=> b!305150 (=> (not res!162490) (not e!191671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15526 (_ BitVec 32)) Bool)

(assert (=> b!305150 (= res!162490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305151 () Bool)

(assert (=> b!305151 (= e!191671 e!191669)))

(declare-fun res!162498 () Bool)

(assert (=> b!305151 (=> (not res!162498) (not e!191669))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305151 (= res!162498 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150686))))

(assert (=> b!305151 (= lt!150686 (Intermediate!2497 false resIndex!52 resX!52))))

(declare-fun res!162493 () Bool)

(assert (=> start!30524 (=> (not res!162493) (not e!191671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30524 (= res!162493 (validMask!0 mask!3709))))

(assert (=> start!30524 e!191671))

(declare-fun array_inv!5300 (array!15526) Bool)

(assert (=> start!30524 (array_inv!5300 a!3293)))

(assert (=> start!30524 true))

(declare-fun lt!150684 () (_ BitVec 32))

(declare-fun b!305152 () Bool)

(assert (=> b!305152 (= e!191668 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt lt!150684 #b00000000000000000000000000000000) (bvsge lt!150684 (bvadd #b00000000000000000000000000000001 mask!3709)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000)))))))

(assert (=> b!305152 (= lt!150685 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150684 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305152 (= lt!150684 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!305153 () Bool)

(declare-fun res!162492 () Bool)

(assert (=> b!305153 (=> (not res!162492) (not e!191669))))

(assert (=> b!305153 (= res!162492 (and (= (select (arr!7346 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7698 a!3293))))))

(declare-fun b!305154 () Bool)

(declare-fun res!162494 () Bool)

(assert (=> b!305154 (=> (not res!162494) (not e!191671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305154 (= res!162494 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30524 res!162493) b!305148))

(assert (= (and b!305148 res!162495) b!305154))

(assert (= (and b!305154 res!162494) b!305146))

(assert (= (and b!305146 res!162497) b!305149))

(assert (= (and b!305149 res!162496) b!305150))

(assert (= (and b!305150 res!162490) b!305151))

(assert (= (and b!305151 res!162498) b!305153))

(assert (= (and b!305153 res!162492) b!305147))

(assert (= (and b!305147 res!162491) b!305152))

(declare-fun m!316155 () Bool)

(assert (=> b!305146 m!316155))

(declare-fun m!316157 () Bool)

(assert (=> b!305152 m!316157))

(declare-fun m!316159 () Bool)

(assert (=> b!305152 m!316159))

(declare-fun m!316161 () Bool)

(assert (=> b!305153 m!316161))

(declare-fun m!316163 () Bool)

(assert (=> b!305149 m!316163))

(declare-fun m!316165 () Bool)

(assert (=> start!30524 m!316165))

(declare-fun m!316167 () Bool)

(assert (=> start!30524 m!316167))

(declare-fun m!316169 () Bool)

(assert (=> b!305147 m!316169))

(declare-fun m!316171 () Bool)

(assert (=> b!305147 m!316171))

(declare-fun m!316173 () Bool)

(assert (=> b!305154 m!316173))

(declare-fun m!316175 () Bool)

(assert (=> b!305150 m!316175))

(declare-fun m!316177 () Bool)

(assert (=> b!305151 m!316177))

(assert (=> b!305151 m!316177))

(declare-fun m!316179 () Bool)

(assert (=> b!305151 m!316179))

(check-sat (not start!30524) (not b!305147) (not b!305152) (not b!305149) (not b!305154) (not b!305150) (not b!305146) (not b!305151))
(check-sat)
