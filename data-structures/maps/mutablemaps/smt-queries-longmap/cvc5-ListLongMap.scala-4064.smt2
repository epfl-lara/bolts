; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55620 () Bool)

(assert start!55620)

(declare-fun b!609691 () Bool)

(declare-fun res!392323 () Bool)

(declare-fun e!349218 () Bool)

(assert (=> b!609691 (=> (not res!392323) (not e!349218))))

(declare-datatypes ((array!37314 0))(
  ( (array!37315 (arr!17904 (Array (_ BitVec 32) (_ BitVec 64))) (size!18268 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37314)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609691 (= res!392323 (validKeyInArray!0 (select (arr!17904 a!2986) j!136)))))

(declare-fun b!609692 () Bool)

(declare-datatypes ((Unit!19534 0))(
  ( (Unit!19535) )
))
(declare-fun e!349215 () Unit!19534)

(declare-fun Unit!19536 () Unit!19534)

(assert (=> b!609692 (= e!349215 Unit!19536)))

(declare-fun b!609693 () Bool)

(declare-fun e!349213 () Bool)

(assert (=> b!609693 (= e!349213 (or (bvsgt #b00000000000000000000000000000000 (size!18268 a!2986)) (bvslt (size!18268 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!278861 () array!37314)

(declare-datatypes ((List!11998 0))(
  ( (Nil!11995) (Cons!11994 (h!13039 (_ BitVec 64)) (t!18234 List!11998)) )
))
(declare-fun arrayNoDuplicates!0 (array!37314 (_ BitVec 32) List!11998) Bool)

(assert (=> b!609693 (arrayNoDuplicates!0 lt!278861 #b00000000000000000000000000000000 Nil!11995)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!278868 () Unit!19534)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37314 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11998) Unit!19534)

(assert (=> b!609693 (= lt!278868 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11995))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609693 (arrayContainsKey!0 lt!278861 (select (arr!17904 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278856 () Unit!19534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37314 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19534)

(assert (=> b!609693 (= lt!278856 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278861 (select (arr!17904 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!349208 () Bool)

(assert (=> b!609693 e!349208))

(declare-fun res!392315 () Bool)

(assert (=> b!609693 (=> (not res!392315) (not e!349208))))

(assert (=> b!609693 (= res!392315 (arrayContainsKey!0 lt!278861 (select (arr!17904 a!2986) j!136) j!136))))

(declare-fun b!609694 () Bool)

(declare-fun e!349209 () Bool)

(declare-fun e!349222 () Bool)

(assert (=> b!609694 (= e!349209 e!349222)))

(declare-fun res!392326 () Bool)

(assert (=> b!609694 (=> res!392326 e!349222)))

(declare-fun lt!278869 () (_ BitVec 64))

(declare-fun lt!278858 () (_ BitVec 64))

(assert (=> b!609694 (= res!392326 (or (not (= (select (arr!17904 a!2986) j!136) lt!278869)) (not (= (select (arr!17904 a!2986) j!136) lt!278858))))))

(declare-fun e!349219 () Bool)

(assert (=> b!609694 e!349219))

(declare-fun res!392333 () Bool)

(assert (=> b!609694 (=> (not res!392333) (not e!349219))))

(assert (=> b!609694 (= res!392333 (= lt!278858 (select (arr!17904 a!2986) j!136)))))

(assert (=> b!609694 (= lt!278858 (select (store (arr!17904 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609695 () Bool)

(declare-fun res!392331 () Bool)

(declare-fun e!349210 () Bool)

(assert (=> b!609695 (=> (not res!392331) (not e!349210))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!609695 (= res!392331 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17904 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609696 () Bool)

(declare-fun res!392321 () Bool)

(assert (=> b!609696 (=> (not res!392321) (not e!349210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37314 (_ BitVec 32)) Bool)

(assert (=> b!609696 (= res!392321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609697 () Bool)

(assert (=> b!609697 (= e!349222 e!349213)))

(declare-fun res!392325 () Bool)

(assert (=> b!609697 (=> res!392325 e!349213)))

(assert (=> b!609697 (= res!392325 (bvsge index!984 j!136))))

(declare-fun lt!278870 () Unit!19534)

(assert (=> b!609697 (= lt!278870 e!349215)))

(declare-fun c!69055 () Bool)

(assert (=> b!609697 (= c!69055 (bvslt j!136 index!984))))

(declare-fun b!609698 () Bool)

(declare-fun res!392318 () Bool)

(assert (=> b!609698 (=> (not res!392318) (not e!349218))))

(assert (=> b!609698 (= res!392318 (validKeyInArray!0 k!1786))))

(declare-fun b!609699 () Bool)

(assert (=> b!609699 (= e!349218 e!349210)))

(declare-fun res!392332 () Bool)

(assert (=> b!609699 (=> (not res!392332) (not e!349210))))

(declare-datatypes ((SeekEntryResult!6351 0))(
  ( (MissingZero!6351 (index!27678 (_ BitVec 32))) (Found!6351 (index!27679 (_ BitVec 32))) (Intermediate!6351 (undefined!7163 Bool) (index!27680 (_ BitVec 32)) (x!56509 (_ BitVec 32))) (Undefined!6351) (MissingVacant!6351 (index!27681 (_ BitVec 32))) )
))
(declare-fun lt!278860 () SeekEntryResult!6351)

(assert (=> b!609699 (= res!392332 (or (= lt!278860 (MissingZero!6351 i!1108)) (= lt!278860 (MissingVacant!6351 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37314 (_ BitVec 32)) SeekEntryResult!6351)

(assert (=> b!609699 (= lt!278860 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!392328 () Bool)

(assert (=> start!55620 (=> (not res!392328) (not e!349218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55620 (= res!392328 (validMask!0 mask!3053))))

(assert (=> start!55620 e!349218))

(assert (=> start!55620 true))

(declare-fun array_inv!13678 (array!37314) Bool)

(assert (=> start!55620 (array_inv!13678 a!2986)))

(declare-fun b!609700 () Bool)

(declare-fun res!392317 () Bool)

(assert (=> b!609700 (=> (not res!392317) (not e!349218))))

(assert (=> b!609700 (= res!392317 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609701 () Bool)

(declare-fun e!349212 () Bool)

(declare-fun e!349211 () Bool)

(assert (=> b!609701 (= e!349212 e!349211)))

(declare-fun res!392330 () Bool)

(assert (=> b!609701 (=> (not res!392330) (not e!349211))))

(assert (=> b!609701 (= res!392330 (arrayContainsKey!0 lt!278861 (select (arr!17904 a!2986) j!136) j!136))))

(declare-fun b!609702 () Bool)

(declare-fun e!349217 () Bool)

(assert (=> b!609702 (= e!349210 e!349217)))

(declare-fun res!392324 () Bool)

(assert (=> b!609702 (=> (not res!392324) (not e!349217))))

(assert (=> b!609702 (= res!392324 (= (select (store (arr!17904 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609702 (= lt!278861 (array!37315 (store (arr!17904 a!2986) i!1108 k!1786) (size!18268 a!2986)))))

(declare-fun b!609703 () Bool)

(assert (=> b!609703 (= e!349211 (arrayContainsKey!0 lt!278861 (select (arr!17904 a!2986) j!136) index!984))))

(declare-fun b!609704 () Bool)

(declare-fun e!349220 () Unit!19534)

(declare-fun Unit!19537 () Unit!19534)

(assert (=> b!609704 (= e!349220 Unit!19537)))

(assert (=> b!609704 false))

(declare-fun b!609705 () Bool)

(declare-fun Unit!19538 () Unit!19534)

(assert (=> b!609705 (= e!349215 Unit!19538)))

(declare-fun lt!278864 () Unit!19534)

(assert (=> b!609705 (= lt!278864 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278861 (select (arr!17904 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609705 (arrayContainsKey!0 lt!278861 (select (arr!17904 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278857 () Unit!19534)

(assert (=> b!609705 (= lt!278857 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11995))))

(assert (=> b!609705 (arrayNoDuplicates!0 lt!278861 #b00000000000000000000000000000000 Nil!11995)))

(declare-fun lt!278863 () Unit!19534)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37314 (_ BitVec 32) (_ BitVec 32)) Unit!19534)

(assert (=> b!609705 (= lt!278863 (lemmaNoDuplicateFromThenFromBigger!0 lt!278861 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609705 (arrayNoDuplicates!0 lt!278861 j!136 Nil!11995)))

(declare-fun lt!278866 () Unit!19534)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37314 (_ BitVec 64) (_ BitVec 32) List!11998) Unit!19534)

(assert (=> b!609705 (= lt!278866 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278861 (select (arr!17904 a!2986) j!136) j!136 Nil!11995))))

(assert (=> b!609705 false))

(declare-fun b!609706 () Bool)

(declare-fun res!392322 () Bool)

(assert (=> b!609706 (=> (not res!392322) (not e!349210))))

(assert (=> b!609706 (= res!392322 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11995))))

(declare-fun b!609707 () Bool)

(assert (=> b!609707 (= e!349208 (arrayContainsKey!0 lt!278861 (select (arr!17904 a!2986) j!136) index!984))))

(declare-fun b!609708 () Bool)

(assert (=> b!609708 (= e!349219 e!349212)))

(declare-fun res!392329 () Bool)

(assert (=> b!609708 (=> res!392329 e!349212)))

(assert (=> b!609708 (= res!392329 (or (not (= (select (arr!17904 a!2986) j!136) lt!278869)) (not (= (select (arr!17904 a!2986) j!136) lt!278858)) (bvsge j!136 index!984)))))

(declare-fun b!609709 () Bool)

(declare-fun res!392320 () Bool)

(assert (=> b!609709 (=> (not res!392320) (not e!349218))))

(assert (=> b!609709 (= res!392320 (and (= (size!18268 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18268 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18268 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609710 () Bool)

(declare-fun e!349216 () Bool)

(declare-fun lt!278859 () SeekEntryResult!6351)

(declare-fun lt!278855 () SeekEntryResult!6351)

(assert (=> b!609710 (= e!349216 (= lt!278859 lt!278855))))

(declare-fun b!609711 () Bool)

(declare-fun e!349221 () Bool)

(assert (=> b!609711 (= e!349221 (not e!349209))))

(declare-fun res!392319 () Bool)

(assert (=> b!609711 (=> res!392319 e!349209)))

(declare-fun lt!278862 () SeekEntryResult!6351)

(assert (=> b!609711 (= res!392319 (not (= lt!278862 (Found!6351 index!984))))))

(declare-fun lt!278871 () Unit!19534)

(assert (=> b!609711 (= lt!278871 e!349220)))

(declare-fun c!69056 () Bool)

(assert (=> b!609711 (= c!69056 (= lt!278862 Undefined!6351))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37314 (_ BitVec 32)) SeekEntryResult!6351)

(assert (=> b!609711 (= lt!278862 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278869 lt!278861 mask!3053))))

(assert (=> b!609711 e!349216))

(declare-fun res!392327 () Bool)

(assert (=> b!609711 (=> (not res!392327) (not e!349216))))

(declare-fun lt!278865 () (_ BitVec 32))

(assert (=> b!609711 (= res!392327 (= lt!278855 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 lt!278869 lt!278861 mask!3053)))))

(assert (=> b!609711 (= lt!278855 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 (select (arr!17904 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609711 (= lt!278869 (select (store (arr!17904 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278867 () Unit!19534)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37314 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19534)

(assert (=> b!609711 (= lt!278867 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609711 (= lt!278865 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609712 () Bool)

(declare-fun Unit!19539 () Unit!19534)

(assert (=> b!609712 (= e!349220 Unit!19539)))

(declare-fun b!609713 () Bool)

(assert (=> b!609713 (= e!349217 e!349221)))

(declare-fun res!392316 () Bool)

(assert (=> b!609713 (=> (not res!392316) (not e!349221))))

(assert (=> b!609713 (= res!392316 (and (= lt!278859 (Found!6351 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17904 a!2986) index!984) (select (arr!17904 a!2986) j!136))) (not (= (select (arr!17904 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609713 (= lt!278859 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17904 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!55620 res!392328) b!609709))

(assert (= (and b!609709 res!392320) b!609691))

(assert (= (and b!609691 res!392323) b!609698))

(assert (= (and b!609698 res!392318) b!609700))

(assert (= (and b!609700 res!392317) b!609699))

(assert (= (and b!609699 res!392332) b!609696))

(assert (= (and b!609696 res!392321) b!609706))

(assert (= (and b!609706 res!392322) b!609695))

(assert (= (and b!609695 res!392331) b!609702))

(assert (= (and b!609702 res!392324) b!609713))

(assert (= (and b!609713 res!392316) b!609711))

(assert (= (and b!609711 res!392327) b!609710))

(assert (= (and b!609711 c!69056) b!609704))

(assert (= (and b!609711 (not c!69056)) b!609712))

(assert (= (and b!609711 (not res!392319)) b!609694))

(assert (= (and b!609694 res!392333) b!609708))

(assert (= (and b!609708 (not res!392329)) b!609701))

(assert (= (and b!609701 res!392330) b!609703))

(assert (= (and b!609694 (not res!392326)) b!609697))

(assert (= (and b!609697 c!69055) b!609705))

(assert (= (and b!609697 (not c!69055)) b!609692))

(assert (= (and b!609697 (not res!392325)) b!609693))

(assert (= (and b!609693 res!392315) b!609707))

(declare-fun m!586221 () Bool)

(assert (=> b!609691 m!586221))

(assert (=> b!609691 m!586221))

(declare-fun m!586223 () Bool)

(assert (=> b!609691 m!586223))

(declare-fun m!586225 () Bool)

(assert (=> b!609693 m!586225))

(assert (=> b!609693 m!586221))

(assert (=> b!609693 m!586221))

(declare-fun m!586227 () Bool)

(assert (=> b!609693 m!586227))

(assert (=> b!609693 m!586221))

(declare-fun m!586229 () Bool)

(assert (=> b!609693 m!586229))

(assert (=> b!609693 m!586221))

(declare-fun m!586231 () Bool)

(assert (=> b!609693 m!586231))

(declare-fun m!586233 () Bool)

(assert (=> b!609693 m!586233))

(assert (=> b!609703 m!586221))

(assert (=> b!609703 m!586221))

(declare-fun m!586235 () Bool)

(assert (=> b!609703 m!586235))

(declare-fun m!586237 () Bool)

(assert (=> b!609702 m!586237))

(declare-fun m!586239 () Bool)

(assert (=> b!609702 m!586239))

(assert (=> b!609694 m!586221))

(assert (=> b!609694 m!586237))

(declare-fun m!586241 () Bool)

(assert (=> b!609694 m!586241))

(declare-fun m!586243 () Bool)

(assert (=> b!609696 m!586243))

(assert (=> b!609705 m!586225))

(assert (=> b!609705 m!586221))

(assert (=> b!609705 m!586221))

(declare-fun m!586245 () Bool)

(assert (=> b!609705 m!586245))

(declare-fun m!586247 () Bool)

(assert (=> b!609705 m!586247))

(assert (=> b!609705 m!586221))

(declare-fun m!586249 () Bool)

(assert (=> b!609705 m!586249))

(assert (=> b!609705 m!586233))

(assert (=> b!609705 m!586221))

(declare-fun m!586251 () Bool)

(assert (=> b!609705 m!586251))

(declare-fun m!586253 () Bool)

(assert (=> b!609705 m!586253))

(declare-fun m!586255 () Bool)

(assert (=> b!609698 m!586255))

(assert (=> b!609708 m!586221))

(declare-fun m!586257 () Bool)

(assert (=> b!609711 m!586257))

(declare-fun m!586259 () Bool)

(assert (=> b!609711 m!586259))

(assert (=> b!609711 m!586221))

(assert (=> b!609711 m!586221))

(declare-fun m!586261 () Bool)

(assert (=> b!609711 m!586261))

(declare-fun m!586263 () Bool)

(assert (=> b!609711 m!586263))

(declare-fun m!586265 () Bool)

(assert (=> b!609711 m!586265))

(declare-fun m!586267 () Bool)

(assert (=> b!609711 m!586267))

(assert (=> b!609711 m!586237))

(assert (=> b!609707 m!586221))

(assert (=> b!609707 m!586221))

(assert (=> b!609707 m!586235))

(assert (=> b!609701 m!586221))

(assert (=> b!609701 m!586221))

(assert (=> b!609701 m!586229))

(declare-fun m!586269 () Bool)

(assert (=> b!609700 m!586269))

(declare-fun m!586271 () Bool)

(assert (=> b!609713 m!586271))

(assert (=> b!609713 m!586221))

(assert (=> b!609713 m!586221))

(declare-fun m!586273 () Bool)

(assert (=> b!609713 m!586273))

(declare-fun m!586275 () Bool)

(assert (=> b!609706 m!586275))

(declare-fun m!586277 () Bool)

(assert (=> b!609699 m!586277))

(declare-fun m!586279 () Bool)

(assert (=> start!55620 m!586279))

(declare-fun m!586281 () Bool)

(assert (=> start!55620 m!586281))

(declare-fun m!586283 () Bool)

(assert (=> b!609695 m!586283))

(push 1)

(assert (not b!609703))

(assert (not b!609706))

(assert (not b!609696))

(assert (not b!609693))

(assert (not b!609699))

(assert (not start!55620))

(assert (not b!609711))

(assert (not b!609705))

(assert (not b!609700))

(assert (not b!609701))

(assert (not b!609713))

(assert (not b!609698))

(assert (not b!609707))

(assert (not b!609691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!609977 () Bool)

(declare-fun c!69110 () Bool)

(declare-fun lt!279018 () (_ BitVec 64))

(assert (=> b!609977 (= c!69110 (= lt!279018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349399 () SeekEntryResult!6351)

(declare-fun e!349397 () SeekEntryResult!6351)

(assert (=> b!609977 (= e!349399 e!349397)))

(declare-fun d!87977 () Bool)

(declare-fun lt!279021 () SeekEntryResult!6351)

(assert (=> d!87977 (and (or (is-Undefined!6351 lt!279021) (not (is-Found!6351 lt!279021)) (and (bvsge (index!27679 lt!279021) #b00000000000000000000000000000000) (bvslt (index!27679 lt!279021) (size!18268 a!2986)))) (or (is-Undefined!6351 lt!279021) (is-Found!6351 lt!279021) (not (is-MissingZero!6351 lt!279021)) (and (bvsge (index!27678 lt!279021) #b00000000000000000000000000000000) (bvslt (index!27678 lt!279021) (size!18268 a!2986)))) (or (is-Undefined!6351 lt!279021) (is-Found!6351 lt!279021) (is-MissingZero!6351 lt!279021) (not (is-MissingVacant!6351 lt!279021)) (and (bvsge (index!27681 lt!279021) #b00000000000000000000000000000000) (bvslt (index!27681 lt!279021) (size!18268 a!2986)))) (or (is-Undefined!6351 lt!279021) (ite (is-Found!6351 lt!279021) (= (select (arr!17904 a!2986) (index!27679 lt!279021)) k!1786) (ite (is-MissingZero!6351 lt!279021) (= (select (arr!17904 a!2986) (index!27678 lt!279021)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6351 lt!279021) (= (select (arr!17904 a!2986) (index!27681 lt!279021)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!349398 () SeekEntryResult!6351)

(assert (=> d!87977 (= lt!279021 e!349398)))

(declare-fun c!69111 () Bool)

(declare-fun lt!279020 () SeekEntryResult!6351)

(assert (=> d!87977 (= c!69111 (and (is-Intermediate!6351 lt!279020) (undefined!7163 lt!279020)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37314 (_ BitVec 32)) SeekEntryResult!6351)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87977 (= lt!279020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!87977 (validMask!0 mask!3053)))

(assert (=> d!87977 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!279021)))

(declare-fun b!609978 () Bool)

(assert (=> b!609978 (= e!349399 (Found!6351 (index!27680 lt!279020)))))

(declare-fun b!609979 () Bool)

(assert (=> b!609979 (= e!349397 (seekKeyOrZeroReturnVacant!0 (x!56509 lt!279020) (index!27680 lt!279020) (index!27680 lt!279020) k!1786 a!2986 mask!3053))))

(declare-fun b!609980 () Bool)

(assert (=> b!609980 (= e!349398 Undefined!6351)))

(declare-fun b!609981 () Bool)

(assert (=> b!609981 (= e!349397 (MissingZero!6351 (index!27680 lt!279020)))))

(declare-fun b!609982 () Bool)

(assert (=> b!609982 (= e!349398 e!349399)))

(assert (=> b!609982 (= lt!279018 (select (arr!17904 a!2986) (index!27680 lt!279020)))))

(declare-fun c!69112 () Bool)

(assert (=> b!609982 (= c!69112 (= lt!279018 k!1786))))

(assert (= (and d!87977 c!69111) b!609980))

(assert (= (and d!87977 (not c!69111)) b!609982))

(assert (= (and b!609982 c!69112) b!609978))

(assert (= (and b!609982 (not c!69112)) b!609977))

(assert (= (and b!609977 c!69110) b!609981))

(assert (= (and b!609977 (not c!69110)) b!609979))

(declare-fun m!586507 () Bool)

(assert (=> d!87977 m!586507))

(declare-fun m!586509 () Bool)

(assert (=> d!87977 m!586509))

(assert (=> d!87977 m!586509))

(declare-fun m!586511 () Bool)

(assert (=> d!87977 m!586511))

(declare-fun m!586513 () Bool)

(assert (=> d!87977 m!586513))

(assert (=> d!87977 m!586279))

(declare-fun m!586517 () Bool)

(assert (=> d!87977 m!586517))

(declare-fun m!586519 () Bool)

(assert (=> b!609979 m!586519))

(declare-fun m!586521 () Bool)

(assert (=> b!609982 m!586521))

(assert (=> b!609699 d!87977))

(declare-fun d!88007 () Bool)

(assert (=> d!88007 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55620 d!88007))

(declare-fun d!88025 () Bool)

(assert (=> d!88025 (= (array_inv!13678 a!2986) (bvsge (size!18268 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55620 d!88025))

(declare-fun b!610029 () Bool)

(declare-fun e!349433 () SeekEntryResult!6351)

(assert (=> b!610029 (= e!349433 (MissingVacant!6351 vacantSpotIndex!68))))

(declare-fun b!610030 () Bool)

(declare-fun c!69128 () Bool)

(declare-fun lt!279052 () (_ BitVec 64))

(assert (=> b!610030 (= c!69128 (= lt!279052 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349434 () SeekEntryResult!6351)

(assert (=> b!610030 (= e!349434 e!349433)))

(declare-fun b!610031 () Bool)

(declare-fun e!349435 () SeekEntryResult!6351)

(assert (=> b!610031 (= e!349435 e!349434)))

(declare-fun c!69127 () Bool)

(assert (=> b!610031 (= c!69127 (= lt!279052 (select (arr!17904 a!2986) j!136)))))

(declare-fun b!610033 () Bool)

(assert (=> b!610033 (= e!349433 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!278865 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17904 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610034 () Bool)

(assert (=> b!610034 (= e!349434 (Found!6351 lt!278865))))

(declare-fun d!88027 () Bool)

(declare-fun lt!279053 () SeekEntryResult!6351)

(assert (=> d!88027 (and (or (is-Undefined!6351 lt!279053) (not (is-Found!6351 lt!279053)) (and (bvsge (index!27679 lt!279053) #b00000000000000000000000000000000) (bvslt (index!27679 lt!279053) (size!18268 a!2986)))) (or (is-Undefined!6351 lt!279053) (is-Found!6351 lt!279053) (not (is-MissingVacant!6351 lt!279053)) (not (= (index!27681 lt!279053) vacantSpotIndex!68)) (and (bvsge (index!27681 lt!279053) #b00000000000000000000000000000000) (bvslt (index!27681 lt!279053) (size!18268 a!2986)))) (or (is-Undefined!6351 lt!279053) (ite (is-Found!6351 lt!279053) (= (select (arr!17904 a!2986) (index!27679 lt!279053)) (select (arr!17904 a!2986) j!136)) (and (is-MissingVacant!6351 lt!279053) (= (index!27681 lt!279053) vacantSpotIndex!68) (= (select (arr!17904 a!2986) (index!27681 lt!279053)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88027 (= lt!279053 e!349435)))

(declare-fun c!69126 () Bool)

(assert (=> d!88027 (= c!69126 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88027 (= lt!279052 (select (arr!17904 a!2986) lt!278865))))

(assert (=> d!88027 (validMask!0 mask!3053)))

(assert (=> d!88027 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 (select (arr!17904 a!2986) j!136) a!2986 mask!3053) lt!279053)))

(declare-fun b!610032 () Bool)

(assert (=> b!610032 (= e!349435 Undefined!6351)))

(assert (= (and d!88027 c!69126) b!610032))

(assert (= (and d!88027 (not c!69126)) b!610031))

(assert (= (and b!610031 c!69127) b!610034))

(assert (= (and b!610031 (not c!69127)) b!610030))

(assert (= (and b!610030 c!69128) b!610029))

(assert (= (and b!610030 (not c!69128)) b!610033))

(declare-fun m!586565 () Bool)

(assert (=> b!610033 m!586565))

(assert (=> b!610033 m!586565))

(assert (=> b!610033 m!586221))

(declare-fun m!586567 () Bool)

(assert (=> b!610033 m!586567))

(declare-fun m!586569 () Bool)

(assert (=> d!88027 m!586569))

(declare-fun m!586571 () Bool)

(assert (=> d!88027 m!586571))

(declare-fun m!586573 () Bool)

(assert (=> d!88027 m!586573))

(assert (=> d!88027 m!586279))

(assert (=> b!609711 d!88027))

(declare-fun b!610035 () Bool)

(declare-fun e!349436 () SeekEntryResult!6351)

(assert (=> b!610035 (= e!349436 (MissingVacant!6351 vacantSpotIndex!68))))

(declare-fun b!610036 () Bool)

(declare-fun c!69131 () Bool)

(declare-fun lt!279054 () (_ BitVec 64))

(assert (=> b!610036 (= c!69131 (= lt!279054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349437 () SeekEntryResult!6351)

(assert (=> b!610036 (= e!349437 e!349436)))

(declare-fun b!610037 () Bool)

(declare-fun e!349438 () SeekEntryResult!6351)

(assert (=> b!610037 (= e!349438 e!349437)))

(declare-fun c!69130 () Bool)

(assert (=> b!610037 (= c!69130 (= lt!279054 lt!278869))))

(declare-fun b!610039 () Bool)

(assert (=> b!610039 (= e!349436 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!278869 lt!278861 mask!3053))))

(declare-fun b!610040 () Bool)

(assert (=> b!610040 (= e!349437 (Found!6351 index!984))))

(declare-fun lt!279055 () SeekEntryResult!6351)

(declare-fun d!88041 () Bool)

(assert (=> d!88041 (and (or (is-Undefined!6351 lt!279055) (not (is-Found!6351 lt!279055)) (and (bvsge (index!27679 lt!279055) #b00000000000000000000000000000000) (bvslt (index!27679 lt!279055) (size!18268 lt!278861)))) (or (is-Undefined!6351 lt!279055) (is-Found!6351 lt!279055) (not (is-MissingVacant!6351 lt!279055)) (not (= (index!27681 lt!279055) vacantSpotIndex!68)) (and (bvsge (index!27681 lt!279055) #b00000000000000000000000000000000) (bvslt (index!27681 lt!279055) (size!18268 lt!278861)))) (or (is-Undefined!6351 lt!279055) (ite (is-Found!6351 lt!279055) (= (select (arr!17904 lt!278861) (index!27679 lt!279055)) lt!278869) (and (is-MissingVacant!6351 lt!279055) (= (index!27681 lt!279055) vacantSpotIndex!68) (= (select (arr!17904 lt!278861) (index!27681 lt!279055)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88041 (= lt!279055 e!349438)))

(declare-fun c!69129 () Bool)

(assert (=> d!88041 (= c!69129 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88041 (= lt!279054 (select (arr!17904 lt!278861) index!984))))

(assert (=> d!88041 (validMask!0 mask!3053)))

(assert (=> d!88041 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278869 lt!278861 mask!3053) lt!279055)))

(declare-fun b!610038 () Bool)

(assert (=> b!610038 (= e!349438 Undefined!6351)))

(assert (= (and d!88041 c!69129) b!610038))

(assert (= (and d!88041 (not c!69129)) b!610037))

(assert (= (and b!610037 c!69130) b!610040))

(assert (= (and b!610037 (not c!69130)) b!610036))

(assert (= (and b!610036 c!69131) b!610035))

(assert (= (and b!610036 (not c!69131)) b!610039))

(assert (=> b!610039 m!586257))

(assert (=> b!610039 m!586257))

(declare-fun m!586575 () Bool)

(assert (=> b!610039 m!586575))

(declare-fun m!586577 () Bool)

(assert (=> d!88041 m!586577))

(declare-fun m!586579 () Bool)

(assert (=> d!88041 m!586579))

(declare-fun m!586581 () Bool)

(assert (=> d!88041 m!586581))

(assert (=> d!88041 m!586279))

(assert (=> b!609711 d!88041))

(declare-fun b!610042 () Bool)

(declare-fun e!349440 () SeekEntryResult!6351)

(assert (=> b!610042 (= e!349440 (MissingVacant!6351 vacantSpotIndex!68))))

(declare-fun b!610043 () Bool)

(declare-fun c!69134 () Bool)

(declare-fun lt!279057 () (_ BitVec 64))

(assert (=> b!610043 (= c!69134 (= lt!279057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349441 () SeekEntryResult!6351)

(assert (=> b!610043 (= e!349441 e!349440)))

(declare-fun b!610044 () Bool)

(declare-fun e!349442 () SeekEntryResult!6351)

(assert (=> b!610044 (= e!349442 e!349441)))

(declare-fun c!69133 () Bool)

(assert (=> b!610044 (= c!69133 (= lt!279057 lt!278869))))

(declare-fun b!610046 () Bool)

(assert (=> b!610046 (= e!349440 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!278865 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!278869 lt!278861 mask!3053))))

(declare-fun b!610047 () Bool)

(assert (=> b!610047 (= e!349441 (Found!6351 lt!278865))))

(declare-fun d!88043 () Bool)

(declare-fun lt!279058 () SeekEntryResult!6351)

(assert (=> d!88043 (and (or (is-Undefined!6351 lt!279058) (not (is-Found!6351 lt!279058)) (and (bvsge (index!27679 lt!279058) #b00000000000000000000000000000000) (bvslt (index!27679 lt!279058) (size!18268 lt!278861)))) (or (is-Undefined!6351 lt!279058) (is-Found!6351 lt!279058) (not (is-MissingVacant!6351 lt!279058)) (not (= (index!27681 lt!279058) vacantSpotIndex!68)) (and (bvsge (index!27681 lt!279058) #b00000000000000000000000000000000) (bvslt (index!27681 lt!279058) (size!18268 lt!278861)))) (or (is-Undefined!6351 lt!279058) (ite (is-Found!6351 lt!279058) (= (select (arr!17904 lt!278861) (index!27679 lt!279058)) lt!278869) (and (is-MissingVacant!6351 lt!279058) (= (index!27681 lt!279058) vacantSpotIndex!68) (= (select (arr!17904 lt!278861) (index!27681 lt!279058)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88043 (= lt!279058 e!349442)))

(declare-fun c!69132 () Bool)

(assert (=> d!88043 (= c!69132 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88043 (= lt!279057 (select (arr!17904 lt!278861) lt!278865))))

(assert (=> d!88043 (validMask!0 mask!3053)))

(assert (=> d!88043 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 lt!278869 lt!278861 mask!3053) lt!279058)))

(declare-fun b!610045 () Bool)

(assert (=> b!610045 (= e!349442 Undefined!6351)))

(assert (= (and d!88043 c!69132) b!610045))

(assert (= (and d!88043 (not c!69132)) b!610044))

(assert (= (and b!610044 c!69133) b!610047))

(assert (= (and b!610044 (not c!69133)) b!610043))

(assert (= (and b!610043 c!69134) b!610042))

(assert (= (and b!610043 (not c!69134)) b!610046))

(assert (=> b!610046 m!586565))

(assert (=> b!610046 m!586565))

(declare-fun m!586587 () Bool)

(assert (=> b!610046 m!586587))

(declare-fun m!586589 () Bool)

(assert (=> d!88043 m!586589))

(declare-fun m!586591 () Bool)

(assert (=> d!88043 m!586591))

(declare-fun m!586593 () Bool)

(assert (=> d!88043 m!586593))

(assert (=> d!88043 m!586279))

(assert (=> b!609711 d!88043))

(declare-fun d!88047 () Bool)

(declare-fun lt!279065 () (_ BitVec 32))

(assert (=> d!88047 (and (bvsge lt!279065 #b00000000000000000000000000000000) (bvslt lt!279065 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88047 (= lt!279065 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88047 (validMask!0 mask!3053)))

(assert (=> d!88047 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279065)))

(declare-fun bs!18613 () Bool)

(assert (= bs!18613 d!88047))

(declare-fun m!586613 () Bool)

(assert (=> bs!18613 m!586613))

(assert (=> bs!18613 m!586279))

(assert (=> b!609711 d!88047))

(declare-fun d!88053 () Bool)

(declare-fun e!349464 () Bool)

(assert (=> d!88053 e!349464))

(declare-fun res!392518 () Bool)

(assert (=> d!88053 (=> (not res!392518) (not e!349464))))

(assert (=> d!88053 (= res!392518 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18268 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18268 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18268 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18268 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18268 a!2986))))))

(declare-fun lt!279074 () Unit!19534)

(declare-fun choose!9 (array!37314 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19534)

(assert (=> d!88053 (= lt!279074 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88053 (validMask!0 mask!3053)))

(assert (=> d!88053 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 mask!3053) lt!279074)))

(declare-fun b!610084 () Bool)

(assert (=> b!610084 (= e!349464 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 (select (arr!17904 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278865 vacantSpotIndex!68 (select (store (arr!17904 a!2986) i!1108 k!1786) j!136) (array!37315 (store (arr!17904 a!2986) i!1108 k!1786) (size!18268 a!2986)) mask!3053)))))

(assert (= (and d!88053 res!392518) b!610084))

(declare-fun m!586625 () Bool)

(assert (=> d!88053 m!586625))

(assert (=> d!88053 m!586279))

(assert (=> b!610084 m!586221))

(assert (=> b!610084 m!586261))

(assert (=> b!610084 m!586259))

(assert (=> b!610084 m!586237))

(assert (=> b!610084 m!586221))

(assert (=> b!610084 m!586259))

(declare-fun m!586627 () Bool)

(assert (=> b!610084 m!586627))

(assert (=> b!609711 d!88053))

(declare-fun d!88059 () Bool)

(declare-fun res!392525 () Bool)

(declare-fun e!349471 () Bool)

(assert (=> d!88059 (=> res!392525 e!349471)))

(assert (=> d!88059 (= res!392525 (= (select (arr!17904 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88059 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!349471)))

(declare-fun b!610089 () Bool)

(declare-fun e!349472 () Bool)

(assert (=> b!610089 (= e!349471 e!349472)))

(declare-fun res!392526 () Bool)

(assert (=> b!610089 (=> (not res!392526) (not e!349472))))

(assert (=> b!610089 (= res!392526 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18268 a!2986)))))

(declare-fun b!610090 () Bool)

(assert (=> b!610090 (= e!349472 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88059 (not res!392525)) b!610089))

(assert (= (and b!610089 res!392526) b!610090))

(declare-fun m!586629 () Bool)

(assert (=> d!88059 m!586629))

(declare-fun m!586631 () Bool)

(assert (=> b!610090 m!586631))

(assert (=> b!609700 d!88059))

(declare-fun d!88061 () Bool)

(assert (=> d!88061 (= (validKeyInArray!0 (select (arr!17904 a!2986) j!136)) (and (not (= (select (arr!17904 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17904 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!609691 d!88061))

(declare-fun d!88063 () Bool)

(declare-fun res!392527 () Bool)

(declare-fun e!349473 () Bool)

