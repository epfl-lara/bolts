; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31022 () Bool)

(assert start!31022)

(declare-fun b!311604 () Bool)

(declare-fun e!194393 () Bool)

(declare-fun e!194391 () Bool)

(assert (=> b!311604 (= e!194393 (not e!194391))))

(declare-fun res!168216 () Bool)

(assert (=> b!311604 (=> res!168216 e!194391)))

(declare-datatypes ((array!15922 0))(
  ( (array!15923 (arr!7541 (Array (_ BitVec 32) (_ BitVec 64))) (size!7893 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15922)

(declare-fun lt!152486 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2692 0))(
  ( (MissingZero!2692 (index!12944 (_ BitVec 32))) (Found!2692 (index!12945 (_ BitVec 32))) (Intermediate!2692 (undefined!3504 Bool) (index!12946 (_ BitVec 32)) (x!31124 (_ BitVec 32))) (Undefined!2692) (MissingVacant!2692 (index!12947 (_ BitVec 32))) )
))
(declare-fun lt!152482 () SeekEntryResult!2692)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152484 () SeekEntryResult!2692)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311604 (= res!168216 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152486 #b00000000000000000000000000000000) (bvsge lt!152486 (size!7893 a!3293)) (not (= lt!152482 lt!152484))))))

(declare-fun lt!152488 () SeekEntryResult!2692)

(declare-fun lt!152487 () SeekEntryResult!2692)

(assert (=> b!311604 (= lt!152488 lt!152487)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152483 () array!15922)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15922 (_ BitVec 32)) SeekEntryResult!2692)

(assert (=> b!311604 (= lt!152487 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152486 k0!2441 lt!152483 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311604 (= lt!152488 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152483 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311604 (= lt!152483 (array!15923 (store (arr!7541 a!3293) i!1240 k0!2441) (size!7893 a!3293)))))

(declare-fun lt!152489 () SeekEntryResult!2692)

(assert (=> b!311604 (= lt!152489 lt!152482)))

(assert (=> b!311604 (= lt!152482 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152486 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311604 (= lt!152486 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311605 () Bool)

(declare-fun res!168220 () Bool)

(declare-fun e!194395 () Bool)

(assert (=> b!311605 (=> (not res!168220) (not e!194395))))

(declare-fun arrayContainsKey!0 (array!15922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311605 (= res!168220 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311606 () Bool)

(declare-fun e!194392 () Bool)

(assert (=> b!311606 (= e!194392 e!194393)))

(declare-fun res!168217 () Bool)

(assert (=> b!311606 (=> (not res!168217) (not e!194393))))

(assert (=> b!311606 (= res!168217 (and (= lt!152489 lt!152484) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7541 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311606 (= lt!152489 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311607 () Bool)

(declare-fun res!168219 () Bool)

(assert (=> b!311607 (=> (not res!168219) (not e!194395))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15922 (_ BitVec 32)) SeekEntryResult!2692)

(assert (=> b!311607 (= res!168219 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2692 i!1240)))))

(declare-fun res!168224 () Bool)

(assert (=> start!31022 (=> (not res!168224) (not e!194395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31022 (= res!168224 (validMask!0 mask!3709))))

(assert (=> start!31022 e!194395))

(declare-fun array_inv!5495 (array!15922) Bool)

(assert (=> start!31022 (array_inv!5495 a!3293)))

(assert (=> start!31022 true))

(declare-fun b!311608 () Bool)

(declare-fun res!168218 () Bool)

(assert (=> b!311608 (=> (not res!168218) (not e!194395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311608 (= res!168218 (validKeyInArray!0 k0!2441))))

(declare-fun b!311609 () Bool)

(declare-fun res!168223 () Bool)

(assert (=> b!311609 (=> (not res!168223) (not e!194395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15922 (_ BitVec 32)) Bool)

(assert (=> b!311609 (= res!168223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311610 () Bool)

(declare-fun res!168221 () Bool)

(assert (=> b!311610 (=> (not res!168221) (not e!194395))))

(assert (=> b!311610 (= res!168221 (and (= (size!7893 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7893 a!3293))))))

(declare-fun b!311611 () Bool)

(assert (=> b!311611 (= e!194391 true)))

(assert (=> b!311611 (= lt!152487 lt!152482)))

(declare-datatypes ((Unit!9582 0))(
  ( (Unit!9583) )
))
(declare-fun lt!152485 () Unit!9582)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15922 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9582)

(assert (=> b!311611 (= lt!152485 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152486 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311612 () Bool)

(assert (=> b!311612 (= e!194395 e!194392)))

(declare-fun res!168222 () Bool)

(assert (=> b!311612 (=> (not res!168222) (not e!194392))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311612 (= res!168222 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152484))))

(assert (=> b!311612 (= lt!152484 (Intermediate!2692 false resIndex!52 resX!52))))

(declare-fun b!311613 () Bool)

(declare-fun res!168225 () Bool)

(assert (=> b!311613 (=> (not res!168225) (not e!194392))))

(assert (=> b!311613 (= res!168225 (and (= (select (arr!7541 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7893 a!3293))))))

(assert (= (and start!31022 res!168224) b!311610))

(assert (= (and b!311610 res!168221) b!311608))

(assert (= (and b!311608 res!168218) b!311605))

(assert (= (and b!311605 res!168220) b!311607))

(assert (= (and b!311607 res!168219) b!311609))

(assert (= (and b!311609 res!168223) b!311612))

(assert (= (and b!311612 res!168222) b!311613))

(assert (= (and b!311613 res!168225) b!311606))

(assert (= (and b!311606 res!168217) b!311604))

(assert (= (and b!311604 (not res!168216)) b!311611))

(declare-fun m!321647 () Bool)

(assert (=> b!311612 m!321647))

(assert (=> b!311612 m!321647))

(declare-fun m!321649 () Bool)

(assert (=> b!311612 m!321649))

(declare-fun m!321651 () Bool)

(assert (=> b!311604 m!321651))

(declare-fun m!321653 () Bool)

(assert (=> b!311604 m!321653))

(declare-fun m!321655 () Bool)

(assert (=> b!311604 m!321655))

(declare-fun m!321657 () Bool)

(assert (=> b!311604 m!321657))

(declare-fun m!321659 () Bool)

(assert (=> b!311604 m!321659))

(declare-fun m!321661 () Bool)

(assert (=> b!311608 m!321661))

(declare-fun m!321663 () Bool)

(assert (=> b!311611 m!321663))

(declare-fun m!321665 () Bool)

(assert (=> start!31022 m!321665))

(declare-fun m!321667 () Bool)

(assert (=> start!31022 m!321667))

(declare-fun m!321669 () Bool)

(assert (=> b!311607 m!321669))

(declare-fun m!321671 () Bool)

(assert (=> b!311606 m!321671))

(declare-fun m!321673 () Bool)

(assert (=> b!311606 m!321673))

(declare-fun m!321675 () Bool)

(assert (=> b!311609 m!321675))

(declare-fun m!321677 () Bool)

(assert (=> b!311605 m!321677))

(declare-fun m!321679 () Bool)

(assert (=> b!311613 m!321679))

(check-sat (not start!31022) (not b!311607) (not b!311606) (not b!311605) (not b!311608) (not b!311609) (not b!311611) (not b!311612) (not b!311604))
(check-sat)
