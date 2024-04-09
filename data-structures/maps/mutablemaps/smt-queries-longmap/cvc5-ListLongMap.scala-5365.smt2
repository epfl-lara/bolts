; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71812 () Bool)

(assert start!71812)

(declare-fun b!834184 () Bool)

(declare-datatypes ((Unit!28652 0))(
  ( (Unit!28653) )
))
(declare-fun e!465437 () Unit!28652)

(declare-fun lt!378906 () Unit!28652)

(assert (=> b!834184 (= e!465437 lt!378906)))

(declare-datatypes ((array!46666 0))(
  ( (array!46667 (arr!22363 (Array (_ BitVec 32) (_ BitVec 64))) (size!22784 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46666)

(declare-fun lt!378902 () Unit!28652)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46666 (_ BitVec 32) (_ BitVec 32)) Unit!28652)

(assert (=> b!834184 (= lt!378902 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36530 () (_ BitVec 32))

(declare-fun lt!378903 () (_ BitVec 32))

(assert (=> b!834184 (= call!36530 (bvadd #b00000000000000000000000000000001 lt!378903))))

(declare-fun lt!378904 () array!46666)

(assert (=> b!834184 (= lt!378906 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378904 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36529 () (_ BitVec 32))

(declare-fun lt!378901 () (_ BitVec 32))

(assert (=> b!834184 (= call!36529 (bvadd #b00000000000000000000000000000001 lt!378901))))

(declare-fun res!567372 () Bool)

(declare-fun e!465436 () Bool)

(assert (=> start!71812 (=> (not res!567372) (not e!465436))))

(assert (=> start!71812 (= res!567372 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22784 a!4227))))))

(assert (=> start!71812 e!465436))

(assert (=> start!71812 true))

(declare-fun array_inv!17786 (array!46666) Bool)

(assert (=> start!71812 (array_inv!17786 a!4227)))

(declare-fun b!834185 () Bool)

(declare-fun e!465439 () Bool)

(assert (=> b!834185 (= e!465436 e!465439)))

(declare-fun res!567374 () Bool)

(assert (=> b!834185 (=> (not res!567374) (not e!465439))))

(assert (=> b!834185 (= res!567374 (and (= lt!378901 lt!378903) (not (= to!390 (size!22784 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46666 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834185 (= lt!378903 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834185 (= lt!378901 (arrayCountValidKeys!0 lt!378904 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834185 (= lt!378904 (array!46667 (store (arr!22363 a!4227) i!1466 k!2968) (size!22784 a!4227)))))

(declare-fun b!834186 () Bool)

(declare-fun e!465440 () Bool)

(assert (=> b!834186 (= e!465440 false)))

(declare-fun lt!378908 () (_ BitVec 32))

(assert (=> b!834186 (= lt!378908 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378900 () (_ BitVec 32))

(assert (=> b!834186 (= lt!378900 (arrayCountValidKeys!0 lt!378904 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834187 () Bool)

(declare-fun lt!378905 () Unit!28652)

(assert (=> b!834187 (= e!465437 lt!378905)))

(declare-fun lt!378909 () Unit!28652)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46666 (_ BitVec 32) (_ BitVec 32)) Unit!28652)

(assert (=> b!834187 (= lt!378909 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834187 (= call!36530 lt!378903)))

(assert (=> b!834187 (= lt!378905 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378904 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834187 (= call!36529 lt!378901)))

(declare-fun bm!36526 () Bool)

(assert (=> bm!36526 (= call!36529 (arrayCountValidKeys!0 lt!378904 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834188 () Bool)

(declare-fun res!567376 () Bool)

(assert (=> b!834188 (=> (not res!567376) (not e!465436))))

(assert (=> b!834188 (= res!567376 (and (bvslt (size!22784 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22784 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36527 () Bool)

(assert (=> bm!36527 (= call!36530 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834189 () Bool)

(declare-fun res!567373 () Bool)

(assert (=> b!834189 (=> (not res!567373) (not e!465436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834189 (= res!567373 (validKeyInArray!0 k!2968))))

(declare-fun b!834190 () Bool)

(assert (=> b!834190 (= e!465439 e!465440)))

(declare-fun res!567375 () Bool)

(assert (=> b!834190 (=> (not res!567375) (not e!465440))))

(assert (=> b!834190 (= res!567375 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22784 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!378907 () Unit!28652)

(assert (=> b!834190 (= lt!378907 e!465437)))

(declare-fun c!90802 () Bool)

(assert (=> b!834190 (= c!90802 (validKeyInArray!0 (select (arr!22363 a!4227) to!390)))))

(declare-fun b!834191 () Bool)

(declare-fun res!567371 () Bool)

(assert (=> b!834191 (=> (not res!567371) (not e!465436))))

(assert (=> b!834191 (= res!567371 (not (validKeyInArray!0 (select (arr!22363 a!4227) i!1466))))))

(assert (= (and start!71812 res!567372) b!834191))

(assert (= (and b!834191 res!567371) b!834189))

(assert (= (and b!834189 res!567373) b!834188))

(assert (= (and b!834188 res!567376) b!834185))

(assert (= (and b!834185 res!567374) b!834190))

(assert (= (and b!834190 c!90802) b!834184))

(assert (= (and b!834190 (not c!90802)) b!834187))

(assert (= (or b!834184 b!834187) bm!36526))

(assert (= (or b!834184 b!834187) bm!36527))

(assert (= (and b!834190 res!567375) b!834186))

(declare-fun m!779253 () Bool)

(assert (=> bm!36526 m!779253))

(declare-fun m!779255 () Bool)

(assert (=> start!71812 m!779255))

(declare-fun m!779257 () Bool)

(assert (=> b!834190 m!779257))

(assert (=> b!834190 m!779257))

(declare-fun m!779259 () Bool)

(assert (=> b!834190 m!779259))

(declare-fun m!779261 () Bool)

(assert (=> b!834189 m!779261))

(declare-fun m!779263 () Bool)

(assert (=> b!834186 m!779263))

(assert (=> b!834186 m!779253))

(declare-fun m!779265 () Bool)

(assert (=> b!834185 m!779265))

(declare-fun m!779267 () Bool)

(assert (=> b!834185 m!779267))

(declare-fun m!779269 () Bool)

(assert (=> b!834185 m!779269))

(assert (=> bm!36527 m!779263))

(declare-fun m!779271 () Bool)

(assert (=> b!834184 m!779271))

(declare-fun m!779273 () Bool)

(assert (=> b!834184 m!779273))

(declare-fun m!779275 () Bool)

(assert (=> b!834191 m!779275))

(assert (=> b!834191 m!779275))

(declare-fun m!779277 () Bool)

(assert (=> b!834191 m!779277))

(declare-fun m!779279 () Bool)

(assert (=> b!834187 m!779279))

(declare-fun m!779281 () Bool)

(assert (=> b!834187 m!779281))

(push 1)

