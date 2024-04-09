; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59392 () Bool)

(assert start!59392)

(declare-fun b!655890 () Bool)

(declare-datatypes ((Unit!22614 0))(
  ( (Unit!22615) )
))
(declare-fun e!376680 () Unit!22614)

(declare-fun Unit!22616 () Unit!22614)

(assert (=> b!655890 (= e!376680 Unit!22616)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!376690 () Bool)

(declare-fun b!655891 () Bool)

(declare-datatypes ((array!38668 0))(
  ( (array!38669 (arr!18530 (Array (_ BitVec 32) (_ BitVec 64))) (size!18894 (_ BitVec 32))) )
))
(declare-fun lt!306190 () array!38668)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38668)

(declare-fun arrayContainsKey!0 (array!38668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655891 (= e!376690 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) index!984))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun e!376692 () Bool)

(declare-fun b!655892 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6977 0))(
  ( (MissingZero!6977 (index!30266 (_ BitVec 32))) (Found!6977 (index!30267 (_ BitVec 32))) (Intermediate!6977 (undefined!7789 Bool) (index!30268 (_ BitVec 32)) (x!59075 (_ BitVec 32))) (Undefined!6977) (MissingVacant!6977 (index!30269 (_ BitVec 32))) )
))
(declare-fun lt!306194 () SeekEntryResult!6977)

(assert (=> b!655892 (= e!376692 (not (or (not (= lt!306194 (MissingVacant!6977 vacantSpotIndex!68))) (= (select (store (arr!18530 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!306198 () Unit!22614)

(declare-fun e!376682 () Unit!22614)

(assert (=> b!655892 (= lt!306198 e!376682)))

(declare-fun c!75525 () Bool)

(assert (=> b!655892 (= c!75525 (= lt!306194 (Found!6977 index!984)))))

(declare-fun lt!306185 () Unit!22614)

(declare-fun e!376685 () Unit!22614)

(assert (=> b!655892 (= lt!306185 e!376685)))

(declare-fun c!75526 () Bool)

(assert (=> b!655892 (= c!75526 (= lt!306194 Undefined!6977))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!306200 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38668 (_ BitVec 32)) SeekEntryResult!6977)

(assert (=> b!655892 (= lt!306194 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306200 lt!306190 mask!3053))))

(declare-fun e!376684 () Bool)

(assert (=> b!655892 e!376684))

(declare-fun res!425580 () Bool)

(assert (=> b!655892 (=> (not res!425580) (not e!376684))))

(declare-fun lt!306187 () SeekEntryResult!6977)

(declare-fun lt!306195 () (_ BitVec 32))

(assert (=> b!655892 (= res!425580 (= lt!306187 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306195 vacantSpotIndex!68 lt!306200 lt!306190 mask!3053)))))

(assert (=> b!655892 (= lt!306187 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306195 vacantSpotIndex!68 (select (arr!18530 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655892 (= lt!306200 (select (store (arr!18530 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306186 () Unit!22614)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38668 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22614)

(assert (=> b!655892 (= lt!306186 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306195 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655892 (= lt!306195 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655893 () Bool)

(declare-fun Unit!22617 () Unit!22614)

(assert (=> b!655893 (= e!376685 Unit!22617)))

(assert (=> b!655893 false))

(declare-fun b!655894 () Bool)

(assert (=> b!655894 false))

(declare-fun lt!306189 () Unit!22614)

(declare-datatypes ((List!12624 0))(
  ( (Nil!12621) (Cons!12620 (h!13665 (_ BitVec 64)) (t!18860 List!12624)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38668 (_ BitVec 64) (_ BitVec 32) List!12624) Unit!22614)

(assert (=> b!655894 (= lt!306189 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306190 (select (arr!18530 a!2986) j!136) index!984 Nil!12621))))

(declare-fun arrayNoDuplicates!0 (array!38668 (_ BitVec 32) List!12624) Bool)

(assert (=> b!655894 (arrayNoDuplicates!0 lt!306190 index!984 Nil!12621)))

(declare-fun lt!306193 () Unit!22614)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38668 (_ BitVec 32) (_ BitVec 32)) Unit!22614)

(assert (=> b!655894 (= lt!306193 (lemmaNoDuplicateFromThenFromBigger!0 lt!306190 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655894 (arrayNoDuplicates!0 lt!306190 #b00000000000000000000000000000000 Nil!12621)))

(declare-fun lt!306184 () Unit!22614)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12624) Unit!22614)

(assert (=> b!655894 (= lt!306184 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12621))))

(assert (=> b!655894 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306188 () Unit!22614)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22614)

(assert (=> b!655894 (= lt!306188 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655894 e!376690))

(declare-fun res!425587 () Bool)

(assert (=> b!655894 (=> (not res!425587) (not e!376690))))

(assert (=> b!655894 (= res!425587 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136))))

(declare-fun Unit!22618 () Unit!22614)

(assert (=> b!655894 (= e!376680 Unit!22618)))

(declare-fun res!425582 () Bool)

(declare-fun b!655895 () Bool)

(assert (=> b!655895 (= res!425582 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136))))

(declare-fun e!376686 () Bool)

(assert (=> b!655895 (=> (not res!425582) (not e!376686))))

(declare-fun e!376681 () Bool)

(assert (=> b!655895 (= e!376681 e!376686)))

(declare-fun b!655896 () Bool)

(declare-fun e!376683 () Bool)

(declare-fun e!376691 () Bool)

(assert (=> b!655896 (= e!376683 e!376691)))

(declare-fun res!425589 () Bool)

(assert (=> b!655896 (=> (not res!425589) (not e!376691))))

(declare-fun lt!306201 () SeekEntryResult!6977)

(assert (=> b!655896 (= res!425589 (or (= lt!306201 (MissingZero!6977 i!1108)) (= lt!306201 (MissingVacant!6977 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38668 (_ BitVec 32)) SeekEntryResult!6977)

(assert (=> b!655896 (= lt!306201 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655897 () Bool)

(declare-fun e!376688 () Unit!22614)

(declare-fun Unit!22619 () Unit!22614)

(assert (=> b!655897 (= e!376688 Unit!22619)))

(declare-fun b!655899 () Bool)

(declare-fun res!425585 () Bool)

(assert (=> b!655899 (=> (not res!425585) (not e!376683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655899 (= res!425585 (validKeyInArray!0 (select (arr!18530 a!2986) j!136)))))

(declare-fun b!655900 () Bool)

(declare-fun res!425586 () Bool)

(assert (=> b!655900 (=> (not res!425586) (not e!376683))))

(assert (=> b!655900 (= res!425586 (and (= (size!18894 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18894 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18894 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655901 () Bool)

(declare-fun lt!306183 () SeekEntryResult!6977)

(assert (=> b!655901 (= e!376684 (= lt!306183 lt!306187))))

(declare-fun b!655902 () Bool)

(declare-fun res!425578 () Bool)

(assert (=> b!655902 (=> (not res!425578) (not e!376691))))

(assert (=> b!655902 (= res!425578 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12621))))

(declare-fun b!655903 () Bool)

(declare-fun Unit!22620 () Unit!22614)

(assert (=> b!655903 (= e!376682 Unit!22620)))

(declare-fun res!425584 () Bool)

(assert (=> b!655903 (= res!425584 (= (select (store (arr!18530 a!2986) i!1108 k!1786) index!984) (select (arr!18530 a!2986) j!136)))))

(declare-fun e!376693 () Bool)

(assert (=> b!655903 (=> (not res!425584) (not e!376693))))

(assert (=> b!655903 e!376693))

(declare-fun c!75524 () Bool)

(assert (=> b!655903 (= c!75524 (bvslt j!136 index!984))))

(declare-fun lt!306197 () Unit!22614)

(assert (=> b!655903 (= lt!306197 e!376688)))

(declare-fun c!75527 () Bool)

(assert (=> b!655903 (= c!75527 (bvslt index!984 j!136))))

(declare-fun lt!306199 () Unit!22614)

(assert (=> b!655903 (= lt!306199 e!376680)))

(assert (=> b!655903 false))

(declare-fun b!655904 () Bool)

(declare-fun res!425588 () Bool)

(assert (=> b!655904 (= res!425588 (bvsge j!136 index!984))))

(assert (=> b!655904 (=> res!425588 e!376681)))

(assert (=> b!655904 (= e!376693 e!376681)))

(declare-fun b!655905 () Bool)

(declare-fun res!425583 () Bool)

(assert (=> b!655905 (=> (not res!425583) (not e!376691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38668 (_ BitVec 32)) Bool)

(assert (=> b!655905 (= res!425583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655906 () Bool)

(declare-fun res!425590 () Bool)

(assert (=> b!655906 (=> (not res!425590) (not e!376683))))

(assert (=> b!655906 (= res!425590 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655907 () Bool)

(declare-fun e!376687 () Bool)

(assert (=> b!655907 (= e!376691 e!376687)))

(declare-fun res!425591 () Bool)

(assert (=> b!655907 (=> (not res!425591) (not e!376687))))

(assert (=> b!655907 (= res!425591 (= (select (store (arr!18530 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655907 (= lt!306190 (array!38669 (store (arr!18530 a!2986) i!1108 k!1786) (size!18894 a!2986)))))

(declare-fun b!655908 () Bool)

(declare-fun res!425577 () Bool)

(assert (=> b!655908 (=> (not res!425577) (not e!376683))))

(assert (=> b!655908 (= res!425577 (validKeyInArray!0 k!1786))))

(declare-fun b!655909 () Bool)

(declare-fun Unit!22621 () Unit!22614)

(assert (=> b!655909 (= e!376685 Unit!22621)))

(declare-fun res!425579 () Bool)

(assert (=> start!59392 (=> (not res!425579) (not e!376683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59392 (= res!425579 (validMask!0 mask!3053))))

(assert (=> start!59392 e!376683))

(assert (=> start!59392 true))

(declare-fun array_inv!14304 (array!38668) Bool)

(assert (=> start!59392 (array_inv!14304 a!2986)))

(declare-fun b!655898 () Bool)

(assert (=> b!655898 (= e!376687 e!376692)))

(declare-fun res!425576 () Bool)

(assert (=> b!655898 (=> (not res!425576) (not e!376692))))

(assert (=> b!655898 (= res!425576 (and (= lt!306183 (Found!6977 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18530 a!2986) index!984) (select (arr!18530 a!2986) j!136))) (not (= (select (arr!18530 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655898 (= lt!306183 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18530 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655910 () Bool)

(assert (=> b!655910 (= e!376686 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) index!984))))

(declare-fun b!655911 () Bool)

(declare-fun Unit!22622 () Unit!22614)

(assert (=> b!655911 (= e!376682 Unit!22622)))

(declare-fun b!655912 () Bool)

(declare-fun res!425581 () Bool)

(assert (=> b!655912 (=> (not res!425581) (not e!376691))))

(assert (=> b!655912 (= res!425581 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18530 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655913 () Bool)

(assert (=> b!655913 false))

(declare-fun lt!306192 () Unit!22614)

(assert (=> b!655913 (= lt!306192 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136 Nil!12621))))

(assert (=> b!655913 (arrayNoDuplicates!0 lt!306190 j!136 Nil!12621)))

(declare-fun lt!306182 () Unit!22614)

(assert (=> b!655913 (= lt!306182 (lemmaNoDuplicateFromThenFromBigger!0 lt!306190 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655913 (arrayNoDuplicates!0 lt!306190 #b00000000000000000000000000000000 Nil!12621)))

(declare-fun lt!306191 () Unit!22614)

(assert (=> b!655913 (= lt!306191 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12621))))

(assert (=> b!655913 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306196 () Unit!22614)

(assert (=> b!655913 (= lt!306196 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306190 (select (arr!18530 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22623 () Unit!22614)

(assert (=> b!655913 (= e!376688 Unit!22623)))

(assert (= (and start!59392 res!425579) b!655900))

(assert (= (and b!655900 res!425586) b!655899))

(assert (= (and b!655899 res!425585) b!655908))

(assert (= (and b!655908 res!425577) b!655906))

(assert (= (and b!655906 res!425590) b!655896))

(assert (= (and b!655896 res!425589) b!655905))

(assert (= (and b!655905 res!425583) b!655902))

(assert (= (and b!655902 res!425578) b!655912))

(assert (= (and b!655912 res!425581) b!655907))

(assert (= (and b!655907 res!425591) b!655898))

(assert (= (and b!655898 res!425576) b!655892))

(assert (= (and b!655892 res!425580) b!655901))

(assert (= (and b!655892 c!75526) b!655893))

(assert (= (and b!655892 (not c!75526)) b!655909))

(assert (= (and b!655892 c!75525) b!655903))

(assert (= (and b!655892 (not c!75525)) b!655911))

(assert (= (and b!655903 res!425584) b!655904))

(assert (= (and b!655904 (not res!425588)) b!655895))

(assert (= (and b!655895 res!425582) b!655910))

(assert (= (and b!655903 c!75524) b!655913))

(assert (= (and b!655903 (not c!75524)) b!655897))

(assert (= (and b!655903 c!75527) b!655894))

(assert (= (and b!655903 (not c!75527)) b!655890))

(assert (= (and b!655894 res!425587) b!655891))

(declare-fun m!629021 () Bool)

(assert (=> start!59392 m!629021))

(declare-fun m!629023 () Bool)

(assert (=> start!59392 m!629023))

(declare-fun m!629025 () Bool)

(assert (=> b!655906 m!629025))

(declare-fun m!629027 () Bool)

(assert (=> b!655895 m!629027))

(assert (=> b!655895 m!629027))

(declare-fun m!629029 () Bool)

(assert (=> b!655895 m!629029))

(assert (=> b!655894 m!629027))

(assert (=> b!655894 m!629027))

(declare-fun m!629031 () Bool)

(assert (=> b!655894 m!629031))

(declare-fun m!629033 () Bool)

(assert (=> b!655894 m!629033))

(assert (=> b!655894 m!629027))

(assert (=> b!655894 m!629029))

(assert (=> b!655894 m!629027))

(declare-fun m!629035 () Bool)

(assert (=> b!655894 m!629035))

(declare-fun m!629037 () Bool)

(assert (=> b!655894 m!629037))

(declare-fun m!629039 () Bool)

(assert (=> b!655894 m!629039))

(assert (=> b!655894 m!629027))

(declare-fun m!629041 () Bool)

(assert (=> b!655894 m!629041))

(declare-fun m!629043 () Bool)

(assert (=> b!655894 m!629043))

(declare-fun m!629045 () Bool)

(assert (=> b!655896 m!629045))

(declare-fun m!629047 () Bool)

(assert (=> b!655898 m!629047))

(assert (=> b!655898 m!629027))

(assert (=> b!655898 m!629027))

(declare-fun m!629049 () Bool)

(assert (=> b!655898 m!629049))

(declare-fun m!629051 () Bool)

(assert (=> b!655912 m!629051))

(assert (=> b!655891 m!629027))

(assert (=> b!655891 m!629027))

(declare-fun m!629053 () Bool)

(assert (=> b!655891 m!629053))

(assert (=> b!655899 m!629027))

(assert (=> b!655899 m!629027))

(declare-fun m!629055 () Bool)

(assert (=> b!655899 m!629055))

(declare-fun m!629057 () Bool)

(assert (=> b!655905 m!629057))

(declare-fun m!629059 () Bool)

(assert (=> b!655902 m!629059))

(declare-fun m!629061 () Bool)

(assert (=> b!655907 m!629061))

(declare-fun m!629063 () Bool)

(assert (=> b!655907 m!629063))

(assert (=> b!655910 m!629027))

(assert (=> b!655910 m!629027))

(assert (=> b!655910 m!629053))

(assert (=> b!655903 m!629061))

(declare-fun m!629065 () Bool)

(assert (=> b!655903 m!629065))

(assert (=> b!655903 m!629027))

(assert (=> b!655892 m!629027))

(declare-fun m!629067 () Bool)

(assert (=> b!655892 m!629067))

(declare-fun m!629069 () Bool)

(assert (=> b!655892 m!629069))

(declare-fun m!629071 () Bool)

(assert (=> b!655892 m!629071))

(assert (=> b!655892 m!629027))

(assert (=> b!655892 m!629061))

(declare-fun m!629073 () Bool)

(assert (=> b!655892 m!629073))

(declare-fun m!629075 () Bool)

(assert (=> b!655892 m!629075))

(declare-fun m!629077 () Bool)

(assert (=> b!655892 m!629077))

(assert (=> b!655892 m!629065))

(assert (=> b!655913 m!629027))

(declare-fun m!629079 () Bool)

(assert (=> b!655913 m!629079))

(assert (=> b!655913 m!629033))

(assert (=> b!655913 m!629027))

(declare-fun m!629081 () Bool)

(assert (=> b!655913 m!629081))

(declare-fun m!629083 () Bool)

(assert (=> b!655913 m!629083))

(assert (=> b!655913 m!629043))

(assert (=> b!655913 m!629027))

(declare-fun m!629085 () Bool)

(assert (=> b!655913 m!629085))

(assert (=> b!655913 m!629027))

(declare-fun m!629087 () Bool)

(assert (=> b!655913 m!629087))

(declare-fun m!629089 () Bool)

(assert (=> b!655908 m!629089))

(push 1)

(assert (not b!655902))

(assert (not b!655898))

(assert (not b!655896))

(assert (not b!655899))

(assert (not b!655913))

(assert (not b!655905))

(assert (not start!59392))

(assert (not b!655891))

(assert (not b!655895))

(assert (not b!655910))

(assert (not b!655892))

(assert (not b!655894))

(assert (not b!655906))

(assert (not b!655908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92475 () Bool)

(assert (=> d!92475 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!655908 d!92475))

(declare-fun b!655965 () Bool)

(declare-fun e!376726 () SeekEntryResult!6977)

(assert (=> b!655965 (= e!376726 (MissingVacant!6977 vacantSpotIndex!68))))

(declare-fun lt!306222 () SeekEntryResult!6977)

(declare-fun d!92477 () Bool)

(assert (=> d!92477 (and (or (is-Undefined!6977 lt!306222) (not (is-Found!6977 lt!306222)) (and (bvsge (index!30267 lt!306222) #b00000000000000000000000000000000) (bvslt (index!30267 lt!306222) (size!18894 a!2986)))) (or (is-Undefined!6977 lt!306222) (is-Found!6977 lt!306222) (not (is-MissingVacant!6977 lt!306222)) (not (= (index!30269 lt!306222) vacantSpotIndex!68)) (and (bvsge (index!30269 lt!306222) #b00000000000000000000000000000000) (bvslt (index!30269 lt!306222) (size!18894 a!2986)))) (or (is-Undefined!6977 lt!306222) (ite (is-Found!6977 lt!306222) (= (select (arr!18530 a!2986) (index!30267 lt!306222)) (select (arr!18530 a!2986) j!136)) (and (is-MissingVacant!6977 lt!306222) (= (index!30269 lt!306222) vacantSpotIndex!68) (= (select (arr!18530 a!2986) (index!30269 lt!306222)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!376724 () SeekEntryResult!6977)

(assert (=> d!92477 (= lt!306222 e!376724)))

(declare-fun c!75550 () Bool)

(assert (=> d!92477 (= c!75550 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!306223 () (_ BitVec 64))

(assert (=> d!92477 (= lt!306223 (select (arr!18530 a!2986) index!984))))

(assert (=> d!92477 (validMask!0 mask!3053)))

(assert (=> d!92477 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18530 a!2986) j!136) a!2986 mask!3053) lt!306222)))

(declare-fun b!655966 () Bool)

(declare-fun c!75551 () Bool)

(assert (=> b!655966 (= c!75551 (= lt!306223 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!376725 () SeekEntryResult!6977)

(assert (=> b!655966 (= e!376725 e!376726)))

(declare-fun b!655967 () Bool)

(assert (=> b!655967 (= e!376724 e!376725)))

(declare-fun c!75549 () Bool)

(assert (=> b!655967 (= c!75549 (= lt!306223 (select (arr!18530 a!2986) j!136)))))

(declare-fun b!655968 () Bool)

(assert (=> b!655968 (= e!376724 Undefined!6977)))

(declare-fun b!655969 () Bool)

(assert (=> b!655969 (= e!376726 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18530 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655970 () Bool)

(assert (=> b!655970 (= e!376725 (Found!6977 index!984))))

(assert (= (and d!92477 c!75550) b!655968))

(assert (= (and d!92477 (not c!75550)) b!655967))

(assert (= (and b!655967 c!75549) b!655970))

(assert (= (and b!655967 (not c!75549)) b!655966))

(assert (= (and b!655966 c!75551) b!655965))

(assert (= (and b!655966 (not c!75551)) b!655969))

(declare-fun m!629125 () Bool)

(assert (=> d!92477 m!629125))

(declare-fun m!629127 () Bool)

(assert (=> d!92477 m!629127))

(assert (=> d!92477 m!629047))

(assert (=> d!92477 m!629021))

(assert (=> b!655969 m!629069))

(assert (=> b!655969 m!629069))

(assert (=> b!655969 m!629027))

(declare-fun m!629129 () Bool)

(assert (=> b!655969 m!629129))

(assert (=> b!655898 d!92477))

(declare-fun b!656001 () Bool)

(declare-fun lt!306240 () SeekEntryResult!6977)

(declare-fun e!376744 () SeekEntryResult!6977)

(assert (=> b!656001 (= e!376744 (seekKeyOrZeroReturnVacant!0 (x!59075 lt!306240) (index!30268 lt!306240) (index!30268 lt!306240) k!1786 a!2986 mask!3053))))

(declare-fun b!656002 () Bool)

(assert (=> b!656002 (= e!376744 (MissingZero!6977 (index!30268 lt!306240)))))

(declare-fun b!656004 () Bool)

(declare-fun e!376742 () SeekEntryResult!6977)

(declare-fun e!376743 () SeekEntryResult!6977)

(assert (=> b!656004 (= e!376742 e!376743)))

(declare-fun lt!306239 () (_ BitVec 64))

(assert (=> b!656004 (= lt!306239 (select (arr!18530 a!2986) (index!30268 lt!306240)))))

(declare-fun c!75569 () Bool)

(assert (=> b!656004 (= c!75569 (= lt!306239 k!1786))))

(declare-fun b!656005 () Bool)

(declare-fun c!75567 () Bool)

(assert (=> b!656005 (= c!75567 (= lt!306239 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656005 (= e!376743 e!376744)))

(declare-fun b!656006 () Bool)

(assert (=> b!656006 (= e!376743 (Found!6977 (index!30268 lt!306240)))))

(declare-fun b!656003 () Bool)

(assert (=> b!656003 (= e!376742 Undefined!6977)))

(declare-fun d!92487 () Bool)

(declare-fun lt!306241 () SeekEntryResult!6977)

(assert (=> d!92487 (and (or (is-Undefined!6977 lt!306241) (not (is-Found!6977 lt!306241)) (and (bvsge (index!30267 lt!306241) #b00000000000000000000000000000000) (bvslt (index!30267 lt!306241) (size!18894 a!2986)))) (or (is-Undefined!6977 lt!306241) (is-Found!6977 lt!306241) (not (is-MissingZero!6977 lt!306241)) (and (bvsge (index!30266 lt!306241) #b00000000000000000000000000000000) (bvslt (index!30266 lt!306241) (size!18894 a!2986)))) (or (is-Undefined!6977 lt!306241) (is-Found!6977 lt!306241) (is-MissingZero!6977 lt!306241) (not (is-MissingVacant!6977 lt!306241)) (and (bvsge (index!30269 lt!306241) #b00000000000000000000000000000000) (bvslt (index!30269 lt!306241) (size!18894 a!2986)))) (or (is-Undefined!6977 lt!306241) (ite (is-Found!6977 lt!306241) (= (select (arr!18530 a!2986) (index!30267 lt!306241)) k!1786) (ite (is-MissingZero!6977 lt!306241) (= (select (arr!18530 a!2986) (index!30266 lt!306241)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6977 lt!306241) (= (select (arr!18530 a!2986) (index!30269 lt!306241)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92487 (= lt!306241 e!376742)))

(declare-fun c!75568 () Bool)

(assert (=> d!92487 (= c!75568 (and (is-Intermediate!6977 lt!306240) (undefined!7789 lt!306240)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38668 (_ BitVec 32)) SeekEntryResult!6977)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92487 (= lt!306240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92487 (validMask!0 mask!3053)))

(assert (=> d!92487 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!306241)))

(assert (= (and d!92487 c!75568) b!656003))

(assert (= (and d!92487 (not c!75568)) b!656004))

(assert (= (and b!656004 c!75569) b!656006))

(assert (= (and b!656004 (not c!75569)) b!656005))

(assert (= (and b!656005 c!75567) b!656002))

(assert (= (and b!656005 (not c!75567)) b!656001))

(declare-fun m!629145 () Bool)

(assert (=> b!656001 m!629145))

(declare-fun m!629147 () Bool)

(assert (=> b!656004 m!629147))

(declare-fun m!629149 () Bool)

(assert (=> d!92487 m!629149))

(declare-fun m!629151 () Bool)

(assert (=> d!92487 m!629151))

(declare-fun m!629153 () Bool)

(assert (=> d!92487 m!629153))

(assert (=> d!92487 m!629021))

(declare-fun m!629155 () Bool)

(assert (=> d!92487 m!629155))

(declare-fun m!629157 () Bool)

(assert (=> d!92487 m!629157))

(assert (=> d!92487 m!629149))

(assert (=> b!655896 d!92487))

(declare-fun b!656017 () Bool)

(declare-fun e!376753 () Bool)

(declare-fun call!33833 () Bool)

(assert (=> b!656017 (= e!376753 call!33833)))

(declare-fun b!656018 () Bool)

(declare-fun e!376755 () Bool)

(assert (=> b!656018 (= e!376753 e!376755)))

(declare-fun lt!306259 () (_ BitVec 64))

(assert (=> b!656018 (= lt!306259 (select (arr!18530 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!306258 () Unit!22614)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38668 (_ BitVec 64) (_ BitVec 32)) Unit!22614)

(assert (=> b!656018 (= lt!306258 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!306259 #b00000000000000000000000000000000))))

(assert (=> b!656018 (arrayContainsKey!0 a!2986 lt!306259 #b00000000000000000000000000000000)))

(declare-fun lt!306257 () Unit!22614)

(assert (=> b!656018 (= lt!306257 lt!306258)))

(declare-fun res!425608 () Bool)

(assert (=> b!656018 (= res!425608 (= (seekEntryOrOpen!0 (select (arr!18530 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6977 #b00000000000000000000000000000000)))))

(assert (=> b!656018 (=> (not res!425608) (not e!376755))))

(declare-fun bm!33830 () Bool)

(assert (=> bm!33830 (= call!33833 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!656019 () Bool)

(declare-fun e!376754 () Bool)

(assert (=> b!656019 (= e!376754 e!376753)))

(declare-fun c!75572 () Bool)

(assert (=> b!656019 (= c!75572 (validKeyInArray!0 (select (arr!18530 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92495 () Bool)

(declare-fun res!425607 () Bool)

(assert (=> d!92495 (=> res!425607 e!376754)))

(assert (=> d!92495 (= res!425607 (bvsge #b00000000000000000000000000000000 (size!18894 a!2986)))))

(assert (=> d!92495 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!376754)))

(declare-fun b!656020 () Bool)

(assert (=> b!656020 (= e!376755 call!33833)))

(assert (= (and d!92495 (not res!425607)) b!656019))

(assert (= (and b!656019 c!75572) b!656018))

(assert (= (and b!656019 (not c!75572)) b!656017))

(assert (= (and b!656018 res!425608) b!656020))

(assert (= (or b!656020 b!656017) bm!33830))

(declare-fun m!629171 () Bool)

(assert (=> b!656018 m!629171))

(declare-fun m!629173 () Bool)

(assert (=> b!656018 m!629173))

(declare-fun m!629175 () Bool)

(assert (=> b!656018 m!629175))

(assert (=> b!656018 m!629171))

(declare-fun m!629177 () Bool)

(assert (=> b!656018 m!629177))

(declare-fun m!629179 () Bool)

(assert (=> bm!33830 m!629179))

(assert (=> b!656019 m!629171))

(assert (=> b!656019 m!629171))

(declare-fun m!629181 () Bool)

(assert (=> b!656019 m!629181))

(assert (=> b!655905 d!92495))

(declare-fun d!92511 () Bool)

(declare-fun res!425619 () Bool)

(declare-fun e!376768 () Bool)

(assert (=> d!92511 (=> res!425619 e!376768)))

(assert (=> d!92511 (= res!425619 (= (select (arr!18530 lt!306190) j!136) (select (arr!18530 a!2986) j!136)))))

(assert (=> d!92511 (= (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136) e!376768)))

(declare-fun b!656035 () Bool)

(declare-fun e!376769 () Bool)

(assert (=> b!656035 (= e!376768 e!376769)))

(declare-fun res!425620 () Bool)

(assert (=> b!656035 (=> (not res!425620) (not e!376769))))

(assert (=> b!656035 (= res!425620 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18894 lt!306190)))))

(declare-fun b!656036 () Bool)

(assert (=> b!656036 (= e!376769 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92511 (not res!425619)) b!656035))

(assert (= (and b!656035 res!425620) b!656036))

(declare-fun m!629185 () Bool)

(assert (=> d!92511 m!629185))

(assert (=> b!656036 m!629027))

(declare-fun m!629187 () Bool)

(assert (=> b!656036 m!629187))

(assert (=> b!655895 d!92511))

(declare-fun d!92515 () Bool)

(declare-fun res!425621 () Bool)

(declare-fun e!376770 () Bool)

(assert (=> d!92515 (=> res!425621 e!376770)))

(assert (=> d!92515 (= res!425621 (= (select (arr!18530 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!92515 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!376770)))

(declare-fun b!656037 () Bool)

(declare-fun e!376771 () Bool)

(assert (=> b!656037 (= e!376770 e!376771)))

(declare-fun res!425622 () Bool)

(assert (=> b!656037 (=> (not res!425622) (not e!376771))))

(assert (=> b!656037 (= res!425622 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18894 a!2986)))))

(declare-fun b!656038 () Bool)

(assert (=> b!656038 (= e!376771 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92515 (not res!425621)) b!656037))

(assert (= (and b!656037 res!425622) b!656038))

(assert (=> d!92515 m!629171))

(declare-fun m!629189 () Bool)

(assert (=> b!656038 m!629189))

(assert (=> b!655906 d!92515))

(declare-fun d!92517 () Bool)

(assert (=> d!92517 (arrayNoDuplicates!0 lt!306190 index!984 Nil!12621)))

(declare-fun lt!306268 () Unit!22614)

(declare-fun choose!39 (array!38668 (_ BitVec 32) (_ BitVec 32)) Unit!22614)

(assert (=> d!92517 (= lt!306268 (choose!39 lt!306190 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92517 (bvslt (size!18894 lt!306190) #b01111111111111111111111111111111)))

(assert (=> d!92517 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306190 #b00000000000000000000000000000000 index!984) lt!306268)))

(declare-fun bs!19526 () Bool)

(assert (= bs!19526 d!92517))

(assert (=> bs!19526 m!629039))

(declare-fun m!629193 () Bool)

(assert (=> bs!19526 m!629193))

(assert (=> b!655894 d!92517))

(assert (=> b!655894 d!92511))

(declare-fun d!92521 () Bool)

(assert (=> d!92521 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18894 lt!306190)) (not (= (select (arr!18530 lt!306190) index!984) (select (arr!18530 a!2986) j!136))))))

(declare-fun lt!306273 () Unit!22614)

(declare-fun choose!21 (array!38668 (_ BitVec 64) (_ BitVec 32) List!12624) Unit!22614)

(assert (=> d!92521 (= lt!306273 (choose!21 lt!306190 (select (arr!18530 a!2986) j!136) index!984 Nil!12621))))

(assert (=> d!92521 (bvslt (size!18894 lt!306190) #b01111111111111111111111111111111)))

(assert (=> d!92521 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306190 (select (arr!18530 a!2986) j!136) index!984 Nil!12621) lt!306273)))

(declare-fun bs!19527 () Bool)

(assert (= bs!19527 d!92521))

(declare-fun m!629201 () Bool)

(assert (=> bs!19527 m!629201))

(assert (=> bs!19527 m!629027))

(declare-fun m!629203 () Bool)

(assert (=> bs!19527 m!629203))

(assert (=> b!655894 d!92521))

(declare-fun call!33841 () Bool)

(declare-fun c!75580 () Bool)

(declare-fun bm!33838 () Bool)

(assert (=> bm!33838 (= call!33841 (arrayNoDuplicates!0 lt!306190 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75580 (Cons!12620 (select (arr!18530 lt!306190) index!984) Nil!12621) Nil!12621)))))

(declare-fun b!656070 () Bool)

(declare-fun e!376798 () Bool)

(assert (=> b!656070 (= e!376798 call!33841)))

(declare-fun b!656071 () Bool)

(declare-fun e!376801 () Bool)

(declare-fun contains!3194 (List!12624 (_ BitVec 64)) Bool)

(assert (=> b!656071 (= e!376801 (contains!3194 Nil!12621 (select (arr!18530 lt!306190) index!984)))))

(declare-fun b!656072 () Bool)

(declare-fun e!376800 () Bool)

(declare-fun e!376799 () Bool)

(assert (=> b!656072 (= e!376800 e!376799)))

(declare-fun res!425645 () Bool)

(assert (=> b!656072 (=> (not res!425645) (not e!376799))))

(assert (=> b!656072 (= res!425645 (not e!376801))))

(declare-fun res!425644 () Bool)

(assert (=> b!656072 (=> (not res!425644) (not e!376801))))

(assert (=> b!656072 (= res!425644 (validKeyInArray!0 (select (arr!18530 lt!306190) index!984)))))

(declare-fun b!656073 () Bool)

(assert (=> b!656073 (= e!376799 e!376798)))

(assert (=> b!656073 (= c!75580 (validKeyInArray!0 (select (arr!18530 lt!306190) index!984)))))

(declare-fun d!92525 () Bool)

(declare-fun res!425646 () Bool)

(assert (=> d!92525 (=> res!425646 e!376800)))

(assert (=> d!92525 (= res!425646 (bvsge index!984 (size!18894 lt!306190)))))

(assert (=> d!92525 (= (arrayNoDuplicates!0 lt!306190 index!984 Nil!12621) e!376800)))

(declare-fun b!656074 () Bool)

(assert (=> b!656074 (= e!376798 call!33841)))

(assert (= (and d!92525 (not res!425646)) b!656072))

(assert (= (and b!656072 res!425644) b!656071))

(assert (= (and b!656072 res!425645) b!656073))

(assert (= (and b!656073 c!75580) b!656070))

(assert (= (and b!656073 (not c!75580)) b!656074))

(assert (= (or b!656070 b!656074) bm!33838))

(assert (=> bm!33838 m!629201))

(declare-fun m!629215 () Bool)

(assert (=> bm!33838 m!629215))

(assert (=> b!656071 m!629201))

(assert (=> b!656071 m!629201))

(declare-fun m!629217 () Bool)

(assert (=> b!656071 m!629217))

(assert (=> b!656072 m!629201))

(assert (=> b!656072 m!629201))

(declare-fun m!629219 () Bool)

(assert (=> b!656072 m!629219))

(assert (=> b!656073 m!629201))

(assert (=> b!656073 m!629201))

(assert (=> b!656073 m!629219))

(assert (=> b!655894 d!92525))

(declare-fun d!92533 () Bool)

(assert (=> d!92533 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306283 () Unit!22614)

(declare-fun choose!114 (array!38668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22614)

(assert (=> d!92533 (= lt!306283 (choose!114 lt!306190 (select (arr!18530 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92533 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92533 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!306283)))

(declare-fun bs!19529 () Bool)

(assert (= bs!19529 d!92533))

(assert (=> bs!19529 m!629027))

(assert (=> bs!19529 m!629031))

(assert (=> bs!19529 m!629027))

(declare-fun m!629231 () Bool)

(assert (=> bs!19529 m!629231))

(assert (=> b!655894 d!92533))

(declare-fun d!92537 () Bool)

(declare-fun e!376838 () Bool)

(assert (=> d!92537 e!376838))

(declare-fun res!425678 () Bool)

(assert (=> d!92537 (=> (not res!425678) (not e!376838))))

(assert (=> d!92537 (= res!425678 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18894 a!2986))))))

(declare-fun lt!306289 () Unit!22614)

(declare-fun choose!41 (array!38668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12624) Unit!22614)

(assert (=> d!92537 (= lt!306289 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12621))))

(assert (=> d!92537 (bvslt (size!18894 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92537 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12621) lt!306289)))

(declare-fun b!656116 () Bool)

(assert (=> b!656116 (= e!376838 (arrayNoDuplicates!0 (array!38669 (store (arr!18530 a!2986) i!1108 k!1786) (size!18894 a!2986)) #b00000000000000000000000000000000 Nil!12621))))

(assert (= (and d!92537 res!425678) b!656116))

(declare-fun m!629283 () Bool)

(assert (=> d!92537 m!629283))

(assert (=> b!656116 m!629061))

(declare-fun m!629285 () Bool)

(assert (=> b!656116 m!629285))

(assert (=> b!655894 d!92537))

(declare-fun d!92565 () Bool)

(declare-fun res!425679 () Bool)

(declare-fun e!376842 () Bool)

(assert (=> d!92565 (=> res!425679 e!376842)))

(assert (=> d!92565 (= res!425679 (= (select (arr!18530 lt!306190) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18530 a!2986) j!136)))))

(assert (=> d!92565 (= (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!376842)))

(declare-fun b!656123 () Bool)

(declare-fun e!376843 () Bool)

(assert (=> b!656123 (= e!376842 e!376843)))

(declare-fun res!425680 () Bool)

(assert (=> b!656123 (=> (not res!425680) (not e!376843))))

(assert (=> b!656123 (= res!425680 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18894 lt!306190)))))

(declare-fun b!656124 () Bool)

(assert (=> b!656124 (= e!376843 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92565 (not res!425679)) b!656123))

(assert (= (and b!656123 res!425680) b!656124))

(declare-fun m!629287 () Bool)

(assert (=> d!92565 m!629287))

(assert (=> b!656124 m!629027))

(declare-fun m!629289 () Bool)

(assert (=> b!656124 m!629289))

(assert (=> b!655894 d!92565))

(declare-fun bm!33844 () Bool)

(declare-fun call!33847 () Bool)

(declare-fun c!75589 () Bool)

(assert (=> bm!33844 (= call!33847 (arrayNoDuplicates!0 lt!306190 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75589 (Cons!12620 (select (arr!18530 lt!306190) #b00000000000000000000000000000000) Nil!12621) Nil!12621)))))

(declare-fun b!656125 () Bool)

(declare-fun e!376844 () Bool)

(assert (=> b!656125 (= e!376844 call!33847)))

(declare-fun b!656126 () Bool)

(declare-fun e!376847 () Bool)

(assert (=> b!656126 (= e!376847 (contains!3194 Nil!12621 (select (arr!18530 lt!306190) #b00000000000000000000000000000000)))))

(declare-fun b!656127 () Bool)

(declare-fun e!376846 () Bool)

(declare-fun e!376845 () Bool)

(assert (=> b!656127 (= e!376846 e!376845)))

(declare-fun res!425682 () Bool)

(assert (=> b!656127 (=> (not res!425682) (not e!376845))))

(assert (=> b!656127 (= res!425682 (not e!376847))))

(declare-fun res!425681 () Bool)

(assert (=> b!656127 (=> (not res!425681) (not e!376847))))

(assert (=> b!656127 (= res!425681 (validKeyInArray!0 (select (arr!18530 lt!306190) #b00000000000000000000000000000000)))))

(declare-fun b!656128 () Bool)

(assert (=> b!656128 (= e!376845 e!376844)))

(assert (=> b!656128 (= c!75589 (validKeyInArray!0 (select (arr!18530 lt!306190) #b00000000000000000000000000000000)))))

(declare-fun d!92567 () Bool)

(declare-fun res!425683 () Bool)

(assert (=> d!92567 (=> res!425683 e!376846)))

(assert (=> d!92567 (= res!425683 (bvsge #b00000000000000000000000000000000 (size!18894 lt!306190)))))

(assert (=> d!92567 (= (arrayNoDuplicates!0 lt!306190 #b00000000000000000000000000000000 Nil!12621) e!376846)))

(declare-fun b!656129 () Bool)

(assert (=> b!656129 (= e!376844 call!33847)))

(assert (= (and d!92567 (not res!425683)) b!656127))

(assert (= (and b!656127 res!425681) b!656126))

(assert (= (and b!656127 res!425682) b!656128))

(assert (= (and b!656128 c!75589) b!656125))

(assert (= (and b!656128 (not c!75589)) b!656129))

(assert (= (or b!656125 b!656129) bm!33844))

(declare-fun m!629297 () Bool)

(assert (=> bm!33844 m!629297))

(declare-fun m!629299 () Bool)

(assert (=> bm!33844 m!629299))

(assert (=> b!656126 m!629297))

(assert (=> b!656126 m!629297))

(declare-fun m!629301 () Bool)

(assert (=> b!656126 m!629301))

(assert (=> b!656127 m!629297))

(assert (=> b!656127 m!629297))

(declare-fun m!629303 () Bool)

(assert (=> b!656127 m!629303))

(assert (=> b!656128 m!629297))

(assert (=> b!656128 m!629297))

(assert (=> b!656128 m!629303))

(assert (=> b!655894 d!92567))

(declare-fun d!92571 () Bool)

(assert (=> d!92571 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18894 lt!306190)) (not (= (select (arr!18530 lt!306190) j!136) (select (arr!18530 a!2986) j!136))))))

(declare-fun lt!306292 () Unit!22614)

(assert (=> d!92571 (= lt!306292 (choose!21 lt!306190 (select (arr!18530 a!2986) j!136) j!136 Nil!12621))))

(assert (=> d!92571 (bvslt (size!18894 lt!306190) #b01111111111111111111111111111111)))

(assert (=> d!92571 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306190 (select (arr!18530 a!2986) j!136) j!136 Nil!12621) lt!306292)))

(declare-fun bs!19533 () Bool)

(assert (= bs!19533 d!92571))

(assert (=> bs!19533 m!629185))

(assert (=> bs!19533 m!629027))

(declare-fun m!629305 () Bool)

(assert (=> bs!19533 m!629305))

(assert (=> b!655913 d!92571))

(declare-fun d!92573 () Bool)

(declare-fun res!425684 () Bool)

(declare-fun e!376848 () Bool)

(assert (=> d!92573 (=> res!425684 e!376848)))

(assert (=> d!92573 (= res!425684 (= (select (arr!18530 lt!306190) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18530 a!2986) j!136)))))

(assert (=> d!92573 (= (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!376848)))

(declare-fun b!656130 () Bool)

(declare-fun e!376849 () Bool)

(assert (=> b!656130 (= e!376848 e!376849)))

(declare-fun res!425685 () Bool)

(assert (=> b!656130 (=> (not res!425685) (not e!376849))))

(assert (=> b!656130 (= res!425685 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18894 lt!306190)))))

(declare-fun b!656131 () Bool)

(assert (=> b!656131 (= e!376849 (arrayContainsKey!0 lt!306190 (select (arr!18530 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92573 (not res!425684)) b!656130))

(assert (= (and b!656130 res!425685) b!656131))

(declare-fun m!629307 () Bool)

(assert (=> d!92573 m!629307))

(assert (=> b!656131 m!629027))

(declare-fun m!629309 () Bool)

(assert (=> b!656131 m!629309))

(assert (=> b!655913 d!92573))

(declare-fun d!92575 () Bool)

(assert (=> d!92575 (arrayNoDuplicates!0 lt!306190 j!136 Nil!12621)))

(declare-fun lt!306293 () Unit!22614)

