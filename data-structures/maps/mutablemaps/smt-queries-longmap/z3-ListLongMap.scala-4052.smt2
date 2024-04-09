; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55550 () Bool)

(assert start!55550)

(declare-fun b!606900 () Bool)

(declare-fun e!347543 () Bool)

(declare-fun e!347551 () Bool)

(assert (=> b!606900 (= e!347543 e!347551)))

(declare-fun res!389953 () Bool)

(assert (=> b!606900 (=> (not res!389953) (not e!347551))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37244 0))(
  ( (array!37245 (arr!17869 (Array (_ BitVec 32) (_ BitVec 64))) (size!18233 (_ BitVec 32))) )
))
(declare-fun lt!277086 () array!37244)

(declare-fun a!2986 () array!37244)

(declare-fun arrayContainsKey!0 (array!37244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!606900 (= res!389953 (arrayContainsKey!0 lt!277086 (select (arr!17869 a!2986) j!136) j!136))))

(declare-fun b!606901 () Bool)

(declare-fun res!389952 () Bool)

(declare-fun e!347542 () Bool)

(assert (=> b!606901 (=> res!389952 e!347542)))

(declare-datatypes ((List!11963 0))(
  ( (Nil!11960) (Cons!11959 (h!13004 (_ BitVec 64)) (t!18199 List!11963)) )
))
(declare-fun contains!3009 (List!11963 (_ BitVec 64)) Bool)

(assert (=> b!606901 (= res!389952 (contains!3009 Nil!11960 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606902 () Bool)

(declare-fun res!389963 () Bool)

(assert (=> b!606902 (=> res!389963 e!347542)))

(assert (=> b!606902 (= res!389963 (contains!3009 Nil!11960 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606903 () Bool)

(declare-fun res!389960 () Bool)

(declare-fun e!347544 () Bool)

(assert (=> b!606903 (=> (not res!389960) (not e!347544))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!606903 (= res!389960 (validKeyInArray!0 k0!1786))))

(declare-fun b!606904 () Bool)

(declare-datatypes ((Unit!19324 0))(
  ( (Unit!19325) )
))
(declare-fun e!347541 () Unit!19324)

(declare-fun Unit!19326 () Unit!19324)

(assert (=> b!606904 (= e!347541 Unit!19326)))

(declare-fun e!347552 () Bool)

(declare-fun b!606905 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!606905 (= e!347552 (arrayContainsKey!0 lt!277086 (select (arr!17869 a!2986) j!136) index!984))))

(declare-fun b!606906 () Bool)

(declare-fun e!347548 () Bool)

(declare-fun e!347553 () Bool)

(assert (=> b!606906 (= e!347548 (not e!347553))))

(declare-fun res!389950 () Bool)

(assert (=> b!606906 (=> res!389950 e!347553)))

(declare-datatypes ((SeekEntryResult!6316 0))(
  ( (MissingZero!6316 (index!27538 (_ BitVec 32))) (Found!6316 (index!27539 (_ BitVec 32))) (Intermediate!6316 (undefined!7128 Bool) (index!27540 (_ BitVec 32)) (x!56378 (_ BitVec 32))) (Undefined!6316) (MissingVacant!6316 (index!27541 (_ BitVec 32))) )
))
(declare-fun lt!277081 () SeekEntryResult!6316)

(assert (=> b!606906 (= res!389950 (not (= lt!277081 (Found!6316 index!984))))))

(declare-fun lt!277079 () Unit!19324)

(assert (=> b!606906 (= lt!277079 e!347541)))

(declare-fun c!68846 () Bool)

(assert (=> b!606906 (= c!68846 (= lt!277081 Undefined!6316))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!277073 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37244 (_ BitVec 32)) SeekEntryResult!6316)

(assert (=> b!606906 (= lt!277081 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277073 lt!277086 mask!3053))))

(declare-fun e!347550 () Bool)

(assert (=> b!606906 e!347550))

(declare-fun res!389946 () Bool)

(assert (=> b!606906 (=> (not res!389946) (not e!347550))))

(declare-fun lt!277071 () (_ BitVec 32))

(declare-fun lt!277070 () SeekEntryResult!6316)

(assert (=> b!606906 (= res!389946 (= lt!277070 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277071 vacantSpotIndex!68 lt!277073 lt!277086 mask!3053)))))

(assert (=> b!606906 (= lt!277070 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277071 vacantSpotIndex!68 (select (arr!17869 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!606906 (= lt!277073 (select (store (arr!17869 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277075 () Unit!19324)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37244 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19324)

(assert (=> b!606906 (= lt!277075 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277071 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!606906 (= lt!277071 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!606907 () Bool)

(declare-fun res!389962 () Bool)

(assert (=> b!606907 (=> (not res!389962) (not e!347544))))

(assert (=> b!606907 (= res!389962 (validKeyInArray!0 (select (arr!17869 a!2986) j!136)))))

(declare-fun res!389966 () Bool)

(assert (=> start!55550 (=> (not res!389966) (not e!347544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55550 (= res!389966 (validMask!0 mask!3053))))

(assert (=> start!55550 e!347544))

(assert (=> start!55550 true))

(declare-fun array_inv!13643 (array!37244) Bool)

(assert (=> start!55550 (array_inv!13643 a!2986)))

(declare-fun b!606908 () Bool)

(declare-fun res!389964 () Bool)

(declare-fun e!347540 () Bool)

(assert (=> b!606908 (=> (not res!389964) (not e!347540))))

(declare-fun arrayNoDuplicates!0 (array!37244 (_ BitVec 32) List!11963) Bool)

(assert (=> b!606908 (= res!389964 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11960))))

(declare-fun b!606909 () Bool)

(declare-fun e!347554 () Bool)

(assert (=> b!606909 (= e!347554 e!347542)))

(declare-fun res!389944 () Bool)

(assert (=> b!606909 (=> res!389944 e!347542)))

(assert (=> b!606909 (= res!389944 (or (bvsge (size!18233 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18233 a!2986))))))

(assert (=> b!606909 (arrayContainsKey!0 lt!277086 (select (arr!17869 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277084 () Unit!19324)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37244 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19324)

(assert (=> b!606909 (= lt!277084 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277086 (select (arr!17869 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!606909 e!347552))

(declare-fun res!389958 () Bool)

(assert (=> b!606909 (=> (not res!389958) (not e!347552))))

(assert (=> b!606909 (= res!389958 (arrayContainsKey!0 lt!277086 (select (arr!17869 a!2986) j!136) j!136))))

(declare-fun b!606910 () Bool)

(declare-fun Unit!19327 () Unit!19324)

(assert (=> b!606910 (= e!347541 Unit!19327)))

(assert (=> b!606910 false))

(declare-fun b!606911 () Bool)

(declare-fun e!347545 () Bool)

(assert (=> b!606911 (= e!347545 e!347554)))

(declare-fun res!389965 () Bool)

(assert (=> b!606911 (=> res!389965 e!347554)))

(assert (=> b!606911 (= res!389965 (bvsge index!984 j!136))))

(declare-fun lt!277085 () Unit!19324)

(declare-fun e!347546 () Unit!19324)

(assert (=> b!606911 (= lt!277085 e!347546)))

(declare-fun c!68845 () Bool)

(assert (=> b!606911 (= c!68845 (bvslt j!136 index!984))))

(declare-fun b!606912 () Bool)

(declare-fun e!347547 () Bool)

(assert (=> b!606912 (= e!347547 e!347543)))

(declare-fun res!389945 () Bool)

(assert (=> b!606912 (=> res!389945 e!347543)))

(declare-fun lt!277080 () (_ BitVec 64))

(assert (=> b!606912 (= res!389945 (or (not (= (select (arr!17869 a!2986) j!136) lt!277073)) (not (= (select (arr!17869 a!2986) j!136) lt!277080)) (bvsge j!136 index!984)))))

(declare-fun b!606913 () Bool)

(declare-fun e!347539 () Bool)

(assert (=> b!606913 (= e!347539 e!347548)))

(declare-fun res!389948 () Bool)

(assert (=> b!606913 (=> (not res!389948) (not e!347548))))

(declare-fun lt!277072 () SeekEntryResult!6316)

(assert (=> b!606913 (= res!389948 (and (= lt!277072 (Found!6316 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17869 a!2986) index!984) (select (arr!17869 a!2986) j!136))) (not (= (select (arr!17869 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!606913 (= lt!277072 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17869 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606914 () Bool)

(declare-fun res!389949 () Bool)

(assert (=> b!606914 (=> (not res!389949) (not e!347540))))

(assert (=> b!606914 (= res!389949 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17869 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606915 () Bool)

(assert (=> b!606915 (= e!347551 (arrayContainsKey!0 lt!277086 (select (arr!17869 a!2986) j!136) index!984))))

(declare-fun b!606916 () Bool)

(declare-fun res!389959 () Bool)

(assert (=> b!606916 (=> (not res!389959) (not e!347544))))

(assert (=> b!606916 (= res!389959 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!606917 () Bool)

(declare-fun res!389956 () Bool)

(assert (=> b!606917 (=> res!389956 e!347542)))

(declare-fun noDuplicate!311 (List!11963) Bool)

(assert (=> b!606917 (= res!389956 (not (noDuplicate!311 Nil!11960)))))

(declare-fun b!606918 () Bool)

(declare-fun Unit!19328 () Unit!19324)

(assert (=> b!606918 (= e!347546 Unit!19328)))

(declare-fun b!606919 () Bool)

(assert (=> b!606919 (= e!347550 (= lt!277072 lt!277070))))

(declare-fun b!606920 () Bool)

(declare-fun Unit!19329 () Unit!19324)

(assert (=> b!606920 (= e!347546 Unit!19329)))

(declare-fun lt!277076 () Unit!19324)

(assert (=> b!606920 (= lt!277076 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277086 (select (arr!17869 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!606920 (arrayContainsKey!0 lt!277086 (select (arr!17869 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277074 () Unit!19324)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37244 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11963) Unit!19324)

(assert (=> b!606920 (= lt!277074 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11960))))

(assert (=> b!606920 (arrayNoDuplicates!0 lt!277086 #b00000000000000000000000000000000 Nil!11960)))

(declare-fun lt!277078 () Unit!19324)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37244 (_ BitVec 32) (_ BitVec 32)) Unit!19324)

(assert (=> b!606920 (= lt!277078 (lemmaNoDuplicateFromThenFromBigger!0 lt!277086 #b00000000000000000000000000000000 j!136))))

(assert (=> b!606920 (arrayNoDuplicates!0 lt!277086 j!136 Nil!11960)))

(declare-fun lt!277077 () Unit!19324)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37244 (_ BitVec 64) (_ BitVec 32) List!11963) Unit!19324)

(assert (=> b!606920 (= lt!277077 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277086 (select (arr!17869 a!2986) j!136) j!136 Nil!11960))))

(assert (=> b!606920 false))

(declare-fun b!606921 () Bool)

(assert (=> b!606921 (= e!347540 e!347539)))

(declare-fun res!389961 () Bool)

(assert (=> b!606921 (=> (not res!389961) (not e!347539))))

(assert (=> b!606921 (= res!389961 (= (select (store (arr!17869 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606921 (= lt!277086 (array!37245 (store (arr!17869 a!2986) i!1108 k0!1786) (size!18233 a!2986)))))

(declare-fun b!606922 () Bool)

(declare-fun res!389957 () Bool)

(assert (=> b!606922 (=> (not res!389957) (not e!347544))))

(assert (=> b!606922 (= res!389957 (and (= (size!18233 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18233 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18233 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!606923 () Bool)

(declare-fun res!389955 () Bool)

(assert (=> b!606923 (=> (not res!389955) (not e!347540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37244 (_ BitVec 32)) Bool)

(assert (=> b!606923 (= res!389955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!606924 () Bool)

(assert (=> b!606924 (= e!347553 e!347545)))

(declare-fun res!389947 () Bool)

(assert (=> b!606924 (=> res!389947 e!347545)))

(assert (=> b!606924 (= res!389947 (or (not (= (select (arr!17869 a!2986) j!136) lt!277073)) (not (= (select (arr!17869 a!2986) j!136) lt!277080))))))

(assert (=> b!606924 e!347547))

(declare-fun res!389954 () Bool)

(assert (=> b!606924 (=> (not res!389954) (not e!347547))))

(assert (=> b!606924 (= res!389954 (= lt!277080 (select (arr!17869 a!2986) j!136)))))

(assert (=> b!606924 (= lt!277080 (select (store (arr!17869 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!606925 () Bool)

(assert (=> b!606925 (= e!347544 e!347540)))

(declare-fun res!389951 () Bool)

(assert (=> b!606925 (=> (not res!389951) (not e!347540))))

(declare-fun lt!277082 () SeekEntryResult!6316)

(assert (=> b!606925 (= res!389951 (or (= lt!277082 (MissingZero!6316 i!1108)) (= lt!277082 (MissingVacant!6316 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37244 (_ BitVec 32)) SeekEntryResult!6316)

(assert (=> b!606925 (= lt!277082 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!606926 () Bool)

(assert (=> b!606926 (= e!347542 true)))

(declare-fun lt!277083 () Bool)

(assert (=> b!606926 (= lt!277083 (contains!3009 Nil!11960 k0!1786))))

(assert (= (and start!55550 res!389966) b!606922))

(assert (= (and b!606922 res!389957) b!606907))

(assert (= (and b!606907 res!389962) b!606903))

(assert (= (and b!606903 res!389960) b!606916))

(assert (= (and b!606916 res!389959) b!606925))

(assert (= (and b!606925 res!389951) b!606923))

(assert (= (and b!606923 res!389955) b!606908))

(assert (= (and b!606908 res!389964) b!606914))

(assert (= (and b!606914 res!389949) b!606921))

(assert (= (and b!606921 res!389961) b!606913))

(assert (= (and b!606913 res!389948) b!606906))

(assert (= (and b!606906 res!389946) b!606919))

(assert (= (and b!606906 c!68846) b!606910))

(assert (= (and b!606906 (not c!68846)) b!606904))

(assert (= (and b!606906 (not res!389950)) b!606924))

(assert (= (and b!606924 res!389954) b!606912))

(assert (= (and b!606912 (not res!389945)) b!606900))

(assert (= (and b!606900 res!389953) b!606915))

(assert (= (and b!606924 (not res!389947)) b!606911))

(assert (= (and b!606911 c!68845) b!606920))

(assert (= (and b!606911 (not c!68845)) b!606918))

(assert (= (and b!606911 (not res!389965)) b!606909))

(assert (= (and b!606909 res!389958) b!606905))

(assert (= (and b!606909 (not res!389944)) b!606917))

(assert (= (and b!606917 (not res!389956)) b!606902))

(assert (= (and b!606902 (not res!389963)) b!606901))

(assert (= (and b!606901 (not res!389952)) b!606926))

(declare-fun m!583725 () Bool)

(assert (=> b!606924 m!583725))

(declare-fun m!583727 () Bool)

(assert (=> b!606924 m!583727))

(declare-fun m!583729 () Bool)

(assert (=> b!606924 m!583729))

(assert (=> b!606912 m!583725))

(declare-fun m!583731 () Bool)

(assert (=> b!606901 m!583731))

(declare-fun m!583733 () Bool)

(assert (=> b!606906 m!583733))

(declare-fun m!583735 () Bool)

(assert (=> b!606906 m!583735))

(assert (=> b!606906 m!583725))

(assert (=> b!606906 m!583727))

(assert (=> b!606906 m!583725))

(declare-fun m!583737 () Bool)

(assert (=> b!606906 m!583737))

(declare-fun m!583739 () Bool)

(assert (=> b!606906 m!583739))

(declare-fun m!583741 () Bool)

(assert (=> b!606906 m!583741))

(declare-fun m!583743 () Bool)

(assert (=> b!606906 m!583743))

(declare-fun m!583745 () Bool)

(assert (=> b!606925 m!583745))

(assert (=> b!606905 m!583725))

(assert (=> b!606905 m!583725))

(declare-fun m!583747 () Bool)

(assert (=> b!606905 m!583747))

(declare-fun m!583749 () Bool)

(assert (=> b!606923 m!583749))

(assert (=> b!606900 m!583725))

(assert (=> b!606900 m!583725))

(declare-fun m!583751 () Bool)

(assert (=> b!606900 m!583751))

(declare-fun m!583753 () Bool)

(assert (=> b!606914 m!583753))

(assert (=> b!606909 m!583725))

(assert (=> b!606909 m!583725))

(declare-fun m!583755 () Bool)

(assert (=> b!606909 m!583755))

(assert (=> b!606909 m!583725))

(declare-fun m!583757 () Bool)

(assert (=> b!606909 m!583757))

(assert (=> b!606909 m!583725))

(assert (=> b!606909 m!583751))

(declare-fun m!583759 () Bool)

(assert (=> b!606920 m!583759))

(assert (=> b!606920 m!583725))

(declare-fun m!583761 () Bool)

(assert (=> b!606920 m!583761))

(declare-fun m!583763 () Bool)

(assert (=> b!606920 m!583763))

(assert (=> b!606920 m!583725))

(declare-fun m!583765 () Bool)

(assert (=> b!606920 m!583765))

(declare-fun m!583767 () Bool)

(assert (=> b!606920 m!583767))

(assert (=> b!606920 m!583725))

(declare-fun m!583769 () Bool)

(assert (=> b!606920 m!583769))

(assert (=> b!606920 m!583725))

(declare-fun m!583771 () Bool)

(assert (=> b!606920 m!583771))

(declare-fun m!583773 () Bool)

(assert (=> start!55550 m!583773))

(declare-fun m!583775 () Bool)

(assert (=> start!55550 m!583775))

(declare-fun m!583777 () Bool)

(assert (=> b!606903 m!583777))

(assert (=> b!606907 m!583725))

(assert (=> b!606907 m!583725))

(declare-fun m!583779 () Bool)

(assert (=> b!606907 m!583779))

(declare-fun m!583781 () Bool)

(assert (=> b!606908 m!583781))

(declare-fun m!583783 () Bool)

(assert (=> b!606926 m!583783))

(declare-fun m!583785 () Bool)

(assert (=> b!606913 m!583785))

(assert (=> b!606913 m!583725))

(assert (=> b!606913 m!583725))

(declare-fun m!583787 () Bool)

(assert (=> b!606913 m!583787))

(assert (=> b!606921 m!583727))

(declare-fun m!583789 () Bool)

(assert (=> b!606921 m!583789))

(declare-fun m!583791 () Bool)

(assert (=> b!606917 m!583791))

(declare-fun m!583793 () Bool)

(assert (=> b!606916 m!583793))

(assert (=> b!606915 m!583725))

(assert (=> b!606915 m!583725))

(assert (=> b!606915 m!583747))

(declare-fun m!583795 () Bool)

(assert (=> b!606902 m!583795))

(check-sat (not b!606915) (not b!606916) (not b!606925) (not b!606906) (not b!606900) (not b!606901) (not b!606903) (not start!55550) (not b!606913) (not b!606909) (not b!606917) (not b!606923) (not b!606907) (not b!606908) (not b!606920) (not b!606926) (not b!606905) (not b!606902))
(check-sat)
