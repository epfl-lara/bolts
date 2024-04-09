; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57030 () Bool)

(assert start!57030)

(declare-fun b!631135 () Bool)

(declare-fun e!360846 () Bool)

(declare-fun e!360847 () Bool)

(assert (=> b!631135 (= e!360846 e!360847)))

(declare-fun res!408229 () Bool)

(assert (=> b!631135 (=> (not res!408229) (not e!360847))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6711 0))(
  ( (MissingZero!6711 (index!29133 (_ BitVec 32))) (Found!6711 (index!29134 (_ BitVec 32))) (Intermediate!6711 (undefined!7523 Bool) (index!29135 (_ BitVec 32)) (x!57898 (_ BitVec 32))) (Undefined!6711) (MissingVacant!6711 (index!29136 (_ BitVec 32))) )
))
(declare-fun lt!291639 () SeekEntryResult!6711)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38067 0))(
  ( (array!38068 (arr!18264 (Array (_ BitVec 32) (_ BitVec 64))) (size!18628 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38067)

(assert (=> b!631135 (= res!408229 (and (= lt!291639 (Found!6711 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18264 a!2986) index!984) (select (arr!18264 a!2986) j!136))) (not (= (select (arr!18264 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38067 (_ BitVec 32)) SeekEntryResult!6711)

(assert (=> b!631135 (= lt!291639 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18264 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631136 () Bool)

(declare-fun res!408227 () Bool)

(declare-fun e!360844 () Bool)

(assert (=> b!631136 (=> (not res!408227) (not e!360844))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!631136 (= res!408227 (and (= (size!18628 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18628 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18628 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631137 () Bool)

(declare-fun res!408224 () Bool)

(assert (=> b!631137 (=> (not res!408224) (not e!360844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631137 (= res!408224 (validKeyInArray!0 (select (arr!18264 a!2986) j!136)))))

(declare-fun b!631138 () Bool)

(declare-fun res!408222 () Bool)

(declare-fun e!360849 () Bool)

(assert (=> b!631138 (=> (not res!408222) (not e!360849))))

(assert (=> b!631138 (= res!408222 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18264 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631139 () Bool)

(declare-fun res!408225 () Bool)

(assert (=> b!631139 (=> (not res!408225) (not e!360844))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631139 (= res!408225 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631140 () Bool)

(declare-fun res!408220 () Bool)

(assert (=> b!631140 (=> (not res!408220) (not e!360849))))

(declare-datatypes ((List!12358 0))(
  ( (Nil!12355) (Cons!12354 (h!13399 (_ BitVec 64)) (t!18594 List!12358)) )
))
(declare-fun arrayNoDuplicates!0 (array!38067 (_ BitVec 32) List!12358) Bool)

(assert (=> b!631140 (= res!408220 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12355))))

(declare-fun b!631141 () Bool)

(declare-fun res!408223 () Bool)

(assert (=> b!631141 (=> (not res!408223) (not e!360849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38067 (_ BitVec 32)) Bool)

(assert (=> b!631141 (= res!408223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631142 () Bool)

(declare-fun e!360850 () Bool)

(declare-fun lt!291644 () SeekEntryResult!6711)

(assert (=> b!631142 (= e!360850 (= lt!291639 lt!291644))))

(declare-fun b!631143 () Bool)

(declare-datatypes ((Unit!21202 0))(
  ( (Unit!21203) )
))
(declare-fun e!360845 () Unit!21202)

(declare-fun Unit!21204 () Unit!21202)

(assert (=> b!631143 (= e!360845 Unit!21204)))

(assert (=> b!631143 false))

(declare-fun b!631144 () Bool)

(declare-fun lt!291638 () SeekEntryResult!6711)

(assert (=> b!631144 (= e!360847 (not (or (not (= lt!291638 (Found!6711 index!984))) (= (select (store (arr!18264 a!2986) i!1108 k!1786) index!984) (select (arr!18264 a!2986) j!136)))))))

(declare-fun lt!291640 () Unit!21202)

(assert (=> b!631144 (= lt!291640 e!360845)))

(declare-fun c!71825 () Bool)

(assert (=> b!631144 (= c!71825 (= lt!291638 Undefined!6711))))

(declare-fun lt!291637 () (_ BitVec 64))

(declare-fun lt!291641 () array!38067)

(assert (=> b!631144 (= lt!291638 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291637 lt!291641 mask!3053))))

(assert (=> b!631144 e!360850))

(declare-fun res!408221 () Bool)

(assert (=> b!631144 (=> (not res!408221) (not e!360850))))

(declare-fun lt!291642 () (_ BitVec 32))

(assert (=> b!631144 (= res!408221 (= lt!291644 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291642 vacantSpotIndex!68 lt!291637 lt!291641 mask!3053)))))

(assert (=> b!631144 (= lt!291644 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291642 vacantSpotIndex!68 (select (arr!18264 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631144 (= lt!291637 (select (store (arr!18264 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291645 () Unit!21202)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21202)

(assert (=> b!631144 (= lt!291645 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291642 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631144 (= lt!291642 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631145 () Bool)

(declare-fun res!408230 () Bool)

(assert (=> b!631145 (=> (not res!408230) (not e!360844))))

(assert (=> b!631145 (= res!408230 (validKeyInArray!0 k!1786))))

(declare-fun b!631146 () Bool)

(assert (=> b!631146 (= e!360849 e!360846)))

(declare-fun res!408226 () Bool)

(assert (=> b!631146 (=> (not res!408226) (not e!360846))))

(assert (=> b!631146 (= res!408226 (= (select (store (arr!18264 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631146 (= lt!291641 (array!38068 (store (arr!18264 a!2986) i!1108 k!1786) (size!18628 a!2986)))))

(declare-fun res!408219 () Bool)

(assert (=> start!57030 (=> (not res!408219) (not e!360844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57030 (= res!408219 (validMask!0 mask!3053))))

(assert (=> start!57030 e!360844))

(assert (=> start!57030 true))

(declare-fun array_inv!14038 (array!38067) Bool)

(assert (=> start!57030 (array_inv!14038 a!2986)))

(declare-fun b!631147 () Bool)

(assert (=> b!631147 (= e!360844 e!360849)))

(declare-fun res!408228 () Bool)

(assert (=> b!631147 (=> (not res!408228) (not e!360849))))

(declare-fun lt!291643 () SeekEntryResult!6711)

(assert (=> b!631147 (= res!408228 (or (= lt!291643 (MissingZero!6711 i!1108)) (= lt!291643 (MissingVacant!6711 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38067 (_ BitVec 32)) SeekEntryResult!6711)

(assert (=> b!631147 (= lt!291643 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631148 () Bool)

(declare-fun Unit!21205 () Unit!21202)

(assert (=> b!631148 (= e!360845 Unit!21205)))

(assert (= (and start!57030 res!408219) b!631136))

(assert (= (and b!631136 res!408227) b!631137))

(assert (= (and b!631137 res!408224) b!631145))

(assert (= (and b!631145 res!408230) b!631139))

(assert (= (and b!631139 res!408225) b!631147))

(assert (= (and b!631147 res!408228) b!631141))

(assert (= (and b!631141 res!408223) b!631140))

(assert (= (and b!631140 res!408220) b!631138))

(assert (= (and b!631138 res!408222) b!631146))

(assert (= (and b!631146 res!408226) b!631135))

(assert (= (and b!631135 res!408229) b!631144))

(assert (= (and b!631144 res!408221) b!631142))

(assert (= (and b!631144 c!71825) b!631143))

(assert (= (and b!631144 (not c!71825)) b!631148))

(declare-fun m!606129 () Bool)

(assert (=> start!57030 m!606129))

(declare-fun m!606131 () Bool)

(assert (=> start!57030 m!606131))

(declare-fun m!606133 () Bool)

(assert (=> b!631146 m!606133))

(declare-fun m!606135 () Bool)

(assert (=> b!631146 m!606135))

(declare-fun m!606137 () Bool)

(assert (=> b!631145 m!606137))

(declare-fun m!606139 () Bool)

(assert (=> b!631144 m!606139))

(declare-fun m!606141 () Bool)

(assert (=> b!631144 m!606141))

(declare-fun m!606143 () Bool)

(assert (=> b!631144 m!606143))

(declare-fun m!606145 () Bool)

(assert (=> b!631144 m!606145))

(assert (=> b!631144 m!606133))

(declare-fun m!606147 () Bool)

(assert (=> b!631144 m!606147))

(declare-fun m!606149 () Bool)

(assert (=> b!631144 m!606149))

(declare-fun m!606151 () Bool)

(assert (=> b!631144 m!606151))

(assert (=> b!631144 m!606145))

(declare-fun m!606153 () Bool)

(assert (=> b!631144 m!606153))

(declare-fun m!606155 () Bool)

(assert (=> b!631140 m!606155))

(declare-fun m!606157 () Bool)

(assert (=> b!631135 m!606157))

(assert (=> b!631135 m!606145))

(assert (=> b!631135 m!606145))

(declare-fun m!606159 () Bool)

(assert (=> b!631135 m!606159))

(declare-fun m!606161 () Bool)

(assert (=> b!631139 m!606161))

(assert (=> b!631137 m!606145))

(assert (=> b!631137 m!606145))

(declare-fun m!606163 () Bool)

(assert (=> b!631137 m!606163))

(declare-fun m!606165 () Bool)

(assert (=> b!631147 m!606165))

(declare-fun m!606167 () Bool)

(assert (=> b!631141 m!606167))

(declare-fun m!606169 () Bool)

(assert (=> b!631138 m!606169))

(push 1)

(assert (not b!631144))

(assert (not b!631141))

(assert (not b!631137))

(assert (not b!631147))

(assert (not b!631139))

(assert (not b!631145))

(assert (not start!57030))

(assert (not b!631135))

(assert (not b!631140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!631323 () Bool)

(declare-fun e!360953 () SeekEntryResult!6711)

(declare-fun e!360955 () SeekEntryResult!6711)

(assert (=> b!631323 (= e!360953 e!360955)))

(declare-fun lt!291734 () (_ BitVec 64))

(declare-fun lt!291733 () SeekEntryResult!6711)

(assert (=> b!631323 (= lt!291734 (select (arr!18264 a!2986) (index!29135 lt!291733)))))

(declare-fun c!71863 () Bool)

(assert (=> b!631323 (= c!71863 (= lt!291734 k!1786))))

(declare-fun d!89195 () Bool)

(declare-fun lt!291735 () SeekEntryResult!6711)

(assert (=> d!89195 (and (or (is-Undefined!6711 lt!291735) (not (is-Found!6711 lt!291735)) (and (bvsge (index!29134 lt!291735) #b00000000000000000000000000000000) (bvslt (index!29134 lt!291735) (size!18628 a!2986)))) (or (is-Undefined!6711 lt!291735) (is-Found!6711 lt!291735) (not (is-MissingZero!6711 lt!291735)) (and (bvsge (index!29133 lt!291735) #b00000000000000000000000000000000) (bvslt (index!29133 lt!291735) (size!18628 a!2986)))) (or (is-Undefined!6711 lt!291735) (is-Found!6711 lt!291735) (is-MissingZero!6711 lt!291735) (not (is-MissingVacant!6711 lt!291735)) (and (bvsge (index!29136 lt!291735) #b00000000000000000000000000000000) (bvslt (index!29136 lt!291735) (size!18628 a!2986)))) (or (is-Undefined!6711 lt!291735) (ite (is-Found!6711 lt!291735) (= (select (arr!18264 a!2986) (index!29134 lt!291735)) k!1786) (ite (is-MissingZero!6711 lt!291735) (= (select (arr!18264 a!2986) (index!29133 lt!291735)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6711 lt!291735) (= (select (arr!18264 a!2986) (index!29136 lt!291735)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89195 (= lt!291735 e!360953)))

(declare-fun c!71864 () Bool)

(assert (=> d!89195 (= c!71864 (and (is-Intermediate!6711 lt!291733) (undefined!7523 lt!291733)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38067 (_ BitVec 32)) SeekEntryResult!6711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89195 (= lt!291733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89195 (validMask!0 mask!3053)))

(assert (=> d!89195 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!291735)))

(declare-fun b!631324 () Bool)

(assert (=> b!631324 (= e!360953 Undefined!6711)))

(declare-fun e!360954 () SeekEntryResult!6711)

(declare-fun b!631325 () Bool)

(assert (=> b!631325 (= e!360954 (seekKeyOrZeroReturnVacant!0 (x!57898 lt!291733) (index!29135 lt!291733) (index!29135 lt!291733) k!1786 a!2986 mask!3053))))

(declare-fun b!631326 () Bool)

(assert (=> b!631326 (= e!360954 (MissingZero!6711 (index!29135 lt!291733)))))

(declare-fun b!631327 () Bool)

(declare-fun c!71862 () Bool)

(assert (=> b!631327 (= c!71862 (= lt!291734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631327 (= e!360955 e!360954)))

(declare-fun b!631328 () Bool)

(assert (=> b!631328 (= e!360955 (Found!6711 (index!29135 lt!291733)))))

(assert (= (and d!89195 c!71864) b!631324))

(assert (= (and d!89195 (not c!71864)) b!631323))

(assert (= (and b!631323 c!71863) b!631328))

(assert (= (and b!631323 (not c!71863)) b!631327))

(assert (= (and b!631327 c!71862) b!631326))

(assert (= (and b!631327 (not c!71862)) b!631325))

(declare-fun m!606315 () Bool)

(assert (=> b!631323 m!606315))

(declare-fun m!606317 () Bool)

(assert (=> d!89195 m!606317))

(assert (=> d!89195 m!606129))

(declare-fun m!606319 () Bool)

(assert (=> d!89195 m!606319))

(declare-fun m!606321 () Bool)

(assert (=> d!89195 m!606321))

(declare-fun m!606323 () Bool)

(assert (=> d!89195 m!606323))

(declare-fun m!606325 () Bool)

(assert (=> d!89195 m!606325))

(assert (=> d!89195 m!606319))

(declare-fun m!606327 () Bool)

(assert (=> b!631325 m!606327))

(assert (=> b!631147 d!89195))

(declare-fun d!89215 () Bool)

(assert (=> d!89215 (= (validKeyInArray!0 (select (arr!18264 a!2986) j!136)) (and (not (= (select (arr!18264 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18264 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!631137 d!89215))

(declare-fun d!89217 () Bool)

(assert (=> d!89217 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57030 d!89217))

(declare-fun d!89221 () Bool)

(assert (=> d!89221 (= (array_inv!14038 a!2986) (bvsge (size!18628 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57030 d!89221))

(declare-fun e!360991 () SeekEntryResult!6711)

(declare-fun b!631396 () Bool)

(assert (=> b!631396 (= e!360991 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18264 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631397 () Bool)

(assert (=> b!631397 (= e!360991 (MissingVacant!6711 vacantSpotIndex!68))))

(declare-fun b!631398 () Bool)

(declare-fun e!360990 () SeekEntryResult!6711)

(assert (=> b!631398 (= e!360990 Undefined!6711)))

(declare-fun b!631399 () Bool)

(declare-fun c!71900 () Bool)

(declare-fun lt!291764 () (_ BitVec 64))

(assert (=> b!631399 (= c!71900 (= lt!291764 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!360989 () SeekEntryResult!6711)

(assert (=> b!631399 (= e!360989 e!360991)))

(declare-fun b!631400 () Bool)

(assert (=> b!631400 (= e!360989 (Found!6711 index!984))))

(declare-fun d!89223 () Bool)

(declare-fun lt!291765 () SeekEntryResult!6711)

(assert (=> d!89223 (and (or (is-Undefined!6711 lt!291765) (not (is-Found!6711 lt!291765)) (and (bvsge (index!29134 lt!291765) #b00000000000000000000000000000000) (bvslt (index!29134 lt!291765) (size!18628 a!2986)))) (or (is-Undefined!6711 lt!291765) (is-Found!6711 lt!291765) (not (is-MissingVacant!6711 lt!291765)) (not (= (index!29136 lt!291765) vacantSpotIndex!68)) (and (bvsge (index!29136 lt!291765) #b00000000000000000000000000000000) (bvslt (index!29136 lt!291765) (size!18628 a!2986)))) (or (is-Undefined!6711 lt!291765) (ite (is-Found!6711 lt!291765) (= (select (arr!18264 a!2986) (index!29134 lt!291765)) (select (arr!18264 a!2986) j!136)) (and (is-MissingVacant!6711 lt!291765) (= (index!29136 lt!291765) vacantSpotIndex!68) (= (select (arr!18264 a!2986) (index!29136 lt!291765)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89223 (= lt!291765 e!360990)))

(declare-fun c!71898 () Bool)

(assert (=> d!89223 (= c!71898 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89223 (= lt!291764 (select (arr!18264 a!2986) index!984))))

(assert (=> d!89223 (validMask!0 mask!3053)))

(assert (=> d!89223 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18264 a!2986) j!136) a!2986 mask!3053) lt!291765)))

(declare-fun b!631395 () Bool)

(assert (=> b!631395 (= e!360990 e!360989)))

(declare-fun c!71899 () Bool)

(assert (=> b!631395 (= c!71899 (= lt!291764 (select (arr!18264 a!2986) j!136)))))

(assert (= (and d!89223 c!71898) b!631398))

(assert (= (and d!89223 (not c!71898)) b!631395))

(assert (= (and b!631395 c!71899) b!631400))

(assert (= (and b!631395 (not c!71899)) b!631399))

(assert (= (and b!631399 c!71900) b!631397))

(assert (= (and b!631399 (not c!71900)) b!631396))

(assert (=> b!631396 m!606139))

(assert (=> b!631396 m!606139))

(assert (=> b!631396 m!606145))

(declare-fun m!606363 () Bool)

(assert (=> b!631396 m!606363))

(declare-fun m!606365 () Bool)

(assert (=> d!89223 m!606365))

(declare-fun m!606367 () Bool)

(assert (=> d!89223 m!606367))

(assert (=> d!89223 m!606157))

(assert (=> d!89223 m!606129))

(assert (=> b!631135 d!89223))

(declare-fun b!631423 () Bool)

(declare-fun e!361009 () Bool)

(declare-fun call!33332 () Bool)

(assert (=> b!631423 (= e!361009 call!33332)))

(declare-fun bm!33329 () Bool)

(declare-fun c!71906 () Bool)

(assert (=> bm!33329 (= call!33332 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71906 (Cons!12354 (select (arr!18264 a!2986) #b00000000000000000000000000000000) Nil!12355) Nil!12355)))))

(declare-fun b!631424 () Bool)

(declare-fun e!361010 () Bool)

(declare-fun e!361012 () Bool)

(assert (=> b!631424 (= e!361010 e!361012)))

(declare-fun res!408346 () Bool)

(assert (=> b!631424 (=> (not res!408346) (not e!361012))))

(declare-fun e!361011 () Bool)

(assert (=> b!631424 (= res!408346 (not e!361011))))

(declare-fun res!408345 () Bool)

(assert (=> b!631424 (=> (not res!408345) (not e!361011))))

(assert (=> b!631424 (= res!408345 (validKeyInArray!0 (select (arr!18264 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!631426 () Bool)

(assert (=> b!631426 (= e!361012 e!361009)))

(assert (=> b!631426 (= c!71906 (validKeyInArray!0 (select (arr!18264 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!631427 () Bool)

(assert (=> b!631427 (= e!361009 call!33332)))

(declare-fun b!631425 () Bool)

(declare-fun contains!3094 (List!12358 (_ BitVec 64)) Bool)

(assert (=> b!631425 (= e!361011 (contains!3094 Nil!12355 (select (arr!18264 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89229 () Bool)

(declare-fun res!408347 () Bool)

(assert (=> d!89229 (=> res!408347 e!361010)))

(assert (=> d!89229 (= res!408347 (bvsge #b00000000000000000000000000000000 (size!18628 a!2986)))))

(assert (=> d!89229 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12355) e!361010)))

(assert (= (and d!89229 (not res!408347)) b!631424))

(assert (= (and b!631424 res!408345) b!631425))

(assert (= (and b!631424 res!408346) b!631426))

(assert (= (and b!631426 c!71906) b!631423))

(assert (= (and b!631426 (not c!71906)) b!631427))

(assert (= (or b!631423 b!631427) bm!33329))

(declare-fun m!606379 () Bool)

(assert (=> bm!33329 m!606379))

(declare-fun m!606381 () Bool)

(assert (=> bm!33329 m!606381))

(assert (=> b!631424 m!606379))

(assert (=> b!631424 m!606379))

(declare-fun m!606383 () Bool)

(assert (=> b!631424 m!606383))

(assert (=> b!631426 m!606379))

(assert (=> b!631426 m!606379))

(assert (=> b!631426 m!606383))

(assert (=> b!631425 m!606379))

(assert (=> b!631425 m!606379))

(declare-fun m!606385 () Bool)

(assert (=> b!631425 m!606385))

(assert (=> b!631140 d!89229))

(declare-fun d!89237 () Bool)

(declare-fun res!408362 () Bool)

(declare-fun e!361033 () Bool)

(assert (=> d!89237 (=> res!408362 e!361033)))

(assert (=> d!89237 (= res!408362 (bvsge #b00000000000000000000000000000000 (size!18628 a!2986)))))

(assert (=> d!89237 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!361033)))

(declare-fun b!631451 () Bool)

(declare-fun e!361032 () Bool)

(declare-fun call!33338 () Bool)

(assert (=> b!631451 (= e!361032 call!33338)))

(declare-fun b!631452 () Bool)

(declare-fun e!361031 () Bool)

(assert (=> b!631452 (= e!361031 call!33338)))

(declare-fun b!631453 () Bool)

(assert (=> b!631453 (= e!361031 e!361032)))

(declare-fun lt!291783 () (_ BitVec 64))

(assert (=> b!631453 (= lt!291783 (select (arr!18264 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!291782 () Unit!21202)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38067 (_ BitVec 64) (_ BitVec 32)) Unit!21202)

(assert (=> b!631453 (= lt!291782 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!291783 #b00000000000000000000000000000000))))

(assert (=> b!631453 (arrayContainsKey!0 a!2986 lt!291783 #b00000000000000000000000000000000)))

(declare-fun lt!291781 () Unit!21202)

(assert (=> b!631453 (= lt!291781 lt!291782)))

(declare-fun res!408361 () Bool)

(assert (=> b!631453 (= res!408361 (= (seekEntryOrOpen!0 (select (arr!18264 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6711 #b00000000000000000000000000000000)))))

(assert (=> b!631453 (=> (not res!408361) (not e!361032))))

(declare-fun bm!33335 () Bool)

(assert (=> bm!33335 (= call!33338 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!631454 () Bool)

(assert (=> b!631454 (= e!361033 e!361031)))

(declare-fun c!71912 () Bool)

(assert (=> b!631454 (= c!71912 (validKeyInArray!0 (select (arr!18264 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89237 (not res!408362)) b!631454))

(assert (= (and b!631454 c!71912) b!631453))

(assert (= (and b!631454 (not c!71912)) b!631452))

(assert (= (and b!631453 res!408361) b!631451))

(assert (= (or b!631451 b!631452) bm!33335))

(assert (=> b!631453 m!606379))

(declare-fun m!606391 () Bool)

(assert (=> b!631453 m!606391))

(declare-fun m!606393 () Bool)

(assert (=> b!631453 m!606393))

(assert (=> b!631453 m!606379))

(declare-fun m!606395 () Bool)

(assert (=> b!631453 m!606395))

(declare-fun m!606397 () Bool)

(assert (=> bm!33335 m!606397))

(assert (=> b!631454 m!606379))

(assert (=> b!631454 m!606379))

(assert (=> b!631454 m!606383))

(assert (=> b!631141 d!89237))

(declare-fun d!89241 () Bool)

(declare-fun res!408367 () Bool)

(declare-fun e!361038 () Bool)

(assert (=> d!89241 (=> res!408367 e!361038)))

(assert (=> d!89241 (= res!408367 (= (select (arr!18264 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89241 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!361038)))

(declare-fun b!631459 () Bool)

(declare-fun e!361039 () Bool)

(assert (=> b!631459 (= e!361038 e!361039)))

(declare-fun res!408368 () Bool)

(assert (=> b!631459 (=> (not res!408368) (not e!361039))))

(assert (=> b!631459 (= res!408368 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18628 a!2986)))))

(declare-fun b!631460 () Bool)

(assert (=> b!631460 (= e!361039 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89241 (not res!408367)) b!631459))

(assert (= (and b!631459 res!408368) b!631460))

(assert (=> d!89241 m!606379))

(declare-fun m!606399 () Bool)

(assert (=> b!631460 m!606399))

(assert (=> b!631139 d!89241))

(declare-fun e!361042 () SeekEntryResult!6711)

(declare-fun b!631462 () Bool)

(assert (=> b!631462 (= e!361042 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291642 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!291637 lt!291641 mask!3053))))

(declare-fun b!631463 () Bool)

(assert (=> b!631463 (= e!361042 (MissingVacant!6711 vacantSpotIndex!68))))

(declare-fun b!631464 () Bool)

(declare-fun e!361041 () SeekEntryResult!6711)

(assert (=> b!631464 (= e!361041 Undefined!6711)))

(declare-fun b!631465 () Bool)

(declare-fun c!71915 () Bool)

(declare-fun lt!291784 () (_ BitVec 64))

(assert (=> b!631465 (= c!71915 (= lt!291784 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361040 () SeekEntryResult!6711)

(assert (=> b!631465 (= e!361040 e!361042)))

(declare-fun b!631466 () Bool)

(assert (=> b!631466 (= e!361040 (Found!6711 lt!291642))))

(declare-fun d!89243 () Bool)

(declare-fun lt!291785 () SeekEntryResult!6711)

