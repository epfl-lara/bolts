; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31010 () Bool)

(assert start!31010)

(declare-fun b!311424 () Bool)

(declare-fun res!168041 () Bool)

(declare-fun e!194301 () Bool)

(assert (=> b!311424 (=> (not res!168041) (not e!194301))))

(declare-datatypes ((array!15910 0))(
  ( (array!15911 (arr!7535 (Array (_ BitVec 32) (_ BitVec 64))) (size!7887 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15910)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311424 (= res!168041 (and (= (size!7887 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7887 a!3293))))))

(declare-fun b!311425 () Bool)

(declare-fun res!168037 () Bool)

(declare-fun e!194305 () Bool)

(assert (=> b!311425 (=> (not res!168037) (not e!194305))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311425 (= res!168037 (and (= (select (arr!7535 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7887 a!3293))))))

(declare-fun b!311426 () Bool)

(declare-fun res!168045 () Bool)

(assert (=> b!311426 (=> (not res!168045) (not e!194301))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311426 (= res!168045 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311427 () Bool)

(declare-fun res!168038 () Bool)

(assert (=> b!311427 (=> (not res!168038) (not e!194301))))

(declare-datatypes ((SeekEntryResult!2686 0))(
  ( (MissingZero!2686 (index!12920 (_ BitVec 32))) (Found!2686 (index!12921 (_ BitVec 32))) (Intermediate!2686 (undefined!3498 Bool) (index!12922 (_ BitVec 32)) (x!31102 (_ BitVec 32))) (Undefined!2686) (MissingVacant!2686 (index!12923 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15910 (_ BitVec 32)) SeekEntryResult!2686)

(assert (=> b!311427 (= res!168038 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2686 i!1240)))))

(declare-fun b!311428 () Bool)

(declare-fun e!194302 () Bool)

(assert (=> b!311428 (= e!194302 (not true))))

(declare-fun e!194303 () Bool)

(assert (=> b!311428 e!194303))

(declare-fun res!168044 () Bool)

(assert (=> b!311428 (=> (not res!168044) (not e!194303))))

(declare-fun lt!152392 () (_ BitVec 32))

(declare-fun lt!152391 () SeekEntryResult!2686)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15910 (_ BitVec 32)) SeekEntryResult!2686)

(assert (=> b!311428 (= res!168044 (= lt!152391 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152392 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311428 (= lt!152392 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!168042 () Bool)

(assert (=> start!31010 (=> (not res!168042) (not e!194301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31010 (= res!168042 (validMask!0 mask!3709))))

(assert (=> start!31010 e!194301))

(declare-fun array_inv!5489 (array!15910) Bool)

(assert (=> start!31010 (array_inv!5489 a!3293)))

(assert (=> start!31010 true))

(declare-fun lt!152390 () array!15910)

(declare-fun b!311429 () Bool)

(assert (=> b!311429 (= e!194303 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152390 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152392 k0!2441 lt!152390 mask!3709)))))

(assert (=> b!311429 (= lt!152390 (array!15911 (store (arr!7535 a!3293) i!1240 k0!2441) (size!7887 a!3293)))))

(declare-fun b!311430 () Bool)

(assert (=> b!311430 (= e!194301 e!194305)))

(declare-fun res!168036 () Bool)

(assert (=> b!311430 (=> (not res!168036) (not e!194305))))

(declare-fun lt!152393 () SeekEntryResult!2686)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311430 (= res!168036 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152393))))

(assert (=> b!311430 (= lt!152393 (Intermediate!2686 false resIndex!52 resX!52))))

(declare-fun b!311431 () Bool)

(declare-fun res!168039 () Bool)

(assert (=> b!311431 (=> (not res!168039) (not e!194301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15910 (_ BitVec 32)) Bool)

(assert (=> b!311431 (= res!168039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311432 () Bool)

(assert (=> b!311432 (= e!194305 e!194302)))

(declare-fun res!168040 () Bool)

(assert (=> b!311432 (=> (not res!168040) (not e!194302))))

(assert (=> b!311432 (= res!168040 (and (= lt!152391 lt!152393) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7535 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311432 (= lt!152391 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311433 () Bool)

(declare-fun res!168043 () Bool)

(assert (=> b!311433 (=> (not res!168043) (not e!194301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311433 (= res!168043 (validKeyInArray!0 k0!2441))))

(assert (= (and start!31010 res!168042) b!311424))

(assert (= (and b!311424 res!168041) b!311433))

(assert (= (and b!311433 res!168043) b!311426))

(assert (= (and b!311426 res!168045) b!311427))

(assert (= (and b!311427 res!168038) b!311431))

(assert (= (and b!311431 res!168039) b!311430))

(assert (= (and b!311430 res!168036) b!311425))

(assert (= (and b!311425 res!168037) b!311432))

(assert (= (and b!311432 res!168040) b!311428))

(assert (= (and b!311428 res!168044) b!311429))

(declare-fun m!321453 () Bool)

(assert (=> b!311427 m!321453))

(declare-fun m!321455 () Bool)

(assert (=> b!311433 m!321455))

(declare-fun m!321457 () Bool)

(assert (=> b!311428 m!321457))

(declare-fun m!321459 () Bool)

(assert (=> b!311428 m!321459))

(declare-fun m!321461 () Bool)

(assert (=> b!311425 m!321461))

(declare-fun m!321463 () Bool)

(assert (=> b!311429 m!321463))

(declare-fun m!321465 () Bool)

(assert (=> b!311429 m!321465))

(declare-fun m!321467 () Bool)

(assert (=> b!311429 m!321467))

(declare-fun m!321469 () Bool)

(assert (=> start!31010 m!321469))

(declare-fun m!321471 () Bool)

(assert (=> start!31010 m!321471))

(declare-fun m!321473 () Bool)

(assert (=> b!311426 m!321473))

(declare-fun m!321475 () Bool)

(assert (=> b!311431 m!321475))

(declare-fun m!321477 () Bool)

(assert (=> b!311432 m!321477))

(declare-fun m!321479 () Bool)

(assert (=> b!311432 m!321479))

(declare-fun m!321481 () Bool)

(assert (=> b!311430 m!321481))

(assert (=> b!311430 m!321481))

(declare-fun m!321483 () Bool)

(assert (=> b!311430 m!321483))

(check-sat (not b!311431) (not b!311427) (not b!311428) (not b!311432) (not start!31010) (not b!311433) (not b!311430) (not b!311429) (not b!311426))
(check-sat)
