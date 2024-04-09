; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58460 () Bool)

(assert start!58460)

(declare-fun b!645286 () Bool)

(declare-fun res!418205 () Bool)

(declare-fun e!369810 () Bool)

(assert (=> b!645286 (=> (not res!418205) (not e!369810))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38432 0))(
  ( (array!38433 (arr!18424 (Array (_ BitVec 32) (_ BitVec 64))) (size!18788 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38432)

(assert (=> b!645286 (= res!418205 (and (= (size!18788 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18788 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18788 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!369820 () Bool)

(declare-fun b!645287 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!299290 () array!38432)

(declare-fun arrayContainsKey!0 (array!38432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645287 (= e!369820 (arrayContainsKey!0 lt!299290 (select (arr!18424 a!2986) j!136) index!984))))

(declare-fun b!645288 () Bool)

(declare-fun e!369812 () Bool)

(declare-fun e!369821 () Bool)

(assert (=> b!645288 (= e!369812 e!369821)))

(declare-fun res!418192 () Bool)

(assert (=> b!645288 (=> (not res!418192) (not e!369821))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6871 0))(
  ( (MissingZero!6871 (index!29818 (_ BitVec 32))) (Found!6871 (index!29819 (_ BitVec 32))) (Intermediate!6871 (undefined!7683 Bool) (index!29820 (_ BitVec 32)) (x!58617 (_ BitVec 32))) (Undefined!6871) (MissingVacant!6871 (index!29821 (_ BitVec 32))) )
))
(declare-fun lt!299287 () SeekEntryResult!6871)

(assert (=> b!645288 (= res!418192 (and (= lt!299287 (Found!6871 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18424 a!2986) index!984) (select (arr!18424 a!2986) j!136))) (not (= (select (arr!18424 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38432 (_ BitVec 32)) SeekEntryResult!6871)

(assert (=> b!645288 (= lt!299287 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18424 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645289 () Bool)

(declare-fun res!418203 () Bool)

(assert (=> b!645289 (=> (not res!418203) (not e!369810))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645289 (= res!418203 (validKeyInArray!0 k0!1786))))

(declare-fun b!645290 () Bool)

(declare-datatypes ((Unit!21898 0))(
  ( (Unit!21899) )
))
(declare-fun e!369813 () Unit!21898)

(declare-fun Unit!21900 () Unit!21898)

(assert (=> b!645290 (= e!369813 Unit!21900)))

(declare-fun b!645291 () Bool)

(declare-fun e!369816 () Bool)

(declare-fun e!369814 () Bool)

(assert (=> b!645291 (= e!369816 e!369814)))

(declare-fun res!418207 () Bool)

(assert (=> b!645291 (=> (not res!418207) (not e!369814))))

(assert (=> b!645291 (= res!418207 (arrayContainsKey!0 lt!299290 (select (arr!18424 a!2986) j!136) j!136))))

(declare-fun b!645292 () Bool)

(declare-fun res!418202 () Bool)

(assert (=> b!645292 (=> (not res!418202) (not e!369810))))

(assert (=> b!645292 (= res!418202 (validKeyInArray!0 (select (arr!18424 a!2986) j!136)))))

(declare-fun b!645294 () Bool)

(declare-fun e!369815 () Bool)

(assert (=> b!645294 (= e!369815 true)))

(assert (=> b!645294 (arrayContainsKey!0 lt!299290 (select (arr!18424 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299285 () Unit!21898)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38432 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21898)

(assert (=> b!645294 (= lt!299285 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299290 (select (arr!18424 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!645294 e!369820))

(declare-fun res!418204 () Bool)

(assert (=> b!645294 (=> (not res!418204) (not e!369820))))

(assert (=> b!645294 (= res!418204 (arrayContainsKey!0 lt!299290 (select (arr!18424 a!2986) j!136) j!136))))

(declare-fun b!645295 () Bool)

(declare-fun e!369823 () Bool)

(assert (=> b!645295 (= e!369823 e!369816)))

(declare-fun res!418197 () Bool)

(assert (=> b!645295 (=> res!418197 e!369816)))

(declare-fun lt!299281 () (_ BitVec 64))

(declare-fun lt!299288 () (_ BitVec 64))

(assert (=> b!645295 (= res!418197 (or (not (= (select (arr!18424 a!2986) j!136) lt!299288)) (not (= (select (arr!18424 a!2986) j!136) lt!299281)) (bvsge j!136 index!984)))))

(declare-fun b!645296 () Bool)

(declare-fun Unit!21901 () Unit!21898)

(assert (=> b!645296 (= e!369813 Unit!21901)))

(assert (=> b!645296 false))

(declare-fun b!645297 () Bool)

(declare-fun e!369811 () Bool)

(assert (=> b!645297 (= e!369811 e!369815)))

(declare-fun res!418199 () Bool)

(assert (=> b!645297 (=> res!418199 e!369815)))

(assert (=> b!645297 (= res!418199 (bvsge index!984 j!136))))

(declare-fun lt!299286 () Unit!21898)

(declare-fun e!369817 () Unit!21898)

(assert (=> b!645297 (= lt!299286 e!369817)))

(declare-fun c!73915 () Bool)

(assert (=> b!645297 (= c!73915 (bvslt j!136 index!984))))

(declare-fun b!645298 () Bool)

(declare-fun res!418206 () Bool)

(declare-fun e!369819 () Bool)

(assert (=> b!645298 (=> (not res!418206) (not e!369819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38432 (_ BitVec 32)) Bool)

(assert (=> b!645298 (= res!418206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645299 () Bool)

(declare-fun res!418196 () Bool)

(assert (=> b!645299 (=> (not res!418196) (not e!369819))))

(assert (=> b!645299 (= res!418196 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18424 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645300 () Bool)

(declare-fun e!369809 () Bool)

(assert (=> b!645300 (= e!369821 (not e!369809))))

(declare-fun res!418200 () Bool)

(assert (=> b!645300 (=> res!418200 e!369809)))

(declare-fun lt!299289 () SeekEntryResult!6871)

(assert (=> b!645300 (= res!418200 (not (= lt!299289 (Found!6871 index!984))))))

(declare-fun lt!299292 () Unit!21898)

(assert (=> b!645300 (= lt!299292 e!369813)))

(declare-fun c!73916 () Bool)

(assert (=> b!645300 (= c!73916 (= lt!299289 Undefined!6871))))

(assert (=> b!645300 (= lt!299289 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299288 lt!299290 mask!3053))))

(declare-fun e!369822 () Bool)

(assert (=> b!645300 e!369822))

(declare-fun res!418190 () Bool)

(assert (=> b!645300 (=> (not res!418190) (not e!369822))))

(declare-fun lt!299282 () SeekEntryResult!6871)

(declare-fun lt!299293 () (_ BitVec 32))

(assert (=> b!645300 (= res!418190 (= lt!299282 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299293 vacantSpotIndex!68 lt!299288 lt!299290 mask!3053)))))

(assert (=> b!645300 (= lt!299282 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299293 vacantSpotIndex!68 (select (arr!18424 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645300 (= lt!299288 (select (store (arr!18424 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!299283 () Unit!21898)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21898)

(assert (=> b!645300 (= lt!299283 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299293 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645300 (= lt!299293 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645301 () Bool)

(assert (=> b!645301 (= e!369822 (= lt!299287 lt!299282))))

(declare-fun b!645302 () Bool)

(assert (=> b!645302 (= e!369809 e!369811)))

(declare-fun res!418195 () Bool)

(assert (=> b!645302 (=> res!418195 e!369811)))

(assert (=> b!645302 (= res!418195 (or (not (= (select (arr!18424 a!2986) j!136) lt!299288)) (not (= (select (arr!18424 a!2986) j!136) lt!299281))))))

(assert (=> b!645302 e!369823))

(declare-fun res!418194 () Bool)

(assert (=> b!645302 (=> (not res!418194) (not e!369823))))

(assert (=> b!645302 (= res!418194 (= lt!299281 (select (arr!18424 a!2986) j!136)))))

(assert (=> b!645302 (= lt!299281 (select (store (arr!18424 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!645303 () Bool)

(declare-fun Unit!21902 () Unit!21898)

(assert (=> b!645303 (= e!369817 Unit!21902)))

(declare-fun lt!299291 () Unit!21898)

(assert (=> b!645303 (= lt!299291 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299290 (select (arr!18424 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645303 (arrayContainsKey!0 lt!299290 (select (arr!18424 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299280 () Unit!21898)

(declare-datatypes ((List!12518 0))(
  ( (Nil!12515) (Cons!12514 (h!13559 (_ BitVec 64)) (t!18754 List!12518)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38432 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12518) Unit!21898)

(assert (=> b!645303 (= lt!299280 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12515))))

(declare-fun arrayNoDuplicates!0 (array!38432 (_ BitVec 32) List!12518) Bool)

(assert (=> b!645303 (arrayNoDuplicates!0 lt!299290 #b00000000000000000000000000000000 Nil!12515)))

(declare-fun lt!299294 () Unit!21898)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38432 (_ BitVec 32) (_ BitVec 32)) Unit!21898)

(assert (=> b!645303 (= lt!299294 (lemmaNoDuplicateFromThenFromBigger!0 lt!299290 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645303 (arrayNoDuplicates!0 lt!299290 j!136 Nil!12515)))

(declare-fun lt!299295 () Unit!21898)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38432 (_ BitVec 64) (_ BitVec 32) List!12518) Unit!21898)

(assert (=> b!645303 (= lt!299295 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299290 (select (arr!18424 a!2986) j!136) j!136 Nil!12515))))

(assert (=> b!645303 false))

(declare-fun b!645304 () Bool)

(declare-fun res!418198 () Bool)

(assert (=> b!645304 (=> (not res!418198) (not e!369819))))

(assert (=> b!645304 (= res!418198 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12515))))

(declare-fun b!645305 () Bool)

(declare-fun Unit!21903 () Unit!21898)

(assert (=> b!645305 (= e!369817 Unit!21903)))

(declare-fun b!645293 () Bool)

(assert (=> b!645293 (= e!369819 e!369812)))

(declare-fun res!418201 () Bool)

(assert (=> b!645293 (=> (not res!418201) (not e!369812))))

(assert (=> b!645293 (= res!418201 (= (select (store (arr!18424 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645293 (= lt!299290 (array!38433 (store (arr!18424 a!2986) i!1108 k0!1786) (size!18788 a!2986)))))

(declare-fun res!418191 () Bool)

(assert (=> start!58460 (=> (not res!418191) (not e!369810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58460 (= res!418191 (validMask!0 mask!3053))))

(assert (=> start!58460 e!369810))

(assert (=> start!58460 true))

(declare-fun array_inv!14198 (array!38432) Bool)

(assert (=> start!58460 (array_inv!14198 a!2986)))

(declare-fun b!645306 () Bool)

(declare-fun res!418208 () Bool)

(assert (=> b!645306 (=> (not res!418208) (not e!369810))))

(assert (=> b!645306 (= res!418208 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645307 () Bool)

(assert (=> b!645307 (= e!369810 e!369819)))

(declare-fun res!418193 () Bool)

(assert (=> b!645307 (=> (not res!418193) (not e!369819))))

(declare-fun lt!299284 () SeekEntryResult!6871)

(assert (=> b!645307 (= res!418193 (or (= lt!299284 (MissingZero!6871 i!1108)) (= lt!299284 (MissingVacant!6871 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38432 (_ BitVec 32)) SeekEntryResult!6871)

(assert (=> b!645307 (= lt!299284 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!645308 () Bool)

(assert (=> b!645308 (= e!369814 (arrayContainsKey!0 lt!299290 (select (arr!18424 a!2986) j!136) index!984))))

(assert (= (and start!58460 res!418191) b!645286))

(assert (= (and b!645286 res!418205) b!645292))

(assert (= (and b!645292 res!418202) b!645289))

(assert (= (and b!645289 res!418203) b!645306))

(assert (= (and b!645306 res!418208) b!645307))

(assert (= (and b!645307 res!418193) b!645298))

(assert (= (and b!645298 res!418206) b!645304))

(assert (= (and b!645304 res!418198) b!645299))

(assert (= (and b!645299 res!418196) b!645293))

(assert (= (and b!645293 res!418201) b!645288))

(assert (= (and b!645288 res!418192) b!645300))

(assert (= (and b!645300 res!418190) b!645301))

(assert (= (and b!645300 c!73916) b!645296))

(assert (= (and b!645300 (not c!73916)) b!645290))

(assert (= (and b!645300 (not res!418200)) b!645302))

(assert (= (and b!645302 res!418194) b!645295))

(assert (= (and b!645295 (not res!418197)) b!645291))

(assert (= (and b!645291 res!418207) b!645308))

(assert (= (and b!645302 (not res!418195)) b!645297))

(assert (= (and b!645297 c!73915) b!645303))

(assert (= (and b!645297 (not c!73915)) b!645305))

(assert (= (and b!645297 (not res!418199)) b!645294))

(assert (= (and b!645294 res!418204) b!645287))

(declare-fun m!618871 () Bool)

(assert (=> b!645306 m!618871))

(declare-fun m!618873 () Bool)

(assert (=> b!645294 m!618873))

(assert (=> b!645294 m!618873))

(declare-fun m!618875 () Bool)

(assert (=> b!645294 m!618875))

(assert (=> b!645294 m!618873))

(declare-fun m!618877 () Bool)

(assert (=> b!645294 m!618877))

(assert (=> b!645294 m!618873))

(declare-fun m!618879 () Bool)

(assert (=> b!645294 m!618879))

(declare-fun m!618881 () Bool)

(assert (=> start!58460 m!618881))

(declare-fun m!618883 () Bool)

(assert (=> start!58460 m!618883))

(assert (=> b!645287 m!618873))

(assert (=> b!645287 m!618873))

(declare-fun m!618885 () Bool)

(assert (=> b!645287 m!618885))

(declare-fun m!618887 () Bool)

(assert (=> b!645304 m!618887))

(declare-fun m!618889 () Bool)

(assert (=> b!645307 m!618889))

(declare-fun m!618891 () Bool)

(assert (=> b!645288 m!618891))

(assert (=> b!645288 m!618873))

(assert (=> b!645288 m!618873))

(declare-fun m!618893 () Bool)

(assert (=> b!645288 m!618893))

(assert (=> b!645295 m!618873))

(declare-fun m!618895 () Bool)

(assert (=> b!645293 m!618895))

(declare-fun m!618897 () Bool)

(assert (=> b!645293 m!618897))

(assert (=> b!645302 m!618873))

(assert (=> b!645302 m!618895))

(declare-fun m!618899 () Bool)

(assert (=> b!645302 m!618899))

(assert (=> b!645308 m!618873))

(assert (=> b!645308 m!618873))

(assert (=> b!645308 m!618885))

(declare-fun m!618901 () Bool)

(assert (=> b!645299 m!618901))

(assert (=> b!645292 m!618873))

(assert (=> b!645292 m!618873))

(declare-fun m!618903 () Bool)

(assert (=> b!645292 m!618903))

(assert (=> b!645303 m!618873))

(assert (=> b!645303 m!618873))

(declare-fun m!618905 () Bool)

(assert (=> b!645303 m!618905))

(declare-fun m!618907 () Bool)

(assert (=> b!645303 m!618907))

(assert (=> b!645303 m!618873))

(declare-fun m!618909 () Bool)

(assert (=> b!645303 m!618909))

(assert (=> b!645303 m!618873))

(declare-fun m!618911 () Bool)

(assert (=> b!645303 m!618911))

(declare-fun m!618913 () Bool)

(assert (=> b!645303 m!618913))

(declare-fun m!618915 () Bool)

(assert (=> b!645303 m!618915))

(declare-fun m!618917 () Bool)

(assert (=> b!645303 m!618917))

(assert (=> b!645291 m!618873))

(assert (=> b!645291 m!618873))

(assert (=> b!645291 m!618879))

(declare-fun m!618919 () Bool)

(assert (=> b!645289 m!618919))

(declare-fun m!618921 () Bool)

(assert (=> b!645300 m!618921))

(declare-fun m!618923 () Bool)

(assert (=> b!645300 m!618923))

(declare-fun m!618925 () Bool)

(assert (=> b!645300 m!618925))

(assert (=> b!645300 m!618873))

(declare-fun m!618927 () Bool)

(assert (=> b!645300 m!618927))

(assert (=> b!645300 m!618873))

(assert (=> b!645300 m!618895))

(declare-fun m!618929 () Bool)

(assert (=> b!645300 m!618929))

(declare-fun m!618931 () Bool)

(assert (=> b!645300 m!618931))

(declare-fun m!618933 () Bool)

(assert (=> b!645298 m!618933))

(check-sat (not b!645289) (not b!645306) (not b!645298) (not b!645287) (not b!645307) (not b!645308) (not b!645291) (not b!645304) (not b!645303) (not b!645300) (not b!645294) (not b!645288) (not b!645292) (not start!58460))
(check-sat)
