; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55582 () Bool)

(assert start!55582)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!348309 () Bool)

(declare-fun b!608196 () Bool)

(declare-datatypes ((array!37276 0))(
  ( (array!37277 (arr!17885 (Array (_ BitVec 32) (_ BitVec 64))) (size!18249 (_ BitVec 32))) )
))
(declare-fun lt!277895 () array!37276)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37276)

(declare-fun arrayContainsKey!0 (array!37276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608196 (= e!348309 (arrayContainsKey!0 lt!277895 (select (arr!17885 a!2986) j!136) index!984))))

(declare-fun b!608197 () Bool)

(declare-fun e!348312 () Bool)

(assert (=> b!608197 (= e!348312 true)))

(declare-fun lt!277902 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!11979 0))(
  ( (Nil!11976) (Cons!11975 (h!13020 (_ BitVec 64)) (t!18215 List!11979)) )
))
(declare-fun contains!3025 (List!11979 (_ BitVec 64)) Bool)

(assert (=> b!608197 (= lt!277902 (contains!3025 Nil!11976 k!1786))))

(declare-fun e!348322 () Bool)

(declare-fun b!608198 () Bool)

(assert (=> b!608198 (= e!348322 (arrayContainsKey!0 lt!277895 (select (arr!17885 a!2986) j!136) index!984))))

(declare-fun b!608199 () Bool)

(declare-fun e!348315 () Bool)

(declare-fun e!348307 () Bool)

(assert (=> b!608199 (= e!348315 e!348307)))

(declare-fun res!391066 () Bool)

(assert (=> b!608199 (=> res!391066 e!348307)))

(declare-fun lt!277890 () (_ BitVec 64))

(declare-fun lt!277901 () (_ BitVec 64))

(assert (=> b!608199 (= res!391066 (or (not (= (select (arr!17885 a!2986) j!136) lt!277890)) (not (= (select (arr!17885 a!2986) j!136) lt!277901)) (bvsge j!136 index!984)))))

(declare-fun b!608200 () Bool)

(declare-fun res!391070 () Bool)

(declare-fun e!348318 () Bool)

(assert (=> b!608200 (=> (not res!391070) (not e!348318))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!608200 (= res!391070 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17885 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608201 () Bool)

(declare-fun e!348310 () Bool)

(assert (=> b!608201 (= e!348318 e!348310)))

(declare-fun res!391058 () Bool)

(assert (=> b!608201 (=> (not res!391058) (not e!348310))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!608201 (= res!391058 (= (select (store (arr!17885 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608201 (= lt!277895 (array!37277 (store (arr!17885 a!2986) i!1108 k!1786) (size!18249 a!2986)))))

(declare-fun b!608202 () Bool)

(declare-fun res!391054 () Bool)

(assert (=> b!608202 (=> (not res!391054) (not e!348318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37276 (_ BitVec 32)) Bool)

(assert (=> b!608202 (= res!391054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608203 () Bool)

(declare-fun e!348313 () Bool)

(declare-fun e!348321 () Bool)

(assert (=> b!608203 (= e!348313 e!348321)))

(declare-fun res!391051 () Bool)

(assert (=> b!608203 (=> res!391051 e!348321)))

(assert (=> b!608203 (= res!391051 (or (not (= (select (arr!17885 a!2986) j!136) lt!277890)) (not (= (select (arr!17885 a!2986) j!136) lt!277901))))))

(assert (=> b!608203 e!348315))

(declare-fun res!391064 () Bool)

(assert (=> b!608203 (=> (not res!391064) (not e!348315))))

(assert (=> b!608203 (= res!391064 (= lt!277901 (select (arr!17885 a!2986) j!136)))))

(assert (=> b!608203 (= lt!277901 (select (store (arr!17885 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!608204 () Bool)

(declare-fun e!348311 () Bool)

(assert (=> b!608204 (= e!348311 e!348312)))

(declare-fun res!391056 () Bool)

(assert (=> b!608204 (=> res!391056 e!348312)))

(assert (=> b!608204 (= res!391056 (or (bvsge (size!18249 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18249 a!2986))))))

(assert (=> b!608204 (arrayContainsKey!0 lt!277895 (select (arr!17885 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-datatypes ((Unit!19420 0))(
  ( (Unit!19421) )
))
(declare-fun lt!277894 () Unit!19420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37276 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19420)

(assert (=> b!608204 (= lt!277894 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277895 (select (arr!17885 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608204 e!348322))

(declare-fun res!391061 () Bool)

(assert (=> b!608204 (=> (not res!391061) (not e!348322))))

(assert (=> b!608204 (= res!391061 (arrayContainsKey!0 lt!277895 (select (arr!17885 a!2986) j!136) j!136))))

(declare-fun b!608205 () Bool)

(declare-fun e!348319 () Unit!19420)

(declare-fun Unit!19422 () Unit!19420)

(assert (=> b!608205 (= e!348319 Unit!19422)))

(declare-fun b!608206 () Bool)

(declare-fun e!348320 () Bool)

(assert (=> b!608206 (= e!348320 e!348318)))

(declare-fun res!391048 () Bool)

(assert (=> b!608206 (=> (not res!391048) (not e!348318))))

(declare-datatypes ((SeekEntryResult!6332 0))(
  ( (MissingZero!6332 (index!27602 (_ BitVec 32))) (Found!6332 (index!27603 (_ BitVec 32))) (Intermediate!6332 (undefined!7144 Bool) (index!27604 (_ BitVec 32)) (x!56434 (_ BitVec 32))) (Undefined!6332) (MissingVacant!6332 (index!27605 (_ BitVec 32))) )
))
(declare-fun lt!277889 () SeekEntryResult!6332)

(assert (=> b!608206 (= res!391048 (or (= lt!277889 (MissingZero!6332 i!1108)) (= lt!277889 (MissingVacant!6332 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37276 (_ BitVec 32)) SeekEntryResult!6332)

(assert (=> b!608206 (= lt!277889 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!608207 () Bool)

(declare-fun e!348314 () Unit!19420)

(declare-fun Unit!19423 () Unit!19420)

(assert (=> b!608207 (= e!348314 Unit!19423)))

(assert (=> b!608207 false))

(declare-fun b!608208 () Bool)

(declare-fun res!391055 () Bool)

(assert (=> b!608208 (=> (not res!391055) (not e!348320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608208 (= res!391055 (validKeyInArray!0 (select (arr!17885 a!2986) j!136)))))

(declare-fun b!608209 () Bool)

(declare-fun res!391060 () Bool)

(assert (=> b!608209 (=> res!391060 e!348312)))

(declare-fun noDuplicate!327 (List!11979) Bool)

(assert (=> b!608209 (= res!391060 (not (noDuplicate!327 Nil!11976)))))

(declare-fun b!608210 () Bool)

(declare-fun res!391053 () Bool)

(assert (=> b!608210 (=> res!391053 e!348312)))

(assert (=> b!608210 (= res!391053 (contains!3025 Nil!11976 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608211 () Bool)

(declare-fun e!348308 () Bool)

(declare-fun lt!277899 () SeekEntryResult!6332)

(declare-fun lt!277892 () SeekEntryResult!6332)

(assert (=> b!608211 (= e!348308 (= lt!277899 lt!277892))))

(declare-fun b!608212 () Bool)

(declare-fun e!348316 () Bool)

(assert (=> b!608212 (= e!348310 e!348316)))

(declare-fun res!391057 () Bool)

(assert (=> b!608212 (=> (not res!391057) (not e!348316))))

(assert (=> b!608212 (= res!391057 (and (= lt!277899 (Found!6332 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17885 a!2986) index!984) (select (arr!17885 a!2986) j!136))) (not (= (select (arr!17885 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37276 (_ BitVec 32)) SeekEntryResult!6332)

(assert (=> b!608212 (= lt!277899 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17885 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!391052 () Bool)

(assert (=> start!55582 (=> (not res!391052) (not e!348320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55582 (= res!391052 (validMask!0 mask!3053))))

(assert (=> start!55582 e!348320))

(assert (=> start!55582 true))

(declare-fun array_inv!13659 (array!37276) Bool)

(assert (=> start!55582 (array_inv!13659 a!2986)))

(declare-fun b!608213 () Bool)

(declare-fun Unit!19424 () Unit!19420)

(assert (=> b!608213 (= e!348314 Unit!19424)))

(declare-fun b!608214 () Bool)

(assert (=> b!608214 (= e!348307 e!348309)))

(declare-fun res!391049 () Bool)

(assert (=> b!608214 (=> (not res!391049) (not e!348309))))

(assert (=> b!608214 (= res!391049 (arrayContainsKey!0 lt!277895 (select (arr!17885 a!2986) j!136) j!136))))

(declare-fun b!608215 () Bool)

(declare-fun res!391059 () Bool)

(assert (=> b!608215 (=> (not res!391059) (not e!348318))))

(declare-fun arrayNoDuplicates!0 (array!37276 (_ BitVec 32) List!11979) Bool)

(assert (=> b!608215 (= res!391059 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11976))))

(declare-fun b!608216 () Bool)

(declare-fun res!391065 () Bool)

(assert (=> b!608216 (=> (not res!391065) (not e!348320))))

(assert (=> b!608216 (= res!391065 (and (= (size!18249 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18249 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18249 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608217 () Bool)

(declare-fun Unit!19425 () Unit!19420)

(assert (=> b!608217 (= e!348319 Unit!19425)))

(declare-fun lt!277893 () Unit!19420)

(assert (=> b!608217 (= lt!277893 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277895 (select (arr!17885 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608217 (arrayContainsKey!0 lt!277895 (select (arr!17885 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277888 () Unit!19420)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37276 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11979) Unit!19420)

(assert (=> b!608217 (= lt!277888 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11976))))

(assert (=> b!608217 (arrayNoDuplicates!0 lt!277895 #b00000000000000000000000000000000 Nil!11976)))

(declare-fun lt!277896 () Unit!19420)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37276 (_ BitVec 32) (_ BitVec 32)) Unit!19420)

(assert (=> b!608217 (= lt!277896 (lemmaNoDuplicateFromThenFromBigger!0 lt!277895 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608217 (arrayNoDuplicates!0 lt!277895 j!136 Nil!11976)))

(declare-fun lt!277886 () Unit!19420)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37276 (_ BitVec 64) (_ BitVec 32) List!11979) Unit!19420)

(assert (=> b!608217 (= lt!277886 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277895 (select (arr!17885 a!2986) j!136) j!136 Nil!11976))))

(assert (=> b!608217 false))

(declare-fun b!608218 () Bool)

(declare-fun res!391068 () Bool)

(assert (=> b!608218 (=> res!391068 e!348312)))

(assert (=> b!608218 (= res!391068 (contains!3025 Nil!11976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608219 () Bool)

(assert (=> b!608219 (= e!348321 e!348311)))

(declare-fun res!391067 () Bool)

(assert (=> b!608219 (=> res!391067 e!348311)))

(assert (=> b!608219 (= res!391067 (bvsge index!984 j!136))))

(declare-fun lt!277897 () Unit!19420)

(assert (=> b!608219 (= lt!277897 e!348319)))

(declare-fun c!68942 () Bool)

(assert (=> b!608219 (= c!68942 (bvslt j!136 index!984))))

(declare-fun b!608220 () Bool)

(declare-fun res!391050 () Bool)

(assert (=> b!608220 (=> (not res!391050) (not e!348320))))

(assert (=> b!608220 (= res!391050 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608221 () Bool)

(assert (=> b!608221 (= e!348316 (not e!348313))))

(declare-fun res!391062 () Bool)

(assert (=> b!608221 (=> res!391062 e!348313)))

(declare-fun lt!277900 () SeekEntryResult!6332)

(assert (=> b!608221 (= res!391062 (not (= lt!277900 (Found!6332 index!984))))))

(declare-fun lt!277891 () Unit!19420)

(assert (=> b!608221 (= lt!277891 e!348314)))

(declare-fun c!68941 () Bool)

(assert (=> b!608221 (= c!68941 (= lt!277900 Undefined!6332))))

(assert (=> b!608221 (= lt!277900 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277890 lt!277895 mask!3053))))

(assert (=> b!608221 e!348308))

(declare-fun res!391069 () Bool)

(assert (=> b!608221 (=> (not res!391069) (not e!348308))))

(declare-fun lt!277898 () (_ BitVec 32))

(assert (=> b!608221 (= res!391069 (= lt!277892 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277898 vacantSpotIndex!68 lt!277890 lt!277895 mask!3053)))))

(assert (=> b!608221 (= lt!277892 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277898 vacantSpotIndex!68 (select (arr!17885 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608221 (= lt!277890 (select (store (arr!17885 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277887 () Unit!19420)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37276 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19420)

(assert (=> b!608221 (= lt!277887 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277898 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608221 (= lt!277898 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608222 () Bool)

(declare-fun res!391063 () Bool)

(assert (=> b!608222 (=> (not res!391063) (not e!348320))))

(assert (=> b!608222 (= res!391063 (validKeyInArray!0 k!1786))))

(assert (= (and start!55582 res!391052) b!608216))

(assert (= (and b!608216 res!391065) b!608208))

(assert (= (and b!608208 res!391055) b!608222))

(assert (= (and b!608222 res!391063) b!608220))

(assert (= (and b!608220 res!391050) b!608206))

(assert (= (and b!608206 res!391048) b!608202))

(assert (= (and b!608202 res!391054) b!608215))

(assert (= (and b!608215 res!391059) b!608200))

(assert (= (and b!608200 res!391070) b!608201))

(assert (= (and b!608201 res!391058) b!608212))

(assert (= (and b!608212 res!391057) b!608221))

(assert (= (and b!608221 res!391069) b!608211))

(assert (= (and b!608221 c!68941) b!608207))

(assert (= (and b!608221 (not c!68941)) b!608213))

(assert (= (and b!608221 (not res!391062)) b!608203))

(assert (= (and b!608203 res!391064) b!608199))

(assert (= (and b!608199 (not res!391066)) b!608214))

(assert (= (and b!608214 res!391049) b!608196))

(assert (= (and b!608203 (not res!391051)) b!608219))

(assert (= (and b!608219 c!68942) b!608217))

(assert (= (and b!608219 (not c!68942)) b!608205))

(assert (= (and b!608219 (not res!391067)) b!608204))

(assert (= (and b!608204 res!391061) b!608198))

(assert (= (and b!608204 (not res!391056)) b!608209))

(assert (= (and b!608209 (not res!391060)) b!608218))

(assert (= (and b!608218 (not res!391068)) b!608210))

(assert (= (and b!608210 (not res!391053)) b!608197))

(declare-fun m!584877 () Bool)

(assert (=> b!608218 m!584877))

(declare-fun m!584879 () Bool)

(assert (=> b!608199 m!584879))

(declare-fun m!584881 () Bool)

(assert (=> start!55582 m!584881))

(declare-fun m!584883 () Bool)

(assert (=> start!55582 m!584883))

(declare-fun m!584885 () Bool)

(assert (=> b!608206 m!584885))

(declare-fun m!584887 () Bool)

(assert (=> b!608217 m!584887))

(assert (=> b!608217 m!584879))

(declare-fun m!584889 () Bool)

(assert (=> b!608217 m!584889))

(assert (=> b!608217 m!584879))

(declare-fun m!584891 () Bool)

(assert (=> b!608217 m!584891))

(declare-fun m!584893 () Bool)

(assert (=> b!608217 m!584893))

(assert (=> b!608217 m!584879))

(declare-fun m!584895 () Bool)

(assert (=> b!608217 m!584895))

(assert (=> b!608217 m!584879))

(declare-fun m!584897 () Bool)

(assert (=> b!608217 m!584897))

(declare-fun m!584899 () Bool)

(assert (=> b!608217 m!584899))

(assert (=> b!608208 m!584879))

(assert (=> b!608208 m!584879))

(declare-fun m!584901 () Bool)

(assert (=> b!608208 m!584901))

(assert (=> b!608196 m!584879))

(assert (=> b!608196 m!584879))

(declare-fun m!584903 () Bool)

(assert (=> b!608196 m!584903))

(declare-fun m!584905 () Bool)

(assert (=> b!608215 m!584905))

(declare-fun m!584907 () Bool)

(assert (=> b!608201 m!584907))

(declare-fun m!584909 () Bool)

(assert (=> b!608201 m!584909))

(declare-fun m!584911 () Bool)

(assert (=> b!608202 m!584911))

(assert (=> b!608198 m!584879))

(assert (=> b!608198 m!584879))

(assert (=> b!608198 m!584903))

(declare-fun m!584913 () Bool)

(assert (=> b!608221 m!584913))

(declare-fun m!584915 () Bool)

(assert (=> b!608221 m!584915))

(assert (=> b!608221 m!584879))

(assert (=> b!608221 m!584907))

(declare-fun m!584917 () Bool)

(assert (=> b!608221 m!584917))

(assert (=> b!608221 m!584879))

(declare-fun m!584919 () Bool)

(assert (=> b!608221 m!584919))

(declare-fun m!584921 () Bool)

(assert (=> b!608221 m!584921))

(declare-fun m!584923 () Bool)

(assert (=> b!608221 m!584923))

(assert (=> b!608203 m!584879))

(assert (=> b!608203 m!584907))

(declare-fun m!584925 () Bool)

(assert (=> b!608203 m!584925))

(declare-fun m!584927 () Bool)

(assert (=> b!608212 m!584927))

(assert (=> b!608212 m!584879))

(assert (=> b!608212 m!584879))

(declare-fun m!584929 () Bool)

(assert (=> b!608212 m!584929))

(declare-fun m!584931 () Bool)

(assert (=> b!608222 m!584931))

(assert (=> b!608204 m!584879))

(assert (=> b!608204 m!584879))

(declare-fun m!584933 () Bool)

(assert (=> b!608204 m!584933))

(assert (=> b!608204 m!584879))

(declare-fun m!584935 () Bool)

(assert (=> b!608204 m!584935))

(assert (=> b!608204 m!584879))

(declare-fun m!584937 () Bool)

(assert (=> b!608204 m!584937))

(declare-fun m!584939 () Bool)

(assert (=> b!608200 m!584939))

(assert (=> b!608214 m!584879))

(assert (=> b!608214 m!584879))

(assert (=> b!608214 m!584937))

(declare-fun m!584941 () Bool)

(assert (=> b!608210 m!584941))

(declare-fun m!584943 () Bool)

(assert (=> b!608220 m!584943))

(declare-fun m!584945 () Bool)

(assert (=> b!608209 m!584945))

(declare-fun m!584947 () Bool)

(assert (=> b!608197 m!584947))

(push 1)

