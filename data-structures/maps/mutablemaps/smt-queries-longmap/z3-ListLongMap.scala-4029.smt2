; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54890 () Bool)

(assert start!54890)

(declare-fun b!600149 () Bool)

(declare-fun res!385225 () Bool)

(declare-fun e!343137 () Bool)

(assert (=> b!600149 (=> res!385225 e!343137)))

(declare-datatypes ((List!11894 0))(
  ( (Nil!11891) (Cons!11890 (h!12935 (_ BitVec 64)) (t!18130 List!11894)) )
))
(declare-fun contains!2979 (List!11894 (_ BitVec 64)) Bool)

(assert (=> b!600149 (= res!385225 (contains!2979 Nil!11891 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600150 () Bool)

(declare-fun e!343140 () Bool)

(assert (=> b!600150 (= e!343140 e!343137)))

(declare-fun res!385222 () Bool)

(assert (=> b!600150 (=> res!385222 e!343137)))

(declare-datatypes ((array!37088 0))(
  ( (array!37089 (arr!17800 (Array (_ BitVec 32) (_ BitVec 64))) (size!18164 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37088)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!600150 (= res!385222 (or (bvsge (size!18164 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18164 a!2986))))))

(declare-fun lt!273036 () array!37088)

(declare-fun arrayNoDuplicates!0 (array!37088 (_ BitVec 32) List!11894) Bool)

(assert (=> b!600150 (arrayNoDuplicates!0 lt!273036 j!136 Nil!11891)))

(declare-datatypes ((Unit!18932 0))(
  ( (Unit!18933) )
))
(declare-fun lt!273040 () Unit!18932)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37088 (_ BitVec 32) (_ BitVec 32)) Unit!18932)

(assert (=> b!600150 (= lt!273040 (lemmaNoDuplicateFromThenFromBigger!0 lt!273036 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600150 (arrayNoDuplicates!0 lt!273036 #b00000000000000000000000000000000 Nil!11891)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!273044 () Unit!18932)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37088 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11894) Unit!18932)

(assert (=> b!600150 (= lt!273044 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11891))))

(declare-fun arrayContainsKey!0 (array!37088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600150 (arrayContainsKey!0 lt!273036 (select (arr!17800 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273043 () Unit!18932)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37088 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18932)

(assert (=> b!600150 (= lt!273043 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273036 (select (arr!17800 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600151 () Bool)

(declare-fun e!343138 () Unit!18932)

(declare-fun Unit!18934 () Unit!18932)

(assert (=> b!600151 (= e!343138 Unit!18934)))

(assert (=> b!600151 false))

(declare-fun b!600152 () Bool)

(declare-fun res!385226 () Bool)

(declare-fun e!343133 () Bool)

(assert (=> b!600152 (=> (not res!385226) (not e!343133))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37088 (_ BitVec 32)) Bool)

(assert (=> b!600152 (= res!385226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600153 () Bool)

(declare-fun res!385223 () Bool)

(declare-fun e!343131 () Bool)

(assert (=> b!600153 (=> (not res!385223) (not e!343131))))

(assert (=> b!600153 (= res!385223 (and (= (size!18164 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18164 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18164 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600154 () Bool)

(declare-fun e!343132 () Bool)

(declare-datatypes ((SeekEntryResult!6247 0))(
  ( (MissingZero!6247 (index!27244 (_ BitVec 32))) (Found!6247 (index!27245 (_ BitVec 32))) (Intermediate!6247 (undefined!7059 Bool) (index!27246 (_ BitVec 32)) (x!56071 (_ BitVec 32))) (Undefined!6247) (MissingVacant!6247 (index!27247 (_ BitVec 32))) )
))
(declare-fun lt!273048 () SeekEntryResult!6247)

(declare-fun lt!273045 () SeekEntryResult!6247)

(assert (=> b!600154 (= e!343132 (= lt!273048 lt!273045))))

(declare-fun res!385228 () Bool)

(assert (=> start!54890 (=> (not res!385228) (not e!343131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54890 (= res!385228 (validMask!0 mask!3053))))

(assert (=> start!54890 e!343131))

(assert (=> start!54890 true))

(declare-fun array_inv!13574 (array!37088) Bool)

(assert (=> start!54890 (array_inv!13574 a!2986)))

(declare-fun b!600155 () Bool)

(assert (=> b!600155 (= e!343131 e!343133)))

(declare-fun res!385238 () Bool)

(assert (=> b!600155 (=> (not res!385238) (not e!343133))))

(declare-fun lt!273041 () SeekEntryResult!6247)

(assert (=> b!600155 (= res!385238 (or (= lt!273041 (MissingZero!6247 i!1108)) (= lt!273041 (MissingVacant!6247 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37088 (_ BitVec 32)) SeekEntryResult!6247)

(assert (=> b!600155 (= lt!273041 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun e!343139 () Bool)

(declare-fun b!600156 () Bool)

(assert (=> b!600156 (= e!343139 (arrayContainsKey!0 lt!273036 (select (arr!17800 a!2986) j!136) index!984))))

(declare-fun b!600157 () Bool)

(assert (=> b!600157 (= e!343137 true)))

(declare-fun lt!273042 () Bool)

(assert (=> b!600157 (= lt!273042 (contains!2979 Nil!11891 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600158 () Bool)

(declare-fun e!343129 () Bool)

(declare-fun e!343135 () Bool)

(assert (=> b!600158 (= e!343129 (not e!343135))))

(declare-fun res!385231 () Bool)

(assert (=> b!600158 (=> res!385231 e!343135)))

(declare-fun lt!273039 () SeekEntryResult!6247)

(assert (=> b!600158 (= res!385231 (not (= lt!273039 (Found!6247 index!984))))))

(declare-fun lt!273037 () Unit!18932)

(assert (=> b!600158 (= lt!273037 e!343138)))

(declare-fun c!67832 () Bool)

(assert (=> b!600158 (= c!67832 (= lt!273039 Undefined!6247))))

(declare-fun lt!273038 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37088 (_ BitVec 32)) SeekEntryResult!6247)

(assert (=> b!600158 (= lt!273039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273038 lt!273036 mask!3053))))

(assert (=> b!600158 e!343132))

(declare-fun res!385220 () Bool)

(assert (=> b!600158 (=> (not res!385220) (not e!343132))))

(declare-fun lt!273035 () (_ BitVec 32))

(assert (=> b!600158 (= res!385220 (= lt!273045 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273035 vacantSpotIndex!68 lt!273038 lt!273036 mask!3053)))))

(assert (=> b!600158 (= lt!273045 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273035 vacantSpotIndex!68 (select (arr!17800 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600158 (= lt!273038 (select (store (arr!17800 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273047 () Unit!18932)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37088 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18932)

(assert (=> b!600158 (= lt!273047 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273035 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600158 (= lt!273035 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600159 () Bool)

(declare-fun res!385235 () Bool)

(assert (=> b!600159 (=> (not res!385235) (not e!343131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600159 (= res!385235 (validKeyInArray!0 k0!1786))))

(declare-fun b!600160 () Bool)

(declare-fun res!385233 () Bool)

(assert (=> b!600160 (=> (not res!385233) (not e!343131))))

(assert (=> b!600160 (= res!385233 (validKeyInArray!0 (select (arr!17800 a!2986) j!136)))))

(declare-fun b!600161 () Bool)

(declare-fun res!385224 () Bool)

(assert (=> b!600161 (=> (not res!385224) (not e!343133))))

(assert (=> b!600161 (= res!385224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17800 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600162 () Bool)

(declare-fun e!343136 () Bool)

(assert (=> b!600162 (= e!343136 e!343139)))

(declare-fun res!385227 () Bool)

(assert (=> b!600162 (=> (not res!385227) (not e!343139))))

(assert (=> b!600162 (= res!385227 (arrayContainsKey!0 lt!273036 (select (arr!17800 a!2986) j!136) j!136))))

(declare-fun b!600163 () Bool)

(assert (=> b!600163 (= e!343135 e!343140)))

(declare-fun res!385219 () Bool)

(assert (=> b!600163 (=> res!385219 e!343140)))

(declare-fun lt!273046 () (_ BitVec 64))

(assert (=> b!600163 (= res!385219 (or (not (= (select (arr!17800 a!2986) j!136) lt!273038)) (not (= (select (arr!17800 a!2986) j!136) lt!273046)) (bvsge j!136 index!984)))))

(declare-fun e!343141 () Bool)

(assert (=> b!600163 e!343141))

(declare-fun res!385221 () Bool)

(assert (=> b!600163 (=> (not res!385221) (not e!343141))))

(assert (=> b!600163 (= res!385221 (= lt!273046 (select (arr!17800 a!2986) j!136)))))

(assert (=> b!600163 (= lt!273046 (select (store (arr!17800 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!600164 () Bool)

(declare-fun Unit!18935 () Unit!18932)

(assert (=> b!600164 (= e!343138 Unit!18935)))

(declare-fun b!600165 () Bool)

(declare-fun res!385229 () Bool)

(assert (=> b!600165 (=> (not res!385229) (not e!343133))))

(assert (=> b!600165 (= res!385229 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11891))))

(declare-fun b!600166 () Bool)

(declare-fun res!385230 () Bool)

(assert (=> b!600166 (=> (not res!385230) (not e!343131))))

(assert (=> b!600166 (= res!385230 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600167 () Bool)

(declare-fun res!385232 () Bool)

(assert (=> b!600167 (=> res!385232 e!343137)))

(declare-fun noDuplicate!293 (List!11894) Bool)

(assert (=> b!600167 (= res!385232 (not (noDuplicate!293 Nil!11891)))))

(declare-fun b!600168 () Bool)

(declare-fun e!343134 () Bool)

(assert (=> b!600168 (= e!343133 e!343134)))

(declare-fun res!385237 () Bool)

(assert (=> b!600168 (=> (not res!385237) (not e!343134))))

(assert (=> b!600168 (= res!385237 (= (select (store (arr!17800 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600168 (= lt!273036 (array!37089 (store (arr!17800 a!2986) i!1108 k0!1786) (size!18164 a!2986)))))

(declare-fun b!600169 () Bool)

(assert (=> b!600169 (= e!343141 e!343136)))

(declare-fun res!385234 () Bool)

(assert (=> b!600169 (=> res!385234 e!343136)))

(assert (=> b!600169 (= res!385234 (or (not (= (select (arr!17800 a!2986) j!136) lt!273038)) (not (= (select (arr!17800 a!2986) j!136) lt!273046)) (bvsge j!136 index!984)))))

(declare-fun b!600170 () Bool)

(assert (=> b!600170 (= e!343134 e!343129)))

(declare-fun res!385236 () Bool)

(assert (=> b!600170 (=> (not res!385236) (not e!343129))))

(assert (=> b!600170 (= res!385236 (and (= lt!273048 (Found!6247 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17800 a!2986) index!984) (select (arr!17800 a!2986) j!136))) (not (= (select (arr!17800 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600170 (= lt!273048 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17800 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54890 res!385228) b!600153))

(assert (= (and b!600153 res!385223) b!600160))

(assert (= (and b!600160 res!385233) b!600159))

(assert (= (and b!600159 res!385235) b!600166))

(assert (= (and b!600166 res!385230) b!600155))

(assert (= (and b!600155 res!385238) b!600152))

(assert (= (and b!600152 res!385226) b!600165))

(assert (= (and b!600165 res!385229) b!600161))

(assert (= (and b!600161 res!385224) b!600168))

(assert (= (and b!600168 res!385237) b!600170))

(assert (= (and b!600170 res!385236) b!600158))

(assert (= (and b!600158 res!385220) b!600154))

(assert (= (and b!600158 c!67832) b!600151))

(assert (= (and b!600158 (not c!67832)) b!600164))

(assert (= (and b!600158 (not res!385231)) b!600163))

(assert (= (and b!600163 res!385221) b!600169))

(assert (= (and b!600169 (not res!385234)) b!600162))

(assert (= (and b!600162 res!385227) b!600156))

(assert (= (and b!600163 (not res!385219)) b!600150))

(assert (= (and b!600150 (not res!385222)) b!600167))

(assert (= (and b!600167 (not res!385232)) b!600149))

(assert (= (and b!600149 (not res!385225)) b!600157))

(declare-fun m!577423 () Bool)

(assert (=> b!600169 m!577423))

(assert (=> b!600162 m!577423))

(assert (=> b!600162 m!577423))

(declare-fun m!577425 () Bool)

(assert (=> b!600162 m!577425))

(declare-fun m!577427 () Bool)

(assert (=> b!600165 m!577427))

(declare-fun m!577429 () Bool)

(assert (=> b!600155 m!577429))

(assert (=> b!600156 m!577423))

(assert (=> b!600156 m!577423))

(declare-fun m!577431 () Bool)

(assert (=> b!600156 m!577431))

(declare-fun m!577433 () Bool)

(assert (=> b!600161 m!577433))

(declare-fun m!577435 () Bool)

(assert (=> b!600166 m!577435))

(declare-fun m!577437 () Bool)

(assert (=> b!600152 m!577437))

(declare-fun m!577439 () Bool)

(assert (=> b!600159 m!577439))

(declare-fun m!577441 () Bool)

(assert (=> b!600150 m!577441))

(assert (=> b!600150 m!577423))

(declare-fun m!577443 () Bool)

(assert (=> b!600150 m!577443))

(assert (=> b!600150 m!577423))

(declare-fun m!577445 () Bool)

(assert (=> b!600150 m!577445))

(declare-fun m!577447 () Bool)

(assert (=> b!600150 m!577447))

(declare-fun m!577449 () Bool)

(assert (=> b!600150 m!577449))

(assert (=> b!600150 m!577423))

(declare-fun m!577451 () Bool)

(assert (=> b!600150 m!577451))

(declare-fun m!577453 () Bool)

(assert (=> b!600158 m!577453))

(declare-fun m!577455 () Bool)

(assert (=> b!600158 m!577455))

(declare-fun m!577457 () Bool)

(assert (=> b!600158 m!577457))

(assert (=> b!600158 m!577423))

(declare-fun m!577459 () Bool)

(assert (=> b!600158 m!577459))

(declare-fun m!577461 () Bool)

(assert (=> b!600158 m!577461))

(declare-fun m!577463 () Bool)

(assert (=> b!600158 m!577463))

(assert (=> b!600158 m!577423))

(declare-fun m!577465 () Bool)

(assert (=> b!600158 m!577465))

(declare-fun m!577467 () Bool)

(assert (=> b!600170 m!577467))

(assert (=> b!600170 m!577423))

(assert (=> b!600170 m!577423))

(declare-fun m!577469 () Bool)

(assert (=> b!600170 m!577469))

(assert (=> b!600168 m!577459))

(declare-fun m!577471 () Bool)

(assert (=> b!600168 m!577471))

(declare-fun m!577473 () Bool)

(assert (=> start!54890 m!577473))

(declare-fun m!577475 () Bool)

(assert (=> start!54890 m!577475))

(declare-fun m!577477 () Bool)

(assert (=> b!600157 m!577477))

(declare-fun m!577479 () Bool)

(assert (=> b!600167 m!577479))

(assert (=> b!600160 m!577423))

(assert (=> b!600160 m!577423))

(declare-fun m!577481 () Bool)

(assert (=> b!600160 m!577481))

(assert (=> b!600163 m!577423))

(assert (=> b!600163 m!577459))

(declare-fun m!577483 () Bool)

(assert (=> b!600163 m!577483))

(declare-fun m!577485 () Bool)

(assert (=> b!600149 m!577485))

(check-sat (not b!600165) (not b!600160) (not b!600166) (not b!600149) (not b!600162) (not b!600170) (not start!54890) (not b!600158) (not b!600152) (not b!600155) (not b!600156) (not b!600150) (not b!600157) (not b!600167) (not b!600159))
(check-sat)
