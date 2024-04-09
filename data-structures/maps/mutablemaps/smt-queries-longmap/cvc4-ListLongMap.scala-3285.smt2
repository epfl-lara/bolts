; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45668 () Bool)

(assert start!45668)

(declare-fun b!503512 () Bool)

(declare-fun res!304932 () Bool)

(declare-fun e!294865 () Bool)

(assert (=> b!503512 (=> (not res!304932) (not e!294865))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503512 (= res!304932 (validKeyInArray!0 k!2280))))

(declare-fun b!503513 () Bool)

(declare-fun e!294859 () Bool)

(assert (=> b!503513 (= e!294859 false)))

(declare-fun b!503514 () Bool)

(declare-fun res!304938 () Bool)

(assert (=> b!503514 (=> (not res!304938) (not e!294865))))

(declare-datatypes ((array!32384 0))(
  ( (array!32385 (arr!15569 (Array (_ BitVec 32) (_ BitVec 64))) (size!15933 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32384)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!503514 (= res!304938 (validKeyInArray!0 (select (arr!15569 a!3235) j!176)))))

(declare-fun b!503515 () Bool)

(declare-fun e!294858 () Bool)

(assert (=> b!503515 (= e!294865 e!294858)))

(declare-fun res!304933 () Bool)

(assert (=> b!503515 (=> (not res!304933) (not e!294858))))

(declare-datatypes ((SeekEntryResult!4043 0))(
  ( (MissingZero!4043 (index!18360 (_ BitVec 32))) (Found!4043 (index!18361 (_ BitVec 32))) (Intermediate!4043 (undefined!4855 Bool) (index!18362 (_ BitVec 32)) (x!47407 (_ BitVec 32))) (Undefined!4043) (MissingVacant!4043 (index!18363 (_ BitVec 32))) )
))
(declare-fun lt!229165 () SeekEntryResult!4043)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503515 (= res!304933 (or (= lt!229165 (MissingZero!4043 i!1204)) (= lt!229165 (MissingVacant!4043 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32384 (_ BitVec 32)) SeekEntryResult!4043)

(assert (=> b!503515 (= lt!229165 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!294861 () Bool)

(declare-fun lt!229164 () SeekEntryResult!4043)

(declare-fun lt!229159 () (_ BitVec 32))

(declare-fun b!503516 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32384 (_ BitVec 32)) SeekEntryResult!4043)

(assert (=> b!503516 (= e!294861 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229159 (index!18362 lt!229164) (select (arr!15569 a!3235) j!176) a!3235 mask!3524) (Found!4043 j!176))))))

(declare-fun b!503517 () Bool)

(declare-fun res!304937 () Bool)

(assert (=> b!503517 (=> (not res!304937) (not e!294858))))

(declare-datatypes ((List!9780 0))(
  ( (Nil!9777) (Cons!9776 (h!10653 (_ BitVec 64)) (t!16016 List!9780)) )
))
(declare-fun arrayNoDuplicates!0 (array!32384 (_ BitVec 32) List!9780) Bool)

(assert (=> b!503517 (= res!304937 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9777))))

(declare-fun b!503518 () Bool)

(declare-fun e!294862 () Bool)

(assert (=> b!503518 (= e!294858 (not e!294862))))

(declare-fun res!304929 () Bool)

(assert (=> b!503518 (=> res!304929 e!294862)))

(declare-fun lt!229162 () (_ BitVec 64))

(declare-fun lt!229166 () (_ BitVec 32))

(declare-fun lt!229161 () array!32384)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32384 (_ BitVec 32)) SeekEntryResult!4043)

(assert (=> b!503518 (= res!304929 (= lt!229164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229166 lt!229162 lt!229161 mask!3524)))))

(assert (=> b!503518 (= lt!229164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229159 (select (arr!15569 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503518 (= lt!229166 (toIndex!0 lt!229162 mask!3524))))

(assert (=> b!503518 (= lt!229162 (select (store (arr!15569 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503518 (= lt!229159 (toIndex!0 (select (arr!15569 a!3235) j!176) mask!3524))))

(assert (=> b!503518 (= lt!229161 (array!32385 (store (arr!15569 a!3235) i!1204 k!2280) (size!15933 a!3235)))))

(declare-fun e!294857 () Bool)

(assert (=> b!503518 e!294857))

(declare-fun res!304942 () Bool)

(assert (=> b!503518 (=> (not res!304942) (not e!294857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32384 (_ BitVec 32)) Bool)

(assert (=> b!503518 (= res!304942 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15262 0))(
  ( (Unit!15263) )
))
(declare-fun lt!229163 () Unit!15262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15262)

(assert (=> b!503518 (= lt!229163 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503519 () Bool)

(declare-fun res!304934 () Bool)

(assert (=> b!503519 (=> (not res!304934) (not e!294865))))

(assert (=> b!503519 (= res!304934 (and (= (size!15933 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15933 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15933 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503520 () Bool)

(declare-fun res!304935 () Bool)

(assert (=> b!503520 (=> (not res!304935) (not e!294865))))

(declare-fun arrayContainsKey!0 (array!32384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503520 (= res!304935 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!304940 () Bool)

(assert (=> start!45668 (=> (not res!304940) (not e!294865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45668 (= res!304940 (validMask!0 mask!3524))))

(assert (=> start!45668 e!294865))

(assert (=> start!45668 true))

(declare-fun array_inv!11343 (array!32384) Bool)

(assert (=> start!45668 (array_inv!11343 a!3235)))

(declare-fun b!503521 () Bool)

(declare-fun res!304930 () Bool)

(assert (=> b!503521 (=> (not res!304930) (not e!294858))))

(assert (=> b!503521 (= res!304930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503522 () Bool)

(assert (=> b!503522 (= e!294857 (= (seekEntryOrOpen!0 (select (arr!15569 a!3235) j!176) a!3235 mask!3524) (Found!4043 j!176)))))

(declare-fun b!503523 () Bool)

(declare-fun res!304943 () Bool)

(declare-fun e!294864 () Bool)

(assert (=> b!503523 (=> res!304943 e!294864)))

(assert (=> b!503523 (= res!304943 e!294861)))

(declare-fun res!304931 () Bool)

(assert (=> b!503523 (=> (not res!304931) (not e!294861))))

(assert (=> b!503523 (= res!304931 (bvsgt #b00000000000000000000000000000000 (x!47407 lt!229164)))))

(declare-fun b!503524 () Bool)

(declare-fun e!294860 () Unit!15262)

(declare-fun Unit!15264 () Unit!15262)

(assert (=> b!503524 (= e!294860 Unit!15264)))

(declare-fun lt!229167 () Unit!15262)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32384 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15262)

(assert (=> b!503524 (= lt!229167 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229159 #b00000000000000000000000000000000 (index!18362 lt!229164) (x!47407 lt!229164) mask!3524))))

(declare-fun res!304939 () Bool)

(assert (=> b!503524 (= res!304939 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229159 lt!229162 lt!229161 mask!3524) (Intermediate!4043 false (index!18362 lt!229164) (x!47407 lt!229164))))))

(assert (=> b!503524 (=> (not res!304939) (not e!294859))))

(assert (=> b!503524 e!294859))

(declare-fun b!503525 () Bool)

(assert (=> b!503525 (= e!294864 true)))

(declare-fun lt!229168 () SeekEntryResult!4043)

(assert (=> b!503525 (= lt!229168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229159 lt!229162 lt!229161 mask!3524))))

(declare-fun b!503526 () Bool)

(declare-fun res!304936 () Bool)

(assert (=> b!503526 (=> res!304936 e!294862)))

(assert (=> b!503526 (= res!304936 (or (undefined!4855 lt!229164) (not (is-Intermediate!4043 lt!229164))))))

(declare-fun b!503527 () Bool)

(declare-fun Unit!15265 () Unit!15262)

(assert (=> b!503527 (= e!294860 Unit!15265)))

(declare-fun b!503528 () Bool)

(assert (=> b!503528 (= e!294862 e!294864)))

(declare-fun res!304941 () Bool)

(assert (=> b!503528 (=> res!304941 e!294864)))

(assert (=> b!503528 (= res!304941 (or (bvsgt (x!47407 lt!229164) #b01111111111111111111111111111110) (bvslt lt!229159 #b00000000000000000000000000000000) (bvsge lt!229159 (size!15933 a!3235)) (bvslt (index!18362 lt!229164) #b00000000000000000000000000000000) (bvsge (index!18362 lt!229164) (size!15933 a!3235)) (not (= lt!229164 (Intermediate!4043 false (index!18362 lt!229164) (x!47407 lt!229164))))))))

(assert (=> b!503528 (= (index!18362 lt!229164) i!1204)))

(declare-fun lt!229160 () Unit!15262)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32384 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15262)

(assert (=> b!503528 (= lt!229160 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229159 #b00000000000000000000000000000000 (index!18362 lt!229164) (x!47407 lt!229164) mask!3524))))

(assert (=> b!503528 (and (or (= (select (arr!15569 a!3235) (index!18362 lt!229164)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15569 a!3235) (index!18362 lt!229164)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15569 a!3235) (index!18362 lt!229164)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15569 a!3235) (index!18362 lt!229164)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229169 () Unit!15262)

(assert (=> b!503528 (= lt!229169 e!294860)))

(declare-fun c!59570 () Bool)

(assert (=> b!503528 (= c!59570 (= (select (arr!15569 a!3235) (index!18362 lt!229164)) (select (arr!15569 a!3235) j!176)))))

(assert (=> b!503528 (and (bvslt (x!47407 lt!229164) #b01111111111111111111111111111110) (or (= (select (arr!15569 a!3235) (index!18362 lt!229164)) (select (arr!15569 a!3235) j!176)) (= (select (arr!15569 a!3235) (index!18362 lt!229164)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15569 a!3235) (index!18362 lt!229164)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45668 res!304940) b!503519))

(assert (= (and b!503519 res!304934) b!503514))

(assert (= (and b!503514 res!304938) b!503512))

(assert (= (and b!503512 res!304932) b!503520))

(assert (= (and b!503520 res!304935) b!503515))

(assert (= (and b!503515 res!304933) b!503521))

(assert (= (and b!503521 res!304930) b!503517))

(assert (= (and b!503517 res!304937) b!503518))

(assert (= (and b!503518 res!304942) b!503522))

(assert (= (and b!503518 (not res!304929)) b!503526))

(assert (= (and b!503526 (not res!304936)) b!503528))

(assert (= (and b!503528 c!59570) b!503524))

(assert (= (and b!503528 (not c!59570)) b!503527))

(assert (= (and b!503524 res!304939) b!503513))

(assert (= (and b!503528 (not res!304941)) b!503523))

(assert (= (and b!503523 res!304931) b!503516))

(assert (= (and b!503523 (not res!304943)) b!503525))

(declare-fun m!484359 () Bool)

(assert (=> b!503525 m!484359))

(declare-fun m!484361 () Bool)

(assert (=> b!503517 m!484361))

(declare-fun m!484363 () Bool)

(assert (=> start!45668 m!484363))

(declare-fun m!484365 () Bool)

(assert (=> start!45668 m!484365))

(declare-fun m!484367 () Bool)

(assert (=> b!503521 m!484367))

(declare-fun m!484369 () Bool)

(assert (=> b!503514 m!484369))

(assert (=> b!503514 m!484369))

(declare-fun m!484371 () Bool)

(assert (=> b!503514 m!484371))

(declare-fun m!484373 () Bool)

(assert (=> b!503515 m!484373))

(declare-fun m!484375 () Bool)

(assert (=> b!503512 m!484375))

(assert (=> b!503522 m!484369))

(assert (=> b!503522 m!484369))

(declare-fun m!484377 () Bool)

(assert (=> b!503522 m!484377))

(declare-fun m!484379 () Bool)

(assert (=> b!503528 m!484379))

(declare-fun m!484381 () Bool)

(assert (=> b!503528 m!484381))

(assert (=> b!503528 m!484369))

(assert (=> b!503516 m!484369))

(assert (=> b!503516 m!484369))

(declare-fun m!484383 () Bool)

(assert (=> b!503516 m!484383))

(declare-fun m!484385 () Bool)

(assert (=> b!503524 m!484385))

(assert (=> b!503524 m!484359))

(declare-fun m!484387 () Bool)

(assert (=> b!503518 m!484387))

(declare-fun m!484389 () Bool)

(assert (=> b!503518 m!484389))

(declare-fun m!484391 () Bool)

(assert (=> b!503518 m!484391))

(declare-fun m!484393 () Bool)

(assert (=> b!503518 m!484393))

(assert (=> b!503518 m!484369))

(declare-fun m!484395 () Bool)

(assert (=> b!503518 m!484395))

(assert (=> b!503518 m!484369))

(declare-fun m!484397 () Bool)

(assert (=> b!503518 m!484397))

(assert (=> b!503518 m!484369))

(declare-fun m!484399 () Bool)

(assert (=> b!503518 m!484399))

(declare-fun m!484401 () Bool)

(assert (=> b!503518 m!484401))

(declare-fun m!484403 () Bool)

(assert (=> b!503520 m!484403))

(push 1)

