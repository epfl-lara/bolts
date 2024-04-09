; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44548 () Bool)

(assert start!44548)

(declare-fun b!488697 () Bool)

(declare-fun res!291897 () Bool)

(declare-fun e!287461 () Bool)

(assert (=> b!488697 (=> (not res!291897) (not e!287461))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488697 (= res!291897 (validKeyInArray!0 k!2280))))

(declare-fun b!488698 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31618 0))(
  ( (array!31619 (arr!15195 (Array (_ BitVec 32) (_ BitVec 64))) (size!15559 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31618)

(declare-fun e!287463 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3669 0))(
  ( (MissingZero!3669 (index!16855 (_ BitVec 32))) (Found!3669 (index!16856 (_ BitVec 32))) (Intermediate!3669 (undefined!4481 Bool) (index!16857 (_ BitVec 32)) (x!45999 (_ BitVec 32))) (Undefined!3669) (MissingVacant!3669 (index!16858 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31618 (_ BitVec 32)) SeekEntryResult!3669)

(assert (=> b!488698 (= e!287463 (= (seekEntryOrOpen!0 (select (arr!15195 a!3235) j!176) a!3235 mask!3524) (Found!3669 j!176)))))

(declare-fun b!488699 () Bool)

(declare-fun res!291895 () Bool)

(declare-fun e!287462 () Bool)

(assert (=> b!488699 (=> (not res!291895) (not e!287462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31618 (_ BitVec 32)) Bool)

(assert (=> b!488699 (= res!291895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488700 () Bool)

(assert (=> b!488700 (= e!287461 e!287462)))

(declare-fun res!291898 () Bool)

(assert (=> b!488700 (=> (not res!291898) (not e!287462))))

(declare-fun lt!220528 () SeekEntryResult!3669)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488700 (= res!291898 (or (= lt!220528 (MissingZero!3669 i!1204)) (= lt!220528 (MissingVacant!3669 i!1204))))))

(assert (=> b!488700 (= lt!220528 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488701 () Bool)

(declare-fun res!291894 () Bool)

(assert (=> b!488701 (=> (not res!291894) (not e!287462))))

(declare-datatypes ((List!9406 0))(
  ( (Nil!9403) (Cons!9402 (h!10261 (_ BitVec 64)) (t!15642 List!9406)) )
))
(declare-fun arrayNoDuplicates!0 (array!31618 (_ BitVec 32) List!9406) Bool)

(assert (=> b!488701 (= res!291894 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9403))))

(declare-fun b!488702 () Bool)

(declare-fun res!291896 () Bool)

(assert (=> b!488702 (=> (not res!291896) (not e!287461))))

(declare-fun arrayContainsKey!0 (array!31618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488702 (= res!291896 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488703 () Bool)

(declare-fun res!291902 () Bool)

(assert (=> b!488703 (=> (not res!291902) (not e!287461))))

(assert (=> b!488703 (= res!291902 (and (= (size!15559 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15559 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15559 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488704 () Bool)

(declare-fun lt!220527 () (_ BitVec 32))

(assert (=> b!488704 (= e!287462 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!220527 #b00000000000000000000000000000000) (bvslt lt!220527 (bvadd #b00000000000000000000000000000001 mask!3524))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488704 (= lt!220527 (toIndex!0 (select (store (arr!15195 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!488704 e!287463))

(declare-fun res!291901 () Bool)

(assert (=> b!488704 (=> (not res!291901) (not e!287463))))

(assert (=> b!488704 (= res!291901 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14276 0))(
  ( (Unit!14277) )
))
(declare-fun lt!220529 () Unit!14276)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14276)

(assert (=> b!488704 (= lt!220529 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488705 () Bool)

(declare-fun res!291899 () Bool)

(assert (=> b!488705 (=> (not res!291899) (not e!287461))))

(assert (=> b!488705 (= res!291899 (validKeyInArray!0 (select (arr!15195 a!3235) j!176)))))

(declare-fun res!291900 () Bool)

(assert (=> start!44548 (=> (not res!291900) (not e!287461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44548 (= res!291900 (validMask!0 mask!3524))))

(assert (=> start!44548 e!287461))

(assert (=> start!44548 true))

(declare-fun array_inv!10969 (array!31618) Bool)

(assert (=> start!44548 (array_inv!10969 a!3235)))

(assert (= (and start!44548 res!291900) b!488703))

(assert (= (and b!488703 res!291902) b!488705))

(assert (= (and b!488705 res!291899) b!488697))

(assert (= (and b!488697 res!291897) b!488702))

(assert (= (and b!488702 res!291896) b!488700))

(assert (= (and b!488700 res!291898) b!488699))

(assert (= (and b!488699 res!291895) b!488701))

(assert (= (and b!488701 res!291894) b!488704))

(assert (= (and b!488704 res!291901) b!488698))

(declare-fun m!468469 () Bool)

(assert (=> start!44548 m!468469))

(declare-fun m!468471 () Bool)

(assert (=> start!44548 m!468471))

(declare-fun m!468473 () Bool)

(assert (=> b!488698 m!468473))

(assert (=> b!488698 m!468473))

(declare-fun m!468475 () Bool)

(assert (=> b!488698 m!468475))

(declare-fun m!468477 () Bool)

(assert (=> b!488701 m!468477))

(declare-fun m!468479 () Bool)

(assert (=> b!488700 m!468479))

(declare-fun m!468481 () Bool)

(assert (=> b!488704 m!468481))

(declare-fun m!468483 () Bool)

(assert (=> b!488704 m!468483))

(declare-fun m!468485 () Bool)

(assert (=> b!488704 m!468485))

(declare-fun m!468487 () Bool)

(assert (=> b!488704 m!468487))

(assert (=> b!488704 m!468485))

(declare-fun m!468489 () Bool)

(assert (=> b!488704 m!468489))

(assert (=> b!488705 m!468473))

(assert (=> b!488705 m!468473))

(declare-fun m!468491 () Bool)

(assert (=> b!488705 m!468491))

(declare-fun m!468493 () Bool)

(assert (=> b!488699 m!468493))

(declare-fun m!468495 () Bool)

(assert (=> b!488702 m!468495))

(declare-fun m!468497 () Bool)

(assert (=> b!488697 m!468497))

(push 1)

(assert (not start!44548))

(assert (not b!488699))

(assert (not b!488698))

(assert (not b!488701))

(assert (not b!488697))

(assert (not b!488704))

(assert (not b!488700))

(assert (not b!488702))

(assert (not b!488705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77739 () Bool)

(assert (=> d!77739 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488697 d!77739))

(declare-fun d!77741 () Bool)

(declare-fun res!291961 () Bool)

(declare-fun e!287493 () Bool)

(assert (=> d!77741 (=> res!291961 e!287493)))

(assert (=> d!77741 (= res!291961 (= (select (arr!15195 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77741 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!287493)))

(declare-fun b!488764 () Bool)

(declare-fun e!287494 () Bool)

(assert (=> b!488764 (= e!287493 e!287494)))

(declare-fun res!291962 () Bool)

(assert (=> b!488764 (=> (not res!291962) (not e!287494))))

(assert (=> b!488764 (= res!291962 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15559 a!3235)))))

(declare-fun b!488765 () Bool)

(assert (=> b!488765 (= e!287494 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77741 (not res!291961)) b!488764))

(assert (= (and b!488764 res!291962) b!488765))

(declare-fun m!468559 () Bool)

(assert (=> d!77741 m!468559))

(declare-fun m!468561 () Bool)

(assert (=> b!488765 m!468561))

(assert (=> b!488702 d!77741))

(declare-fun b!488823 () Bool)

(declare-fun e!287531 () SeekEntryResult!3669)

(assert (=> b!488823 (= e!287531 Undefined!3669)))

(declare-fun b!488824 () Bool)

(declare-fun e!287533 () SeekEntryResult!3669)

(declare-fun lt!220574 () SeekEntryResult!3669)

(assert (=> b!488824 (= e!287533 (Found!3669 (index!16857 lt!220574)))))

(declare-fun e!287532 () SeekEntryResult!3669)

(declare-fun b!488825 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31618 (_ BitVec 32)) SeekEntryResult!3669)

(assert (=> b!488825 (= e!287532 (seekKeyOrZeroReturnVacant!0 (x!45999 lt!220574) (index!16857 lt!220574) (index!16857 lt!220574) (select (arr!15195 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!488826 () Bool)

(assert (=> b!488826 (= e!287531 e!287533)))

(declare-fun lt!220573 () (_ BitVec 64))

(assert (=> b!488826 (= lt!220573 (select (arr!15195 a!3235) (index!16857 lt!220574)))))

(declare-fun c!58693 () Bool)

(assert (=> b!488826 (= c!58693 (= lt!220573 (select (arr!15195 a!3235) j!176)))))

(declare-fun d!77749 () Bool)

(declare-fun lt!220572 () SeekEntryResult!3669)

(assert (=> d!77749 (and (or (is-Undefined!3669 lt!220572) (not (is-Found!3669 lt!220572)) (and (bvsge (index!16856 lt!220572) #b00000000000000000000000000000000) (bvslt (index!16856 lt!220572) (size!15559 a!3235)))) (or (is-Undefined!3669 lt!220572) (is-Found!3669 lt!220572) (not (is-MissingZero!3669 lt!220572)) (and (bvsge (index!16855 lt!220572) #b00000000000000000000000000000000) (bvslt (index!16855 lt!220572) (size!15559 a!3235)))) (or (is-Undefined!3669 lt!220572) (is-Found!3669 lt!220572) (is-MissingZero!3669 lt!220572) (not (is-MissingVacant!3669 lt!220572)) (and (bvsge (index!16858 lt!220572) #b00000000000000000000000000000000) (bvslt (index!16858 lt!220572) (size!15559 a!3235)))) (or (is-Undefined!3669 lt!220572) (ite (is-Found!3669 lt!220572) (= (select (arr!15195 a!3235) (index!16856 lt!220572)) (select (arr!15195 a!3235) j!176)) (ite (is-MissingZero!3669 lt!220572) (= (select (arr!15195 a!3235) (index!16855 lt!220572)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3669 lt!220572) (= (select (arr!15195 a!3235) (index!16858 lt!220572)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77749 (= lt!220572 e!287531)))

(declare-fun c!58694 () Bool)

(assert (=> d!77749 (= c!58694 (and (is-Intermediate!3669 lt!220574) (undefined!4481 lt!220574)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31618 (_ BitVec 32)) SeekEntryResult!3669)

(assert (=> d!77749 (= lt!220574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15195 a!3235) j!176) mask!3524) (select (arr!15195 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77749 (validMask!0 mask!3524)))

(assert (=> d!77749 (= (seekEntryOrOpen!0 (select (arr!15195 a!3235) j!176) a!3235 mask!3524) lt!220572)))

(declare-fun b!488827 () Bool)

(declare-fun c!58692 () Bool)

(assert (=> b!488827 (= c!58692 (= lt!220573 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!488827 (= e!287533 e!287532)))

(declare-fun b!488828 () Bool)

(assert (=> b!488828 (= e!287532 (MissingZero!3669 (index!16857 lt!220574)))))

(assert (= (and d!77749 c!58694) b!488823))

(assert (= (and d!77749 (not c!58694)) b!488826))

(assert (= (and b!488826 c!58693) b!488824))

(assert (= (and b!488826 (not c!58693)) b!488827))

(assert (= (and b!488827 c!58692) b!488828))

(assert (= (and b!488827 (not c!58692)) b!488825))

(assert (=> b!488825 m!468473))

(declare-fun m!468593 () Bool)

(assert (=> b!488825 m!468593))

(declare-fun m!468595 () Bool)

(assert (=> b!488826 m!468595))

(declare-fun m!468597 () Bool)

(assert (=> d!77749 m!468597))

(declare-fun m!468599 () Bool)

(assert (=> d!77749 m!468599))

(declare-fun m!468601 () Bool)

(assert (=> d!77749 m!468601))

(assert (=> d!77749 m!468473))

(declare-fun m!468603 () Bool)

(assert (=> d!77749 m!468603))

(assert (=> d!77749 m!468473))

(assert (=> d!77749 m!468601))

(declare-fun m!468605 () Bool)

(assert (=> d!77749 m!468605))

(assert (=> d!77749 m!468469))

(assert (=> b!488698 d!77749))

(declare-fun d!77759 () Bool)

(assert (=> d!77759 (= (validKeyInArray!0 (select (arr!15195 a!3235) j!176)) (and (not (= (select (arr!15195 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15195 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488705 d!77759))

(declare-fun d!77761 () Bool)

(assert (=> d!77761 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44548 d!77761))

(declare-fun d!77765 () Bool)

(assert (=> d!77765 (= (array_inv!10969 a!3235) (bvsge (size!15559 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44548 d!77765))

(declare-fun b!488894 () Bool)

(declare-fun e!287580 () Bool)

(declare-fun e!287579 () Bool)

(assert (=> b!488894 (= e!287580 e!287579)))

(declare-fun lt!220602 () (_ BitVec 64))

(assert (=> b!488894 (= lt!220602 (select (arr!15195 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220604 () Unit!14276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31618 (_ BitVec 64) (_ BitVec 32)) Unit!14276)

(assert (=> b!488894 (= lt!220604 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220602 #b00000000000000000000000000000000))))

(assert (=> b!488894 (arrayContainsKey!0 a!3235 lt!220602 #b00000000000000000000000000000000)))

(declare-fun lt!220603 () Unit!14276)

(assert (=> b!488894 (= lt!220603 lt!220604)))

(declare-fun res!292004 () Bool)

(assert (=> b!488894 (= res!292004 (= (seekEntryOrOpen!0 (select (arr!15195 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3669 #b00000000000000000000000000000000)))))

(assert (=> b!488894 (=> (not res!292004) (not e!287579))))

(declare-fun b!488895 () Bool)

(declare-fun call!31358 () Bool)

(assert (=> b!488895 (= e!287580 call!31358)))

(declare-fun b!488896 () Bool)

(declare-fun e!287581 () Bool)

(assert (=> b!488896 (= e!287581 e!287580)))

(declare-fun c!58715 () Bool)

(assert (=> b!488896 (= c!58715 (validKeyInArray!0 (select (arr!15195 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31355 () Bool)

(assert (=> bm!31355 (= call!31358 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488897 () Bool)

(assert (=> b!488897 (= e!287579 call!31358)))

(declare-fun d!77767 () Bool)

(declare-fun res!292003 () Bool)

(assert (=> d!77767 (=> res!292003 e!287581)))

(assert (=> d!77767 (= res!292003 (bvsge #b00000000000000000000000000000000 (size!15559 a!3235)))))

(assert (=> d!77767 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!287581)))

(assert (= (and d!77767 (not res!292003)) b!488896))

(assert (= (and b!488896 c!58715) b!488894))

(assert (= (and b!488896 (not c!58715)) b!488895))

(assert (= (and b!488894 res!292004) b!488897))

(assert (= (or b!488897 b!488895) bm!31355))

(assert (=> b!488894 m!468559))

(declare-fun m!468653 () Bool)

(assert (=> b!488894 m!468653))

(declare-fun m!468655 () Bool)

(assert (=> b!488894 m!468655))

(assert (=> b!488894 m!468559))

(declare-fun m!468657 () Bool)

(assert (=> b!488894 m!468657))

(assert (=> b!488896 m!468559))

(assert (=> b!488896 m!468559))

(declare-fun m!468659 () Bool)

(assert (=> b!488896 m!468659))

(declare-fun m!468661 () Bool)

(assert (=> bm!31355 m!468661))

(assert (=> b!488699 d!77767))

(declare-fun d!77777 () Bool)

(declare-fun lt!220628 () (_ BitVec 32))

(declare-fun lt!220627 () (_ BitVec 32))

(assert (=> d!77777 (= lt!220628 (bvmul (bvxor lt!220627 (bvlshr lt!220627 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77777 (= lt!220627 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15195 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15195 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77777 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!292007 (let ((h!10266 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15195 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15195 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46004 (bvmul (bvxor h!10266 (bvlshr h!10266 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46004 (bvlshr x!46004 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!292007 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!292007 #b00000000000000000000000000000000))))))

(assert (=> d!77777 (= (toIndex!0 (select (store (arr!15195 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!220628 (bvlshr lt!220628 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!488704 d!77777))

(declare-fun b!488906 () Bool)

(declare-fun e!287589 () Bool)

(declare-fun e!287588 () Bool)

(assert (=> b!488906 (= e!287589 e!287588)))

(declare-fun lt!220629 () (_ BitVec 64))

(assert (=> b!488906 (= lt!220629 (select (arr!15195 a!3235) j!176))))

(declare-fun lt!220631 () Unit!14276)

(assert (=> b!488906 (= lt!220631 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220629 j!176))))

(assert (=> b!488906 (arrayContainsKey!0 a!3235 lt!220629 #b00000000000000000000000000000000)))

(declare-fun lt!220630 () Unit!14276)

(assert (=> b!488906 (= lt!220630 lt!220631)))

(declare-fun res!292013 () Bool)

(assert (=> b!488906 (= res!292013 (= (seekEntryOrOpen!0 (select (arr!15195 a!3235) j!176) a!3235 mask!3524) (Found!3669 j!176)))))

(assert (=> b!488906 (=> (not res!292013) (not e!287588))))

(declare-fun b!488907 () Bool)

(declare-fun call!31361 () Bool)

(assert (=> b!488907 (= e!287589 call!31361)))

(declare-fun b!488908 () Bool)

(declare-fun e!287590 () Bool)

(assert (=> b!488908 (= e!287590 e!287589)))

(declare-fun c!58718 () Bool)

(assert (=> b!488908 (= c!58718 (validKeyInArray!0 (select (arr!15195 a!3235) j!176)))))

(declare-fun bm!31358 () Bool)

(assert (=> bm!31358 (= call!31361 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488909 () Bool)

(assert (=> b!488909 (= e!287588 call!31361)))

(declare-fun d!77785 () Bool)

(declare-fun res!292012 () Bool)

(assert (=> d!77785 (=> res!292012 e!287590)))

(assert (=> d!77785 (= res!292012 (bvsge j!176 (size!15559 a!3235)))))

(assert (=> d!77785 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!287590)))

(assert (= (and d!77785 (not res!292012)) b!488908))

(assert (= (and b!488908 c!58718) b!488906))

(assert (= (and b!488908 (not c!58718)) b!488907))

(assert (= (and b!488906 res!292013) b!488909))

(assert (= (or b!488909 b!488907) bm!31358))

(assert (=> b!488906 m!468473))

(declare-fun m!468675 () Bool)

(assert (=> b!488906 m!468675))

(declare-fun m!468677 () Bool)

(assert (=> b!488906 m!468677))

(assert (=> b!488906 m!468473))

(assert (=> b!488906 m!468475))

(assert (=> b!488908 m!468473))

(assert (=> b!488908 m!468473))

(assert (=> b!488908 m!468491))

(declare-fun m!468679 () Bool)

(assert (=> bm!31358 m!468679))

(assert (=> b!488704 d!77785))

(declare-fun d!77789 () Bool)

(assert (=> d!77789 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220640 () Unit!14276)

(declare-fun choose!38 (array!31618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14276)

(assert (=> d!77789 (= lt!220640 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77789 (validMask!0 mask!3524)))

(assert (=> d!77789 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220640)))

(declare-fun bs!15581 () Bool)

(assert (= bs!15581 d!77789))

(assert (=> bs!15581 m!468487))

(declare-fun m!468685 () Bool)

(assert (=> bs!15581 m!468685))

(assert (=> bs!15581 m!468469))

(assert (=> b!488704 d!77789))

(declare-fun bm!31361 () Bool)

(declare-fun call!31364 () Bool)

(declare-fun c!58724 () Bool)

(assert (=> bm!31361 (= call!31364 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58724 (Cons!9402 (select (arr!15195 a!3235) #b00000000000000000000000000000000) Nil!9403) Nil!9403)))))

(declare-fun b!488932 () Bool)

(declare-fun e!287608 () Bool)

(assert (=> b!488932 (= e!287608 call!31364)))

(declare-fun b!488933 () Bool)

(declare-fun e!287610 () Bool)

(assert (=> b!488933 (= e!287610 e!287608)))

(assert (=> b!488933 (= c!58724 (validKeyInArray!0 (select (arr!15195 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488934 () Bool)

(declare-fun e!287609 () Bool)

(declare-fun contains!2711 (List!9406 (_ BitVec 64)) Bool)

(assert (=> b!488934 (= e!287609 (contains!2711 Nil!9403 (select (arr!15195 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488935 () Bool)

(declare-fun e!287611 () Bool)

(assert (=> b!488935 (= e!287611 e!287610)))

(declare-fun res!292027 () Bool)

(assert (=> b!488935 (=> (not res!292027) (not e!287610))))

(assert (=> b!488935 (= res!292027 (not e!287609))))

(declare-fun res!292026 () Bool)

(assert (=> b!488935 (=> (not res!292026) (not e!287609))))

(assert (=> b!488935 (= res!292026 (validKeyInArray!0 (select (arr!15195 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77799 () Bool)

(declare-fun res!292028 () Bool)

(assert (=> d!77799 (=> res!292028 e!287611)))

(assert (=> d!77799 (= res!292028 (bvsge #b00000000000000000000000000000000 (size!15559 a!3235)))))

(assert (=> d!77799 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9403) e!287611)))

(declare-fun b!488936 () Bool)

(assert (=> b!488936 (= e!287608 call!31364)))

(assert (= (and d!77799 (not res!292028)) b!488935))

(assert (= (and b!488935 res!292026) b!488934))

(assert (= (and b!488935 res!292027) b!488933))

(assert (= (and b!488933 c!58724) b!488936))

(assert (= (and b!488933 (not c!58724)) b!488932))

(assert (= (or b!488936 b!488932) bm!31361))

(assert (=> bm!31361 m!468559))

(declare-fun m!468703 () Bool)

(assert (=> bm!31361 m!468703))

(assert (=> b!488933 m!468559))

(assert (=> b!488933 m!468559))

(assert (=> b!488933 m!468659))

(assert (=> b!488934 m!468559))

(assert (=> b!488934 m!468559))

(declare-fun m!468705 () Bool)

(assert (=> b!488934 m!468705))

(assert (=> b!488935 m!468559))

(assert (=> b!488935 m!468559))

(assert (=> b!488935 m!468659))

(assert (=> b!488701 d!77799))

(declare-fun b!488937 () Bool)

(declare-fun e!287612 () SeekEntryResult!3669)

(assert (=> b!488937 (= e!287612 Undefined!3669)))

(declare-fun b!488938 () Bool)

(declare-fun e!287614 () SeekEntryResult!3669)

(declare-fun lt!220646 () SeekEntryResult!3669)

(assert (=> b!488938 (= e!287614 (Found!3669 (index!16857 lt!220646)))))

(declare-fun b!488939 () Bool)

(declare-fun e!287613 () SeekEntryResult!3669)

(assert (=> b!488939 (= e!287613 (seekKeyOrZeroReturnVacant!0 (x!45999 lt!220646) (index!16857 lt!220646) (index!16857 lt!220646) k!2280 a!3235 mask!3524))))

(declare-fun b!488940 () Bool)

(assert (=> b!488940 (= e!287612 e!287614)))

(declare-fun lt!220645 () (_ BitVec 64))

(assert (=> b!488940 (= lt!220645 (select (arr!15195 a!3235) (index!16857 lt!220646)))))

(declare-fun c!58726 () Bool)

(assert (=> b!488940 (= c!58726 (= lt!220645 k!2280))))

(declare-fun d!77805 () Bool)

(declare-fun lt!220644 () SeekEntryResult!3669)

(assert (=> d!77805 (and (or (is-Undefined!3669 lt!220644) (not (is-Found!3669 lt!220644)) (and (bvsge (index!16856 lt!220644) #b00000000000000000000000000000000) (bvslt (index!16856 lt!220644) (size!15559 a!3235)))) (or (is-Undefined!3669 lt!220644) (is-Found!3669 lt!220644) (not (is-MissingZero!3669 lt!220644)) (and (bvsge (index!16855 lt!220644) #b00000000000000000000000000000000) (bvslt (index!16855 lt!220644) (size!15559 a!3235)))) (or (is-Undefined!3669 lt!220644) (is-Found!3669 lt!220644) (is-MissingZero!3669 lt!220644) (not (is-MissingVacant!3669 lt!220644)) (and (bvsge (index!16858 lt!220644) #b00000000000000000000000000000000) (bvslt (index!16858 lt!220644) (size!15559 a!3235)))) (or (is-Undefined!3669 lt!220644) (ite (is-Found!3669 lt!220644) (= (select (arr!15195 a!3235) (index!16856 lt!220644)) k!2280) (ite (is-MissingZero!3669 lt!220644) (= (select (arr!15195 a!3235) (index!16855 lt!220644)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3669 lt!220644) (= (select (arr!15195 a!3235) (index!16858 lt!220644)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77805 (= lt!220644 e!287612)))

(declare-fun c!58727 () Bool)

(assert (=> d!77805 (= c!58727 (and (is-Intermediate!3669 lt!220646) (undefined!4481 lt!220646)))))

(assert (=> d!77805 (= lt!220646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77805 (validMask!0 mask!3524)))

(assert (=> d!77805 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!220644)))

(declare-fun b!488941 () Bool)

(declare-fun c!58725 () Bool)

(assert (=> b!488941 (= c!58725 (= lt!220645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!488941 (= e!287614 e!287613)))

(declare-fun b!488942 () Bool)

(assert (=> b!488942 (= e!287613 (MissingZero!3669 (index!16857 lt!220646)))))

(assert (= (and d!77805 c!58727) b!488937))

(assert (= (and d!77805 (not c!58727)) b!488940))

(assert (= (and b!488940 c!58726) b!488938))

(assert (= (and b!488940 (not c!58726)) b!488941))

(assert (= (and b!488941 c!58725) b!488942))

(assert (= (and b!488941 (not c!58725)) b!488939))

(declare-fun m!468707 () Bool)

(assert (=> b!488939 m!468707))

(declare-fun m!468709 () Bool)

(assert (=> b!488940 m!468709))

(declare-fun m!468711 () Bool)

(assert (=> d!77805 m!468711))

(declare-fun m!468713 () Bool)

(assert (=> d!77805 m!468713))

(declare-fun m!468715 () Bool)

(assert (=> d!77805 m!468715))

(declare-fun m!468717 () Bool)

(assert (=> d!77805 m!468717))

(assert (=> d!77805 m!468715))

(declare-fun m!468719 () Bool)

(assert (=> d!77805 m!468719))

(assert (=> d!77805 m!468469))

(assert (=> b!488700 d!77805))

(push 1)

(assert (not d!77749))

(assert (not b!488934))

(assert (not bm!31361))

(assert (not b!488935))

(assert (not b!488906))

(assert (not b!488894))

(assert (not b!488825))

(assert (not b!488933))

(assert (not b!488896))

(assert (not b!488908))

(assert (not d!77789))

(assert (not bm!31355))

(assert (not bm!31358))

(assert (not d!77805))

(assert (not b!488765))

(assert (not b!488939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

