; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69354 () Bool)

(assert start!69354)

(declare-fun b!808556 () Bool)

(declare-fun e!447615 () Bool)

(declare-fun e!447613 () Bool)

(assert (=> b!808556 (= e!447615 e!447613)))

(declare-fun res!552653 () Bool)

(assert (=> b!808556 (=> (not res!552653) (not e!447613))))

(declare-datatypes ((SeekEntryResult!8647 0))(
  ( (MissingZero!8647 (index!36955 (_ BitVec 32))) (Found!8647 (index!36956 (_ BitVec 32))) (Intermediate!8647 (undefined!9459 Bool) (index!36957 (_ BitVec 32)) (x!67786 (_ BitVec 32))) (Undefined!8647) (MissingVacant!8647 (index!36958 (_ BitVec 32))) )
))
(declare-fun lt!362338 () SeekEntryResult!8647)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43954 0))(
  ( (array!43955 (arr!21049 (Array (_ BitVec 32) (_ BitVec 64))) (size!21470 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43954)

(declare-fun lt!362339 () SeekEntryResult!8647)

(assert (=> b!808556 (= res!552653 (and (= lt!362338 lt!362339) (= lt!362339 (Found!8647 j!153)) (not (= (select (arr!21049 a!3170) index!1236) (select (arr!21049 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43954 (_ BitVec 32)) SeekEntryResult!8647)

(assert (=> b!808556 (= lt!362339 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21049 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43954 (_ BitVec 32)) SeekEntryResult!8647)

(assert (=> b!808556 (= lt!362338 (seekEntryOrOpen!0 (select (arr!21049 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808557 () Bool)

(declare-fun e!447616 () Bool)

(assert (=> b!808557 (= e!447616 e!447615)))

(declare-fun res!552661 () Bool)

(assert (=> b!808557 (=> (not res!552661) (not e!447615))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362336 () array!43954)

(declare-fun lt!362340 () (_ BitVec 64))

(assert (=> b!808557 (= res!552661 (= (seekEntryOrOpen!0 lt!362340 lt!362336 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362340 lt!362336 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808557 (= lt!362340 (select (store (arr!21049 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!808557 (= lt!362336 (array!43955 (store (arr!21049 a!3170) i!1163 k0!2044) (size!21470 a!3170)))))

(declare-fun b!808558 () Bool)

(declare-fun res!552654 () Bool)

(declare-fun e!447614 () Bool)

(assert (=> b!808558 (=> (not res!552654) (not e!447614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808558 (= res!552654 (validKeyInArray!0 (select (arr!21049 a!3170) j!153)))))

(declare-fun b!808559 () Bool)

(declare-fun res!552657 () Bool)

(assert (=> b!808559 (=> (not res!552657) (not e!447616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43954 (_ BitVec 32)) Bool)

(assert (=> b!808559 (= res!552657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!552658 () Bool)

(assert (=> start!69354 (=> (not res!552658) (not e!447614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69354 (= res!552658 (validMask!0 mask!3266))))

(assert (=> start!69354 e!447614))

(assert (=> start!69354 true))

(declare-fun array_inv!16823 (array!43954) Bool)

(assert (=> start!69354 (array_inv!16823 a!3170)))

(declare-fun b!808560 () Bool)

(declare-fun res!552651 () Bool)

(assert (=> b!808560 (=> (not res!552651) (not e!447614))))

(assert (=> b!808560 (= res!552651 (validKeyInArray!0 k0!2044))))

(declare-fun b!808561 () Bool)

(declare-fun res!552652 () Bool)

(assert (=> b!808561 (=> (not res!552652) (not e!447616))))

(declare-datatypes ((List!15065 0))(
  ( (Nil!15062) (Cons!15061 (h!16190 (_ BitVec 64)) (t!21388 List!15065)) )
))
(declare-fun arrayNoDuplicates!0 (array!43954 (_ BitVec 32) List!15065) Bool)

(assert (=> b!808561 (= res!552652 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15062))))

(declare-fun b!808562 () Bool)

(declare-fun res!552656 () Bool)

(assert (=> b!808562 (=> (not res!552656) (not e!447614))))

(assert (=> b!808562 (= res!552656 (and (= (size!21470 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21470 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21470 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808563 () Bool)

(declare-fun lt!362341 () (_ BitVec 32))

(assert (=> b!808563 (= e!447613 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (or (bvslt lt!362341 #b00000000000000000000000000000000) (bvsge lt!362341 (size!21470 a!3170)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808563 (= lt!362341 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808564 () Bool)

(assert (=> b!808564 (= e!447614 e!447616)))

(declare-fun res!552655 () Bool)

(assert (=> b!808564 (=> (not res!552655) (not e!447616))))

(declare-fun lt!362337 () SeekEntryResult!8647)

(assert (=> b!808564 (= res!552655 (or (= lt!362337 (MissingZero!8647 i!1163)) (= lt!362337 (MissingVacant!8647 i!1163))))))

(assert (=> b!808564 (= lt!362337 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!808565 () Bool)

(declare-fun res!552660 () Bool)

(assert (=> b!808565 (=> (not res!552660) (not e!447616))))

(assert (=> b!808565 (= res!552660 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21470 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21049 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21470 a!3170)) (= (select (arr!21049 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808566 () Bool)

(declare-fun res!552659 () Bool)

(assert (=> b!808566 (=> (not res!552659) (not e!447614))))

(declare-fun arrayContainsKey!0 (array!43954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808566 (= res!552659 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69354 res!552658) b!808562))

(assert (= (and b!808562 res!552656) b!808558))

(assert (= (and b!808558 res!552654) b!808560))

(assert (= (and b!808560 res!552651) b!808566))

(assert (= (and b!808566 res!552659) b!808564))

(assert (= (and b!808564 res!552655) b!808559))

(assert (= (and b!808559 res!552657) b!808561))

(assert (= (and b!808561 res!552652) b!808565))

(assert (= (and b!808565 res!552660) b!808557))

(assert (= (and b!808557 res!552661) b!808556))

(assert (= (and b!808556 res!552653) b!808563))

(declare-fun m!750807 () Bool)

(assert (=> b!808566 m!750807))

(declare-fun m!750809 () Bool)

(assert (=> b!808561 m!750809))

(declare-fun m!750811 () Bool)

(assert (=> b!808559 m!750811))

(declare-fun m!750813 () Bool)

(assert (=> b!808556 m!750813))

(declare-fun m!750815 () Bool)

(assert (=> b!808556 m!750815))

(assert (=> b!808556 m!750815))

(declare-fun m!750817 () Bool)

(assert (=> b!808556 m!750817))

(assert (=> b!808556 m!750815))

(declare-fun m!750819 () Bool)

(assert (=> b!808556 m!750819))

(declare-fun m!750821 () Bool)

(assert (=> b!808560 m!750821))

(assert (=> b!808558 m!750815))

(assert (=> b!808558 m!750815))

(declare-fun m!750823 () Bool)

(assert (=> b!808558 m!750823))

(declare-fun m!750825 () Bool)

(assert (=> b!808565 m!750825))

(declare-fun m!750827 () Bool)

(assert (=> b!808565 m!750827))

(declare-fun m!750829 () Bool)

(assert (=> b!808557 m!750829))

(declare-fun m!750831 () Bool)

(assert (=> b!808557 m!750831))

(declare-fun m!750833 () Bool)

(assert (=> b!808557 m!750833))

(declare-fun m!750835 () Bool)

(assert (=> b!808557 m!750835))

(declare-fun m!750837 () Bool)

(assert (=> b!808563 m!750837))

(declare-fun m!750839 () Bool)

(assert (=> b!808564 m!750839))

(declare-fun m!750841 () Bool)

(assert (=> start!69354 m!750841))

(declare-fun m!750843 () Bool)

(assert (=> start!69354 m!750843))

(check-sat (not b!808563) (not b!808557) (not b!808559) (not b!808566) (not b!808560) (not b!808564) (not b!808558) (not b!808561) (not b!808556) (not start!69354))
(check-sat)
(get-model)

(declare-fun d!103741 () Bool)

(assert (=> d!103741 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808560 d!103741))

(declare-fun bm!35400 () Bool)

(declare-fun call!35403 () Bool)

(assert (=> bm!35400 (= call!35403 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!808608 () Bool)

(declare-fun e!447638 () Bool)

(declare-fun e!447639 () Bool)

(assert (=> b!808608 (= e!447638 e!447639)))

(declare-fun lt!362367 () (_ BitVec 64))

(assert (=> b!808608 (= lt!362367 (select (arr!21049 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27598 0))(
  ( (Unit!27599) )
))
(declare-fun lt!362366 () Unit!27598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43954 (_ BitVec 64) (_ BitVec 32)) Unit!27598)

(assert (=> b!808608 (= lt!362366 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362367 #b00000000000000000000000000000000))))

(assert (=> b!808608 (arrayContainsKey!0 a!3170 lt!362367 #b00000000000000000000000000000000)))

(declare-fun lt!362368 () Unit!27598)

(assert (=> b!808608 (= lt!362368 lt!362366)))

(declare-fun res!552699 () Bool)

(assert (=> b!808608 (= res!552699 (= (seekEntryOrOpen!0 (select (arr!21049 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8647 #b00000000000000000000000000000000)))))

(assert (=> b!808608 (=> (not res!552699) (not e!447639))))

(declare-fun b!808609 () Bool)

(declare-fun e!447640 () Bool)

(assert (=> b!808609 (= e!447640 e!447638)))

(declare-fun c!88365 () Bool)

(assert (=> b!808609 (= c!88365 (validKeyInArray!0 (select (arr!21049 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!808610 () Bool)

(assert (=> b!808610 (= e!447639 call!35403)))

(declare-fun b!808611 () Bool)

(assert (=> b!808611 (= e!447638 call!35403)))

(declare-fun d!103743 () Bool)

(declare-fun res!552700 () Bool)

(assert (=> d!103743 (=> res!552700 e!447640)))

(assert (=> d!103743 (= res!552700 (bvsge #b00000000000000000000000000000000 (size!21470 a!3170)))))

(assert (=> d!103743 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!447640)))

(assert (= (and d!103743 (not res!552700)) b!808609))

(assert (= (and b!808609 c!88365) b!808608))

(assert (= (and b!808609 (not c!88365)) b!808611))

(assert (= (and b!808608 res!552699) b!808610))

(assert (= (or b!808610 b!808611) bm!35400))

(declare-fun m!750883 () Bool)

(assert (=> bm!35400 m!750883))

(declare-fun m!750885 () Bool)

(assert (=> b!808608 m!750885))

(declare-fun m!750887 () Bool)

(assert (=> b!808608 m!750887))

(declare-fun m!750889 () Bool)

(assert (=> b!808608 m!750889))

(assert (=> b!808608 m!750885))

(declare-fun m!750891 () Bool)

(assert (=> b!808608 m!750891))

(assert (=> b!808609 m!750885))

(assert (=> b!808609 m!750885))

(declare-fun m!750893 () Bool)

(assert (=> b!808609 m!750893))

(assert (=> b!808559 d!103743))

(declare-fun b!808624 () Bool)

(declare-fun c!88372 () Bool)

(declare-fun lt!362377 () (_ BitVec 64))

(assert (=> b!808624 (= c!88372 (= lt!362377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447648 () SeekEntryResult!8647)

(declare-fun e!447649 () SeekEntryResult!8647)

(assert (=> b!808624 (= e!447648 e!447649)))

(declare-fun b!808625 () Bool)

(declare-fun e!447647 () SeekEntryResult!8647)

(assert (=> b!808625 (= e!447647 e!447648)))

(declare-fun lt!362376 () SeekEntryResult!8647)

(assert (=> b!808625 (= lt!362377 (select (arr!21049 a!3170) (index!36957 lt!362376)))))

(declare-fun c!88373 () Bool)

(assert (=> b!808625 (= c!88373 (= lt!362377 k0!2044))))

(declare-fun b!808627 () Bool)

(assert (=> b!808627 (= e!447648 (Found!8647 (index!36957 lt!362376)))))

(declare-fun b!808628 () Bool)

(assert (=> b!808628 (= e!447649 (seekKeyOrZeroReturnVacant!0 (x!67786 lt!362376) (index!36957 lt!362376) (index!36957 lt!362376) k0!2044 a!3170 mask!3266))))

(declare-fun b!808629 () Bool)

(assert (=> b!808629 (= e!447649 (MissingZero!8647 (index!36957 lt!362376)))))

(declare-fun d!103745 () Bool)

(declare-fun lt!362375 () SeekEntryResult!8647)

(get-info :version)

(assert (=> d!103745 (and (or ((_ is Undefined!8647) lt!362375) (not ((_ is Found!8647) lt!362375)) (and (bvsge (index!36956 lt!362375) #b00000000000000000000000000000000) (bvslt (index!36956 lt!362375) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362375) ((_ is Found!8647) lt!362375) (not ((_ is MissingZero!8647) lt!362375)) (and (bvsge (index!36955 lt!362375) #b00000000000000000000000000000000) (bvslt (index!36955 lt!362375) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362375) ((_ is Found!8647) lt!362375) ((_ is MissingZero!8647) lt!362375) (not ((_ is MissingVacant!8647) lt!362375)) (and (bvsge (index!36958 lt!362375) #b00000000000000000000000000000000) (bvslt (index!36958 lt!362375) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362375) (ite ((_ is Found!8647) lt!362375) (= (select (arr!21049 a!3170) (index!36956 lt!362375)) k0!2044) (ite ((_ is MissingZero!8647) lt!362375) (= (select (arr!21049 a!3170) (index!36955 lt!362375)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8647) lt!362375) (= (select (arr!21049 a!3170) (index!36958 lt!362375)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103745 (= lt!362375 e!447647)))

(declare-fun c!88374 () Bool)

(assert (=> d!103745 (= c!88374 (and ((_ is Intermediate!8647) lt!362376) (undefined!9459 lt!362376)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43954 (_ BitVec 32)) SeekEntryResult!8647)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103745 (= lt!362376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103745 (validMask!0 mask!3266)))

(assert (=> d!103745 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!362375)))

(declare-fun b!808626 () Bool)

(assert (=> b!808626 (= e!447647 Undefined!8647)))

(assert (= (and d!103745 c!88374) b!808626))

(assert (= (and d!103745 (not c!88374)) b!808625))

(assert (= (and b!808625 c!88373) b!808627))

(assert (= (and b!808625 (not c!88373)) b!808624))

(assert (= (and b!808624 c!88372) b!808629))

(assert (= (and b!808624 (not c!88372)) b!808628))

(declare-fun m!750895 () Bool)

(assert (=> b!808625 m!750895))

(declare-fun m!750897 () Bool)

(assert (=> b!808628 m!750897))

(declare-fun m!750899 () Bool)

(assert (=> d!103745 m!750899))

(declare-fun m!750901 () Bool)

(assert (=> d!103745 m!750901))

(assert (=> d!103745 m!750899))

(declare-fun m!750903 () Bool)

(assert (=> d!103745 m!750903))

(declare-fun m!750905 () Bool)

(assert (=> d!103745 m!750905))

(assert (=> d!103745 m!750841))

(declare-fun m!750907 () Bool)

(assert (=> d!103745 m!750907))

(assert (=> b!808564 d!103745))

(declare-fun d!103749 () Bool)

(declare-fun lt!362380 () (_ BitVec 32))

(assert (=> d!103749 (and (bvsge lt!362380 #b00000000000000000000000000000000) (bvslt lt!362380 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103749 (= lt!362380 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103749 (validMask!0 mask!3266)))

(assert (=> d!103749 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362380)))

(declare-fun bs!22393 () Bool)

(assert (= bs!22393 d!103749))

(declare-fun m!750909 () Bool)

(assert (=> bs!22393 m!750909))

(assert (=> bs!22393 m!750841))

(assert (=> b!808563 d!103749))

(declare-fun d!103753 () Bool)

(assert (=> d!103753 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69354 d!103753))

(declare-fun d!103763 () Bool)

(assert (=> d!103763 (= (array_inv!16823 a!3170) (bvsge (size!21470 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69354 d!103763))

(declare-fun d!103765 () Bool)

(assert (=> d!103765 (= (validKeyInArray!0 (select (arr!21049 a!3170) j!153)) (and (not (= (select (arr!21049 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21049 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808558 d!103765))

(declare-fun b!808669 () Bool)

(declare-fun c!88387 () Bool)

(declare-fun lt!362392 () (_ BitVec 64))

(assert (=> b!808669 (= c!88387 (= lt!362392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447678 () SeekEntryResult!8647)

(declare-fun e!447679 () SeekEntryResult!8647)

(assert (=> b!808669 (= e!447678 e!447679)))

(declare-fun b!808670 () Bool)

(declare-fun e!447677 () SeekEntryResult!8647)

(assert (=> b!808670 (= e!447677 e!447678)))

(declare-fun lt!362391 () SeekEntryResult!8647)

(assert (=> b!808670 (= lt!362392 (select (arr!21049 lt!362336) (index!36957 lt!362391)))))

(declare-fun c!88388 () Bool)

(assert (=> b!808670 (= c!88388 (= lt!362392 lt!362340))))

(declare-fun b!808672 () Bool)

(assert (=> b!808672 (= e!447678 (Found!8647 (index!36957 lt!362391)))))

(declare-fun b!808673 () Bool)

(assert (=> b!808673 (= e!447679 (seekKeyOrZeroReturnVacant!0 (x!67786 lt!362391) (index!36957 lt!362391) (index!36957 lt!362391) lt!362340 lt!362336 mask!3266))))

(declare-fun b!808674 () Bool)

(assert (=> b!808674 (= e!447679 (MissingZero!8647 (index!36957 lt!362391)))))

(declare-fun d!103767 () Bool)

(declare-fun lt!362390 () SeekEntryResult!8647)

(assert (=> d!103767 (and (or ((_ is Undefined!8647) lt!362390) (not ((_ is Found!8647) lt!362390)) (and (bvsge (index!36956 lt!362390) #b00000000000000000000000000000000) (bvslt (index!36956 lt!362390) (size!21470 lt!362336)))) (or ((_ is Undefined!8647) lt!362390) ((_ is Found!8647) lt!362390) (not ((_ is MissingZero!8647) lt!362390)) (and (bvsge (index!36955 lt!362390) #b00000000000000000000000000000000) (bvslt (index!36955 lt!362390) (size!21470 lt!362336)))) (or ((_ is Undefined!8647) lt!362390) ((_ is Found!8647) lt!362390) ((_ is MissingZero!8647) lt!362390) (not ((_ is MissingVacant!8647) lt!362390)) (and (bvsge (index!36958 lt!362390) #b00000000000000000000000000000000) (bvslt (index!36958 lt!362390) (size!21470 lt!362336)))) (or ((_ is Undefined!8647) lt!362390) (ite ((_ is Found!8647) lt!362390) (= (select (arr!21049 lt!362336) (index!36956 lt!362390)) lt!362340) (ite ((_ is MissingZero!8647) lt!362390) (= (select (arr!21049 lt!362336) (index!36955 lt!362390)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8647) lt!362390) (= (select (arr!21049 lt!362336) (index!36958 lt!362390)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103767 (= lt!362390 e!447677)))

(declare-fun c!88389 () Bool)

(assert (=> d!103767 (= c!88389 (and ((_ is Intermediate!8647) lt!362391) (undefined!9459 lt!362391)))))

(assert (=> d!103767 (= lt!362391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362340 mask!3266) lt!362340 lt!362336 mask!3266))))

(assert (=> d!103767 (validMask!0 mask!3266)))

(assert (=> d!103767 (= (seekEntryOrOpen!0 lt!362340 lt!362336 mask!3266) lt!362390)))

(declare-fun b!808671 () Bool)

(assert (=> b!808671 (= e!447677 Undefined!8647)))

(assert (= (and d!103767 c!88389) b!808671))

(assert (= (and d!103767 (not c!88389)) b!808670))

(assert (= (and b!808670 c!88388) b!808672))

(assert (= (and b!808670 (not c!88388)) b!808669))

(assert (= (and b!808669 c!88387) b!808674))

(assert (= (and b!808669 (not c!88387)) b!808673))

(declare-fun m!750929 () Bool)

(assert (=> b!808670 m!750929))

(declare-fun m!750931 () Bool)

(assert (=> b!808673 m!750931))

(declare-fun m!750933 () Bool)

(assert (=> d!103767 m!750933))

(declare-fun m!750935 () Bool)

(assert (=> d!103767 m!750935))

(assert (=> d!103767 m!750933))

(declare-fun m!750937 () Bool)

(assert (=> d!103767 m!750937))

(declare-fun m!750939 () Bool)

(assert (=> d!103767 m!750939))

(assert (=> d!103767 m!750841))

(declare-fun m!750941 () Bool)

(assert (=> d!103767 m!750941))

(assert (=> b!808557 d!103767))

(declare-fun b!808717 () Bool)

(declare-fun e!447703 () SeekEntryResult!8647)

(assert (=> b!808717 (= e!447703 Undefined!8647)))

(declare-fun b!808718 () Bool)

(declare-fun e!447702 () SeekEntryResult!8647)

(assert (=> b!808718 (= e!447702 (Found!8647 index!1236))))

(declare-fun b!808719 () Bool)

(declare-fun e!447701 () SeekEntryResult!8647)

(assert (=> b!808719 (= e!447701 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362340 lt!362336 mask!3266))))

(declare-fun lt!362412 () SeekEntryResult!8647)

(declare-fun d!103769 () Bool)

(assert (=> d!103769 (and (or ((_ is Undefined!8647) lt!362412) (not ((_ is Found!8647) lt!362412)) (and (bvsge (index!36956 lt!362412) #b00000000000000000000000000000000) (bvslt (index!36956 lt!362412) (size!21470 lt!362336)))) (or ((_ is Undefined!8647) lt!362412) ((_ is Found!8647) lt!362412) (not ((_ is MissingVacant!8647) lt!362412)) (not (= (index!36958 lt!362412) vacantAfter!23)) (and (bvsge (index!36958 lt!362412) #b00000000000000000000000000000000) (bvslt (index!36958 lt!362412) (size!21470 lt!362336)))) (or ((_ is Undefined!8647) lt!362412) (ite ((_ is Found!8647) lt!362412) (= (select (arr!21049 lt!362336) (index!36956 lt!362412)) lt!362340) (and ((_ is MissingVacant!8647) lt!362412) (= (index!36958 lt!362412) vacantAfter!23) (= (select (arr!21049 lt!362336) (index!36958 lt!362412)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103769 (= lt!362412 e!447703)))

(declare-fun c!88411 () Bool)

(assert (=> d!103769 (= c!88411 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!362413 () (_ BitVec 64))

(assert (=> d!103769 (= lt!362413 (select (arr!21049 lt!362336) index!1236))))

(assert (=> d!103769 (validMask!0 mask!3266)))

(assert (=> d!103769 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362340 lt!362336 mask!3266) lt!362412)))

(declare-fun b!808720 () Bool)

(assert (=> b!808720 (= e!447701 (MissingVacant!8647 vacantAfter!23))))

(declare-fun b!808721 () Bool)

(assert (=> b!808721 (= e!447703 e!447702)))

(declare-fun c!88412 () Bool)

(assert (=> b!808721 (= c!88412 (= lt!362413 lt!362340))))

(declare-fun b!808722 () Bool)

(declare-fun c!88413 () Bool)

(assert (=> b!808722 (= c!88413 (= lt!362413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808722 (= e!447702 e!447701)))

(assert (= (and d!103769 c!88411) b!808717))

(assert (= (and d!103769 (not c!88411)) b!808721))

(assert (= (and b!808721 c!88412) b!808718))

(assert (= (and b!808721 (not c!88412)) b!808722))

(assert (= (and b!808722 c!88413) b!808720))

(assert (= (and b!808722 (not c!88413)) b!808719))

(assert (=> b!808719 m!750837))

(assert (=> b!808719 m!750837))

(declare-fun m!750957 () Bool)

(assert (=> b!808719 m!750957))

(declare-fun m!750959 () Bool)

(assert (=> d!103769 m!750959))

(declare-fun m!750961 () Bool)

(assert (=> d!103769 m!750961))

(declare-fun m!750963 () Bool)

(assert (=> d!103769 m!750963))

(assert (=> d!103769 m!750841))

(assert (=> b!808557 d!103769))

(declare-fun b!808761 () Bool)

(declare-fun e!447729 () Bool)

(declare-fun call!35409 () Bool)

(assert (=> b!808761 (= e!447729 call!35409)))

(declare-fun d!103773 () Bool)

(declare-fun res!552727 () Bool)

(declare-fun e!447728 () Bool)

(assert (=> d!103773 (=> res!552727 e!447728)))

(assert (=> d!103773 (= res!552727 (bvsge #b00000000000000000000000000000000 (size!21470 a!3170)))))

(assert (=> d!103773 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15062) e!447728)))

(declare-fun b!808762 () Bool)

(declare-fun e!447731 () Bool)

(declare-fun contains!4130 (List!15065 (_ BitVec 64)) Bool)

(assert (=> b!808762 (= e!447731 (contains!4130 Nil!15062 (select (arr!21049 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35406 () Bool)

(declare-fun c!88428 () Bool)

(assert (=> bm!35406 (= call!35409 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88428 (Cons!15061 (select (arr!21049 a!3170) #b00000000000000000000000000000000) Nil!15062) Nil!15062)))))

(declare-fun b!808763 () Bool)

(assert (=> b!808763 (= e!447729 call!35409)))

(declare-fun b!808764 () Bool)

(declare-fun e!447730 () Bool)

(assert (=> b!808764 (= e!447730 e!447729)))

(assert (=> b!808764 (= c!88428 (validKeyInArray!0 (select (arr!21049 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!808765 () Bool)

(assert (=> b!808765 (= e!447728 e!447730)))

(declare-fun res!552728 () Bool)

(assert (=> b!808765 (=> (not res!552728) (not e!447730))))

(assert (=> b!808765 (= res!552728 (not e!447731))))

(declare-fun res!552726 () Bool)

(assert (=> b!808765 (=> (not res!552726) (not e!447731))))

(assert (=> b!808765 (= res!552726 (validKeyInArray!0 (select (arr!21049 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103773 (not res!552727)) b!808765))

(assert (= (and b!808765 res!552726) b!808762))

(assert (= (and b!808765 res!552728) b!808764))

(assert (= (and b!808764 c!88428) b!808761))

(assert (= (and b!808764 (not c!88428)) b!808763))

(assert (= (or b!808761 b!808763) bm!35406))

(assert (=> b!808762 m!750885))

(assert (=> b!808762 m!750885))

(declare-fun m!750991 () Bool)

(assert (=> b!808762 m!750991))

(assert (=> bm!35406 m!750885))

(declare-fun m!750993 () Bool)

(assert (=> bm!35406 m!750993))

(assert (=> b!808764 m!750885))

(assert (=> b!808764 m!750885))

(assert (=> b!808764 m!750893))

(assert (=> b!808765 m!750885))

(assert (=> b!808765 m!750885))

(assert (=> b!808765 m!750893))

(assert (=> b!808561 d!103773))

(declare-fun b!808776 () Bool)

(declare-fun e!447742 () SeekEntryResult!8647)

(assert (=> b!808776 (= e!447742 Undefined!8647)))

(declare-fun b!808777 () Bool)

(declare-fun e!447741 () SeekEntryResult!8647)

(assert (=> b!808777 (= e!447741 (Found!8647 index!1236))))

(declare-fun b!808778 () Bool)

(declare-fun e!447740 () SeekEntryResult!8647)

(assert (=> b!808778 (= e!447740 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21049 a!3170) j!153) a!3170 mask!3266))))

(declare-fun d!103783 () Bool)

(declare-fun lt!362429 () SeekEntryResult!8647)

(assert (=> d!103783 (and (or ((_ is Undefined!8647) lt!362429) (not ((_ is Found!8647) lt!362429)) (and (bvsge (index!36956 lt!362429) #b00000000000000000000000000000000) (bvslt (index!36956 lt!362429) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362429) ((_ is Found!8647) lt!362429) (not ((_ is MissingVacant!8647) lt!362429)) (not (= (index!36958 lt!362429) vacantBefore!23)) (and (bvsge (index!36958 lt!362429) #b00000000000000000000000000000000) (bvslt (index!36958 lt!362429) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362429) (ite ((_ is Found!8647) lt!362429) (= (select (arr!21049 a!3170) (index!36956 lt!362429)) (select (arr!21049 a!3170) j!153)) (and ((_ is MissingVacant!8647) lt!362429) (= (index!36958 lt!362429) vacantBefore!23) (= (select (arr!21049 a!3170) (index!36958 lt!362429)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103783 (= lt!362429 e!447742)))

(declare-fun c!88431 () Bool)

(assert (=> d!103783 (= c!88431 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!362430 () (_ BitVec 64))

(assert (=> d!103783 (= lt!362430 (select (arr!21049 a!3170) index!1236))))

(assert (=> d!103783 (validMask!0 mask!3266)))

(assert (=> d!103783 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21049 a!3170) j!153) a!3170 mask!3266) lt!362429)))

(declare-fun b!808779 () Bool)

(assert (=> b!808779 (= e!447740 (MissingVacant!8647 vacantBefore!23))))

(declare-fun b!808780 () Bool)

(assert (=> b!808780 (= e!447742 e!447741)))

(declare-fun c!88432 () Bool)

(assert (=> b!808780 (= c!88432 (= lt!362430 (select (arr!21049 a!3170) j!153)))))

(declare-fun b!808781 () Bool)

(declare-fun c!88433 () Bool)

(assert (=> b!808781 (= c!88433 (= lt!362430 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808781 (= e!447741 e!447740)))

(assert (= (and d!103783 c!88431) b!808776))

(assert (= (and d!103783 (not c!88431)) b!808780))

(assert (= (and b!808780 c!88432) b!808777))

(assert (= (and b!808780 (not c!88432)) b!808781))

(assert (= (and b!808781 c!88433) b!808779))

(assert (= (and b!808781 (not c!88433)) b!808778))

(assert (=> b!808778 m!750837))

(assert (=> b!808778 m!750837))

(assert (=> b!808778 m!750815))

(declare-fun m!750995 () Bool)

(assert (=> b!808778 m!750995))

(declare-fun m!750997 () Bool)

(assert (=> d!103783 m!750997))

(declare-fun m!750999 () Bool)

(assert (=> d!103783 m!750999))

(assert (=> d!103783 m!750813))

(assert (=> d!103783 m!750841))

(assert (=> b!808556 d!103783))

(declare-fun b!808782 () Bool)

(declare-fun c!88434 () Bool)

(declare-fun lt!362433 () (_ BitVec 64))

(assert (=> b!808782 (= c!88434 (= lt!362433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447744 () SeekEntryResult!8647)

(declare-fun e!447745 () SeekEntryResult!8647)

(assert (=> b!808782 (= e!447744 e!447745)))

(declare-fun b!808783 () Bool)

(declare-fun e!447743 () SeekEntryResult!8647)

(assert (=> b!808783 (= e!447743 e!447744)))

(declare-fun lt!362432 () SeekEntryResult!8647)

(assert (=> b!808783 (= lt!362433 (select (arr!21049 a!3170) (index!36957 lt!362432)))))

(declare-fun c!88435 () Bool)

(assert (=> b!808783 (= c!88435 (= lt!362433 (select (arr!21049 a!3170) j!153)))))

(declare-fun b!808785 () Bool)

(assert (=> b!808785 (= e!447744 (Found!8647 (index!36957 lt!362432)))))

(declare-fun b!808786 () Bool)

(assert (=> b!808786 (= e!447745 (seekKeyOrZeroReturnVacant!0 (x!67786 lt!362432) (index!36957 lt!362432) (index!36957 lt!362432) (select (arr!21049 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808787 () Bool)

(assert (=> b!808787 (= e!447745 (MissingZero!8647 (index!36957 lt!362432)))))

(declare-fun d!103785 () Bool)

(declare-fun lt!362431 () SeekEntryResult!8647)

(assert (=> d!103785 (and (or ((_ is Undefined!8647) lt!362431) (not ((_ is Found!8647) lt!362431)) (and (bvsge (index!36956 lt!362431) #b00000000000000000000000000000000) (bvslt (index!36956 lt!362431) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362431) ((_ is Found!8647) lt!362431) (not ((_ is MissingZero!8647) lt!362431)) (and (bvsge (index!36955 lt!362431) #b00000000000000000000000000000000) (bvslt (index!36955 lt!362431) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362431) ((_ is Found!8647) lt!362431) ((_ is MissingZero!8647) lt!362431) (not ((_ is MissingVacant!8647) lt!362431)) (and (bvsge (index!36958 lt!362431) #b00000000000000000000000000000000) (bvslt (index!36958 lt!362431) (size!21470 a!3170)))) (or ((_ is Undefined!8647) lt!362431) (ite ((_ is Found!8647) lt!362431) (= (select (arr!21049 a!3170) (index!36956 lt!362431)) (select (arr!21049 a!3170) j!153)) (ite ((_ is MissingZero!8647) lt!362431) (= (select (arr!21049 a!3170) (index!36955 lt!362431)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8647) lt!362431) (= (select (arr!21049 a!3170) (index!36958 lt!362431)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103785 (= lt!362431 e!447743)))

(declare-fun c!88436 () Bool)

(assert (=> d!103785 (= c!88436 (and ((_ is Intermediate!8647) lt!362432) (undefined!9459 lt!362432)))))

(assert (=> d!103785 (= lt!362432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21049 a!3170) j!153) mask!3266) (select (arr!21049 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103785 (validMask!0 mask!3266)))

(assert (=> d!103785 (= (seekEntryOrOpen!0 (select (arr!21049 a!3170) j!153) a!3170 mask!3266) lt!362431)))

(declare-fun b!808784 () Bool)

(assert (=> b!808784 (= e!447743 Undefined!8647)))

(assert (= (and d!103785 c!88436) b!808784))

(assert (= (and d!103785 (not c!88436)) b!808783))

(assert (= (and b!808783 c!88435) b!808785))

(assert (= (and b!808783 (not c!88435)) b!808782))

(assert (= (and b!808782 c!88434) b!808787))

(assert (= (and b!808782 (not c!88434)) b!808786))

(declare-fun m!751001 () Bool)

(assert (=> b!808783 m!751001))

(assert (=> b!808786 m!750815))

(declare-fun m!751003 () Bool)

(assert (=> b!808786 m!751003))

(assert (=> d!103785 m!750815))

(declare-fun m!751005 () Bool)

(assert (=> d!103785 m!751005))

(declare-fun m!751007 () Bool)

(assert (=> d!103785 m!751007))

(assert (=> d!103785 m!751005))

(assert (=> d!103785 m!750815))

(declare-fun m!751009 () Bool)

(assert (=> d!103785 m!751009))

(declare-fun m!751013 () Bool)

(assert (=> d!103785 m!751013))

(assert (=> d!103785 m!750841))

(declare-fun m!751019 () Bool)

(assert (=> d!103785 m!751019))

(assert (=> b!808556 d!103785))

(declare-fun d!103787 () Bool)

(declare-fun res!552741 () Bool)

(declare-fun e!447756 () Bool)

(assert (=> d!103787 (=> res!552741 e!447756)))

(assert (=> d!103787 (= res!552741 (= (select (arr!21049 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103787 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!447756)))

(declare-fun b!808802 () Bool)

(declare-fun e!447757 () Bool)

(assert (=> b!808802 (= e!447756 e!447757)))

(declare-fun res!552742 () Bool)

(assert (=> b!808802 (=> (not res!552742) (not e!447757))))

(assert (=> b!808802 (= res!552742 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21470 a!3170)))))

(declare-fun b!808803 () Bool)

(assert (=> b!808803 (= e!447757 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103787 (not res!552741)) b!808802))

(assert (= (and b!808802 res!552742) b!808803))

(assert (=> d!103787 m!750885))

(declare-fun m!751037 () Bool)

(assert (=> b!808803 m!751037))

(assert (=> b!808566 d!103787))

(check-sat (not b!808719) (not b!808609) (not d!103749) (not b!808608) (not d!103783) (not b!808786) (not bm!35400) (not bm!35406) (not b!808778) (not d!103785) (not d!103767) (not b!808762) (not b!808764) (not b!808628) (not b!808765) (not b!808803) (not d!103745) (not d!103769) (not b!808673))
(check-sat)
