; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71818 () Bool)

(assert start!71818)

(declare-fun b!834256 () Bool)

(declare-fun res!567430 () Bool)

(declare-fun e!465481 () Bool)

(assert (=> b!834256 (=> (not res!567430) (not e!465481))))

(declare-datatypes ((array!46672 0))(
  ( (array!46673 (arr!22366 (Array (_ BitVec 32) (_ BitVec 64))) (size!22787 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46672)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834256 (= res!567430 (not (validKeyInArray!0 (select (arr!22366 a!4227) i!1466))))))

(declare-fun b!834257 () Bool)

(declare-fun res!567426 () Bool)

(assert (=> b!834257 (=> (not res!567426) (not e!465481))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834257 (= res!567426 (and (bvslt (size!22787 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22787 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834258 () Bool)

(declare-datatypes ((Unit!28658 0))(
  ( (Unit!28659) )
))
(declare-fun e!465483 () Unit!28658)

(declare-fun lt!378995 () Unit!28658)

(assert (=> b!834258 (= e!465483 lt!378995)))

(declare-fun lt!378990 () Unit!28658)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46672 (_ BitVec 32) (_ BitVec 32)) Unit!28658)

(assert (=> b!834258 (= lt!378990 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36547 () (_ BitVec 32))

(declare-fun lt!378996 () (_ BitVec 32))

(assert (=> b!834258 (= call!36547 (bvadd #b00000000000000000000000000000001 lt!378996))))

(declare-fun lt!378998 () array!46672)

(assert (=> b!834258 (= lt!378995 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378998 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36548 () (_ BitVec 32))

(declare-fun lt!378991 () (_ BitVec 32))

(assert (=> b!834258 (= call!36548 (bvadd #b00000000000000000000000000000001 lt!378991))))

(declare-fun b!834259 () Bool)

(declare-fun res!567429 () Bool)

(assert (=> b!834259 (=> (not res!567429) (not e!465481))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834259 (= res!567429 (validKeyInArray!0 k!2968))))

(declare-fun b!834260 () Bool)

(declare-fun e!465484 () Bool)

(declare-fun e!465485 () Bool)

(assert (=> b!834260 (= e!465484 e!465485)))

(declare-fun res!567428 () Bool)

(assert (=> b!834260 (=> (not res!567428) (not e!465485))))

(assert (=> b!834260 (= res!567428 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22787 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!378992 () Unit!28658)

(assert (=> b!834260 (= lt!378992 e!465483)))

(declare-fun c!90811 () Bool)

(assert (=> b!834260 (= c!90811 (validKeyInArray!0 (select (arr!22366 a!4227) to!390)))))

(declare-fun bm!36544 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46672 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36544 (= call!36548 (arrayCountValidKeys!0 lt!378998 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834261 () Bool)

(assert (=> b!834261 (= e!465485 false)))

(declare-fun lt!378999 () (_ BitVec 32))

(assert (=> b!834261 (= lt!378999 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378994 () (_ BitVec 32))

(assert (=> b!834261 (= lt!378994 (arrayCountValidKeys!0 lt!378998 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36545 () Bool)

(assert (=> bm!36545 (= call!36547 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567425 () Bool)

(assert (=> start!71818 (=> (not res!567425) (not e!465481))))

(assert (=> start!71818 (= res!567425 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22787 a!4227))))))

(assert (=> start!71818 e!465481))

(assert (=> start!71818 true))

(declare-fun array_inv!17789 (array!46672) Bool)

(assert (=> start!71818 (array_inv!17789 a!4227)))

(declare-fun b!834262 () Bool)

(declare-fun lt!378997 () Unit!28658)

(assert (=> b!834262 (= e!465483 lt!378997)))

(declare-fun lt!378993 () Unit!28658)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46672 (_ BitVec 32) (_ BitVec 32)) Unit!28658)

(assert (=> b!834262 (= lt!378993 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834262 (= call!36547 lt!378996)))

(assert (=> b!834262 (= lt!378997 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378998 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834262 (= call!36548 lt!378991)))

(declare-fun b!834263 () Bool)

(assert (=> b!834263 (= e!465481 e!465484)))

(declare-fun res!567427 () Bool)

(assert (=> b!834263 (=> (not res!567427) (not e!465484))))

(assert (=> b!834263 (= res!567427 (and (= lt!378991 lt!378996) (not (= to!390 (size!22787 a!4227)))))))

(assert (=> b!834263 (= lt!378996 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834263 (= lt!378991 (arrayCountValidKeys!0 lt!378998 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834263 (= lt!378998 (array!46673 (store (arr!22366 a!4227) i!1466 k!2968) (size!22787 a!4227)))))

(assert (= (and start!71818 res!567425) b!834256))

(assert (= (and b!834256 res!567430) b!834259))

(assert (= (and b!834259 res!567429) b!834257))

(assert (= (and b!834257 res!567426) b!834263))

(assert (= (and b!834263 res!567427) b!834260))

(assert (= (and b!834260 c!90811) b!834258))

(assert (= (and b!834260 (not c!90811)) b!834262))

(assert (= (or b!834258 b!834262) bm!36544))

(assert (= (or b!834258 b!834262) bm!36545))

(assert (= (and b!834260 res!567428) b!834261))

(declare-fun m!779343 () Bool)

(assert (=> b!834263 m!779343))

(declare-fun m!779345 () Bool)

(assert (=> b!834263 m!779345))

(declare-fun m!779347 () Bool)

(assert (=> b!834263 m!779347))

(declare-fun m!779349 () Bool)

(assert (=> bm!36545 m!779349))

(declare-fun m!779351 () Bool)

(assert (=> b!834256 m!779351))

(assert (=> b!834256 m!779351))

(declare-fun m!779353 () Bool)

(assert (=> b!834256 m!779353))

(declare-fun m!779355 () Bool)

(assert (=> start!71818 m!779355))

(declare-fun m!779357 () Bool)

(assert (=> b!834262 m!779357))

(declare-fun m!779359 () Bool)

(assert (=> b!834262 m!779359))

(declare-fun m!779361 () Bool)

(assert (=> bm!36544 m!779361))

(declare-fun m!779363 () Bool)

(assert (=> b!834259 m!779363))

(declare-fun m!779365 () Bool)

(assert (=> b!834260 m!779365))

(assert (=> b!834260 m!779365))

(declare-fun m!779367 () Bool)

(assert (=> b!834260 m!779367))

(declare-fun m!779369 () Bool)

(assert (=> b!834258 m!779369))

(declare-fun m!779371 () Bool)

(assert (=> b!834258 m!779371))

(assert (=> b!834261 m!779349))

(assert (=> b!834261 m!779361))

(push 1)

