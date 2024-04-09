; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56048 () Bool)

(assert start!56048)

(declare-fun b!616589 () Bool)

(declare-fun e!353555 () Bool)

(declare-fun e!353564 () Bool)

(assert (=> b!616589 (= e!353555 e!353564)))

(declare-fun res!397306 () Bool)

(assert (=> b!616589 (=> (not res!397306) (not e!353564))))

(declare-datatypes ((SeekEntryResult!6430 0))(
  ( (MissingZero!6430 (index!28003 (_ BitVec 32))) (Found!6430 (index!28004 (_ BitVec 32))) (Intermediate!6430 (undefined!7242 Bool) (index!28005 (_ BitVec 32)) (x!56823 (_ BitVec 32))) (Undefined!6430) (MissingVacant!6430 (index!28006 (_ BitVec 32))) )
))
(declare-fun lt!283757 () SeekEntryResult!6430)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!616589 (= res!397306 (or (= lt!283757 (MissingZero!6430 i!1108)) (= lt!283757 (MissingVacant!6430 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37481 0))(
  ( (array!37482 (arr!17983 (Array (_ BitVec 32) (_ BitVec 64))) (size!18347 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37481)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37481 (_ BitVec 32)) SeekEntryResult!6430)

(assert (=> b!616589 (= lt!283757 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!616590 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!283761 () array!37481)

(declare-fun res!397304 () Bool)

(declare-fun arrayContainsKey!0 (array!37481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616590 (= res!397304 (arrayContainsKey!0 lt!283761 (select (arr!17983 a!2986) j!136) j!136))))

(declare-fun e!353552 () Bool)

(assert (=> b!616590 (=> (not res!397304) (not e!353552))))

(declare-fun e!353563 () Bool)

(assert (=> b!616590 (= e!353563 e!353552)))

(declare-fun b!616591 () Bool)

(declare-datatypes ((Unit!20120 0))(
  ( (Unit!20121) )
))
(declare-fun e!353557 () Unit!20120)

(declare-fun Unit!20122 () Unit!20120)

(assert (=> b!616591 (= e!353557 Unit!20122)))

(declare-fun res!397293 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616591 (= res!397293 (= (select (store (arr!17983 a!2986) i!1108 k0!1786) index!984) (select (arr!17983 a!2986) j!136)))))

(declare-fun e!353553 () Bool)

(assert (=> b!616591 (=> (not res!397293) (not e!353553))))

(assert (=> b!616591 e!353553))

(declare-fun c!70017 () Bool)

(assert (=> b!616591 (= c!70017 (bvslt j!136 index!984))))

(declare-fun lt!283770 () Unit!20120)

(declare-fun e!353556 () Unit!20120)

(assert (=> b!616591 (= lt!283770 e!353556)))

(declare-fun c!70019 () Bool)

(assert (=> b!616591 (= c!70019 (bvslt index!984 j!136))))

(declare-fun lt!283768 () Unit!20120)

(declare-fun e!353566 () Unit!20120)

(assert (=> b!616591 (= lt!283768 e!353566)))

(assert (=> b!616591 false))

(declare-fun b!616592 () Bool)

(declare-fun res!397296 () Bool)

(assert (=> b!616592 (=> (not res!397296) (not e!353555))))

(assert (=> b!616592 (= res!397296 (and (= (size!18347 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18347 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18347 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616593 () Bool)

(declare-fun e!353554 () Unit!20120)

(declare-fun Unit!20123 () Unit!20120)

(assert (=> b!616593 (= e!353554 Unit!20123)))

(assert (=> b!616593 false))

(declare-fun b!616594 () Bool)

(declare-fun res!397294 () Bool)

(assert (=> b!616594 (=> (not res!397294) (not e!353555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616594 (= res!397294 (validKeyInArray!0 k0!1786))))

(declare-fun b!616595 () Bool)

(declare-fun Unit!20124 () Unit!20120)

(assert (=> b!616595 (= e!353557 Unit!20124)))

(declare-fun b!616596 () Bool)

(assert (=> b!616596 (= e!353552 (arrayContainsKey!0 lt!283761 (select (arr!17983 a!2986) j!136) index!984))))

(declare-fun b!616598 () Bool)

(declare-fun res!397295 () Bool)

(assert (=> b!616598 (=> (not res!397295) (not e!353564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37481 (_ BitVec 32)) Bool)

(assert (=> b!616598 (= res!397295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616599 () Bool)

(declare-fun e!353561 () Bool)

(assert (=> b!616599 (= e!353561 true)))

(assert (=> b!616599 (= (select (store (arr!17983 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616600 () Bool)

(declare-fun res!397299 () Bool)

(assert (=> b!616600 (=> (not res!397299) (not e!353564))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616600 (= res!397299 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17983 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616601 () Bool)

(declare-fun Unit!20125 () Unit!20120)

(assert (=> b!616601 (= e!353554 Unit!20125)))

(declare-fun b!616602 () Bool)

(declare-fun Unit!20126 () Unit!20120)

(assert (=> b!616602 (= e!353566 Unit!20126)))

(declare-fun b!616603 () Bool)

(assert (=> b!616603 false))

(declare-fun lt!283759 () Unit!20120)

(declare-datatypes ((List!12077 0))(
  ( (Nil!12074) (Cons!12073 (h!13118 (_ BitVec 64)) (t!18313 List!12077)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37481 (_ BitVec 64) (_ BitVec 32) List!12077) Unit!20120)

(assert (=> b!616603 (= lt!283759 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283761 (select (arr!17983 a!2986) j!136) index!984 Nil!12074))))

(declare-fun arrayNoDuplicates!0 (array!37481 (_ BitVec 32) List!12077) Bool)

(assert (=> b!616603 (arrayNoDuplicates!0 lt!283761 index!984 Nil!12074)))

(declare-fun lt!283774 () Unit!20120)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37481 (_ BitVec 32) (_ BitVec 32)) Unit!20120)

(assert (=> b!616603 (= lt!283774 (lemmaNoDuplicateFromThenFromBigger!0 lt!283761 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616603 (arrayNoDuplicates!0 lt!283761 #b00000000000000000000000000000000 Nil!12074)))

(declare-fun lt!283772 () Unit!20120)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37481 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12077) Unit!20120)

(assert (=> b!616603 (= lt!283772 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12074))))

(assert (=> b!616603 (arrayContainsKey!0 lt!283761 (select (arr!17983 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283775 () Unit!20120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37481 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20120)

(assert (=> b!616603 (= lt!283775 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283761 (select (arr!17983 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353559 () Bool)

(assert (=> b!616603 e!353559))

(declare-fun res!397303 () Bool)

(assert (=> b!616603 (=> (not res!397303) (not e!353559))))

(assert (=> b!616603 (= res!397303 (arrayContainsKey!0 lt!283761 (select (arr!17983 a!2986) j!136) j!136))))

(declare-fun Unit!20127 () Unit!20120)

(assert (=> b!616603 (= e!353566 Unit!20127)))

(declare-fun b!616604 () Bool)

(declare-fun res!397302 () Bool)

(assert (=> b!616604 (=> (not res!397302) (not e!353564))))

(assert (=> b!616604 (= res!397302 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12074))))

(declare-fun b!616605 () Bool)

(declare-fun res!397301 () Bool)

(assert (=> b!616605 (=> (not res!397301) (not e!353555))))

(assert (=> b!616605 (= res!397301 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616606 () Bool)

(declare-fun e!353562 () Bool)

(declare-fun e!353560 () Bool)

(assert (=> b!616606 (= e!353562 e!353560)))

(declare-fun res!397291 () Bool)

(assert (=> b!616606 (=> (not res!397291) (not e!353560))))

(declare-fun lt!283769 () SeekEntryResult!6430)

(assert (=> b!616606 (= res!397291 (and (= lt!283769 (Found!6430 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17983 a!2986) index!984) (select (arr!17983 a!2986) j!136))) (not (= (select (arr!17983 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37481 (_ BitVec 32)) SeekEntryResult!6430)

(assert (=> b!616606 (= lt!283769 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17983 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616607 () Bool)

(declare-fun res!397307 () Bool)

(assert (=> b!616607 (= res!397307 (bvsge j!136 index!984))))

(assert (=> b!616607 (=> res!397307 e!353563)))

(assert (=> b!616607 (= e!353553 e!353563)))

(declare-fun b!616608 () Bool)

(declare-fun Unit!20128 () Unit!20120)

(assert (=> b!616608 (= e!353556 Unit!20128)))

(declare-fun b!616609 () Bool)

(declare-fun res!397292 () Bool)

(assert (=> b!616609 (=> (not res!397292) (not e!353555))))

(assert (=> b!616609 (= res!397292 (validKeyInArray!0 (select (arr!17983 a!2986) j!136)))))

(declare-fun b!616610 () Bool)

(assert (=> b!616610 (= e!353559 (arrayContainsKey!0 lt!283761 (select (arr!17983 a!2986) j!136) index!984))))

(declare-fun b!616611 () Bool)

(assert (=> b!616611 (= e!353564 e!353562)))

(declare-fun res!397300 () Bool)

(assert (=> b!616611 (=> (not res!397300) (not e!353562))))

(assert (=> b!616611 (= res!397300 (= (select (store (arr!17983 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616611 (= lt!283761 (array!37482 (store (arr!17983 a!2986) i!1108 k0!1786) (size!18347 a!2986)))))

(declare-fun b!616612 () Bool)

(declare-fun e!353565 () Bool)

(declare-fun lt!283764 () SeekEntryResult!6430)

(assert (=> b!616612 (= e!353565 (= lt!283769 lt!283764))))

(declare-fun b!616613 () Bool)

(assert (=> b!616613 false))

(declare-fun lt!283767 () Unit!20120)

(assert (=> b!616613 (= lt!283767 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283761 (select (arr!17983 a!2986) j!136) j!136 Nil!12074))))

(assert (=> b!616613 (arrayNoDuplicates!0 lt!283761 j!136 Nil!12074)))

(declare-fun lt!283760 () Unit!20120)

(assert (=> b!616613 (= lt!283760 (lemmaNoDuplicateFromThenFromBigger!0 lt!283761 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616613 (arrayNoDuplicates!0 lt!283761 #b00000000000000000000000000000000 Nil!12074)))

(declare-fun lt!283771 () Unit!20120)

(assert (=> b!616613 (= lt!283771 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12074))))

(assert (=> b!616613 (arrayContainsKey!0 lt!283761 (select (arr!17983 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283776 () Unit!20120)

(assert (=> b!616613 (= lt!283776 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283761 (select (arr!17983 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20129 () Unit!20120)

(assert (=> b!616613 (= e!353556 Unit!20129)))

(declare-fun b!616597 () Bool)

(assert (=> b!616597 (= e!353560 (not e!353561))))

(declare-fun res!397297 () Bool)

(assert (=> b!616597 (=> res!397297 e!353561)))

(declare-fun lt!283758 () SeekEntryResult!6430)

(assert (=> b!616597 (= res!397297 (not (= lt!283758 (MissingVacant!6430 vacantSpotIndex!68))))))

(declare-fun lt!283762 () Unit!20120)

(assert (=> b!616597 (= lt!283762 e!353557)))

(declare-fun c!70018 () Bool)

(assert (=> b!616597 (= c!70018 (= lt!283758 (Found!6430 index!984)))))

(declare-fun lt!283773 () Unit!20120)

(assert (=> b!616597 (= lt!283773 e!353554)))

(declare-fun c!70016 () Bool)

(assert (=> b!616597 (= c!70016 (= lt!283758 Undefined!6430))))

(declare-fun lt!283765 () (_ BitVec 64))

(assert (=> b!616597 (= lt!283758 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283765 lt!283761 mask!3053))))

(assert (=> b!616597 e!353565))

(declare-fun res!397298 () Bool)

(assert (=> b!616597 (=> (not res!397298) (not e!353565))))

(declare-fun lt!283766 () (_ BitVec 32))

(assert (=> b!616597 (= res!397298 (= lt!283764 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283766 vacantSpotIndex!68 lt!283765 lt!283761 mask!3053)))))

(assert (=> b!616597 (= lt!283764 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283766 vacantSpotIndex!68 (select (arr!17983 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616597 (= lt!283765 (select (store (arr!17983 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!283763 () Unit!20120)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37481 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20120)

(assert (=> b!616597 (= lt!283763 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283766 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616597 (= lt!283766 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!397305 () Bool)

(assert (=> start!56048 (=> (not res!397305) (not e!353555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56048 (= res!397305 (validMask!0 mask!3053))))

(assert (=> start!56048 e!353555))

(assert (=> start!56048 true))

(declare-fun array_inv!13757 (array!37481) Bool)

(assert (=> start!56048 (array_inv!13757 a!2986)))

(assert (= (and start!56048 res!397305) b!616592))

(assert (= (and b!616592 res!397296) b!616609))

(assert (= (and b!616609 res!397292) b!616594))

(assert (= (and b!616594 res!397294) b!616605))

(assert (= (and b!616605 res!397301) b!616589))

(assert (= (and b!616589 res!397306) b!616598))

(assert (= (and b!616598 res!397295) b!616604))

(assert (= (and b!616604 res!397302) b!616600))

(assert (= (and b!616600 res!397299) b!616611))

(assert (= (and b!616611 res!397300) b!616606))

(assert (= (and b!616606 res!397291) b!616597))

(assert (= (and b!616597 res!397298) b!616612))

(assert (= (and b!616597 c!70016) b!616593))

(assert (= (and b!616597 (not c!70016)) b!616601))

(assert (= (and b!616597 c!70018) b!616591))

(assert (= (and b!616597 (not c!70018)) b!616595))

(assert (= (and b!616591 res!397293) b!616607))

(assert (= (and b!616607 (not res!397307)) b!616590))

(assert (= (and b!616590 res!397304) b!616596))

(assert (= (and b!616591 c!70017) b!616613))

(assert (= (and b!616591 (not c!70017)) b!616608))

(assert (= (and b!616591 c!70019) b!616603))

(assert (= (and b!616591 (not c!70019)) b!616602))

(assert (= (and b!616603 res!397303) b!616610))

(assert (= (and b!616597 (not res!397297)) b!616599))

(declare-fun m!592789 () Bool)

(assert (=> b!616589 m!592789))

(declare-fun m!592791 () Bool)

(assert (=> b!616613 m!592791))

(declare-fun m!592793 () Bool)

(assert (=> b!616613 m!592793))

(declare-fun m!592795 () Bool)

(assert (=> b!616613 m!592795))

(declare-fun m!592797 () Bool)

(assert (=> b!616613 m!592797))

(assert (=> b!616613 m!592795))

(declare-fun m!592799 () Bool)

(assert (=> b!616613 m!592799))

(declare-fun m!592801 () Bool)

(assert (=> b!616613 m!592801))

(declare-fun m!592803 () Bool)

(assert (=> b!616613 m!592803))

(assert (=> b!616613 m!592795))

(assert (=> b!616613 m!592795))

(declare-fun m!592805 () Bool)

(assert (=> b!616613 m!592805))

(declare-fun m!592807 () Bool)

(assert (=> b!616594 m!592807))

(declare-fun m!592809 () Bool)

(assert (=> b!616611 m!592809))

(declare-fun m!592811 () Bool)

(assert (=> b!616611 m!592811))

(assert (=> b!616590 m!592795))

(assert (=> b!616590 m!592795))

(declare-fun m!592813 () Bool)

(assert (=> b!616590 m!592813))

(assert (=> b!616591 m!592809))

(declare-fun m!592815 () Bool)

(assert (=> b!616591 m!592815))

(assert (=> b!616591 m!592795))

(assert (=> b!616609 m!592795))

(assert (=> b!616609 m!592795))

(declare-fun m!592817 () Bool)

(assert (=> b!616609 m!592817))

(declare-fun m!592819 () Bool)

(assert (=> b!616597 m!592819))

(declare-fun m!592821 () Bool)

(assert (=> b!616597 m!592821))

(declare-fun m!592823 () Bool)

(assert (=> b!616597 m!592823))

(assert (=> b!616597 m!592809))

(declare-fun m!592825 () Bool)

(assert (=> b!616597 m!592825))

(declare-fun m!592827 () Bool)

(assert (=> b!616597 m!592827))

(assert (=> b!616597 m!592795))

(declare-fun m!592829 () Bool)

(assert (=> b!616597 m!592829))

(assert (=> b!616597 m!592795))

(declare-fun m!592831 () Bool)

(assert (=> b!616606 m!592831))

(assert (=> b!616606 m!592795))

(assert (=> b!616606 m!592795))

(declare-fun m!592833 () Bool)

(assert (=> b!616606 m!592833))

(declare-fun m!592835 () Bool)

(assert (=> b!616604 m!592835))

(assert (=> b!616596 m!592795))

(assert (=> b!616596 m!592795))

(declare-fun m!592837 () Bool)

(assert (=> b!616596 m!592837))

(assert (=> b!616610 m!592795))

(assert (=> b!616610 m!592795))

(assert (=> b!616610 m!592837))

(declare-fun m!592839 () Bool)

(assert (=> b!616600 m!592839))

(assert (=> b!616599 m!592809))

(assert (=> b!616599 m!592815))

(declare-fun m!592841 () Bool)

(assert (=> b!616605 m!592841))

(declare-fun m!592843 () Bool)

(assert (=> start!56048 m!592843))

(declare-fun m!592845 () Bool)

(assert (=> start!56048 m!592845))

(declare-fun m!592847 () Bool)

(assert (=> b!616598 m!592847))

(assert (=> b!616603 m!592791))

(assert (=> b!616603 m!592795))

(declare-fun m!592849 () Bool)

(assert (=> b!616603 m!592849))

(assert (=> b!616603 m!592795))

(declare-fun m!592851 () Bool)

(assert (=> b!616603 m!592851))

(assert (=> b!616603 m!592795))

(declare-fun m!592853 () Bool)

(assert (=> b!616603 m!592853))

(declare-fun m!592855 () Bool)

(assert (=> b!616603 m!592855))

(assert (=> b!616603 m!592803))

(assert (=> b!616603 m!592795))

(declare-fun m!592857 () Bool)

(assert (=> b!616603 m!592857))

(assert (=> b!616603 m!592795))

(assert (=> b!616603 m!592813))

(check-sat (not b!616594) (not b!616589) (not b!616590) (not b!616613) (not b!616609) (not b!616596) (not b!616606) (not b!616610) (not b!616605) (not b!616598) (not b!616604) (not start!56048) (not b!616603) (not b!616597))
(check-sat)
