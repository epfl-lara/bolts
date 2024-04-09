; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54892 () Bool)

(assert start!54892)

(declare-fun b!600215 () Bool)

(declare-datatypes ((Unit!18936 0))(
  ( (Unit!18937) )
))
(declare-fun e!343180 () Unit!18936)

(declare-fun Unit!18938 () Unit!18936)

(assert (=> b!600215 (= e!343180 Unit!18938)))

(declare-fun b!600216 () Bool)

(declare-fun e!343179 () Bool)

(declare-fun e!343170 () Bool)

(assert (=> b!600216 (= e!343179 e!343170)))

(declare-fun res!385287 () Bool)

(assert (=> b!600216 (=> (not res!385287) (not e!343170))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6248 0))(
  ( (MissingZero!6248 (index!27248 (_ BitVec 32))) (Found!6248 (index!27249 (_ BitVec 32))) (Intermediate!6248 (undefined!7060 Bool) (index!27250 (_ BitVec 32)) (x!56072 (_ BitVec 32))) (Undefined!6248) (MissingVacant!6248 (index!27251 (_ BitVec 32))) )
))
(declare-fun lt!273087 () SeekEntryResult!6248)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37090 0))(
  ( (array!37091 (arr!17801 (Array (_ BitVec 32) (_ BitVec 64))) (size!18165 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37090)

(assert (=> b!600216 (= res!385287 (and (= lt!273087 (Found!6248 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17801 a!2986) index!984) (select (arr!17801 a!2986) j!136))) (not (= (select (arr!17801 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37090 (_ BitVec 32)) SeekEntryResult!6248)

(assert (=> b!600216 (= lt!273087 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17801 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600217 () Bool)

(declare-fun e!343177 () Bool)

(declare-fun e!343168 () Bool)

(assert (=> b!600217 (= e!343177 e!343168)))

(declare-fun res!385286 () Bool)

(assert (=> b!600217 (=> (not res!385286) (not e!343168))))

(declare-fun lt!273088 () SeekEntryResult!6248)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!600217 (= res!385286 (or (= lt!273088 (MissingZero!6248 i!1108)) (= lt!273088 (MissingVacant!6248 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37090 (_ BitVec 32)) SeekEntryResult!6248)

(assert (=> b!600217 (= lt!273088 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600218 () Bool)

(declare-fun res!385298 () Bool)

(assert (=> b!600218 (=> (not res!385298) (not e!343168))))

(assert (=> b!600218 (= res!385298 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17801 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600219 () Bool)

(declare-fun e!343173 () Bool)

(assert (=> b!600219 (= e!343173 true)))

(declare-fun lt!273084 () Bool)

(declare-datatypes ((List!11895 0))(
  ( (Nil!11892) (Cons!11891 (h!12936 (_ BitVec 64)) (t!18131 List!11895)) )
))
(declare-fun contains!2980 (List!11895 (_ BitVec 64)) Bool)

(assert (=> b!600219 (= lt!273084 (contains!2980 Nil!11892 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600220 () Bool)

(declare-fun e!343169 () Bool)

(declare-fun e!343172 () Bool)

(assert (=> b!600220 (= e!343169 e!343172)))

(declare-fun res!385281 () Bool)

(assert (=> b!600220 (=> res!385281 e!343172)))

(declare-fun lt!273090 () (_ BitVec 64))

(declare-fun lt!273077 () (_ BitVec 64))

(assert (=> b!600220 (= res!385281 (or (not (= (select (arr!17801 a!2986) j!136) lt!273090)) (not (= (select (arr!17801 a!2986) j!136) lt!273077)) (bvsge j!136 index!984)))))

(declare-fun e!343178 () Bool)

(assert (=> b!600220 e!343178))

(declare-fun res!385282 () Bool)

(assert (=> b!600220 (=> (not res!385282) (not e!343178))))

(assert (=> b!600220 (= res!385282 (= lt!273077 (select (arr!17801 a!2986) j!136)))))

(assert (=> b!600220 (= lt!273077 (select (store (arr!17801 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600221 () Bool)

(declare-fun res!385294 () Bool)

(assert (=> b!600221 (=> res!385294 e!343173)))

(declare-fun noDuplicate!294 (List!11895) Bool)

(assert (=> b!600221 (= res!385294 (not (noDuplicate!294 Nil!11892)))))

(declare-fun b!600223 () Bool)

(declare-fun res!385279 () Bool)

(assert (=> b!600223 (=> (not res!385279) (not e!343177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600223 (= res!385279 (validKeyInArray!0 k!1786))))

(declare-fun b!600224 () Bool)

(declare-fun e!343174 () Bool)

(declare-fun lt!273078 () SeekEntryResult!6248)

(assert (=> b!600224 (= e!343174 (= lt!273087 lt!273078))))

(declare-fun b!600225 () Bool)

(assert (=> b!600225 (= e!343170 (not e!343169))))

(declare-fun res!385288 () Bool)

(assert (=> b!600225 (=> res!385288 e!343169)))

(declare-fun lt!273081 () SeekEntryResult!6248)

(assert (=> b!600225 (= res!385288 (not (= lt!273081 (Found!6248 index!984))))))

(declare-fun lt!273083 () Unit!18936)

(assert (=> b!600225 (= lt!273083 e!343180)))

(declare-fun c!67835 () Bool)

(assert (=> b!600225 (= c!67835 (= lt!273081 Undefined!6248))))

(declare-fun lt!273079 () array!37090)

(assert (=> b!600225 (= lt!273081 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273090 lt!273079 mask!3053))))

(assert (=> b!600225 e!343174))

(declare-fun res!385280 () Bool)

(assert (=> b!600225 (=> (not res!385280) (not e!343174))))

(declare-fun lt!273082 () (_ BitVec 32))

(assert (=> b!600225 (= res!385280 (= lt!273078 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273082 vacantSpotIndex!68 lt!273090 lt!273079 mask!3053)))))

(assert (=> b!600225 (= lt!273078 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273082 vacantSpotIndex!68 (select (arr!17801 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600225 (= lt!273090 (select (store (arr!17801 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273085 () Unit!18936)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37090 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18936)

(assert (=> b!600225 (= lt!273085 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273082 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600225 (= lt!273082 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600226 () Bool)

(declare-fun res!385284 () Bool)

(assert (=> b!600226 (=> (not res!385284) (not e!343177))))

(declare-fun arrayContainsKey!0 (array!37090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600226 (= res!385284 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600227 () Bool)

(assert (=> b!600227 (= e!343168 e!343179)))

(declare-fun res!385285 () Bool)

(assert (=> b!600227 (=> (not res!385285) (not e!343179))))

(assert (=> b!600227 (= res!385285 (= (select (store (arr!17801 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600227 (= lt!273079 (array!37091 (store (arr!17801 a!2986) i!1108 k!1786) (size!18165 a!2986)))))

(declare-fun b!600228 () Bool)

(assert (=> b!600228 (= e!343172 e!343173)))

(declare-fun res!385292 () Bool)

(assert (=> b!600228 (=> res!385292 e!343173)))

(assert (=> b!600228 (= res!385292 (or (bvsge (size!18165 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18165 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!37090 (_ BitVec 32) List!11895) Bool)

(assert (=> b!600228 (arrayNoDuplicates!0 lt!273079 j!136 Nil!11892)))

(declare-fun lt!273089 () Unit!18936)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37090 (_ BitVec 32) (_ BitVec 32)) Unit!18936)

(assert (=> b!600228 (= lt!273089 (lemmaNoDuplicateFromThenFromBigger!0 lt!273079 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600228 (arrayNoDuplicates!0 lt!273079 #b00000000000000000000000000000000 Nil!11892)))

(declare-fun lt!273080 () Unit!18936)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37090 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11895) Unit!18936)

(assert (=> b!600228 (= lt!273080 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11892))))

(assert (=> b!600228 (arrayContainsKey!0 lt!273079 (select (arr!17801 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273086 () Unit!18936)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37090 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18936)

(assert (=> b!600228 (= lt!273086 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273079 (select (arr!17801 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600229 () Bool)

(declare-fun res!385296 () Bool)

(assert (=> b!600229 (=> res!385296 e!343173)))

(assert (=> b!600229 (= res!385296 (contains!2980 Nil!11892 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600230 () Bool)

(declare-fun e!343175 () Bool)

(assert (=> b!600230 (= e!343178 e!343175)))

(declare-fun res!385289 () Bool)

(assert (=> b!600230 (=> res!385289 e!343175)))

(assert (=> b!600230 (= res!385289 (or (not (= (select (arr!17801 a!2986) j!136) lt!273090)) (not (= (select (arr!17801 a!2986) j!136) lt!273077)) (bvsge j!136 index!984)))))

(declare-fun b!600231 () Bool)

(declare-fun e!343171 () Bool)

(assert (=> b!600231 (= e!343175 e!343171)))

(declare-fun res!385297 () Bool)

(assert (=> b!600231 (=> (not res!385297) (not e!343171))))

(assert (=> b!600231 (= res!385297 (arrayContainsKey!0 lt!273079 (select (arr!17801 a!2986) j!136) j!136))))

(declare-fun b!600232 () Bool)

(declare-fun res!385293 () Bool)

(assert (=> b!600232 (=> (not res!385293) (not e!343168))))

(assert (=> b!600232 (= res!385293 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11892))))

(declare-fun b!600222 () Bool)

(declare-fun res!385295 () Bool)

(assert (=> b!600222 (=> (not res!385295) (not e!343177))))

(assert (=> b!600222 (= res!385295 (and (= (size!18165 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18165 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18165 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!385283 () Bool)

(assert (=> start!54892 (=> (not res!385283) (not e!343177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54892 (= res!385283 (validMask!0 mask!3053))))

(assert (=> start!54892 e!343177))

(assert (=> start!54892 true))

(declare-fun array_inv!13575 (array!37090) Bool)

(assert (=> start!54892 (array_inv!13575 a!2986)))

(declare-fun b!600233 () Bool)

(declare-fun Unit!18939 () Unit!18936)

(assert (=> b!600233 (= e!343180 Unit!18939)))

(assert (=> b!600233 false))

(declare-fun b!600234 () Bool)

(declare-fun res!385290 () Bool)

(assert (=> b!600234 (=> (not res!385290) (not e!343177))))

(assert (=> b!600234 (= res!385290 (validKeyInArray!0 (select (arr!17801 a!2986) j!136)))))

(declare-fun b!600235 () Bool)

(declare-fun res!385291 () Bool)

(assert (=> b!600235 (=> (not res!385291) (not e!343168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37090 (_ BitVec 32)) Bool)

(assert (=> b!600235 (= res!385291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600236 () Bool)

(assert (=> b!600236 (= e!343171 (arrayContainsKey!0 lt!273079 (select (arr!17801 a!2986) j!136) index!984))))

(assert (= (and start!54892 res!385283) b!600222))

(assert (= (and b!600222 res!385295) b!600234))

(assert (= (and b!600234 res!385290) b!600223))

(assert (= (and b!600223 res!385279) b!600226))

(assert (= (and b!600226 res!385284) b!600217))

(assert (= (and b!600217 res!385286) b!600235))

(assert (= (and b!600235 res!385291) b!600232))

(assert (= (and b!600232 res!385293) b!600218))

(assert (= (and b!600218 res!385298) b!600227))

(assert (= (and b!600227 res!385285) b!600216))

(assert (= (and b!600216 res!385287) b!600225))

(assert (= (and b!600225 res!385280) b!600224))

(assert (= (and b!600225 c!67835) b!600233))

(assert (= (and b!600225 (not c!67835)) b!600215))

(assert (= (and b!600225 (not res!385288)) b!600220))

(assert (= (and b!600220 res!385282) b!600230))

(assert (= (and b!600230 (not res!385289)) b!600231))

(assert (= (and b!600231 res!385297) b!600236))

(assert (= (and b!600220 (not res!385281)) b!600228))

(assert (= (and b!600228 (not res!385292)) b!600221))

(assert (= (and b!600221 (not res!385294)) b!600229))

(assert (= (and b!600229 (not res!385296)) b!600219))

(declare-fun m!577487 () Bool)

(assert (=> start!54892 m!577487))

(declare-fun m!577489 () Bool)

(assert (=> start!54892 m!577489))

(declare-fun m!577491 () Bool)

(assert (=> b!600229 m!577491))

(declare-fun m!577493 () Bool)

(assert (=> b!600232 m!577493))

(declare-fun m!577495 () Bool)

(assert (=> b!600230 m!577495))

(declare-fun m!577497 () Bool)

(assert (=> b!600219 m!577497))

(declare-fun m!577499 () Bool)

(assert (=> b!600235 m!577499))

(assert (=> b!600220 m!577495))

(declare-fun m!577501 () Bool)

(assert (=> b!600220 m!577501))

(declare-fun m!577503 () Bool)

(assert (=> b!600220 m!577503))

(declare-fun m!577505 () Bool)

(assert (=> b!600221 m!577505))

(declare-fun m!577507 () Bool)

(assert (=> b!600216 m!577507))

(assert (=> b!600216 m!577495))

(assert (=> b!600216 m!577495))

(declare-fun m!577509 () Bool)

(assert (=> b!600216 m!577509))

(assert (=> b!600234 m!577495))

(assert (=> b!600234 m!577495))

(declare-fun m!577511 () Bool)

(assert (=> b!600234 m!577511))

(declare-fun m!577513 () Bool)

(assert (=> b!600217 m!577513))

(declare-fun m!577515 () Bool)

(assert (=> b!600225 m!577515))

(declare-fun m!577517 () Bool)

(assert (=> b!600225 m!577517))

(assert (=> b!600225 m!577495))

(assert (=> b!600225 m!577501))

(declare-fun m!577519 () Bool)

(assert (=> b!600225 m!577519))

(assert (=> b!600225 m!577495))

(declare-fun m!577521 () Bool)

(assert (=> b!600225 m!577521))

(declare-fun m!577523 () Bool)

(assert (=> b!600225 m!577523))

(declare-fun m!577525 () Bool)

(assert (=> b!600225 m!577525))

(assert (=> b!600227 m!577501))

(declare-fun m!577527 () Bool)

(assert (=> b!600227 m!577527))

(assert (=> b!600236 m!577495))

(assert (=> b!600236 m!577495))

(declare-fun m!577529 () Bool)

(assert (=> b!600236 m!577529))

(assert (=> b!600228 m!577495))

(declare-fun m!577531 () Bool)

(assert (=> b!600228 m!577531))

(declare-fun m!577533 () Bool)

(assert (=> b!600228 m!577533))

(assert (=> b!600228 m!577495))

(declare-fun m!577535 () Bool)

(assert (=> b!600228 m!577535))

(assert (=> b!600228 m!577495))

(declare-fun m!577537 () Bool)

(assert (=> b!600228 m!577537))

(declare-fun m!577539 () Bool)

(assert (=> b!600228 m!577539))

(declare-fun m!577541 () Bool)

(assert (=> b!600228 m!577541))

(declare-fun m!577543 () Bool)

(assert (=> b!600226 m!577543))

(declare-fun m!577545 () Bool)

(assert (=> b!600223 m!577545))

(assert (=> b!600231 m!577495))

(assert (=> b!600231 m!577495))

(declare-fun m!577547 () Bool)

(assert (=> b!600231 m!577547))

(declare-fun m!577549 () Bool)

(assert (=> b!600218 m!577549))

(push 1)

(assert (not b!600217))

(assert (not b!600235))

(assert (not b!600223))

(assert (not b!600229))

(assert (not start!54892))

(assert (not b!600226))

(assert (not b!600221))

(assert (not b!600236))

(assert (not b!600231))

(assert (not b!600219))

(assert (not b!600234))

(assert (not b!600225))

(assert (not b!600232))

(assert (not b!600216))

(assert (not b!600228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

