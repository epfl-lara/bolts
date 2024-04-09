; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57830 () Bool)

(assert start!57830)

(declare-fun b!639257 () Bool)

(declare-fun e!365870 () Bool)

(declare-fun e!365871 () Bool)

(assert (=> b!639257 (= e!365870 (not e!365871))))

(declare-fun res!413987 () Bool)

(assert (=> b!639257 (=> res!413987 e!365871)))

(declare-datatypes ((SeekEntryResult!6808 0))(
  ( (MissingZero!6808 (index!29548 (_ BitVec 32))) (Found!6808 (index!29549 (_ BitVec 32))) (Intermediate!6808 (undefined!7620 Bool) (index!29550 (_ BitVec 32)) (x!58332 (_ BitVec 32))) (Undefined!6808) (MissingVacant!6808 (index!29551 (_ BitVec 32))) )
))
(declare-fun lt!295781 () SeekEntryResult!6808)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!639257 (= res!413987 (not (= lt!295781 (Found!6808 index!984))))))

(declare-datatypes ((Unit!21590 0))(
  ( (Unit!21591) )
))
(declare-fun lt!295775 () Unit!21590)

(declare-fun e!365869 () Unit!21590)

(assert (=> b!639257 (= lt!295775 e!365869)))

(declare-fun c!73010 () Bool)

(assert (=> b!639257 (= c!73010 (= lt!295781 Undefined!6808))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38288 0))(
  ( (array!38289 (arr!18361 (Array (_ BitVec 32) (_ BitVec 64))) (size!18725 (_ BitVec 32))) )
))
(declare-fun lt!295778 () array!38288)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!295783 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38288 (_ BitVec 32)) SeekEntryResult!6808)

(assert (=> b!639257 (= lt!295781 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295783 lt!295778 mask!3053))))

(declare-fun e!365874 () Bool)

(assert (=> b!639257 e!365874))

(declare-fun res!413973 () Bool)

(assert (=> b!639257 (=> (not res!413973) (not e!365874))))

(declare-fun lt!295776 () (_ BitVec 32))

(declare-fun lt!295782 () SeekEntryResult!6808)

(assert (=> b!639257 (= res!413973 (= lt!295782 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295776 vacantSpotIndex!68 lt!295783 lt!295778 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38288)

(assert (=> b!639257 (= lt!295782 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295776 vacantSpotIndex!68 (select (arr!18361 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!639257 (= lt!295783 (select (store (arr!18361 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295784 () Unit!21590)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38288 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21590)

(assert (=> b!639257 (= lt!295784 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295776 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639257 (= lt!295776 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639258 () Bool)

(declare-fun res!413985 () Bool)

(declare-fun e!365875 () Bool)

(assert (=> b!639258 (=> (not res!413985) (not e!365875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639258 (= res!413985 (validKeyInArray!0 (select (arr!18361 a!2986) j!136)))))

(declare-fun b!639259 () Bool)

(declare-fun e!365864 () Bool)

(declare-fun e!365866 () Bool)

(assert (=> b!639259 (= e!365864 e!365866)))

(declare-fun res!413986 () Bool)

(assert (=> b!639259 (=> (not res!413986) (not e!365866))))

(assert (=> b!639259 (= res!413986 (= (select (store (arr!18361 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639259 (= lt!295778 (array!38289 (store (arr!18361 a!2986) i!1108 k0!1786) (size!18725 a!2986)))))

(declare-fun b!639260 () Bool)

(assert (=> b!639260 (= e!365875 e!365864)))

(declare-fun res!413972 () Bool)

(assert (=> b!639260 (=> (not res!413972) (not e!365864))))

(declare-fun lt!295777 () SeekEntryResult!6808)

(assert (=> b!639260 (= res!413972 (or (= lt!295777 (MissingZero!6808 i!1108)) (= lt!295777 (MissingVacant!6808 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38288 (_ BitVec 32)) SeekEntryResult!6808)

(assert (=> b!639260 (= lt!295777 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!639261 () Bool)

(declare-fun Unit!21592 () Unit!21590)

(assert (=> b!639261 (= e!365869 Unit!21592)))

(declare-fun b!639262 () Bool)

(declare-fun e!365872 () Bool)

(assert (=> b!639262 (= e!365872 (or (bvsge (size!18725 a!2986) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!18725 a!2986)) (bvsle j!136 (size!18725 a!2986))))))

(declare-datatypes ((List!12455 0))(
  ( (Nil!12452) (Cons!12451 (h!13496 (_ BitVec 64)) (t!18691 List!12455)) )
))
(declare-fun arrayNoDuplicates!0 (array!38288 (_ BitVec 32) List!12455) Bool)

(assert (=> b!639262 (arrayNoDuplicates!0 lt!295778 #b00000000000000000000000000000000 Nil!12452)))

(declare-fun lt!295780 () Unit!21590)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38288 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12455) Unit!21590)

(assert (=> b!639262 (= lt!295780 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12452))))

(declare-fun arrayContainsKey!0 (array!38288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639262 (arrayContainsKey!0 lt!295778 (select (arr!18361 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295785 () Unit!21590)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38288 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21590)

(assert (=> b!639262 (= lt!295785 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295778 (select (arr!18361 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639263 () Bool)

(declare-fun e!365865 () Bool)

(declare-fun e!365868 () Bool)

(assert (=> b!639263 (= e!365865 e!365868)))

(declare-fun res!413979 () Bool)

(assert (=> b!639263 (=> (not res!413979) (not e!365868))))

(assert (=> b!639263 (= res!413979 (arrayContainsKey!0 lt!295778 (select (arr!18361 a!2986) j!136) j!136))))

(declare-fun b!639265 () Bool)

(declare-fun Unit!21593 () Unit!21590)

(assert (=> b!639265 (= e!365869 Unit!21593)))

(assert (=> b!639265 false))

(declare-fun b!639266 () Bool)

(declare-fun res!413984 () Bool)

(assert (=> b!639266 (=> (not res!413984) (not e!365875))))

(assert (=> b!639266 (= res!413984 (validKeyInArray!0 k0!1786))))

(declare-fun b!639267 () Bool)

(declare-fun res!413982 () Bool)

(assert (=> b!639267 (=> (not res!413982) (not e!365864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38288 (_ BitVec 32)) Bool)

(assert (=> b!639267 (= res!413982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639268 () Bool)

(declare-fun res!413978 () Bool)

(assert (=> b!639268 (=> (not res!413978) (not e!365875))))

(assert (=> b!639268 (= res!413978 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639269 () Bool)

(declare-fun e!365873 () Bool)

(assert (=> b!639269 (= e!365873 e!365865)))

(declare-fun res!413981 () Bool)

(assert (=> b!639269 (=> res!413981 e!365865)))

(declare-fun lt!295774 () (_ BitVec 64))

(assert (=> b!639269 (= res!413981 (or (not (= (select (arr!18361 a!2986) j!136) lt!295783)) (not (= (select (arr!18361 a!2986) j!136) lt!295774)) (bvsge j!136 index!984)))))

(declare-fun b!639264 () Bool)

(declare-fun res!413983 () Bool)

(assert (=> b!639264 (=> (not res!413983) (not e!365875))))

(assert (=> b!639264 (= res!413983 (and (= (size!18725 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18725 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18725 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!413971 () Bool)

(assert (=> start!57830 (=> (not res!413971) (not e!365875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57830 (= res!413971 (validMask!0 mask!3053))))

(assert (=> start!57830 e!365875))

(assert (=> start!57830 true))

(declare-fun array_inv!14135 (array!38288) Bool)

(assert (=> start!57830 (array_inv!14135 a!2986)))

(declare-fun b!639270 () Bool)

(declare-fun res!413976 () Bool)

(assert (=> b!639270 (=> (not res!413976) (not e!365864))))

(assert (=> b!639270 (= res!413976 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12452))))

(declare-fun b!639271 () Bool)

(assert (=> b!639271 (= e!365871 e!365872)))

(declare-fun res!413977 () Bool)

(assert (=> b!639271 (=> res!413977 e!365872)))

(assert (=> b!639271 (= res!413977 (or (not (= (select (arr!18361 a!2986) j!136) lt!295783)) (not (= (select (arr!18361 a!2986) j!136) lt!295774)) (bvsge j!136 index!984)))))

(assert (=> b!639271 e!365873))

(declare-fun res!413980 () Bool)

(assert (=> b!639271 (=> (not res!413980) (not e!365873))))

(assert (=> b!639271 (= res!413980 (= lt!295774 (select (arr!18361 a!2986) j!136)))))

(assert (=> b!639271 (= lt!295774 (select (store (arr!18361 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!639272 () Bool)

(assert (=> b!639272 (= e!365866 e!365870)))

(declare-fun res!413975 () Bool)

(assert (=> b!639272 (=> (not res!413975) (not e!365870))))

(declare-fun lt!295779 () SeekEntryResult!6808)

(assert (=> b!639272 (= res!413975 (and (= lt!295779 (Found!6808 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18361 a!2986) index!984) (select (arr!18361 a!2986) j!136))) (not (= (select (arr!18361 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!639272 (= lt!295779 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18361 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639273 () Bool)

(assert (=> b!639273 (= e!365868 (arrayContainsKey!0 lt!295778 (select (arr!18361 a!2986) j!136) index!984))))

(declare-fun b!639274 () Bool)

(declare-fun res!413974 () Bool)

(assert (=> b!639274 (=> (not res!413974) (not e!365864))))

(assert (=> b!639274 (= res!413974 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18361 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639275 () Bool)

(assert (=> b!639275 (= e!365874 (= lt!295779 lt!295782))))

(assert (= (and start!57830 res!413971) b!639264))

(assert (= (and b!639264 res!413983) b!639258))

(assert (= (and b!639258 res!413985) b!639266))

(assert (= (and b!639266 res!413984) b!639268))

(assert (= (and b!639268 res!413978) b!639260))

(assert (= (and b!639260 res!413972) b!639267))

(assert (= (and b!639267 res!413982) b!639270))

(assert (= (and b!639270 res!413976) b!639274))

(assert (= (and b!639274 res!413974) b!639259))

(assert (= (and b!639259 res!413986) b!639272))

(assert (= (and b!639272 res!413975) b!639257))

(assert (= (and b!639257 res!413973) b!639275))

(assert (= (and b!639257 c!73010) b!639265))

(assert (= (and b!639257 (not c!73010)) b!639261))

(assert (= (and b!639257 (not res!413987)) b!639271))

(assert (= (and b!639271 res!413980) b!639269))

(assert (= (and b!639269 (not res!413981)) b!639263))

(assert (= (and b!639263 res!413979) b!639273))

(assert (= (and b!639271 (not res!413977)) b!639262))

(declare-fun m!613191 () Bool)

(assert (=> b!639271 m!613191))

(declare-fun m!613193 () Bool)

(assert (=> b!639271 m!613193))

(declare-fun m!613195 () Bool)

(assert (=> b!639271 m!613195))

(assert (=> b!639259 m!613193))

(declare-fun m!613197 () Bool)

(assert (=> b!639259 m!613197))

(declare-fun m!613199 () Bool)

(assert (=> b!639267 m!613199))

(assert (=> b!639269 m!613191))

(declare-fun m!613201 () Bool)

(assert (=> b!639260 m!613201))

(declare-fun m!613203 () Bool)

(assert (=> start!57830 m!613203))

(declare-fun m!613205 () Bool)

(assert (=> start!57830 m!613205))

(declare-fun m!613207 () Bool)

(assert (=> b!639257 m!613207))

(declare-fun m!613209 () Bool)

(assert (=> b!639257 m!613209))

(assert (=> b!639257 m!613191))

(declare-fun m!613211 () Bool)

(assert (=> b!639257 m!613211))

(declare-fun m!613213 () Bool)

(assert (=> b!639257 m!613213))

(assert (=> b!639257 m!613193))

(assert (=> b!639257 m!613191))

(declare-fun m!613215 () Bool)

(assert (=> b!639257 m!613215))

(declare-fun m!613217 () Bool)

(assert (=> b!639257 m!613217))

(assert (=> b!639258 m!613191))

(assert (=> b!639258 m!613191))

(declare-fun m!613219 () Bool)

(assert (=> b!639258 m!613219))

(declare-fun m!613221 () Bool)

(assert (=> b!639270 m!613221))

(assert (=> b!639273 m!613191))

(assert (=> b!639273 m!613191))

(declare-fun m!613223 () Bool)

(assert (=> b!639273 m!613223))

(declare-fun m!613225 () Bool)

(assert (=> b!639266 m!613225))

(declare-fun m!613227 () Bool)

(assert (=> b!639268 m!613227))

(declare-fun m!613229 () Bool)

(assert (=> b!639272 m!613229))

(assert (=> b!639272 m!613191))

(assert (=> b!639272 m!613191))

(declare-fun m!613231 () Bool)

(assert (=> b!639272 m!613231))

(assert (=> b!639263 m!613191))

(assert (=> b!639263 m!613191))

(declare-fun m!613233 () Bool)

(assert (=> b!639263 m!613233))

(declare-fun m!613235 () Bool)

(assert (=> b!639274 m!613235))

(assert (=> b!639262 m!613191))

(declare-fun m!613237 () Bool)

(assert (=> b!639262 m!613237))

(assert (=> b!639262 m!613191))

(declare-fun m!613239 () Bool)

(assert (=> b!639262 m!613239))

(assert (=> b!639262 m!613191))

(declare-fun m!613241 () Bool)

(assert (=> b!639262 m!613241))

(declare-fun m!613243 () Bool)

(assert (=> b!639262 m!613243))

(check-sat (not b!639258) (not b!639273) (not b!639263) (not start!57830) (not b!639268) (not b!639270) (not b!639272) (not b!639262) (not b!639266) (not b!639267) (not b!639257) (not b!639260))
(check-sat)
