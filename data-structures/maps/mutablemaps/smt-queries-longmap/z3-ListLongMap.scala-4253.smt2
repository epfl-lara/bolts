; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59006 () Bool)

(assert start!59006)

(declare-fun b!650623 () Bool)

(declare-fun res!421915 () Bool)

(declare-fun e!373311 () Bool)

(assert (=> b!650623 (=> (not res!421915) (not e!373311))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38543 0))(
  ( (array!38544 (arr!18472 (Array (_ BitVec 32) (_ BitVec 64))) (size!18836 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38543)

(assert (=> b!650623 (= res!421915 (and (= (size!18836 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18836 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18836 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650624 () Bool)

(declare-fun e!373299 () Bool)

(declare-fun e!373308 () Bool)

(assert (=> b!650624 (= e!373299 e!373308)))

(declare-fun res!421904 () Bool)

(assert (=> b!650624 (=> (not res!421904) (not e!373308))))

(declare-fun lt!302432 () array!38543)

(declare-fun arrayContainsKey!0 (array!38543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650624 (= res!421904 (arrayContainsKey!0 lt!302432 (select (arr!18472 a!2986) j!136) j!136))))

(declare-fun b!650625 () Bool)

(declare-fun e!373305 () Bool)

(assert (=> b!650625 (= e!373305 e!373299)))

(declare-fun res!421911 () Bool)

(assert (=> b!650625 (=> res!421911 e!373299)))

(declare-fun lt!302435 () (_ BitVec 64))

(declare-fun lt!302438 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!650625 (= res!421911 (or (not (= (select (arr!18472 a!2986) j!136) lt!302435)) (not (= (select (arr!18472 a!2986) j!136) lt!302438)) (bvsge j!136 index!984)))))

(declare-fun b!650626 () Bool)

(declare-fun res!421908 () Bool)

(declare-fun e!373304 () Bool)

(assert (=> b!650626 (=> (not res!421908) (not e!373304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38543 (_ BitVec 32)) Bool)

(assert (=> b!650626 (= res!421908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!421903 () Bool)

(assert (=> start!59006 (=> (not res!421903) (not e!373311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59006 (= res!421903 (validMask!0 mask!3053))))

(assert (=> start!59006 e!373311))

(assert (=> start!59006 true))

(declare-fun array_inv!14246 (array!38543) Bool)

(assert (=> start!59006 (array_inv!14246 a!2986)))

(declare-fun b!650627 () Bool)

(assert (=> b!650627 (= e!373308 (arrayContainsKey!0 lt!302432 (select (arr!18472 a!2986) j!136) index!984))))

(declare-fun b!650628 () Bool)

(declare-fun res!421912 () Bool)

(assert (=> b!650628 (=> (not res!421912) (not e!373311))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650628 (= res!421912 (validKeyInArray!0 k0!1786))))

(declare-fun b!650629 () Bool)

(declare-fun e!373303 () Bool)

(declare-fun e!373307 () Bool)

(assert (=> b!650629 (= e!373303 e!373307)))

(declare-fun res!421905 () Bool)

(assert (=> b!650629 (=> res!421905 e!373307)))

(assert (=> b!650629 (= res!421905 (or (not (= (select (arr!18472 a!2986) j!136) lt!302435)) (not (= (select (arr!18472 a!2986) j!136) lt!302438))))))

(assert (=> b!650629 e!373305))

(declare-fun res!421918 () Bool)

(assert (=> b!650629 (=> (not res!421918) (not e!373305))))

(assert (=> b!650629 (= res!421918 (= lt!302438 (select (arr!18472 a!2986) j!136)))))

(assert (=> b!650629 (= lt!302438 (select (store (arr!18472 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!650630 () Bool)

(declare-fun e!373310 () Bool)

(assert (=> b!650630 (= e!373304 e!373310)))

(declare-fun res!421916 () Bool)

(assert (=> b!650630 (=> (not res!421916) (not e!373310))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!650630 (= res!421916 (= (select (store (arr!18472 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650630 (= lt!302432 (array!38544 (store (arr!18472 a!2986) i!1108 k0!1786) (size!18836 a!2986)))))

(declare-fun b!650631 () Bool)

(declare-fun res!421909 () Bool)

(assert (=> b!650631 (=> (not res!421909) (not e!373304))))

(declare-datatypes ((List!12566 0))(
  ( (Nil!12563) (Cons!12562 (h!13607 (_ BitVec 64)) (t!18802 List!12566)) )
))
(declare-fun arrayNoDuplicates!0 (array!38543 (_ BitVec 32) List!12566) Bool)

(assert (=> b!650631 (= res!421909 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12563))))

(declare-fun b!650632 () Bool)

(declare-datatypes ((Unit!22186 0))(
  ( (Unit!22187) )
))
(declare-fun e!373306 () Unit!22186)

(declare-fun Unit!22188 () Unit!22186)

(assert (=> b!650632 (= e!373306 Unit!22188)))

(declare-fun b!650633 () Bool)

(declare-fun e!373312 () Unit!22186)

(declare-fun Unit!22189 () Unit!22186)

(assert (=> b!650633 (= e!373312 Unit!22189)))

(declare-fun b!650634 () Bool)

(assert (=> b!650634 (= e!373311 e!373304)))

(declare-fun res!421901 () Bool)

(assert (=> b!650634 (=> (not res!421901) (not e!373304))))

(declare-datatypes ((SeekEntryResult!6919 0))(
  ( (MissingZero!6919 (index!30025 (_ BitVec 32))) (Found!6919 (index!30026 (_ BitVec 32))) (Intermediate!6919 (undefined!7731 Bool) (index!30027 (_ BitVec 32)) (x!58838 (_ BitVec 32))) (Undefined!6919) (MissingVacant!6919 (index!30028 (_ BitVec 32))) )
))
(declare-fun lt!302447 () SeekEntryResult!6919)

(assert (=> b!650634 (= res!421901 (or (= lt!302447 (MissingZero!6919 i!1108)) (= lt!302447 (MissingVacant!6919 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38543 (_ BitVec 32)) SeekEntryResult!6919)

(assert (=> b!650634 (= lt!302447 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!650635 () Bool)

(declare-fun Unit!22190 () Unit!22186)

(assert (=> b!650635 (= e!373306 Unit!22190)))

(declare-fun lt!302444 () Unit!22186)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38543 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22186)

(assert (=> b!650635 (= lt!302444 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302432 (select (arr!18472 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650635 (arrayContainsKey!0 lt!302432 (select (arr!18472 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302441 () Unit!22186)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38543 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12566) Unit!22186)

(assert (=> b!650635 (= lt!302441 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12563))))

(assert (=> b!650635 (arrayNoDuplicates!0 lt!302432 #b00000000000000000000000000000000 Nil!12563)))

(declare-fun lt!302437 () Unit!22186)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38543 (_ BitVec 32) (_ BitVec 32)) Unit!22186)

(assert (=> b!650635 (= lt!302437 (lemmaNoDuplicateFromThenFromBigger!0 lt!302432 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650635 (arrayNoDuplicates!0 lt!302432 j!136 Nil!12563)))

(declare-fun lt!302436 () Unit!22186)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38543 (_ BitVec 64) (_ BitVec 32) List!12566) Unit!22186)

(assert (=> b!650635 (= lt!302436 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302432 (select (arr!18472 a!2986) j!136) j!136 Nil!12563))))

(assert (=> b!650635 false))

(declare-fun b!650636 () Bool)

(declare-fun e!373309 () Bool)

(declare-fun lt!302448 () SeekEntryResult!6919)

(declare-fun lt!302439 () SeekEntryResult!6919)

(assert (=> b!650636 (= e!373309 (= lt!302448 lt!302439))))

(declare-fun b!650637 () Bool)

(declare-fun e!373301 () Bool)

(assert (=> b!650637 (= e!373310 e!373301)))

(declare-fun res!421919 () Bool)

(assert (=> b!650637 (=> (not res!421919) (not e!373301))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!650637 (= res!421919 (and (= lt!302448 (Found!6919 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18472 a!2986) index!984) (select (arr!18472 a!2986) j!136))) (not (= (select (arr!18472 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38543 (_ BitVec 32)) SeekEntryResult!6919)

(assert (=> b!650637 (= lt!302448 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18472 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650638 () Bool)

(assert (=> b!650638 (= e!373301 (not e!373303))))

(declare-fun res!421906 () Bool)

(assert (=> b!650638 (=> res!421906 e!373303)))

(declare-fun lt!302443 () SeekEntryResult!6919)

(assert (=> b!650638 (= res!421906 (not (= lt!302443 (Found!6919 index!984))))))

(declare-fun lt!302434 () Unit!22186)

(assert (=> b!650638 (= lt!302434 e!373312)))

(declare-fun c!74729 () Bool)

(assert (=> b!650638 (= c!74729 (= lt!302443 Undefined!6919))))

(assert (=> b!650638 (= lt!302443 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302435 lt!302432 mask!3053))))

(assert (=> b!650638 e!373309))

(declare-fun res!421910 () Bool)

(assert (=> b!650638 (=> (not res!421910) (not e!373309))))

(declare-fun lt!302442 () (_ BitVec 32))

(assert (=> b!650638 (= res!421910 (= lt!302439 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302442 vacantSpotIndex!68 lt!302435 lt!302432 mask!3053)))))

(assert (=> b!650638 (= lt!302439 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302442 vacantSpotIndex!68 (select (arr!18472 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650638 (= lt!302435 (select (store (arr!18472 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!302433 () Unit!22186)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38543 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22186)

(assert (=> b!650638 (= lt!302433 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302442 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650638 (= lt!302442 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650639 () Bool)

(declare-fun res!421913 () Bool)

(assert (=> b!650639 (=> (not res!421913) (not e!373311))))

(assert (=> b!650639 (= res!421913 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650640 () Bool)

(declare-fun Unit!22191 () Unit!22186)

(assert (=> b!650640 (= e!373312 Unit!22191)))

(assert (=> b!650640 false))

(declare-fun b!650641 () Bool)

(declare-fun e!373300 () Bool)

(assert (=> b!650641 (= e!373307 e!373300)))

(declare-fun res!421902 () Bool)

(assert (=> b!650641 (=> res!421902 e!373300)))

(assert (=> b!650641 (= res!421902 (bvsge index!984 j!136))))

(declare-fun lt!302440 () Unit!22186)

(assert (=> b!650641 (= lt!302440 e!373306)))

(declare-fun c!74728 () Bool)

(assert (=> b!650641 (= c!74728 (bvslt j!136 index!984))))

(declare-fun b!650642 () Bool)

(declare-fun res!421907 () Bool)

(assert (=> b!650642 (=> (not res!421907) (not e!373311))))

(assert (=> b!650642 (= res!421907 (validKeyInArray!0 (select (arr!18472 a!2986) j!136)))))

(declare-fun b!650643 () Bool)

(assert (=> b!650643 (= e!373300 (or (bvsge (size!18836 a!2986) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!18836 a!2986)) (bvsle index!984 (size!18836 a!2986))))))

(assert (=> b!650643 (arrayNoDuplicates!0 lt!302432 #b00000000000000000000000000000000 Nil!12563)))

(declare-fun lt!302446 () Unit!22186)

(assert (=> b!650643 (= lt!302446 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12563))))

(assert (=> b!650643 (arrayContainsKey!0 lt!302432 (select (arr!18472 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302445 () Unit!22186)

(assert (=> b!650643 (= lt!302445 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302432 (select (arr!18472 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!373298 () Bool)

(assert (=> b!650643 e!373298))

(declare-fun res!421914 () Bool)

(assert (=> b!650643 (=> (not res!421914) (not e!373298))))

(assert (=> b!650643 (= res!421914 (arrayContainsKey!0 lt!302432 (select (arr!18472 a!2986) j!136) j!136))))

(declare-fun b!650644 () Bool)

(declare-fun res!421917 () Bool)

(assert (=> b!650644 (=> (not res!421917) (not e!373304))))

(assert (=> b!650644 (= res!421917 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18472 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650645 () Bool)

(assert (=> b!650645 (= e!373298 (arrayContainsKey!0 lt!302432 (select (arr!18472 a!2986) j!136) index!984))))

(assert (= (and start!59006 res!421903) b!650623))

(assert (= (and b!650623 res!421915) b!650642))

(assert (= (and b!650642 res!421907) b!650628))

(assert (= (and b!650628 res!421912) b!650639))

(assert (= (and b!650639 res!421913) b!650634))

(assert (= (and b!650634 res!421901) b!650626))

(assert (= (and b!650626 res!421908) b!650631))

(assert (= (and b!650631 res!421909) b!650644))

(assert (= (and b!650644 res!421917) b!650630))

(assert (= (and b!650630 res!421916) b!650637))

(assert (= (and b!650637 res!421919) b!650638))

(assert (= (and b!650638 res!421910) b!650636))

(assert (= (and b!650638 c!74729) b!650640))

(assert (= (and b!650638 (not c!74729)) b!650633))

(assert (= (and b!650638 (not res!421906)) b!650629))

(assert (= (and b!650629 res!421918) b!650625))

(assert (= (and b!650625 (not res!421911)) b!650624))

(assert (= (and b!650624 res!421904) b!650627))

(assert (= (and b!650629 (not res!421905)) b!650641))

(assert (= (and b!650641 c!74728) b!650635))

(assert (= (and b!650641 (not c!74728)) b!650632))

(assert (= (and b!650641 (not res!421902)) b!650643))

(assert (= (and b!650643 res!421914) b!650645))

(declare-fun m!623869 () Bool)

(assert (=> start!59006 m!623869))

(declare-fun m!623871 () Bool)

(assert (=> start!59006 m!623871))

(declare-fun m!623873 () Bool)

(assert (=> b!650625 m!623873))

(declare-fun m!623875 () Bool)

(assert (=> b!650639 m!623875))

(declare-fun m!623877 () Bool)

(assert (=> b!650635 m!623877))

(assert (=> b!650635 m!623873))

(declare-fun m!623879 () Bool)

(assert (=> b!650635 m!623879))

(assert (=> b!650635 m!623873))

(declare-fun m!623881 () Bool)

(assert (=> b!650635 m!623881))

(assert (=> b!650635 m!623873))

(declare-fun m!623883 () Bool)

(assert (=> b!650635 m!623883))

(assert (=> b!650635 m!623873))

(declare-fun m!623885 () Bool)

(assert (=> b!650635 m!623885))

(declare-fun m!623887 () Bool)

(assert (=> b!650635 m!623887))

(declare-fun m!623889 () Bool)

(assert (=> b!650635 m!623889))

(declare-fun m!623891 () Bool)

(assert (=> b!650637 m!623891))

(assert (=> b!650637 m!623873))

(assert (=> b!650637 m!623873))

(declare-fun m!623893 () Bool)

(assert (=> b!650637 m!623893))

(declare-fun m!623895 () Bool)

(assert (=> b!650638 m!623895))

(declare-fun m!623897 () Bool)

(assert (=> b!650638 m!623897))

(assert (=> b!650638 m!623873))

(declare-fun m!623899 () Bool)

(assert (=> b!650638 m!623899))

(declare-fun m!623901 () Bool)

(assert (=> b!650638 m!623901))

(assert (=> b!650638 m!623873))

(declare-fun m!623903 () Bool)

(assert (=> b!650638 m!623903))

(declare-fun m!623905 () Bool)

(assert (=> b!650638 m!623905))

(declare-fun m!623907 () Bool)

(assert (=> b!650638 m!623907))

(declare-fun m!623909 () Bool)

(assert (=> b!650628 m!623909))

(assert (=> b!650643 m!623873))

(declare-fun m!623911 () Bool)

(assert (=> b!650643 m!623911))

(assert (=> b!650643 m!623873))

(assert (=> b!650643 m!623873))

(declare-fun m!623913 () Bool)

(assert (=> b!650643 m!623913))

(assert (=> b!650643 m!623887))

(assert (=> b!650643 m!623873))

(declare-fun m!623915 () Bool)

(assert (=> b!650643 m!623915))

(assert (=> b!650643 m!623889))

(declare-fun m!623917 () Bool)

(assert (=> b!650644 m!623917))

(declare-fun m!623919 () Bool)

(assert (=> b!650626 m!623919))

(assert (=> b!650629 m!623873))

(assert (=> b!650629 m!623901))

(declare-fun m!623921 () Bool)

(assert (=> b!650629 m!623921))

(assert (=> b!650630 m!623901))

(declare-fun m!623923 () Bool)

(assert (=> b!650630 m!623923))

(assert (=> b!650642 m!623873))

(assert (=> b!650642 m!623873))

(declare-fun m!623925 () Bool)

(assert (=> b!650642 m!623925))

(assert (=> b!650624 m!623873))

(assert (=> b!650624 m!623873))

(assert (=> b!650624 m!623913))

(assert (=> b!650627 m!623873))

(assert (=> b!650627 m!623873))

(declare-fun m!623927 () Bool)

(assert (=> b!650627 m!623927))

(declare-fun m!623929 () Bool)

(assert (=> b!650634 m!623929))

(assert (=> b!650645 m!623873))

(assert (=> b!650645 m!623873))

(assert (=> b!650645 m!623927))

(declare-fun m!623931 () Bool)

(assert (=> b!650631 m!623931))

(check-sat (not b!650638) (not b!650624) (not b!650645) (not b!650643) (not b!650631) (not b!650642) (not start!59006) (not b!650627) (not b!650637) (not b!650634) (not b!650639) (not b!650635) (not b!650626) (not b!650628))
(check-sat)
