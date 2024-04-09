; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54528 () Bool)

(assert start!54528)

(declare-fun b!595075 () Bool)

(declare-fun e!340001 () Bool)

(declare-fun e!340004 () Bool)

(assert (=> b!595075 (= e!340001 e!340004)))

(declare-fun res!381148 () Bool)

(assert (=> b!595075 (=> res!381148 e!340004)))

(declare-datatypes ((array!36951 0))(
  ( (array!36952 (arr!17736 (Array (_ BitVec 32) (_ BitVec 64))) (size!18100 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36951)

(assert (=> b!595075 (= res!381148 (or (bvsge (size!18100 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18100 a!2986))))))

(declare-fun lt!270250 () array!36951)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!36951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595075 (arrayContainsKey!0 lt!270250 (select (arr!17736 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18676 0))(
  ( (Unit!18677) )
))
(declare-fun lt!270244 () Unit!18676)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36951 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18676)

(assert (=> b!595075 (= lt!270244 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270250 (select (arr!17736 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595076 () Bool)

(declare-fun res!381155 () Bool)

(declare-fun e!339999 () Bool)

(assert (=> b!595076 (=> (not res!381155) (not e!339999))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36951 (_ BitVec 32)) Bool)

(assert (=> b!595076 (= res!381155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595077 () Bool)

(declare-fun e!339998 () Bool)

(declare-fun e!340002 () Bool)

(assert (=> b!595077 (= e!339998 e!340002)))

(declare-fun res!381147 () Bool)

(assert (=> b!595077 (=> (not res!381147) (not e!340002))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6183 0))(
  ( (MissingZero!6183 (index!26979 (_ BitVec 32))) (Found!6183 (index!26980 (_ BitVec 32))) (Intermediate!6183 (undefined!6995 Bool) (index!26981 (_ BitVec 32)) (x!55812 (_ BitVec 32))) (Undefined!6183) (MissingVacant!6183 (index!26982 (_ BitVec 32))) )
))
(declare-fun lt!270249 () SeekEntryResult!6183)

(assert (=> b!595077 (= res!381147 (and (= lt!270249 (Found!6183 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17736 a!2986) index!984) (select (arr!17736 a!2986) j!136))) (not (= (select (arr!17736 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36951 (_ BitVec 32)) SeekEntryResult!6183)

(assert (=> b!595077 (= lt!270249 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17736 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595078 () Bool)

(declare-fun res!381156 () Bool)

(declare-fun e!340005 () Bool)

(assert (=> b!595078 (=> (not res!381156) (not e!340005))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595078 (= res!381156 (and (= (size!18100 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18100 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18100 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595079 () Bool)

(declare-fun res!381145 () Bool)

(assert (=> b!595079 (=> res!381145 e!340004)))

(declare-datatypes ((List!11830 0))(
  ( (Nil!11827) (Cons!11826 (h!12871 (_ BitVec 64)) (t!18066 List!11830)) )
))
(declare-fun contains!2934 (List!11830 (_ BitVec 64)) Bool)

(assert (=> b!595079 (= res!381145 (contains!2934 Nil!11827 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595080 () Bool)

(declare-fun res!381153 () Bool)

(assert (=> b!595080 (=> (not res!381153) (not e!340005))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595080 (= res!381153 (validKeyInArray!0 k!1786))))

(declare-fun b!595081 () Bool)

(assert (=> b!595081 (= e!339999 e!339998)))

(declare-fun res!381150 () Bool)

(assert (=> b!595081 (=> (not res!381150) (not e!339998))))

(assert (=> b!595081 (= res!381150 (= (select (store (arr!17736 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595081 (= lt!270250 (array!36952 (store (arr!17736 a!2986) i!1108 k!1786) (size!18100 a!2986)))))

(declare-fun b!595082 () Bool)

(declare-fun e!339997 () Bool)

(declare-fun e!340008 () Bool)

(assert (=> b!595082 (= e!339997 e!340008)))

(declare-fun res!381159 () Bool)

(assert (=> b!595082 (=> res!381159 e!340008)))

(declare-fun lt!270243 () (_ BitVec 64))

(declare-fun lt!270246 () (_ BitVec 64))

(assert (=> b!595082 (= res!381159 (or (not (= (select (arr!17736 a!2986) j!136) lt!270243)) (not (= (select (arr!17736 a!2986) j!136) lt!270246)) (bvsge j!136 index!984)))))

(declare-fun b!595083 () Bool)

(declare-fun res!381149 () Bool)

(assert (=> b!595083 (=> (not res!381149) (not e!340005))))

(assert (=> b!595083 (= res!381149 (validKeyInArray!0 (select (arr!17736 a!2986) j!136)))))

(declare-fun b!595084 () Bool)

(assert (=> b!595084 (= e!340005 e!339999)))

(declare-fun res!381161 () Bool)

(assert (=> b!595084 (=> (not res!381161) (not e!339999))))

(declare-fun lt!270252 () SeekEntryResult!6183)

(assert (=> b!595084 (= res!381161 (or (= lt!270252 (MissingZero!6183 i!1108)) (= lt!270252 (MissingVacant!6183 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36951 (_ BitVec 32)) SeekEntryResult!6183)

(assert (=> b!595084 (= lt!270252 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595085 () Bool)

(declare-fun res!381158 () Bool)

(assert (=> b!595085 (=> (not res!381158) (not e!339999))))

(assert (=> b!595085 (= res!381158 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17736 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595086 () Bool)

(declare-fun res!381146 () Bool)

(assert (=> b!595086 (=> (not res!381146) (not e!340005))))

(assert (=> b!595086 (= res!381146 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595087 () Bool)

(declare-fun e!340006 () Bool)

(assert (=> b!595087 (= e!340008 e!340006)))

(declare-fun res!381142 () Bool)

(assert (=> b!595087 (=> (not res!381142) (not e!340006))))

(assert (=> b!595087 (= res!381142 (arrayContainsKey!0 lt!270250 (select (arr!17736 a!2986) j!136) j!136))))

(declare-fun b!595088 () Bool)

(declare-fun e!340009 () Unit!18676)

(declare-fun Unit!18678 () Unit!18676)

(assert (=> b!595088 (= e!340009 Unit!18678)))

(declare-fun b!595089 () Bool)

(declare-fun e!340000 () Bool)

(assert (=> b!595089 (= e!340000 e!340001)))

(declare-fun res!381151 () Bool)

(assert (=> b!595089 (=> res!381151 e!340001)))

(assert (=> b!595089 (= res!381151 (or (not (= (select (arr!17736 a!2986) j!136) lt!270243)) (not (= (select (arr!17736 a!2986) j!136) lt!270246)) (bvsge j!136 index!984)))))

(assert (=> b!595089 e!339997))

(declare-fun res!381154 () Bool)

(assert (=> b!595089 (=> (not res!381154) (not e!339997))))

(assert (=> b!595089 (= res!381154 (= lt!270246 (select (arr!17736 a!2986) j!136)))))

(assert (=> b!595089 (= lt!270246 (select (store (arr!17736 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595090 () Bool)

(declare-fun Unit!18679 () Unit!18676)

(assert (=> b!595090 (= e!340009 Unit!18679)))

(assert (=> b!595090 false))

(declare-fun b!595091 () Bool)

(assert (=> b!595091 (= e!340004 true)))

(declare-fun lt!270242 () Bool)

(assert (=> b!595091 (= lt!270242 (contains!2934 Nil!11827 k!1786))))

(declare-fun b!595092 () Bool)

(declare-fun res!381141 () Bool)

(assert (=> b!595092 (=> (not res!381141) (not e!339999))))

(declare-fun arrayNoDuplicates!0 (array!36951 (_ BitVec 32) List!11830) Bool)

(assert (=> b!595092 (= res!381141 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11827))))

(declare-fun b!595093 () Bool)

(declare-fun res!381144 () Bool)

(assert (=> b!595093 (=> res!381144 e!340004)))

(declare-fun noDuplicate!250 (List!11830) Bool)

(assert (=> b!595093 (= res!381144 (not (noDuplicate!250 Nil!11827)))))

(declare-fun b!595094 () Bool)

(assert (=> b!595094 (= e!340002 (not e!340000))))

(declare-fun res!381157 () Bool)

(assert (=> b!595094 (=> res!381157 e!340000)))

(declare-fun lt!270248 () SeekEntryResult!6183)

(assert (=> b!595094 (= res!381157 (not (= lt!270248 (Found!6183 index!984))))))

(declare-fun lt!270251 () Unit!18676)

(assert (=> b!595094 (= lt!270251 e!340009)))

(declare-fun c!67334 () Bool)

(assert (=> b!595094 (= c!67334 (= lt!270248 Undefined!6183))))

(assert (=> b!595094 (= lt!270248 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270243 lt!270250 mask!3053))))

(declare-fun e!340003 () Bool)

(assert (=> b!595094 e!340003))

(declare-fun res!381143 () Bool)

(assert (=> b!595094 (=> (not res!381143) (not e!340003))))

(declare-fun lt!270245 () SeekEntryResult!6183)

(declare-fun lt!270247 () (_ BitVec 32))

(assert (=> b!595094 (= res!381143 (= lt!270245 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270247 vacantSpotIndex!68 lt!270243 lt!270250 mask!3053)))))

(assert (=> b!595094 (= lt!270245 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270247 vacantSpotIndex!68 (select (arr!17736 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595094 (= lt!270243 (select (store (arr!17736 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270241 () Unit!18676)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36951 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18676)

(assert (=> b!595094 (= lt!270241 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270247 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595094 (= lt!270247 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!381160 () Bool)

(assert (=> start!54528 (=> (not res!381160) (not e!340005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54528 (= res!381160 (validMask!0 mask!3053))))

(assert (=> start!54528 e!340005))

(assert (=> start!54528 true))

(declare-fun array_inv!13510 (array!36951) Bool)

(assert (=> start!54528 (array_inv!13510 a!2986)))

(declare-fun b!595095 () Bool)

(declare-fun res!381152 () Bool)

(assert (=> b!595095 (=> res!381152 e!340004)))

(assert (=> b!595095 (= res!381152 (contains!2934 Nil!11827 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595096 () Bool)

(assert (=> b!595096 (= e!340003 (= lt!270249 lt!270245))))

(declare-fun b!595097 () Bool)

(assert (=> b!595097 (= e!340006 (arrayContainsKey!0 lt!270250 (select (arr!17736 a!2986) j!136) index!984))))

(assert (= (and start!54528 res!381160) b!595078))

(assert (= (and b!595078 res!381156) b!595083))

(assert (= (and b!595083 res!381149) b!595080))

(assert (= (and b!595080 res!381153) b!595086))

(assert (= (and b!595086 res!381146) b!595084))

(assert (= (and b!595084 res!381161) b!595076))

(assert (= (and b!595076 res!381155) b!595092))

(assert (= (and b!595092 res!381141) b!595085))

(assert (= (and b!595085 res!381158) b!595081))

(assert (= (and b!595081 res!381150) b!595077))

(assert (= (and b!595077 res!381147) b!595094))

(assert (= (and b!595094 res!381143) b!595096))

(assert (= (and b!595094 c!67334) b!595090))

(assert (= (and b!595094 (not c!67334)) b!595088))

(assert (= (and b!595094 (not res!381157)) b!595089))

(assert (= (and b!595089 res!381154) b!595082))

(assert (= (and b!595082 (not res!381159)) b!595087))

(assert (= (and b!595087 res!381142) b!595097))

(assert (= (and b!595089 (not res!381151)) b!595075))

(assert (= (and b!595075 (not res!381148)) b!595093))

(assert (= (and b!595093 (not res!381144)) b!595079))

(assert (= (and b!595079 (not res!381145)) b!595095))

(assert (= (and b!595095 (not res!381152)) b!595091))

(declare-fun m!572799 () Bool)

(assert (=> b!595095 m!572799))

(declare-fun m!572801 () Bool)

(assert (=> b!595087 m!572801))

(assert (=> b!595087 m!572801))

(declare-fun m!572803 () Bool)

(assert (=> b!595087 m!572803))

(declare-fun m!572805 () Bool)

(assert (=> b!595085 m!572805))

(declare-fun m!572807 () Bool)

(assert (=> b!595080 m!572807))

(declare-fun m!572809 () Bool)

(assert (=> b!595086 m!572809))

(declare-fun m!572811 () Bool)

(assert (=> b!595081 m!572811))

(declare-fun m!572813 () Bool)

(assert (=> b!595081 m!572813))

(assert (=> b!595075 m!572801))

(assert (=> b!595075 m!572801))

(declare-fun m!572815 () Bool)

(assert (=> b!595075 m!572815))

(assert (=> b!595075 m!572801))

(declare-fun m!572817 () Bool)

(assert (=> b!595075 m!572817))

(assert (=> b!595082 m!572801))

(declare-fun m!572819 () Bool)

(assert (=> b!595092 m!572819))

(assert (=> b!595089 m!572801))

(assert (=> b!595089 m!572811))

(declare-fun m!572821 () Bool)

(assert (=> b!595089 m!572821))

(assert (=> b!595097 m!572801))

(assert (=> b!595097 m!572801))

(declare-fun m!572823 () Bool)

(assert (=> b!595097 m!572823))

(assert (=> b!595083 m!572801))

(assert (=> b!595083 m!572801))

(declare-fun m!572825 () Bool)

(assert (=> b!595083 m!572825))

(declare-fun m!572827 () Bool)

(assert (=> b!595084 m!572827))

(declare-fun m!572829 () Bool)

(assert (=> b!595077 m!572829))

(assert (=> b!595077 m!572801))

(assert (=> b!595077 m!572801))

(declare-fun m!572831 () Bool)

(assert (=> b!595077 m!572831))

(declare-fun m!572833 () Bool)

(assert (=> b!595079 m!572833))

(declare-fun m!572835 () Bool)

(assert (=> b!595094 m!572835))

(declare-fun m!572837 () Bool)

(assert (=> b!595094 m!572837))

(declare-fun m!572839 () Bool)

(assert (=> b!595094 m!572839))

(assert (=> b!595094 m!572801))

(assert (=> b!595094 m!572811))

(assert (=> b!595094 m!572801))

(declare-fun m!572841 () Bool)

(assert (=> b!595094 m!572841))

(declare-fun m!572843 () Bool)

(assert (=> b!595094 m!572843))

(declare-fun m!572845 () Bool)

(assert (=> b!595094 m!572845))

(declare-fun m!572847 () Bool)

(assert (=> b!595091 m!572847))

(declare-fun m!572849 () Bool)

(assert (=> start!54528 m!572849))

(declare-fun m!572851 () Bool)

(assert (=> start!54528 m!572851))

(declare-fun m!572853 () Bool)

(assert (=> b!595076 m!572853))

(declare-fun m!572855 () Bool)

(assert (=> b!595093 m!572855))

(push 1)

