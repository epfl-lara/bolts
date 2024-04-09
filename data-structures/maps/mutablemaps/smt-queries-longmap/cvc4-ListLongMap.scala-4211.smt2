; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57730 () Bool)

(assert start!57730)

(declare-fun b!638143 () Bool)

(declare-fun res!413148 () Bool)

(declare-fun e!365156 () Bool)

(assert (=> b!638143 (=> (not res!413148) (not e!365156))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38257 0))(
  ( (array!38258 (arr!18347 (Array (_ BitVec 32) (_ BitVec 64))) (size!18711 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38257)

(assert (=> b!638143 (= res!413148 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18347 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638144 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!365160 () Bool)

(declare-fun lt!295147 () array!38257)

(declare-fun arrayContainsKey!0 (array!38257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638144 (= e!365160 (arrayContainsKey!0 lt!295147 (select (arr!18347 a!2986) j!136) index!984))))

(declare-fun b!638145 () Bool)

(declare-fun res!413159 () Bool)

(declare-fun e!365151 () Bool)

(assert (=> b!638145 (=> res!413159 e!365151)))

(declare-datatypes ((List!12441 0))(
  ( (Nil!12438) (Cons!12437 (h!13482 (_ BitVec 64)) (t!18677 List!12441)) )
))
(declare-fun contains!3124 (List!12441 (_ BitVec 64)) Bool)

(assert (=> b!638145 (= res!413159 (contains!3124 Nil!12438 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!638146 () Bool)

(declare-fun e!365153 () Bool)

(declare-fun e!365161 () Bool)

(assert (=> b!638146 (= e!365153 e!365161)))

(declare-fun res!413165 () Bool)

(assert (=> b!638146 (=> res!413165 e!365161)))

(declare-fun lt!295149 () (_ BitVec 64))

(declare-fun lt!295146 () (_ BitVec 64))

(assert (=> b!638146 (= res!413165 (or (not (= (select (arr!18347 a!2986) j!136) lt!295146)) (not (= (select (arr!18347 a!2986) j!136) lt!295149)) (bvsge j!136 index!984)))))

(declare-fun e!365150 () Bool)

(assert (=> b!638146 e!365150))

(declare-fun res!413152 () Bool)

(assert (=> b!638146 (=> (not res!413152) (not e!365150))))

(assert (=> b!638146 (= res!413152 (= lt!295149 (select (arr!18347 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!638146 (= lt!295149 (select (store (arr!18347 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!638147 () Bool)

(declare-fun e!365154 () Bool)

(assert (=> b!638147 (= e!365156 e!365154)))

(declare-fun res!413163 () Bool)

(assert (=> b!638147 (=> (not res!413163) (not e!365154))))

(assert (=> b!638147 (= res!413163 (= (select (store (arr!18347 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638147 (= lt!295147 (array!38258 (store (arr!18347 a!2986) i!1108 k!1786) (size!18711 a!2986)))))

(declare-fun b!638148 () Bool)

(declare-fun e!365157 () Bool)

(assert (=> b!638148 (= e!365157 (not e!365153))))

(declare-fun res!413154 () Bool)

(assert (=> b!638148 (=> res!413154 e!365153)))

(declare-datatypes ((SeekEntryResult!6794 0))(
  ( (MissingZero!6794 (index!29489 (_ BitVec 32))) (Found!6794 (index!29490 (_ BitVec 32))) (Intermediate!6794 (undefined!7606 Bool) (index!29491 (_ BitVec 32)) (x!58269 (_ BitVec 32))) (Undefined!6794) (MissingVacant!6794 (index!29492 (_ BitVec 32))) )
))
(declare-fun lt!295148 () SeekEntryResult!6794)

(assert (=> b!638148 (= res!413154 (not (= lt!295148 (Found!6794 index!984))))))

(declare-datatypes ((Unit!21534 0))(
  ( (Unit!21535) )
))
(declare-fun lt!295145 () Unit!21534)

(declare-fun e!365159 () Unit!21534)

(assert (=> b!638148 (= lt!295145 e!365159)))

(declare-fun c!72866 () Bool)

(assert (=> b!638148 (= c!72866 (= lt!295148 Undefined!6794))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38257 (_ BitVec 32)) SeekEntryResult!6794)

(assert (=> b!638148 (= lt!295148 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295146 lt!295147 mask!3053))))

(declare-fun e!365155 () Bool)

(assert (=> b!638148 e!365155))

(declare-fun res!413162 () Bool)

(assert (=> b!638148 (=> (not res!413162) (not e!365155))))

(declare-fun lt!295152 () SeekEntryResult!6794)

(declare-fun lt!295155 () (_ BitVec 32))

(assert (=> b!638148 (= res!413162 (= lt!295152 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295155 vacantSpotIndex!68 lt!295146 lt!295147 mask!3053)))))

(assert (=> b!638148 (= lt!295152 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295155 vacantSpotIndex!68 (select (arr!18347 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638148 (= lt!295146 (select (store (arr!18347 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295154 () Unit!21534)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38257 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21534)

(assert (=> b!638148 (= lt!295154 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295155 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638148 (= lt!295155 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638149 () Bool)

(declare-fun res!413164 () Bool)

(declare-fun e!365152 () Bool)

(assert (=> b!638149 (=> (not res!413164) (not e!365152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638149 (= res!413164 (validKeyInArray!0 k!1786))))

(declare-fun b!638150 () Bool)

(declare-fun res!413146 () Bool)

(assert (=> b!638150 (=> res!413146 e!365151)))

(declare-fun noDuplicate!399 (List!12441) Bool)

(assert (=> b!638150 (= res!413146 (not (noDuplicate!399 Nil!12438)))))

(declare-fun b!638151 () Bool)

(declare-fun res!413150 () Bool)

(assert (=> b!638151 (=> (not res!413150) (not e!365152))))

(assert (=> b!638151 (= res!413150 (validKeyInArray!0 (select (arr!18347 a!2986) j!136)))))

(declare-fun b!638152 () Bool)

(declare-fun Unit!21536 () Unit!21534)

(assert (=> b!638152 (= e!365159 Unit!21536)))

(declare-fun b!638153 () Bool)

(declare-fun Unit!21537 () Unit!21534)

(assert (=> b!638153 (= e!365159 Unit!21537)))

(assert (=> b!638153 false))

(declare-fun b!638154 () Bool)

(assert (=> b!638154 (= e!365151 true)))

(declare-fun lt!295151 () Bool)

(assert (=> b!638154 (= lt!295151 (contains!3124 Nil!12438 k!1786))))

(declare-fun b!638155 () Bool)

(declare-fun res!413151 () Bool)

(assert (=> b!638155 (=> (not res!413151) (not e!365156))))

(declare-fun arrayNoDuplicates!0 (array!38257 (_ BitVec 32) List!12441) Bool)

(assert (=> b!638155 (= res!413151 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12438))))

(declare-fun b!638156 () Bool)

(declare-fun res!413157 () Bool)

(assert (=> b!638156 (=> (not res!413157) (not e!365156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38257 (_ BitVec 32)) Bool)

(assert (=> b!638156 (= res!413157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!413145 () Bool)

(assert (=> start!57730 (=> (not res!413145) (not e!365152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57730 (= res!413145 (validMask!0 mask!3053))))

(assert (=> start!57730 e!365152))

(assert (=> start!57730 true))

(declare-fun array_inv!14121 (array!38257) Bool)

(assert (=> start!57730 (array_inv!14121 a!2986)))

(declare-fun b!638157 () Bool)

(declare-fun e!365149 () Bool)

(assert (=> b!638157 (= e!365149 e!365160)))

(declare-fun res!413149 () Bool)

(assert (=> b!638157 (=> (not res!413149) (not e!365160))))

(assert (=> b!638157 (= res!413149 (arrayContainsKey!0 lt!295147 (select (arr!18347 a!2986) j!136) j!136))))

(declare-fun b!638158 () Bool)

(declare-fun res!413161 () Bool)

(assert (=> b!638158 (=> res!413161 e!365151)))

(assert (=> b!638158 (= res!413161 (contains!3124 Nil!12438 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!638159 () Bool)

(declare-fun lt!295150 () SeekEntryResult!6794)

(assert (=> b!638159 (= e!365155 (= lt!295150 lt!295152))))

(declare-fun b!638160 () Bool)

(assert (=> b!638160 (= e!365150 e!365149)))

(declare-fun res!413160 () Bool)

(assert (=> b!638160 (=> res!413160 e!365149)))

(assert (=> b!638160 (= res!413160 (or (not (= (select (arr!18347 a!2986) j!136) lt!295146)) (not (= (select (arr!18347 a!2986) j!136) lt!295149)) (bvsge j!136 index!984)))))

(declare-fun b!638161 () Bool)

(assert (=> b!638161 (= e!365161 e!365151)))

(declare-fun res!413158 () Bool)

(assert (=> b!638161 (=> res!413158 e!365151)))

(assert (=> b!638161 (= res!413158 (or (bvsge (size!18711 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18711 a!2986))))))

(assert (=> b!638161 (arrayContainsKey!0 lt!295147 (select (arr!18347 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295144 () Unit!21534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38257 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21534)

(assert (=> b!638161 (= lt!295144 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295147 (select (arr!18347 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638162 () Bool)

(declare-fun res!413155 () Bool)

(assert (=> b!638162 (=> (not res!413155) (not e!365152))))

(assert (=> b!638162 (= res!413155 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638163 () Bool)

(assert (=> b!638163 (= e!365154 e!365157)))

(declare-fun res!413156 () Bool)

(assert (=> b!638163 (=> (not res!413156) (not e!365157))))

(assert (=> b!638163 (= res!413156 (and (= lt!295150 (Found!6794 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18347 a!2986) index!984) (select (arr!18347 a!2986) j!136))) (not (= (select (arr!18347 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638163 (= lt!295150 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18347 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638164 () Bool)

(assert (=> b!638164 (= e!365152 e!365156)))

(declare-fun res!413153 () Bool)

(assert (=> b!638164 (=> (not res!413153) (not e!365156))))

(declare-fun lt!295153 () SeekEntryResult!6794)

(assert (=> b!638164 (= res!413153 (or (= lt!295153 (MissingZero!6794 i!1108)) (= lt!295153 (MissingVacant!6794 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38257 (_ BitVec 32)) SeekEntryResult!6794)

(assert (=> b!638164 (= lt!295153 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638165 () Bool)

(declare-fun res!413147 () Bool)

(assert (=> b!638165 (=> (not res!413147) (not e!365152))))

(assert (=> b!638165 (= res!413147 (and (= (size!18711 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18711 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18711 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57730 res!413145) b!638165))

(assert (= (and b!638165 res!413147) b!638151))

(assert (= (and b!638151 res!413150) b!638149))

(assert (= (and b!638149 res!413164) b!638162))

(assert (= (and b!638162 res!413155) b!638164))

(assert (= (and b!638164 res!413153) b!638156))

(assert (= (and b!638156 res!413157) b!638155))

(assert (= (and b!638155 res!413151) b!638143))

(assert (= (and b!638143 res!413148) b!638147))

(assert (= (and b!638147 res!413163) b!638163))

(assert (= (and b!638163 res!413156) b!638148))

(assert (= (and b!638148 res!413162) b!638159))

(assert (= (and b!638148 c!72866) b!638153))

(assert (= (and b!638148 (not c!72866)) b!638152))

(assert (= (and b!638148 (not res!413154)) b!638146))

(assert (= (and b!638146 res!413152) b!638160))

(assert (= (and b!638160 (not res!413160)) b!638157))

(assert (= (and b!638157 res!413149) b!638144))

(assert (= (and b!638146 (not res!413165)) b!638161))

(assert (= (and b!638161 (not res!413158)) b!638150))

(assert (= (and b!638150 (not res!413146)) b!638145))

(assert (= (and b!638145 (not res!413159)) b!638158))

(assert (= (and b!638158 (not res!413161)) b!638154))

(declare-fun m!612149 () Bool)

(assert (=> b!638148 m!612149))

(declare-fun m!612151 () Bool)

(assert (=> b!638148 m!612151))

(declare-fun m!612153 () Bool)

(assert (=> b!638148 m!612153))

(assert (=> b!638148 m!612153))

(declare-fun m!612155 () Bool)

(assert (=> b!638148 m!612155))

(declare-fun m!612157 () Bool)

(assert (=> b!638148 m!612157))

(declare-fun m!612159 () Bool)

(assert (=> b!638148 m!612159))

(declare-fun m!612161 () Bool)

(assert (=> b!638148 m!612161))

(declare-fun m!612163 () Bool)

(assert (=> b!638148 m!612163))

(declare-fun m!612165 () Bool)

(assert (=> b!638162 m!612165))

(assert (=> b!638144 m!612153))

(assert (=> b!638144 m!612153))

(declare-fun m!612167 () Bool)

(assert (=> b!638144 m!612167))

(declare-fun m!612169 () Bool)

(assert (=> b!638143 m!612169))

(declare-fun m!612171 () Bool)

(assert (=> b!638145 m!612171))

(assert (=> b!638160 m!612153))

(declare-fun m!612173 () Bool)

(assert (=> b!638163 m!612173))

(assert (=> b!638163 m!612153))

(assert (=> b!638163 m!612153))

(declare-fun m!612175 () Bool)

(assert (=> b!638163 m!612175))

(declare-fun m!612177 () Bool)

(assert (=> b!638149 m!612177))

(assert (=> b!638147 m!612157))

(declare-fun m!612179 () Bool)

(assert (=> b!638147 m!612179))

(declare-fun m!612181 () Bool)

(assert (=> start!57730 m!612181))

(declare-fun m!612183 () Bool)

(assert (=> start!57730 m!612183))

(assert (=> b!638157 m!612153))

(assert (=> b!638157 m!612153))

(declare-fun m!612185 () Bool)

(assert (=> b!638157 m!612185))

(assert (=> b!638161 m!612153))

(assert (=> b!638161 m!612153))

(declare-fun m!612187 () Bool)

(assert (=> b!638161 m!612187))

(assert (=> b!638161 m!612153))

(declare-fun m!612189 () Bool)

(assert (=> b!638161 m!612189))

(assert (=> b!638151 m!612153))

(assert (=> b!638151 m!612153))

(declare-fun m!612191 () Bool)

(assert (=> b!638151 m!612191))

(declare-fun m!612193 () Bool)

(assert (=> b!638164 m!612193))

(declare-fun m!612195 () Bool)

(assert (=> b!638158 m!612195))

(declare-fun m!612197 () Bool)

(assert (=> b!638155 m!612197))

(declare-fun m!612199 () Bool)

(assert (=> b!638156 m!612199))

(declare-fun m!612201 () Bool)

(assert (=> b!638154 m!612201))

(declare-fun m!612203 () Bool)

(assert (=> b!638150 m!612203))

(assert (=> b!638146 m!612153))

(assert (=> b!638146 m!612157))

(declare-fun m!612205 () Bool)

(assert (=> b!638146 m!612205))

(push 1)

