; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44552 () Bool)

(assert start!44552)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!488751 () Bool)

(declare-fun e!287485 () Bool)

(declare-datatypes ((array!31622 0))(
  ( (array!31623 (arr!15197 (Array (_ BitVec 32) (_ BitVec 64))) (size!15561 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31622)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3671 0))(
  ( (MissingZero!3671 (index!16863 (_ BitVec 32))) (Found!3671 (index!16864 (_ BitVec 32))) (Intermediate!3671 (undefined!4483 Bool) (index!16865 (_ BitVec 32)) (x!46001 (_ BitVec 32))) (Undefined!3671) (MissingVacant!3671 (index!16866 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31622 (_ BitVec 32)) SeekEntryResult!3671)

(assert (=> b!488751 (= e!287485 (= (seekEntryOrOpen!0 (select (arr!15197 a!3235) j!176) a!3235 mask!3524) (Found!3671 j!176)))))

(declare-fun res!291948 () Bool)

(declare-fun e!287486 () Bool)

(assert (=> start!44552 (=> (not res!291948) (not e!287486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44552 (= res!291948 (validMask!0 mask!3524))))

(assert (=> start!44552 e!287486))

(assert (=> start!44552 true))

(declare-fun array_inv!10971 (array!31622) Bool)

(assert (=> start!44552 (array_inv!10971 a!3235)))

(declare-fun b!488752 () Bool)

(declare-fun e!287488 () Bool)

(assert (=> b!488752 (= e!287486 e!287488)))

(declare-fun res!291953 () Bool)

(assert (=> b!488752 (=> (not res!291953) (not e!287488))))

(declare-fun lt!220546 () SeekEntryResult!3671)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488752 (= res!291953 (or (= lt!220546 (MissingZero!3671 i!1204)) (= lt!220546 (MissingVacant!3671 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!488752 (= lt!220546 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488753 () Bool)

(declare-fun res!291950 () Bool)

(assert (=> b!488753 (=> (not res!291950) (not e!287486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488753 (= res!291950 (validKeyInArray!0 (select (arr!15197 a!3235) j!176)))))

(declare-fun b!488754 () Bool)

(declare-fun res!291955 () Bool)

(assert (=> b!488754 (=> (not res!291955) (not e!287486))))

(assert (=> b!488754 (= res!291955 (and (= (size!15561 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15561 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15561 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488755 () Bool)

(declare-fun res!291956 () Bool)

(assert (=> b!488755 (=> (not res!291956) (not e!287488))))

(declare-datatypes ((List!9408 0))(
  ( (Nil!9405) (Cons!9404 (h!10263 (_ BitVec 64)) (t!15644 List!9408)) )
))
(declare-fun arrayNoDuplicates!0 (array!31622 (_ BitVec 32) List!9408) Bool)

(assert (=> b!488755 (= res!291956 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9405))))

(declare-fun b!488756 () Bool)

(declare-fun lt!220547 () (_ BitVec 32))

(assert (=> b!488756 (= e!287488 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!220547 #b00000000000000000000000000000000) (bvslt lt!220547 (bvadd #b00000000000000000000000000000001 mask!3524))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488756 (= lt!220547 (toIndex!0 (select (store (arr!15197 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!488756 e!287485))

(declare-fun res!291954 () Bool)

(assert (=> b!488756 (=> (not res!291954) (not e!287485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31622 (_ BitVec 32)) Bool)

(assert (=> b!488756 (= res!291954 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14280 0))(
  ( (Unit!14281) )
))
(declare-fun lt!220545 () Unit!14280)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14280)

(assert (=> b!488756 (= lt!220545 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488757 () Bool)

(declare-fun res!291952 () Bool)

(assert (=> b!488757 (=> (not res!291952) (not e!287488))))

(assert (=> b!488757 (= res!291952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488758 () Bool)

(declare-fun res!291949 () Bool)

(assert (=> b!488758 (=> (not res!291949) (not e!287486))))

(assert (=> b!488758 (= res!291949 (validKeyInArray!0 k!2280))))

(declare-fun b!488759 () Bool)

(declare-fun res!291951 () Bool)

(assert (=> b!488759 (=> (not res!291951) (not e!287486))))

(declare-fun arrayContainsKey!0 (array!31622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488759 (= res!291951 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44552 res!291948) b!488754))

(assert (= (and b!488754 res!291955) b!488753))

(assert (= (and b!488753 res!291950) b!488758))

(assert (= (and b!488758 res!291949) b!488759))

(assert (= (and b!488759 res!291951) b!488752))

(assert (= (and b!488752 res!291953) b!488757))

(assert (= (and b!488757 res!291952) b!488755))

(assert (= (and b!488755 res!291956) b!488756))

(assert (= (and b!488756 res!291954) b!488751))

(declare-fun m!468529 () Bool)

(assert (=> b!488757 m!468529))

(declare-fun m!468531 () Bool)

(assert (=> b!488752 m!468531))

(declare-fun m!468533 () Bool)

(assert (=> start!44552 m!468533))

(declare-fun m!468535 () Bool)

(assert (=> start!44552 m!468535))

(declare-fun m!468537 () Bool)

(assert (=> b!488755 m!468537))

(declare-fun m!468539 () Bool)

(assert (=> b!488758 m!468539))

(declare-fun m!468541 () Bool)

(assert (=> b!488756 m!468541))

(declare-fun m!468543 () Bool)

(assert (=> b!488756 m!468543))

(declare-fun m!468545 () Bool)

(assert (=> b!488756 m!468545))

(declare-fun m!468547 () Bool)

(assert (=> b!488756 m!468547))

(assert (=> b!488756 m!468545))

(declare-fun m!468549 () Bool)

(assert (=> b!488756 m!468549))

(declare-fun m!468551 () Bool)

(assert (=> b!488751 m!468551))

(assert (=> b!488751 m!468551))

(declare-fun m!468553 () Bool)

(assert (=> b!488751 m!468553))

(assert (=> b!488753 m!468551))

(assert (=> b!488753 m!468551))

(declare-fun m!468555 () Bool)

(assert (=> b!488753 m!468555))

(declare-fun m!468557 () Bool)

(assert (=> b!488759 m!468557))

(push 1)

(assert (not b!488758))

(assert (not b!488755))

(assert (not b!488756))

(assert (not b!488753))

(assert (not b!488751))

(assert (not b!488757))

(assert (not start!44552))

(assert (not b!488759))

(assert (not b!488752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!488776 () Bool)

(declare-fun e!287505 () Bool)

(declare-fun call!31346 () Bool)

(assert (=> b!488776 (= e!287505 call!31346)))

(declare-fun b!488777 () Bool)

(declare-fun e!287506 () Bool)

(assert (=> b!488777 (= e!287506 e!287505)))

(declare-fun c!58673 () Bool)

(assert (=> b!488777 (= c!58673 (validKeyInArray!0 (select (arr!15197 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488779 () Bool)

(assert (=> b!488779 (= e!287505 call!31346)))

(declare-fun b!488780 () Bool)

(declare-fun e!287504 () Bool)

(assert (=> b!488780 (= e!287504 e!287506)))

(declare-fun res!291971 () Bool)

(assert (=> b!488780 (=> (not res!291971) (not e!287506))))

(declare-fun e!287503 () Bool)

(assert (=> b!488780 (= res!291971 (not e!287503))))

(declare-fun res!291970 () Bool)

(assert (=> b!488780 (=> (not res!291970) (not e!287503))))

(assert (=> b!488780 (= res!291970 (validKeyInArray!0 (select (arr!15197 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31343 () Bool)

(assert (=> bm!31343 (= call!31346 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58673 (Cons!9404 (select (arr!15197 a!3235) #b00000000000000000000000000000000) Nil!9405) Nil!9405)))))

(declare-fun b!488778 () Bool)

(declare-fun contains!2709 (List!9408 (_ BitVec 64)) Bool)

(assert (=> b!488778 (= e!287503 (contains!2709 Nil!9405 (select (arr!15197 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77751 () Bool)

(declare-fun res!291969 () Bool)

(assert (=> d!77751 (=> res!291969 e!287504)))

(assert (=> d!77751 (= res!291969 (bvsge #b00000000000000000000000000000000 (size!15561 a!3235)))))

(assert (=> d!77751 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9405) e!287504)))

(assert (= (and d!77751 (not res!291969)) b!488780))

(assert (= (and b!488780 res!291970) b!488778))

(assert (= (and b!488780 res!291971) b!488777))

(assert (= (and b!488777 c!58673) b!488779))

(assert (= (and b!488777 (not c!58673)) b!488776))

(assert (= (or b!488779 b!488776) bm!31343))

(declare-fun m!468563 () Bool)

(assert (=> b!488777 m!468563))

(assert (=> b!488777 m!468563))

(declare-fun m!468565 () Bool)

(assert (=> b!488777 m!468565))

(assert (=> b!488780 m!468563))

(assert (=> b!488780 m!468563))

(assert (=> b!488780 m!468565))

(assert (=> bm!31343 m!468563))

(declare-fun m!468567 () Bool)

(assert (=> bm!31343 m!468567))

(assert (=> b!488778 m!468563))

(assert (=> b!488778 m!468563))

(declare-fun m!468569 () Bool)

(assert (=> b!488778 m!468569))

(assert (=> b!488755 d!77751))

(declare-fun b!488813 () Bool)

(declare-fun e!287525 () Bool)

(declare-fun call!31349 () Bool)

(assert (=> b!488813 (= e!287525 call!31349)))

(declare-fun b!488814 () Bool)

(declare-fun e!287526 () Bool)

(assert (=> b!488814 (= e!287526 call!31349)))

(declare-fun bm!31346 () Bool)

(assert (=> bm!31346 (= call!31349 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488815 () Bool)

(declare-fun e!287527 () Bool)

(assert (=> b!488815 (= e!287527 e!287526)))

(declare-fun c!58688 () Bool)

(assert (=> b!488815 (= c!58688 (validKeyInArray!0 (select (arr!15197 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488816 () Bool)

(assert (=> b!488816 (= e!287526 e!287525)))

(declare-fun lt!220568 () (_ BitVec 64))

(assert (=> b!488816 (= lt!220568 (select (arr!15197 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220566 () Unit!14280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31622 (_ BitVec 64) (_ BitVec 32)) Unit!14280)

(assert (=> b!488816 (= lt!220566 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220568 #b00000000000000000000000000000000))))

(assert (=> b!488816 (arrayContainsKey!0 a!3235 lt!220568 #b00000000000000000000000000000000)))

(declare-fun lt!220567 () Unit!14280)

(assert (=> b!488816 (= lt!220567 lt!220566)))

(declare-fun res!291977 () Bool)

(assert (=> b!488816 (= res!291977 (= (seekEntryOrOpen!0 (select (arr!15197 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3671 #b00000000000000000000000000000000)))))

(assert (=> b!488816 (=> (not res!291977) (not e!287525))))

(declare-fun d!77753 () Bool)

(declare-fun res!291976 () Bool)

(assert (=> d!77753 (=> res!291976 e!287527)))

(assert (=> d!77753 (= res!291976 (bvsge #b00000000000000000000000000000000 (size!15561 a!3235)))))

(assert (=> d!77753 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!287527)))

(assert (= (and d!77753 (not res!291976)) b!488815))

(assert (= (and b!488815 c!58688) b!488816))

(assert (= (and b!488815 (not c!58688)) b!488814))

(assert (= (and b!488816 res!291977) b!488813))

(assert (= (or b!488813 b!488814) bm!31346))

(declare-fun m!468571 () Bool)

(assert (=> bm!31346 m!468571))

(assert (=> b!488815 m!468563))

(assert (=> b!488815 m!468563))

(assert (=> b!488815 m!468565))

(assert (=> b!488816 m!468563))

(declare-fun m!468573 () Bool)

(assert (=> b!488816 m!468573))

(declare-fun m!468575 () Bool)

(assert (=> b!488816 m!468575))

(assert (=> b!488816 m!468563))

(declare-fun m!468577 () Bool)

(assert (=> b!488816 m!468577))

(assert (=> b!488757 d!77753))

(declare-fun b!488880 () Bool)

(declare-fun e!287573 () SeekEntryResult!3671)

(declare-fun lt!220596 () SeekEntryResult!3671)

(assert (=> b!488880 (= e!287573 (Found!3671 (index!16865 lt!220596)))))

(declare-fun b!488881 () Bool)

(declare-fun e!287572 () SeekEntryResult!3671)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31622 (_ BitVec 32)) SeekEntryResult!3671)

(assert (=> b!488881 (= e!287572 (seekKeyOrZeroReturnVacant!0 (x!46001 lt!220596) (index!16865 lt!220596) (index!16865 lt!220596) (select (arr!15197 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!488882 () Bool)

(declare-fun c!58709 () Bool)

(declare-fun lt!220597 () (_ BitVec 64))

(assert (=> b!488882 (= c!58709 (= lt!220597 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!488882 (= e!287573 e!287572)))

(declare-fun b!488883 () Bool)

(declare-fun e!287571 () SeekEntryResult!3671)

(assert (=> b!488883 (= e!287571 e!287573)))

(assert (=> b!488883 (= lt!220597 (select (arr!15197 a!3235) (index!16865 lt!220596)))))

(declare-fun c!58710 () Bool)

(assert (=> b!488883 (= c!58710 (= lt!220597 (select (arr!15197 a!3235) j!176)))))

(declare-fun b!488884 () Bool)

(assert (=> b!488884 (= e!287571 Undefined!3671)))

(declare-fun d!77755 () Bool)

(declare-fun lt!220598 () SeekEntryResult!3671)

(assert (=> d!77755 (and (or (is-Undefined!3671 lt!220598) (not (is-Found!3671 lt!220598)) (and (bvsge (index!16864 lt!220598) #b00000000000000000000000000000000) (bvslt (index!16864 lt!220598) (size!15561 a!3235)))) (or (is-Undefined!3671 lt!220598) (is-Found!3671 lt!220598) (not (is-MissingZero!3671 lt!220598)) (and (bvsge (index!16863 lt!220598) #b00000000000000000000000000000000) (bvslt (index!16863 lt!220598) (size!15561 a!3235)))) (or (is-Undefined!3671 lt!220598) (is-Found!3671 lt!220598) (is-MissingZero!3671 lt!220598) (not (is-MissingVacant!3671 lt!220598)) (and (bvsge (index!16866 lt!220598) #b00000000000000000000000000000000) (bvslt (index!16866 lt!220598) (size!15561 a!3235)))) (or (is-Undefined!3671 lt!220598) (ite (is-Found!3671 lt!220598) (= (select (arr!15197 a!3235) (index!16864 lt!220598)) (select (arr!15197 a!3235) j!176)) (ite (is-MissingZero!3671 lt!220598) (= (select (arr!15197 a!3235) (index!16863 lt!220598)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3671 lt!220598) (= (select (arr!15197 a!3235) (index!16866 lt!220598)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77755 (= lt!220598 e!287571)))

(declare-fun c!58711 () Bool)

(assert (=> d!77755 (= c!58711 (and (is-Intermediate!3671 lt!220596) (undefined!4483 lt!220596)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31622 (_ BitVec 32)) SeekEntryResult!3671)

(assert (=> d!77755 (= lt!220596 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15197 a!3235) j!176) mask!3524) (select (arr!15197 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77755 (validMask!0 mask!3524)))

(assert (=> d!77755 (= (seekEntryOrOpen!0 (select (arr!15197 a!3235) j!176) a!3235 mask!3524) lt!220598)))

(declare-fun b!488885 () Bool)

(assert (=> b!488885 (= e!287572 (MissingZero!3671 (index!16865 lt!220596)))))

(assert (= (and d!77755 c!58711) b!488884))

(assert (= (and d!77755 (not c!58711)) b!488883))

(assert (= (and b!488883 c!58710) b!488880))

(assert (= (and b!488883 (not c!58710)) b!488882))

(assert (= (and b!488882 c!58709) b!488885))

(assert (= (and b!488882 (not c!58709)) b!488881))

(assert (=> b!488881 m!468551))

(declare-fun m!468625 () Bool)

(assert (=> b!488881 m!468625))

(declare-fun m!468627 () Bool)

(assert (=> b!488883 m!468627))

(assert (=> d!77755 m!468551))

(declare-fun m!468629 () Bool)

(assert (=> d!77755 m!468629))

(declare-fun m!468631 () Bool)

(assert (=> d!77755 m!468631))

(declare-fun m!468633 () Bool)

(assert (=> d!77755 m!468633))

(declare-fun m!468635 () Bool)

(assert (=> d!77755 m!468635))

(assert (=> d!77755 m!468629))

(assert (=> d!77755 m!468551))

(declare-fun m!468637 () Bool)

(assert (=> d!77755 m!468637))

(assert (=> d!77755 m!468533))

(assert (=> b!488751 d!77755))

(declare-fun d!77773 () Bool)

(declare-fun lt!220614 () (_ BitVec 32))

(declare-fun lt!220613 () (_ BitVec 32))

(assert (=> d!77773 (= lt!220614 (bvmul (bvxor lt!220613 (bvlshr lt!220613 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77773 (= lt!220613 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15197 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15197 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77773 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!292005 (let ((h!10264 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15197 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15197 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46002 (bvmul (bvxor h!10264 (bvlshr h!10264 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46002 (bvlshr x!46002 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!292005 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!292005 #b00000000000000000000000000000000))))))

(assert (=> d!77773 (= (toIndex!0 (select (store (arr!15197 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!220614 (bvlshr lt!220614 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!488756 d!77773))

(declare-fun b!488898 () Bool)

(declare-fun e!287582 () Bool)

(declare-fun call!31359 () Bool)

(assert (=> b!488898 (= e!287582 call!31359)))

(declare-fun b!488899 () Bool)

(declare-fun e!287583 () Bool)

(assert (=> b!488899 (= e!287583 call!31359)))

(declare-fun bm!31356 () Bool)

(assert (=> bm!31356 (= call!31359 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488900 () Bool)

(declare-fun e!287584 () Bool)

(assert (=> b!488900 (= e!287584 e!287583)))

(declare-fun c!58716 () Bool)

(assert (=> b!488900 (= c!58716 (validKeyInArray!0 (select (arr!15197 a!3235) j!176)))))

(declare-fun b!488901 () Bool)

(assert (=> b!488901 (= e!287583 e!287582)))

(declare-fun lt!220621 () (_ BitVec 64))

(assert (=> b!488901 (= lt!220621 (select (arr!15197 a!3235) j!176))))

(declare-fun lt!220619 () Unit!14280)

(assert (=> b!488901 (= lt!220619 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220621 j!176))))

(assert (=> b!488901 (arrayContainsKey!0 a!3235 lt!220621 #b00000000000000000000000000000000)))

(declare-fun lt!220620 () Unit!14280)

(assert (=> b!488901 (= lt!220620 lt!220619)))

(declare-fun res!292009 () Bool)

(assert (=> b!488901 (= res!292009 (= (seekEntryOrOpen!0 (select (arr!15197 a!3235) j!176) a!3235 mask!3524) (Found!3671 j!176)))))

(assert (=> b!488901 (=> (not res!292009) (not e!287582))))

(declare-fun d!77779 () Bool)

(declare-fun res!292008 () Bool)

(assert (=> d!77779 (=> res!292008 e!287584)))

(assert (=> d!77779 (= res!292008 (bvsge j!176 (size!15561 a!3235)))))

(assert (=> d!77779 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!287584)))

(assert (= (and d!77779 (not res!292008)) b!488900))

(assert (= (and b!488900 c!58716) b!488901))

(assert (= (and b!488900 (not c!58716)) b!488899))

(assert (= (and b!488901 res!292009) b!488898))

(assert (= (or b!488898 b!488899) bm!31356))

(declare-fun m!468663 () Bool)

(assert (=> bm!31356 m!468663))

(assert (=> b!488900 m!468551))

(assert (=> b!488900 m!468551))

(assert (=> b!488900 m!468555))

(assert (=> b!488901 m!468551))

(declare-fun m!468665 () Bool)

(assert (=> b!488901 m!468665))

(declare-fun m!468667 () Bool)

(assert (=> b!488901 m!468667))

(assert (=> b!488901 m!468551))

(assert (=> b!488901 m!468553))

(assert (=> b!488756 d!77779))

(declare-fun d!77783 () Bool)

(assert (=> d!77783 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220635 () Unit!14280)

(declare-fun choose!38 (array!31622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14280)

(assert (=> d!77783 (= lt!220635 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77783 (validMask!0 mask!3524)))

(assert (=> d!77783 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220635)))

(declare-fun bs!15579 () Bool)

(assert (= bs!15579 d!77783))

(assert (=> bs!15579 m!468547))

(declare-fun m!468681 () Bool)

(assert (=> bs!15579 m!468681))

(assert (=> bs!15579 m!468533))

(assert (=> b!488756 d!77783))

(declare-fun d!77791 () Bool)

(assert (=> d!77791 (= (validKeyInArray!0 (select (arr!15197 a!3235) j!176)) (and (not (= (select (arr!15197 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15197 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488753 d!77791))

(declare-fun d!77795 () Bool)

(assert (=> d!77795 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488758 d!77795))

(declare-fun b!488910 () Bool)

(declare-fun e!287593 () SeekEntryResult!3671)

(declare-fun lt!220641 () SeekEntryResult!3671)

(assert (=> b!488910 (= e!287593 (Found!3671 (index!16865 lt!220641)))))

(declare-fun e!287592 () SeekEntryResult!3671)

(declare-fun b!488911 () Bool)

(assert (=> b!488911 (= e!287592 (seekKeyOrZeroReturnVacant!0 (x!46001 lt!220641) (index!16865 lt!220641) (index!16865 lt!220641) k!2280 a!3235 mask!3524))))

(declare-fun b!488912 () Bool)

(declare-fun c!58719 () Bool)

(declare-fun lt!220642 () (_ BitVec 64))

(assert (=> b!488912 (= c!58719 (= lt!220642 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!488912 (= e!287593 e!287592)))

(declare-fun b!488913 () Bool)

(declare-fun e!287591 () SeekEntryResult!3671)

(assert (=> b!488913 (= e!287591 e!287593)))

(assert (=> b!488913 (= lt!220642 (select (arr!15197 a!3235) (index!16865 lt!220641)))))

(declare-fun c!58720 () Bool)

(assert (=> b!488913 (= c!58720 (= lt!220642 k!2280))))

(declare-fun b!488914 () Bool)

(assert (=> b!488914 (= e!287591 Undefined!3671)))

(declare-fun d!77797 () Bool)

(declare-fun lt!220643 () SeekEntryResult!3671)

(assert (=> d!77797 (and (or (is-Undefined!3671 lt!220643) (not (is-Found!3671 lt!220643)) (and (bvsge (index!16864 lt!220643) #b00000000000000000000000000000000) (bvslt (index!16864 lt!220643) (size!15561 a!3235)))) (or (is-Undefined!3671 lt!220643) (is-Found!3671 lt!220643) (not (is-MissingZero!3671 lt!220643)) (and (bvsge (index!16863 lt!220643) #b00000000000000000000000000000000) (bvslt (index!16863 lt!220643) (size!15561 a!3235)))) (or (is-Undefined!3671 lt!220643) (is-Found!3671 lt!220643) (is-MissingZero!3671 lt!220643) (not (is-MissingVacant!3671 lt!220643)) (and (bvsge (index!16866 lt!220643) #b00000000000000000000000000000000) (bvslt (index!16866 lt!220643) (size!15561 a!3235)))) (or (is-Undefined!3671 lt!220643) (ite (is-Found!3671 lt!220643) (= (select (arr!15197 a!3235) (index!16864 lt!220643)) k!2280) (ite (is-MissingZero!3671 lt!220643) (= (select (arr!15197 a!3235) (index!16863 lt!220643)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3671 lt!220643) (= (select (arr!15197 a!3235) (index!16866 lt!220643)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77797 (= lt!220643 e!287591)))

(declare-fun c!58721 () Bool)

(assert (=> d!77797 (= c!58721 (and (is-Intermediate!3671 lt!220641) (undefined!4483 lt!220641)))))

(assert (=> d!77797 (= lt!220641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77797 (validMask!0 mask!3524)))

(assert (=> d!77797 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!220643)))

(declare-fun b!488915 () Bool)

(assert (=> b!488915 (= e!287592 (MissingZero!3671 (index!16865 lt!220641)))))

(assert (= (and d!77797 c!58721) b!488914))

(assert (= (and d!77797 (not c!58721)) b!488913))

(assert (= (and b!488913 c!58720) b!488910))

(assert (= (and b!488913 (not c!58720)) b!488912))

(assert (= (and b!488912 c!58719) b!488915))

(assert (= (and b!488912 (not c!58719)) b!488911))

(declare-fun m!468687 () Bool)

(assert (=> b!488911 m!468687))

(declare-fun m!468689 () Bool)

(assert (=> b!488913 m!468689))

(declare-fun m!468691 () Bool)

(assert (=> d!77797 m!468691))

(declare-fun m!468693 () Bool)

(assert (=> d!77797 m!468693))

(declare-fun m!468695 () Bool)

(assert (=> d!77797 m!468695))

(declare-fun m!468697 () Bool)

(assert (=> d!77797 m!468697))

(assert (=> d!77797 m!468691))

(declare-fun m!468699 () Bool)

(assert (=> d!77797 m!468699))

(assert (=> d!77797 m!468533))

(assert (=> b!488752 d!77797))

(declare-fun d!77801 () Bool)

(declare-fun res!292024 () Bool)

(declare-fun e!287606 () Bool)

(assert (=> d!77801 (=> res!292024 e!287606)))

(assert (=> d!77801 (= res!292024 (= (select (arr!15197 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77801 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!287606)))

(declare-fun b!488930 () Bool)

(declare-fun e!287607 () Bool)

(assert (=> b!488930 (= e!287606 e!287607)))

(declare-fun res!292025 () Bool)

(assert (=> b!488930 (=> (not res!292025) (not e!287607))))

(assert (=> b!488930 (= res!292025 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15561 a!3235)))))

(declare-fun b!488931 () Bool)

(assert (=> b!488931 (= e!287607 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77801 (not res!292024)) b!488930))

(assert (= (and b!488930 res!292025) b!488931))

(assert (=> d!77801 m!468563))

(declare-fun m!468701 () Bool)

(assert (=> b!488931 m!468701))

(assert (=> b!488759 d!77801))

(declare-fun d!77803 () Bool)

(assert (=> d!77803 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44552 d!77803))

(declare-fun d!77807 () Bool)

(assert (=> d!77807 (= (array_inv!10971 a!3235) (bvsge (size!15561 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44552 d!77807))

(push 1)

