; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31942 () Bool)

(assert start!31942)

(declare-fun b!318996 () Bool)

(declare-fun res!173542 () Bool)

(declare-fun e!198163 () Bool)

(assert (=> b!318996 (=> (not res!173542) (not e!198163))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318996 (= res!173542 (validKeyInArray!0 k!2441))))

(declare-fun b!318997 () Bool)

(declare-fun e!198165 () Bool)

(declare-fun e!198166 () Bool)

(assert (=> b!318997 (= e!198165 (not e!198166))))

(declare-fun res!173540 () Bool)

(assert (=> b!318997 (=> res!173540 e!198166)))

(declare-datatypes ((SeekEntryResult!2843 0))(
  ( (MissingZero!2843 (index!13548 (_ BitVec 32))) (Found!2843 (index!13549 (_ BitVec 32))) (Intermediate!2843 (undefined!3655 Bool) (index!13550 (_ BitVec 32)) (x!31768 (_ BitVec 32))) (Undefined!2843) (MissingVacant!2843 (index!13551 (_ BitVec 32))) )
))
(declare-fun lt!155670 () SeekEntryResult!2843)

(declare-fun lt!155671 () SeekEntryResult!2843)

(declare-fun lt!155673 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((array!16260 0))(
  ( (array!16261 (arr!7692 (Array (_ BitVec 32) (_ BitVec 64))) (size!8044 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16260)

(assert (=> b!318997 (= res!173540 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155673 #b00000000000000000000000000000000) (bvsge lt!155673 (size!8044 a!3293)) (not (= lt!155671 lt!155670))))))

(declare-fun lt!155674 () SeekEntryResult!2843)

(declare-fun lt!155675 () SeekEntryResult!2843)

(assert (=> b!318997 (= lt!155674 lt!155675)))

(declare-fun lt!155672 () array!16260)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16260 (_ BitVec 32)) SeekEntryResult!2843)

(assert (=> b!318997 (= lt!155675 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155673 k!2441 lt!155672 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318997 (= lt!155674 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155672 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318997 (= lt!155672 (array!16261 (store (arr!7692 a!3293) i!1240 k!2441) (size!8044 a!3293)))))

(declare-fun lt!155669 () SeekEntryResult!2843)

(assert (=> b!318997 (= lt!155669 lt!155671)))

(assert (=> b!318997 (= lt!155671 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155673 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318997 (= lt!155673 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318998 () Bool)

(declare-fun res!173538 () Bool)

(assert (=> b!318998 (=> (not res!173538) (not e!198163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16260 (_ BitVec 32)) Bool)

(assert (=> b!318998 (= res!173538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318999 () Bool)

(assert (=> b!318999 (= e!198166 true)))

(assert (=> b!318999 (= lt!155675 lt!155671)))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-datatypes ((Unit!9797 0))(
  ( (Unit!9798) )
))
(declare-fun lt!155668 () Unit!9797)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!16260 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9797)

(assert (=> b!318999 (= lt!155668 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!155673 resIndex!52 resX!52 mask!3709))))

(declare-fun b!319000 () Bool)

(declare-fun e!198164 () Bool)

(assert (=> b!319000 (= e!198163 e!198164)))

(declare-fun res!173541 () Bool)

(assert (=> b!319000 (=> (not res!173541) (not e!198164))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319000 (= res!173541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155670))))

(assert (=> b!319000 (= lt!155670 (Intermediate!2843 false resIndex!52 resX!52))))

(declare-fun b!319001 () Bool)

(declare-fun res!173543 () Bool)

(assert (=> b!319001 (=> (not res!173543) (not e!198163))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16260 (_ BitVec 32)) SeekEntryResult!2843)

(assert (=> b!319001 (= res!173543 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2843 i!1240)))))

(declare-fun res!173539 () Bool)

(assert (=> start!31942 (=> (not res!173539) (not e!198163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31942 (= res!173539 (validMask!0 mask!3709))))

(assert (=> start!31942 e!198163))

(declare-fun array_inv!5646 (array!16260) Bool)

(assert (=> start!31942 (array_inv!5646 a!3293)))

(assert (=> start!31942 true))

(declare-fun b!319002 () Bool)

(declare-fun res!173544 () Bool)

(assert (=> b!319002 (=> (not res!173544) (not e!198163))))

(assert (=> b!319002 (= res!173544 (and (= (size!8044 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8044 a!3293))))))

(declare-fun b!319003 () Bool)

(assert (=> b!319003 (= e!198164 e!198165)))

(declare-fun res!173547 () Bool)

(assert (=> b!319003 (=> (not res!173547) (not e!198165))))

(assert (=> b!319003 (= res!173547 (and (= lt!155669 lt!155670) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7692 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!319003 (= lt!155669 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!319004 () Bool)

(declare-fun res!173546 () Bool)

(assert (=> b!319004 (=> (not res!173546) (not e!198163))))

(declare-fun arrayContainsKey!0 (array!16260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319004 (= res!173546 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!319005 () Bool)

(declare-fun res!173545 () Bool)

(assert (=> b!319005 (=> (not res!173545) (not e!198164))))

(assert (=> b!319005 (= res!173545 (and (= (select (arr!7692 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8044 a!3293))))))

(assert (= (and start!31942 res!173539) b!319002))

(assert (= (and b!319002 res!173544) b!318996))

(assert (= (and b!318996 res!173542) b!319004))

(assert (= (and b!319004 res!173546) b!319001))

(assert (= (and b!319001 res!173543) b!318998))

(assert (= (and b!318998 res!173538) b!319000))

(assert (= (and b!319000 res!173541) b!319005))

(assert (= (and b!319005 res!173545) b!319003))

(assert (= (and b!319003 res!173547) b!318997))

(assert (= (and b!318997 (not res!173540)) b!318999))

(declare-fun m!327651 () Bool)

(assert (=> b!318996 m!327651))

(declare-fun m!327653 () Bool)

(assert (=> b!319005 m!327653))

(declare-fun m!327655 () Bool)

(assert (=> start!31942 m!327655))

(declare-fun m!327657 () Bool)

(assert (=> start!31942 m!327657))

(declare-fun m!327659 () Bool)

(assert (=> b!318999 m!327659))

(declare-fun m!327661 () Bool)

(assert (=> b!318997 m!327661))

(declare-fun m!327663 () Bool)

(assert (=> b!318997 m!327663))

(declare-fun m!327665 () Bool)

(assert (=> b!318997 m!327665))

(declare-fun m!327667 () Bool)

(assert (=> b!318997 m!327667))

(declare-fun m!327669 () Bool)

(assert (=> b!318997 m!327669))

(declare-fun m!327671 () Bool)

(assert (=> b!319004 m!327671))

(declare-fun m!327673 () Bool)

(assert (=> b!319001 m!327673))

(declare-fun m!327675 () Bool)

(assert (=> b!319000 m!327675))

(assert (=> b!319000 m!327675))

(declare-fun m!327677 () Bool)

(assert (=> b!319000 m!327677))

(declare-fun m!327679 () Bool)

(assert (=> b!318998 m!327679))

(declare-fun m!327681 () Bool)

(assert (=> b!319003 m!327681))

(declare-fun m!327683 () Bool)

(assert (=> b!319003 m!327683))

(push 1)

(assert (not b!318996))

(assert (not b!319000))

(assert (not b!319004))

