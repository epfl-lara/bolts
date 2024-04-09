; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56032 () Bool)

(assert start!56032)

(declare-fun b!615990 () Bool)

(declare-fun res!396894 () Bool)

(declare-fun e!353205 () Bool)

(assert (=> b!615990 (=> (not res!396894) (not e!353205))))

(declare-datatypes ((array!37465 0))(
  ( (array!37466 (arr!17975 (Array (_ BitVec 32) (_ BitVec 64))) (size!18339 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37465)

(declare-datatypes ((List!12069 0))(
  ( (Nil!12066) (Cons!12065 (h!13110 (_ BitVec 64)) (t!18305 List!12069)) )
))
(declare-fun arrayNoDuplicates!0 (array!37465 (_ BitVec 32) List!12069) Bool)

(assert (=> b!615990 (= res!396894 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12066))))

(declare-fun b!615991 () Bool)

(declare-datatypes ((Unit!20040 0))(
  ( (Unit!20041) )
))
(declare-fun e!353206 () Unit!20040)

(declare-fun Unit!20042 () Unit!20040)

(assert (=> b!615991 (= e!353206 Unit!20042)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!396895 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!615991 (= res!396895 (= (select (store (arr!17975 a!2986) i!1108 k!1786) index!984) (select (arr!17975 a!2986) j!136)))))

(declare-fun e!353202 () Bool)

(assert (=> b!615991 (=> (not res!396895) (not e!353202))))

(assert (=> b!615991 e!353202))

(declare-fun c!69923 () Bool)

(assert (=> b!615991 (= c!69923 (bvslt j!136 index!984))))

(declare-fun lt!283284 () Unit!20040)

(declare-fun e!353193 () Unit!20040)

(assert (=> b!615991 (= lt!283284 e!353193)))

(declare-fun c!69921 () Bool)

(assert (=> b!615991 (= c!69921 (bvslt index!984 j!136))))

(declare-fun lt!283295 () Unit!20040)

(declare-fun e!353204 () Unit!20040)

(assert (=> b!615991 (= lt!283295 e!353204)))

(assert (=> b!615991 false))

(declare-fun b!615992 () Bool)

(declare-fun e!353198 () Bool)

(assert (=> b!615992 (= e!353198 e!353205)))

(declare-fun res!396887 () Bool)

(assert (=> b!615992 (=> (not res!396887) (not e!353205))))

(declare-datatypes ((SeekEntryResult!6422 0))(
  ( (MissingZero!6422 (index!27971 (_ BitVec 32))) (Found!6422 (index!27972 (_ BitVec 32))) (Intermediate!6422 (undefined!7234 Bool) (index!27973 (_ BitVec 32)) (x!56791 (_ BitVec 32))) (Undefined!6422) (MissingVacant!6422 (index!27974 (_ BitVec 32))) )
))
(declare-fun lt!283288 () SeekEntryResult!6422)

(assert (=> b!615992 (= res!396887 (or (= lt!283288 (MissingZero!6422 i!1108)) (= lt!283288 (MissingVacant!6422 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37465 (_ BitVec 32)) SeekEntryResult!6422)

(assert (=> b!615992 (= lt!283288 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615993 () Bool)

(declare-fun res!396890 () Bool)

(assert (=> b!615993 (=> (not res!396890) (not e!353198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615993 (= res!396890 (validKeyInArray!0 k!1786))))

(declare-fun b!615994 () Bool)

(declare-fun res!396889 () Bool)

(assert (=> b!615994 (=> (not res!396889) (not e!353205))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615994 (= res!396889 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17975 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615995 () Bool)

(declare-fun Unit!20043 () Unit!20040)

(assert (=> b!615995 (= e!353204 Unit!20043)))

(declare-fun b!615996 () Bool)

(declare-fun res!396897 () Bool)

(assert (=> b!615996 (=> (not res!396897) (not e!353198))))

(assert (=> b!615996 (= res!396897 (validKeyInArray!0 (select (arr!17975 a!2986) j!136)))))

(declare-fun b!615997 () Bool)

(declare-fun e!353200 () Bool)

(declare-fun e!353203 () Bool)

(assert (=> b!615997 (= e!353200 e!353203)))

(declare-fun res!396896 () Bool)

(assert (=> b!615997 (=> (not res!396896) (not e!353203))))

(declare-fun lt!283292 () SeekEntryResult!6422)

(assert (=> b!615997 (= res!396896 (and (= lt!283292 (Found!6422 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17975 a!2986) index!984) (select (arr!17975 a!2986) j!136))) (not (= (select (arr!17975 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37465 (_ BitVec 32)) SeekEntryResult!6422)

(assert (=> b!615997 (= lt!283292 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17975 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615998 () Bool)

(declare-fun e!353196 () Bool)

(declare-fun lt!283277 () SeekEntryResult!6422)

(assert (=> b!615998 (= e!353196 (= lt!283292 lt!283277))))

(declare-fun res!396885 () Bool)

(assert (=> start!56032 (=> (not res!396885) (not e!353198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56032 (= res!396885 (validMask!0 mask!3053))))

(assert (=> start!56032 e!353198))

(assert (=> start!56032 true))

(declare-fun array_inv!13749 (array!37465) Bool)

(assert (=> start!56032 (array_inv!13749 a!2986)))

(declare-fun b!615999 () Bool)

(assert (=> b!615999 (= e!353205 e!353200)))

(declare-fun res!396888 () Bool)

(assert (=> b!615999 (=> (not res!396888) (not e!353200))))

(assert (=> b!615999 (= res!396888 (= (select (store (arr!17975 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!283289 () array!37465)

(assert (=> b!615999 (= lt!283289 (array!37466 (store (arr!17975 a!2986) i!1108 k!1786) (size!18339 a!2986)))))

(declare-fun b!616000 () Bool)

(assert (=> b!616000 (= e!353203 (not true))))

(declare-fun lt!283293 () Unit!20040)

(assert (=> b!616000 (= lt!283293 e!353206)))

(declare-fun c!69920 () Bool)

(declare-fun lt!283279 () SeekEntryResult!6422)

(assert (=> b!616000 (= c!69920 (= lt!283279 (Found!6422 index!984)))))

(declare-fun lt!283287 () Unit!20040)

(declare-fun e!353199 () Unit!20040)

(assert (=> b!616000 (= lt!283287 e!353199)))

(declare-fun c!69922 () Bool)

(assert (=> b!616000 (= c!69922 (= lt!283279 Undefined!6422))))

(declare-fun lt!283290 () (_ BitVec 64))

(assert (=> b!616000 (= lt!283279 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283290 lt!283289 mask!3053))))

(assert (=> b!616000 e!353196))

(declare-fun res!396893 () Bool)

(assert (=> b!616000 (=> (not res!396893) (not e!353196))))

(declare-fun lt!283286 () (_ BitVec 32))

(assert (=> b!616000 (= res!396893 (= lt!283277 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283286 vacantSpotIndex!68 lt!283290 lt!283289 mask!3053)))))

(assert (=> b!616000 (= lt!283277 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283286 vacantSpotIndex!68 (select (arr!17975 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616000 (= lt!283290 (select (store (arr!17975 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283291 () Unit!20040)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37465 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20040)

(assert (=> b!616000 (= lt!283291 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283286 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616000 (= lt!283286 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616001 () Bool)

(declare-fun res!396899 () Bool)

(assert (=> b!616001 (=> (not res!396899) (not e!353198))))

(declare-fun arrayContainsKey!0 (array!37465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616001 (= res!396899 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616002 () Bool)

(declare-fun Unit!20044 () Unit!20040)

(assert (=> b!616002 (= e!353199 Unit!20044)))

(declare-fun b!616003 () Bool)

(declare-fun Unit!20045 () Unit!20040)

(assert (=> b!616003 (= e!353206 Unit!20045)))

(declare-fun b!616004 () Bool)

(declare-fun res!396886 () Bool)

(assert (=> b!616004 (=> (not res!396886) (not e!353198))))

(assert (=> b!616004 (= res!396886 (and (= (size!18339 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18339 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18339 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616005 () Bool)

(declare-fun Unit!20046 () Unit!20040)

(assert (=> b!616005 (= e!353193 Unit!20046)))

(declare-fun e!353195 () Bool)

(declare-fun b!616006 () Bool)

(assert (=> b!616006 (= e!353195 (arrayContainsKey!0 lt!283289 (select (arr!17975 a!2986) j!136) index!984))))

(declare-fun b!616007 () Bool)

(declare-fun res!396898 () Bool)

(assert (=> b!616007 (=> (not res!396898) (not e!353205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37465 (_ BitVec 32)) Bool)

(assert (=> b!616007 (= res!396898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616008 () Bool)

(assert (=> b!616008 false))

(declare-fun lt!283283 () Unit!20040)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37465 (_ BitVec 64) (_ BitVec 32) List!12069) Unit!20040)

(assert (=> b!616008 (= lt!283283 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283289 (select (arr!17975 a!2986) j!136) index!984 Nil!12066))))

(assert (=> b!616008 (arrayNoDuplicates!0 lt!283289 index!984 Nil!12066)))

(declare-fun lt!283285 () Unit!20040)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37465 (_ BitVec 32) (_ BitVec 32)) Unit!20040)

(assert (=> b!616008 (= lt!283285 (lemmaNoDuplicateFromThenFromBigger!0 lt!283289 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616008 (arrayNoDuplicates!0 lt!283289 #b00000000000000000000000000000000 Nil!12066)))

(declare-fun lt!283280 () Unit!20040)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37465 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12069) Unit!20040)

(assert (=> b!616008 (= lt!283280 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12066))))

(assert (=> b!616008 (arrayContainsKey!0 lt!283289 (select (arr!17975 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283278 () Unit!20040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37465 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20040)

(assert (=> b!616008 (= lt!283278 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283289 (select (arr!17975 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616008 e!353195))

(declare-fun res!396892 () Bool)

(assert (=> b!616008 (=> (not res!396892) (not e!353195))))

(assert (=> b!616008 (= res!396892 (arrayContainsKey!0 lt!283289 (select (arr!17975 a!2986) j!136) j!136))))

(declare-fun Unit!20047 () Unit!20040)

(assert (=> b!616008 (= e!353204 Unit!20047)))

(declare-fun b!616009 () Bool)

(declare-fun Unit!20048 () Unit!20040)

(assert (=> b!616009 (= e!353199 Unit!20048)))

(assert (=> b!616009 false))

(declare-fun b!616010 () Bool)

(declare-fun res!396884 () Bool)

(assert (=> b!616010 (= res!396884 (bvsge j!136 index!984))))

(declare-fun e!353197 () Bool)

(assert (=> b!616010 (=> res!396884 e!353197)))

(assert (=> b!616010 (= e!353202 e!353197)))

(declare-fun b!616011 () Bool)

(declare-fun e!353201 () Bool)

(assert (=> b!616011 (= e!353201 (arrayContainsKey!0 lt!283289 (select (arr!17975 a!2986) j!136) index!984))))

(declare-fun res!396891 () Bool)

(declare-fun b!616012 () Bool)

(assert (=> b!616012 (= res!396891 (arrayContainsKey!0 lt!283289 (select (arr!17975 a!2986) j!136) j!136))))

(assert (=> b!616012 (=> (not res!396891) (not e!353201))))

(assert (=> b!616012 (= e!353197 e!353201)))

(declare-fun b!616013 () Bool)

(assert (=> b!616013 false))

(declare-fun lt!283281 () Unit!20040)

(assert (=> b!616013 (= lt!283281 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283289 (select (arr!17975 a!2986) j!136) j!136 Nil!12066))))

(assert (=> b!616013 (arrayNoDuplicates!0 lt!283289 j!136 Nil!12066)))

(declare-fun lt!283294 () Unit!20040)

(assert (=> b!616013 (= lt!283294 (lemmaNoDuplicateFromThenFromBigger!0 lt!283289 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616013 (arrayNoDuplicates!0 lt!283289 #b00000000000000000000000000000000 Nil!12066)))

(declare-fun lt!283296 () Unit!20040)

(assert (=> b!616013 (= lt!283296 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12066))))

(assert (=> b!616013 (arrayContainsKey!0 lt!283289 (select (arr!17975 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283282 () Unit!20040)

(assert (=> b!616013 (= lt!283282 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283289 (select (arr!17975 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20049 () Unit!20040)

(assert (=> b!616013 (= e!353193 Unit!20049)))

(assert (= (and start!56032 res!396885) b!616004))

(assert (= (and b!616004 res!396886) b!615996))

(assert (= (and b!615996 res!396897) b!615993))

(assert (= (and b!615993 res!396890) b!616001))

(assert (= (and b!616001 res!396899) b!615992))

(assert (= (and b!615992 res!396887) b!616007))

(assert (= (and b!616007 res!396898) b!615990))

(assert (= (and b!615990 res!396894) b!615994))

(assert (= (and b!615994 res!396889) b!615999))

(assert (= (and b!615999 res!396888) b!615997))

(assert (= (and b!615997 res!396896) b!616000))

(assert (= (and b!616000 res!396893) b!615998))

(assert (= (and b!616000 c!69922) b!616009))

(assert (= (and b!616000 (not c!69922)) b!616002))

(assert (= (and b!616000 c!69920) b!615991))

(assert (= (and b!616000 (not c!69920)) b!616003))

(assert (= (and b!615991 res!396895) b!616010))

(assert (= (and b!616010 (not res!396884)) b!616012))

(assert (= (and b!616012 res!396891) b!616011))

(assert (= (and b!615991 c!69923) b!616013))

(assert (= (and b!615991 (not c!69923)) b!616005))

(assert (= (and b!615991 c!69921) b!616008))

(assert (= (and b!615991 (not c!69921)) b!615995))

(assert (= (and b!616008 res!396892) b!616006))

(declare-fun m!592223 () Bool)

(assert (=> b!615990 m!592223))

(declare-fun m!592225 () Bool)

(assert (=> b!615996 m!592225))

(assert (=> b!615996 m!592225))

(declare-fun m!592227 () Bool)

(assert (=> b!615996 m!592227))

(declare-fun m!592229 () Bool)

(assert (=> b!616007 m!592229))

(declare-fun m!592231 () Bool)

(assert (=> b!616000 m!592231))

(assert (=> b!616000 m!592225))

(declare-fun m!592233 () Bool)

(assert (=> b!616000 m!592233))

(declare-fun m!592235 () Bool)

(assert (=> b!616000 m!592235))

(assert (=> b!616000 m!592225))

(declare-fun m!592237 () Bool)

(assert (=> b!616000 m!592237))

(declare-fun m!592239 () Bool)

(assert (=> b!616000 m!592239))

(declare-fun m!592241 () Bool)

(assert (=> b!616000 m!592241))

(declare-fun m!592243 () Bool)

(assert (=> b!616000 m!592243))

(declare-fun m!592245 () Bool)

(assert (=> start!56032 m!592245))

(declare-fun m!592247 () Bool)

(assert (=> start!56032 m!592247))

(declare-fun m!592249 () Bool)

(assert (=> b!615994 m!592249))

(declare-fun m!592251 () Bool)

(assert (=> b!616013 m!592251))

(assert (=> b!616013 m!592225))

(declare-fun m!592253 () Bool)

(assert (=> b!616013 m!592253))

(assert (=> b!616013 m!592225))

(assert (=> b!616013 m!592225))

(declare-fun m!592255 () Bool)

(assert (=> b!616013 m!592255))

(declare-fun m!592257 () Bool)

(assert (=> b!616013 m!592257))

(declare-fun m!592259 () Bool)

(assert (=> b!616013 m!592259))

(declare-fun m!592261 () Bool)

(assert (=> b!616013 m!592261))

(assert (=> b!616013 m!592225))

(declare-fun m!592263 () Bool)

(assert (=> b!616013 m!592263))

(assert (=> b!616008 m!592225))

(declare-fun m!592265 () Bool)

(assert (=> b!616008 m!592265))

(assert (=> b!616008 m!592225))

(declare-fun m!592267 () Bool)

(assert (=> b!616008 m!592267))

(declare-fun m!592269 () Bool)

(assert (=> b!616008 m!592269))

(assert (=> b!616008 m!592257))

(assert (=> b!616008 m!592259))

(declare-fun m!592271 () Bool)

(assert (=> b!616008 m!592271))

(assert (=> b!616008 m!592225))

(assert (=> b!616008 m!592225))

(declare-fun m!592273 () Bool)

(assert (=> b!616008 m!592273))

(assert (=> b!616008 m!592225))

(declare-fun m!592275 () Bool)

(assert (=> b!616008 m!592275))

(assert (=> b!615991 m!592233))

(declare-fun m!592277 () Bool)

(assert (=> b!615991 m!592277))

(assert (=> b!615991 m!592225))

(assert (=> b!616012 m!592225))

(assert (=> b!616012 m!592225))

(assert (=> b!616012 m!592273))

(assert (=> b!616006 m!592225))

(assert (=> b!616006 m!592225))

(declare-fun m!592279 () Bool)

(assert (=> b!616006 m!592279))

(declare-fun m!592281 () Bool)

(assert (=> b!615993 m!592281))

(declare-fun m!592283 () Bool)

(assert (=> b!616001 m!592283))

(declare-fun m!592285 () Bool)

(assert (=> b!615997 m!592285))

(assert (=> b!615997 m!592225))

(assert (=> b!615997 m!592225))

(declare-fun m!592287 () Bool)

(assert (=> b!615997 m!592287))

(declare-fun m!592289 () Bool)

(assert (=> b!615992 m!592289))

(assert (=> b!615999 m!592233))

(declare-fun m!592291 () Bool)

(assert (=> b!615999 m!592291))

(assert (=> b!616011 m!592225))

(assert (=> b!616011 m!592225))

(assert (=> b!616011 m!592279))

(push 1)

