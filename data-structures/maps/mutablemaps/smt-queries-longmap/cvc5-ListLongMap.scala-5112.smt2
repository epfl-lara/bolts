; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69352 () Bool)

(assert start!69352)

(declare-fun b!808523 () Bool)

(declare-fun e!447597 () Bool)

(declare-fun e!447601 () Bool)

(assert (=> b!808523 (= e!447597 e!447601)))

(declare-fun res!552625 () Bool)

(assert (=> b!808523 (=> (not res!552625) (not e!447601))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43952 0))(
  ( (array!43953 (arr!21048 (Array (_ BitVec 32) (_ BitVec 64))) (size!21469 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43952)

(declare-datatypes ((SeekEntryResult!8646 0))(
  ( (MissingZero!8646 (index!36951 (_ BitVec 32))) (Found!8646 (index!36952 (_ BitVec 32))) (Intermediate!8646 (undefined!9458 Bool) (index!36953 (_ BitVec 32)) (x!67785 (_ BitVec 32))) (Undefined!8646) (MissingVacant!8646 (index!36954 (_ BitVec 32))) )
))
(declare-fun lt!362321 () SeekEntryResult!8646)

(declare-fun lt!362323 () SeekEntryResult!8646)

(assert (=> b!808523 (= res!552625 (and (= lt!362321 lt!362323) (= lt!362323 (Found!8646 j!153)) (not (= (select (arr!21048 a!3170) index!1236) (select (arr!21048 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43952 (_ BitVec 32)) SeekEntryResult!8646)

(assert (=> b!808523 (= lt!362323 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21048 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43952 (_ BitVec 32)) SeekEntryResult!8646)

(assert (=> b!808523 (= lt!362321 (seekEntryOrOpen!0 (select (arr!21048 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808524 () Bool)

(declare-fun res!552626 () Bool)

(declare-fun e!447600 () Bool)

(assert (=> b!808524 (=> (not res!552626) (not e!447600))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808524 (= res!552626 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21469 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21048 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21469 a!3170)) (= (select (arr!21048 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808525 () Bool)

(declare-fun res!552624 () Bool)

(declare-fun e!447599 () Bool)

(assert (=> b!808525 (=> (not res!552624) (not e!447599))))

(assert (=> b!808525 (= res!552624 (and (= (size!21469 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21469 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21469 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808526 () Bool)

(assert (=> b!808526 (= e!447599 e!447600)))

(declare-fun res!552620 () Bool)

(assert (=> b!808526 (=> (not res!552620) (not e!447600))))

(declare-fun lt!362318 () SeekEntryResult!8646)

(assert (=> b!808526 (= res!552620 (or (= lt!362318 (MissingZero!8646 i!1163)) (= lt!362318 (MissingVacant!8646 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!808526 (= lt!362318 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun lt!362322 () (_ BitVec 32))

(declare-fun b!808527 () Bool)

(assert (=> b!808527 (= e!447601 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (or (bvslt lt!362322 #b00000000000000000000000000000000) (bvsge lt!362322 (size!21469 a!3170)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808527 (= lt!362322 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808528 () Bool)

(declare-fun res!552619 () Bool)

(assert (=> b!808528 (=> (not res!552619) (not e!447599))))

(declare-fun arrayContainsKey!0 (array!43952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808528 (= res!552619 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808529 () Bool)

(declare-fun res!552623 () Bool)

(assert (=> b!808529 (=> (not res!552623) (not e!447599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808529 (= res!552623 (validKeyInArray!0 (select (arr!21048 a!3170) j!153)))))

(declare-fun b!808530 () Bool)

(declare-fun res!552628 () Bool)

(assert (=> b!808530 (=> (not res!552628) (not e!447599))))

(assert (=> b!808530 (= res!552628 (validKeyInArray!0 k!2044))))

(declare-fun b!808531 () Bool)

(declare-fun res!552621 () Bool)

(assert (=> b!808531 (=> (not res!552621) (not e!447600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43952 (_ BitVec 32)) Bool)

(assert (=> b!808531 (= res!552621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808532 () Bool)

(assert (=> b!808532 (= e!447600 e!447597)))

(declare-fun res!552627 () Bool)

(assert (=> b!808532 (=> (not res!552627) (not e!447597))))

(declare-fun lt!362319 () array!43952)

(declare-fun lt!362320 () (_ BitVec 64))

(assert (=> b!808532 (= res!552627 (= (seekEntryOrOpen!0 lt!362320 lt!362319 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362320 lt!362319 mask!3266)))))

(assert (=> b!808532 (= lt!362320 (select (store (arr!21048 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808532 (= lt!362319 (array!43953 (store (arr!21048 a!3170) i!1163 k!2044) (size!21469 a!3170)))))

(declare-fun res!552618 () Bool)

(assert (=> start!69352 (=> (not res!552618) (not e!447599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69352 (= res!552618 (validMask!0 mask!3266))))

(assert (=> start!69352 e!447599))

(assert (=> start!69352 true))

(declare-fun array_inv!16822 (array!43952) Bool)

(assert (=> start!69352 (array_inv!16822 a!3170)))

(declare-fun b!808533 () Bool)

(declare-fun res!552622 () Bool)

(assert (=> b!808533 (=> (not res!552622) (not e!447600))))

(declare-datatypes ((List!15064 0))(
  ( (Nil!15061) (Cons!15060 (h!16189 (_ BitVec 64)) (t!21387 List!15064)) )
))
(declare-fun arrayNoDuplicates!0 (array!43952 (_ BitVec 32) List!15064) Bool)

(assert (=> b!808533 (= res!552622 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15061))))

(assert (= (and start!69352 res!552618) b!808525))

(assert (= (and b!808525 res!552624) b!808529))

(assert (= (and b!808529 res!552623) b!808530))

(assert (= (and b!808530 res!552628) b!808528))

(assert (= (and b!808528 res!552619) b!808526))

(assert (= (and b!808526 res!552620) b!808531))

(assert (= (and b!808531 res!552621) b!808533))

(assert (= (and b!808533 res!552622) b!808524))

(assert (= (and b!808524 res!552626) b!808532))

(assert (= (and b!808532 res!552627) b!808523))

(assert (= (and b!808523 res!552625) b!808527))

(declare-fun m!750769 () Bool)

(assert (=> b!808530 m!750769))

(declare-fun m!750771 () Bool)

(assert (=> b!808532 m!750771))

(declare-fun m!750773 () Bool)

(assert (=> b!808532 m!750773))

(declare-fun m!750775 () Bool)

(assert (=> b!808532 m!750775))

(declare-fun m!750777 () Bool)

(assert (=> b!808532 m!750777))

(declare-fun m!750779 () Bool)

(assert (=> b!808526 m!750779))

(declare-fun m!750781 () Bool)

(assert (=> b!808529 m!750781))

(assert (=> b!808529 m!750781))

(declare-fun m!750783 () Bool)

(assert (=> b!808529 m!750783))

(declare-fun m!750785 () Bool)

(assert (=> b!808533 m!750785))

(declare-fun m!750787 () Bool)

(assert (=> start!69352 m!750787))

(declare-fun m!750789 () Bool)

(assert (=> start!69352 m!750789))

(declare-fun m!750791 () Bool)

(assert (=> b!808527 m!750791))

(declare-fun m!750793 () Bool)

(assert (=> b!808524 m!750793))

(declare-fun m!750795 () Bool)

(assert (=> b!808524 m!750795))

(declare-fun m!750797 () Bool)

(assert (=> b!808528 m!750797))

(declare-fun m!750799 () Bool)

(assert (=> b!808523 m!750799))

(assert (=> b!808523 m!750781))

(assert (=> b!808523 m!750781))

(declare-fun m!750801 () Bool)

(assert (=> b!808523 m!750801))

(assert (=> b!808523 m!750781))

(declare-fun m!750803 () Bool)

(assert (=> b!808523 m!750803))

(declare-fun m!750805 () Bool)

(assert (=> b!808531 m!750805))

(push 1)

(assert (not b!808529))

(assert (not b!808531))

(assert (not b!808532))

(assert (not b!808528))

(assert (not b!808526))

(assert (not b!808533))

(assert (not start!69352))

(assert (not b!808527))

(assert (not b!808523))

(assert (not b!808530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!808641 () Bool)

(declare-fun e!447661 () Bool)

(declare-fun call!35406 () Bool)

(assert (=> b!808641 (= e!447661 call!35406)))

(declare-fun b!808642 () Bool)

(declare-fun e!447660 () Bool)

(declare-fun contains!4129 (List!15064 (_ BitVec 64)) Bool)

(assert (=> b!808642 (= e!447660 (contains!4129 Nil!15061 (select (arr!21048 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35403 () Bool)

(declare-fun c!88377 () Bool)

(assert (=> bm!35403 (= call!35406 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88377 (Cons!15060 (select (arr!21048 a!3170) #b00000000000000000000000000000000) Nil!15061) Nil!15061)))))

(declare-fun b!808643 () Bool)

(assert (=> b!808643 (= e!447661 call!35406)))

(declare-fun b!808644 () Bool)

(declare-fun e!447659 () Bool)

(declare-fun e!447658 () Bool)

(assert (=> b!808644 (= e!447659 e!447658)))

(declare-fun res!552709 () Bool)

(assert (=> b!808644 (=> (not res!552709) (not e!447658))))

(assert (=> b!808644 (= res!552709 (not e!447660))))

(declare-fun res!552708 () Bool)

(assert (=> b!808644 (=> (not res!552708) (not e!447660))))

(assert (=> b!808644 (= res!552708 (validKeyInArray!0 (select (arr!21048 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103751 () Bool)

(declare-fun res!552707 () Bool)

(assert (=> d!103751 (=> res!552707 e!447659)))

(assert (=> d!103751 (= res!552707 (bvsge #b00000000000000000000000000000000 (size!21469 a!3170)))))

(assert (=> d!103751 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15061) e!447659)))

(declare-fun b!808640 () Bool)

(assert (=> b!808640 (= e!447658 e!447661)))

(assert (=> b!808640 (= c!88377 (validKeyInArray!0 (select (arr!21048 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103751 (not res!552707)) b!808644))

(assert (= (and b!808644 res!552708) b!808642))

(assert (= (and b!808644 res!552709) b!808640))

(assert (= (and b!808640 c!88377) b!808641))

(assert (= (and b!808640 (not c!88377)) b!808643))

(assert (= (or b!808641 b!808643) bm!35403))

(declare-fun m!750911 () Bool)

(assert (=> b!808642 m!750911))

(assert (=> b!808642 m!750911))

(declare-fun m!750913 () Bool)

(assert (=> b!808642 m!750913))

(assert (=> bm!35403 m!750911))

(declare-fun m!750915 () Bool)

(assert (=> bm!35403 m!750915))

(assert (=> b!808644 m!750911))

(assert (=> b!808644 m!750911))

(declare-fun m!750917 () Bool)

(assert (=> b!808644 m!750917))

(assert (=> b!808640 m!750911))

(assert (=> b!808640 m!750911))

(assert (=> b!808640 m!750917))

(assert (=> b!808533 d!103751))

(declare-fun d!103755 () Bool)

(declare-fun res!552714 () Bool)

(declare-fun e!447672 () Bool)

(assert (=> d!103755 (=> res!552714 e!447672)))

(assert (=> d!103755 (= res!552714 (= (select (arr!21048 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103755 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!447672)))

(declare-fun b!808661 () Bool)

(declare-fun e!447673 () Bool)

(assert (=> b!808661 (= e!447672 e!447673)))

(declare-fun res!552715 () Bool)

(assert (=> b!808661 (=> (not res!552715) (not e!447673))))

(assert (=> b!808661 (= res!552715 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21469 a!3170)))))

(declare-fun b!808662 () Bool)

(assert (=> b!808662 (= e!447673 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103755 (not res!552714)) b!808661))

(assert (= (and b!808661 res!552715) b!808662))

(assert (=> d!103755 m!750911))

(declare-fun m!750919 () Bool)

(assert (=> b!808662 m!750919))

(assert (=> b!808528 d!103755))

(declare-fun d!103757 () Bool)

(declare-fun lt!362387 () (_ BitVec 32))

(assert (=> d!103757 (and (bvsge lt!362387 #b00000000000000000000000000000000) (bvslt lt!362387 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103757 (= lt!362387 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103757 (validMask!0 mask!3266)))

(assert (=> d!103757 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362387)))

(declare-fun bs!22394 () Bool)

(assert (= bs!22394 d!103757))

(declare-fun m!750921 () Bool)

(assert (=> bs!22394 m!750921))

(assert (=> bs!22394 m!750787))

(assert (=> b!808527 d!103757))

(declare-fun b!808687 () Bool)

(declare-fun e!447687 () SeekEntryResult!8646)

(declare-fun lt!362399 () SeekEntryResult!8646)

(assert (=> b!808687 (= e!447687 (seekKeyOrZeroReturnVacant!0 (x!67785 lt!362399) (index!36953 lt!362399) (index!36953 lt!362399) lt!362320 lt!362319 mask!3266))))

(declare-fun b!808688 () Bool)

(declare-fun e!447686 () SeekEntryResult!8646)

(assert (=> b!808688 (= e!447686 (Found!8646 (index!36953 lt!362399)))))

(declare-fun b!808689 () Bool)

(declare-fun e!447688 () SeekEntryResult!8646)

(assert (=> b!808689 (= e!447688 e!447686)))

(declare-fun lt!362401 () (_ BitVec 64))

(assert (=> b!808689 (= lt!362401 (select (arr!21048 lt!362319) (index!36953 lt!362399)))))

(declare-fun c!88397 () Bool)

(assert (=> b!808689 (= c!88397 (= lt!362401 lt!362320))))

(declare-fun b!808691 () Bool)

(assert (=> b!808691 (= e!447688 Undefined!8646)))

(declare-fun b!808692 () Bool)

(declare-fun c!88398 () Bool)

(assert (=> b!808692 (= c!88398 (= lt!362401 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808692 (= e!447686 e!447687)))

(declare-fun d!103759 () Bool)

(declare-fun lt!362400 () SeekEntryResult!8646)

(assert (=> d!103759 (and (or (is-Undefined!8646 lt!362400) (not (is-Found!8646 lt!362400)) (and (bvsge (index!36952 lt!362400) #b00000000000000000000000000000000) (bvslt (index!36952 lt!362400) (size!21469 lt!362319)))) (or (is-Undefined!8646 lt!362400) (is-Found!8646 lt!362400) (not (is-MissingZero!8646 lt!362400)) (and (bvsge (index!36951 lt!362400) #b00000000000000000000000000000000) (bvslt (index!36951 lt!362400) (size!21469 lt!362319)))) (or (is-Undefined!8646 lt!362400) (is-Found!8646 lt!362400) (is-MissingZero!8646 lt!362400) (not (is-MissingVacant!8646 lt!362400)) (and (bvsge (index!36954 lt!362400) #b00000000000000000000000000000000) (bvslt (index!36954 lt!362400) (size!21469 lt!362319)))) (or (is-Undefined!8646 lt!362400) (ite (is-Found!8646 lt!362400) (= (select (arr!21048 lt!362319) (index!36952 lt!362400)) lt!362320) (ite (is-MissingZero!8646 lt!362400) (= (select (arr!21048 lt!362319) (index!36951 lt!362400)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8646 lt!362400) (= (select (arr!21048 lt!362319) (index!36954 lt!362400)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103759 (= lt!362400 e!447688)))

(declare-fun c!88396 () Bool)

(assert (=> d!103759 (= c!88396 (and (is-Intermediate!8646 lt!362399) (undefined!9458 lt!362399)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43952 (_ BitVec 32)) SeekEntryResult!8646)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103759 (= lt!362399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362320 mask!3266) lt!362320 lt!362319 mask!3266))))

(assert (=> d!103759 (validMask!0 mask!3266)))

(assert (=> d!103759 (= (seekEntryOrOpen!0 lt!362320 lt!362319 mask!3266) lt!362400)))

(declare-fun b!808690 () Bool)

(assert (=> b!808690 (= e!447687 (MissingZero!8646 (index!36953 lt!362399)))))

(assert (= (and d!103759 c!88396) b!808691))

(assert (= (and d!103759 (not c!88396)) b!808689))

(assert (= (and b!808689 c!88397) b!808688))

(assert (= (and b!808689 (not c!88397)) b!808692))

(assert (= (and b!808692 c!88398) b!808690))

(assert (= (and b!808692 (not c!88398)) b!808687))

(declare-fun m!750943 () Bool)

(assert (=> b!808687 m!750943))

(declare-fun m!750945 () Bool)

(assert (=> b!808689 m!750945))

(declare-fun m!750947 () Bool)

(assert (=> d!103759 m!750947))

(declare-fun m!750949 () Bool)

(assert (=> d!103759 m!750949))

(assert (=> d!103759 m!750947))

(declare-fun m!750951 () Bool)

(assert (=> d!103759 m!750951))

(declare-fun m!750953 () Bool)

(assert (=> d!103759 m!750953))

(assert (=> d!103759 m!750787))

(declare-fun m!750955 () Bool)

(assert (=> d!103759 m!750955))

(assert (=> b!808532 d!103759))

(declare-fun b!808741 () Bool)

(declare-fun e!447713 () SeekEntryResult!8646)

(assert (=> b!808741 (= e!447713 Undefined!8646)))

(declare-fun b!808742 () Bool)

(declare-fun e!447715 () SeekEntryResult!8646)

(assert (=> b!808742 (= e!447715 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362320 lt!362319 mask!3266))))

(declare-fun b!808743 () Bool)

(declare-fun e!447714 () SeekEntryResult!8646)

(assert (=> b!808743 (= e!447714 (Found!8646 index!1236))))

(declare-fun b!808744 () Bool)

(assert (=> b!808744 (= e!447713 e!447714)))

(declare-fun c!88425 () Bool)

(declare-fun lt!362422 () (_ BitVec 64))

(assert (=> b!808744 (= c!88425 (= lt!362422 lt!362320))))

(declare-fun d!103771 () Bool)

(declare-fun lt!362421 () SeekEntryResult!8646)

(assert (=> d!103771 (and (or (is-Undefined!8646 lt!362421) (not (is-Found!8646 lt!362421)) (and (bvsge (index!36952 lt!362421) #b00000000000000000000000000000000) (bvslt (index!36952 lt!362421) (size!21469 lt!362319)))) (or (is-Undefined!8646 lt!362421) (is-Found!8646 lt!362421) (not (is-MissingVacant!8646 lt!362421)) (not (= (index!36954 lt!362421) vacantAfter!23)) (and (bvsge (index!36954 lt!362421) #b00000000000000000000000000000000) (bvslt (index!36954 lt!362421) (size!21469 lt!362319)))) (or (is-Undefined!8646 lt!362421) (ite (is-Found!8646 lt!362421) (= (select (arr!21048 lt!362319) (index!36952 lt!362421)) lt!362320) (and (is-MissingVacant!8646 lt!362421) (= (index!36954 lt!362421) vacantAfter!23) (= (select (arr!21048 lt!362319) (index!36954 lt!362421)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103771 (= lt!362421 e!447713)))

(declare-fun c!88423 () Bool)

(assert (=> d!103771 (= c!88423 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103771 (= lt!362422 (select (arr!21048 lt!362319) index!1236))))

(assert (=> d!103771 (validMask!0 mask!3266)))

(assert (=> d!103771 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362320 lt!362319 mask!3266) lt!362421)))

(declare-fun b!808745 () Bool)

(assert (=> b!808745 (= e!447715 (MissingVacant!8646 vacantAfter!23))))

(declare-fun b!808746 () Bool)

(declare-fun c!88424 () Bool)

(assert (=> b!808746 (= c!88424 (= lt!362422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808746 (= e!447714 e!447715)))

(assert (= (and d!103771 c!88423) b!808741))

(assert (= (and d!103771 (not c!88423)) b!808744))

(assert (= (and b!808744 c!88425) b!808743))

(assert (= (and b!808744 (not c!88425)) b!808746))

(assert (= (and b!808746 c!88424) b!808745))

(assert (= (and b!808746 (not c!88424)) b!808742))

(assert (=> b!808742 m!750791))

(assert (=> b!808742 m!750791))

(declare-fun m!750979 () Bool)

(assert (=> b!808742 m!750979))

(declare-fun m!750981 () Bool)

(assert (=> d!103771 m!750981))

(declare-fun m!750983 () Bool)

(assert (=> d!103771 m!750983))

(declare-fun m!750985 () Bool)

(assert (=> d!103771 m!750985))

(assert (=> d!103771 m!750787))

(assert (=> b!808532 d!103771))

(declare-fun b!808788 () Bool)

(declare-fun e!447748 () Bool)

(declare-fun e!447746 () Bool)

(assert (=> b!808788 (= e!447748 e!447746)))

(declare-fun lt!362436 () (_ BitVec 64))

(assert (=> b!808788 (= lt!362436 (select (arr!21048 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27600 0))(
  ( (Unit!27601) )
))
(declare-fun lt!362434 () Unit!27600)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43952 (_ BitVec 64) (_ BitVec 32)) Unit!27600)

(assert (=> b!808788 (= lt!362434 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362436 #b00000000000000000000000000000000))))

(assert (=> b!808788 (arrayContainsKey!0 a!3170 lt!362436 #b00000000000000000000000000000000)))

(declare-fun lt!362435 () Unit!27600)

(assert (=> b!808788 (= lt!362435 lt!362434)))

(declare-fun res!552736 () Bool)

(assert (=> b!808788 (= res!552736 (= (seekEntryOrOpen!0 (select (arr!21048 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8646 #b00000000000000000000000000000000)))))

(assert (=> b!808788 (=> (not res!552736) (not e!447746))))

(declare-fun b!808789 () Bool)

(declare-fun e!447747 () Bool)

(assert (=> b!808789 (= e!447747 e!447748)))

(declare-fun c!88437 () Bool)

(assert (=> b!808789 (= c!88437 (validKeyInArray!0 (select (arr!21048 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103777 () Bool)

(declare-fun res!552735 () Bool)

(assert (=> d!103777 (=> res!552735 e!447747)))

(assert (=> d!103777 (= res!552735 (bvsge #b00000000000000000000000000000000 (size!21469 a!3170)))))

(assert (=> d!103777 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!447747)))

(declare-fun bm!35409 () Bool)

(declare-fun call!35412 () Bool)

(assert (=> bm!35409 (= call!35412 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!808790 () Bool)

(assert (=> b!808790 (= e!447748 call!35412)))

(declare-fun b!808791 () Bool)

(assert (=> b!808791 (= e!447746 call!35412)))

(assert (= (and d!103777 (not res!552735)) b!808789))

(assert (= (and b!808789 c!88437) b!808788))

(assert (= (and b!808789 (not c!88437)) b!808790))

(assert (= (and b!808788 res!552736) b!808791))

(assert (= (or b!808791 b!808790) bm!35409))

(assert (=> b!808788 m!750911))

(declare-fun m!751011 () Bool)

(assert (=> b!808788 m!751011))

(declare-fun m!751015 () Bool)

(assert (=> b!808788 m!751015))

(assert (=> b!808788 m!750911))

(declare-fun m!751017 () Bool)

(assert (=> b!808788 m!751017))

(assert (=> b!808789 m!750911))

(assert (=> b!808789 m!750911))

(assert (=> b!808789 m!750917))

(declare-fun m!751021 () Bool)

(assert (=> bm!35409 m!751021))

(assert (=> b!808531 d!103777))

(declare-fun b!808792 () Bool)

(declare-fun lt!362437 () SeekEntryResult!8646)

(declare-fun e!447750 () SeekEntryResult!8646)

(assert (=> b!808792 (= e!447750 (seekKeyOrZeroReturnVacant!0 (x!67785 lt!362437) (index!36953 lt!362437) (index!36953 lt!362437) k!2044 a!3170 mask!3266))))

(declare-fun b!808793 () Bool)

(declare-fun e!447749 () SeekEntryResult!8646)

(assert (=> b!808793 (= e!447749 (Found!8646 (index!36953 lt!362437)))))

(declare-fun b!808794 () Bool)

(declare-fun e!447751 () SeekEntryResult!8646)

(assert (=> b!808794 (= e!447751 e!447749)))

(declare-fun lt!362439 () (_ BitVec 64))

(assert (=> b!808794 (= lt!362439 (select (arr!21048 a!3170) (index!36953 lt!362437)))))

(declare-fun c!88439 () Bool)

(assert (=> b!808794 (= c!88439 (= lt!362439 k!2044))))

(declare-fun b!808796 () Bool)

(assert (=> b!808796 (= e!447751 Undefined!8646)))

(declare-fun b!808797 () Bool)

(declare-fun c!88440 () Bool)

(assert (=> b!808797 (= c!88440 (= lt!362439 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808797 (= e!447749 e!447750)))

(declare-fun d!103789 () Bool)

(declare-fun lt!362438 () SeekEntryResult!8646)

(assert (=> d!103789 (and (or (is-Undefined!8646 lt!362438) (not (is-Found!8646 lt!362438)) (and (bvsge (index!36952 lt!362438) #b00000000000000000000000000000000) (bvslt (index!36952 lt!362438) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362438) (is-Found!8646 lt!362438) (not (is-MissingZero!8646 lt!362438)) (and (bvsge (index!36951 lt!362438) #b00000000000000000000000000000000) (bvslt (index!36951 lt!362438) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362438) (is-Found!8646 lt!362438) (is-MissingZero!8646 lt!362438) (not (is-MissingVacant!8646 lt!362438)) (and (bvsge (index!36954 lt!362438) #b00000000000000000000000000000000) (bvslt (index!36954 lt!362438) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362438) (ite (is-Found!8646 lt!362438) (= (select (arr!21048 a!3170) (index!36952 lt!362438)) k!2044) (ite (is-MissingZero!8646 lt!362438) (= (select (arr!21048 a!3170) (index!36951 lt!362438)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8646 lt!362438) (= (select (arr!21048 a!3170) (index!36954 lt!362438)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103789 (= lt!362438 e!447751)))

(declare-fun c!88438 () Bool)

(assert (=> d!103789 (= c!88438 (and (is-Intermediate!8646 lt!362437) (undefined!9458 lt!362437)))))

(assert (=> d!103789 (= lt!362437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103789 (validMask!0 mask!3266)))

(assert (=> d!103789 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!362438)))

(declare-fun b!808795 () Bool)

(assert (=> b!808795 (= e!447750 (MissingZero!8646 (index!36953 lt!362437)))))

(assert (= (and d!103789 c!88438) b!808796))

(assert (= (and d!103789 (not c!88438)) b!808794))

(assert (= (and b!808794 c!88439) b!808793))

(assert (= (and b!808794 (not c!88439)) b!808797))

(assert (= (and b!808797 c!88440) b!808795))

(assert (= (and b!808797 (not c!88440)) b!808792))

(declare-fun m!751023 () Bool)

(assert (=> b!808792 m!751023))

(declare-fun m!751025 () Bool)

(assert (=> b!808794 m!751025))

(declare-fun m!751027 () Bool)

(assert (=> d!103789 m!751027))

(declare-fun m!751029 () Bool)

(assert (=> d!103789 m!751029))

(assert (=> d!103789 m!751027))

(declare-fun m!751031 () Bool)

(assert (=> d!103789 m!751031))

(declare-fun m!751033 () Bool)

(assert (=> d!103789 m!751033))

(assert (=> d!103789 m!750787))

(declare-fun m!751035 () Bool)

(assert (=> d!103789 m!751035))

(assert (=> b!808526 d!103789))

(declare-fun d!103791 () Bool)

(assert (=> d!103791 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808530 d!103791))

(declare-fun d!103793 () Bool)

(assert (=> d!103793 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69352 d!103793))

(declare-fun d!103797 () Bool)

(assert (=> d!103797 (= (array_inv!16822 a!3170) (bvsge (size!21469 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69352 d!103797))

(declare-fun d!103801 () Bool)

(assert (=> d!103801 (= (validKeyInArray!0 (select (arr!21048 a!3170) j!153)) (and (not (= (select (arr!21048 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21048 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808529 d!103801))

(declare-fun b!808810 () Bool)

(declare-fun e!447761 () SeekEntryResult!8646)

(assert (=> b!808810 (= e!447761 Undefined!8646)))

(declare-fun e!447763 () SeekEntryResult!8646)

(declare-fun b!808811 () Bool)

(assert (=> b!808811 (= e!447763 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21048 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808812 () Bool)

(declare-fun e!447762 () SeekEntryResult!8646)

(assert (=> b!808812 (= e!447762 (Found!8646 index!1236))))

(declare-fun b!808813 () Bool)

(assert (=> b!808813 (= e!447761 e!447762)))

(declare-fun c!88446 () Bool)

(declare-fun lt!362444 () (_ BitVec 64))

(assert (=> b!808813 (= c!88446 (= lt!362444 (select (arr!21048 a!3170) j!153)))))

(declare-fun lt!362443 () SeekEntryResult!8646)

(declare-fun d!103803 () Bool)

(assert (=> d!103803 (and (or (is-Undefined!8646 lt!362443) (not (is-Found!8646 lt!362443)) (and (bvsge (index!36952 lt!362443) #b00000000000000000000000000000000) (bvslt (index!36952 lt!362443) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362443) (is-Found!8646 lt!362443) (not (is-MissingVacant!8646 lt!362443)) (not (= (index!36954 lt!362443) vacantBefore!23)) (and (bvsge (index!36954 lt!362443) #b00000000000000000000000000000000) (bvslt (index!36954 lt!362443) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362443) (ite (is-Found!8646 lt!362443) (= (select (arr!21048 a!3170) (index!36952 lt!362443)) (select (arr!21048 a!3170) j!153)) (and (is-MissingVacant!8646 lt!362443) (= (index!36954 lt!362443) vacantBefore!23) (= (select (arr!21048 a!3170) (index!36954 lt!362443)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103803 (= lt!362443 e!447761)))

(declare-fun c!88444 () Bool)

(assert (=> d!103803 (= c!88444 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103803 (= lt!362444 (select (arr!21048 a!3170) index!1236))))

(assert (=> d!103803 (validMask!0 mask!3266)))

(assert (=> d!103803 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21048 a!3170) j!153) a!3170 mask!3266) lt!362443)))

(declare-fun b!808814 () Bool)

(assert (=> b!808814 (= e!447763 (MissingVacant!8646 vacantBefore!23))))

(declare-fun b!808815 () Bool)

(declare-fun c!88445 () Bool)

(assert (=> b!808815 (= c!88445 (= lt!362444 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808815 (= e!447762 e!447763)))

(assert (= (and d!103803 c!88444) b!808810))

(assert (= (and d!103803 (not c!88444)) b!808813))

(assert (= (and b!808813 c!88446) b!808812))

(assert (= (and b!808813 (not c!88446)) b!808815))

(assert (= (and b!808815 c!88445) b!808814))

(assert (= (and b!808815 (not c!88445)) b!808811))

(assert (=> b!808811 m!750791))

(assert (=> b!808811 m!750791))

(assert (=> b!808811 m!750781))

(declare-fun m!751041 () Bool)

(assert (=> b!808811 m!751041))

(declare-fun m!751047 () Bool)

(assert (=> d!103803 m!751047))

(declare-fun m!751049 () Bool)

(assert (=> d!103803 m!751049))

(assert (=> d!103803 m!750799))

(assert (=> d!103803 m!750787))

(assert (=> b!808523 d!103803))

(declare-fun e!447765 () SeekEntryResult!8646)

(declare-fun lt!362445 () SeekEntryResult!8646)

(declare-fun b!808816 () Bool)

(assert (=> b!808816 (= e!447765 (seekKeyOrZeroReturnVacant!0 (x!67785 lt!362445) (index!36953 lt!362445) (index!36953 lt!362445) (select (arr!21048 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808817 () Bool)

(declare-fun e!447764 () SeekEntryResult!8646)

(assert (=> b!808817 (= e!447764 (Found!8646 (index!36953 lt!362445)))))

(declare-fun b!808818 () Bool)

(declare-fun e!447766 () SeekEntryResult!8646)

(assert (=> b!808818 (= e!447766 e!447764)))

(declare-fun lt!362447 () (_ BitVec 64))

(assert (=> b!808818 (= lt!362447 (select (arr!21048 a!3170) (index!36953 lt!362445)))))

(declare-fun c!88448 () Bool)

(assert (=> b!808818 (= c!88448 (= lt!362447 (select (arr!21048 a!3170) j!153)))))

(declare-fun b!808820 () Bool)

(assert (=> b!808820 (= e!447766 Undefined!8646)))

(declare-fun b!808821 () Bool)

(declare-fun c!88449 () Bool)

(assert (=> b!808821 (= c!88449 (= lt!362447 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808821 (= e!447764 e!447765)))

(declare-fun d!103805 () Bool)

(declare-fun lt!362446 () SeekEntryResult!8646)

(assert (=> d!103805 (and (or (is-Undefined!8646 lt!362446) (not (is-Found!8646 lt!362446)) (and (bvsge (index!36952 lt!362446) #b00000000000000000000000000000000) (bvslt (index!36952 lt!362446) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362446) (is-Found!8646 lt!362446) (not (is-MissingZero!8646 lt!362446)) (and (bvsge (index!36951 lt!362446) #b00000000000000000000000000000000) (bvslt (index!36951 lt!362446) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362446) (is-Found!8646 lt!362446) (is-MissingZero!8646 lt!362446) (not (is-MissingVacant!8646 lt!362446)) (and (bvsge (index!36954 lt!362446) #b00000000000000000000000000000000) (bvslt (index!36954 lt!362446) (size!21469 a!3170)))) (or (is-Undefined!8646 lt!362446) (ite (is-Found!8646 lt!362446) (= (select (arr!21048 a!3170) (index!36952 lt!362446)) (select (arr!21048 a!3170) j!153)) (ite (is-MissingZero!8646 lt!362446) (= (select (arr!21048 a!3170) (index!36951 lt!362446)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8646 lt!362446) (= (select (arr!21048 a!3170) (index!36954 lt!362446)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103805 (= lt!362446 e!447766)))

(declare-fun c!88447 () Bool)

(assert (=> d!103805 (= c!88447 (and (is-Intermediate!8646 lt!362445) (undefined!9458 lt!362445)))))

(assert (=> d!103805 (= lt!362445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21048 a!3170) j!153) mask!3266) (select (arr!21048 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103805 (validMask!0 mask!3266)))

(assert (=> d!103805 (= (seekEntryOrOpen!0 (select (arr!21048 a!3170) j!153) a!3170 mask!3266) lt!362446)))

(declare-fun b!808819 () Bool)

(assert (=> b!808819 (= e!447765 (MissingZero!8646 (index!36953 lt!362445)))))

(assert (= (and d!103805 c!88447) b!808820))

(assert (= (and d!103805 (not c!88447)) b!808818))

(assert (= (and b!808818 c!88448) b!808817))

(assert (= (and b!808818 (not c!88448)) b!808821))

(assert (= (and b!808821 c!88449) b!808819))

(assert (= (and b!808821 (not c!88449)) b!808816))

(assert (=> b!808816 m!750781))

(declare-fun m!751059 () Bool)

(assert (=> b!808816 m!751059))

(declare-fun m!751061 () Bool)

(assert (=> b!808818 m!751061))

(assert (=> d!103805 m!750781))

(declare-fun m!751063 () Bool)

(assert (=> d!103805 m!751063))

(declare-fun m!751065 () Bool)

(assert (=> d!103805 m!751065))

(assert (=> d!103805 m!751063))

(assert (=> d!103805 m!750781))

(declare-fun m!751067 () Bool)

(assert (=> d!103805 m!751067))

(declare-fun m!751069 () Bool)

(assert (=> d!103805 m!751069))

(assert (=> d!103805 m!750787))

(declare-fun m!751071 () Bool)

(assert (=> d!103805 m!751071))

(assert (=> b!808523 d!103805))

(push 1)

(assert (not d!103803))

(assert (not b!808742))

(assert (not b!808816))

(assert (not d!103757))

(assert (not b!808792))

(assert (not b!808644))

(assert (not b!808788))

(assert (not b!808640))

(assert (not b!808662))

(assert (not d!103759))

(assert (not b!808687))

(assert (not d!103805))

(assert (not d!103789))

(assert (not b!808811))

(assert (not bm!35409))

(assert (not b!808789))

(assert (not d!103771))

(assert (not bm!35403))

(assert (not b!808642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

