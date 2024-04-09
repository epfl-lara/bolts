; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56002 () Bool)

(assert start!56002)

(declare-fun b!614910 () Bool)

(declare-datatypes ((Unit!19890 0))(
  ( (Unit!19891) )
))
(declare-fun e!352570 () Unit!19890)

(declare-fun Unit!19892 () Unit!19890)

(assert (=> b!614910 (= e!352570 Unit!19892)))

(declare-fun b!614911 () Bool)

(declare-fun res!396177 () Bool)

(declare-fun e!352564 () Bool)

(assert (=> b!614911 (=> (not res!396177) (not e!352564))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37435 0))(
  ( (array!37436 (arr!17960 (Array (_ BitVec 32) (_ BitVec 64))) (size!18324 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37435)

(assert (=> b!614911 (= res!396177 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17960 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614912 () Bool)

(declare-fun e!352565 () Unit!19890)

(declare-fun Unit!19893 () Unit!19890)

(assert (=> b!614912 (= e!352565 Unit!19893)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!396174 () Bool)

(assert (=> b!614912 (= res!396174 (= (select (store (arr!17960 a!2986) i!1108 k!1786) index!984) (select (arr!17960 a!2986) j!136)))))

(declare-fun e!352567 () Bool)

(assert (=> b!614912 (=> (not res!396174) (not e!352567))))

(assert (=> b!614912 e!352567))

(declare-fun c!69741 () Bool)

(assert (=> b!614912 (= c!69741 (bvslt j!136 index!984))))

(declare-fun lt!282380 () Unit!19890)

(declare-fun e!352569 () Unit!19890)

(assert (=> b!614912 (= lt!282380 e!352569)))

(declare-fun c!69740 () Bool)

(assert (=> b!614912 (= c!69740 (bvslt index!984 j!136))))

(declare-fun lt!282390 () Unit!19890)

(declare-fun e!352572 () Unit!19890)

(assert (=> b!614912 (= lt!282390 e!352572)))

(assert (=> b!614912 false))

(declare-fun b!614913 () Bool)

(declare-fun lt!282393 () array!37435)

(declare-fun res!396173 () Bool)

(declare-fun arrayContainsKey!0 (array!37435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614913 (= res!396173 (arrayContainsKey!0 lt!282393 (select (arr!17960 a!2986) j!136) j!136))))

(declare-fun e!352568 () Bool)

(assert (=> b!614913 (=> (not res!396173) (not e!352568))))

(declare-fun e!352563 () Bool)

(assert (=> b!614913 (= e!352563 e!352568)))

(declare-fun b!614914 () Bool)

(assert (=> b!614914 false))

(declare-fun lt!282383 () Unit!19890)

(declare-datatypes ((List!12054 0))(
  ( (Nil!12051) (Cons!12050 (h!13095 (_ BitVec 64)) (t!18290 List!12054)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37435 (_ BitVec 64) (_ BitVec 32) List!12054) Unit!19890)

(assert (=> b!614914 (= lt!282383 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282393 (select (arr!17960 a!2986) j!136) index!984 Nil!12051))))

(declare-fun arrayNoDuplicates!0 (array!37435 (_ BitVec 32) List!12054) Bool)

(assert (=> b!614914 (arrayNoDuplicates!0 lt!282393 index!984 Nil!12051)))

(declare-fun lt!282392 () Unit!19890)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37435 (_ BitVec 32) (_ BitVec 32)) Unit!19890)

(assert (=> b!614914 (= lt!282392 (lemmaNoDuplicateFromThenFromBigger!0 lt!282393 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614914 (arrayNoDuplicates!0 lt!282393 #b00000000000000000000000000000000 Nil!12051)))

(declare-fun lt!282395 () Unit!19890)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37435 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12054) Unit!19890)

(assert (=> b!614914 (= lt!282395 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12051))))

(assert (=> b!614914 (arrayContainsKey!0 lt!282393 (select (arr!17960 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282379 () Unit!19890)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37435 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19890)

(assert (=> b!614914 (= lt!282379 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282393 (select (arr!17960 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!352576 () Bool)

(assert (=> b!614914 e!352576))

(declare-fun res!396179 () Bool)

(assert (=> b!614914 (=> (not res!396179) (not e!352576))))

(assert (=> b!614914 (= res!396179 (arrayContainsKey!0 lt!282393 (select (arr!17960 a!2986) j!136) j!136))))

(declare-fun Unit!19894 () Unit!19890)

(assert (=> b!614914 (= e!352572 Unit!19894)))

(declare-fun b!614915 () Bool)

(declare-fun res!396175 () Bool)

(declare-fun e!352574 () Bool)

(assert (=> b!614915 (=> (not res!396175) (not e!352574))))

(assert (=> b!614915 (= res!396175 (and (= (size!18324 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18324 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18324 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614916 () Bool)

(declare-fun e!352566 () Bool)

(assert (=> b!614916 (= e!352566 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!282394 () Unit!19890)

(assert (=> b!614916 (= lt!282394 e!352565)))

(declare-fun c!69743 () Bool)

(declare-datatypes ((SeekEntryResult!6407 0))(
  ( (MissingZero!6407 (index!27911 (_ BitVec 32))) (Found!6407 (index!27912 (_ BitVec 32))) (Intermediate!6407 (undefined!7219 Bool) (index!27913 (_ BitVec 32)) (x!56736 (_ BitVec 32))) (Undefined!6407) (MissingVacant!6407 (index!27914 (_ BitVec 32))) )
))
(declare-fun lt!282391 () SeekEntryResult!6407)

(assert (=> b!614916 (= c!69743 (= lt!282391 (Found!6407 index!984)))))

(declare-fun lt!282384 () Unit!19890)

(assert (=> b!614916 (= lt!282384 e!352570)))

(declare-fun c!69742 () Bool)

(assert (=> b!614916 (= c!69742 (= lt!282391 Undefined!6407))))

(declare-fun lt!282382 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37435 (_ BitVec 32)) SeekEntryResult!6407)

(assert (=> b!614916 (= lt!282391 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282382 lt!282393 mask!3053))))

(declare-fun e!352571 () Bool)

(assert (=> b!614916 e!352571))

(declare-fun res!396165 () Bool)

(assert (=> b!614916 (=> (not res!396165) (not e!352571))))

(declare-fun lt!282396 () (_ BitVec 32))

(declare-fun lt!282381 () SeekEntryResult!6407)

(assert (=> b!614916 (= res!396165 (= lt!282381 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282396 vacantSpotIndex!68 lt!282382 lt!282393 mask!3053)))))

(assert (=> b!614916 (= lt!282381 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282396 vacantSpotIndex!68 (select (arr!17960 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!614916 (= lt!282382 (select (store (arr!17960 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282378 () Unit!19890)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37435 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19890)

(assert (=> b!614916 (= lt!282378 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282396 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614916 (= lt!282396 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614917 () Bool)

(declare-fun res!396176 () Bool)

(assert (=> b!614917 (=> (not res!396176) (not e!352564))))

(assert (=> b!614917 (= res!396176 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12051))))

(declare-fun b!614918 () Bool)

(declare-fun e!352573 () Bool)

(assert (=> b!614918 (= e!352573 e!352566)))

(declare-fun res!396168 () Bool)

(assert (=> b!614918 (=> (not res!396168) (not e!352566))))

(declare-fun lt!282388 () SeekEntryResult!6407)

(assert (=> b!614918 (= res!396168 (and (= lt!282388 (Found!6407 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17960 a!2986) index!984) (select (arr!17960 a!2986) j!136))) (not (= (select (arr!17960 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!614918 (= lt!282388 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17960 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614919 () Bool)

(declare-fun Unit!19895 () Unit!19890)

(assert (=> b!614919 (= e!352565 Unit!19895)))

(declare-fun b!614920 () Bool)

(declare-fun res!396170 () Bool)

(assert (=> b!614920 (=> (not res!396170) (not e!352574))))

(assert (=> b!614920 (= res!396170 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614921 () Bool)

(declare-fun Unit!19896 () Unit!19890)

(assert (=> b!614921 (= e!352569 Unit!19896)))

(declare-fun b!614922 () Bool)

(assert (=> b!614922 (= e!352574 e!352564)))

(declare-fun res!396171 () Bool)

(assert (=> b!614922 (=> (not res!396171) (not e!352564))))

(declare-fun lt!282385 () SeekEntryResult!6407)

(assert (=> b!614922 (= res!396171 (or (= lt!282385 (MissingZero!6407 i!1108)) (= lt!282385 (MissingVacant!6407 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37435 (_ BitVec 32)) SeekEntryResult!6407)

(assert (=> b!614922 (= lt!282385 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!614923 () Bool)

(declare-fun res!396178 () Bool)

(assert (=> b!614923 (= res!396178 (bvsge j!136 index!984))))

(assert (=> b!614923 (=> res!396178 e!352563)))

(assert (=> b!614923 (= e!352567 e!352563)))

(declare-fun b!614924 () Bool)

(assert (=> b!614924 (= e!352571 (= lt!282388 lt!282381))))

(declare-fun b!614925 () Bool)

(assert (=> b!614925 (= e!352576 (arrayContainsKey!0 lt!282393 (select (arr!17960 a!2986) j!136) index!984))))

(declare-fun b!614926 () Bool)

(assert (=> b!614926 false))

(declare-fun lt!282386 () Unit!19890)

(assert (=> b!614926 (= lt!282386 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282393 (select (arr!17960 a!2986) j!136) j!136 Nil!12051))))

(assert (=> b!614926 (arrayNoDuplicates!0 lt!282393 j!136 Nil!12051)))

(declare-fun lt!282377 () Unit!19890)

(assert (=> b!614926 (= lt!282377 (lemmaNoDuplicateFromThenFromBigger!0 lt!282393 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614926 (arrayNoDuplicates!0 lt!282393 #b00000000000000000000000000000000 Nil!12051)))

(declare-fun lt!282389 () Unit!19890)

(assert (=> b!614926 (= lt!282389 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12051))))

(assert (=> b!614926 (arrayContainsKey!0 lt!282393 (select (arr!17960 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282387 () Unit!19890)

(assert (=> b!614926 (= lt!282387 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282393 (select (arr!17960 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19897 () Unit!19890)

(assert (=> b!614926 (= e!352569 Unit!19897)))

(declare-fun b!614927 () Bool)

(assert (=> b!614927 (= e!352564 e!352573)))

(declare-fun res!396172 () Bool)

(assert (=> b!614927 (=> (not res!396172) (not e!352573))))

(assert (=> b!614927 (= res!396172 (= (select (store (arr!17960 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!614927 (= lt!282393 (array!37436 (store (arr!17960 a!2986) i!1108 k!1786) (size!18324 a!2986)))))

(declare-fun res!396167 () Bool)

(assert (=> start!56002 (=> (not res!396167) (not e!352574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56002 (= res!396167 (validMask!0 mask!3053))))

(assert (=> start!56002 e!352574))

(assert (=> start!56002 true))

(declare-fun array_inv!13734 (array!37435) Bool)

(assert (=> start!56002 (array_inv!13734 a!2986)))

(declare-fun b!614928 () Bool)

(declare-fun res!396166 () Bool)

(assert (=> b!614928 (=> (not res!396166) (not e!352564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37435 (_ BitVec 32)) Bool)

(assert (=> b!614928 (= res!396166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614929 () Bool)

(declare-fun res!396164 () Bool)

(assert (=> b!614929 (=> (not res!396164) (not e!352574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614929 (= res!396164 (validKeyInArray!0 k!1786))))

(declare-fun b!614930 () Bool)

(assert (=> b!614930 (= e!352568 (arrayContainsKey!0 lt!282393 (select (arr!17960 a!2986) j!136) index!984))))

(declare-fun b!614931 () Bool)

(declare-fun res!396169 () Bool)

(assert (=> b!614931 (=> (not res!396169) (not e!352574))))

(assert (=> b!614931 (= res!396169 (validKeyInArray!0 (select (arr!17960 a!2986) j!136)))))

(declare-fun b!614932 () Bool)

(declare-fun Unit!19898 () Unit!19890)

(assert (=> b!614932 (= e!352572 Unit!19898)))

(declare-fun b!614933 () Bool)

(declare-fun Unit!19899 () Unit!19890)

(assert (=> b!614933 (= e!352570 Unit!19899)))

(assert (=> b!614933 false))

(assert (= (and start!56002 res!396167) b!614915))

(assert (= (and b!614915 res!396175) b!614931))

(assert (= (and b!614931 res!396169) b!614929))

(assert (= (and b!614929 res!396164) b!614920))

(assert (= (and b!614920 res!396170) b!614922))

(assert (= (and b!614922 res!396171) b!614928))

(assert (= (and b!614928 res!396166) b!614917))

(assert (= (and b!614917 res!396176) b!614911))

(assert (= (and b!614911 res!396177) b!614927))

(assert (= (and b!614927 res!396172) b!614918))

(assert (= (and b!614918 res!396168) b!614916))

(assert (= (and b!614916 res!396165) b!614924))

(assert (= (and b!614916 c!69742) b!614933))

(assert (= (and b!614916 (not c!69742)) b!614910))

(assert (= (and b!614916 c!69743) b!614912))

(assert (= (and b!614916 (not c!69743)) b!614919))

(assert (= (and b!614912 res!396174) b!614923))

(assert (= (and b!614923 (not res!396178)) b!614913))

(assert (= (and b!614913 res!396173) b!614930))

(assert (= (and b!614912 c!69741) b!614926))

(assert (= (and b!614912 (not c!69741)) b!614921))

(assert (= (and b!614912 c!69740) b!614914))

(assert (= (and b!614912 (not c!69740)) b!614932))

(assert (= (and b!614914 res!396179) b!614925))

(declare-fun m!591173 () Bool)

(assert (=> start!56002 m!591173))

(declare-fun m!591175 () Bool)

(assert (=> start!56002 m!591175))

(declare-fun m!591177 () Bool)

(assert (=> b!614913 m!591177))

(assert (=> b!614913 m!591177))

(declare-fun m!591179 () Bool)

(assert (=> b!614913 m!591179))

(declare-fun m!591181 () Bool)

(assert (=> b!614917 m!591181))

(declare-fun m!591183 () Bool)

(assert (=> b!614926 m!591183))

(declare-fun m!591185 () Bool)

(assert (=> b!614926 m!591185))

(assert (=> b!614926 m!591177))

(declare-fun m!591187 () Bool)

(assert (=> b!614926 m!591187))

(assert (=> b!614926 m!591177))

(assert (=> b!614926 m!591177))

(declare-fun m!591189 () Bool)

(assert (=> b!614926 m!591189))

(declare-fun m!591191 () Bool)

(assert (=> b!614926 m!591191))

(assert (=> b!614926 m!591177))

(declare-fun m!591193 () Bool)

(assert (=> b!614926 m!591193))

(declare-fun m!591195 () Bool)

(assert (=> b!614926 m!591195))

(assert (=> b!614925 m!591177))

(assert (=> b!614925 m!591177))

(declare-fun m!591197 () Bool)

(assert (=> b!614925 m!591197))

(declare-fun m!591199 () Bool)

(assert (=> b!614916 m!591199))

(declare-fun m!591201 () Bool)

(assert (=> b!614916 m!591201))

(declare-fun m!591203 () Bool)

(assert (=> b!614916 m!591203))

(assert (=> b!614916 m!591177))

(declare-fun m!591205 () Bool)

(assert (=> b!614916 m!591205))

(declare-fun m!591207 () Bool)

(assert (=> b!614916 m!591207))

(declare-fun m!591209 () Bool)

(assert (=> b!614916 m!591209))

(declare-fun m!591211 () Bool)

(assert (=> b!614916 m!591211))

(assert (=> b!614916 m!591177))

(assert (=> b!614914 m!591177))

(assert (=> b!614914 m!591179))

(assert (=> b!614914 m!591177))

(declare-fun m!591213 () Bool)

(assert (=> b!614914 m!591213))

(declare-fun m!591215 () Bool)

(assert (=> b!614914 m!591215))

(assert (=> b!614914 m!591177))

(declare-fun m!591217 () Bool)

(assert (=> b!614914 m!591217))

(assert (=> b!614914 m!591195))

(assert (=> b!614914 m!591177))

(declare-fun m!591219 () Bool)

(assert (=> b!614914 m!591219))

(declare-fun m!591221 () Bool)

(assert (=> b!614914 m!591221))

(assert (=> b!614914 m!591177))

(assert (=> b!614914 m!591191))

(declare-fun m!591223 () Bool)

(assert (=> b!614928 m!591223))

(assert (=> b!614927 m!591201))

(declare-fun m!591225 () Bool)

(assert (=> b!614927 m!591225))

(declare-fun m!591227 () Bool)

(assert (=> b!614918 m!591227))

(assert (=> b!614918 m!591177))

(assert (=> b!614918 m!591177))

(declare-fun m!591229 () Bool)

(assert (=> b!614918 m!591229))

(assert (=> b!614930 m!591177))

(assert (=> b!614930 m!591177))

(assert (=> b!614930 m!591197))

(declare-fun m!591231 () Bool)

(assert (=> b!614911 m!591231))

(declare-fun m!591233 () Bool)

(assert (=> b!614922 m!591233))

(assert (=> b!614912 m!591201))

(declare-fun m!591235 () Bool)

(assert (=> b!614912 m!591235))

(assert (=> b!614912 m!591177))

(declare-fun m!591237 () Bool)

(assert (=> b!614929 m!591237))

(declare-fun m!591239 () Bool)

(assert (=> b!614920 m!591239))

(assert (=> b!614931 m!591177))

(assert (=> b!614931 m!591177))

(declare-fun m!591241 () Bool)

(assert (=> b!614931 m!591241))

(push 1)

