; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58458 () Bool)

(assert start!58458)

(declare-fun b!645217 () Bool)

(declare-fun res!418142 () Bool)

(declare-fun e!369769 () Bool)

(assert (=> b!645217 (=> (not res!418142) (not e!369769))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645217 (= res!418142 (validKeyInArray!0 k!1786))))

(declare-fun b!645218 () Bool)

(declare-fun res!418135 () Bool)

(assert (=> b!645218 (=> (not res!418135) (not e!369769))))

(declare-datatypes ((array!38430 0))(
  ( (array!38431 (arr!18423 (Array (_ BitVec 32) (_ BitVec 64))) (size!18787 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38430)

(declare-fun arrayContainsKey!0 (array!38430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645218 (= res!418135 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645219 () Bool)

(declare-fun e!369772 () Bool)

(declare-fun e!369764 () Bool)

(assert (=> b!645219 (= e!369772 e!369764)))

(declare-fun res!418148 () Bool)

(assert (=> b!645219 (=> (not res!418148) (not e!369764))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!299235 () array!38430)

(assert (=> b!645219 (= res!418148 (arrayContainsKey!0 lt!299235 (select (arr!18423 a!2986) j!136) j!136))))

(declare-fun b!645220 () Bool)

(declare-fun res!418145 () Bool)

(declare-fun e!369776 () Bool)

(assert (=> b!645220 (=> (not res!418145) (not e!369776))))

(declare-datatypes ((List!12517 0))(
  ( (Nil!12514) (Cons!12513 (h!13558 (_ BitVec 64)) (t!18753 List!12517)) )
))
(declare-fun arrayNoDuplicates!0 (array!38430 (_ BitVec 32) List!12517) Bool)

(assert (=> b!645220 (= res!418145 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12514))))

(declare-fun b!645222 () Bool)

(declare-fun res!418133 () Bool)

(assert (=> b!645222 (=> (not res!418133) (not e!369769))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!645222 (= res!418133 (and (= (size!18787 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18787 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18787 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!369775 () Bool)

(declare-fun b!645223 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!645223 (= e!369775 (arrayContainsKey!0 lt!299235 (select (arr!18423 a!2986) j!136) index!984))))

(declare-fun b!645224 () Bool)

(declare-fun e!369770 () Bool)

(assert (=> b!645224 (= e!369776 e!369770)))

(declare-fun res!418134 () Bool)

(assert (=> b!645224 (=> (not res!418134) (not e!369770))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!645224 (= res!418134 (= (select (store (arr!18423 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645224 (= lt!299235 (array!38431 (store (arr!18423 a!2986) i!1108 k!1786) (size!18787 a!2986)))))

(declare-fun b!645225 () Bool)

(declare-fun res!418139 () Bool)

(assert (=> b!645225 (=> (not res!418139) (not e!369776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38430 (_ BitVec 32)) Bool)

(assert (=> b!645225 (= res!418139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645226 () Bool)

(declare-datatypes ((Unit!21892 0))(
  ( (Unit!21893) )
))
(declare-fun e!369767 () Unit!21892)

(declare-fun Unit!21894 () Unit!21892)

(assert (=> b!645226 (= e!369767 Unit!21894)))

(declare-fun b!645227 () Bool)

(declare-fun e!369773 () Bool)

(declare-datatypes ((SeekEntryResult!6870 0))(
  ( (MissingZero!6870 (index!29814 (_ BitVec 32))) (Found!6870 (index!29815 (_ BitVec 32))) (Intermediate!6870 (undefined!7682 Bool) (index!29816 (_ BitVec 32)) (x!58616 (_ BitVec 32))) (Undefined!6870) (MissingVacant!6870 (index!29817 (_ BitVec 32))) )
))
(declare-fun lt!299233 () SeekEntryResult!6870)

(declare-fun lt!299232 () SeekEntryResult!6870)

(assert (=> b!645227 (= e!369773 (= lt!299233 lt!299232))))

(declare-fun b!645228 () Bool)

(declare-fun e!369766 () Unit!21892)

(declare-fun Unit!21895 () Unit!21892)

(assert (=> b!645228 (= e!369766 Unit!21895)))

(declare-fun lt!299237 () Unit!21892)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38430 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21892)

(assert (=> b!645228 (= lt!299237 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299235 (select (arr!18423 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645228 (arrayContainsKey!0 lt!299235 (select (arr!18423 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299247 () Unit!21892)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38430 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12517) Unit!21892)

(assert (=> b!645228 (= lt!299247 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12514))))

(assert (=> b!645228 (arrayNoDuplicates!0 lt!299235 #b00000000000000000000000000000000 Nil!12514)))

(declare-fun lt!299242 () Unit!21892)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38430 (_ BitVec 32) (_ BitVec 32)) Unit!21892)

(assert (=> b!645228 (= lt!299242 (lemmaNoDuplicateFromThenFromBigger!0 lt!299235 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645228 (arrayNoDuplicates!0 lt!299235 j!136 Nil!12514)))

(declare-fun lt!299241 () Unit!21892)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38430 (_ BitVec 64) (_ BitVec 32) List!12517) Unit!21892)

(assert (=> b!645228 (= lt!299241 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299235 (select (arr!18423 a!2986) j!136) j!136 Nil!12514))))

(assert (=> b!645228 false))

(declare-fun b!645229 () Bool)

(declare-fun e!369778 () Bool)

(declare-fun e!369771 () Bool)

(assert (=> b!645229 (= e!369778 e!369771)))

(declare-fun res!418151 () Bool)

(assert (=> b!645229 (=> res!418151 e!369771)))

(declare-fun lt!299239 () (_ BitVec 64))

(declare-fun lt!299246 () (_ BitVec 64))

(assert (=> b!645229 (= res!418151 (or (not (= (select (arr!18423 a!2986) j!136) lt!299239)) (not (= (select (arr!18423 a!2986) j!136) lt!299246))))))

(declare-fun e!369765 () Bool)

(assert (=> b!645229 e!369765))

(declare-fun res!418141 () Bool)

(assert (=> b!645229 (=> (not res!418141) (not e!369765))))

(assert (=> b!645229 (= res!418141 (= lt!299246 (select (arr!18423 a!2986) j!136)))))

(assert (=> b!645229 (= lt!299246 (select (store (arr!18423 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!645221 () Bool)

(declare-fun e!369774 () Bool)

(assert (=> b!645221 (= e!369770 e!369774)))

(declare-fun res!418144 () Bool)

(assert (=> b!645221 (=> (not res!418144) (not e!369774))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!645221 (= res!418144 (and (= lt!299233 (Found!6870 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18423 a!2986) index!984) (select (arr!18423 a!2986) j!136))) (not (= (select (arr!18423 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38430 (_ BitVec 32)) SeekEntryResult!6870)

(assert (=> b!645221 (= lt!299233 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18423 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!418140 () Bool)

(assert (=> start!58458 (=> (not res!418140) (not e!369769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58458 (= res!418140 (validMask!0 mask!3053))))

(assert (=> start!58458 e!369769))

(assert (=> start!58458 true))

(declare-fun array_inv!14197 (array!38430) Bool)

(assert (=> start!58458 (array_inv!14197 a!2986)))

(declare-fun b!645230 () Bool)

(declare-fun res!418136 () Bool)

(assert (=> b!645230 (=> (not res!418136) (not e!369776))))

(assert (=> b!645230 (= res!418136 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18423 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645231 () Bool)

(declare-fun Unit!21896 () Unit!21892)

(assert (=> b!645231 (= e!369766 Unit!21896)))

(declare-fun b!645232 () Bool)

(assert (=> b!645232 (= e!369764 (arrayContainsKey!0 lt!299235 (select (arr!18423 a!2986) j!136) index!984))))

(declare-fun b!645233 () Bool)

(assert (=> b!645233 (= e!369769 e!369776)))

(declare-fun res!418150 () Bool)

(assert (=> b!645233 (=> (not res!418150) (not e!369776))))

(declare-fun lt!299243 () SeekEntryResult!6870)

(assert (=> b!645233 (= res!418150 (or (= lt!299243 (MissingZero!6870 i!1108)) (= lt!299243 (MissingVacant!6870 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38430 (_ BitVec 32)) SeekEntryResult!6870)

(assert (=> b!645233 (= lt!299243 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645234 () Bool)

(declare-fun e!369768 () Bool)

(assert (=> b!645234 (= e!369771 e!369768)))

(declare-fun res!418143 () Bool)

(assert (=> b!645234 (=> res!418143 e!369768)))

(assert (=> b!645234 (= res!418143 (bvsge index!984 j!136))))

(declare-fun lt!299236 () Unit!21892)

(assert (=> b!645234 (= lt!299236 e!369766)))

(declare-fun c!73909 () Bool)

(assert (=> b!645234 (= c!73909 (bvslt j!136 index!984))))

(declare-fun b!645235 () Bool)

(declare-fun res!418149 () Bool)

(assert (=> b!645235 (=> (not res!418149) (not e!369769))))

(assert (=> b!645235 (= res!418149 (validKeyInArray!0 (select (arr!18423 a!2986) j!136)))))

(declare-fun b!645236 () Bool)

(declare-fun Unit!21897 () Unit!21892)

(assert (=> b!645236 (= e!369767 Unit!21897)))

(assert (=> b!645236 false))

(declare-fun b!645237 () Bool)

(assert (=> b!645237 (= e!369774 (not e!369778))))

(declare-fun res!418137 () Bool)

(assert (=> b!645237 (=> res!418137 e!369778)))

(declare-fun lt!299245 () SeekEntryResult!6870)

(assert (=> b!645237 (= res!418137 (not (= lt!299245 (Found!6870 index!984))))))

(declare-fun lt!299244 () Unit!21892)

(assert (=> b!645237 (= lt!299244 e!369767)))

(declare-fun c!73910 () Bool)

(assert (=> b!645237 (= c!73910 (= lt!299245 Undefined!6870))))

(assert (=> b!645237 (= lt!299245 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299239 lt!299235 mask!3053))))

(assert (=> b!645237 e!369773))

(declare-fun res!418147 () Bool)

(assert (=> b!645237 (=> (not res!418147) (not e!369773))))

(declare-fun lt!299240 () (_ BitVec 32))

(assert (=> b!645237 (= res!418147 (= lt!299232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299240 vacantSpotIndex!68 lt!299239 lt!299235 mask!3053)))))

(assert (=> b!645237 (= lt!299232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299240 vacantSpotIndex!68 (select (arr!18423 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645237 (= lt!299239 (select (store (arr!18423 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299238 () Unit!21892)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21892)

(assert (=> b!645237 (= lt!299238 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299240 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645237 (= lt!299240 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645238 () Bool)

(assert (=> b!645238 (= e!369765 e!369772)))

(declare-fun res!418146 () Bool)

(assert (=> b!645238 (=> res!418146 e!369772)))

(assert (=> b!645238 (= res!418146 (or (not (= (select (arr!18423 a!2986) j!136) lt!299239)) (not (= (select (arr!18423 a!2986) j!136) lt!299246)) (bvsge j!136 index!984)))))

(declare-fun b!645239 () Bool)

(assert (=> b!645239 (= e!369768 true)))

(assert (=> b!645239 (arrayContainsKey!0 lt!299235 (select (arr!18423 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299234 () Unit!21892)

(assert (=> b!645239 (= lt!299234 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299235 (select (arr!18423 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!645239 e!369775))

(declare-fun res!418138 () Bool)

(assert (=> b!645239 (=> (not res!418138) (not e!369775))))

(assert (=> b!645239 (= res!418138 (arrayContainsKey!0 lt!299235 (select (arr!18423 a!2986) j!136) j!136))))

(assert (= (and start!58458 res!418140) b!645222))

(assert (= (and b!645222 res!418133) b!645235))

(assert (= (and b!645235 res!418149) b!645217))

(assert (= (and b!645217 res!418142) b!645218))

(assert (= (and b!645218 res!418135) b!645233))

(assert (= (and b!645233 res!418150) b!645225))

(assert (= (and b!645225 res!418139) b!645220))

(assert (= (and b!645220 res!418145) b!645230))

(assert (= (and b!645230 res!418136) b!645224))

(assert (= (and b!645224 res!418134) b!645221))

(assert (= (and b!645221 res!418144) b!645237))

(assert (= (and b!645237 res!418147) b!645227))

(assert (= (and b!645237 c!73910) b!645236))

(assert (= (and b!645237 (not c!73910)) b!645226))

(assert (= (and b!645237 (not res!418137)) b!645229))

(assert (= (and b!645229 res!418141) b!645238))

(assert (= (and b!645238 (not res!418146)) b!645219))

(assert (= (and b!645219 res!418148) b!645232))

(assert (= (and b!645229 (not res!418151)) b!645234))

(assert (= (and b!645234 c!73909) b!645228))

(assert (= (and b!645234 (not c!73909)) b!645231))

(assert (= (and b!645234 (not res!418143)) b!645239))

(assert (= (and b!645239 res!418138) b!645223))

(declare-fun m!618807 () Bool)

(assert (=> b!645239 m!618807))

(assert (=> b!645239 m!618807))

(declare-fun m!618809 () Bool)

(assert (=> b!645239 m!618809))

(assert (=> b!645239 m!618807))

(declare-fun m!618811 () Bool)

(assert (=> b!645239 m!618811))

(assert (=> b!645239 m!618807))

(declare-fun m!618813 () Bool)

(assert (=> b!645239 m!618813))

(declare-fun m!618815 () Bool)

(assert (=> b!645230 m!618815))

(assert (=> b!645235 m!618807))

(assert (=> b!645235 m!618807))

(declare-fun m!618817 () Bool)

(assert (=> b!645235 m!618817))

(assert (=> b!645229 m!618807))

(declare-fun m!618819 () Bool)

(assert (=> b!645229 m!618819))

(declare-fun m!618821 () Bool)

(assert (=> b!645229 m!618821))

(assert (=> b!645237 m!618807))

(declare-fun m!618823 () Bool)

(assert (=> b!645237 m!618823))

(declare-fun m!618825 () Bool)

(assert (=> b!645237 m!618825))

(assert (=> b!645237 m!618807))

(assert (=> b!645237 m!618819))

(declare-fun m!618827 () Bool)

(assert (=> b!645237 m!618827))

(declare-fun m!618829 () Bool)

(assert (=> b!645237 m!618829))

(declare-fun m!618831 () Bool)

(assert (=> b!645237 m!618831))

(declare-fun m!618833 () Bool)

(assert (=> b!645237 m!618833))

(declare-fun m!618835 () Bool)

(assert (=> b!645220 m!618835))

(declare-fun m!618837 () Bool)

(assert (=> start!58458 m!618837))

(declare-fun m!618839 () Bool)

(assert (=> start!58458 m!618839))

(declare-fun m!618841 () Bool)

(assert (=> b!645233 m!618841))

(assert (=> b!645238 m!618807))

(declare-fun m!618843 () Bool)

(assert (=> b!645217 m!618843))

(assert (=> b!645223 m!618807))

(assert (=> b!645223 m!618807))

(declare-fun m!618845 () Bool)

(assert (=> b!645223 m!618845))

(declare-fun m!618847 () Bool)

(assert (=> b!645228 m!618847))

(assert (=> b!645228 m!618807))

(assert (=> b!645228 m!618807))

(declare-fun m!618849 () Bool)

(assert (=> b!645228 m!618849))

(assert (=> b!645228 m!618807))

(declare-fun m!618851 () Bool)

(assert (=> b!645228 m!618851))

(declare-fun m!618853 () Bool)

(assert (=> b!645228 m!618853))

(assert (=> b!645228 m!618807))

(declare-fun m!618855 () Bool)

(assert (=> b!645228 m!618855))

(declare-fun m!618857 () Bool)

(assert (=> b!645228 m!618857))

(declare-fun m!618859 () Bool)

(assert (=> b!645228 m!618859))

(assert (=> b!645232 m!618807))

(assert (=> b!645232 m!618807))

(assert (=> b!645232 m!618845))

(assert (=> b!645224 m!618819))

(declare-fun m!618861 () Bool)

(assert (=> b!645224 m!618861))

(assert (=> b!645219 m!618807))

(assert (=> b!645219 m!618807))

(assert (=> b!645219 m!618813))

(declare-fun m!618863 () Bool)

(assert (=> b!645221 m!618863))

(assert (=> b!645221 m!618807))

(assert (=> b!645221 m!618807))

(declare-fun m!618865 () Bool)

(assert (=> b!645221 m!618865))

(declare-fun m!618867 () Bool)

(assert (=> b!645225 m!618867))

(declare-fun m!618869 () Bool)

(assert (=> b!645218 m!618869))

(push 1)

