; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57200 () Bool)

(assert start!57200)

(declare-fun b!632824 () Bool)

(declare-fun e!361815 () Bool)

(declare-fun e!361814 () Bool)

(assert (=> b!632824 (= e!361815 e!361814)))

(declare-fun res!409363 () Bool)

(assert (=> b!632824 (=> res!409363 e!361814)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!292535 () (_ BitVec 64))

(declare-fun lt!292533 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38123 0))(
  ( (array!38124 (arr!18289 (Array (_ BitVec 32) (_ BitVec 64))) (size!18653 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38123)

(assert (=> b!632824 (= res!409363 (or (not (= (select (arr!18289 a!2986) j!136) lt!292535)) (not (= (select (arr!18289 a!2986) j!136) lt!292533)) (bvsge j!136 index!984)))))

(declare-fun b!632825 () Bool)

(declare-fun e!361809 () Bool)

(declare-fun e!361810 () Bool)

(assert (=> b!632825 (= e!361809 e!361810)))

(declare-fun res!409368 () Bool)

(assert (=> b!632825 (=> res!409368 e!361810)))

(assert (=> b!632825 (= res!409368 (or (not (= (select (arr!18289 a!2986) j!136) lt!292535)) (not (= (select (arr!18289 a!2986) j!136) lt!292533)) (bvsge j!136 index!984)))))

(assert (=> b!632825 e!361815))

(declare-fun res!409373 () Bool)

(assert (=> b!632825 (=> (not res!409373) (not e!361815))))

(assert (=> b!632825 (= res!409373 (= lt!292533 (select (arr!18289 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!632825 (= lt!292533 (select (store (arr!18289 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!632826 () Bool)

(declare-fun res!409376 () Bool)

(declare-fun e!361811 () Bool)

(assert (=> b!632826 (=> (not res!409376) (not e!361811))))

(declare-datatypes ((List!12383 0))(
  ( (Nil!12380) (Cons!12379 (h!13424 (_ BitVec 64)) (t!18619 List!12383)) )
))
(declare-fun arrayNoDuplicates!0 (array!38123 (_ BitVec 32) List!12383) Bool)

(assert (=> b!632826 (= res!409376 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12380))))

(declare-fun lt!292542 () array!38123)

(declare-fun b!632827 () Bool)

(declare-fun arrayContainsKey!0 (array!38123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632827 (= e!361810 (arrayContainsKey!0 lt!292542 (select (arr!18289 a!2986) j!136) index!984))))

(declare-fun b!632828 () Bool)

(declare-fun res!409369 () Bool)

(assert (=> b!632828 (=> (not res!409369) (not e!361811))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38123 (_ BitVec 32)) Bool)

(assert (=> b!632828 (= res!409369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632829 () Bool)

(declare-fun e!361817 () Bool)

(assert (=> b!632829 (= e!361811 e!361817)))

(declare-fun res!409364 () Bool)

(assert (=> b!632829 (=> (not res!409364) (not e!361817))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!632829 (= res!409364 (= (select (store (arr!18289 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632829 (= lt!292542 (array!38124 (store (arr!18289 a!2986) i!1108 k0!1786) (size!18653 a!2986)))))

(declare-fun b!632823 () Bool)

(declare-fun res!409367 () Bool)

(declare-fun e!361818 () Bool)

(assert (=> b!632823 (=> (not res!409367) (not e!361818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632823 (= res!409367 (validKeyInArray!0 k0!1786))))

(declare-fun res!409372 () Bool)

(assert (=> start!57200 (=> (not res!409372) (not e!361818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57200 (= res!409372 (validMask!0 mask!3053))))

(assert (=> start!57200 e!361818))

(assert (=> start!57200 true))

(declare-fun array_inv!14063 (array!38123) Bool)

(assert (=> start!57200 (array_inv!14063 a!2986)))

(declare-fun b!632830 () Bool)

(declare-fun res!409362 () Bool)

(assert (=> b!632830 (=> (not res!409362) (not e!361811))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!632830 (= res!409362 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18289 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632831 () Bool)

(declare-datatypes ((Unit!21302 0))(
  ( (Unit!21303) )
))
(declare-fun e!361812 () Unit!21302)

(declare-fun Unit!21304 () Unit!21302)

(assert (=> b!632831 (= e!361812 Unit!21304)))

(assert (=> b!632831 false))

(declare-fun b!632832 () Bool)

(declare-fun e!361819 () Bool)

(assert (=> b!632832 (= e!361819 (not e!361809))))

(declare-fun res!409374 () Bool)

(assert (=> b!632832 (=> res!409374 e!361809)))

(declare-datatypes ((SeekEntryResult!6736 0))(
  ( (MissingZero!6736 (index!29239 (_ BitVec 32))) (Found!6736 (index!29240 (_ BitVec 32))) (Intermediate!6736 (undefined!7548 Bool) (index!29241 (_ BitVec 32)) (x!58005 (_ BitVec 32))) (Undefined!6736) (MissingVacant!6736 (index!29242 (_ BitVec 32))) )
))
(declare-fun lt!292536 () SeekEntryResult!6736)

(assert (=> b!632832 (= res!409374 (not (= lt!292536 (Found!6736 index!984))))))

(declare-fun lt!292540 () Unit!21302)

(assert (=> b!632832 (= lt!292540 e!361812)))

(declare-fun c!72098 () Bool)

(assert (=> b!632832 (= c!72098 (= lt!292536 Undefined!6736))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38123 (_ BitVec 32)) SeekEntryResult!6736)

(assert (=> b!632832 (= lt!292536 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292535 lt!292542 mask!3053))))

(declare-fun e!361816 () Bool)

(assert (=> b!632832 e!361816))

(declare-fun res!409371 () Bool)

(assert (=> b!632832 (=> (not res!409371) (not e!361816))))

(declare-fun lt!292541 () (_ BitVec 32))

(declare-fun lt!292534 () SeekEntryResult!6736)

(assert (=> b!632832 (= res!409371 (= lt!292534 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 lt!292535 lt!292542 mask!3053)))))

(assert (=> b!632832 (= lt!292534 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632832 (= lt!292535 (select (store (arr!18289 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292539 () Unit!21302)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21302)

(assert (=> b!632832 (= lt!292539 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632832 (= lt!292541 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632833 () Bool)

(declare-fun Unit!21305 () Unit!21302)

(assert (=> b!632833 (= e!361812 Unit!21305)))

(declare-fun b!632834 () Bool)

(assert (=> b!632834 (= e!361817 e!361819)))

(declare-fun res!409375 () Bool)

(assert (=> b!632834 (=> (not res!409375) (not e!361819))))

(declare-fun lt!292538 () SeekEntryResult!6736)

(assert (=> b!632834 (= res!409375 (and (= lt!292538 (Found!6736 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18289 a!2986) index!984) (select (arr!18289 a!2986) j!136))) (not (= (select (arr!18289 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632834 (= lt!292538 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632835 () Bool)

(assert (=> b!632835 (= e!361818 e!361811)))

(declare-fun res!409366 () Bool)

(assert (=> b!632835 (=> (not res!409366) (not e!361811))))

(declare-fun lt!292537 () SeekEntryResult!6736)

(assert (=> b!632835 (= res!409366 (or (= lt!292537 (MissingZero!6736 i!1108)) (= lt!292537 (MissingVacant!6736 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38123 (_ BitVec 32)) SeekEntryResult!6736)

(assert (=> b!632835 (= lt!292537 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!632836 () Bool)

(declare-fun res!409365 () Bool)

(assert (=> b!632836 (=> (not res!409365) (not e!361818))))

(assert (=> b!632836 (= res!409365 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632837 () Bool)

(assert (=> b!632837 (= e!361814 (arrayContainsKey!0 lt!292542 (select (arr!18289 a!2986) j!136) j!136))))

(declare-fun b!632838 () Bool)

(declare-fun res!409370 () Bool)

(assert (=> b!632838 (=> (not res!409370) (not e!361818))))

(assert (=> b!632838 (= res!409370 (validKeyInArray!0 (select (arr!18289 a!2986) j!136)))))

(declare-fun b!632839 () Bool)

(declare-fun res!409361 () Bool)

(assert (=> b!632839 (=> (not res!409361) (not e!361818))))

(assert (=> b!632839 (= res!409361 (and (= (size!18653 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18653 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18653 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632840 () Bool)

(assert (=> b!632840 (= e!361816 (= lt!292538 lt!292534))))

(assert (= (and start!57200 res!409372) b!632839))

(assert (= (and b!632839 res!409361) b!632838))

(assert (= (and b!632838 res!409370) b!632823))

(assert (= (and b!632823 res!409367) b!632836))

(assert (= (and b!632836 res!409365) b!632835))

(assert (= (and b!632835 res!409366) b!632828))

(assert (= (and b!632828 res!409369) b!632826))

(assert (= (and b!632826 res!409376) b!632830))

(assert (= (and b!632830 res!409362) b!632829))

(assert (= (and b!632829 res!409364) b!632834))

(assert (= (and b!632834 res!409375) b!632832))

(assert (= (and b!632832 res!409371) b!632840))

(assert (= (and b!632832 c!72098) b!632831))

(assert (= (and b!632832 (not c!72098)) b!632833))

(assert (= (and b!632832 (not res!409374)) b!632825))

(assert (= (and b!632825 res!409373) b!632824))

(assert (= (and b!632824 (not res!409363)) b!632837))

(assert (= (and b!632825 (not res!409368)) b!632827))

(declare-fun m!607621 () Bool)

(assert (=> b!632836 m!607621))

(declare-fun m!607623 () Bool)

(assert (=> b!632835 m!607623))

(declare-fun m!607625 () Bool)

(assert (=> b!632837 m!607625))

(assert (=> b!632837 m!607625))

(declare-fun m!607627 () Bool)

(assert (=> b!632837 m!607627))

(assert (=> b!632827 m!607625))

(assert (=> b!632827 m!607625))

(declare-fun m!607629 () Bool)

(assert (=> b!632827 m!607629))

(declare-fun m!607631 () Bool)

(assert (=> b!632828 m!607631))

(declare-fun m!607633 () Bool)

(assert (=> b!632829 m!607633))

(declare-fun m!607635 () Bool)

(assert (=> b!632829 m!607635))

(assert (=> b!632825 m!607625))

(assert (=> b!632825 m!607633))

(declare-fun m!607637 () Bool)

(assert (=> b!632825 m!607637))

(declare-fun m!607639 () Bool)

(assert (=> b!632823 m!607639))

(declare-fun m!607641 () Bool)

(assert (=> b!632832 m!607641))

(declare-fun m!607643 () Bool)

(assert (=> b!632832 m!607643))

(declare-fun m!607645 () Bool)

(assert (=> b!632832 m!607645))

(assert (=> b!632832 m!607625))

(declare-fun m!607647 () Bool)

(assert (=> b!632832 m!607647))

(assert (=> b!632832 m!607625))

(assert (=> b!632832 m!607633))

(declare-fun m!607649 () Bool)

(assert (=> b!632832 m!607649))

(declare-fun m!607651 () Bool)

(assert (=> b!632832 m!607651))

(assert (=> b!632838 m!607625))

(assert (=> b!632838 m!607625))

(declare-fun m!607653 () Bool)

(assert (=> b!632838 m!607653))

(declare-fun m!607655 () Bool)

(assert (=> start!57200 m!607655))

(declare-fun m!607657 () Bool)

(assert (=> start!57200 m!607657))

(declare-fun m!607659 () Bool)

(assert (=> b!632826 m!607659))

(declare-fun m!607661 () Bool)

(assert (=> b!632834 m!607661))

(assert (=> b!632834 m!607625))

(assert (=> b!632834 m!607625))

(declare-fun m!607663 () Bool)

(assert (=> b!632834 m!607663))

(declare-fun m!607665 () Bool)

(assert (=> b!632830 m!607665))

(assert (=> b!632824 m!607625))

(check-sat (not b!632828) (not b!632836) (not b!632832) (not b!632826) (not b!632834) (not b!632838) (not b!632823) (not b!632827) (not b!632835) (not start!57200) (not b!632837))
(check-sat)
(get-model)

(declare-fun b!632907 () Bool)

(declare-fun e!361860 () SeekEntryResult!6736)

(declare-fun e!361861 () SeekEntryResult!6736)

(assert (=> b!632907 (= e!361860 e!361861)))

(declare-fun lt!292578 () (_ BitVec 64))

(declare-fun c!72108 () Bool)

(assert (=> b!632907 (= c!72108 (= lt!292578 (select (arr!18289 a!2986) j!136)))))

(declare-fun b!632908 () Bool)

(declare-fun e!361859 () SeekEntryResult!6736)

(assert (=> b!632908 (= e!361859 (MissingVacant!6736 vacantSpotIndex!68))))

(declare-fun b!632909 () Bool)

(declare-fun c!72110 () Bool)

(assert (=> b!632909 (= c!72110 (= lt!292578 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632909 (= e!361861 e!361859)))

(declare-fun b!632910 () Bool)

(assert (=> b!632910 (= e!361861 (Found!6736 index!984))))

(declare-fun b!632911 () Bool)

(assert (=> b!632911 (= e!361860 Undefined!6736)))

(declare-fun b!632912 () Bool)

(assert (=> b!632912 (= e!361859 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!292577 () SeekEntryResult!6736)

(declare-fun d!89375 () Bool)

(get-info :version)

(assert (=> d!89375 (and (or ((_ is Undefined!6736) lt!292577) (not ((_ is Found!6736) lt!292577)) (and (bvsge (index!29240 lt!292577) #b00000000000000000000000000000000) (bvslt (index!29240 lt!292577) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292577) ((_ is Found!6736) lt!292577) (not ((_ is MissingVacant!6736) lt!292577)) (not (= (index!29242 lt!292577) vacantSpotIndex!68)) (and (bvsge (index!29242 lt!292577) #b00000000000000000000000000000000) (bvslt (index!29242 lt!292577) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292577) (ite ((_ is Found!6736) lt!292577) (= (select (arr!18289 a!2986) (index!29240 lt!292577)) (select (arr!18289 a!2986) j!136)) (and ((_ is MissingVacant!6736) lt!292577) (= (index!29242 lt!292577) vacantSpotIndex!68) (= (select (arr!18289 a!2986) (index!29242 lt!292577)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89375 (= lt!292577 e!361860)))

(declare-fun c!72109 () Bool)

(assert (=> d!89375 (= c!72109 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89375 (= lt!292578 (select (arr!18289 a!2986) index!984))))

(assert (=> d!89375 (validMask!0 mask!3053)))

(assert (=> d!89375 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053) lt!292577)))

(assert (= (and d!89375 c!72109) b!632911))

(assert (= (and d!89375 (not c!72109)) b!632907))

(assert (= (and b!632907 c!72108) b!632910))

(assert (= (and b!632907 (not c!72108)) b!632909))

(assert (= (and b!632909 c!72110) b!632908))

(assert (= (and b!632909 (not c!72110)) b!632912))

(assert (=> b!632912 m!607641))

(assert (=> b!632912 m!607641))

(assert (=> b!632912 m!607625))

(declare-fun m!607713 () Bool)

(assert (=> b!632912 m!607713))

(declare-fun m!607715 () Bool)

(assert (=> d!89375 m!607715))

(declare-fun m!607717 () Bool)

(assert (=> d!89375 m!607717))

(assert (=> d!89375 m!607661))

(assert (=> d!89375 m!607655))

(assert (=> b!632834 d!89375))

(declare-fun b!632925 () Bool)

(declare-fun e!361870 () SeekEntryResult!6736)

(assert (=> b!632925 (= e!361870 Undefined!6736)))

(declare-fun b!632927 () Bool)

(declare-fun c!72117 () Bool)

(declare-fun lt!292586 () (_ BitVec 64))

(assert (=> b!632927 (= c!72117 (= lt!292586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361868 () SeekEntryResult!6736)

(declare-fun e!361869 () SeekEntryResult!6736)

(assert (=> b!632927 (= e!361868 e!361869)))

(declare-fun b!632928 () Bool)

(declare-fun lt!292585 () SeekEntryResult!6736)

(assert (=> b!632928 (= e!361868 (Found!6736 (index!29241 lt!292585)))))

(declare-fun b!632929 () Bool)

(assert (=> b!632929 (= e!361869 (seekKeyOrZeroReturnVacant!0 (x!58005 lt!292585) (index!29241 lt!292585) (index!29241 lt!292585) k0!1786 a!2986 mask!3053))))

(declare-fun b!632930 () Bool)

(assert (=> b!632930 (= e!361870 e!361868)))

(assert (=> b!632930 (= lt!292586 (select (arr!18289 a!2986) (index!29241 lt!292585)))))

(declare-fun c!72119 () Bool)

(assert (=> b!632930 (= c!72119 (= lt!292586 k0!1786))))

(declare-fun d!89377 () Bool)

(declare-fun lt!292587 () SeekEntryResult!6736)

(assert (=> d!89377 (and (or ((_ is Undefined!6736) lt!292587) (not ((_ is Found!6736) lt!292587)) (and (bvsge (index!29240 lt!292587) #b00000000000000000000000000000000) (bvslt (index!29240 lt!292587) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292587) ((_ is Found!6736) lt!292587) (not ((_ is MissingZero!6736) lt!292587)) (and (bvsge (index!29239 lt!292587) #b00000000000000000000000000000000) (bvslt (index!29239 lt!292587) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292587) ((_ is Found!6736) lt!292587) ((_ is MissingZero!6736) lt!292587) (not ((_ is MissingVacant!6736) lt!292587)) (and (bvsge (index!29242 lt!292587) #b00000000000000000000000000000000) (bvslt (index!29242 lt!292587) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292587) (ite ((_ is Found!6736) lt!292587) (= (select (arr!18289 a!2986) (index!29240 lt!292587)) k0!1786) (ite ((_ is MissingZero!6736) lt!292587) (= (select (arr!18289 a!2986) (index!29239 lt!292587)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6736) lt!292587) (= (select (arr!18289 a!2986) (index!29242 lt!292587)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89377 (= lt!292587 e!361870)))

(declare-fun c!72118 () Bool)

(assert (=> d!89377 (= c!72118 (and ((_ is Intermediate!6736) lt!292585) (undefined!7548 lt!292585)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38123 (_ BitVec 32)) SeekEntryResult!6736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89377 (= lt!292585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89377 (validMask!0 mask!3053)))

(assert (=> d!89377 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!292587)))

(declare-fun b!632926 () Bool)

(assert (=> b!632926 (= e!361869 (MissingZero!6736 (index!29241 lt!292585)))))

(assert (= (and d!89377 c!72118) b!632925))

(assert (= (and d!89377 (not c!72118)) b!632930))

(assert (= (and b!632930 c!72119) b!632928))

(assert (= (and b!632930 (not c!72119)) b!632927))

(assert (= (and b!632927 c!72117) b!632926))

(assert (= (and b!632927 (not c!72117)) b!632929))

(declare-fun m!607719 () Bool)

(assert (=> b!632929 m!607719))

(declare-fun m!607721 () Bool)

(assert (=> b!632930 m!607721))

(declare-fun m!607723 () Bool)

(assert (=> d!89377 m!607723))

(declare-fun m!607725 () Bool)

(assert (=> d!89377 m!607725))

(assert (=> d!89377 m!607723))

(declare-fun m!607727 () Bool)

(assert (=> d!89377 m!607727))

(assert (=> d!89377 m!607655))

(declare-fun m!607729 () Bool)

(assert (=> d!89377 m!607729))

(declare-fun m!607731 () Bool)

(assert (=> d!89377 m!607731))

(assert (=> b!632835 d!89377))

(declare-fun d!89379 () Bool)

(assert (=> d!89379 (= (validKeyInArray!0 (select (arr!18289 a!2986) j!136)) (and (not (= (select (arr!18289 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18289 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!632838 d!89379))

(declare-fun d!89381 () Bool)

(assert (=> d!89381 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!632823 d!89381))

(declare-fun b!632945 () Bool)

(declare-fun e!361885 () Bool)

(declare-fun e!361883 () Bool)

(assert (=> b!632945 (= e!361885 e!361883)))

(declare-fun lt!292594 () (_ BitVec 64))

(assert (=> b!632945 (= lt!292594 (select (arr!18289 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!292596 () Unit!21302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38123 (_ BitVec 64) (_ BitVec 32)) Unit!21302)

(assert (=> b!632945 (= lt!292596 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!292594 #b00000000000000000000000000000000))))

(assert (=> b!632945 (arrayContainsKey!0 a!2986 lt!292594 #b00000000000000000000000000000000)))

(declare-fun lt!292595 () Unit!21302)

(assert (=> b!632945 (= lt!292595 lt!292596)))

(declare-fun res!409436 () Bool)

(assert (=> b!632945 (= res!409436 (= (seekEntryOrOpen!0 (select (arr!18289 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6736 #b00000000000000000000000000000000)))))

(assert (=> b!632945 (=> (not res!409436) (not e!361883))))

(declare-fun bm!33356 () Bool)

(declare-fun call!33359 () Bool)

(assert (=> bm!33356 (= call!33359 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!632947 () Bool)

(assert (=> b!632947 (= e!361883 call!33359)))

(declare-fun b!632948 () Bool)

(assert (=> b!632948 (= e!361885 call!33359)))

(declare-fun b!632946 () Bool)

(declare-fun e!361884 () Bool)

(assert (=> b!632946 (= e!361884 e!361885)))

(declare-fun c!72122 () Bool)

(assert (=> b!632946 (= c!72122 (validKeyInArray!0 (select (arr!18289 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89383 () Bool)

(declare-fun res!409435 () Bool)

(assert (=> d!89383 (=> res!409435 e!361884)))

(assert (=> d!89383 (= res!409435 (bvsge #b00000000000000000000000000000000 (size!18653 a!2986)))))

(assert (=> d!89383 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!361884)))

(assert (= (and d!89383 (not res!409435)) b!632946))

(assert (= (and b!632946 c!72122) b!632945))

(assert (= (and b!632946 (not c!72122)) b!632948))

(assert (= (and b!632945 res!409436) b!632947))

(assert (= (or b!632947 b!632948) bm!33356))

(declare-fun m!607737 () Bool)

(assert (=> b!632945 m!607737))

(declare-fun m!607739 () Bool)

(assert (=> b!632945 m!607739))

(declare-fun m!607741 () Bool)

(assert (=> b!632945 m!607741))

(assert (=> b!632945 m!607737))

(declare-fun m!607743 () Bool)

(assert (=> b!632945 m!607743))

(declare-fun m!607745 () Bool)

(assert (=> bm!33356 m!607745))

(assert (=> b!632946 m!607737))

(assert (=> b!632946 m!607737))

(declare-fun m!607747 () Bool)

(assert (=> b!632946 m!607747))

(assert (=> b!632828 d!89383))

(declare-fun d!89391 () Bool)

(declare-fun res!409451 () Bool)

(declare-fun e!361902 () Bool)

(assert (=> d!89391 (=> res!409451 e!361902)))

(assert (=> d!89391 (= res!409451 (= (select (arr!18289 lt!292542) j!136) (select (arr!18289 a!2986) j!136)))))

(assert (=> d!89391 (= (arrayContainsKey!0 lt!292542 (select (arr!18289 a!2986) j!136) j!136) e!361902)))

(declare-fun b!632967 () Bool)

(declare-fun e!361903 () Bool)

(assert (=> b!632967 (= e!361902 e!361903)))

(declare-fun res!409452 () Bool)

(assert (=> b!632967 (=> (not res!409452) (not e!361903))))

(assert (=> b!632967 (= res!409452 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18653 lt!292542)))))

(declare-fun b!632968 () Bool)

(assert (=> b!632968 (= e!361903 (arrayContainsKey!0 lt!292542 (select (arr!18289 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89391 (not res!409451)) b!632967))

(assert (= (and b!632967 res!409452) b!632968))

(declare-fun m!607753 () Bool)

(assert (=> d!89391 m!607753))

(assert (=> b!632968 m!607625))

(declare-fun m!607755 () Bool)

(assert (=> b!632968 m!607755))

(assert (=> b!632837 d!89391))

(declare-fun b!632983 () Bool)

(declare-fun e!361916 () Bool)

(declare-fun contains!3097 (List!12383 (_ BitVec 64)) Bool)

(assert (=> b!632983 (= e!361916 (contains!3097 Nil!12380 (select (arr!18289 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!632984 () Bool)

(declare-fun e!361918 () Bool)

(declare-fun e!361917 () Bool)

(assert (=> b!632984 (= e!361918 e!361917)))

(declare-fun res!409463 () Bool)

(assert (=> b!632984 (=> (not res!409463) (not e!361917))))

(assert (=> b!632984 (= res!409463 (not e!361916))))

(declare-fun res!409462 () Bool)

(assert (=> b!632984 (=> (not res!409462) (not e!361916))))

(assert (=> b!632984 (= res!409462 (validKeyInArray!0 (select (arr!18289 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89395 () Bool)

(declare-fun res!409461 () Bool)

(assert (=> d!89395 (=> res!409461 e!361918)))

(assert (=> d!89395 (= res!409461 (bvsge #b00000000000000000000000000000000 (size!18653 a!2986)))))

(assert (=> d!89395 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12380) e!361918)))

(declare-fun b!632985 () Bool)

(declare-fun e!361915 () Bool)

(declare-fun call!33365 () Bool)

(assert (=> b!632985 (= e!361915 call!33365)))

(declare-fun bm!33362 () Bool)

(declare-fun c!72128 () Bool)

(assert (=> bm!33362 (= call!33365 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72128 (Cons!12379 (select (arr!18289 a!2986) #b00000000000000000000000000000000) Nil!12380) Nil!12380)))))

(declare-fun b!632986 () Bool)

(assert (=> b!632986 (= e!361915 call!33365)))

(declare-fun b!632987 () Bool)

(assert (=> b!632987 (= e!361917 e!361915)))

(assert (=> b!632987 (= c!72128 (validKeyInArray!0 (select (arr!18289 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89395 (not res!409461)) b!632984))

(assert (= (and b!632984 res!409462) b!632983))

(assert (= (and b!632984 res!409463) b!632987))

(assert (= (and b!632987 c!72128) b!632985))

(assert (= (and b!632987 (not c!72128)) b!632986))

(assert (= (or b!632985 b!632986) bm!33362))

(assert (=> b!632983 m!607737))

(assert (=> b!632983 m!607737))

(declare-fun m!607769 () Bool)

(assert (=> b!632983 m!607769))

(assert (=> b!632984 m!607737))

(assert (=> b!632984 m!607737))

(assert (=> b!632984 m!607747))

(assert (=> bm!33362 m!607737))

(declare-fun m!607771 () Bool)

(assert (=> bm!33362 m!607771))

(assert (=> b!632987 m!607737))

(assert (=> b!632987 m!607737))

(assert (=> b!632987 m!607747))

(assert (=> b!632826 d!89395))

(declare-fun d!89399 () Bool)

(declare-fun res!409464 () Bool)

(declare-fun e!361919 () Bool)

(assert (=> d!89399 (=> res!409464 e!361919)))

(assert (=> d!89399 (= res!409464 (= (select (arr!18289 lt!292542) index!984) (select (arr!18289 a!2986) j!136)))))

(assert (=> d!89399 (= (arrayContainsKey!0 lt!292542 (select (arr!18289 a!2986) j!136) index!984) e!361919)))

(declare-fun b!632988 () Bool)

(declare-fun e!361920 () Bool)

(assert (=> b!632988 (= e!361919 e!361920)))

(declare-fun res!409465 () Bool)

(assert (=> b!632988 (=> (not res!409465) (not e!361920))))

(assert (=> b!632988 (= res!409465 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18653 lt!292542)))))

(declare-fun b!632989 () Bool)

(assert (=> b!632989 (= e!361920 (arrayContainsKey!0 lt!292542 (select (arr!18289 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89399 (not res!409464)) b!632988))

(assert (= (and b!632988 res!409465) b!632989))

(declare-fun m!607773 () Bool)

(assert (=> d!89399 m!607773))

(assert (=> b!632989 m!607625))

(declare-fun m!607775 () Bool)

(assert (=> b!632989 m!607775))

(assert (=> b!632827 d!89399))

(declare-fun b!632990 () Bool)

(declare-fun e!361922 () SeekEntryResult!6736)

(declare-fun e!361923 () SeekEntryResult!6736)

(assert (=> b!632990 (= e!361922 e!361923)))

(declare-fun c!72129 () Bool)

(declare-fun lt!292607 () (_ BitVec 64))

(assert (=> b!632990 (= c!72129 (= lt!292607 lt!292535))))

(declare-fun b!632991 () Bool)

(declare-fun e!361921 () SeekEntryResult!6736)

(assert (=> b!632991 (= e!361921 (MissingVacant!6736 vacantSpotIndex!68))))

(declare-fun b!632992 () Bool)

(declare-fun c!72131 () Bool)

(assert (=> b!632992 (= c!72131 (= lt!292607 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632992 (= e!361923 e!361921)))

(declare-fun b!632993 () Bool)

(assert (=> b!632993 (= e!361923 (Found!6736 lt!292541))))

(declare-fun b!632994 () Bool)

(assert (=> b!632994 (= e!361922 Undefined!6736)))

(declare-fun b!632995 () Bool)

(assert (=> b!632995 (= e!361921 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292541 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!292535 lt!292542 mask!3053))))

(declare-fun d!89401 () Bool)

(declare-fun lt!292606 () SeekEntryResult!6736)

(assert (=> d!89401 (and (or ((_ is Undefined!6736) lt!292606) (not ((_ is Found!6736) lt!292606)) (and (bvsge (index!29240 lt!292606) #b00000000000000000000000000000000) (bvslt (index!29240 lt!292606) (size!18653 lt!292542)))) (or ((_ is Undefined!6736) lt!292606) ((_ is Found!6736) lt!292606) (not ((_ is MissingVacant!6736) lt!292606)) (not (= (index!29242 lt!292606) vacantSpotIndex!68)) (and (bvsge (index!29242 lt!292606) #b00000000000000000000000000000000) (bvslt (index!29242 lt!292606) (size!18653 lt!292542)))) (or ((_ is Undefined!6736) lt!292606) (ite ((_ is Found!6736) lt!292606) (= (select (arr!18289 lt!292542) (index!29240 lt!292606)) lt!292535) (and ((_ is MissingVacant!6736) lt!292606) (= (index!29242 lt!292606) vacantSpotIndex!68) (= (select (arr!18289 lt!292542) (index!29242 lt!292606)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89401 (= lt!292606 e!361922)))

(declare-fun c!72130 () Bool)

(assert (=> d!89401 (= c!72130 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89401 (= lt!292607 (select (arr!18289 lt!292542) lt!292541))))

(assert (=> d!89401 (validMask!0 mask!3053)))

(assert (=> d!89401 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 lt!292535 lt!292542 mask!3053) lt!292606)))

(assert (= (and d!89401 c!72130) b!632994))

(assert (= (and d!89401 (not c!72130)) b!632990))

(assert (= (and b!632990 c!72129) b!632993))

(assert (= (and b!632990 (not c!72129)) b!632992))

(assert (= (and b!632992 c!72131) b!632991))

(assert (= (and b!632992 (not c!72131)) b!632995))

(declare-fun m!607777 () Bool)

(assert (=> b!632995 m!607777))

(assert (=> b!632995 m!607777))

(declare-fun m!607779 () Bool)

(assert (=> b!632995 m!607779))

(declare-fun m!607781 () Bool)

(assert (=> d!89401 m!607781))

(declare-fun m!607783 () Bool)

(assert (=> d!89401 m!607783))

(declare-fun m!607785 () Bool)

(assert (=> d!89401 m!607785))

(assert (=> d!89401 m!607655))

(assert (=> b!632832 d!89401))

(declare-fun d!89405 () Bool)

(declare-fun e!361944 () Bool)

(assert (=> d!89405 e!361944))

(declare-fun res!409468 () Bool)

(assert (=> d!89405 (=> (not res!409468) (not e!361944))))

(assert (=> d!89405 (= res!409468 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18653 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18653 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18653 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18653 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18653 a!2986))))))

(declare-fun lt!292622 () Unit!21302)

(declare-fun choose!9 (array!38123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21302)

(assert (=> d!89405 (= lt!292622 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89405 (validMask!0 mask!3053)))

(assert (=> d!89405 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 mask!3053) lt!292622)))

(declare-fun b!633034 () Bool)

(assert (=> b!633034 (= e!361944 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 (select (store (arr!18289 a!2986) i!1108 k0!1786) j!136) (array!38124 (store (arr!18289 a!2986) i!1108 k0!1786) (size!18653 a!2986)) mask!3053)))))

(assert (= (and d!89405 res!409468) b!633034))

(declare-fun m!607805 () Bool)

(assert (=> d!89405 m!607805))

(assert (=> d!89405 m!607655))

(assert (=> b!633034 m!607643))

(assert (=> b!633034 m!607633))

(assert (=> b!633034 m!607625))

(assert (=> b!633034 m!607625))

(assert (=> b!633034 m!607647))

(assert (=> b!633034 m!607643))

(declare-fun m!607807 () Bool)

(assert (=> b!633034 m!607807))

(assert (=> b!632832 d!89405))

(declare-fun b!633035 () Bool)

(declare-fun e!361946 () SeekEntryResult!6736)

(declare-fun e!361947 () SeekEntryResult!6736)

(assert (=> b!633035 (= e!361946 e!361947)))

(declare-fun lt!292626 () (_ BitVec 64))

(declare-fun c!72150 () Bool)

(assert (=> b!633035 (= c!72150 (= lt!292626 (select (arr!18289 a!2986) j!136)))))

(declare-fun b!633036 () Bool)

(declare-fun e!361945 () SeekEntryResult!6736)

(assert (=> b!633036 (= e!361945 (MissingVacant!6736 vacantSpotIndex!68))))

(declare-fun b!633037 () Bool)

(declare-fun c!72152 () Bool)

(assert (=> b!633037 (= c!72152 (= lt!292626 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633037 (= e!361947 e!361945)))

(declare-fun b!633038 () Bool)

(assert (=> b!633038 (= e!361947 (Found!6736 lt!292541))))

(declare-fun b!633039 () Bool)

(assert (=> b!633039 (= e!361946 Undefined!6736)))

(declare-fun b!633040 () Bool)

(assert (=> b!633040 (= e!361945 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292541 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!89413 () Bool)

(declare-fun lt!292625 () SeekEntryResult!6736)

(assert (=> d!89413 (and (or ((_ is Undefined!6736) lt!292625) (not ((_ is Found!6736) lt!292625)) (and (bvsge (index!29240 lt!292625) #b00000000000000000000000000000000) (bvslt (index!29240 lt!292625) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292625) ((_ is Found!6736) lt!292625) (not ((_ is MissingVacant!6736) lt!292625)) (not (= (index!29242 lt!292625) vacantSpotIndex!68)) (and (bvsge (index!29242 lt!292625) #b00000000000000000000000000000000) (bvslt (index!29242 lt!292625) (size!18653 a!2986)))) (or ((_ is Undefined!6736) lt!292625) (ite ((_ is Found!6736) lt!292625) (= (select (arr!18289 a!2986) (index!29240 lt!292625)) (select (arr!18289 a!2986) j!136)) (and ((_ is MissingVacant!6736) lt!292625) (= (index!29242 lt!292625) vacantSpotIndex!68) (= (select (arr!18289 a!2986) (index!29242 lt!292625)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89413 (= lt!292625 e!361946)))

(declare-fun c!72151 () Bool)

(assert (=> d!89413 (= c!72151 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89413 (= lt!292626 (select (arr!18289 a!2986) lt!292541))))

(assert (=> d!89413 (validMask!0 mask!3053)))

(assert (=> d!89413 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292541 vacantSpotIndex!68 (select (arr!18289 a!2986) j!136) a!2986 mask!3053) lt!292625)))

(assert (= (and d!89413 c!72151) b!633039))

(assert (= (and d!89413 (not c!72151)) b!633035))

(assert (= (and b!633035 c!72150) b!633038))

(assert (= (and b!633035 (not c!72150)) b!633037))

(assert (= (and b!633037 c!72152) b!633036))

(assert (= (and b!633037 (not c!72152)) b!633040))

(assert (=> b!633040 m!607777))

(assert (=> b!633040 m!607777))

(assert (=> b!633040 m!607625))

(declare-fun m!607811 () Bool)

(assert (=> b!633040 m!607811))

(declare-fun m!607813 () Bool)

(assert (=> d!89413 m!607813))

(declare-fun m!607815 () Bool)

(assert (=> d!89413 m!607815))

(declare-fun m!607817 () Bool)

(assert (=> d!89413 m!607817))

(assert (=> d!89413 m!607655))

(assert (=> b!632832 d!89413))

(declare-fun d!89417 () Bool)

(declare-fun lt!292634 () (_ BitVec 32))

(assert (=> d!89417 (and (bvsge lt!292634 #b00000000000000000000000000000000) (bvslt lt!292634 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89417 (= lt!292634 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89417 (validMask!0 mask!3053)))

(assert (=> d!89417 (= (nextIndex!0 index!984 x!910 mask!3053) lt!292634)))

(declare-fun bs!19053 () Bool)

(assert (= bs!19053 d!89417))

(declare-fun m!607833 () Bool)

(assert (=> bs!19053 m!607833))

(assert (=> bs!19053 m!607655))

(assert (=> b!632832 d!89417))

(declare-fun b!633053 () Bool)

(declare-fun e!361955 () SeekEntryResult!6736)

(declare-fun e!361956 () SeekEntryResult!6736)

(assert (=> b!633053 (= e!361955 e!361956)))

(declare-fun c!72159 () Bool)

(declare-fun lt!292636 () (_ BitVec 64))

(assert (=> b!633053 (= c!72159 (= lt!292636 lt!292535))))

(declare-fun b!633054 () Bool)

(declare-fun e!361954 () SeekEntryResult!6736)

(assert (=> b!633054 (= e!361954 (MissingVacant!6736 vacantSpotIndex!68))))

(declare-fun b!633055 () Bool)

(declare-fun c!72161 () Bool)

(assert (=> b!633055 (= c!72161 (= lt!292636 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633055 (= e!361956 e!361954)))

(declare-fun b!633056 () Bool)

(assert (=> b!633056 (= e!361956 (Found!6736 index!984))))

(declare-fun b!633057 () Bool)

(assert (=> b!633057 (= e!361955 Undefined!6736)))

(declare-fun b!633058 () Bool)

(assert (=> b!633058 (= e!361954 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!292535 lt!292542 mask!3053))))

(declare-fun d!89423 () Bool)

(declare-fun lt!292635 () SeekEntryResult!6736)

(assert (=> d!89423 (and (or ((_ is Undefined!6736) lt!292635) (not ((_ is Found!6736) lt!292635)) (and (bvsge (index!29240 lt!292635) #b00000000000000000000000000000000) (bvslt (index!29240 lt!292635) (size!18653 lt!292542)))) (or ((_ is Undefined!6736) lt!292635) ((_ is Found!6736) lt!292635) (not ((_ is MissingVacant!6736) lt!292635)) (not (= (index!29242 lt!292635) vacantSpotIndex!68)) (and (bvsge (index!29242 lt!292635) #b00000000000000000000000000000000) (bvslt (index!29242 lt!292635) (size!18653 lt!292542)))) (or ((_ is Undefined!6736) lt!292635) (ite ((_ is Found!6736) lt!292635) (= (select (arr!18289 lt!292542) (index!29240 lt!292635)) lt!292535) (and ((_ is MissingVacant!6736) lt!292635) (= (index!29242 lt!292635) vacantSpotIndex!68) (= (select (arr!18289 lt!292542) (index!29242 lt!292635)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89423 (= lt!292635 e!361955)))

(declare-fun c!72160 () Bool)

(assert (=> d!89423 (= c!72160 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89423 (= lt!292636 (select (arr!18289 lt!292542) index!984))))

(assert (=> d!89423 (validMask!0 mask!3053)))

(assert (=> d!89423 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292535 lt!292542 mask!3053) lt!292635)))

(assert (= (and d!89423 c!72160) b!633057))

(assert (= (and d!89423 (not c!72160)) b!633053))

(assert (= (and b!633053 c!72159) b!633056))

(assert (= (and b!633053 (not c!72159)) b!633055))

(assert (= (and b!633055 c!72161) b!633054))

(assert (= (and b!633055 (not c!72161)) b!633058))

(assert (=> b!633058 m!607641))

(assert (=> b!633058 m!607641))

(declare-fun m!607835 () Bool)

(assert (=> b!633058 m!607835))

(declare-fun m!607837 () Bool)

(assert (=> d!89423 m!607837))

(declare-fun m!607839 () Bool)

(assert (=> d!89423 m!607839))

(assert (=> d!89423 m!607773))

(assert (=> d!89423 m!607655))

(assert (=> b!632832 d!89423))

(declare-fun d!89425 () Bool)

(assert (=> d!89425 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57200 d!89425))

(declare-fun d!89437 () Bool)

(assert (=> d!89437 (= (array_inv!14063 a!2986) (bvsge (size!18653 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57200 d!89437))

(declare-fun d!89441 () Bool)

(declare-fun res!409482 () Bool)

(declare-fun e!361976 () Bool)

(assert (=> d!89441 (=> res!409482 e!361976)))

(assert (=> d!89441 (= res!409482 (= (select (arr!18289 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89441 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!361976)))

(declare-fun b!633084 () Bool)

(declare-fun e!361977 () Bool)

(assert (=> b!633084 (= e!361976 e!361977)))

(declare-fun res!409483 () Bool)

(assert (=> b!633084 (=> (not res!409483) (not e!361977))))

(assert (=> b!633084 (= res!409483 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18653 a!2986)))))

(declare-fun b!633085 () Bool)

(assert (=> b!633085 (= e!361977 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89441 (not res!409482)) b!633084))

(assert (= (and b!633084 res!409483) b!633085))

(assert (=> d!89441 m!607737))

(declare-fun m!607867 () Bool)

(assert (=> b!633085 m!607867))

(assert (=> b!632836 d!89441))

(check-sat (not d!89417) (not b!632946) (not bm!33362) (not b!632983) (not b!632989) (not b!633085) (not d!89375) (not b!632912) (not b!632995) (not bm!33356) (not b!632929) (not d!89405) (not b!633058) (not b!632987) (not d!89401) (not b!633034) (not d!89423) (not d!89377) (not d!89413) (not b!633040) (not b!632984) (not b!632945) (not b!632968))
(check-sat)
