; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57374 () Bool)

(assert start!57374)

(declare-fun b!634868 () Bool)

(declare-fun e!363090 () Bool)

(declare-datatypes ((SeekEntryResult!6763 0))(
  ( (MissingZero!6763 (index!29353 (_ BitVec 32))) (Found!6763 (index!29354 (_ BitVec 32))) (Intermediate!6763 (undefined!7575 Bool) (index!29355 (_ BitVec 32)) (x!58122 (_ BitVec 32))) (Undefined!6763) (MissingVacant!6763 (index!29356 (_ BitVec 32))) )
))
(declare-fun lt!293585 () SeekEntryResult!6763)

(declare-fun lt!293590 () SeekEntryResult!6763)

(assert (=> b!634868 (= e!363090 (= lt!293585 lt!293590))))

(declare-fun b!634870 () Bool)

(declare-fun res!410857 () Bool)

(declare-fun e!363100 () Bool)

(assert (=> b!634870 (=> (not res!410857) (not e!363100))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38183 0))(
  ( (array!38184 (arr!18316 (Array (_ BitVec 32) (_ BitVec 64))) (size!18680 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38183)

(assert (=> b!634870 (= res!410857 (and (= (size!18680 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18680 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18680 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634871 () Bool)

(declare-fun e!363092 () Bool)

(declare-fun e!363097 () Bool)

(assert (=> b!634871 (= e!363092 (not e!363097))))

(declare-fun res!410853 () Bool)

(assert (=> b!634871 (=> res!410853 e!363097)))

(declare-fun lt!293584 () SeekEntryResult!6763)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634871 (= res!410853 (not (= lt!293584 (Found!6763 index!984))))))

(declare-datatypes ((Unit!21410 0))(
  ( (Unit!21411) )
))
(declare-fun lt!293587 () Unit!21410)

(declare-fun e!363098 () Unit!21410)

(assert (=> b!634871 (= lt!293587 e!363098)))

(declare-fun c!72377 () Bool)

(assert (=> b!634871 (= c!72377 (= lt!293584 Undefined!6763))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!293582 () array!38183)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!293588 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38183 (_ BitVec 32)) SeekEntryResult!6763)

(assert (=> b!634871 (= lt!293584 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293588 lt!293582 mask!3053))))

(assert (=> b!634871 e!363090))

(declare-fun res!410862 () Bool)

(assert (=> b!634871 (=> (not res!410862) (not e!363090))))

(declare-fun lt!293589 () (_ BitVec 32))

(assert (=> b!634871 (= res!410862 (= lt!293590 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 lt!293588 lt!293582 mask!3053)))))

(assert (=> b!634871 (= lt!293590 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!634871 (= lt!293588 (select (store (arr!18316 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293586 () Unit!21410)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38183 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21410)

(assert (=> b!634871 (= lt!293586 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634871 (= lt!293589 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634872 () Bool)

(declare-fun e!363093 () Bool)

(declare-fun e!363095 () Bool)

(assert (=> b!634872 (= e!363093 e!363095)))

(declare-fun res!410854 () Bool)

(assert (=> b!634872 (=> (not res!410854) (not e!363095))))

(assert (=> b!634872 (= res!410854 (= (select (store (arr!18316 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634872 (= lt!293582 (array!38184 (store (arr!18316 a!2986) i!1108 k0!1786) (size!18680 a!2986)))))

(declare-fun b!634873 () Bool)

(declare-fun res!410855 () Bool)

(assert (=> b!634873 (=> (not res!410855) (not e!363100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634873 (= res!410855 (validKeyInArray!0 (select (arr!18316 a!2986) j!136)))))

(declare-fun b!634874 () Bool)

(declare-fun res!410864 () Bool)

(assert (=> b!634874 (=> (not res!410864) (not e!363100))))

(assert (=> b!634874 (= res!410864 (validKeyInArray!0 k0!1786))))

(declare-fun b!634875 () Bool)

(assert (=> b!634875 (= e!363100 e!363093)))

(declare-fun res!410861 () Bool)

(assert (=> b!634875 (=> (not res!410861) (not e!363093))))

(declare-fun lt!293583 () SeekEntryResult!6763)

(assert (=> b!634875 (= res!410861 (or (= lt!293583 (MissingZero!6763 i!1108)) (= lt!293583 (MissingVacant!6763 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38183 (_ BitVec 32)) SeekEntryResult!6763)

(assert (=> b!634875 (= lt!293583 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!634876 () Bool)

(declare-fun Unit!21412 () Unit!21410)

(assert (=> b!634876 (= e!363098 Unit!21412)))

(assert (=> b!634876 false))

(declare-fun res!410852 () Bool)

(assert (=> start!57374 (=> (not res!410852) (not e!363100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57374 (= res!410852 (validMask!0 mask!3053))))

(assert (=> start!57374 e!363100))

(assert (=> start!57374 true))

(declare-fun array_inv!14090 (array!38183) Bool)

(assert (=> start!57374 (array_inv!14090 a!2986)))

(declare-fun b!634869 () Bool)

(declare-fun e!363089 () Bool)

(declare-fun e!363094 () Bool)

(assert (=> b!634869 (= e!363089 e!363094)))

(declare-fun res!410850 () Bool)

(assert (=> b!634869 (=> (not res!410850) (not e!363094))))

(declare-fun arrayContainsKey!0 (array!38183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634869 (= res!410850 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) j!136))))

(declare-fun b!634877 () Bool)

(assert (=> b!634877 (= e!363095 e!363092)))

(declare-fun res!410860 () Bool)

(assert (=> b!634877 (=> (not res!410860) (not e!363092))))

(assert (=> b!634877 (= res!410860 (and (= lt!293585 (Found!6763 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18316 a!2986) index!984) (select (arr!18316 a!2986) j!136))) (not (= (select (arr!18316 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!634877 (= lt!293585 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634878 () Bool)

(declare-fun res!410858 () Bool)

(assert (=> b!634878 (=> (not res!410858) (not e!363100))))

(assert (=> b!634878 (= res!410858 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634879 () Bool)

(declare-fun e!363096 () Bool)

(assert (=> b!634879 (= e!363097 e!363096)))

(declare-fun res!410851 () Bool)

(assert (=> b!634879 (=> res!410851 e!363096)))

(declare-fun lt!293591 () (_ BitVec 64))

(assert (=> b!634879 (= res!410851 (or (not (= (select (arr!18316 a!2986) j!136) lt!293588)) (not (= (select (arr!18316 a!2986) j!136) lt!293591)) (bvsge j!136 index!984)))))

(declare-fun e!363091 () Bool)

(assert (=> b!634879 e!363091))

(declare-fun res!410848 () Bool)

(assert (=> b!634879 (=> (not res!410848) (not e!363091))))

(assert (=> b!634879 (= res!410848 (= lt!293591 (select (arr!18316 a!2986) j!136)))))

(assert (=> b!634879 (= lt!293591 (select (store (arr!18316 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!634880 () Bool)

(declare-fun res!410856 () Bool)

(assert (=> b!634880 (=> (not res!410856) (not e!363093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38183 (_ BitVec 32)) Bool)

(assert (=> b!634880 (= res!410856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634881 () Bool)

(declare-fun res!410859 () Bool)

(assert (=> b!634881 (=> (not res!410859) (not e!363093))))

(assert (=> b!634881 (= res!410859 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18316 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634882 () Bool)

(declare-fun res!410849 () Bool)

(assert (=> b!634882 (=> (not res!410849) (not e!363093))))

(declare-datatypes ((List!12410 0))(
  ( (Nil!12407) (Cons!12406 (h!13451 (_ BitVec 64)) (t!18646 List!12410)) )
))
(declare-fun arrayNoDuplicates!0 (array!38183 (_ BitVec 32) List!12410) Bool)

(assert (=> b!634882 (= res!410849 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12407))))

(declare-fun b!634883 () Bool)

(assert (=> b!634883 (= e!363094 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) index!984))))

(declare-fun b!634884 () Bool)

(assert (=> b!634884 (= e!363091 e!363089)))

(declare-fun res!410863 () Bool)

(assert (=> b!634884 (=> res!410863 e!363089)))

(assert (=> b!634884 (= res!410863 (or (not (= (select (arr!18316 a!2986) j!136) lt!293588)) (not (= (select (arr!18316 a!2986) j!136) lt!293591)) (bvsge j!136 index!984)))))

(declare-fun b!634885 () Bool)

(declare-fun Unit!21413 () Unit!21410)

(assert (=> b!634885 (= e!363098 Unit!21413)))

(declare-fun b!634886 () Bool)

(assert (=> b!634886 (= e!363096 (bvslt (size!18680 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!634886 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293592 () Unit!21410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38183 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21410)

(assert (=> b!634886 (= lt!293592 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293582 (select (arr!18316 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!57374 res!410852) b!634870))

(assert (= (and b!634870 res!410857) b!634873))

(assert (= (and b!634873 res!410855) b!634874))

(assert (= (and b!634874 res!410864) b!634878))

(assert (= (and b!634878 res!410858) b!634875))

(assert (= (and b!634875 res!410861) b!634880))

(assert (= (and b!634880 res!410856) b!634882))

(assert (= (and b!634882 res!410849) b!634881))

(assert (= (and b!634881 res!410859) b!634872))

(assert (= (and b!634872 res!410854) b!634877))

(assert (= (and b!634877 res!410860) b!634871))

(assert (= (and b!634871 res!410862) b!634868))

(assert (= (and b!634871 c!72377) b!634876))

(assert (= (and b!634871 (not c!72377)) b!634885))

(assert (= (and b!634871 (not res!410853)) b!634879))

(assert (= (and b!634879 res!410848) b!634884))

(assert (= (and b!634884 (not res!410863)) b!634869))

(assert (= (and b!634869 res!410850) b!634883))

(assert (= (and b!634879 (not res!410851)) b!634886))

(declare-fun m!609347 () Bool)

(assert (=> b!634869 m!609347))

(assert (=> b!634869 m!609347))

(declare-fun m!609349 () Bool)

(assert (=> b!634869 m!609349))

(declare-fun m!609351 () Bool)

(assert (=> b!634872 m!609351))

(declare-fun m!609353 () Bool)

(assert (=> b!634872 m!609353))

(declare-fun m!609355 () Bool)

(assert (=> b!634871 m!609355))

(declare-fun m!609357 () Bool)

(assert (=> b!634871 m!609357))

(assert (=> b!634871 m!609347))

(assert (=> b!634871 m!609351))

(assert (=> b!634871 m!609347))

(declare-fun m!609359 () Bool)

(assert (=> b!634871 m!609359))

(declare-fun m!609361 () Bool)

(assert (=> b!634871 m!609361))

(declare-fun m!609363 () Bool)

(assert (=> b!634871 m!609363))

(declare-fun m!609365 () Bool)

(assert (=> b!634871 m!609365))

(assert (=> b!634884 m!609347))

(declare-fun m!609367 () Bool)

(assert (=> b!634882 m!609367))

(assert (=> b!634879 m!609347))

(assert (=> b!634879 m!609351))

(declare-fun m!609369 () Bool)

(assert (=> b!634879 m!609369))

(declare-fun m!609371 () Bool)

(assert (=> b!634878 m!609371))

(assert (=> b!634873 m!609347))

(assert (=> b!634873 m!609347))

(declare-fun m!609373 () Bool)

(assert (=> b!634873 m!609373))

(declare-fun m!609375 () Bool)

(assert (=> start!57374 m!609375))

(declare-fun m!609377 () Bool)

(assert (=> start!57374 m!609377))

(assert (=> b!634883 m!609347))

(assert (=> b!634883 m!609347))

(declare-fun m!609379 () Bool)

(assert (=> b!634883 m!609379))

(declare-fun m!609381 () Bool)

(assert (=> b!634880 m!609381))

(declare-fun m!609383 () Bool)

(assert (=> b!634875 m!609383))

(declare-fun m!609385 () Bool)

(assert (=> b!634874 m!609385))

(declare-fun m!609387 () Bool)

(assert (=> b!634881 m!609387))

(assert (=> b!634886 m!609347))

(assert (=> b!634886 m!609347))

(declare-fun m!609389 () Bool)

(assert (=> b!634886 m!609389))

(assert (=> b!634886 m!609347))

(declare-fun m!609391 () Bool)

(assert (=> b!634886 m!609391))

(declare-fun m!609393 () Bool)

(assert (=> b!634877 m!609393))

(assert (=> b!634877 m!609347))

(assert (=> b!634877 m!609347))

(declare-fun m!609395 () Bool)

(assert (=> b!634877 m!609395))

(check-sat (not b!634869) (not b!634875) (not b!634886) (not b!634883) (not b!634871) (not b!634882) (not b!634880) (not start!57374) (not b!634873) (not b!634877) (not b!634878) (not b!634874))
(check-sat)
(get-model)

(declare-fun d!89585 () Bool)

(assert (=> d!89585 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!634874 d!89585))

(declare-fun d!89587 () Bool)

(assert (=> d!89587 (= (validKeyInArray!0 (select (arr!18316 a!2986) j!136)) (and (not (= (select (arr!18316 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18316 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!634873 d!89587))

(declare-fun d!89589 () Bool)

(declare-fun res!410920 () Bool)

(declare-fun e!363141 () Bool)

(assert (=> d!89589 (=> res!410920 e!363141)))

(assert (=> d!89589 (= res!410920 (= (select (arr!18316 lt!293582) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18316 a!2986) j!136)))))

(assert (=> d!89589 (= (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!363141)))

(declare-fun b!634948 () Bool)

(declare-fun e!363142 () Bool)

(assert (=> b!634948 (= e!363141 e!363142)))

(declare-fun res!410921 () Bool)

(assert (=> b!634948 (=> (not res!410921) (not e!363142))))

(assert (=> b!634948 (= res!410921 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18680 lt!293582)))))

(declare-fun b!634949 () Bool)

(assert (=> b!634949 (= e!363142 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89589 (not res!410920)) b!634948))

(assert (= (and b!634948 res!410921) b!634949))

(declare-fun m!609447 () Bool)

(assert (=> d!89589 m!609447))

(assert (=> b!634949 m!609347))

(declare-fun m!609449 () Bool)

(assert (=> b!634949 m!609449))

(assert (=> b!634886 d!89589))

(declare-fun d!89591 () Bool)

(assert (=> d!89591 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293628 () Unit!21410)

(declare-fun choose!114 (array!38183 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21410)

(assert (=> d!89591 (= lt!293628 (choose!114 lt!293582 (select (arr!18316 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89591 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89591 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293582 (select (arr!18316 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!293628)))

(declare-fun bs!19085 () Bool)

(assert (= bs!19085 d!89591))

(assert (=> bs!19085 m!609347))

(assert (=> bs!19085 m!609389))

(assert (=> bs!19085 m!609347))

(declare-fun m!609451 () Bool)

(assert (=> bs!19085 m!609451))

(assert (=> b!634886 d!89591))

(declare-fun b!634962 () Bool)

(declare-fun e!363150 () SeekEntryResult!6763)

(declare-fun e!363151 () SeekEntryResult!6763)

(assert (=> b!634962 (= e!363150 e!363151)))

(declare-fun lt!293637 () (_ BitVec 64))

(declare-fun lt!293635 () SeekEntryResult!6763)

(assert (=> b!634962 (= lt!293637 (select (arr!18316 a!2986) (index!29355 lt!293635)))))

(declare-fun c!72388 () Bool)

(assert (=> b!634962 (= c!72388 (= lt!293637 k0!1786))))

(declare-fun b!634963 () Bool)

(declare-fun e!363149 () SeekEntryResult!6763)

(assert (=> b!634963 (= e!363149 (MissingZero!6763 (index!29355 lt!293635)))))

(declare-fun d!89593 () Bool)

(declare-fun lt!293636 () SeekEntryResult!6763)

(get-info :version)

(assert (=> d!89593 (and (or ((_ is Undefined!6763) lt!293636) (not ((_ is Found!6763) lt!293636)) (and (bvsge (index!29354 lt!293636) #b00000000000000000000000000000000) (bvslt (index!29354 lt!293636) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293636) ((_ is Found!6763) lt!293636) (not ((_ is MissingZero!6763) lt!293636)) (and (bvsge (index!29353 lt!293636) #b00000000000000000000000000000000) (bvslt (index!29353 lt!293636) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293636) ((_ is Found!6763) lt!293636) ((_ is MissingZero!6763) lt!293636) (not ((_ is MissingVacant!6763) lt!293636)) (and (bvsge (index!29356 lt!293636) #b00000000000000000000000000000000) (bvslt (index!29356 lt!293636) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293636) (ite ((_ is Found!6763) lt!293636) (= (select (arr!18316 a!2986) (index!29354 lt!293636)) k0!1786) (ite ((_ is MissingZero!6763) lt!293636) (= (select (arr!18316 a!2986) (index!29353 lt!293636)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6763) lt!293636) (= (select (arr!18316 a!2986) (index!29356 lt!293636)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89593 (= lt!293636 e!363150)))

(declare-fun c!72389 () Bool)

(assert (=> d!89593 (= c!72389 (and ((_ is Intermediate!6763) lt!293635) (undefined!7575 lt!293635)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38183 (_ BitVec 32)) SeekEntryResult!6763)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89593 (= lt!293635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89593 (validMask!0 mask!3053)))

(assert (=> d!89593 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!293636)))

(declare-fun b!634964 () Bool)

(assert (=> b!634964 (= e!363150 Undefined!6763)))

(declare-fun b!634965 () Bool)

(assert (=> b!634965 (= e!363149 (seekKeyOrZeroReturnVacant!0 (x!58122 lt!293635) (index!29355 lt!293635) (index!29355 lt!293635) k0!1786 a!2986 mask!3053))))

(declare-fun b!634966 () Bool)

(assert (=> b!634966 (= e!363151 (Found!6763 (index!29355 lt!293635)))))

(declare-fun b!634967 () Bool)

(declare-fun c!72387 () Bool)

(assert (=> b!634967 (= c!72387 (= lt!293637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634967 (= e!363151 e!363149)))

(assert (= (and d!89593 c!72389) b!634964))

(assert (= (and d!89593 (not c!72389)) b!634962))

(assert (= (and b!634962 c!72388) b!634966))

(assert (= (and b!634962 (not c!72388)) b!634967))

(assert (= (and b!634967 c!72387) b!634963))

(assert (= (and b!634967 (not c!72387)) b!634965))

(declare-fun m!609453 () Bool)

(assert (=> b!634962 m!609453))

(declare-fun m!609455 () Bool)

(assert (=> d!89593 m!609455))

(declare-fun m!609457 () Bool)

(assert (=> d!89593 m!609457))

(declare-fun m!609459 () Bool)

(assert (=> d!89593 m!609459))

(declare-fun m!609461 () Bool)

(assert (=> d!89593 m!609461))

(assert (=> d!89593 m!609375))

(assert (=> d!89593 m!609461))

(declare-fun m!609463 () Bool)

(assert (=> d!89593 m!609463))

(declare-fun m!609465 () Bool)

(assert (=> b!634965 m!609465))

(assert (=> b!634875 d!89593))

(declare-fun d!89595 () Bool)

(assert (=> d!89595 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57374 d!89595))

(declare-fun d!89597 () Bool)

(assert (=> d!89597 (= (array_inv!14090 a!2986) (bvsge (size!18680 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57374 d!89597))

(declare-fun d!89599 () Bool)

(declare-fun res!410922 () Bool)

(declare-fun e!363152 () Bool)

(assert (=> d!89599 (=> res!410922 e!363152)))

(assert (=> d!89599 (= res!410922 (= (select (arr!18316 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89599 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!363152)))

(declare-fun b!634968 () Bool)

(declare-fun e!363153 () Bool)

(assert (=> b!634968 (= e!363152 e!363153)))

(declare-fun res!410923 () Bool)

(assert (=> b!634968 (=> (not res!410923) (not e!363153))))

(assert (=> b!634968 (= res!410923 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18680 a!2986)))))

(declare-fun b!634969 () Bool)

(assert (=> b!634969 (= e!363153 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89599 (not res!410922)) b!634968))

(assert (= (and b!634968 res!410923) b!634969))

(declare-fun m!609467 () Bool)

(assert (=> d!89599 m!609467))

(declare-fun m!609469 () Bool)

(assert (=> b!634969 m!609469))

(assert (=> b!634878 d!89599))

(declare-fun b!634988 () Bool)

(declare-fun e!363165 () SeekEntryResult!6763)

(assert (=> b!634988 (= e!363165 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634989 () Bool)

(declare-fun e!363166 () SeekEntryResult!6763)

(assert (=> b!634989 (= e!363166 Undefined!6763)))

(declare-fun b!634990 () Bool)

(declare-fun e!363164 () SeekEntryResult!6763)

(assert (=> b!634990 (= e!363166 e!363164)))

(declare-fun c!72400 () Bool)

(declare-fun lt!293642 () (_ BitVec 64))

(assert (=> b!634990 (= c!72400 (= lt!293642 (select (arr!18316 a!2986) j!136)))))

(declare-fun b!634991 () Bool)

(assert (=> b!634991 (= e!363164 (Found!6763 index!984))))

(declare-fun b!634992 () Bool)

(assert (=> b!634992 (= e!363165 (MissingVacant!6763 vacantSpotIndex!68))))

(declare-fun lt!293643 () SeekEntryResult!6763)

(declare-fun d!89601 () Bool)

(assert (=> d!89601 (and (or ((_ is Undefined!6763) lt!293643) (not ((_ is Found!6763) lt!293643)) (and (bvsge (index!29354 lt!293643) #b00000000000000000000000000000000) (bvslt (index!29354 lt!293643) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293643) ((_ is Found!6763) lt!293643) (not ((_ is MissingVacant!6763) lt!293643)) (not (= (index!29356 lt!293643) vacantSpotIndex!68)) (and (bvsge (index!29356 lt!293643) #b00000000000000000000000000000000) (bvslt (index!29356 lt!293643) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293643) (ite ((_ is Found!6763) lt!293643) (= (select (arr!18316 a!2986) (index!29354 lt!293643)) (select (arr!18316 a!2986) j!136)) (and ((_ is MissingVacant!6763) lt!293643) (= (index!29356 lt!293643) vacantSpotIndex!68) (= (select (arr!18316 a!2986) (index!29356 lt!293643)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89601 (= lt!293643 e!363166)))

(declare-fun c!72398 () Bool)

(assert (=> d!89601 (= c!72398 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89601 (= lt!293642 (select (arr!18316 a!2986) index!984))))

(assert (=> d!89601 (validMask!0 mask!3053)))

(assert (=> d!89601 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053) lt!293643)))

(declare-fun b!634993 () Bool)

(declare-fun c!72399 () Bool)

(assert (=> b!634993 (= c!72399 (= lt!293642 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634993 (= e!363164 e!363165)))

(assert (= (and d!89601 c!72398) b!634989))

(assert (= (and d!89601 (not c!72398)) b!634990))

(assert (= (and b!634990 c!72400) b!634991))

(assert (= (and b!634990 (not c!72400)) b!634993))

(assert (= (and b!634993 c!72399) b!634992))

(assert (= (and b!634993 (not c!72399)) b!634988))

(assert (=> b!634988 m!609357))

(assert (=> b!634988 m!609357))

(assert (=> b!634988 m!609347))

(declare-fun m!609471 () Bool)

(assert (=> b!634988 m!609471))

(declare-fun m!609473 () Bool)

(assert (=> d!89601 m!609473))

(declare-fun m!609475 () Bool)

(assert (=> d!89601 m!609475))

(assert (=> d!89601 m!609393))

(assert (=> d!89601 m!609375))

(assert (=> b!634877 d!89601))

(declare-fun b!635014 () Bool)

(declare-fun e!363184 () Bool)

(declare-fun e!363185 () Bool)

(assert (=> b!635014 (= e!363184 e!363185)))

(declare-fun lt!293663 () (_ BitVec 64))

(assert (=> b!635014 (= lt!293663 (select (arr!18316 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!293664 () Unit!21410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38183 (_ BitVec 64) (_ BitVec 32)) Unit!21410)

(assert (=> b!635014 (= lt!293664 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!293663 #b00000000000000000000000000000000))))

(assert (=> b!635014 (arrayContainsKey!0 a!2986 lt!293663 #b00000000000000000000000000000000)))

(declare-fun lt!293662 () Unit!21410)

(assert (=> b!635014 (= lt!293662 lt!293664)))

(declare-fun res!410940 () Bool)

(assert (=> b!635014 (= res!410940 (= (seekEntryOrOpen!0 (select (arr!18316 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6763 #b00000000000000000000000000000000)))))

(assert (=> b!635014 (=> (not res!410940) (not e!363185))))

(declare-fun b!635015 () Bool)

(declare-fun call!33398 () Bool)

(assert (=> b!635015 (= e!363185 call!33398)))

(declare-fun b!635016 () Bool)

(declare-fun e!363186 () Bool)

(assert (=> b!635016 (= e!363186 e!363184)))

(declare-fun c!72404 () Bool)

(assert (=> b!635016 (= c!72404 (validKeyInArray!0 (select (arr!18316 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33395 () Bool)

(assert (=> bm!33395 (= call!33398 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!635017 () Bool)

(assert (=> b!635017 (= e!363184 call!33398)))

(declare-fun d!89607 () Bool)

(declare-fun res!410941 () Bool)

(assert (=> d!89607 (=> res!410941 e!363186)))

(assert (=> d!89607 (= res!410941 (bvsge #b00000000000000000000000000000000 (size!18680 a!2986)))))

(assert (=> d!89607 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!363186)))

(assert (= (and d!89607 (not res!410941)) b!635016))

(assert (= (and b!635016 c!72404) b!635014))

(assert (= (and b!635016 (not c!72404)) b!635017))

(assert (= (and b!635014 res!410940) b!635015))

(assert (= (or b!635015 b!635017) bm!33395))

(assert (=> b!635014 m!609467))

(declare-fun m!609495 () Bool)

(assert (=> b!635014 m!609495))

(declare-fun m!609497 () Bool)

(assert (=> b!635014 m!609497))

(assert (=> b!635014 m!609467))

(declare-fun m!609499 () Bool)

(assert (=> b!635014 m!609499))

(assert (=> b!635016 m!609467))

(assert (=> b!635016 m!609467))

(declare-fun m!609501 () Bool)

(assert (=> b!635016 m!609501))

(declare-fun m!609503 () Bool)

(assert (=> bm!33395 m!609503))

(assert (=> b!634880 d!89607))

(declare-fun d!89619 () Bool)

(declare-fun res!410942 () Bool)

(declare-fun e!363187 () Bool)

(assert (=> d!89619 (=> res!410942 e!363187)))

(assert (=> d!89619 (= res!410942 (= (select (arr!18316 lt!293582) j!136) (select (arr!18316 a!2986) j!136)))))

(assert (=> d!89619 (= (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) j!136) e!363187)))

(declare-fun b!635018 () Bool)

(declare-fun e!363188 () Bool)

(assert (=> b!635018 (= e!363187 e!363188)))

(declare-fun res!410943 () Bool)

(assert (=> b!635018 (=> (not res!410943) (not e!363188))))

(assert (=> b!635018 (= res!410943 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18680 lt!293582)))))

(declare-fun b!635019 () Bool)

(assert (=> b!635019 (= e!363188 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89619 (not res!410942)) b!635018))

(assert (= (and b!635018 res!410943) b!635019))

(declare-fun m!609505 () Bool)

(assert (=> d!89619 m!609505))

(assert (=> b!635019 m!609347))

(declare-fun m!609507 () Bool)

(assert (=> b!635019 m!609507))

(assert (=> b!634869 d!89619))

(declare-fun b!635042 () Bool)

(declare-fun e!363205 () Bool)

(declare-fun call!33401 () Bool)

(assert (=> b!635042 (= e!363205 call!33401)))

(declare-fun b!635043 () Bool)

(assert (=> b!635043 (= e!363205 call!33401)))

(declare-fun b!635044 () Bool)

(declare-fun e!363204 () Bool)

(declare-fun contains!3101 (List!12410 (_ BitVec 64)) Bool)

(assert (=> b!635044 (= e!363204 (contains!3101 Nil!12407 (select (arr!18316 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89621 () Bool)

(declare-fun res!410952 () Bool)

(declare-fun e!363206 () Bool)

(assert (=> d!89621 (=> res!410952 e!363206)))

(assert (=> d!89621 (= res!410952 (bvsge #b00000000000000000000000000000000 (size!18680 a!2986)))))

(assert (=> d!89621 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12407) e!363206)))

(declare-fun b!635045 () Bool)

(declare-fun e!363203 () Bool)

(assert (=> b!635045 (= e!363203 e!363205)))

(declare-fun c!72413 () Bool)

(assert (=> b!635045 (= c!72413 (validKeyInArray!0 (select (arr!18316 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33398 () Bool)

(assert (=> bm!33398 (= call!33401 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72413 (Cons!12406 (select (arr!18316 a!2986) #b00000000000000000000000000000000) Nil!12407) Nil!12407)))))

(declare-fun b!635046 () Bool)

(assert (=> b!635046 (= e!363206 e!363203)))

(declare-fun res!410950 () Bool)

(assert (=> b!635046 (=> (not res!410950) (not e!363203))))

(assert (=> b!635046 (= res!410950 (not e!363204))))

(declare-fun res!410951 () Bool)

(assert (=> b!635046 (=> (not res!410951) (not e!363204))))

(assert (=> b!635046 (= res!410951 (validKeyInArray!0 (select (arr!18316 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89621 (not res!410952)) b!635046))

(assert (= (and b!635046 res!410951) b!635044))

(assert (= (and b!635046 res!410950) b!635045))

(assert (= (and b!635045 c!72413) b!635043))

(assert (= (and b!635045 (not c!72413)) b!635042))

(assert (= (or b!635043 b!635042) bm!33398))

(assert (=> b!635044 m!609467))

(assert (=> b!635044 m!609467))

(declare-fun m!609509 () Bool)

(assert (=> b!635044 m!609509))

(assert (=> b!635045 m!609467))

(assert (=> b!635045 m!609467))

(assert (=> b!635045 m!609501))

(assert (=> bm!33398 m!609467))

(declare-fun m!609511 () Bool)

(assert (=> bm!33398 m!609511))

(assert (=> b!635046 m!609467))

(assert (=> b!635046 m!609467))

(assert (=> b!635046 m!609501))

(assert (=> b!634882 d!89621))

(declare-fun b!635047 () Bool)

(declare-fun e!363208 () SeekEntryResult!6763)

(assert (=> b!635047 (= e!363208 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!293588 lt!293582 mask!3053))))

(declare-fun b!635048 () Bool)

(declare-fun e!363209 () SeekEntryResult!6763)

(assert (=> b!635048 (= e!363209 Undefined!6763)))

(declare-fun b!635049 () Bool)

(declare-fun e!363207 () SeekEntryResult!6763)

(assert (=> b!635049 (= e!363209 e!363207)))

(declare-fun c!72416 () Bool)

(declare-fun lt!293669 () (_ BitVec 64))

(assert (=> b!635049 (= c!72416 (= lt!293669 lt!293588))))

(declare-fun b!635050 () Bool)

(assert (=> b!635050 (= e!363207 (Found!6763 index!984))))

(declare-fun b!635051 () Bool)

(assert (=> b!635051 (= e!363208 (MissingVacant!6763 vacantSpotIndex!68))))

(declare-fun lt!293670 () SeekEntryResult!6763)

(declare-fun d!89623 () Bool)

(assert (=> d!89623 (and (or ((_ is Undefined!6763) lt!293670) (not ((_ is Found!6763) lt!293670)) (and (bvsge (index!29354 lt!293670) #b00000000000000000000000000000000) (bvslt (index!29354 lt!293670) (size!18680 lt!293582)))) (or ((_ is Undefined!6763) lt!293670) ((_ is Found!6763) lt!293670) (not ((_ is MissingVacant!6763) lt!293670)) (not (= (index!29356 lt!293670) vacantSpotIndex!68)) (and (bvsge (index!29356 lt!293670) #b00000000000000000000000000000000) (bvslt (index!29356 lt!293670) (size!18680 lt!293582)))) (or ((_ is Undefined!6763) lt!293670) (ite ((_ is Found!6763) lt!293670) (= (select (arr!18316 lt!293582) (index!29354 lt!293670)) lt!293588) (and ((_ is MissingVacant!6763) lt!293670) (= (index!29356 lt!293670) vacantSpotIndex!68) (= (select (arr!18316 lt!293582) (index!29356 lt!293670)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89623 (= lt!293670 e!363209)))

(declare-fun c!72414 () Bool)

(assert (=> d!89623 (= c!72414 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89623 (= lt!293669 (select (arr!18316 lt!293582) index!984))))

(assert (=> d!89623 (validMask!0 mask!3053)))

(assert (=> d!89623 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293588 lt!293582 mask!3053) lt!293670)))

(declare-fun b!635052 () Bool)

(declare-fun c!72415 () Bool)

(assert (=> b!635052 (= c!72415 (= lt!293669 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635052 (= e!363207 e!363208)))

(assert (= (and d!89623 c!72414) b!635048))

(assert (= (and d!89623 (not c!72414)) b!635049))

(assert (= (and b!635049 c!72416) b!635050))

(assert (= (and b!635049 (not c!72416)) b!635052))

(assert (= (and b!635052 c!72415) b!635051))

(assert (= (and b!635052 (not c!72415)) b!635047))

(assert (=> b!635047 m!609357))

(assert (=> b!635047 m!609357))

(declare-fun m!609513 () Bool)

(assert (=> b!635047 m!609513))

(declare-fun m!609515 () Bool)

(assert (=> d!89623 m!609515))

(declare-fun m!609517 () Bool)

(assert (=> d!89623 m!609517))

(declare-fun m!609519 () Bool)

(assert (=> d!89623 m!609519))

(assert (=> d!89623 m!609375))

(assert (=> b!634871 d!89623))

(declare-fun d!89625 () Bool)

(declare-fun e!363220 () Bool)

(assert (=> d!89625 e!363220))

(declare-fun res!410960 () Bool)

(assert (=> d!89625 (=> (not res!410960) (not e!363220))))

(assert (=> d!89625 (= res!410960 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18680 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18680 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18680 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18680 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18680 a!2986))))))

(declare-fun lt!293680 () Unit!21410)

(declare-fun choose!9 (array!38183 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21410)

(assert (=> d!89625 (= lt!293680 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89625 (validMask!0 mask!3053)))

(assert (=> d!89625 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 mask!3053) lt!293680)))

(declare-fun b!635066 () Bool)

(assert (=> b!635066 (= e!363220 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 (select (store (arr!18316 a!2986) i!1108 k0!1786) j!136) (array!38184 (store (arr!18316 a!2986) i!1108 k0!1786) (size!18680 a!2986)) mask!3053)))))

(assert (= (and d!89625 res!410960) b!635066))

(declare-fun m!609533 () Bool)

(assert (=> d!89625 m!609533))

(assert (=> d!89625 m!609375))

(assert (=> b!635066 m!609363))

(declare-fun m!609537 () Bool)

(assert (=> b!635066 m!609537))

(assert (=> b!635066 m!609347))

(assert (=> b!635066 m!609359))

(assert (=> b!635066 m!609347))

(assert (=> b!635066 m!609351))

(assert (=> b!635066 m!609363))

(assert (=> b!634871 d!89625))

(declare-fun d!89631 () Bool)

(declare-fun lt!293692 () (_ BitVec 32))

(assert (=> d!89631 (and (bvsge lt!293692 #b00000000000000000000000000000000) (bvslt lt!293692 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89631 (= lt!293692 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89631 (validMask!0 mask!3053)))

(assert (=> d!89631 (= (nextIndex!0 index!984 x!910 mask!3053) lt!293692)))

(declare-fun bs!19087 () Bool)

(assert (= bs!19087 d!89631))

(declare-fun m!609559 () Bool)

(assert (=> bs!19087 m!609559))

(assert (=> bs!19087 m!609375))

(assert (=> b!634871 d!89631))

(declare-fun b!635092 () Bool)

(declare-fun e!363235 () SeekEntryResult!6763)

(assert (=> b!635092 (= e!363235 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293589 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635093 () Bool)

(declare-fun e!363236 () SeekEntryResult!6763)

(assert (=> b!635093 (= e!363236 Undefined!6763)))

(declare-fun b!635094 () Bool)

(declare-fun e!363234 () SeekEntryResult!6763)

(assert (=> b!635094 (= e!363236 e!363234)))

(declare-fun c!72434 () Bool)

(declare-fun lt!293693 () (_ BitVec 64))

(assert (=> b!635094 (= c!72434 (= lt!293693 (select (arr!18316 a!2986) j!136)))))

(declare-fun b!635095 () Bool)

(assert (=> b!635095 (= e!363234 (Found!6763 lt!293589))))

(declare-fun b!635096 () Bool)

(assert (=> b!635096 (= e!363235 (MissingVacant!6763 vacantSpotIndex!68))))

(declare-fun lt!293694 () SeekEntryResult!6763)

(declare-fun d!89639 () Bool)

(assert (=> d!89639 (and (or ((_ is Undefined!6763) lt!293694) (not ((_ is Found!6763) lt!293694)) (and (bvsge (index!29354 lt!293694) #b00000000000000000000000000000000) (bvslt (index!29354 lt!293694) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293694) ((_ is Found!6763) lt!293694) (not ((_ is MissingVacant!6763) lt!293694)) (not (= (index!29356 lt!293694) vacantSpotIndex!68)) (and (bvsge (index!29356 lt!293694) #b00000000000000000000000000000000) (bvslt (index!29356 lt!293694) (size!18680 a!2986)))) (or ((_ is Undefined!6763) lt!293694) (ite ((_ is Found!6763) lt!293694) (= (select (arr!18316 a!2986) (index!29354 lt!293694)) (select (arr!18316 a!2986) j!136)) (and ((_ is MissingVacant!6763) lt!293694) (= (index!29356 lt!293694) vacantSpotIndex!68) (= (select (arr!18316 a!2986) (index!29356 lt!293694)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89639 (= lt!293694 e!363236)))

(declare-fun c!72432 () Bool)

(assert (=> d!89639 (= c!72432 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89639 (= lt!293693 (select (arr!18316 a!2986) lt!293589))))

(assert (=> d!89639 (validMask!0 mask!3053)))

(assert (=> d!89639 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 (select (arr!18316 a!2986) j!136) a!2986 mask!3053) lt!293694)))

(declare-fun b!635097 () Bool)

(declare-fun c!72433 () Bool)

(assert (=> b!635097 (= c!72433 (= lt!293693 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635097 (= e!363234 e!363235)))

(assert (= (and d!89639 c!72432) b!635093))

(assert (= (and d!89639 (not c!72432)) b!635094))

(assert (= (and b!635094 c!72434) b!635095))

(assert (= (and b!635094 (not c!72434)) b!635097))

(assert (= (and b!635097 c!72433) b!635096))

(assert (= (and b!635097 (not c!72433)) b!635092))

(declare-fun m!609561 () Bool)

(assert (=> b!635092 m!609561))

(assert (=> b!635092 m!609561))

(assert (=> b!635092 m!609347))

(declare-fun m!609563 () Bool)

(assert (=> b!635092 m!609563))

(declare-fun m!609565 () Bool)

(assert (=> d!89639 m!609565))

(declare-fun m!609567 () Bool)

(assert (=> d!89639 m!609567))

(declare-fun m!609569 () Bool)

(assert (=> d!89639 m!609569))

(assert (=> d!89639 m!609375))

(assert (=> b!634871 d!89639))

(declare-fun b!635098 () Bool)

(declare-fun e!363238 () SeekEntryResult!6763)

(assert (=> b!635098 (= e!363238 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293589 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!293588 lt!293582 mask!3053))))

(declare-fun b!635099 () Bool)

(declare-fun e!363239 () SeekEntryResult!6763)

(assert (=> b!635099 (= e!363239 Undefined!6763)))

(declare-fun b!635100 () Bool)

(declare-fun e!363237 () SeekEntryResult!6763)

(assert (=> b!635100 (= e!363239 e!363237)))

(declare-fun c!72437 () Bool)

(declare-fun lt!293697 () (_ BitVec 64))

(assert (=> b!635100 (= c!72437 (= lt!293697 lt!293588))))

(declare-fun b!635101 () Bool)

(assert (=> b!635101 (= e!363237 (Found!6763 lt!293589))))

(declare-fun b!635102 () Bool)

(assert (=> b!635102 (= e!363238 (MissingVacant!6763 vacantSpotIndex!68))))

(declare-fun d!89641 () Bool)

(declare-fun lt!293698 () SeekEntryResult!6763)

(assert (=> d!89641 (and (or ((_ is Undefined!6763) lt!293698) (not ((_ is Found!6763) lt!293698)) (and (bvsge (index!29354 lt!293698) #b00000000000000000000000000000000) (bvslt (index!29354 lt!293698) (size!18680 lt!293582)))) (or ((_ is Undefined!6763) lt!293698) ((_ is Found!6763) lt!293698) (not ((_ is MissingVacant!6763) lt!293698)) (not (= (index!29356 lt!293698) vacantSpotIndex!68)) (and (bvsge (index!29356 lt!293698) #b00000000000000000000000000000000) (bvslt (index!29356 lt!293698) (size!18680 lt!293582)))) (or ((_ is Undefined!6763) lt!293698) (ite ((_ is Found!6763) lt!293698) (= (select (arr!18316 lt!293582) (index!29354 lt!293698)) lt!293588) (and ((_ is MissingVacant!6763) lt!293698) (= (index!29356 lt!293698) vacantSpotIndex!68) (= (select (arr!18316 lt!293582) (index!29356 lt!293698)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89641 (= lt!293698 e!363239)))

(declare-fun c!72435 () Bool)

(assert (=> d!89641 (= c!72435 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89641 (= lt!293697 (select (arr!18316 lt!293582) lt!293589))))

(assert (=> d!89641 (validMask!0 mask!3053)))

(assert (=> d!89641 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293589 vacantSpotIndex!68 lt!293588 lt!293582 mask!3053) lt!293698)))

(declare-fun b!635103 () Bool)

(declare-fun c!72436 () Bool)

(assert (=> b!635103 (= c!72436 (= lt!293697 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635103 (= e!363237 e!363238)))

(assert (= (and d!89641 c!72435) b!635099))

(assert (= (and d!89641 (not c!72435)) b!635100))

(assert (= (and b!635100 c!72437) b!635101))

(assert (= (and b!635100 (not c!72437)) b!635103))

(assert (= (and b!635103 c!72436) b!635102))

(assert (= (and b!635103 (not c!72436)) b!635098))

(assert (=> b!635098 m!609561))

(assert (=> b!635098 m!609561))

(declare-fun m!609571 () Bool)

(assert (=> b!635098 m!609571))

(declare-fun m!609573 () Bool)

(assert (=> d!89641 m!609573))

(declare-fun m!609577 () Bool)

(assert (=> d!89641 m!609577))

(declare-fun m!609579 () Bool)

(assert (=> d!89641 m!609579))

(assert (=> d!89641 m!609375))

(assert (=> b!634871 d!89641))

(declare-fun d!89645 () Bool)

(declare-fun res!410962 () Bool)

(declare-fun e!363240 () Bool)

(assert (=> d!89645 (=> res!410962 e!363240)))

(assert (=> d!89645 (= res!410962 (= (select (arr!18316 lt!293582) index!984) (select (arr!18316 a!2986) j!136)))))

(assert (=> d!89645 (= (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) index!984) e!363240)))

(declare-fun b!635104 () Bool)

(declare-fun e!363241 () Bool)

(assert (=> b!635104 (= e!363240 e!363241)))

(declare-fun res!410963 () Bool)

(assert (=> b!635104 (=> (not res!410963) (not e!363241))))

(assert (=> b!635104 (= res!410963 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18680 lt!293582)))))

(declare-fun b!635105 () Bool)

(assert (=> b!635105 (= e!363241 (arrayContainsKey!0 lt!293582 (select (arr!18316 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89645 (not res!410962)) b!635104))

(assert (= (and b!635104 res!410963) b!635105))

(assert (=> d!89645 m!609519))

(assert (=> b!635105 m!609347))

(declare-fun m!609581 () Bool)

(assert (=> b!635105 m!609581))

(assert (=> b!634883 d!89645))

(check-sat (not b!634969) (not d!89641) (not d!89631) (not d!89623) (not bm!33395) (not b!634949) (not b!635092) (not b!635014) (not bm!33398) (not d!89625) (not b!635045) (not b!634965) (not b!635047) (not d!89639) (not b!634988) (not b!635098) (not d!89591) (not b!635066) (not b!635046) (not b!635019) (not b!635044) (not d!89593) (not b!635016) (not d!89601) (not b!635105))
(check-sat)
