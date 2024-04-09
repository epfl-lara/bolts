; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56768 () Bool)

(assert start!56768)

(declare-fun b!628746 () Bool)

(declare-fun res!406486 () Bool)

(declare-fun e!359632 () Bool)

(assert (=> b!628746 (=> (not res!406486) (not e!359632))))

(declare-datatypes ((array!37970 0))(
  ( (array!37971 (arr!18220 (Array (_ BitVec 32) (_ BitVec 64))) (size!18584 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37970)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628746 (= res!406486 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628747 () Bool)

(declare-fun res!406491 () Bool)

(declare-fun e!359634 () Bool)

(assert (=> b!628747 (=> (not res!406491) (not e!359634))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!628747 (= res!406491 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18220 a!2986) index!984) (select (arr!18220 a!2986) j!136))) (not (= (select (arr!18220 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628748 () Bool)

(declare-fun e!359633 () Bool)

(assert (=> b!628748 (= e!359633 e!359634)))

(declare-fun res!406482 () Bool)

(assert (=> b!628748 (=> (not res!406482) (not e!359634))))

(declare-datatypes ((SeekEntryResult!6667 0))(
  ( (MissingZero!6667 (index!28951 (_ BitVec 32))) (Found!6667 (index!28952 (_ BitVec 32))) (Intermediate!6667 (undefined!7479 Bool) (index!28953 (_ BitVec 32)) (x!57710 (_ BitVec 32))) (Undefined!6667) (MissingVacant!6667 (index!28954 (_ BitVec 32))) )
))
(declare-fun lt!290546 () SeekEntryResult!6667)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37970 (_ BitVec 32)) SeekEntryResult!6667)

(assert (=> b!628748 (= res!406482 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18220 a!2986) j!136) a!2986 mask!3053) lt!290546))))

(assert (=> b!628748 (= lt!290546 (Found!6667 j!136))))

(declare-fun b!628749 () Bool)

(declare-fun res!406483 () Bool)

(assert (=> b!628749 (=> (not res!406483) (not e!359633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37970 (_ BitVec 32)) Bool)

(assert (=> b!628749 (= res!406483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628750 () Bool)

(declare-fun res!406485 () Bool)

(assert (=> b!628750 (=> (not res!406485) (not e!359632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628750 (= res!406485 (validKeyInArray!0 k0!1786))))

(declare-fun b!628751 () Bool)

(declare-fun e!359635 () Bool)

(assert (=> b!628751 (= e!359634 e!359635)))

(declare-fun res!406488 () Bool)

(assert (=> b!628751 (=> (not res!406488) (not e!359635))))

(declare-fun lt!290545 () (_ BitVec 32))

(assert (=> b!628751 (= res!406488 (and (bvsge lt!290545 #b00000000000000000000000000000000) (bvslt lt!290545 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628751 (= lt!290545 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628753 () Bool)

(declare-fun res!406492 () Bool)

(assert (=> b!628753 (=> (not res!406492) (not e!359632))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628753 (= res!406492 (and (= (size!18584 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18584 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18584 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628754 () Bool)

(declare-fun res!406490 () Bool)

(assert (=> b!628754 (=> (not res!406490) (not e!359632))))

(assert (=> b!628754 (= res!406490 (validKeyInArray!0 (select (arr!18220 a!2986) j!136)))))

(declare-fun b!628755 () Bool)

(declare-fun res!406484 () Bool)

(assert (=> b!628755 (=> (not res!406484) (not e!359633))))

(declare-datatypes ((List!12314 0))(
  ( (Nil!12311) (Cons!12310 (h!13355 (_ BitVec 64)) (t!18550 List!12314)) )
))
(declare-fun arrayNoDuplicates!0 (array!37970 (_ BitVec 32) List!12314) Bool)

(assert (=> b!628755 (= res!406484 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12311))))

(declare-fun res!406489 () Bool)

(assert (=> start!56768 (=> (not res!406489) (not e!359632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56768 (= res!406489 (validMask!0 mask!3053))))

(assert (=> start!56768 e!359632))

(assert (=> start!56768 true))

(declare-fun array_inv!13994 (array!37970) Bool)

(assert (=> start!56768 (array_inv!13994 a!2986)))

(declare-fun b!628752 () Bool)

(assert (=> b!628752 (= e!359635 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290545 vacantSpotIndex!68 (select (arr!18220 a!2986) j!136) a!2986 mask!3053) lt!290546)))))

(declare-fun b!628756 () Bool)

(assert (=> b!628756 (= e!359632 e!359633)))

(declare-fun res!406487 () Bool)

(assert (=> b!628756 (=> (not res!406487) (not e!359633))))

(declare-fun lt!290547 () SeekEntryResult!6667)

(assert (=> b!628756 (= res!406487 (or (= lt!290547 (MissingZero!6667 i!1108)) (= lt!290547 (MissingVacant!6667 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37970 (_ BitVec 32)) SeekEntryResult!6667)

(assert (=> b!628756 (= lt!290547 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!628757 () Bool)

(declare-fun res!406493 () Bool)

(assert (=> b!628757 (=> (not res!406493) (not e!359633))))

(assert (=> b!628757 (= res!406493 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18220 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18220 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56768 res!406489) b!628753))

(assert (= (and b!628753 res!406492) b!628754))

(assert (= (and b!628754 res!406490) b!628750))

(assert (= (and b!628750 res!406485) b!628746))

(assert (= (and b!628746 res!406486) b!628756))

(assert (= (and b!628756 res!406487) b!628749))

(assert (= (and b!628749 res!406483) b!628755))

(assert (= (and b!628755 res!406484) b!628757))

(assert (= (and b!628757 res!406493) b!628748))

(assert (= (and b!628748 res!406482) b!628747))

(assert (= (and b!628747 res!406491) b!628751))

(assert (= (and b!628751 res!406488) b!628752))

(declare-fun m!603905 () Bool)

(assert (=> b!628747 m!603905))

(declare-fun m!603907 () Bool)

(assert (=> b!628747 m!603907))

(declare-fun m!603909 () Bool)

(assert (=> b!628756 m!603909))

(assert (=> b!628748 m!603907))

(assert (=> b!628748 m!603907))

(declare-fun m!603911 () Bool)

(assert (=> b!628748 m!603911))

(declare-fun m!603913 () Bool)

(assert (=> b!628750 m!603913))

(declare-fun m!603915 () Bool)

(assert (=> b!628751 m!603915))

(declare-fun m!603917 () Bool)

(assert (=> start!56768 m!603917))

(declare-fun m!603919 () Bool)

(assert (=> start!56768 m!603919))

(declare-fun m!603921 () Bool)

(assert (=> b!628757 m!603921))

(declare-fun m!603923 () Bool)

(assert (=> b!628757 m!603923))

(declare-fun m!603925 () Bool)

(assert (=> b!628757 m!603925))

(declare-fun m!603927 () Bool)

(assert (=> b!628746 m!603927))

(declare-fun m!603929 () Bool)

(assert (=> b!628749 m!603929))

(assert (=> b!628754 m!603907))

(assert (=> b!628754 m!603907))

(declare-fun m!603931 () Bool)

(assert (=> b!628754 m!603931))

(declare-fun m!603933 () Bool)

(assert (=> b!628755 m!603933))

(assert (=> b!628752 m!603907))

(assert (=> b!628752 m!603907))

(declare-fun m!603935 () Bool)

(assert (=> b!628752 m!603935))

(check-sat (not b!628750) (not b!628749) (not b!628748) (not b!628754) (not b!628752) (not b!628755) (not b!628756) (not b!628746) (not start!56768) (not b!628751))
(check-sat)
(get-model)

(declare-fun bm!33266 () Bool)

(declare-fun call!33269 () Bool)

(declare-fun c!71501 () Bool)

(assert (=> bm!33266 (= call!33269 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71501 (Cons!12310 (select (arr!18220 a!2986) #b00000000000000000000000000000000) Nil!12311) Nil!12311)))))

(declare-fun b!628804 () Bool)

(declare-fun e!359662 () Bool)

(declare-fun contains!3086 (List!12314 (_ BitVec 64)) Bool)

(assert (=> b!628804 (= e!359662 (contains!3086 Nil!12311 (select (arr!18220 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628805 () Bool)

(declare-fun e!359659 () Bool)

(assert (=> b!628805 (= e!359659 call!33269)))

(declare-fun b!628806 () Bool)

(declare-fun e!359661 () Bool)

(declare-fun e!359660 () Bool)

(assert (=> b!628806 (= e!359661 e!359660)))

(declare-fun res!406537 () Bool)

(assert (=> b!628806 (=> (not res!406537) (not e!359660))))

(assert (=> b!628806 (= res!406537 (not e!359662))))

(declare-fun res!406538 () Bool)

(assert (=> b!628806 (=> (not res!406538) (not e!359662))))

(assert (=> b!628806 (= res!406538 (validKeyInArray!0 (select (arr!18220 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628807 () Bool)

(assert (=> b!628807 (= e!359659 call!33269)))

(declare-fun b!628808 () Bool)

(assert (=> b!628808 (= e!359660 e!359659)))

(assert (=> b!628808 (= c!71501 (validKeyInArray!0 (select (arr!18220 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88927 () Bool)

(declare-fun res!406536 () Bool)

(assert (=> d!88927 (=> res!406536 e!359661)))

(assert (=> d!88927 (= res!406536 (bvsge #b00000000000000000000000000000000 (size!18584 a!2986)))))

(assert (=> d!88927 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12311) e!359661)))

(assert (= (and d!88927 (not res!406536)) b!628806))

(assert (= (and b!628806 res!406538) b!628804))

(assert (= (and b!628806 res!406537) b!628808))

(assert (= (and b!628808 c!71501) b!628805))

(assert (= (and b!628808 (not c!71501)) b!628807))

(assert (= (or b!628805 b!628807) bm!33266))

(declare-fun m!603969 () Bool)

(assert (=> bm!33266 m!603969))

(declare-fun m!603971 () Bool)

(assert (=> bm!33266 m!603971))

(assert (=> b!628804 m!603969))

(assert (=> b!628804 m!603969))

(declare-fun m!603973 () Bool)

(assert (=> b!628804 m!603973))

(assert (=> b!628806 m!603969))

(assert (=> b!628806 m!603969))

(declare-fun m!603975 () Bool)

(assert (=> b!628806 m!603975))

(assert (=> b!628808 m!603969))

(assert (=> b!628808 m!603969))

(assert (=> b!628808 m!603975))

(assert (=> b!628755 d!88927))

(declare-fun d!88929 () Bool)

(assert (=> d!88929 (= (validKeyInArray!0 (select (arr!18220 a!2986) j!136)) (and (not (= (select (arr!18220 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18220 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628754 d!88929))

(declare-fun b!628817 () Bool)

(declare-fun e!359671 () Bool)

(declare-fun e!359670 () Bool)

(assert (=> b!628817 (= e!359671 e!359670)))

(declare-fun lt!290563 () (_ BitVec 64))

(assert (=> b!628817 (= lt!290563 (select (arr!18220 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21084 0))(
  ( (Unit!21085) )
))
(declare-fun lt!290565 () Unit!21084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37970 (_ BitVec 64) (_ BitVec 32)) Unit!21084)

(assert (=> b!628817 (= lt!290565 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290563 #b00000000000000000000000000000000))))

(assert (=> b!628817 (arrayContainsKey!0 a!2986 lt!290563 #b00000000000000000000000000000000)))

(declare-fun lt!290564 () Unit!21084)

(assert (=> b!628817 (= lt!290564 lt!290565)))

(declare-fun res!406544 () Bool)

(assert (=> b!628817 (= res!406544 (= (seekEntryOrOpen!0 (select (arr!18220 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6667 #b00000000000000000000000000000000)))))

(assert (=> b!628817 (=> (not res!406544) (not e!359670))))

(declare-fun b!628818 () Bool)

(declare-fun call!33272 () Bool)

(assert (=> b!628818 (= e!359671 call!33272)))

(declare-fun b!628820 () Bool)

(assert (=> b!628820 (= e!359670 call!33272)))

(declare-fun bm!33269 () Bool)

(assert (=> bm!33269 (= call!33272 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!88931 () Bool)

(declare-fun res!406543 () Bool)

(declare-fun e!359669 () Bool)

(assert (=> d!88931 (=> res!406543 e!359669)))

(assert (=> d!88931 (= res!406543 (bvsge #b00000000000000000000000000000000 (size!18584 a!2986)))))

(assert (=> d!88931 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!359669)))

(declare-fun b!628819 () Bool)

(assert (=> b!628819 (= e!359669 e!359671)))

(declare-fun c!71504 () Bool)

(assert (=> b!628819 (= c!71504 (validKeyInArray!0 (select (arr!18220 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88931 (not res!406543)) b!628819))

(assert (= (and b!628819 c!71504) b!628817))

(assert (= (and b!628819 (not c!71504)) b!628818))

(assert (= (and b!628817 res!406544) b!628820))

(assert (= (or b!628820 b!628818) bm!33269))

(assert (=> b!628817 m!603969))

(declare-fun m!603977 () Bool)

(assert (=> b!628817 m!603977))

(declare-fun m!603979 () Bool)

(assert (=> b!628817 m!603979))

(assert (=> b!628817 m!603969))

(declare-fun m!603981 () Bool)

(assert (=> b!628817 m!603981))

(declare-fun m!603983 () Bool)

(assert (=> bm!33269 m!603983))

(assert (=> b!628819 m!603969))

(assert (=> b!628819 m!603969))

(assert (=> b!628819 m!603975))

(assert (=> b!628749 d!88931))

(declare-fun b!628869 () Bool)

(declare-fun e!359704 () SeekEntryResult!6667)

(declare-fun lt!290587 () SeekEntryResult!6667)

(assert (=> b!628869 (= e!359704 (MissingZero!6667 (index!28953 lt!290587)))))

(declare-fun b!628870 () Bool)

(declare-fun e!359703 () SeekEntryResult!6667)

(declare-fun e!359705 () SeekEntryResult!6667)

(assert (=> b!628870 (= e!359703 e!359705)))

(declare-fun lt!290589 () (_ BitVec 64))

(assert (=> b!628870 (= lt!290589 (select (arr!18220 a!2986) (index!28953 lt!290587)))))

(declare-fun c!71522 () Bool)

(assert (=> b!628870 (= c!71522 (= lt!290589 k0!1786))))

(declare-fun b!628871 () Bool)

(declare-fun c!71523 () Bool)

(assert (=> b!628871 (= c!71523 (= lt!290589 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628871 (= e!359705 e!359704)))

(declare-fun b!628872 () Bool)

(assert (=> b!628872 (= e!359704 (seekKeyOrZeroReturnVacant!0 (x!57710 lt!290587) (index!28953 lt!290587) (index!28953 lt!290587) k0!1786 a!2986 mask!3053))))

(declare-fun b!628873 () Bool)

(assert (=> b!628873 (= e!359705 (Found!6667 (index!28953 lt!290587)))))

(declare-fun d!88937 () Bool)

(declare-fun lt!290588 () SeekEntryResult!6667)

(get-info :version)

(assert (=> d!88937 (and (or ((_ is Undefined!6667) lt!290588) (not ((_ is Found!6667) lt!290588)) (and (bvsge (index!28952 lt!290588) #b00000000000000000000000000000000) (bvslt (index!28952 lt!290588) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290588) ((_ is Found!6667) lt!290588) (not ((_ is MissingZero!6667) lt!290588)) (and (bvsge (index!28951 lt!290588) #b00000000000000000000000000000000) (bvslt (index!28951 lt!290588) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290588) ((_ is Found!6667) lt!290588) ((_ is MissingZero!6667) lt!290588) (not ((_ is MissingVacant!6667) lt!290588)) (and (bvsge (index!28954 lt!290588) #b00000000000000000000000000000000) (bvslt (index!28954 lt!290588) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290588) (ite ((_ is Found!6667) lt!290588) (= (select (arr!18220 a!2986) (index!28952 lt!290588)) k0!1786) (ite ((_ is MissingZero!6667) lt!290588) (= (select (arr!18220 a!2986) (index!28951 lt!290588)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6667) lt!290588) (= (select (arr!18220 a!2986) (index!28954 lt!290588)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88937 (= lt!290588 e!359703)))

(declare-fun c!71524 () Bool)

(assert (=> d!88937 (= c!71524 (and ((_ is Intermediate!6667) lt!290587) (undefined!7479 lt!290587)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37970 (_ BitVec 32)) SeekEntryResult!6667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88937 (= lt!290587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88937 (validMask!0 mask!3053)))

(assert (=> d!88937 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!290588)))

(declare-fun b!628874 () Bool)

(assert (=> b!628874 (= e!359703 Undefined!6667)))

(assert (= (and d!88937 c!71524) b!628874))

(assert (= (and d!88937 (not c!71524)) b!628870))

(assert (= (and b!628870 c!71522) b!628873))

(assert (= (and b!628870 (not c!71522)) b!628871))

(assert (= (and b!628871 c!71523) b!628869))

(assert (= (and b!628871 (not c!71523)) b!628872))

(declare-fun m!604005 () Bool)

(assert (=> b!628870 m!604005))

(declare-fun m!604007 () Bool)

(assert (=> b!628872 m!604007))

(declare-fun m!604009 () Bool)

(assert (=> d!88937 m!604009))

(declare-fun m!604011 () Bool)

(assert (=> d!88937 m!604011))

(declare-fun m!604013 () Bool)

(assert (=> d!88937 m!604013))

(declare-fun m!604015 () Bool)

(assert (=> d!88937 m!604015))

(assert (=> d!88937 m!603917))

(assert (=> d!88937 m!604009))

(declare-fun m!604017 () Bool)

(assert (=> d!88937 m!604017))

(assert (=> b!628756 d!88937))

(declare-fun d!88955 () Bool)

(declare-fun lt!290595 () (_ BitVec 32))

(assert (=> d!88955 (and (bvsge lt!290595 #b00000000000000000000000000000000) (bvslt lt!290595 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88955 (= lt!290595 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88955 (validMask!0 mask!3053)))

(assert (=> d!88955 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290595)))

(declare-fun bs!18969 () Bool)

(assert (= bs!18969 d!88955))

(declare-fun m!604019 () Bool)

(assert (=> bs!18969 m!604019))

(assert (=> bs!18969 m!603917))

(assert (=> b!628751 d!88955))

(declare-fun d!88957 () Bool)

(assert (=> d!88957 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628750 d!88957))

(declare-fun b!628911 () Bool)

(declare-fun e!359726 () SeekEntryResult!6667)

(assert (=> b!628911 (= e!359726 Undefined!6667)))

(declare-fun b!628912 () Bool)

(declare-fun e!359727 () SeekEntryResult!6667)

(assert (=> b!628912 (= e!359727 (MissingVacant!6667 vacantSpotIndex!68))))

(declare-fun b!628913 () Bool)

(declare-fun e!359728 () SeekEntryResult!6667)

(assert (=> b!628913 (= e!359726 e!359728)))

(declare-fun lt!290610 () (_ BitVec 64))

(declare-fun c!71541 () Bool)

(assert (=> b!628913 (= c!71541 (= lt!290610 (select (arr!18220 a!2986) j!136)))))

(declare-fun b!628914 () Bool)

(declare-fun c!71543 () Bool)

(assert (=> b!628914 (= c!71543 (= lt!290610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628914 (= e!359728 e!359727)))

(declare-fun b!628915 () Bool)

(assert (=> b!628915 (= e!359728 (Found!6667 lt!290545))))

(declare-fun b!628916 () Bool)

(assert (=> b!628916 (= e!359727 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!290545 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18220 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!290609 () SeekEntryResult!6667)

(declare-fun d!88959 () Bool)

(assert (=> d!88959 (and (or ((_ is Undefined!6667) lt!290609) (not ((_ is Found!6667) lt!290609)) (and (bvsge (index!28952 lt!290609) #b00000000000000000000000000000000) (bvslt (index!28952 lt!290609) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290609) ((_ is Found!6667) lt!290609) (not ((_ is MissingVacant!6667) lt!290609)) (not (= (index!28954 lt!290609) vacantSpotIndex!68)) (and (bvsge (index!28954 lt!290609) #b00000000000000000000000000000000) (bvslt (index!28954 lt!290609) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290609) (ite ((_ is Found!6667) lt!290609) (= (select (arr!18220 a!2986) (index!28952 lt!290609)) (select (arr!18220 a!2986) j!136)) (and ((_ is MissingVacant!6667) lt!290609) (= (index!28954 lt!290609) vacantSpotIndex!68) (= (select (arr!18220 a!2986) (index!28954 lt!290609)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88959 (= lt!290609 e!359726)))

(declare-fun c!71542 () Bool)

(assert (=> d!88959 (= c!71542 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88959 (= lt!290610 (select (arr!18220 a!2986) lt!290545))))

(assert (=> d!88959 (validMask!0 mask!3053)))

(assert (=> d!88959 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290545 vacantSpotIndex!68 (select (arr!18220 a!2986) j!136) a!2986 mask!3053) lt!290609)))

(assert (= (and d!88959 c!71542) b!628911))

(assert (= (and d!88959 (not c!71542)) b!628913))

(assert (= (and b!628913 c!71541) b!628915))

(assert (= (and b!628913 (not c!71541)) b!628914))

(assert (= (and b!628914 c!71543) b!628912))

(assert (= (and b!628914 (not c!71543)) b!628916))

(declare-fun m!604043 () Bool)

(assert (=> b!628916 m!604043))

(assert (=> b!628916 m!604043))

(assert (=> b!628916 m!603907))

(declare-fun m!604047 () Bool)

(assert (=> b!628916 m!604047))

(declare-fun m!604049 () Bool)

(assert (=> d!88959 m!604049))

(declare-fun m!604051 () Bool)

(assert (=> d!88959 m!604051))

(declare-fun m!604053 () Bool)

(assert (=> d!88959 m!604053))

(assert (=> d!88959 m!603917))

(assert (=> b!628752 d!88959))

(declare-fun d!88965 () Bool)

(declare-fun res!406567 () Bool)

(declare-fun e!359739 () Bool)

(assert (=> d!88965 (=> res!406567 e!359739)))

(assert (=> d!88965 (= res!406567 (= (select (arr!18220 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88965 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!359739)))

(declare-fun b!628933 () Bool)

(declare-fun e!359740 () Bool)

(assert (=> b!628933 (= e!359739 e!359740)))

(declare-fun res!406568 () Bool)

(assert (=> b!628933 (=> (not res!406568) (not e!359740))))

(assert (=> b!628933 (= res!406568 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18584 a!2986)))))

(declare-fun b!628934 () Bool)

(assert (=> b!628934 (= e!359740 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88965 (not res!406567)) b!628933))

(assert (= (and b!628933 res!406568) b!628934))

(assert (=> d!88965 m!603969))

(declare-fun m!604055 () Bool)

(assert (=> b!628934 m!604055))

(assert (=> b!628746 d!88965))

(declare-fun d!88967 () Bool)

(assert (=> d!88967 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56768 d!88967))

(declare-fun d!88977 () Bool)

(assert (=> d!88977 (= (array_inv!13994 a!2986) (bvsge (size!18584 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56768 d!88977))

(declare-fun b!628962 () Bool)

(declare-fun e!359759 () SeekEntryResult!6667)

(assert (=> b!628962 (= e!359759 Undefined!6667)))

(declare-fun b!628963 () Bool)

(declare-fun e!359760 () SeekEntryResult!6667)

(assert (=> b!628963 (= e!359760 (MissingVacant!6667 vacantSpotIndex!68))))

(declare-fun b!628964 () Bool)

(declare-fun e!359761 () SeekEntryResult!6667)

(assert (=> b!628964 (= e!359759 e!359761)))

(declare-fun c!71559 () Bool)

(declare-fun lt!290623 () (_ BitVec 64))

(assert (=> b!628964 (= c!71559 (= lt!290623 (select (arr!18220 a!2986) j!136)))))

(declare-fun b!628965 () Bool)

(declare-fun c!71561 () Bool)

(assert (=> b!628965 (= c!71561 (= lt!290623 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628965 (= e!359761 e!359760)))

(declare-fun b!628966 () Bool)

(assert (=> b!628966 (= e!359761 (Found!6667 index!984))))

(declare-fun b!628967 () Bool)

(assert (=> b!628967 (= e!359760 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18220 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!88979 () Bool)

(declare-fun lt!290622 () SeekEntryResult!6667)

(assert (=> d!88979 (and (or ((_ is Undefined!6667) lt!290622) (not ((_ is Found!6667) lt!290622)) (and (bvsge (index!28952 lt!290622) #b00000000000000000000000000000000) (bvslt (index!28952 lt!290622) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290622) ((_ is Found!6667) lt!290622) (not ((_ is MissingVacant!6667) lt!290622)) (not (= (index!28954 lt!290622) vacantSpotIndex!68)) (and (bvsge (index!28954 lt!290622) #b00000000000000000000000000000000) (bvslt (index!28954 lt!290622) (size!18584 a!2986)))) (or ((_ is Undefined!6667) lt!290622) (ite ((_ is Found!6667) lt!290622) (= (select (arr!18220 a!2986) (index!28952 lt!290622)) (select (arr!18220 a!2986) j!136)) (and ((_ is MissingVacant!6667) lt!290622) (= (index!28954 lt!290622) vacantSpotIndex!68) (= (select (arr!18220 a!2986) (index!28954 lt!290622)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88979 (= lt!290622 e!359759)))

(declare-fun c!71560 () Bool)

(assert (=> d!88979 (= c!71560 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88979 (= lt!290623 (select (arr!18220 a!2986) index!984))))

(assert (=> d!88979 (validMask!0 mask!3053)))

(assert (=> d!88979 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18220 a!2986) j!136) a!2986 mask!3053) lt!290622)))

(assert (= (and d!88979 c!71560) b!628962))

(assert (= (and d!88979 (not c!71560)) b!628964))

(assert (= (and b!628964 c!71559) b!628966))

(assert (= (and b!628964 (not c!71559)) b!628965))

(assert (= (and b!628965 c!71561) b!628963))

(assert (= (and b!628965 (not c!71561)) b!628967))

(assert (=> b!628967 m!603915))

(assert (=> b!628967 m!603915))

(assert (=> b!628967 m!603907))

(declare-fun m!604081 () Bool)

(assert (=> b!628967 m!604081))

(declare-fun m!604083 () Bool)

(assert (=> d!88979 m!604083))

(declare-fun m!604085 () Bool)

(assert (=> d!88979 m!604085))

(assert (=> d!88979 m!603905))

(assert (=> d!88979 m!603917))

(assert (=> b!628748 d!88979))

(check-sat (not d!88979) (not b!628916) (not b!628817) (not b!628967) (not bm!33266) (not d!88937) (not d!88959) (not b!628819) (not b!628806) (not bm!33269) (not b!628808) (not d!88955) (not b!628804) (not b!628872) (not b!628934))
(check-sat)
