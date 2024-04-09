; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71816 () Bool)

(assert start!71816)

(declare-fun b!834232 () Bool)

(declare-datatypes ((Unit!28656 0))(
  ( (Unit!28657) )
))
(declare-fun e!465470 () Unit!28656)

(declare-fun lt!378963 () Unit!28656)

(assert (=> b!834232 (= e!465470 lt!378963)))

(declare-datatypes ((array!46670 0))(
  ( (array!46671 (arr!22365 (Array (_ BitVec 32) (_ BitVec 64))) (size!22786 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46670)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!378964 () Unit!28656)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46670 (_ BitVec 32) (_ BitVec 32)) Unit!28656)

(assert (=> b!834232 (= lt!378964 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36542 () (_ BitVec 32))

(declare-fun lt!378962 () (_ BitVec 32))

(assert (=> b!834232 (= call!36542 (bvadd #b00000000000000000000000000000001 lt!378962))))

(declare-fun lt!378968 () array!46670)

(assert (=> b!834232 (= lt!378963 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378968 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36541 () (_ BitVec 32))

(declare-fun lt!378960 () (_ BitVec 32))

(assert (=> b!834232 (= call!36541 (bvadd #b00000000000000000000000000000001 lt!378960))))

(declare-fun bm!36538 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46670 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36538 (= call!36541 (arrayCountValidKeys!0 lt!378968 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834233 () Bool)

(declare-fun e!465468 () Bool)

(declare-fun e!465467 () Bool)

(assert (=> b!834233 (= e!465468 e!465467)))

(declare-fun res!567410 () Bool)

(assert (=> b!834233 (=> (not res!567410) (not e!465467))))

(assert (=> b!834233 (= res!567410 (and (= lt!378960 lt!378962) (not (= to!390 (size!22786 a!4227)))))))

(assert (=> b!834233 (= lt!378962 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834233 (= lt!378960 (arrayCountValidKeys!0 lt!378968 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834233 (= lt!378968 (array!46671 (store (arr!22365 a!4227) i!1466 k!2968) (size!22786 a!4227)))))

(declare-fun bm!36539 () Bool)

(assert (=> bm!36539 (= call!36542 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834234 () Bool)

(declare-fun e!465466 () Bool)

(assert (=> b!834234 (= e!465467 e!465466)))

(declare-fun res!567408 () Bool)

(assert (=> b!834234 (=> (not res!567408) (not e!465466))))

(assert (=> b!834234 (= res!567408 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22786 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!378966 () Unit!28656)

(assert (=> b!834234 (= lt!378966 e!465470)))

(declare-fun c!90808 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834234 (= c!90808 (validKeyInArray!0 (select (arr!22365 a!4227) to!390)))))

(declare-fun b!834235 () Bool)

(assert (=> b!834235 (= e!465466 false)))

(declare-fun lt!378967 () (_ BitVec 32))

(assert (=> b!834235 (= lt!378967 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378969 () (_ BitVec 32))

(assert (=> b!834235 (= lt!378969 (arrayCountValidKeys!0 lt!378968 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567412 () Bool)

(assert (=> start!71816 (=> (not res!567412) (not e!465468))))

(assert (=> start!71816 (= res!567412 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22786 a!4227))))))

(assert (=> start!71816 e!465468))

(assert (=> start!71816 true))

(declare-fun array_inv!17788 (array!46670) Bool)

(assert (=> start!71816 (array_inv!17788 a!4227)))

(declare-fun b!834236 () Bool)

(declare-fun res!567411 () Bool)

(assert (=> b!834236 (=> (not res!567411) (not e!465468))))

(assert (=> b!834236 (= res!567411 (not (validKeyInArray!0 (select (arr!22365 a!4227) i!1466))))))

(declare-fun b!834237 () Bool)

(declare-fun res!567409 () Bool)

(assert (=> b!834237 (=> (not res!567409) (not e!465468))))

(assert (=> b!834237 (= res!567409 (and (bvslt (size!22786 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22786 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834238 () Bool)

(declare-fun res!567407 () Bool)

(assert (=> b!834238 (=> (not res!567407) (not e!465468))))

(assert (=> b!834238 (= res!567407 (validKeyInArray!0 k!2968))))

(declare-fun b!834239 () Bool)

(declare-fun lt!378965 () Unit!28656)

(assert (=> b!834239 (= e!465470 lt!378965)))

(declare-fun lt!378961 () Unit!28656)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46670 (_ BitVec 32) (_ BitVec 32)) Unit!28656)

(assert (=> b!834239 (= lt!378961 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834239 (= call!36542 lt!378962)))

(assert (=> b!834239 (= lt!378965 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378968 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834239 (= call!36541 lt!378960)))

(assert (= (and start!71816 res!567412) b!834236))

(assert (= (and b!834236 res!567411) b!834238))

(assert (= (and b!834238 res!567407) b!834237))

(assert (= (and b!834237 res!567409) b!834233))

(assert (= (and b!834233 res!567410) b!834234))

(assert (= (and b!834234 c!90808) b!834232))

(assert (= (and b!834234 (not c!90808)) b!834239))

(assert (= (or b!834232 b!834239) bm!36538))

(assert (= (or b!834232 b!834239) bm!36539))

(assert (= (and b!834234 res!567408) b!834235))

(declare-fun m!779313 () Bool)

(assert (=> b!834232 m!779313))

(declare-fun m!779315 () Bool)

(assert (=> b!834232 m!779315))

(declare-fun m!779317 () Bool)

(assert (=> b!834239 m!779317))

(declare-fun m!779319 () Bool)

(assert (=> b!834239 m!779319))

(declare-fun m!779321 () Bool)

(assert (=> bm!36539 m!779321))

(assert (=> b!834235 m!779321))

(declare-fun m!779323 () Bool)

(assert (=> b!834235 m!779323))

(declare-fun m!779325 () Bool)

(assert (=> b!834234 m!779325))

(assert (=> b!834234 m!779325))

(declare-fun m!779327 () Bool)

(assert (=> b!834234 m!779327))

(assert (=> bm!36538 m!779323))

(declare-fun m!779329 () Bool)

(assert (=> b!834238 m!779329))

(declare-fun m!779331 () Bool)

(assert (=> b!834236 m!779331))

(assert (=> b!834236 m!779331))

(declare-fun m!779333 () Bool)

(assert (=> b!834236 m!779333))

(declare-fun m!779335 () Bool)

(assert (=> start!71816 m!779335))

(declare-fun m!779337 () Bool)

(assert (=> b!834233 m!779337))

(declare-fun m!779339 () Bool)

(assert (=> b!834233 m!779339))

(declare-fun m!779341 () Bool)

(assert (=> b!834233 m!779341))

(push 1)

(assert (not b!834235))

(assert (not b!834233))

(assert (not b!834232))

(assert (not bm!36539))

