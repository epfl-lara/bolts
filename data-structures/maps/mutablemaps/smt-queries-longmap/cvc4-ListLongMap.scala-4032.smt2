; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54910 () Bool)

(assert start!54910)

(declare-fun b!600809 () Bool)

(declare-fun e!343528 () Bool)

(declare-fun e!343520 () Bool)

(assert (=> b!600809 (= e!343528 e!343520)))

(declare-fun res!385827 () Bool)

(assert (=> b!600809 (=> res!385827 e!343520)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!273456 () (_ BitVec 64))

(declare-fun lt!273460 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37108 0))(
  ( (array!37109 (arr!17810 (Array (_ BitVec 32) (_ BitVec 64))) (size!18174 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37108)

(assert (=> b!600809 (= res!385827 (or (not (= (select (arr!17810 a!2986) j!136) lt!273460)) (not (= (select (arr!17810 a!2986) j!136) lt!273456)) (bvsge j!136 index!984)))))

(declare-fun b!600810 () Bool)

(declare-fun res!385824 () Bool)

(declare-fun e!343523 () Bool)

(assert (=> b!600810 (=> (not res!385824) (not e!343523))))

(declare-datatypes ((List!11904 0))(
  ( (Nil!11901) (Cons!11900 (h!12945 (_ BitVec 64)) (t!18140 List!11904)) )
))
(declare-fun arrayNoDuplicates!0 (array!37108 (_ BitVec 32) List!11904) Bool)

(assert (=> b!600810 (= res!385824 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11901))))

(declare-fun b!600811 () Bool)

(declare-fun res!385832 () Bool)

(assert (=> b!600811 (=> (not res!385832) (not e!343523))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600811 (= res!385832 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17810 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600812 () Bool)

(declare-fun e!343521 () Bool)

(declare-fun lt!273458 () array!37108)

(declare-fun arrayContainsKey!0 (array!37108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600812 (= e!343521 (arrayContainsKey!0 lt!273458 (select (arr!17810 a!2986) j!136) index!984))))

(declare-fun b!600813 () Bool)

(declare-fun e!343531 () Bool)

(assert (=> b!600813 (= e!343531 e!343523)))

(declare-fun res!385838 () Bool)

(assert (=> b!600813 (=> (not res!385838) (not e!343523))))

(declare-datatypes ((SeekEntryResult!6257 0))(
  ( (MissingZero!6257 (index!27284 (_ BitVec 32))) (Found!6257 (index!27285 (_ BitVec 32))) (Intermediate!6257 (undefined!7069 Bool) (index!27286 (_ BitVec 32)) (x!56105 (_ BitVec 32))) (Undefined!6257) (MissingVacant!6257 (index!27287 (_ BitVec 32))) )
))
(declare-fun lt!273462 () SeekEntryResult!6257)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!600813 (= res!385838 (or (= lt!273462 (MissingZero!6257 i!1108)) (= lt!273462 (MissingVacant!6257 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37108 (_ BitVec 32)) SeekEntryResult!6257)

(assert (=> b!600813 (= lt!273462 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600814 () Bool)

(declare-fun e!343526 () Bool)

(declare-fun lt!273467 () SeekEntryResult!6257)

(declare-fun lt!273455 () SeekEntryResult!6257)

(assert (=> b!600814 (= e!343526 (= lt!273467 lt!273455))))

(declare-fun b!600815 () Bool)

(declare-datatypes ((Unit!18972 0))(
  ( (Unit!18973) )
))
(declare-fun e!343529 () Unit!18972)

(declare-fun Unit!18974 () Unit!18972)

(assert (=> b!600815 (= e!343529 Unit!18974)))

(assert (=> b!600815 false))

(declare-fun b!600816 () Bool)

(assert (=> b!600816 (= e!343520 e!343521)))

(declare-fun res!385820 () Bool)

(assert (=> b!600816 (=> (not res!385820) (not e!343521))))

(assert (=> b!600816 (= res!385820 (arrayContainsKey!0 lt!273458 (select (arr!17810 a!2986) j!136) j!136))))

(declare-fun b!600817 () Bool)

(declare-fun res!385830 () Bool)

(assert (=> b!600817 (=> (not res!385830) (not e!343531))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600817 (= res!385830 (validKeyInArray!0 k!1786))))

(declare-fun b!600818 () Bool)

(declare-fun e!343527 () Bool)

(declare-fun e!343524 () Bool)

(assert (=> b!600818 (= e!343527 (not e!343524))))

(declare-fun res!385837 () Bool)

(assert (=> b!600818 (=> res!385837 e!343524)))

(declare-fun lt!273465 () SeekEntryResult!6257)

(assert (=> b!600818 (= res!385837 (not (= lt!273465 (Found!6257 index!984))))))

(declare-fun lt!273457 () Unit!18972)

(assert (=> b!600818 (= lt!273457 e!343529)))

(declare-fun c!67862 () Bool)

(assert (=> b!600818 (= c!67862 (= lt!273465 Undefined!6257))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37108 (_ BitVec 32)) SeekEntryResult!6257)

(assert (=> b!600818 (= lt!273465 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273460 lt!273458 mask!3053))))

(assert (=> b!600818 e!343526))

(declare-fun res!385828 () Bool)

(assert (=> b!600818 (=> (not res!385828) (not e!343526))))

(declare-fun lt!273468 () (_ BitVec 32))

(assert (=> b!600818 (= res!385828 (= lt!273455 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273468 vacantSpotIndex!68 lt!273460 lt!273458 mask!3053)))))

(assert (=> b!600818 (= lt!273455 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273468 vacantSpotIndex!68 (select (arr!17810 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600818 (= lt!273460 (select (store (arr!17810 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273459 () Unit!18972)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37108 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18972)

(assert (=> b!600818 (= lt!273459 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273468 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600818 (= lt!273468 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600819 () Bool)

(declare-fun res!385819 () Bool)

(declare-fun e!343525 () Bool)

(assert (=> b!600819 (=> res!385819 e!343525)))

(declare-fun noDuplicate!303 (List!11904) Bool)

(assert (=> b!600819 (= res!385819 (not (noDuplicate!303 Nil!11901)))))

(declare-fun b!600820 () Bool)

(declare-fun res!385834 () Bool)

(assert (=> b!600820 (=> (not res!385834) (not e!343531))))

(assert (=> b!600820 (= res!385834 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600821 () Bool)

(declare-fun Unit!18975 () Unit!18972)

(assert (=> b!600821 (= e!343529 Unit!18975)))

(declare-fun b!600822 () Bool)

(declare-fun e!343522 () Bool)

(assert (=> b!600822 (= e!343522 e!343527)))

(declare-fun res!385833 () Bool)

(assert (=> b!600822 (=> (not res!385833) (not e!343527))))

(assert (=> b!600822 (= res!385833 (and (= lt!273467 (Found!6257 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17810 a!2986) index!984) (select (arr!17810 a!2986) j!136))) (not (= (select (arr!17810 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600822 (= lt!273467 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17810 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600823 () Bool)

(declare-fun res!385825 () Bool)

(assert (=> b!600823 (=> (not res!385825) (not e!343523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37108 (_ BitVec 32)) Bool)

(assert (=> b!600823 (= res!385825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600824 () Bool)

(declare-fun res!385821 () Bool)

(assert (=> b!600824 (=> (not res!385821) (not e!343531))))

(assert (=> b!600824 (= res!385821 (and (= (size!18174 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18174 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18174 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600825 () Bool)

(declare-fun res!385831 () Bool)

(assert (=> b!600825 (=> res!385831 e!343525)))

(declare-fun contains!2989 (List!11904 (_ BitVec 64)) Bool)

(assert (=> b!600825 (= res!385831 (contains!2989 Nil!11901 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!385823 () Bool)

(assert (=> start!54910 (=> (not res!385823) (not e!343531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54910 (= res!385823 (validMask!0 mask!3053))))

(assert (=> start!54910 e!343531))

(assert (=> start!54910 true))

(declare-fun array_inv!13584 (array!37108) Bool)

(assert (=> start!54910 (array_inv!13584 a!2986)))

(declare-fun b!600826 () Bool)

(declare-fun e!343530 () Bool)

(assert (=> b!600826 (= e!343524 e!343530)))

(declare-fun res!385836 () Bool)

(assert (=> b!600826 (=> res!385836 e!343530)))

(assert (=> b!600826 (= res!385836 (or (not (= (select (arr!17810 a!2986) j!136) lt!273460)) (not (= (select (arr!17810 a!2986) j!136) lt!273456)) (bvsge j!136 index!984)))))

(assert (=> b!600826 e!343528))

(declare-fun res!385822 () Bool)

(assert (=> b!600826 (=> (not res!385822) (not e!343528))))

(assert (=> b!600826 (= res!385822 (= lt!273456 (select (arr!17810 a!2986) j!136)))))

(assert (=> b!600826 (= lt!273456 (select (store (arr!17810 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600827 () Bool)

(assert (=> b!600827 (= e!343523 e!343522)))

(declare-fun res!385829 () Bool)

(assert (=> b!600827 (=> (not res!385829) (not e!343522))))

(assert (=> b!600827 (= res!385829 (= (select (store (arr!17810 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600827 (= lt!273458 (array!37109 (store (arr!17810 a!2986) i!1108 k!1786) (size!18174 a!2986)))))

(declare-fun b!600828 () Bool)

(assert (=> b!600828 (= e!343525 true)))

(declare-fun lt!273461 () Bool)

(assert (=> b!600828 (= lt!273461 (contains!2989 Nil!11901 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600829 () Bool)

(declare-fun res!385826 () Bool)

(assert (=> b!600829 (=> (not res!385826) (not e!343531))))

(assert (=> b!600829 (= res!385826 (validKeyInArray!0 (select (arr!17810 a!2986) j!136)))))

(declare-fun b!600830 () Bool)

(assert (=> b!600830 (= e!343530 e!343525)))

(declare-fun res!385835 () Bool)

(assert (=> b!600830 (=> res!385835 e!343525)))

(assert (=> b!600830 (= res!385835 (or (bvsge (size!18174 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18174 a!2986))))))

(assert (=> b!600830 (arrayNoDuplicates!0 lt!273458 j!136 Nil!11901)))

(declare-fun lt!273463 () Unit!18972)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37108 (_ BitVec 32) (_ BitVec 32)) Unit!18972)

(assert (=> b!600830 (= lt!273463 (lemmaNoDuplicateFromThenFromBigger!0 lt!273458 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600830 (arrayNoDuplicates!0 lt!273458 #b00000000000000000000000000000000 Nil!11901)))

(declare-fun lt!273466 () Unit!18972)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37108 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11904) Unit!18972)

(assert (=> b!600830 (= lt!273466 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11901))))

(assert (=> b!600830 (arrayContainsKey!0 lt!273458 (select (arr!17810 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273464 () Unit!18972)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37108 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18972)

(assert (=> b!600830 (= lt!273464 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273458 (select (arr!17810 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!54910 res!385823) b!600824))

(assert (= (and b!600824 res!385821) b!600829))

(assert (= (and b!600829 res!385826) b!600817))

(assert (= (and b!600817 res!385830) b!600820))

(assert (= (and b!600820 res!385834) b!600813))

(assert (= (and b!600813 res!385838) b!600823))

(assert (= (and b!600823 res!385825) b!600810))

(assert (= (and b!600810 res!385824) b!600811))

(assert (= (and b!600811 res!385832) b!600827))

(assert (= (and b!600827 res!385829) b!600822))

(assert (= (and b!600822 res!385833) b!600818))

(assert (= (and b!600818 res!385828) b!600814))

(assert (= (and b!600818 c!67862) b!600815))

(assert (= (and b!600818 (not c!67862)) b!600821))

(assert (= (and b!600818 (not res!385837)) b!600826))

(assert (= (and b!600826 res!385822) b!600809))

(assert (= (and b!600809 (not res!385827)) b!600816))

(assert (= (and b!600816 res!385820) b!600812))

(assert (= (and b!600826 (not res!385836)) b!600830))

(assert (= (and b!600830 (not res!385835)) b!600819))

(assert (= (and b!600819 (not res!385819)) b!600825))

(assert (= (and b!600825 (not res!385831)) b!600828))

(declare-fun m!578063 () Bool)

(assert (=> b!600828 m!578063))

(declare-fun m!578065 () Bool)

(assert (=> b!600830 m!578065))

(declare-fun m!578067 () Bool)

(assert (=> b!600830 m!578067))

(declare-fun m!578069 () Bool)

(assert (=> b!600830 m!578069))

(assert (=> b!600830 m!578067))

(declare-fun m!578071 () Bool)

(assert (=> b!600830 m!578071))

(declare-fun m!578073 () Bool)

(assert (=> b!600830 m!578073))

(declare-fun m!578075 () Bool)

(assert (=> b!600830 m!578075))

(assert (=> b!600830 m!578067))

(declare-fun m!578077 () Bool)

(assert (=> b!600830 m!578077))

(declare-fun m!578079 () Bool)

(assert (=> b!600811 m!578079))

(declare-fun m!578081 () Bool)

(assert (=> b!600827 m!578081))

(declare-fun m!578083 () Bool)

(assert (=> b!600827 m!578083))

(assert (=> b!600816 m!578067))

(assert (=> b!600816 m!578067))

(declare-fun m!578085 () Bool)

(assert (=> b!600816 m!578085))

(declare-fun m!578087 () Bool)

(assert (=> b!600810 m!578087))

(declare-fun m!578089 () Bool)

(assert (=> b!600813 m!578089))

(declare-fun m!578091 () Bool)

(assert (=> b!600825 m!578091))

(assert (=> b!600829 m!578067))

(assert (=> b!600829 m!578067))

(declare-fun m!578093 () Bool)

(assert (=> b!600829 m!578093))

(declare-fun m!578095 () Bool)

(assert (=> b!600823 m!578095))

(declare-fun m!578097 () Bool)

(assert (=> b!600819 m!578097))

(declare-fun m!578099 () Bool)

(assert (=> start!54910 m!578099))

(declare-fun m!578101 () Bool)

(assert (=> start!54910 m!578101))

(assert (=> b!600812 m!578067))

(assert (=> b!600812 m!578067))

(declare-fun m!578103 () Bool)

(assert (=> b!600812 m!578103))

(declare-fun m!578105 () Bool)

(assert (=> b!600822 m!578105))

(assert (=> b!600822 m!578067))

(assert (=> b!600822 m!578067))

(declare-fun m!578107 () Bool)

(assert (=> b!600822 m!578107))

(declare-fun m!578109 () Bool)

(assert (=> b!600817 m!578109))

(assert (=> b!600809 m!578067))

(declare-fun m!578111 () Bool)

(assert (=> b!600820 m!578111))

(assert (=> b!600826 m!578067))

(assert (=> b!600826 m!578081))

(declare-fun m!578113 () Bool)

(assert (=> b!600826 m!578113))

(assert (=> b!600818 m!578067))

(declare-fun m!578115 () Bool)

(assert (=> b!600818 m!578115))

(declare-fun m!578117 () Bool)

(assert (=> b!600818 m!578117))

(assert (=> b!600818 m!578067))

(assert (=> b!600818 m!578081))

(declare-fun m!578119 () Bool)

(assert (=> b!600818 m!578119))

(declare-fun m!578121 () Bool)

(assert (=> b!600818 m!578121))

(declare-fun m!578123 () Bool)

(assert (=> b!600818 m!578123))

(declare-fun m!578125 () Bool)

(assert (=> b!600818 m!578125))

(push 1)

