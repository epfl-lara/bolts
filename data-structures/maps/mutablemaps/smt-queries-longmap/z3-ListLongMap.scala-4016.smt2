; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54578 () Bool)

(assert start!54578)

(declare-fun b!596744 () Bool)

(declare-datatypes ((Unit!18776 0))(
  ( (Unit!18777) )
))
(declare-fun e!340958 () Unit!18776)

(declare-fun Unit!18778 () Unit!18776)

(assert (=> b!596744 (= e!340958 Unit!18778)))

(assert (=> b!596744 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!596745 () Bool)

(declare-datatypes ((array!37001 0))(
  ( (array!37002 (arr!17761 (Array (_ BitVec 32) (_ BitVec 64))) (size!18125 (_ BitVec 32))) )
))
(declare-fun lt!271146 () array!37001)

(declare-fun e!340968 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37001)

(declare-fun arrayContainsKey!0 (array!37001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596745 (= e!340968 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) index!984))))

(declare-fun b!596746 () Bool)

(declare-fun e!340963 () Bool)

(assert (=> b!596746 (= e!340963 e!340968)))

(declare-fun res!382663 () Bool)

(assert (=> b!596746 (=> (not res!382663) (not e!340968))))

(assert (=> b!596746 (= res!382663 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) j!136))))

(declare-fun b!596747 () Bool)

(declare-fun e!340967 () Bool)

(declare-fun e!340959 () Bool)

(assert (=> b!596747 (= e!340967 e!340959)))

(declare-fun res!382672 () Bool)

(assert (=> b!596747 (=> (not res!382672) (not e!340959))))

(declare-datatypes ((SeekEntryResult!6208 0))(
  ( (MissingZero!6208 (index!27079 (_ BitVec 32))) (Found!6208 (index!27080 (_ BitVec 32))) (Intermediate!6208 (undefined!7020 Bool) (index!27081 (_ BitVec 32)) (x!55901 (_ BitVec 32))) (Undefined!6208) (MissingVacant!6208 (index!27082 (_ BitVec 32))) )
))
(declare-fun lt!271151 () SeekEntryResult!6208)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596747 (= res!382672 (or (= lt!271151 (MissingZero!6208 i!1108)) (= lt!271151 (MissingVacant!6208 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37001 (_ BitVec 32)) SeekEntryResult!6208)

(assert (=> b!596747 (= lt!271151 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!596748 () Bool)

(declare-fun e!340969 () Bool)

(assert (=> b!596748 (= e!340969 e!340963)))

(declare-fun res!382665 () Bool)

(assert (=> b!596748 (=> res!382665 e!340963)))

(declare-fun lt!271147 () (_ BitVec 64))

(declare-fun lt!271152 () (_ BitVec 64))

(assert (=> b!596748 (= res!382665 (or (not (= (select (arr!17761 a!2986) j!136) lt!271147)) (not (= (select (arr!17761 a!2986) j!136) lt!271152)) (bvsge j!136 index!984)))))

(declare-fun b!596749 () Bool)

(declare-fun e!340964 () Bool)

(assert (=> b!596749 (= e!340964 (or (bvsgt #b00000000000000000000000000000000 (size!18125 a!2986)) (bvslt (size!18125 a!2986) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!11855 0))(
  ( (Nil!11852) (Cons!11851 (h!12896 (_ BitVec 64)) (t!18091 List!11855)) )
))
(declare-fun arrayNoDuplicates!0 (array!37001 (_ BitVec 32) List!11855) Bool)

(assert (=> b!596749 (arrayNoDuplicates!0 lt!271146 #b00000000000000000000000000000000 Nil!11852)))

(declare-fun lt!271142 () Unit!18776)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37001 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11855) Unit!18776)

(assert (=> b!596749 (= lt!271142 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11852))))

(assert (=> b!596749 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271145 () Unit!18776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37001 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18776)

(assert (=> b!596749 (= lt!271145 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271146 (select (arr!17761 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596750 () Bool)

(declare-fun e!340965 () Bool)

(assert (=> b!596750 (= e!340965 e!340964)))

(declare-fun res!382666 () Bool)

(assert (=> b!596750 (=> res!382666 e!340964)))

(assert (=> b!596750 (= res!382666 (or (not (= (select (arr!17761 a!2986) j!136) lt!271147)) (not (= (select (arr!17761 a!2986) j!136) lt!271152)) (bvsge j!136 index!984)))))

(assert (=> b!596750 e!340969))

(declare-fun res!382669 () Bool)

(assert (=> b!596750 (=> (not res!382669) (not e!340969))))

(assert (=> b!596750 (= res!382669 (= lt!271152 (select (arr!17761 a!2986) j!136)))))

(assert (=> b!596750 (= lt!271152 (select (store (arr!17761 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!596751 () Bool)

(declare-fun e!340961 () Bool)

(declare-fun e!340960 () Bool)

(assert (=> b!596751 (= e!340961 e!340960)))

(declare-fun res!382662 () Bool)

(assert (=> b!596751 (=> (not res!382662) (not e!340960))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!271141 () SeekEntryResult!6208)

(assert (=> b!596751 (= res!382662 (and (= lt!271141 (Found!6208 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17761 a!2986) index!984) (select (arr!17761 a!2986) j!136))) (not (= (select (arr!17761 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37001 (_ BitVec 32)) SeekEntryResult!6208)

(assert (=> b!596751 (= lt!271141 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596752 () Bool)

(declare-fun res!382674 () Bool)

(assert (=> b!596752 (=> (not res!382674) (not e!340959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37001 (_ BitVec 32)) Bool)

(assert (=> b!596752 (= res!382674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596753 () Bool)

(declare-fun res!382670 () Bool)

(assert (=> b!596753 (=> (not res!382670) (not e!340967))))

(assert (=> b!596753 (= res!382670 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596754 () Bool)

(declare-fun res!382675 () Bool)

(assert (=> b!596754 (=> (not res!382675) (not e!340967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596754 (= res!382675 (validKeyInArray!0 (select (arr!17761 a!2986) j!136)))))

(declare-fun b!596756 () Bool)

(declare-fun res!382661 () Bool)

(assert (=> b!596756 (=> (not res!382661) (not e!340967))))

(assert (=> b!596756 (= res!382661 (and (= (size!18125 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18125 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18125 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596755 () Bool)

(assert (=> b!596755 (= e!340960 (not e!340965))))

(declare-fun res!382660 () Bool)

(assert (=> b!596755 (=> res!382660 e!340965)))

(declare-fun lt!271149 () SeekEntryResult!6208)

(assert (=> b!596755 (= res!382660 (not (= lt!271149 (Found!6208 index!984))))))

(declare-fun lt!271148 () Unit!18776)

(assert (=> b!596755 (= lt!271148 e!340958)))

(declare-fun c!67409 () Bool)

(assert (=> b!596755 (= c!67409 (= lt!271149 Undefined!6208))))

(assert (=> b!596755 (= lt!271149 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271147 lt!271146 mask!3053))))

(declare-fun e!340962 () Bool)

(assert (=> b!596755 e!340962))

(declare-fun res!382676 () Bool)

(assert (=> b!596755 (=> (not res!382676) (not e!340962))))

(declare-fun lt!271143 () SeekEntryResult!6208)

(declare-fun lt!271144 () (_ BitVec 32))

(assert (=> b!596755 (= res!382676 (= lt!271143 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 lt!271147 lt!271146 mask!3053)))))

(assert (=> b!596755 (= lt!271143 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596755 (= lt!271147 (select (store (arr!17761 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!271150 () Unit!18776)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37001 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18776)

(assert (=> b!596755 (= lt!271150 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596755 (= lt!271144 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!382673 () Bool)

(assert (=> start!54578 (=> (not res!382673) (not e!340967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54578 (= res!382673 (validMask!0 mask!3053))))

(assert (=> start!54578 e!340967))

(assert (=> start!54578 true))

(declare-fun array_inv!13535 (array!37001) Bool)

(assert (=> start!54578 (array_inv!13535 a!2986)))

(declare-fun b!596757 () Bool)

(declare-fun res!382667 () Bool)

(assert (=> b!596757 (=> (not res!382667) (not e!340959))))

(assert (=> b!596757 (= res!382667 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17761 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596758 () Bool)

(declare-fun res!382664 () Bool)

(assert (=> b!596758 (=> (not res!382664) (not e!340967))))

(assert (=> b!596758 (= res!382664 (validKeyInArray!0 k0!1786))))

(declare-fun b!596759 () Bool)

(assert (=> b!596759 (= e!340962 (= lt!271141 lt!271143))))

(declare-fun b!596760 () Bool)

(declare-fun Unit!18779 () Unit!18776)

(assert (=> b!596760 (= e!340958 Unit!18779)))

(declare-fun b!596761 () Bool)

(declare-fun res!382668 () Bool)

(assert (=> b!596761 (=> (not res!382668) (not e!340959))))

(assert (=> b!596761 (= res!382668 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11852))))

(declare-fun b!596762 () Bool)

(assert (=> b!596762 (= e!340959 e!340961)))

(declare-fun res!382671 () Bool)

(assert (=> b!596762 (=> (not res!382671) (not e!340961))))

(assert (=> b!596762 (= res!382671 (= (select (store (arr!17761 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596762 (= lt!271146 (array!37002 (store (arr!17761 a!2986) i!1108 k0!1786) (size!18125 a!2986)))))

(assert (= (and start!54578 res!382673) b!596756))

(assert (= (and b!596756 res!382661) b!596754))

(assert (= (and b!596754 res!382675) b!596758))

(assert (= (and b!596758 res!382664) b!596753))

(assert (= (and b!596753 res!382670) b!596747))

(assert (= (and b!596747 res!382672) b!596752))

(assert (= (and b!596752 res!382674) b!596761))

(assert (= (and b!596761 res!382668) b!596757))

(assert (= (and b!596757 res!382667) b!596762))

(assert (= (and b!596762 res!382671) b!596751))

(assert (= (and b!596751 res!382662) b!596755))

(assert (= (and b!596755 res!382676) b!596759))

(assert (= (and b!596755 c!67409) b!596744))

(assert (= (and b!596755 (not c!67409)) b!596760))

(assert (= (and b!596755 (not res!382660)) b!596750))

(assert (= (and b!596750 res!382669) b!596748))

(assert (= (and b!596748 (not res!382665)) b!596746))

(assert (= (and b!596746 res!382663) b!596745))

(assert (= (and b!596750 (not res!382666)) b!596749))

(declare-fun m!574233 () Bool)

(assert (=> b!596746 m!574233))

(assert (=> b!596746 m!574233))

(declare-fun m!574235 () Bool)

(assert (=> b!596746 m!574235))

(assert (=> b!596754 m!574233))

(assert (=> b!596754 m!574233))

(declare-fun m!574237 () Bool)

(assert (=> b!596754 m!574237))

(declare-fun m!574239 () Bool)

(assert (=> b!596762 m!574239))

(declare-fun m!574241 () Bool)

(assert (=> b!596762 m!574241))

(assert (=> b!596750 m!574233))

(assert (=> b!596750 m!574239))

(declare-fun m!574243 () Bool)

(assert (=> b!596750 m!574243))

(declare-fun m!574245 () Bool)

(assert (=> b!596755 m!574245))

(declare-fun m!574247 () Bool)

(assert (=> b!596755 m!574247))

(assert (=> b!596755 m!574233))

(assert (=> b!596755 m!574239))

(assert (=> b!596755 m!574233))

(declare-fun m!574249 () Bool)

(assert (=> b!596755 m!574249))

(declare-fun m!574251 () Bool)

(assert (=> b!596755 m!574251))

(declare-fun m!574253 () Bool)

(assert (=> b!596755 m!574253))

(declare-fun m!574255 () Bool)

(assert (=> b!596755 m!574255))

(assert (=> b!596748 m!574233))

(assert (=> b!596745 m!574233))

(assert (=> b!596745 m!574233))

(declare-fun m!574257 () Bool)

(assert (=> b!596745 m!574257))

(assert (=> b!596749 m!574233))

(declare-fun m!574259 () Bool)

(assert (=> b!596749 m!574259))

(declare-fun m!574261 () Bool)

(assert (=> b!596749 m!574261))

(declare-fun m!574263 () Bool)

(assert (=> b!596749 m!574263))

(assert (=> b!596749 m!574233))

(assert (=> b!596749 m!574233))

(declare-fun m!574265 () Bool)

(assert (=> b!596749 m!574265))

(declare-fun m!574267 () Bool)

(assert (=> b!596753 m!574267))

(declare-fun m!574269 () Bool)

(assert (=> b!596747 m!574269))

(declare-fun m!574271 () Bool)

(assert (=> b!596757 m!574271))

(declare-fun m!574273 () Bool)

(assert (=> b!596761 m!574273))

(declare-fun m!574275 () Bool)

(assert (=> b!596758 m!574275))

(declare-fun m!574277 () Bool)

(assert (=> start!54578 m!574277))

(declare-fun m!574279 () Bool)

(assert (=> start!54578 m!574279))

(declare-fun m!574281 () Bool)

(assert (=> b!596752 m!574281))

(declare-fun m!574283 () Bool)

(assert (=> b!596751 m!574283))

(assert (=> b!596751 m!574233))

(assert (=> b!596751 m!574233))

(declare-fun m!574285 () Bool)

(assert (=> b!596751 m!574285))

(check-sat (not b!596753) (not b!596749) (not b!596751) (not b!596752) (not b!596746) (not b!596754) (not b!596747) (not b!596755) (not b!596745) (not b!596761) (not start!54578) (not b!596758))
(check-sat)
(get-model)

(declare-fun b!596832 () Bool)

(declare-fun c!67420 () Bool)

(declare-fun lt!271194 () (_ BitVec 64))

(assert (=> b!596832 (= c!67420 (= lt!271194 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341013 () SeekEntryResult!6208)

(declare-fun e!341014 () SeekEntryResult!6208)

(assert (=> b!596832 (= e!341013 e!341014)))

(declare-fun b!596833 () Bool)

(assert (=> b!596833 (= e!341014 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271144 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596834 () Bool)

(assert (=> b!596834 (= e!341013 (Found!6208 lt!271144))))

(declare-fun b!596835 () Bool)

(declare-fun e!341012 () SeekEntryResult!6208)

(assert (=> b!596835 (= e!341012 e!341013)))

(declare-fun c!67421 () Bool)

(assert (=> b!596835 (= c!67421 (= lt!271194 (select (arr!17761 a!2986) j!136)))))

(declare-fun d!86581 () Bool)

(declare-fun lt!271193 () SeekEntryResult!6208)

(get-info :version)

(assert (=> d!86581 (and (or ((_ is Undefined!6208) lt!271193) (not ((_ is Found!6208) lt!271193)) (and (bvsge (index!27080 lt!271193) #b00000000000000000000000000000000) (bvslt (index!27080 lt!271193) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271193) ((_ is Found!6208) lt!271193) (not ((_ is MissingVacant!6208) lt!271193)) (not (= (index!27082 lt!271193) vacantSpotIndex!68)) (and (bvsge (index!27082 lt!271193) #b00000000000000000000000000000000) (bvslt (index!27082 lt!271193) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271193) (ite ((_ is Found!6208) lt!271193) (= (select (arr!17761 a!2986) (index!27080 lt!271193)) (select (arr!17761 a!2986) j!136)) (and ((_ is MissingVacant!6208) lt!271193) (= (index!27082 lt!271193) vacantSpotIndex!68) (= (select (arr!17761 a!2986) (index!27082 lt!271193)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86581 (= lt!271193 e!341012)))

(declare-fun c!67419 () Bool)

(assert (=> d!86581 (= c!67419 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86581 (= lt!271194 (select (arr!17761 a!2986) lt!271144))))

(assert (=> d!86581 (validMask!0 mask!3053)))

(assert (=> d!86581 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053) lt!271193)))

(declare-fun b!596836 () Bool)

(assert (=> b!596836 (= e!341014 (MissingVacant!6208 vacantSpotIndex!68))))

(declare-fun b!596837 () Bool)

(assert (=> b!596837 (= e!341012 Undefined!6208)))

(assert (= (and d!86581 c!67419) b!596837))

(assert (= (and d!86581 (not c!67419)) b!596835))

(assert (= (and b!596835 c!67421) b!596834))

(assert (= (and b!596835 (not c!67421)) b!596832))

(assert (= (and b!596832 c!67420) b!596836))

(assert (= (and b!596832 (not c!67420)) b!596833))

(declare-fun m!574341 () Bool)

(assert (=> b!596833 m!574341))

(assert (=> b!596833 m!574341))

(assert (=> b!596833 m!574233))

(declare-fun m!574343 () Bool)

(assert (=> b!596833 m!574343))

(declare-fun m!574345 () Bool)

(assert (=> d!86581 m!574345))

(declare-fun m!574347 () Bool)

(assert (=> d!86581 m!574347))

(declare-fun m!574349 () Bool)

(assert (=> d!86581 m!574349))

(assert (=> d!86581 m!574277))

(assert (=> b!596755 d!86581))

(declare-fun d!86583 () Bool)

(declare-fun lt!271197 () (_ BitVec 32))

(assert (=> d!86583 (and (bvsge lt!271197 #b00000000000000000000000000000000) (bvslt lt!271197 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86583 (= lt!271197 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86583 (validMask!0 mask!3053)))

(assert (=> d!86583 (= (nextIndex!0 index!984 x!910 mask!3053) lt!271197)))

(declare-fun bs!18359 () Bool)

(assert (= bs!18359 d!86583))

(declare-fun m!574351 () Bool)

(assert (=> bs!18359 m!574351))

(assert (=> bs!18359 m!574277))

(assert (=> b!596755 d!86583))

(declare-fun d!86585 () Bool)

(declare-fun e!341017 () Bool)

(assert (=> d!86585 e!341017))

(declare-fun res!382730 () Bool)

(assert (=> d!86585 (=> (not res!382730) (not e!341017))))

(assert (=> d!86585 (= res!382730 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18125 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18125 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18125 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18125 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18125 a!2986))))))

(declare-fun lt!271200 () Unit!18776)

(declare-fun choose!9 (array!37001 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18776)

(assert (=> d!86585 (= lt!271200 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86585 (validMask!0 mask!3053)))

(assert (=> d!86585 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 mask!3053) lt!271200)))

(declare-fun b!596840 () Bool)

(assert (=> b!596840 (= e!341017 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 (select (store (arr!17761 a!2986) i!1108 k0!1786) j!136) (array!37002 (store (arr!17761 a!2986) i!1108 k0!1786) (size!18125 a!2986)) mask!3053)))))

(assert (= (and d!86585 res!382730) b!596840))

(declare-fun m!574353 () Bool)

(assert (=> d!86585 m!574353))

(assert (=> d!86585 m!574277))

(assert (=> b!596840 m!574233))

(assert (=> b!596840 m!574239))

(assert (=> b!596840 m!574233))

(assert (=> b!596840 m!574249))

(assert (=> b!596840 m!574247))

(assert (=> b!596840 m!574247))

(declare-fun m!574355 () Bool)

(assert (=> b!596840 m!574355))

(assert (=> b!596755 d!86585))

(declare-fun b!596841 () Bool)

(declare-fun c!67423 () Bool)

(declare-fun lt!271202 () (_ BitVec 64))

(assert (=> b!596841 (= c!67423 (= lt!271202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341019 () SeekEntryResult!6208)

(declare-fun e!341020 () SeekEntryResult!6208)

(assert (=> b!596841 (= e!341019 e!341020)))

(declare-fun b!596842 () Bool)

(assert (=> b!596842 (= e!341020 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271144 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!271147 lt!271146 mask!3053))))

(declare-fun b!596843 () Bool)

(assert (=> b!596843 (= e!341019 (Found!6208 lt!271144))))

(declare-fun b!596844 () Bool)

(declare-fun e!341018 () SeekEntryResult!6208)

(assert (=> b!596844 (= e!341018 e!341019)))

(declare-fun c!67424 () Bool)

(assert (=> b!596844 (= c!67424 (= lt!271202 lt!271147))))

(declare-fun lt!271201 () SeekEntryResult!6208)

(declare-fun d!86587 () Bool)

(assert (=> d!86587 (and (or ((_ is Undefined!6208) lt!271201) (not ((_ is Found!6208) lt!271201)) (and (bvsge (index!27080 lt!271201) #b00000000000000000000000000000000) (bvslt (index!27080 lt!271201) (size!18125 lt!271146)))) (or ((_ is Undefined!6208) lt!271201) ((_ is Found!6208) lt!271201) (not ((_ is MissingVacant!6208) lt!271201)) (not (= (index!27082 lt!271201) vacantSpotIndex!68)) (and (bvsge (index!27082 lt!271201) #b00000000000000000000000000000000) (bvslt (index!27082 lt!271201) (size!18125 lt!271146)))) (or ((_ is Undefined!6208) lt!271201) (ite ((_ is Found!6208) lt!271201) (= (select (arr!17761 lt!271146) (index!27080 lt!271201)) lt!271147) (and ((_ is MissingVacant!6208) lt!271201) (= (index!27082 lt!271201) vacantSpotIndex!68) (= (select (arr!17761 lt!271146) (index!27082 lt!271201)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86587 (= lt!271201 e!341018)))

(declare-fun c!67422 () Bool)

(assert (=> d!86587 (= c!67422 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86587 (= lt!271202 (select (arr!17761 lt!271146) lt!271144))))

(assert (=> d!86587 (validMask!0 mask!3053)))

(assert (=> d!86587 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271144 vacantSpotIndex!68 lt!271147 lt!271146 mask!3053) lt!271201)))

(declare-fun b!596845 () Bool)

(assert (=> b!596845 (= e!341020 (MissingVacant!6208 vacantSpotIndex!68))))

(declare-fun b!596846 () Bool)

(assert (=> b!596846 (= e!341018 Undefined!6208)))

(assert (= (and d!86587 c!67422) b!596846))

(assert (= (and d!86587 (not c!67422)) b!596844))

(assert (= (and b!596844 c!67424) b!596843))

(assert (= (and b!596844 (not c!67424)) b!596841))

(assert (= (and b!596841 c!67423) b!596845))

(assert (= (and b!596841 (not c!67423)) b!596842))

(assert (=> b!596842 m!574341))

(assert (=> b!596842 m!574341))

(declare-fun m!574357 () Bool)

(assert (=> b!596842 m!574357))

(declare-fun m!574359 () Bool)

(assert (=> d!86587 m!574359))

(declare-fun m!574361 () Bool)

(assert (=> d!86587 m!574361))

(declare-fun m!574363 () Bool)

(assert (=> d!86587 m!574363))

(assert (=> d!86587 m!574277))

(assert (=> b!596755 d!86587))

(declare-fun b!596847 () Bool)

(declare-fun c!67426 () Bool)

(declare-fun lt!271204 () (_ BitVec 64))

(assert (=> b!596847 (= c!67426 (= lt!271204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341022 () SeekEntryResult!6208)

(declare-fun e!341023 () SeekEntryResult!6208)

(assert (=> b!596847 (= e!341022 e!341023)))

(declare-fun b!596848 () Bool)

(assert (=> b!596848 (= e!341023 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271147 lt!271146 mask!3053))))

(declare-fun b!596849 () Bool)

(assert (=> b!596849 (= e!341022 (Found!6208 index!984))))

(declare-fun b!596850 () Bool)

(declare-fun e!341021 () SeekEntryResult!6208)

(assert (=> b!596850 (= e!341021 e!341022)))

(declare-fun c!67427 () Bool)

(assert (=> b!596850 (= c!67427 (= lt!271204 lt!271147))))

(declare-fun lt!271203 () SeekEntryResult!6208)

(declare-fun d!86589 () Bool)

(assert (=> d!86589 (and (or ((_ is Undefined!6208) lt!271203) (not ((_ is Found!6208) lt!271203)) (and (bvsge (index!27080 lt!271203) #b00000000000000000000000000000000) (bvslt (index!27080 lt!271203) (size!18125 lt!271146)))) (or ((_ is Undefined!6208) lt!271203) ((_ is Found!6208) lt!271203) (not ((_ is MissingVacant!6208) lt!271203)) (not (= (index!27082 lt!271203) vacantSpotIndex!68)) (and (bvsge (index!27082 lt!271203) #b00000000000000000000000000000000) (bvslt (index!27082 lt!271203) (size!18125 lt!271146)))) (or ((_ is Undefined!6208) lt!271203) (ite ((_ is Found!6208) lt!271203) (= (select (arr!17761 lt!271146) (index!27080 lt!271203)) lt!271147) (and ((_ is MissingVacant!6208) lt!271203) (= (index!27082 lt!271203) vacantSpotIndex!68) (= (select (arr!17761 lt!271146) (index!27082 lt!271203)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86589 (= lt!271203 e!341021)))

(declare-fun c!67425 () Bool)

(assert (=> d!86589 (= c!67425 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86589 (= lt!271204 (select (arr!17761 lt!271146) index!984))))

(assert (=> d!86589 (validMask!0 mask!3053)))

(assert (=> d!86589 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271147 lt!271146 mask!3053) lt!271203)))

(declare-fun b!596851 () Bool)

(assert (=> b!596851 (= e!341023 (MissingVacant!6208 vacantSpotIndex!68))))

(declare-fun b!596852 () Bool)

(assert (=> b!596852 (= e!341021 Undefined!6208)))

(assert (= (and d!86589 c!67425) b!596852))

(assert (= (and d!86589 (not c!67425)) b!596850))

(assert (= (and b!596850 c!67427) b!596849))

(assert (= (and b!596850 (not c!67427)) b!596847))

(assert (= (and b!596847 c!67426) b!596851))

(assert (= (and b!596847 (not c!67426)) b!596848))

(assert (=> b!596848 m!574245))

(assert (=> b!596848 m!574245))

(declare-fun m!574365 () Bool)

(assert (=> b!596848 m!574365))

(declare-fun m!574367 () Bool)

(assert (=> d!86589 m!574367))

(declare-fun m!574369 () Bool)

(assert (=> d!86589 m!574369))

(declare-fun m!574371 () Bool)

(assert (=> d!86589 m!574371))

(assert (=> d!86589 m!574277))

(assert (=> b!596755 d!86589))

(declare-fun d!86591 () Bool)

(declare-fun res!382735 () Bool)

(declare-fun e!341028 () Bool)

(assert (=> d!86591 (=> res!382735 e!341028)))

(assert (=> d!86591 (= res!382735 (= (select (arr!17761 lt!271146) index!984) (select (arr!17761 a!2986) j!136)))))

(assert (=> d!86591 (= (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) index!984) e!341028)))

(declare-fun b!596857 () Bool)

(declare-fun e!341029 () Bool)

(assert (=> b!596857 (= e!341028 e!341029)))

(declare-fun res!382736 () Bool)

(assert (=> b!596857 (=> (not res!382736) (not e!341029))))

(assert (=> b!596857 (= res!382736 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18125 lt!271146)))))

(declare-fun b!596858 () Bool)

(assert (=> b!596858 (= e!341029 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86591 (not res!382735)) b!596857))

(assert (= (and b!596857 res!382736) b!596858))

(assert (=> d!86591 m!574371))

(assert (=> b!596858 m!574233))

(declare-fun m!574373 () Bool)

(assert (=> b!596858 m!574373))

(assert (=> b!596745 d!86591))

(declare-fun d!86593 () Bool)

(declare-fun res!382737 () Bool)

(declare-fun e!341030 () Bool)

(assert (=> d!86593 (=> res!382737 e!341030)))

(assert (=> d!86593 (= res!382737 (= (select (arr!17761 lt!271146) j!136) (select (arr!17761 a!2986) j!136)))))

(assert (=> d!86593 (= (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) j!136) e!341030)))

(declare-fun b!596859 () Bool)

(declare-fun e!341031 () Bool)

(assert (=> b!596859 (= e!341030 e!341031)))

(declare-fun res!382738 () Bool)

(assert (=> b!596859 (=> (not res!382738) (not e!341031))))

(assert (=> b!596859 (= res!382738 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18125 lt!271146)))))

(declare-fun b!596860 () Bool)

(assert (=> b!596860 (= e!341031 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86593 (not res!382737)) b!596859))

(assert (= (and b!596859 res!382738) b!596860))

(declare-fun m!574375 () Bool)

(assert (=> d!86593 m!574375))

(assert (=> b!596860 m!574233))

(declare-fun m!574377 () Bool)

(assert (=> b!596860 m!574377))

(assert (=> b!596746 d!86593))

(declare-fun d!86595 () Bool)

(assert (=> d!86595 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!596758 d!86595))

(declare-fun d!86597 () Bool)

(declare-fun lt!271211 () SeekEntryResult!6208)

(assert (=> d!86597 (and (or ((_ is Undefined!6208) lt!271211) (not ((_ is Found!6208) lt!271211)) (and (bvsge (index!27080 lt!271211) #b00000000000000000000000000000000) (bvslt (index!27080 lt!271211) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271211) ((_ is Found!6208) lt!271211) (not ((_ is MissingZero!6208) lt!271211)) (and (bvsge (index!27079 lt!271211) #b00000000000000000000000000000000) (bvslt (index!27079 lt!271211) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271211) ((_ is Found!6208) lt!271211) ((_ is MissingZero!6208) lt!271211) (not ((_ is MissingVacant!6208) lt!271211)) (and (bvsge (index!27082 lt!271211) #b00000000000000000000000000000000) (bvslt (index!27082 lt!271211) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271211) (ite ((_ is Found!6208) lt!271211) (= (select (arr!17761 a!2986) (index!27080 lt!271211)) k0!1786) (ite ((_ is MissingZero!6208) lt!271211) (= (select (arr!17761 a!2986) (index!27079 lt!271211)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6208) lt!271211) (= (select (arr!17761 a!2986) (index!27082 lt!271211)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!341058 () SeekEntryResult!6208)

(assert (=> d!86597 (= lt!271211 e!341058)))

(declare-fun c!67439 () Bool)

(declare-fun lt!271212 () SeekEntryResult!6208)

(assert (=> d!86597 (= c!67439 (and ((_ is Intermediate!6208) lt!271212) (undefined!7020 lt!271212)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37001 (_ BitVec 32)) SeekEntryResult!6208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86597 (= lt!271212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86597 (validMask!0 mask!3053)))

(assert (=> d!86597 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!271211)))

(declare-fun b!596894 () Bool)

(declare-fun c!67437 () Bool)

(declare-fun lt!271213 () (_ BitVec 64))

(assert (=> b!596894 (= c!67437 (= lt!271213 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341057 () SeekEntryResult!6208)

(declare-fun e!341056 () SeekEntryResult!6208)

(assert (=> b!596894 (= e!341057 e!341056)))

(declare-fun b!596895 () Bool)

(assert (=> b!596895 (= e!341056 (seekKeyOrZeroReturnVacant!0 (x!55901 lt!271212) (index!27081 lt!271212) (index!27081 lt!271212) k0!1786 a!2986 mask!3053))))

(declare-fun b!596896 () Bool)

(assert (=> b!596896 (= e!341057 (Found!6208 (index!27081 lt!271212)))))

(declare-fun b!596897 () Bool)

(assert (=> b!596897 (= e!341058 e!341057)))

(assert (=> b!596897 (= lt!271213 (select (arr!17761 a!2986) (index!27081 lt!271212)))))

(declare-fun c!67438 () Bool)

(assert (=> b!596897 (= c!67438 (= lt!271213 k0!1786))))

(declare-fun b!596898 () Bool)

(assert (=> b!596898 (= e!341058 Undefined!6208)))

(declare-fun b!596899 () Bool)

(assert (=> b!596899 (= e!341056 (MissingZero!6208 (index!27081 lt!271212)))))

(assert (= (and d!86597 c!67439) b!596898))

(assert (= (and d!86597 (not c!67439)) b!596897))

(assert (= (and b!596897 c!67438) b!596896))

(assert (= (and b!596897 (not c!67438)) b!596894))

(assert (= (and b!596894 c!67437) b!596899))

(assert (= (and b!596894 (not c!67437)) b!596895))

(declare-fun m!574391 () Bool)

(assert (=> d!86597 m!574391))

(declare-fun m!574393 () Bool)

(assert (=> d!86597 m!574393))

(declare-fun m!574395 () Bool)

(assert (=> d!86597 m!574395))

(assert (=> d!86597 m!574277))

(declare-fun m!574397 () Bool)

(assert (=> d!86597 m!574397))

(assert (=> d!86597 m!574395))

(declare-fun m!574399 () Bool)

(assert (=> d!86597 m!574399))

(declare-fun m!574401 () Bool)

(assert (=> b!596895 m!574401))

(declare-fun m!574403 () Bool)

(assert (=> b!596897 m!574403))

(assert (=> b!596747 d!86597))

(declare-fun b!596919 () Bool)

(declare-fun e!341077 () Bool)

(declare-fun call!32903 () Bool)

(assert (=> b!596919 (= e!341077 call!32903)))

(declare-fun b!596920 () Bool)

(assert (=> b!596920 (= e!341077 call!32903)))

(declare-fun bm!32900 () Bool)

(declare-fun c!67442 () Bool)

(assert (=> bm!32900 (= call!32903 (arrayNoDuplicates!0 lt!271146 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67442 (Cons!11851 (select (arr!17761 lt!271146) #b00000000000000000000000000000000) Nil!11852) Nil!11852)))))

(declare-fun b!596921 () Bool)

(declare-fun e!341079 () Bool)

(declare-fun contains!2955 (List!11855 (_ BitVec 64)) Bool)

(assert (=> b!596921 (= e!341079 (contains!2955 Nil!11852 (select (arr!17761 lt!271146) #b00000000000000000000000000000000)))))

(declare-fun d!86607 () Bool)

(declare-fun res!382769 () Bool)

(declare-fun e!341076 () Bool)

(assert (=> d!86607 (=> res!382769 e!341076)))

(assert (=> d!86607 (= res!382769 (bvsge #b00000000000000000000000000000000 (size!18125 lt!271146)))))

(assert (=> d!86607 (= (arrayNoDuplicates!0 lt!271146 #b00000000000000000000000000000000 Nil!11852) e!341076)))

(declare-fun b!596922 () Bool)

(declare-fun e!341078 () Bool)

(assert (=> b!596922 (= e!341076 e!341078)))

(declare-fun res!382770 () Bool)

(assert (=> b!596922 (=> (not res!382770) (not e!341078))))

(assert (=> b!596922 (= res!382770 (not e!341079))))

(declare-fun res!382771 () Bool)

(assert (=> b!596922 (=> (not res!382771) (not e!341079))))

(assert (=> b!596922 (= res!382771 (validKeyInArray!0 (select (arr!17761 lt!271146) #b00000000000000000000000000000000)))))

(declare-fun b!596923 () Bool)

(assert (=> b!596923 (= e!341078 e!341077)))

(assert (=> b!596923 (= c!67442 (validKeyInArray!0 (select (arr!17761 lt!271146) #b00000000000000000000000000000000)))))

(assert (= (and d!86607 (not res!382769)) b!596922))

(assert (= (and b!596922 res!382771) b!596921))

(assert (= (and b!596922 res!382770) b!596923))

(assert (= (and b!596923 c!67442) b!596919))

(assert (= (and b!596923 (not c!67442)) b!596920))

(assert (= (or b!596919 b!596920) bm!32900))

(declare-fun m!574413 () Bool)

(assert (=> bm!32900 m!574413))

(declare-fun m!574415 () Bool)

(assert (=> bm!32900 m!574415))

(assert (=> b!596921 m!574413))

(assert (=> b!596921 m!574413))

(declare-fun m!574419 () Bool)

(assert (=> b!596921 m!574419))

(assert (=> b!596922 m!574413))

(assert (=> b!596922 m!574413))

(declare-fun m!574421 () Bool)

(assert (=> b!596922 m!574421))

(assert (=> b!596923 m!574413))

(assert (=> b!596923 m!574413))

(assert (=> b!596923 m!574421))

(assert (=> b!596749 d!86607))

(declare-fun d!86615 () Bool)

(declare-fun e!341090 () Bool)

(assert (=> d!86615 e!341090))

(declare-fun res!382776 () Bool)

(assert (=> d!86615 (=> (not res!382776) (not e!341090))))

(assert (=> d!86615 (= res!382776 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18125 a!2986))))))

(declare-fun lt!271228 () Unit!18776)

(declare-fun choose!41 (array!37001 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11855) Unit!18776)

(assert (=> d!86615 (= lt!271228 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11852))))

(assert (=> d!86615 (bvslt (size!18125 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!86615 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11852) lt!271228)))

(declare-fun b!596940 () Bool)

(assert (=> b!596940 (= e!341090 (arrayNoDuplicates!0 (array!37002 (store (arr!17761 a!2986) i!1108 k0!1786) (size!18125 a!2986)) #b00000000000000000000000000000000 Nil!11852))))

(assert (= (and d!86615 res!382776) b!596940))

(declare-fun m!574427 () Bool)

(assert (=> d!86615 m!574427))

(assert (=> b!596940 m!574239))

(declare-fun m!574429 () Bool)

(assert (=> b!596940 m!574429))

(assert (=> b!596749 d!86615))

(declare-fun d!86619 () Bool)

(declare-fun res!382777 () Bool)

(declare-fun e!341091 () Bool)

(assert (=> d!86619 (=> res!382777 e!341091)))

(assert (=> d!86619 (= res!382777 (= (select (arr!17761 lt!271146) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17761 a!2986) j!136)))))

(assert (=> d!86619 (= (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!341091)))

(declare-fun b!596941 () Bool)

(declare-fun e!341092 () Bool)

(assert (=> b!596941 (= e!341091 e!341092)))

(declare-fun res!382778 () Bool)

(assert (=> b!596941 (=> (not res!382778) (not e!341092))))

(assert (=> b!596941 (= res!382778 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18125 lt!271146)))))

(declare-fun b!596942 () Bool)

(assert (=> b!596942 (= e!341092 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86619 (not res!382777)) b!596941))

(assert (= (and b!596941 res!382778) b!596942))

(declare-fun m!574431 () Bool)

(assert (=> d!86619 m!574431))

(assert (=> b!596942 m!574233))

(declare-fun m!574433 () Bool)

(assert (=> b!596942 m!574433))

(assert (=> b!596749 d!86619))

(declare-fun d!86621 () Bool)

(assert (=> d!86621 (arrayContainsKey!0 lt!271146 (select (arr!17761 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271234 () Unit!18776)

(declare-fun choose!114 (array!37001 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18776)

(assert (=> d!86621 (= lt!271234 (choose!114 lt!271146 (select (arr!17761 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86621 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86621 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271146 (select (arr!17761 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!271234)))

(declare-fun bs!18361 () Bool)

(assert (= bs!18361 d!86621))

(assert (=> bs!18361 m!574233))

(assert (=> bs!18361 m!574265))

(assert (=> bs!18361 m!574233))

(declare-fun m!574449 () Bool)

(assert (=> bs!18361 m!574449))

(assert (=> b!596749 d!86621))

(declare-fun d!86625 () Bool)

(assert (=> d!86625 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54578 d!86625))

(declare-fun d!86629 () Bool)

(assert (=> d!86629 (= (array_inv!13535 a!2986) (bvsge (size!18125 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54578 d!86629))

(declare-fun b!596969 () Bool)

(declare-fun e!341108 () Bool)

(declare-fun call!32904 () Bool)

(assert (=> b!596969 (= e!341108 call!32904)))

(declare-fun b!596970 () Bool)

(assert (=> b!596970 (= e!341108 call!32904)))

(declare-fun bm!32901 () Bool)

(declare-fun c!67461 () Bool)

(assert (=> bm!32901 (= call!32904 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67461 (Cons!11851 (select (arr!17761 a!2986) #b00000000000000000000000000000000) Nil!11852) Nil!11852)))))

(declare-fun b!596971 () Bool)

(declare-fun e!341110 () Bool)

(assert (=> b!596971 (= e!341110 (contains!2955 Nil!11852 (select (arr!17761 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86631 () Bool)

(declare-fun res!382781 () Bool)

(declare-fun e!341107 () Bool)

(assert (=> d!86631 (=> res!382781 e!341107)))

(assert (=> d!86631 (= res!382781 (bvsge #b00000000000000000000000000000000 (size!18125 a!2986)))))

(assert (=> d!86631 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11852) e!341107)))

(declare-fun b!596972 () Bool)

(declare-fun e!341109 () Bool)

(assert (=> b!596972 (= e!341107 e!341109)))

(declare-fun res!382782 () Bool)

(assert (=> b!596972 (=> (not res!382782) (not e!341109))))

(assert (=> b!596972 (= res!382782 (not e!341110))))

(declare-fun res!382783 () Bool)

(assert (=> b!596972 (=> (not res!382783) (not e!341110))))

(assert (=> b!596972 (= res!382783 (validKeyInArray!0 (select (arr!17761 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!596973 () Bool)

(assert (=> b!596973 (= e!341109 e!341108)))

(assert (=> b!596973 (= c!67461 (validKeyInArray!0 (select (arr!17761 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86631 (not res!382781)) b!596972))

(assert (= (and b!596972 res!382783) b!596971))

(assert (= (and b!596972 res!382782) b!596973))

(assert (= (and b!596973 c!67461) b!596969))

(assert (= (and b!596973 (not c!67461)) b!596970))

(assert (= (or b!596969 b!596970) bm!32901))

(declare-fun m!574459 () Bool)

(assert (=> bm!32901 m!574459))

(declare-fun m!574461 () Bool)

(assert (=> bm!32901 m!574461))

(assert (=> b!596971 m!574459))

(assert (=> b!596971 m!574459))

(declare-fun m!574463 () Bool)

(assert (=> b!596971 m!574463))

(assert (=> b!596972 m!574459))

(assert (=> b!596972 m!574459))

(declare-fun m!574465 () Bool)

(assert (=> b!596972 m!574465))

(assert (=> b!596973 m!574459))

(assert (=> b!596973 m!574459))

(assert (=> b!596973 m!574465))

(assert (=> b!596761 d!86631))

(declare-fun b!596974 () Bool)

(declare-fun c!67463 () Bool)

(declare-fun lt!271244 () (_ BitVec 64))

(assert (=> b!596974 (= c!67463 (= lt!271244 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341112 () SeekEntryResult!6208)

(declare-fun e!341113 () SeekEntryResult!6208)

(assert (=> b!596974 (= e!341112 e!341113)))

(declare-fun b!596975 () Bool)

(assert (=> b!596975 (= e!341113 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596976 () Bool)

(assert (=> b!596976 (= e!341112 (Found!6208 index!984))))

(declare-fun b!596977 () Bool)

(declare-fun e!341111 () SeekEntryResult!6208)

(assert (=> b!596977 (= e!341111 e!341112)))

(declare-fun c!67464 () Bool)

(assert (=> b!596977 (= c!67464 (= lt!271244 (select (arr!17761 a!2986) j!136)))))

(declare-fun d!86633 () Bool)

(declare-fun lt!271243 () SeekEntryResult!6208)

(assert (=> d!86633 (and (or ((_ is Undefined!6208) lt!271243) (not ((_ is Found!6208) lt!271243)) (and (bvsge (index!27080 lt!271243) #b00000000000000000000000000000000) (bvslt (index!27080 lt!271243) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271243) ((_ is Found!6208) lt!271243) (not ((_ is MissingVacant!6208) lt!271243)) (not (= (index!27082 lt!271243) vacantSpotIndex!68)) (and (bvsge (index!27082 lt!271243) #b00000000000000000000000000000000) (bvslt (index!27082 lt!271243) (size!18125 a!2986)))) (or ((_ is Undefined!6208) lt!271243) (ite ((_ is Found!6208) lt!271243) (= (select (arr!17761 a!2986) (index!27080 lt!271243)) (select (arr!17761 a!2986) j!136)) (and ((_ is MissingVacant!6208) lt!271243) (= (index!27082 lt!271243) vacantSpotIndex!68) (= (select (arr!17761 a!2986) (index!27082 lt!271243)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86633 (= lt!271243 e!341111)))

(declare-fun c!67462 () Bool)

(assert (=> d!86633 (= c!67462 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86633 (= lt!271244 (select (arr!17761 a!2986) index!984))))

(assert (=> d!86633 (validMask!0 mask!3053)))

(assert (=> d!86633 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17761 a!2986) j!136) a!2986 mask!3053) lt!271243)))

(declare-fun b!596978 () Bool)

(assert (=> b!596978 (= e!341113 (MissingVacant!6208 vacantSpotIndex!68))))

(declare-fun b!596979 () Bool)

(assert (=> b!596979 (= e!341111 Undefined!6208)))

(assert (= (and d!86633 c!67462) b!596979))

(assert (= (and d!86633 (not c!67462)) b!596977))

(assert (= (and b!596977 c!67464) b!596976))

(assert (= (and b!596977 (not c!67464)) b!596974))

(assert (= (and b!596974 c!67463) b!596978))

(assert (= (and b!596974 (not c!67463)) b!596975))

(assert (=> b!596975 m!574245))

(assert (=> b!596975 m!574245))

(assert (=> b!596975 m!574233))

(declare-fun m!574467 () Bool)

(assert (=> b!596975 m!574467))

(declare-fun m!574469 () Bool)

(assert (=> d!86633 m!574469))

(declare-fun m!574471 () Bool)

(assert (=> d!86633 m!574471))

(assert (=> d!86633 m!574283))

(assert (=> d!86633 m!574277))

(assert (=> b!596751 d!86633))

(declare-fun b!596991 () Bool)

(declare-fun e!341124 () Bool)

(declare-fun call!32907 () Bool)

(assert (=> b!596991 (= e!341124 call!32907)))

(declare-fun b!596993 () Bool)

(declare-fun e!341125 () Bool)

(assert (=> b!596993 (= e!341125 e!341124)))

(declare-fun c!67467 () Bool)

(assert (=> b!596993 (= c!67467 (validKeyInArray!0 (select (arr!17761 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!596994 () Bool)

(declare-fun e!341123 () Bool)

(assert (=> b!596994 (= e!341124 e!341123)))

(declare-fun lt!271255 () (_ BitVec 64))

(assert (=> b!596994 (= lt!271255 (select (arr!17761 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!271256 () Unit!18776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37001 (_ BitVec 64) (_ BitVec 32)) Unit!18776)

(assert (=> b!596994 (= lt!271256 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!271255 #b00000000000000000000000000000000))))

(assert (=> b!596994 (arrayContainsKey!0 a!2986 lt!271255 #b00000000000000000000000000000000)))

(declare-fun lt!271254 () Unit!18776)

(assert (=> b!596994 (= lt!271254 lt!271256)))

(declare-fun res!382791 () Bool)

(assert (=> b!596994 (= res!382791 (= (seekEntryOrOpen!0 (select (arr!17761 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6208 #b00000000000000000000000000000000)))))

(assert (=> b!596994 (=> (not res!382791) (not e!341123))))

(declare-fun bm!32904 () Bool)

(assert (=> bm!32904 (= call!32907 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!86635 () Bool)

(declare-fun res!382792 () Bool)

(assert (=> d!86635 (=> res!382792 e!341125)))

(assert (=> d!86635 (= res!382792 (bvsge #b00000000000000000000000000000000 (size!18125 a!2986)))))

(assert (=> d!86635 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!341125)))

(declare-fun b!596992 () Bool)

(assert (=> b!596992 (= e!341123 call!32907)))

(assert (= (and d!86635 (not res!382792)) b!596993))

(assert (= (and b!596993 c!67467) b!596994))

(assert (= (and b!596993 (not c!67467)) b!596991))

(assert (= (and b!596994 res!382791) b!596992))

(assert (= (or b!596992 b!596991) bm!32904))

(assert (=> b!596993 m!574459))

(assert (=> b!596993 m!574459))

(assert (=> b!596993 m!574465))

(assert (=> b!596994 m!574459))

(declare-fun m!574477 () Bool)

(assert (=> b!596994 m!574477))

(declare-fun m!574479 () Bool)

(assert (=> b!596994 m!574479))

(assert (=> b!596994 m!574459))

(declare-fun m!574481 () Bool)

(assert (=> b!596994 m!574481))

(declare-fun m!574483 () Bool)

(assert (=> bm!32904 m!574483))

(assert (=> b!596752 d!86635))

(declare-fun d!86639 () Bool)

(declare-fun res!382793 () Bool)

(declare-fun e!341126 () Bool)

(assert (=> d!86639 (=> res!382793 e!341126)))

(assert (=> d!86639 (= res!382793 (= (select (arr!17761 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86639 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!341126)))

(declare-fun b!596995 () Bool)

(declare-fun e!341127 () Bool)

(assert (=> b!596995 (= e!341126 e!341127)))

(declare-fun res!382794 () Bool)

(assert (=> b!596995 (=> (not res!382794) (not e!341127))))

(assert (=> b!596995 (= res!382794 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18125 a!2986)))))

(declare-fun b!596996 () Bool)

(assert (=> b!596996 (= e!341127 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86639 (not res!382793)) b!596995))

(assert (= (and b!596995 res!382794) b!596996))

(assert (=> d!86639 m!574459))

(declare-fun m!574485 () Bool)

(assert (=> b!596996 m!574485))

(assert (=> b!596753 d!86639))

(declare-fun d!86641 () Bool)

(assert (=> d!86641 (= (validKeyInArray!0 (select (arr!17761 a!2986) j!136)) (and (not (= (select (arr!17761 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17761 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!596754 d!86641))

(check-sat (not b!596994) (not b!596858) (not b!596993) (not d!86597) (not b!596975) (not b!596973) (not b!596940) (not b!596895) (not d!86589) (not d!86621) (not bm!32904) (not d!86583) (not b!596972) (not b!596860) (not b!596996) (not b!596833) (not d!86615) (not bm!32901) (not b!596942) (not b!596971) (not d!86633) (not b!596923) (not d!86587) (not bm!32900) (not b!596840) (not b!596842) (not d!86581) (not b!596921) (not d!86585) (not b!596848) (not b!596922))
(check-sat)
