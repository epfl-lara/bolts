; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71810 () Bool)

(assert start!71810)

(declare-datatypes ((array!46664 0))(
  ( (array!46665 (arr!22362 (Array (_ BitVec 32) (_ BitVec 64))) (size!22783 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46664)

(declare-fun bm!36520 () Bool)

(declare-fun call!36524 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46664 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36520 (= call!36524 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834160 () Bool)

(declare-fun res!567354 () Bool)

(declare-fun e!465422 () Bool)

(assert (=> b!834160 (=> (not res!567354) (not e!465422))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834160 (= res!567354 (validKeyInArray!0 k!2968))))

(declare-fun b!834161 () Bool)

(declare-fun res!567356 () Bool)

(assert (=> b!834161 (=> (not res!567356) (not e!465422))))

(assert (=> b!834161 (= res!567356 (and (bvslt (size!22783 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22783 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834162 () Bool)

(declare-fun e!465423 () Bool)

(declare-fun e!465425 () Bool)

(assert (=> b!834162 (= e!465423 e!465425)))

(declare-fun res!567357 () Bool)

(assert (=> b!834162 (=> (not res!567357) (not e!465425))))

(assert (=> b!834162 (= res!567357 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22783 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28650 0))(
  ( (Unit!28651) )
))
(declare-fun lt!378873 () Unit!28650)

(declare-fun e!465421 () Unit!28650)

(assert (=> b!834162 (= lt!378873 e!465421)))

(declare-fun c!90799 () Bool)

(assert (=> b!834162 (= c!90799 (validKeyInArray!0 (select (arr!22362 a!4227) to!390)))))

(declare-fun res!567355 () Bool)

(assert (=> start!71810 (=> (not res!567355) (not e!465422))))

(assert (=> start!71810 (= res!567355 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22783 a!4227))))))

(assert (=> start!71810 e!465422))

(assert (=> start!71810 true))

(declare-fun array_inv!17785 (array!46664) Bool)

(assert (=> start!71810 (array_inv!17785 a!4227)))

(declare-fun b!834163 () Bool)

(assert (=> b!834163 (= e!465422 e!465423)))

(declare-fun res!567358 () Bool)

(assert (=> b!834163 (=> (not res!567358) (not e!465423))))

(declare-fun lt!378877 () (_ BitVec 32))

(declare-fun lt!378871 () (_ BitVec 32))

(assert (=> b!834163 (= res!567358 (and (= lt!378877 lt!378871) (not (= to!390 (size!22783 a!4227)))))))

(assert (=> b!834163 (= lt!378871 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378870 () array!46664)

(assert (=> b!834163 (= lt!378877 (arrayCountValidKeys!0 lt!378870 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834163 (= lt!378870 (array!46665 (store (arr!22362 a!4227) i!1466 k!2968) (size!22783 a!4227)))))

(declare-fun b!834164 () Bool)

(declare-fun res!567353 () Bool)

(assert (=> b!834164 (=> (not res!567353) (not e!465422))))

(assert (=> b!834164 (= res!567353 (not (validKeyInArray!0 (select (arr!22362 a!4227) i!1466))))))

(declare-fun b!834165 () Bool)

(assert (=> b!834165 (= e!465425 false)))

(declare-fun lt!378879 () (_ BitVec 32))

(assert (=> b!834165 (= lt!378879 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378875 () (_ BitVec 32))

(assert (=> b!834165 (= lt!378875 (arrayCountValidKeys!0 lt!378870 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834166 () Bool)

(declare-fun lt!378874 () Unit!28650)

(assert (=> b!834166 (= e!465421 lt!378874)))

(declare-fun lt!378878 () Unit!28650)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46664 (_ BitVec 32) (_ BitVec 32)) Unit!28650)

(assert (=> b!834166 (= lt!378878 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834166 (= call!36524 (bvadd #b00000000000000000000000000000001 lt!378871))))

(assert (=> b!834166 (= lt!378874 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378870 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36523 () (_ BitVec 32))

(assert (=> b!834166 (= call!36523 (bvadd #b00000000000000000000000000000001 lt!378877))))

(declare-fun b!834167 () Bool)

(declare-fun lt!378872 () Unit!28650)

(assert (=> b!834167 (= e!465421 lt!378872)))

(declare-fun lt!378876 () Unit!28650)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46664 (_ BitVec 32) (_ BitVec 32)) Unit!28650)

(assert (=> b!834167 (= lt!378876 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834167 (= call!36524 lt!378871)))

(assert (=> b!834167 (= lt!378872 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378870 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834167 (= call!36523 lt!378877)))

(declare-fun bm!36521 () Bool)

(assert (=> bm!36521 (= call!36523 (arrayCountValidKeys!0 lt!378870 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71810 res!567355) b!834164))

(assert (= (and b!834164 res!567353) b!834160))

(assert (= (and b!834160 res!567354) b!834161))

(assert (= (and b!834161 res!567356) b!834163))

(assert (= (and b!834163 res!567358) b!834162))

(assert (= (and b!834162 c!90799) b!834166))

(assert (= (and b!834162 (not c!90799)) b!834167))

(assert (= (or b!834166 b!834167) bm!36521))

(assert (= (or b!834166 b!834167) bm!36520))

(assert (= (and b!834162 res!567357) b!834165))

(declare-fun m!779223 () Bool)

(assert (=> b!834164 m!779223))

(assert (=> b!834164 m!779223))

(declare-fun m!779225 () Bool)

(assert (=> b!834164 m!779225))

(declare-fun m!779227 () Bool)

(assert (=> b!834167 m!779227))

(declare-fun m!779229 () Bool)

(assert (=> b!834167 m!779229))

(declare-fun m!779231 () Bool)

(assert (=> b!834163 m!779231))

(declare-fun m!779233 () Bool)

(assert (=> b!834163 m!779233))

(declare-fun m!779235 () Bool)

(assert (=> b!834163 m!779235))

(declare-fun m!779237 () Bool)

(assert (=> bm!36520 m!779237))

(assert (=> b!834165 m!779237))

(declare-fun m!779239 () Bool)

(assert (=> b!834165 m!779239))

(declare-fun m!779241 () Bool)

(assert (=> b!834162 m!779241))

(assert (=> b!834162 m!779241))

(declare-fun m!779243 () Bool)

(assert (=> b!834162 m!779243))

(declare-fun m!779245 () Bool)

(assert (=> start!71810 m!779245))

(declare-fun m!779247 () Bool)

(assert (=> b!834166 m!779247))

(declare-fun m!779249 () Bool)

(assert (=> b!834166 m!779249))

(assert (=> bm!36521 m!779239))

(declare-fun m!779251 () Bool)

(assert (=> b!834160 m!779251))

(push 1)

(assert (not b!834166))

(assert (not b!834165))

(assert (not b!834164))

(assert (not b!834162))

(assert (not bm!36521))

(assert (not b!834163))

(assert (not start!71810))

