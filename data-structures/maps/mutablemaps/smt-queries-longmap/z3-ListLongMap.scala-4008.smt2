; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54530 () Bool)

(assert start!54530)

(declare-fun b!595144 () Bool)

(declare-fun e!340046 () Bool)

(declare-fun e!340042 () Bool)

(assert (=> b!595144 (= e!340046 e!340042)))

(declare-fun res!381211 () Bool)

(assert (=> b!595144 (=> res!381211 e!340042)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270282 () (_ BitVec 64))

(declare-fun lt!270286 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36953 0))(
  ( (array!36954 (arr!17737 (Array (_ BitVec 32) (_ BitVec 64))) (size!18101 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36953)

(assert (=> b!595144 (= res!381211 (or (not (= (select (arr!17737 a!2986) j!136) lt!270286)) (not (= (select (arr!17737 a!2986) j!136) lt!270282)) (bvsge j!136 index!984)))))

(declare-fun b!595145 () Bool)

(declare-datatypes ((Unit!18680 0))(
  ( (Unit!18681) )
))
(declare-fun e!340039 () Unit!18680)

(declare-fun Unit!18682 () Unit!18680)

(assert (=> b!595145 (= e!340039 Unit!18682)))

(assert (=> b!595145 false))

(declare-fun b!595146 () Bool)

(declare-fun e!340047 () Bool)

(declare-fun e!340044 () Bool)

(assert (=> b!595146 (= e!340047 e!340044)))

(declare-fun res!381218 () Bool)

(assert (=> b!595146 (=> (not res!381218) (not e!340044))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!595146 (= res!381218 (= (select (store (arr!17737 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!270280 () array!36953)

(assert (=> b!595146 (= lt!270280 (array!36954 (store (arr!17737 a!2986) i!1108 k0!1786) (size!18101 a!2986)))))

(declare-fun b!595147 () Bool)

(declare-fun e!340038 () Bool)

(declare-fun e!340041 () Bool)

(assert (=> b!595147 (= e!340038 e!340041)))

(declare-fun res!381214 () Bool)

(assert (=> b!595147 (=> res!381214 e!340041)))

(assert (=> b!595147 (= res!381214 (or (not (= (select (arr!17737 a!2986) j!136) lt!270286)) (not (= (select (arr!17737 a!2986) j!136) lt!270282)) (bvsge j!136 index!984)))))

(assert (=> b!595147 e!340046))

(declare-fun res!381213 () Bool)

(assert (=> b!595147 (=> (not res!381213) (not e!340046))))

(assert (=> b!595147 (= res!381213 (= lt!270282 (select (arr!17737 a!2986) j!136)))))

(assert (=> b!595147 (= lt!270282 (select (store (arr!17737 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!595148 () Bool)

(declare-fun e!340048 () Bool)

(assert (=> b!595148 (= e!340048 true)))

(declare-fun lt!270284 () Bool)

(declare-datatypes ((List!11831 0))(
  ( (Nil!11828) (Cons!11827 (h!12872 (_ BitVec 64)) (t!18067 List!11831)) )
))
(declare-fun contains!2935 (List!11831 (_ BitVec 64)) Bool)

(assert (=> b!595148 (= lt!270284 (contains!2935 Nil!11828 k0!1786))))

(declare-fun b!595149 () Bool)

(declare-fun res!381224 () Bool)

(assert (=> b!595149 (=> (not res!381224) (not e!340047))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!595149 (= res!381224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17737 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595150 () Bool)

(declare-fun e!340036 () Bool)

(declare-datatypes ((SeekEntryResult!6184 0))(
  ( (MissingZero!6184 (index!26983 (_ BitVec 32))) (Found!6184 (index!26984 (_ BitVec 32))) (Intermediate!6184 (undefined!6996 Bool) (index!26985 (_ BitVec 32)) (x!55813 (_ BitVec 32))) (Undefined!6184) (MissingVacant!6184 (index!26986 (_ BitVec 32))) )
))
(declare-fun lt!270278 () SeekEntryResult!6184)

(declare-fun lt!270285 () SeekEntryResult!6184)

(assert (=> b!595150 (= e!340036 (= lt!270278 lt!270285))))

(declare-fun b!595151 () Bool)

(declare-fun e!340040 () Bool)

(declare-fun arrayContainsKey!0 (array!36953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595151 (= e!340040 (arrayContainsKey!0 lt!270280 (select (arr!17737 a!2986) j!136) index!984))))

(declare-fun b!595152 () Bool)

(declare-fun e!340045 () Bool)

(assert (=> b!595152 (= e!340045 e!340047)))

(declare-fun res!381222 () Bool)

(assert (=> b!595152 (=> (not res!381222) (not e!340047))))

(declare-fun lt!270277 () SeekEntryResult!6184)

(assert (=> b!595152 (= res!381222 (or (= lt!270277 (MissingZero!6184 i!1108)) (= lt!270277 (MissingVacant!6184 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36953 (_ BitVec 32)) SeekEntryResult!6184)

(assert (=> b!595152 (= lt!270277 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!595153 () Bool)

(declare-fun res!381217 () Bool)

(assert (=> b!595153 (=> (not res!381217) (not e!340045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595153 (= res!381217 (validKeyInArray!0 (select (arr!17737 a!2986) j!136)))))

(declare-fun b!595154 () Bool)

(declare-fun res!381204 () Bool)

(assert (=> b!595154 (=> (not res!381204) (not e!340047))))

(declare-fun arrayNoDuplicates!0 (array!36953 (_ BitVec 32) List!11831) Bool)

(assert (=> b!595154 (= res!381204 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11828))))

(declare-fun b!595155 () Bool)

(declare-fun res!381210 () Bool)

(assert (=> b!595155 (=> res!381210 e!340048)))

(declare-fun noDuplicate!251 (List!11831) Bool)

(assert (=> b!595155 (= res!381210 (not (noDuplicate!251 Nil!11828)))))

(declare-fun b!595156 () Bool)

(assert (=> b!595156 (= e!340041 e!340048)))

(declare-fun res!381216 () Bool)

(assert (=> b!595156 (=> res!381216 e!340048)))

(assert (=> b!595156 (= res!381216 (or (bvsge (size!18101 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18101 a!2986))))))

(assert (=> b!595156 (arrayContainsKey!0 lt!270280 (select (arr!17737 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270287 () Unit!18680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36953 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18680)

(assert (=> b!595156 (= lt!270287 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270280 (select (arr!17737 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595157 () Bool)

(declare-fun res!381215 () Bool)

(assert (=> b!595157 (=> (not res!381215) (not e!340047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36953 (_ BitVec 32)) Bool)

(assert (=> b!595157 (= res!381215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595158 () Bool)

(declare-fun res!381220 () Bool)

(assert (=> b!595158 (=> (not res!381220) (not e!340045))))

(assert (=> b!595158 (= res!381220 (validKeyInArray!0 k0!1786))))

(declare-fun res!381212 () Bool)

(assert (=> start!54530 (=> (not res!381212) (not e!340045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54530 (= res!381212 (validMask!0 mask!3053))))

(assert (=> start!54530 e!340045))

(assert (=> start!54530 true))

(declare-fun array_inv!13511 (array!36953) Bool)

(assert (=> start!54530 (array_inv!13511 a!2986)))

(declare-fun b!595159 () Bool)

(declare-fun Unit!18683 () Unit!18680)

(assert (=> b!595159 (= e!340039 Unit!18683)))

(declare-fun b!595160 () Bool)

(declare-fun e!340037 () Bool)

(assert (=> b!595160 (= e!340037 (not e!340038))))

(declare-fun res!381208 () Bool)

(assert (=> b!595160 (=> res!381208 e!340038)))

(declare-fun lt!270281 () SeekEntryResult!6184)

(assert (=> b!595160 (= res!381208 (not (= lt!270281 (Found!6184 index!984))))))

(declare-fun lt!270283 () Unit!18680)

(assert (=> b!595160 (= lt!270283 e!340039)))

(declare-fun c!67337 () Bool)

(assert (=> b!595160 (= c!67337 (= lt!270281 Undefined!6184))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36953 (_ BitVec 32)) SeekEntryResult!6184)

(assert (=> b!595160 (= lt!270281 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270286 lt!270280 mask!3053))))

(assert (=> b!595160 e!340036))

(declare-fun res!381219 () Bool)

(assert (=> b!595160 (=> (not res!381219) (not e!340036))))

(declare-fun lt!270279 () (_ BitVec 32))

(assert (=> b!595160 (= res!381219 (= lt!270285 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270279 vacantSpotIndex!68 lt!270286 lt!270280 mask!3053)))))

(assert (=> b!595160 (= lt!270285 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270279 vacantSpotIndex!68 (select (arr!17737 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595160 (= lt!270286 (select (store (arr!17737 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270288 () Unit!18680)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36953 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18680)

(assert (=> b!595160 (= lt!270288 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270279 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595160 (= lt!270279 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595161 () Bool)

(declare-fun res!381206 () Bool)

(assert (=> b!595161 (=> (not res!381206) (not e!340045))))

(assert (=> b!595161 (= res!381206 (and (= (size!18101 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18101 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18101 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595162 () Bool)

(assert (=> b!595162 (= e!340044 e!340037)))

(declare-fun res!381207 () Bool)

(assert (=> b!595162 (=> (not res!381207) (not e!340037))))

(assert (=> b!595162 (= res!381207 (and (= lt!270278 (Found!6184 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17737 a!2986) index!984) (select (arr!17737 a!2986) j!136))) (not (= (select (arr!17737 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!595162 (= lt!270278 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17737 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595163 () Bool)

(declare-fun res!381205 () Bool)

(assert (=> b!595163 (=> (not res!381205) (not e!340045))))

(assert (=> b!595163 (= res!381205 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595164 () Bool)

(declare-fun res!381223 () Bool)

(assert (=> b!595164 (=> res!381223 e!340048)))

(assert (=> b!595164 (= res!381223 (contains!2935 Nil!11828 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595165 () Bool)

(assert (=> b!595165 (= e!340042 e!340040)))

(declare-fun res!381221 () Bool)

(assert (=> b!595165 (=> (not res!381221) (not e!340040))))

(assert (=> b!595165 (= res!381221 (arrayContainsKey!0 lt!270280 (select (arr!17737 a!2986) j!136) j!136))))

(declare-fun b!595166 () Bool)

(declare-fun res!381209 () Bool)

(assert (=> b!595166 (=> res!381209 e!340048)))

(assert (=> b!595166 (= res!381209 (contains!2935 Nil!11828 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!54530 res!381212) b!595161))

(assert (= (and b!595161 res!381206) b!595153))

(assert (= (and b!595153 res!381217) b!595158))

(assert (= (and b!595158 res!381220) b!595163))

(assert (= (and b!595163 res!381205) b!595152))

(assert (= (and b!595152 res!381222) b!595157))

(assert (= (and b!595157 res!381215) b!595154))

(assert (= (and b!595154 res!381204) b!595149))

(assert (= (and b!595149 res!381224) b!595146))

(assert (= (and b!595146 res!381218) b!595162))

(assert (= (and b!595162 res!381207) b!595160))

(assert (= (and b!595160 res!381219) b!595150))

(assert (= (and b!595160 c!67337) b!595145))

(assert (= (and b!595160 (not c!67337)) b!595159))

(assert (= (and b!595160 (not res!381208)) b!595147))

(assert (= (and b!595147 res!381213) b!595144))

(assert (= (and b!595144 (not res!381211)) b!595165))

(assert (= (and b!595165 res!381221) b!595151))

(assert (= (and b!595147 (not res!381214)) b!595156))

(assert (= (and b!595156 (not res!381216)) b!595155))

(assert (= (and b!595155 (not res!381210)) b!595164))

(assert (= (and b!595164 (not res!381223)) b!595166))

(assert (= (and b!595166 (not res!381209)) b!595148))

(declare-fun m!572857 () Bool)

(assert (=> b!595165 m!572857))

(assert (=> b!595165 m!572857))

(declare-fun m!572859 () Bool)

(assert (=> b!595165 m!572859))

(declare-fun m!572861 () Bool)

(assert (=> b!595164 m!572861))

(assert (=> b!595151 m!572857))

(assert (=> b!595151 m!572857))

(declare-fun m!572863 () Bool)

(assert (=> b!595151 m!572863))

(declare-fun m!572865 () Bool)

(assert (=> b!595160 m!572865))

(declare-fun m!572867 () Bool)

(assert (=> b!595160 m!572867))

(assert (=> b!595160 m!572857))

(declare-fun m!572869 () Bool)

(assert (=> b!595160 m!572869))

(declare-fun m!572871 () Bool)

(assert (=> b!595160 m!572871))

(assert (=> b!595160 m!572857))

(declare-fun m!572873 () Bool)

(assert (=> b!595160 m!572873))

(declare-fun m!572875 () Bool)

(assert (=> b!595160 m!572875))

(declare-fun m!572877 () Bool)

(assert (=> b!595160 m!572877))

(declare-fun m!572879 () Bool)

(assert (=> b!595166 m!572879))

(assert (=> b!595146 m!572869))

(declare-fun m!572881 () Bool)

(assert (=> b!595146 m!572881))

(declare-fun m!572883 () Bool)

(assert (=> b!595162 m!572883))

(assert (=> b!595162 m!572857))

(assert (=> b!595162 m!572857))

(declare-fun m!572885 () Bool)

(assert (=> b!595162 m!572885))

(declare-fun m!572887 () Bool)

(assert (=> b!595163 m!572887))

(declare-fun m!572889 () Bool)

(assert (=> b!595157 m!572889))

(declare-fun m!572891 () Bool)

(assert (=> b!595158 m!572891))

(declare-fun m!572893 () Bool)

(assert (=> b!595148 m!572893))

(assert (=> b!595144 m!572857))

(assert (=> b!595153 m!572857))

(assert (=> b!595153 m!572857))

(declare-fun m!572895 () Bool)

(assert (=> b!595153 m!572895))

(declare-fun m!572897 () Bool)

(assert (=> b!595149 m!572897))

(declare-fun m!572899 () Bool)

(assert (=> b!595152 m!572899))

(declare-fun m!572901 () Bool)

(assert (=> start!54530 m!572901))

(declare-fun m!572903 () Bool)

(assert (=> start!54530 m!572903))

(assert (=> b!595147 m!572857))

(assert (=> b!595147 m!572869))

(declare-fun m!572905 () Bool)

(assert (=> b!595147 m!572905))

(declare-fun m!572907 () Bool)

(assert (=> b!595154 m!572907))

(declare-fun m!572909 () Bool)

(assert (=> b!595155 m!572909))

(assert (=> b!595156 m!572857))

(assert (=> b!595156 m!572857))

(declare-fun m!572911 () Bool)

(assert (=> b!595156 m!572911))

(assert (=> b!595156 m!572857))

(declare-fun m!572913 () Bool)

(assert (=> b!595156 m!572913))

(check-sat (not b!595166) (not b!595153) (not b!595164) (not b!595163) (not b!595157) (not b!595151) (not b!595156) (not b!595160) (not b!595162) (not b!595148) (not start!54530) (not b!595155) (not b!595158) (not b!595165) (not b!595152) (not b!595154))
(check-sat)
