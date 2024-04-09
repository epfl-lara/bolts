; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56200 () Bool)

(assert start!56200)

(declare-fun b!622192 () Bool)

(declare-fun res!401081 () Bool)

(declare-fun e!356886 () Bool)

(assert (=> b!622192 (=> (not res!401081) (not e!356886))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37633 0))(
  ( (array!37634 (arr!18059 (Array (_ BitVec 32) (_ BitVec 64))) (size!18423 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37633)

(assert (=> b!622192 (= res!401081 (and (= (size!18423 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18423 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18423 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622193 () Bool)

(declare-fun e!356884 () Bool)

(declare-datatypes ((SeekEntryResult!6506 0))(
  ( (MissingZero!6506 (index!28307 (_ BitVec 32))) (Found!6506 (index!28308 (_ BitVec 32))) (Intermediate!6506 (undefined!7318 Bool) (index!28309 (_ BitVec 32)) (x!57099 (_ BitVec 32))) (Undefined!6506) (MissingVacant!6506 (index!28310 (_ BitVec 32))) )
))
(declare-fun lt!288328 () SeekEntryResult!6506)

(declare-fun lt!288327 () SeekEntryResult!6506)

(assert (=> b!622193 (= e!356884 (= lt!288328 lt!288327))))

(declare-fun b!622194 () Bool)

(declare-fun e!356874 () Bool)

(declare-fun lt!288317 () array!37633)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622194 (= e!356874 (arrayContainsKey!0 lt!288317 (select (arr!18059 a!2986) j!136) index!984))))

(declare-fun b!622195 () Bool)

(declare-fun e!356877 () Bool)

(assert (=> b!622195 (= e!356877 (not true))))

(declare-datatypes ((Unit!20880 0))(
  ( (Unit!20881) )
))
(declare-fun lt!288322 () Unit!20880)

(declare-fun e!356882 () Unit!20880)

(assert (=> b!622195 (= lt!288322 e!356882)))

(declare-fun c!70928 () Bool)

(declare-fun lt!288318 () SeekEntryResult!6506)

(assert (=> b!622195 (= c!70928 (= lt!288318 (Found!6506 index!984)))))

(declare-fun lt!288329 () Unit!20880)

(declare-fun e!356880 () Unit!20880)

(assert (=> b!622195 (= lt!288329 e!356880)))

(declare-fun c!70929 () Bool)

(assert (=> b!622195 (= c!70929 (= lt!288318 Undefined!6506))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!288326 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37633 (_ BitVec 32)) SeekEntryResult!6506)

(assert (=> b!622195 (= lt!288318 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288326 lt!288317 mask!3053))))

(assert (=> b!622195 e!356884))

(declare-fun res!401078 () Bool)

(assert (=> b!622195 (=> (not res!401078) (not e!356884))))

(declare-fun lt!288333 () (_ BitVec 32))

(assert (=> b!622195 (= res!401078 (= lt!288327 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288333 vacantSpotIndex!68 lt!288326 lt!288317 mask!3053)))))

(assert (=> b!622195 (= lt!288327 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288333 vacantSpotIndex!68 (select (arr!18059 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!622195 (= lt!288326 (select (store (arr!18059 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288336 () Unit!20880)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37633 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20880)

(assert (=> b!622195 (= lt!288336 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288333 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622195 (= lt!288333 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622196 () Bool)

(declare-fun res!401070 () Bool)

(declare-fun e!356878 () Bool)

(assert (=> b!622196 (=> (not res!401070) (not e!356878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37633 (_ BitVec 32)) Bool)

(assert (=> b!622196 (= res!401070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622197 () Bool)

(declare-fun Unit!20882 () Unit!20880)

(assert (=> b!622197 (= e!356880 Unit!20882)))

(declare-fun b!622198 () Bool)

(assert (=> b!622198 false))

(declare-fun lt!288331 () Unit!20880)

(declare-datatypes ((List!12153 0))(
  ( (Nil!12150) (Cons!12149 (h!13194 (_ BitVec 64)) (t!18389 List!12153)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37633 (_ BitVec 64) (_ BitVec 32) List!12153) Unit!20880)

(assert (=> b!622198 (= lt!288331 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288317 (select (arr!18059 a!2986) j!136) index!984 Nil!12150))))

(declare-fun arrayNoDuplicates!0 (array!37633 (_ BitVec 32) List!12153) Bool)

(assert (=> b!622198 (arrayNoDuplicates!0 lt!288317 index!984 Nil!12150)))

(declare-fun lt!288321 () Unit!20880)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37633 (_ BitVec 32) (_ BitVec 32)) Unit!20880)

(assert (=> b!622198 (= lt!288321 (lemmaNoDuplicateFromThenFromBigger!0 lt!288317 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622198 (arrayNoDuplicates!0 lt!288317 #b00000000000000000000000000000000 Nil!12150)))

(declare-fun lt!288319 () Unit!20880)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37633 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12153) Unit!20880)

(assert (=> b!622198 (= lt!288319 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12150))))

(assert (=> b!622198 (arrayContainsKey!0 lt!288317 (select (arr!18059 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288320 () Unit!20880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37633 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20880)

(assert (=> b!622198 (= lt!288320 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288317 (select (arr!18059 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356881 () Bool)

(assert (=> b!622198 e!356881))

(declare-fun res!401074 () Bool)

(assert (=> b!622198 (=> (not res!401074) (not e!356881))))

(assert (=> b!622198 (= res!401074 (arrayContainsKey!0 lt!288317 (select (arr!18059 a!2986) j!136) j!136))))

(declare-fun e!356885 () Unit!20880)

(declare-fun Unit!20883 () Unit!20880)

(assert (=> b!622198 (= e!356885 Unit!20883)))

(declare-fun b!622199 () Bool)

(declare-fun res!401071 () Bool)

(assert (=> b!622199 (= res!401071 (bvsge j!136 index!984))))

(declare-fun e!356876 () Bool)

(assert (=> b!622199 (=> res!401071 e!356876)))

(declare-fun e!356887 () Bool)

(assert (=> b!622199 (= e!356887 e!356876)))

(declare-fun b!622200 () Bool)

(declare-fun e!356879 () Unit!20880)

(declare-fun Unit!20884 () Unit!20880)

(assert (=> b!622200 (= e!356879 Unit!20884)))

(declare-fun b!622201 () Bool)

(declare-fun res!401069 () Bool)

(assert (=> b!622201 (=> (not res!401069) (not e!356886))))

(assert (=> b!622201 (= res!401069 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622202 () Bool)

(declare-fun e!356883 () Bool)

(assert (=> b!622202 (= e!356883 e!356877)))

(declare-fun res!401077 () Bool)

(assert (=> b!622202 (=> (not res!401077) (not e!356877))))

(assert (=> b!622202 (= res!401077 (and (= lt!288328 (Found!6506 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18059 a!2986) index!984) (select (arr!18059 a!2986) j!136))) (not (= (select (arr!18059 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622202 (= lt!288328 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18059 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622203 () Bool)

(declare-fun Unit!20885 () Unit!20880)

(assert (=> b!622203 (= e!356880 Unit!20885)))

(assert (=> b!622203 false))

(declare-fun b!622191 () Bool)

(declare-fun res!401076 () Bool)

(assert (=> b!622191 (=> (not res!401076) (not e!356878))))

(assert (=> b!622191 (= res!401076 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18059 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!401075 () Bool)

(assert (=> start!56200 (=> (not res!401075) (not e!356886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56200 (= res!401075 (validMask!0 mask!3053))))

(assert (=> start!56200 e!356886))

(assert (=> start!56200 true))

(declare-fun array_inv!13833 (array!37633) Bool)

(assert (=> start!56200 (array_inv!13833 a!2986)))

(declare-fun b!622204 () Bool)

(declare-fun Unit!20886 () Unit!20880)

(assert (=> b!622204 (= e!356882 Unit!20886)))

(declare-fun res!401072 () Bool)

(assert (=> b!622204 (= res!401072 (= (select (store (arr!18059 a!2986) i!1108 k!1786) index!984) (select (arr!18059 a!2986) j!136)))))

(assert (=> b!622204 (=> (not res!401072) (not e!356887))))

(assert (=> b!622204 e!356887))

(declare-fun c!70931 () Bool)

(assert (=> b!622204 (= c!70931 (bvslt j!136 index!984))))

(declare-fun lt!288324 () Unit!20880)

(assert (=> b!622204 (= lt!288324 e!356879)))

(declare-fun c!70930 () Bool)

(assert (=> b!622204 (= c!70930 (bvslt index!984 j!136))))

(declare-fun lt!288335 () Unit!20880)

(assert (=> b!622204 (= lt!288335 e!356885)))

(assert (=> b!622204 false))

(declare-fun b!622205 () Bool)

(declare-fun Unit!20887 () Unit!20880)

(assert (=> b!622205 (= e!356885 Unit!20887)))

(declare-fun b!622206 () Bool)

(assert (=> b!622206 (= e!356881 (arrayContainsKey!0 lt!288317 (select (arr!18059 a!2986) j!136) index!984))))

(declare-fun b!622207 () Bool)

(assert (=> b!622207 (= e!356878 e!356883)))

(declare-fun res!401079 () Bool)

(assert (=> b!622207 (=> (not res!401079) (not e!356883))))

(assert (=> b!622207 (= res!401079 (= (select (store (arr!18059 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622207 (= lt!288317 (array!37634 (store (arr!18059 a!2986) i!1108 k!1786) (size!18423 a!2986)))))

(declare-fun b!622208 () Bool)

(assert (=> b!622208 (= e!356886 e!356878)))

(declare-fun res!401083 () Bool)

(assert (=> b!622208 (=> (not res!401083) (not e!356878))))

(declare-fun lt!288330 () SeekEntryResult!6506)

(assert (=> b!622208 (= res!401083 (or (= lt!288330 (MissingZero!6506 i!1108)) (= lt!288330 (MissingVacant!6506 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37633 (_ BitVec 32)) SeekEntryResult!6506)

(assert (=> b!622208 (= lt!288330 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!622209 () Bool)

(declare-fun Unit!20888 () Unit!20880)

(assert (=> b!622209 (= e!356882 Unit!20888)))

(declare-fun b!622210 () Bool)

(declare-fun res!401082 () Bool)

(assert (=> b!622210 (=> (not res!401082) (not e!356886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622210 (= res!401082 (validKeyInArray!0 k!1786))))

(declare-fun b!622211 () Bool)

(declare-fun res!401080 () Bool)

(assert (=> b!622211 (=> (not res!401080) (not e!356886))))

(assert (=> b!622211 (= res!401080 (validKeyInArray!0 (select (arr!18059 a!2986) j!136)))))

(declare-fun b!622212 () Bool)

(assert (=> b!622212 false))

(declare-fun lt!288325 () Unit!20880)

(assert (=> b!622212 (= lt!288325 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288317 (select (arr!18059 a!2986) j!136) j!136 Nil!12150))))

(assert (=> b!622212 (arrayNoDuplicates!0 lt!288317 j!136 Nil!12150)))

(declare-fun lt!288332 () Unit!20880)

(assert (=> b!622212 (= lt!288332 (lemmaNoDuplicateFromThenFromBigger!0 lt!288317 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622212 (arrayNoDuplicates!0 lt!288317 #b00000000000000000000000000000000 Nil!12150)))

(declare-fun lt!288334 () Unit!20880)

(assert (=> b!622212 (= lt!288334 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12150))))

(assert (=> b!622212 (arrayContainsKey!0 lt!288317 (select (arr!18059 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288323 () Unit!20880)

(assert (=> b!622212 (= lt!288323 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288317 (select (arr!18059 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20889 () Unit!20880)

(assert (=> b!622212 (= e!356879 Unit!20889)))

(declare-fun b!622213 () Bool)

(declare-fun res!401073 () Bool)

(assert (=> b!622213 (=> (not res!401073) (not e!356878))))

(assert (=> b!622213 (= res!401073 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12150))))

(declare-fun res!401084 () Bool)

(declare-fun b!622214 () Bool)

(assert (=> b!622214 (= res!401084 (arrayContainsKey!0 lt!288317 (select (arr!18059 a!2986) j!136) j!136))))

(assert (=> b!622214 (=> (not res!401084) (not e!356874))))

(assert (=> b!622214 (= e!356876 e!356874)))

(assert (= (and start!56200 res!401075) b!622192))

(assert (= (and b!622192 res!401081) b!622211))

(assert (= (and b!622211 res!401080) b!622210))

(assert (= (and b!622210 res!401082) b!622201))

(assert (= (and b!622201 res!401069) b!622208))

(assert (= (and b!622208 res!401083) b!622196))

(assert (= (and b!622196 res!401070) b!622213))

(assert (= (and b!622213 res!401073) b!622191))

(assert (= (and b!622191 res!401076) b!622207))

(assert (= (and b!622207 res!401079) b!622202))

(assert (= (and b!622202 res!401077) b!622195))

(assert (= (and b!622195 res!401078) b!622193))

(assert (= (and b!622195 c!70929) b!622203))

(assert (= (and b!622195 (not c!70929)) b!622197))

(assert (= (and b!622195 c!70928) b!622204))

(assert (= (and b!622195 (not c!70928)) b!622209))

(assert (= (and b!622204 res!401072) b!622199))

(assert (= (and b!622199 (not res!401071)) b!622214))

(assert (= (and b!622214 res!401084) b!622194))

(assert (= (and b!622204 c!70931) b!622212))

(assert (= (and b!622204 (not c!70931)) b!622200))

(assert (= (and b!622204 c!70930) b!622198))

(assert (= (and b!622204 (not c!70930)) b!622205))

(assert (= (and b!622198 res!401074) b!622206))

(declare-fun m!598109 () Bool)

(assert (=> b!622201 m!598109))

(declare-fun m!598111 () Bool)

(assert (=> b!622207 m!598111))

(declare-fun m!598113 () Bool)

(assert (=> b!622207 m!598113))

(declare-fun m!598115 () Bool)

(assert (=> b!622198 m!598115))

(declare-fun m!598117 () Bool)

(assert (=> b!622198 m!598117))

(assert (=> b!622198 m!598115))

(assert (=> b!622198 m!598115))

(declare-fun m!598119 () Bool)

(assert (=> b!622198 m!598119))

(assert (=> b!622198 m!598115))

(declare-fun m!598121 () Bool)

(assert (=> b!622198 m!598121))

(declare-fun m!598123 () Bool)

(assert (=> b!622198 m!598123))

(assert (=> b!622198 m!598115))

(declare-fun m!598125 () Bool)

(assert (=> b!622198 m!598125))

(declare-fun m!598127 () Bool)

(assert (=> b!622198 m!598127))

(declare-fun m!598129 () Bool)

(assert (=> b!622198 m!598129))

(declare-fun m!598131 () Bool)

(assert (=> b!622198 m!598131))

(declare-fun m!598133 () Bool)

(assert (=> b!622210 m!598133))

(declare-fun m!598135 () Bool)

(assert (=> b!622191 m!598135))

(assert (=> b!622211 m!598115))

(assert (=> b!622211 m!598115))

(declare-fun m!598137 () Bool)

(assert (=> b!622211 m!598137))

(assert (=> b!622206 m!598115))

(assert (=> b!622206 m!598115))

(declare-fun m!598139 () Bool)

(assert (=> b!622206 m!598139))

(declare-fun m!598141 () Bool)

(assert (=> b!622195 m!598141))

(declare-fun m!598143 () Bool)

(assert (=> b!622195 m!598143))

(assert (=> b!622195 m!598115))

(assert (=> b!622195 m!598111))

(declare-fun m!598145 () Bool)

(assert (=> b!622195 m!598145))

(declare-fun m!598147 () Bool)

(assert (=> b!622195 m!598147))

(declare-fun m!598149 () Bool)

(assert (=> b!622195 m!598149))

(assert (=> b!622195 m!598115))

(declare-fun m!598151 () Bool)

(assert (=> b!622195 m!598151))

(assert (=> b!622214 m!598115))

(assert (=> b!622214 m!598115))

(assert (=> b!622214 m!598121))

(assert (=> b!622204 m!598111))

(declare-fun m!598153 () Bool)

(assert (=> b!622204 m!598153))

(assert (=> b!622204 m!598115))

(declare-fun m!598155 () Bool)

(assert (=> b!622196 m!598155))

(assert (=> b!622194 m!598115))

(assert (=> b!622194 m!598115))

(assert (=> b!622194 m!598139))

(declare-fun m!598157 () Bool)

(assert (=> b!622213 m!598157))

(declare-fun m!598159 () Bool)

(assert (=> b!622208 m!598159))

(declare-fun m!598161 () Bool)

(assert (=> b!622202 m!598161))

(assert (=> b!622202 m!598115))

(assert (=> b!622202 m!598115))

(declare-fun m!598163 () Bool)

(assert (=> b!622202 m!598163))

(declare-fun m!598165 () Bool)

(assert (=> start!56200 m!598165))

(declare-fun m!598167 () Bool)

(assert (=> start!56200 m!598167))

(declare-fun m!598169 () Bool)

(assert (=> b!622212 m!598169))

(assert (=> b!622212 m!598115))

(assert (=> b!622212 m!598115))

(declare-fun m!598171 () Bool)

(assert (=> b!622212 m!598171))

(assert (=> b!622212 m!598115))

(declare-fun m!598173 () Bool)

(assert (=> b!622212 m!598173))

(assert (=> b!622212 m!598115))

(declare-fun m!598175 () Bool)

(assert (=> b!622212 m!598175))

(assert (=> b!622212 m!598129))

(declare-fun m!598177 () Bool)

(assert (=> b!622212 m!598177))

(assert (=> b!622212 m!598127))

(push 1)

