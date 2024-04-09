; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55130 () Bool)

(assert start!55130)

(declare-fun b!603175 () Bool)

(declare-fun e!345059 () Bool)

(assert (=> b!603175 (= e!345059 true)))

(declare-fun e!345050 () Bool)

(assert (=> b!603175 e!345050))

(declare-fun res!387460 () Bool)

(assert (=> b!603175 (=> (not res!387460) (not e!345050))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37166 0))(
  ( (array!37167 (arr!17836 (Array (_ BitVec 32) (_ BitVec 64))) (size!18200 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37166)

(declare-fun lt!274921 () array!37166)

(declare-fun arrayContainsKey!0 (array!37166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603175 (= res!387460 (arrayContainsKey!0 lt!274921 (select (arr!17836 a!2986) j!136) j!136))))

(declare-fun b!603176 () Bool)

(declare-fun e!345058 () Bool)

(declare-fun e!345057 () Bool)

(assert (=> b!603176 (= e!345058 e!345057)))

(declare-fun res!387473 () Bool)

(assert (=> b!603176 (=> (not res!387473) (not e!345057))))

(assert (=> b!603176 (= res!387473 (arrayContainsKey!0 lt!274921 (select (arr!17836 a!2986) j!136) j!136))))

(declare-fun b!603177 () Bool)

(declare-fun e!345060 () Bool)

(declare-fun e!345051 () Bool)

(assert (=> b!603177 (= e!345060 e!345051)))

(declare-fun res!387455 () Bool)

(assert (=> b!603177 (=> (not res!387455) (not e!345051))))

(declare-datatypes ((SeekEntryResult!6283 0))(
  ( (MissingZero!6283 (index!27394 (_ BitVec 32))) (Found!6283 (index!27395 (_ BitVec 32))) (Intermediate!6283 (undefined!7095 Bool) (index!27396 (_ BitVec 32)) (x!56221 (_ BitVec 32))) (Undefined!6283) (MissingVacant!6283 (index!27397 (_ BitVec 32))) )
))
(declare-fun lt!274919 () SeekEntryResult!6283)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!603177 (= res!387455 (and (= lt!274919 (Found!6283 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17836 a!2986) index!984) (select (arr!17836 a!2986) j!136))) (not (= (select (arr!17836 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37166 (_ BitVec 32)) SeekEntryResult!6283)

(assert (=> b!603177 (= lt!274919 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17836 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!387458 () Bool)

(declare-fun e!345063 () Bool)

(assert (=> start!55130 (=> (not res!387458) (not e!345063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55130 (= res!387458 (validMask!0 mask!3053))))

(assert (=> start!55130 e!345063))

(assert (=> start!55130 true))

(declare-fun array_inv!13610 (array!37166) Bool)

(assert (=> start!55130 (array_inv!13610 a!2986)))

(declare-fun b!603178 () Bool)

(declare-datatypes ((Unit!19126 0))(
  ( (Unit!19127) )
))
(declare-fun e!345056 () Unit!19126)

(declare-fun Unit!19128 () Unit!19126)

(assert (=> b!603178 (= e!345056 Unit!19128)))

(declare-fun b!603179 () Bool)

(declare-fun e!345064 () Bool)

(declare-fun e!345055 () Bool)

(assert (=> b!603179 (= e!345064 e!345055)))

(declare-fun res!387468 () Bool)

(assert (=> b!603179 (=> res!387468 e!345055)))

(declare-fun lt!274924 () (_ BitVec 64))

(declare-fun lt!274920 () (_ BitVec 64))

(assert (=> b!603179 (= res!387468 (or (not (= (select (arr!17836 a!2986) j!136) lt!274920)) (not (= (select (arr!17836 a!2986) j!136) lt!274924))))))

(declare-fun e!345062 () Bool)

(assert (=> b!603179 e!345062))

(declare-fun res!387461 () Bool)

(assert (=> b!603179 (=> (not res!387461) (not e!345062))))

(assert (=> b!603179 (= res!387461 (= lt!274924 (select (arr!17836 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!603179 (= lt!274924 (select (store (arr!17836 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!603180 () Bool)

(assert (=> b!603180 (= e!345062 e!345058)))

(declare-fun res!387467 () Bool)

(assert (=> b!603180 (=> res!387467 e!345058)))

(assert (=> b!603180 (= res!387467 (or (not (= (select (arr!17836 a!2986) j!136) lt!274920)) (not (= (select (arr!17836 a!2986) j!136) lt!274924)) (bvsge j!136 index!984)))))

(declare-fun b!603181 () Bool)

(assert (=> b!603181 (= e!345055 e!345059)))

(declare-fun res!387466 () Bool)

(assert (=> b!603181 (=> res!387466 e!345059)))

(assert (=> b!603181 (= res!387466 (bvsge index!984 j!136))))

(declare-fun lt!274922 () Unit!19126)

(assert (=> b!603181 (= lt!274922 e!345056)))

(declare-fun c!68228 () Bool)

(assert (=> b!603181 (= c!68228 (bvslt j!136 index!984))))

(declare-fun b!603182 () Bool)

(declare-fun res!387456 () Bool)

(declare-fun e!345054 () Bool)

(assert (=> b!603182 (=> (not res!387456) (not e!345054))))

(declare-datatypes ((List!11930 0))(
  ( (Nil!11927) (Cons!11926 (h!12971 (_ BitVec 64)) (t!18166 List!11930)) )
))
(declare-fun arrayNoDuplicates!0 (array!37166 (_ BitVec 32) List!11930) Bool)

(assert (=> b!603182 (= res!387456 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11927))))

(declare-fun b!603183 () Bool)

(assert (=> b!603183 (= e!345057 (arrayContainsKey!0 lt!274921 (select (arr!17836 a!2986) j!136) index!984))))

(declare-fun b!603184 () Bool)

(declare-fun res!387470 () Bool)

(assert (=> b!603184 (=> (not res!387470) (not e!345054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37166 (_ BitVec 32)) Bool)

(assert (=> b!603184 (= res!387470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603185 () Bool)

(assert (=> b!603185 (= e!345051 (not e!345064))))

(declare-fun res!387457 () Bool)

(assert (=> b!603185 (=> res!387457 e!345064)))

(declare-fun lt!274914 () SeekEntryResult!6283)

(assert (=> b!603185 (= res!387457 (not (= lt!274914 (Found!6283 index!984))))))

(declare-fun lt!274913 () Unit!19126)

(declare-fun e!345061 () Unit!19126)

(assert (=> b!603185 (= lt!274913 e!345061)))

(declare-fun c!68227 () Bool)

(assert (=> b!603185 (= c!68227 (= lt!274914 Undefined!6283))))

(assert (=> b!603185 (= lt!274914 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274920 lt!274921 mask!3053))))

(declare-fun e!345052 () Bool)

(assert (=> b!603185 e!345052))

(declare-fun res!387464 () Bool)

(assert (=> b!603185 (=> (not res!387464) (not e!345052))))

(declare-fun lt!274918 () (_ BitVec 32))

(declare-fun lt!274917 () SeekEntryResult!6283)

(assert (=> b!603185 (= res!387464 (= lt!274917 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274918 vacantSpotIndex!68 lt!274920 lt!274921 mask!3053)))))

(assert (=> b!603185 (= lt!274917 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274918 vacantSpotIndex!68 (select (arr!17836 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603185 (= lt!274920 (select (store (arr!17836 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!274912 () Unit!19126)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37166 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19126)

(assert (=> b!603185 (= lt!274912 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274918 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603185 (= lt!274918 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603186 () Bool)

(declare-fun Unit!19129 () Unit!19126)

(assert (=> b!603186 (= e!345061 Unit!19129)))

(assert (=> b!603186 false))

(declare-fun b!603187 () Bool)

(assert (=> b!603187 (= e!345050 (arrayContainsKey!0 lt!274921 (select (arr!17836 a!2986) j!136) index!984))))

(declare-fun b!603188 () Bool)

(declare-fun res!387462 () Bool)

(assert (=> b!603188 (=> (not res!387462) (not e!345063))))

(assert (=> b!603188 (= res!387462 (and (= (size!18200 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18200 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18200 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603189 () Bool)

(assert (=> b!603189 (= e!345054 e!345060)))

(declare-fun res!387459 () Bool)

(assert (=> b!603189 (=> (not res!387459) (not e!345060))))

(assert (=> b!603189 (= res!387459 (= (select (store (arr!17836 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603189 (= lt!274921 (array!37167 (store (arr!17836 a!2986) i!1108 k0!1786) (size!18200 a!2986)))))

(declare-fun b!603190 () Bool)

(assert (=> b!603190 (= e!345063 e!345054)))

(declare-fun res!387463 () Bool)

(assert (=> b!603190 (=> (not res!387463) (not e!345054))))

(declare-fun lt!274915 () SeekEntryResult!6283)

(assert (=> b!603190 (= res!387463 (or (= lt!274915 (MissingZero!6283 i!1108)) (= lt!274915 (MissingVacant!6283 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37166 (_ BitVec 32)) SeekEntryResult!6283)

(assert (=> b!603190 (= lt!274915 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!603191 () Bool)

(declare-fun res!387471 () Bool)

(assert (=> b!603191 (=> (not res!387471) (not e!345054))))

(assert (=> b!603191 (= res!387471 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17836 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603192 () Bool)

(declare-fun res!387465 () Bool)

(assert (=> b!603192 (=> (not res!387465) (not e!345063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603192 (= res!387465 (validKeyInArray!0 (select (arr!17836 a!2986) j!136)))))

(declare-fun b!603193 () Bool)

(declare-fun res!387472 () Bool)

(assert (=> b!603193 (=> (not res!387472) (not e!345063))))

(assert (=> b!603193 (= res!387472 (validKeyInArray!0 k0!1786))))

(declare-fun b!603194 () Bool)

(declare-fun Unit!19130 () Unit!19126)

(assert (=> b!603194 (= e!345061 Unit!19130)))

(declare-fun b!603195 () Bool)

(declare-fun res!387469 () Bool)

(assert (=> b!603195 (=> (not res!387469) (not e!345063))))

(assert (=> b!603195 (= res!387469 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603196 () Bool)

(declare-fun Unit!19131 () Unit!19126)

(assert (=> b!603196 (= e!345056 Unit!19131)))

(declare-fun lt!274923 () Unit!19126)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37166 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19126)

(assert (=> b!603196 (= lt!274923 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274921 (select (arr!17836 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603196 (arrayContainsKey!0 lt!274921 (select (arr!17836 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274926 () Unit!19126)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37166 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11930) Unit!19126)

(assert (=> b!603196 (= lt!274926 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11927))))

(assert (=> b!603196 (arrayNoDuplicates!0 lt!274921 #b00000000000000000000000000000000 Nil!11927)))

(declare-fun lt!274925 () Unit!19126)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37166 (_ BitVec 32) (_ BitVec 32)) Unit!19126)

(assert (=> b!603196 (= lt!274925 (lemmaNoDuplicateFromThenFromBigger!0 lt!274921 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603196 (arrayNoDuplicates!0 lt!274921 j!136 Nil!11927)))

(declare-fun lt!274916 () Unit!19126)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37166 (_ BitVec 64) (_ BitVec 32) List!11930) Unit!19126)

(assert (=> b!603196 (= lt!274916 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274921 (select (arr!17836 a!2986) j!136) j!136 Nil!11927))))

(assert (=> b!603196 false))

(declare-fun b!603197 () Bool)

(assert (=> b!603197 (= e!345052 (= lt!274919 lt!274917))))

(assert (= (and start!55130 res!387458) b!603188))

(assert (= (and b!603188 res!387462) b!603192))

(assert (= (and b!603192 res!387465) b!603193))

(assert (= (and b!603193 res!387472) b!603195))

(assert (= (and b!603195 res!387469) b!603190))

(assert (= (and b!603190 res!387463) b!603184))

(assert (= (and b!603184 res!387470) b!603182))

(assert (= (and b!603182 res!387456) b!603191))

(assert (= (and b!603191 res!387471) b!603189))

(assert (= (and b!603189 res!387459) b!603177))

(assert (= (and b!603177 res!387455) b!603185))

(assert (= (and b!603185 res!387464) b!603197))

(assert (= (and b!603185 c!68227) b!603186))

(assert (= (and b!603185 (not c!68227)) b!603194))

(assert (= (and b!603185 (not res!387457)) b!603179))

(assert (= (and b!603179 res!387461) b!603180))

(assert (= (and b!603180 (not res!387467)) b!603176))

(assert (= (and b!603176 res!387473) b!603183))

(assert (= (and b!603179 (not res!387468)) b!603181))

(assert (= (and b!603181 c!68228) b!603196))

(assert (= (and b!603181 (not c!68228)) b!603178))

(assert (= (and b!603181 (not res!387466)) b!603175))

(assert (= (and b!603175 res!387460) b!603187))

(declare-fun m!580251 () Bool)

(assert (=> b!603184 m!580251))

(declare-fun m!580253 () Bool)

(assert (=> b!603189 m!580253))

(declare-fun m!580255 () Bool)

(assert (=> b!603189 m!580255))

(declare-fun m!580257 () Bool)

(assert (=> b!603195 m!580257))

(declare-fun m!580259 () Bool)

(assert (=> b!603193 m!580259))

(declare-fun m!580261 () Bool)

(assert (=> b!603179 m!580261))

(assert (=> b!603179 m!580253))

(declare-fun m!580263 () Bool)

(assert (=> b!603179 m!580263))

(declare-fun m!580265 () Bool)

(assert (=> b!603196 m!580265))

(assert (=> b!603196 m!580261))

(declare-fun m!580267 () Bool)

(assert (=> b!603196 m!580267))

(assert (=> b!603196 m!580261))

(assert (=> b!603196 m!580261))

(declare-fun m!580269 () Bool)

(assert (=> b!603196 m!580269))

(assert (=> b!603196 m!580261))

(declare-fun m!580271 () Bool)

(assert (=> b!603196 m!580271))

(declare-fun m!580273 () Bool)

(assert (=> b!603196 m!580273))

(declare-fun m!580275 () Bool)

(assert (=> b!603196 m!580275))

(declare-fun m!580277 () Bool)

(assert (=> b!603196 m!580277))

(declare-fun m!580279 () Bool)

(assert (=> b!603191 m!580279))

(declare-fun m!580281 () Bool)

(assert (=> b!603177 m!580281))

(assert (=> b!603177 m!580261))

(assert (=> b!603177 m!580261))

(declare-fun m!580283 () Bool)

(assert (=> b!603177 m!580283))

(assert (=> b!603175 m!580261))

(assert (=> b!603175 m!580261))

(declare-fun m!580285 () Bool)

(assert (=> b!603175 m!580285))

(assert (=> b!603187 m!580261))

(assert (=> b!603187 m!580261))

(declare-fun m!580287 () Bool)

(assert (=> b!603187 m!580287))

(declare-fun m!580289 () Bool)

(assert (=> b!603185 m!580289))

(declare-fun m!580291 () Bool)

(assert (=> b!603185 m!580291))

(assert (=> b!603185 m!580261))

(declare-fun m!580293 () Bool)

(assert (=> b!603185 m!580293))

(assert (=> b!603185 m!580261))

(assert (=> b!603185 m!580253))

(declare-fun m!580295 () Bool)

(assert (=> b!603185 m!580295))

(declare-fun m!580297 () Bool)

(assert (=> b!603185 m!580297))

(declare-fun m!580299 () Bool)

(assert (=> b!603185 m!580299))

(declare-fun m!580301 () Bool)

(assert (=> b!603190 m!580301))

(assert (=> b!603183 m!580261))

(assert (=> b!603183 m!580261))

(assert (=> b!603183 m!580287))

(assert (=> b!603192 m!580261))

(assert (=> b!603192 m!580261))

(declare-fun m!580303 () Bool)

(assert (=> b!603192 m!580303))

(assert (=> b!603180 m!580261))

(declare-fun m!580305 () Bool)

(assert (=> start!55130 m!580305))

(declare-fun m!580307 () Bool)

(assert (=> start!55130 m!580307))

(assert (=> b!603176 m!580261))

(assert (=> b!603176 m!580261))

(assert (=> b!603176 m!580285))

(declare-fun m!580309 () Bool)

(assert (=> b!603182 m!580309))

(check-sat (not b!603185) (not b!603187) (not start!55130) (not b!603182) (not b!603184) (not b!603176) (not b!603175) (not b!603190) (not b!603183) (not b!603192) (not b!603193) (not b!603177) (not b!603195) (not b!603196))
(check-sat)
