; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31040 () Bool)

(assert start!31040)

(declare-fun b!311874 () Bool)

(declare-fun res!168486 () Bool)

(declare-fun e!194529 () Bool)

(assert (=> b!311874 (=> (not res!168486) (not e!194529))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311874 (= res!168486 (validKeyInArray!0 k0!2441))))

(declare-fun b!311875 () Bool)

(declare-fun res!168487 () Bool)

(assert (=> b!311875 (=> (not res!168487) (not e!194529))))

(declare-datatypes ((array!15940 0))(
  ( (array!15941 (arr!7550 (Array (_ BitVec 32) (_ BitVec 64))) (size!7902 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15940)

(declare-fun arrayContainsKey!0 (array!15940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311875 (= res!168487 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311876 () Bool)

(declare-fun e!194528 () Bool)

(assert (=> b!311876 (= e!194529 e!194528)))

(declare-fun res!168495 () Bool)

(assert (=> b!311876 (=> (not res!168495) (not e!194528))))

(declare-datatypes ((SeekEntryResult!2701 0))(
  ( (MissingZero!2701 (index!12980 (_ BitVec 32))) (Found!2701 (index!12981 (_ BitVec 32))) (Intermediate!2701 (undefined!3513 Bool) (index!12982 (_ BitVec 32)) (x!31157 (_ BitVec 32))) (Undefined!2701) (MissingVacant!2701 (index!12983 (_ BitVec 32))) )
))
(declare-fun lt!152702 () SeekEntryResult!2701)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15940 (_ BitVec 32)) SeekEntryResult!2701)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311876 (= res!168495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152702))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311876 (= lt!152702 (Intermediate!2701 false resIndex!52 resX!52))))

(declare-fun b!311877 () Bool)

(declare-fun e!194526 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311877 (= e!194526 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun lt!152698 () SeekEntryResult!2701)

(declare-fun lt!152700 () SeekEntryResult!2701)

(assert (=> b!311877 (= lt!152698 lt!152700)))

(declare-datatypes ((Unit!9600 0))(
  ( (Unit!9601) )
))
(declare-fun lt!152701 () Unit!9600)

(declare-fun lt!152705 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15940 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9600)

(assert (=> b!311877 (= lt!152701 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152705 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311878 () Bool)

(declare-fun res!168492 () Bool)

(assert (=> b!311878 (=> (not res!168492) (not e!194528))))

(assert (=> b!311878 (= res!168492 (and (= (select (arr!7550 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7902 a!3293))))))

(declare-fun b!311879 () Bool)

(declare-fun res!168490 () Bool)

(assert (=> b!311879 (=> (not res!168490) (not e!194529))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15940 (_ BitVec 32)) SeekEntryResult!2701)

(assert (=> b!311879 (= res!168490 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2701 i!1240)))))

(declare-fun res!168489 () Bool)

(assert (=> start!31040 (=> (not res!168489) (not e!194529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31040 (= res!168489 (validMask!0 mask!3709))))

(assert (=> start!31040 e!194529))

(declare-fun array_inv!5504 (array!15940) Bool)

(assert (=> start!31040 (array_inv!5504 a!3293)))

(assert (=> start!31040 true))

(declare-fun b!311880 () Bool)

(declare-fun e!194527 () Bool)

(assert (=> b!311880 (= e!194527 (not e!194526))))

(declare-fun res!168488 () Bool)

(assert (=> b!311880 (=> res!168488 e!194526)))

(assert (=> b!311880 (= res!168488 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152705 #b00000000000000000000000000000000) (bvsge lt!152705 (size!7902 a!3293)) (not (= lt!152700 lt!152702))))))

(declare-fun lt!152704 () SeekEntryResult!2701)

(assert (=> b!311880 (= lt!152704 lt!152698)))

(declare-fun lt!152703 () array!15940)

(assert (=> b!311880 (= lt!152698 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152705 k0!2441 lt!152703 mask!3709))))

(assert (=> b!311880 (= lt!152704 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152703 mask!3709))))

(assert (=> b!311880 (= lt!152703 (array!15941 (store (arr!7550 a!3293) i!1240 k0!2441) (size!7902 a!3293)))))

(declare-fun lt!152699 () SeekEntryResult!2701)

(assert (=> b!311880 (= lt!152699 lt!152700)))

(assert (=> b!311880 (= lt!152700 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152705 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311880 (= lt!152705 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311881 () Bool)

(declare-fun res!168491 () Bool)

(assert (=> b!311881 (=> (not res!168491) (not e!194529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15940 (_ BitVec 32)) Bool)

(assert (=> b!311881 (= res!168491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311882 () Bool)

(declare-fun res!168493 () Bool)

(assert (=> b!311882 (=> (not res!168493) (not e!194529))))

(assert (=> b!311882 (= res!168493 (and (= (size!7902 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7902 a!3293))))))

(declare-fun b!311883 () Bool)

(assert (=> b!311883 (= e!194528 e!194527)))

(declare-fun res!168494 () Bool)

(assert (=> b!311883 (=> (not res!168494) (not e!194527))))

(assert (=> b!311883 (= res!168494 (and (= lt!152699 lt!152702) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7550 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311883 (= lt!152699 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!31040 res!168489) b!311882))

(assert (= (and b!311882 res!168493) b!311874))

(assert (= (and b!311874 res!168486) b!311875))

(assert (= (and b!311875 res!168487) b!311879))

(assert (= (and b!311879 res!168490) b!311881))

(assert (= (and b!311881 res!168491) b!311876))

(assert (= (and b!311876 res!168495) b!311878))

(assert (= (and b!311878 res!168492) b!311883))

(assert (= (and b!311883 res!168494) b!311880))

(assert (= (and b!311880 (not res!168488)) b!311877))

(declare-fun m!321953 () Bool)

(assert (=> b!311874 m!321953))

(declare-fun m!321955 () Bool)

(assert (=> b!311877 m!321955))

(declare-fun m!321957 () Bool)

(assert (=> b!311878 m!321957))

(declare-fun m!321959 () Bool)

(assert (=> b!311875 m!321959))

(declare-fun m!321961 () Bool)

(assert (=> start!31040 m!321961))

(declare-fun m!321963 () Bool)

(assert (=> start!31040 m!321963))

(declare-fun m!321965 () Bool)

(assert (=> b!311880 m!321965))

(declare-fun m!321967 () Bool)

(assert (=> b!311880 m!321967))

(declare-fun m!321969 () Bool)

(assert (=> b!311880 m!321969))

(declare-fun m!321971 () Bool)

(assert (=> b!311880 m!321971))

(declare-fun m!321973 () Bool)

(assert (=> b!311880 m!321973))

(declare-fun m!321975 () Bool)

(assert (=> b!311876 m!321975))

(assert (=> b!311876 m!321975))

(declare-fun m!321977 () Bool)

(assert (=> b!311876 m!321977))

(declare-fun m!321979 () Bool)

(assert (=> b!311881 m!321979))

(declare-fun m!321981 () Bool)

(assert (=> b!311883 m!321981))

(declare-fun m!321983 () Bool)

(assert (=> b!311883 m!321983))

(declare-fun m!321985 () Bool)

(assert (=> b!311879 m!321985))

(check-sat (not b!311874) (not b!311877) (not b!311879) (not b!311880) (not b!311881) (not start!31040) (not b!311875) (not b!311876) (not b!311883))
(check-sat)
