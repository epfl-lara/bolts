; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116918 () Bool)

(assert start!116918)

(declare-fun b!1377140 () Bool)

(declare-fun res!920026 () Bool)

(declare-fun e!780121 () Bool)

(assert (=> b!1377140 (=> (not res!920026) (not e!780121))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377140 (= res!920026 (not (validKeyInArray!0 k!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun call!65963 () (_ BitVec 32))

(declare-datatypes ((array!93505 0))(
  ( (array!93506 (arr!45151 (Array (_ BitVec 32) (_ BitVec 64))) (size!45702 (_ BitVec 32))) )
))
(declare-fun lt!605785 () array!93505)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun bm!65960 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93505 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65960 (= call!65963 (arrayCountValidKeys!0 lt!605785 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377141 () Bool)

(declare-datatypes ((Unit!45617 0))(
  ( (Unit!45618) )
))
(declare-fun e!780122 () Unit!45617)

(declare-fun lt!605783 () Unit!45617)

(assert (=> b!1377141 (= e!780122 lt!605783)))

(declare-fun a!4032 () array!93505)

(declare-fun lt!605778 () Unit!45617)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93505 (_ BitVec 32) (_ BitVec 32)) Unit!45617)

(assert (=> b!1377141 (= lt!605778 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65964 () (_ BitVec 32))

(declare-fun lt!605782 () (_ BitVec 32))

(assert (=> b!1377141 (= call!65964 lt!605782)))

(assert (=> b!1377141 (= lt!605783 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605785 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605784 () (_ BitVec 32))

(assert (=> b!1377141 (= call!65963 lt!605784)))

(declare-fun b!1377143 () Bool)

(declare-fun res!920025 () Bool)

(assert (=> b!1377143 (=> (not res!920025) (not e!780121))))

(assert (=> b!1377143 (= res!920025 (validKeyInArray!0 (select (arr!45151 a!4032) i!1445)))))

(declare-fun b!1377144 () Bool)

(declare-fun e!780120 () Bool)

(assert (=> b!1377144 (= e!780121 e!780120)))

(declare-fun res!920028 () Bool)

(assert (=> b!1377144 (=> (not res!920028) (not e!780120))))

(assert (=> b!1377144 (= res!920028 (and (= lt!605784 lt!605782) (not (= to!206 (size!45702 a!4032)))))))

(assert (=> b!1377144 (= lt!605782 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377144 (= lt!605784 (arrayCountValidKeys!0 lt!605785 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377144 (= lt!605785 (array!93506 (store (arr!45151 a!4032) i!1445 k!2947) (size!45702 a!4032)))))

(declare-fun b!1377145 () Bool)

(declare-fun e!780118 () Bool)

(assert (=> b!1377145 (= e!780120 e!780118)))

(declare-fun res!920027 () Bool)

(assert (=> b!1377145 (=> (not res!920027) (not e!780118))))

(assert (=> b!1377145 (= res!920027 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45702 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605781 () Unit!45617)

(assert (=> b!1377145 (= lt!605781 e!780122)))

(declare-fun c!128000 () Bool)

(assert (=> b!1377145 (= c!128000 (validKeyInArray!0 (select (arr!45151 a!4032) to!206)))))

(declare-fun b!1377146 () Bool)

(assert (=> b!1377146 (= e!780118 (bvsge (bvsub (size!45702 a!4032) to!206) (bvsub (bvadd #b00000000000000000000000000000001 (size!45702 a!4032)) to!206)))))

(declare-fun bm!65961 () Bool)

(assert (=> bm!65961 (= call!65964 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377147 () Bool)

(declare-fun res!920030 () Bool)

(assert (=> b!1377147 (=> (not res!920030) (not e!780121))))

(assert (=> b!1377147 (= res!920030 (and (bvslt (size!45702 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45702 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377148 () Bool)

(declare-fun lt!605780 () Unit!45617)

(assert (=> b!1377148 (= e!780122 lt!605780)))

(declare-fun lt!605779 () Unit!45617)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93505 (_ BitVec 32) (_ BitVec 32)) Unit!45617)

(assert (=> b!1377148 (= lt!605779 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377148 (= call!65964 (bvadd #b00000000000000000000000000000001 lt!605782))))

(assert (=> b!1377148 (= lt!605780 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605785 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377148 (= call!65963 (bvadd #b00000000000000000000000000000001 lt!605784))))

(declare-fun b!1377142 () Bool)

(declare-fun res!920031 () Bool)

(assert (=> b!1377142 (=> (not res!920031) (not e!780118))))

(assert (=> b!1377142 (= res!920031 (= (arrayCountValidKeys!0 lt!605785 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun res!920029 () Bool)

(assert (=> start!116918 (=> (not res!920029) (not e!780121))))

(assert (=> start!116918 (= res!920029 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45702 a!4032))))))

(assert (=> start!116918 e!780121))

(assert (=> start!116918 true))

(declare-fun array_inv!34096 (array!93505) Bool)

(assert (=> start!116918 (array_inv!34096 a!4032)))

(assert (= (and start!116918 res!920029) b!1377143))

(assert (= (and b!1377143 res!920025) b!1377140))

(assert (= (and b!1377140 res!920026) b!1377147))

(assert (= (and b!1377147 res!920030) b!1377144))

(assert (= (and b!1377144 res!920028) b!1377145))

(assert (= (and b!1377145 c!128000) b!1377148))

(assert (= (and b!1377145 (not c!128000)) b!1377141))

(assert (= (or b!1377148 b!1377141) bm!65961))

(assert (= (or b!1377148 b!1377141) bm!65960))

(assert (= (and b!1377145 res!920027) b!1377142))

(assert (= (and b!1377142 res!920031) b!1377146))

(declare-fun m!1261439 () Bool)

(assert (=> b!1377143 m!1261439))

(assert (=> b!1377143 m!1261439))

(declare-fun m!1261441 () Bool)

(assert (=> b!1377143 m!1261441))

(declare-fun m!1261443 () Bool)

(assert (=> start!116918 m!1261443))

(declare-fun m!1261445 () Bool)

(assert (=> b!1377140 m!1261445))

(declare-fun m!1261447 () Bool)

(assert (=> b!1377144 m!1261447))

(declare-fun m!1261449 () Bool)

(assert (=> b!1377144 m!1261449))

(declare-fun m!1261451 () Bool)

(assert (=> b!1377144 m!1261451))

(declare-fun m!1261453 () Bool)

(assert (=> b!1377148 m!1261453))

(declare-fun m!1261455 () Bool)

(assert (=> b!1377148 m!1261455))

(declare-fun m!1261457 () Bool)

(assert (=> bm!65960 m!1261457))

(declare-fun m!1261459 () Bool)

(assert (=> b!1377141 m!1261459))

(declare-fun m!1261461 () Bool)

(assert (=> b!1377141 m!1261461))

(assert (=> b!1377142 m!1261457))

(declare-fun m!1261463 () Bool)

(assert (=> b!1377142 m!1261463))

(declare-fun m!1261465 () Bool)

(assert (=> b!1377145 m!1261465))

(assert (=> b!1377145 m!1261465))

(declare-fun m!1261467 () Bool)

(assert (=> b!1377145 m!1261467))

(assert (=> bm!65961 m!1261463))

(push 1)

(assert (not start!116918))

(assert (not b!1377140))

(assert (not bm!65960))

(assert (not b!1377145))

(assert (not b!1377148))

(assert (not b!1377144))

(assert (not bm!65961))

(assert (not b!1377141))

(assert (not b!1377142))

(assert (not b!1377143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

