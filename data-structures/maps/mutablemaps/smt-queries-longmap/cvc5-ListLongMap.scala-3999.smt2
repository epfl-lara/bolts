; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54192 () Bool)

(assert start!54192)

(declare-fun b!592136 () Bool)

(declare-fun e!338148 () Bool)

(declare-fun e!338152 () Bool)

(assert (=> b!592136 (= e!338148 e!338152)))

(declare-fun res!379167 () Bool)

(assert (=> b!592136 (=> (not res!379167) (not e!338152))))

(declare-datatypes ((SeekEntryResult!6156 0))(
  ( (MissingZero!6156 (index!26859 (_ BitVec 32))) (Found!6156 (index!26860 (_ BitVec 32))) (Intermediate!6156 (undefined!6968 Bool) (index!26861 (_ BitVec 32)) (x!55677 (_ BitVec 32))) (Undefined!6156) (MissingVacant!6156 (index!26862 (_ BitVec 32))) )
))
(declare-fun lt!268833 () SeekEntryResult!6156)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!592136 (= res!379167 (or (= lt!268833 (MissingZero!6156 i!1108)) (= lt!268833 (MissingVacant!6156 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36885 0))(
  ( (array!36886 (arr!17709 (Array (_ BitVec 32) (_ BitVec 64))) (size!18073 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36885)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36885 (_ BitVec 32)) SeekEntryResult!6156)

(assert (=> b!592136 (= lt!268833 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!592137 () Bool)

(declare-fun e!338155 () Bool)

(declare-fun lt!268841 () SeekEntryResult!6156)

(declare-fun lt!268842 () SeekEntryResult!6156)

(assert (=> b!592137 (= e!338155 (= lt!268841 lt!268842))))

(declare-fun b!592138 () Bool)

(declare-fun e!338144 () Bool)

(declare-fun e!338146 () Bool)

(assert (=> b!592138 (= e!338144 e!338146)))

(declare-fun res!379166 () Bool)

(assert (=> b!592138 (=> res!379166 e!338146)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268837 () (_ BitVec 64))

(declare-fun lt!268835 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!592138 (= res!379166 (or (not (= (select (arr!17709 a!2986) j!136) lt!268837)) (not (= (select (arr!17709 a!2986) j!136) lt!268835)) (bvsge j!136 index!984)))))

(declare-fun b!592139 () Bool)

(declare-fun res!379170 () Bool)

(assert (=> b!592139 (=> (not res!379170) (not e!338148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592139 (= res!379170 (validKeyInArray!0 (select (arr!17709 a!2986) j!136)))))

(declare-fun b!592140 () Bool)

(declare-fun e!338147 () Bool)

(assert (=> b!592140 (= e!338152 e!338147)))

(declare-fun res!379160 () Bool)

(assert (=> b!592140 (=> (not res!379160) (not e!338147))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!592140 (= res!379160 (= (select (store (arr!17709 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268838 () array!36885)

(assert (=> b!592140 (= lt!268838 (array!36886 (store (arr!17709 a!2986) i!1108 k!1786) (size!18073 a!2986)))))

(declare-fun b!592141 () Bool)

(declare-fun res!379171 () Bool)

(assert (=> b!592141 (=> (not res!379171) (not e!338148))))

(declare-fun arrayContainsKey!0 (array!36885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592141 (= res!379171 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592142 () Bool)

(declare-fun res!379158 () Bool)

(assert (=> b!592142 (=> (not res!379158) (not e!338152))))

(declare-datatypes ((List!11803 0))(
  ( (Nil!11800) (Cons!11799 (h!12844 (_ BitVec 64)) (t!18039 List!11803)) )
))
(declare-fun arrayNoDuplicates!0 (array!36885 (_ BitVec 32) List!11803) Bool)

(assert (=> b!592142 (= res!379158 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11800))))

(declare-fun b!592143 () Bool)

(declare-fun e!338151 () Bool)

(assert (=> b!592143 (= e!338146 e!338151)))

(declare-fun res!379172 () Bool)

(assert (=> b!592143 (=> (not res!379172) (not e!338151))))

(assert (=> b!592143 (= res!379172 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) j!136))))

(declare-fun b!592144 () Bool)

(declare-datatypes ((Unit!18568 0))(
  ( (Unit!18569) )
))
(declare-fun e!338150 () Unit!18568)

(declare-fun Unit!18570 () Unit!18568)

(assert (=> b!592144 (= e!338150 Unit!18570)))

(declare-fun b!592146 () Bool)

(declare-fun e!338154 () Bool)

(assert (=> b!592146 (= e!338147 e!338154)))

(declare-fun res!379161 () Bool)

(assert (=> b!592146 (=> (not res!379161) (not e!338154))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!592146 (= res!379161 (and (= lt!268841 (Found!6156 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17709 a!2986) index!984) (select (arr!17709 a!2986) j!136))) (not (= (select (arr!17709 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36885 (_ BitVec 32)) SeekEntryResult!6156)

(assert (=> b!592146 (= lt!268841 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17709 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592147 () Bool)

(declare-fun res!379159 () Bool)

(assert (=> b!592147 (=> (not res!379159) (not e!338148))))

(assert (=> b!592147 (= res!379159 (and (= (size!18073 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18073 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18073 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592148 () Bool)

(declare-fun res!379157 () Bool)

(assert (=> b!592148 (=> (not res!379157) (not e!338152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36885 (_ BitVec 32)) Bool)

(assert (=> b!592148 (= res!379157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592149 () Bool)

(declare-fun e!338145 () Bool)

(assert (=> b!592149 (= e!338145 (or (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18073 a!2986)) (bvslt (size!18073 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!592149 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268840 () Unit!18568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36885 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18568)

(assert (=> b!592149 (= lt!268840 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268838 (select (arr!17709 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592150 () Bool)

(assert (=> b!592150 (= e!338151 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) index!984))))

(declare-fun b!592151 () Bool)

(declare-fun Unit!18571 () Unit!18568)

(assert (=> b!592151 (= e!338150 Unit!18571)))

(assert (=> b!592151 false))

(declare-fun b!592152 () Bool)

(declare-fun res!379165 () Bool)

(assert (=> b!592152 (=> (not res!379165) (not e!338152))))

(assert (=> b!592152 (= res!379165 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17709 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592153 () Bool)

(declare-fun e!338153 () Bool)

(assert (=> b!592153 (= e!338154 (not e!338153))))

(declare-fun res!379162 () Bool)

(assert (=> b!592153 (=> res!379162 e!338153)))

(declare-fun lt!268832 () SeekEntryResult!6156)

(assert (=> b!592153 (= res!379162 (not (= lt!268832 (Found!6156 index!984))))))

(declare-fun lt!268836 () Unit!18568)

(assert (=> b!592153 (= lt!268836 e!338150)))

(declare-fun c!66857 () Bool)

(assert (=> b!592153 (= c!66857 (= lt!268832 Undefined!6156))))

(assert (=> b!592153 (= lt!268832 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268837 lt!268838 mask!3053))))

(assert (=> b!592153 e!338155))

(declare-fun res!379163 () Bool)

(assert (=> b!592153 (=> (not res!379163) (not e!338155))))

(declare-fun lt!268834 () (_ BitVec 32))

(assert (=> b!592153 (= res!379163 (= lt!268842 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 lt!268837 lt!268838 mask!3053)))))

(assert (=> b!592153 (= lt!268842 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 (select (arr!17709 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!592153 (= lt!268837 (select (store (arr!17709 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268839 () Unit!18568)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36885 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18568)

(assert (=> b!592153 (= lt!268839 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592153 (= lt!268834 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592154 () Bool)

(declare-fun res!379156 () Bool)

(assert (=> b!592154 (=> (not res!379156) (not e!338148))))

(assert (=> b!592154 (= res!379156 (validKeyInArray!0 k!1786))))

(declare-fun b!592145 () Bool)

(assert (=> b!592145 (= e!338153 e!338145)))

(declare-fun res!379168 () Bool)

(assert (=> b!592145 (=> res!379168 e!338145)))

(assert (=> b!592145 (= res!379168 (or (not (= (select (arr!17709 a!2986) j!136) lt!268837)) (not (= (select (arr!17709 a!2986) j!136) lt!268835)) (bvsge j!136 index!984)))))

(assert (=> b!592145 e!338144))

(declare-fun res!379164 () Bool)

(assert (=> b!592145 (=> (not res!379164) (not e!338144))))

(assert (=> b!592145 (= res!379164 (= lt!268835 (select (arr!17709 a!2986) j!136)))))

(assert (=> b!592145 (= lt!268835 (select (store (arr!17709 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!379169 () Bool)

(assert (=> start!54192 (=> (not res!379169) (not e!338148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54192 (= res!379169 (validMask!0 mask!3053))))

(assert (=> start!54192 e!338148))

(assert (=> start!54192 true))

(declare-fun array_inv!13483 (array!36885) Bool)

(assert (=> start!54192 (array_inv!13483 a!2986)))

(assert (= (and start!54192 res!379169) b!592147))

(assert (= (and b!592147 res!379159) b!592139))

(assert (= (and b!592139 res!379170) b!592154))

(assert (= (and b!592154 res!379156) b!592141))

(assert (= (and b!592141 res!379171) b!592136))

(assert (= (and b!592136 res!379167) b!592148))

(assert (= (and b!592148 res!379157) b!592142))

(assert (= (and b!592142 res!379158) b!592152))

(assert (= (and b!592152 res!379165) b!592140))

(assert (= (and b!592140 res!379160) b!592146))

(assert (= (and b!592146 res!379161) b!592153))

(assert (= (and b!592153 res!379163) b!592137))

(assert (= (and b!592153 c!66857) b!592151))

(assert (= (and b!592153 (not c!66857)) b!592144))

(assert (= (and b!592153 (not res!379162)) b!592145))

(assert (= (and b!592145 res!379164) b!592138))

(assert (= (and b!592138 (not res!379166)) b!592143))

(assert (= (and b!592143 res!379172) b!592150))

(assert (= (and b!592145 (not res!379168)) b!592149))

(declare-fun m!570291 () Bool)

(assert (=> b!592138 m!570291))

(declare-fun m!570293 () Bool)

(assert (=> b!592146 m!570293))

(assert (=> b!592146 m!570291))

(assert (=> b!592146 m!570291))

(declare-fun m!570295 () Bool)

(assert (=> b!592146 m!570295))

(declare-fun m!570297 () Bool)

(assert (=> b!592152 m!570297))

(declare-fun m!570299 () Bool)

(assert (=> b!592148 m!570299))

(assert (=> b!592143 m!570291))

(assert (=> b!592143 m!570291))

(declare-fun m!570301 () Bool)

(assert (=> b!592143 m!570301))

(declare-fun m!570303 () Bool)

(assert (=> b!592140 m!570303))

(declare-fun m!570305 () Bool)

(assert (=> b!592140 m!570305))

(assert (=> b!592139 m!570291))

(assert (=> b!592139 m!570291))

(declare-fun m!570307 () Bool)

(assert (=> b!592139 m!570307))

(declare-fun m!570309 () Bool)

(assert (=> b!592153 m!570309))

(declare-fun m!570311 () Bool)

(assert (=> b!592153 m!570311))

(assert (=> b!592153 m!570291))

(assert (=> b!592153 m!570303))

(declare-fun m!570313 () Bool)

(assert (=> b!592153 m!570313))

(assert (=> b!592153 m!570291))

(declare-fun m!570315 () Bool)

(assert (=> b!592153 m!570315))

(declare-fun m!570317 () Bool)

(assert (=> b!592153 m!570317))

(declare-fun m!570319 () Bool)

(assert (=> b!592153 m!570319))

(declare-fun m!570321 () Bool)

(assert (=> b!592154 m!570321))

(assert (=> b!592149 m!570291))

(assert (=> b!592149 m!570291))

(declare-fun m!570323 () Bool)

(assert (=> b!592149 m!570323))

(assert (=> b!592149 m!570291))

(declare-fun m!570325 () Bool)

(assert (=> b!592149 m!570325))

(declare-fun m!570327 () Bool)

(assert (=> start!54192 m!570327))

(declare-fun m!570329 () Bool)

(assert (=> start!54192 m!570329))

(declare-fun m!570331 () Bool)

(assert (=> b!592142 m!570331))

(declare-fun m!570333 () Bool)

(assert (=> b!592141 m!570333))

(assert (=> b!592145 m!570291))

(assert (=> b!592145 m!570303))

(declare-fun m!570335 () Bool)

(assert (=> b!592145 m!570335))

(assert (=> b!592150 m!570291))

(assert (=> b!592150 m!570291))

(declare-fun m!570337 () Bool)

(assert (=> b!592150 m!570337))

(declare-fun m!570339 () Bool)

(assert (=> b!592136 m!570339))

(push 1)

(assert (not b!592139))

(assert (not b!592143))

(assert (not b!592142))

(assert (not b!592154))

(assert (not b!592141))

(assert (not b!592149))

(assert (not b!592150))

(assert (not b!592136))

(assert (not b!592146))

(assert (not b!592148))

(assert (not start!54192))

(assert (not b!592153))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86115 () Bool)

(declare-fun res!379294 () Bool)

(declare-fun e!338262 () Bool)

(assert (=> d!86115 (=> res!379294 e!338262)))

(assert (=> d!86115 (= res!379294 (= (select (arr!17709 lt!268838) index!984) (select (arr!17709 a!2986) j!136)))))

(assert (=> d!86115 (= (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) index!984) e!338262)))

(declare-fun b!592318 () Bool)

(declare-fun e!338263 () Bool)

(assert (=> b!592318 (= e!338262 e!338263)))

(declare-fun res!379295 () Bool)

(assert (=> b!592318 (=> (not res!379295) (not e!338263))))

(assert (=> b!592318 (= res!379295 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18073 lt!268838)))))

(declare-fun b!592319 () Bool)

(assert (=> b!592319 (= e!338263 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86115 (not res!379294)) b!592318))

(assert (= (and b!592318 res!379295) b!592319))

(declare-fun m!570489 () Bool)

(assert (=> d!86115 m!570489))

(assert (=> b!592319 m!570291))

(declare-fun m!570491 () Bool)

(assert (=> b!592319 m!570491))

(assert (=> b!592150 d!86115))

(declare-fun d!86117 () Bool)

(assert (=> d!86117 (= (validKeyInArray!0 (select (arr!17709 a!2986) j!136)) (and (not (= (select (arr!17709 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17709 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592139 d!86117))

(declare-fun d!86121 () Bool)

(declare-fun res!379296 () Bool)

(declare-fun e!338264 () Bool)

(assert (=> d!86121 (=> res!379296 e!338264)))

(assert (=> d!86121 (= res!379296 (= (select (arr!17709 lt!268838) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17709 a!2986) j!136)))))

(assert (=> d!86121 (= (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!338264)))

(declare-fun b!592320 () Bool)

(declare-fun e!338265 () Bool)

(assert (=> b!592320 (= e!338264 e!338265)))

(declare-fun res!379297 () Bool)

(assert (=> b!592320 (=> (not res!379297) (not e!338265))))

(assert (=> b!592320 (= res!379297 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18073 lt!268838)))))

(declare-fun b!592321 () Bool)

(assert (=> b!592321 (= e!338265 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86121 (not res!379296)) b!592320))

(assert (= (and b!592320 res!379297) b!592321))

(declare-fun m!570493 () Bool)

(assert (=> d!86121 m!570493))

(assert (=> b!592321 m!570291))

(declare-fun m!570495 () Bool)

(assert (=> b!592321 m!570495))

(assert (=> b!592149 d!86121))

(declare-fun d!86123 () Bool)

(assert (=> d!86123 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268930 () Unit!18568)

(declare-fun choose!114 (array!36885 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18568)

(assert (=> d!86123 (= lt!268930 (choose!114 lt!268838 (select (arr!17709 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86123 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86123 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268838 (select (arr!17709 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!268930)))

(declare-fun bs!18286 () Bool)

(assert (= bs!18286 d!86123))

(assert (=> bs!18286 m!570291))

(assert (=> bs!18286 m!570323))

(assert (=> bs!18286 m!570291))

(declare-fun m!570497 () Bool)

(assert (=> bs!18286 m!570497))

(assert (=> b!592149 d!86123))

(declare-fun d!86125 () Bool)

(declare-fun res!379304 () Bool)

(declare-fun e!338272 () Bool)

(assert (=> d!86125 (=> res!379304 e!338272)))

(assert (=> d!86125 (= res!379304 (= (select (arr!17709 lt!268838) j!136) (select (arr!17709 a!2986) j!136)))))

(assert (=> d!86125 (= (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) j!136) e!338272)))

(declare-fun b!592328 () Bool)

(declare-fun e!338273 () Bool)

(assert (=> b!592328 (= e!338272 e!338273)))

(declare-fun res!379305 () Bool)

(assert (=> b!592328 (=> (not res!379305) (not e!338273))))

(assert (=> b!592328 (= res!379305 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18073 lt!268838)))))

(declare-fun b!592329 () Bool)

(assert (=> b!592329 (= e!338273 (arrayContainsKey!0 lt!268838 (select (arr!17709 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86125 (not res!379304)) b!592328))

(assert (= (and b!592328 res!379305) b!592329))

(declare-fun m!570503 () Bool)

(assert (=> d!86125 m!570503))

(assert (=> b!592329 m!570291))

(declare-fun m!570505 () Bool)

(assert (=> b!592329 m!570505))

(assert (=> b!592143 d!86125))

(declare-fun b!592352 () Bool)

(declare-fun e!338289 () Bool)

(declare-fun e!338290 () Bool)

(assert (=> b!592352 (= e!338289 e!338290)))

(declare-fun res!379314 () Bool)

(assert (=> b!592352 (=> (not res!379314) (not e!338290))))

(declare-fun e!338288 () Bool)

(assert (=> b!592352 (= res!379314 (not e!338288))))

(declare-fun res!379312 () Bool)

(assert (=> b!592352 (=> (not res!379312) (not e!338288))))

(assert (=> b!592352 (= res!379312 (validKeyInArray!0 (select (arr!17709 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32825 () Bool)

(declare-fun call!32828 () Bool)

(declare-fun c!66887 () Bool)

(assert (=> bm!32825 (= call!32828 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66887 (Cons!11799 (select (arr!17709 a!2986) #b00000000000000000000000000000000) Nil!11800) Nil!11800)))))

(declare-fun b!592353 () Bool)

(declare-fun contains!2914 (List!11803 (_ BitVec 64)) Bool)

(assert (=> b!592353 (= e!338288 (contains!2914 Nil!11800 (select (arr!17709 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!592354 () Bool)

(declare-fun e!338291 () Bool)

(assert (=> b!592354 (= e!338290 e!338291)))

(assert (=> b!592354 (= c!66887 (validKeyInArray!0 (select (arr!17709 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!592355 () Bool)

(assert (=> b!592355 (= e!338291 call!32828)))

(declare-fun d!86129 () Bool)

(declare-fun res!379313 () Bool)

(assert (=> d!86129 (=> res!379313 e!338289)))

(assert (=> d!86129 (= res!379313 (bvsge #b00000000000000000000000000000000 (size!18073 a!2986)))))

(assert (=> d!86129 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11800) e!338289)))

(declare-fun b!592356 () Bool)

(assert (=> b!592356 (= e!338291 call!32828)))

(assert (= (and d!86129 (not res!379313)) b!592352))

(assert (= (and b!592352 res!379312) b!592353))

(assert (= (and b!592352 res!379314) b!592354))

(assert (= (and b!592354 c!66887) b!592355))

(assert (= (and b!592354 (not c!66887)) b!592356))

(assert (= (or b!592355 b!592356) bm!32825))

(declare-fun m!570507 () Bool)

(assert (=> b!592352 m!570507))

(assert (=> b!592352 m!570507))

(declare-fun m!570509 () Bool)

(assert (=> b!592352 m!570509))

(assert (=> bm!32825 m!570507))

(declare-fun m!570511 () Bool)

(assert (=> bm!32825 m!570511))

(assert (=> b!592353 m!570507))

(assert (=> b!592353 m!570507))

(declare-fun m!570513 () Bool)

(assert (=> b!592353 m!570513))

(assert (=> b!592354 m!570507))

(assert (=> b!592354 m!570507))

(assert (=> b!592354 m!570509))

(assert (=> b!592142 d!86129))

(declare-fun b!592413 () Bool)

(declare-fun e!338325 () SeekEntryResult!6156)

(assert (=> b!592413 (= e!338325 (Found!6156 lt!268834))))

(declare-fun b!592414 () Bool)

(declare-fun e!338326 () SeekEntryResult!6156)

(assert (=> b!592414 (= e!338326 Undefined!6156)))

(declare-fun b!592415 () Bool)

(declare-fun c!66912 () Bool)

(declare-fun lt!268961 () (_ BitVec 64))

(assert (=> b!592415 (= c!66912 (= lt!268961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!338324 () SeekEntryResult!6156)

(assert (=> b!592415 (= e!338325 e!338324)))

(declare-fun d!86131 () Bool)

(declare-fun lt!268962 () SeekEntryResult!6156)

(assert (=> d!86131 (and (or (is-Undefined!6156 lt!268962) (not (is-Found!6156 lt!268962)) (and (bvsge (index!26860 lt!268962) #b00000000000000000000000000000000) (bvslt (index!26860 lt!268962) (size!18073 lt!268838)))) (or (is-Undefined!6156 lt!268962) (is-Found!6156 lt!268962) (not (is-MissingVacant!6156 lt!268962)) (not (= (index!26862 lt!268962) vacantSpotIndex!68)) (and (bvsge (index!26862 lt!268962) #b00000000000000000000000000000000) (bvslt (index!26862 lt!268962) (size!18073 lt!268838)))) (or (is-Undefined!6156 lt!268962) (ite (is-Found!6156 lt!268962) (= (select (arr!17709 lt!268838) (index!26860 lt!268962)) lt!268837) (and (is-MissingVacant!6156 lt!268962) (= (index!26862 lt!268962) vacantSpotIndex!68) (= (select (arr!17709 lt!268838) (index!26862 lt!268962)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86131 (= lt!268962 e!338326)))

(declare-fun c!66913 () Bool)

(assert (=> d!86131 (= c!66913 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86131 (= lt!268961 (select (arr!17709 lt!268838) lt!268834))))

(assert (=> d!86131 (validMask!0 mask!3053)))

(assert (=> d!86131 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 lt!268837 lt!268838 mask!3053) lt!268962)))

(declare-fun b!592416 () Bool)

(assert (=> b!592416 (= e!338324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!268834 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!268837 lt!268838 mask!3053))))

(declare-fun b!592417 () Bool)

(assert (=> b!592417 (= e!338326 e!338325)))

(declare-fun c!66914 () Bool)

(assert (=> b!592417 (= c!66914 (= lt!268961 lt!268837))))

(declare-fun b!592418 () Bool)

(assert (=> b!592418 (= e!338324 (MissingVacant!6156 vacantSpotIndex!68))))

(assert (= (and d!86131 c!66913) b!592414))

(assert (= (and d!86131 (not c!66913)) b!592417))

(assert (= (and b!592417 c!66914) b!592413))

(assert (= (and b!592417 (not c!66914)) b!592415))

(assert (= (and b!592415 c!66912) b!592418))

(assert (= (and b!592415 (not c!66912)) b!592416))

(declare-fun m!570551 () Bool)

(assert (=> d!86131 m!570551))

(declare-fun m!570553 () Bool)

(assert (=> d!86131 m!570553))

(declare-fun m!570555 () Bool)

(assert (=> d!86131 m!570555))

(assert (=> d!86131 m!570327))

(declare-fun m!570557 () Bool)

(assert (=> b!592416 m!570557))

(assert (=> b!592416 m!570557))

(declare-fun m!570559 () Bool)

(assert (=> b!592416 m!570559))

(assert (=> b!592153 d!86131))

(declare-fun d!86143 () Bool)

(declare-fun lt!268965 () (_ BitVec 32))

(assert (=> d!86143 (and (bvsge lt!268965 #b00000000000000000000000000000000) (bvslt lt!268965 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86143 (= lt!268965 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86143 (validMask!0 mask!3053)))

(assert (=> d!86143 (= (nextIndex!0 index!984 x!910 mask!3053) lt!268965)))

(declare-fun bs!18287 () Bool)

(assert (= bs!18287 d!86143))

(declare-fun m!570561 () Bool)

(assert (=> bs!18287 m!570561))

(assert (=> bs!18287 m!570327))

(assert (=> b!592153 d!86143))

(declare-fun d!86145 () Bool)

(declare-fun e!338350 () Bool)

(assert (=> d!86145 e!338350))

(declare-fun res!379334 () Bool)

(assert (=> d!86145 (=> (not res!379334) (not e!338350))))

(assert (=> d!86145 (= res!379334 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18073 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18073 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18073 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18073 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18073 a!2986))))))

(declare-fun lt!268977 () Unit!18568)

(declare-fun choose!9 (array!36885 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18568)

(assert (=> d!86145 (= lt!268977 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86145 (validMask!0 mask!3053)))

(assert (=> d!86145 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 mask!3053) lt!268977)))

(declare-fun b!592454 () Bool)

(assert (=> b!592454 (= e!338350 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 (select (arr!17709 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268834 vacantSpotIndex!68 (select (store (arr!17709 a!2986) i!1108 k!1786) j!136) (array!36886 (store (arr!17709 a!2986) i!1108 k!1786) (size!18073 a!2986)) mask!3053)))))

(assert (= (and d!86145 res!379334) b!592454))

(declare-fun m!570597 () Bool)

(assert (=> d!86145 m!570597))

(assert (=> d!86145 m!570327))

(assert (=> b!592454 m!570303))

(assert (=> b!592454 m!570291))

(assert (=> b!592454 m!570315))

(assert (=> b!592454 m!570311))

(assert (=> b!592454 m!570311))

(declare-fun m!570599 () Bool)

(assert (=> b!592454 m!570599))

(assert (=> b!592454 m!570291))

(assert (=> b!592153 d!86145))

(declare-fun b!592455 () Bool)

(declare-fun e!338352 () SeekEntryResult!6156)

(assert (=> b!592455 (= e!338352 (Found!6156 lt!268834))))

(declare-fun b!592456 () Bool)

(declare-fun e!338353 () SeekEntryResult!6156)

(assert (=> b!592456 (= e!338353 Undefined!6156)))

(declare-fun b!592457 () Bool)

(declare-fun c!66927 () Bool)

(declare-fun lt!268978 () (_ BitVec 64))

(assert (=> b!592457 (= c!66927 (= lt!268978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!338351 () SeekEntryResult!6156)

(assert (=> b!592457 (= e!338352 e!338351)))

(declare-fun lt!268979 () SeekEntryResult!6156)

(declare-fun d!86167 () Bool)

(assert (=> d!86167 (and (or (is-Undefined!6156 lt!268979) (not (is-Found!6156 lt!268979)) (and (bvsge (index!26860 lt!268979) #b00000000000000000000000000000000) (bvslt (index!26860 lt!268979) (size!18073 a!2986)))) (or (is-Undefined!6156 lt!268979) (is-Found!6156 lt!268979) (not (is-MissingVacant!6156 lt!268979)) (not (= (index!26862 lt!268979) vacantSpotIndex!68)) (and (bvsge (index!26862 lt!268979) #b00000000000000000000000000000000) (bvslt (index!26862 lt!268979) (size!18073 a!2986)))) (or (is-Undefined!6156 lt!268979) (ite (is-Found!6156 lt!268979) (= (select (arr!17709 a!2986) (index!26860 lt!268979)) (select (arr!17709 a!2986) j!136)) (and (is-MissingVacant!6156 lt!268979) (= (index!26862 lt!268979) vacantSpotIndex!68) (= (select (arr!17709 a!2986) (index!26862 lt!268979)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

