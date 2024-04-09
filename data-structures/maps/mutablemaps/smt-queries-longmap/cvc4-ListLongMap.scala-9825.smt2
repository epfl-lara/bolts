; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116658 () Bool)

(assert start!116658)

(declare-fun res!918100 () Bool)

(declare-fun e!778882 () Bool)

(assert (=> start!116658 (=> (not res!918100) (not e!778882))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93266 0))(
  ( (array!93267 (arr!45033 (Array (_ BitVec 32) (_ BitVec 64))) (size!45584 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93266)

(assert (=> start!116658 (= res!918100 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45584 a!4142))))))

(assert (=> start!116658 e!778882))

(assert (=> start!116658 true))

(declare-fun array_inv!33978 (array!93266) Bool)

(assert (=> start!116658 (array_inv!33978 a!4142)))

(declare-fun b!1374849 () Bool)

(declare-fun res!918101 () Bool)

(assert (=> b!1374849 (=> (not res!918101) (not e!778882))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374849 (= res!918101 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374850 () Bool)

(declare-fun res!918099 () Bool)

(assert (=> b!1374850 (=> (not res!918099) (not e!778882))))

(assert (=> b!1374850 (= res!918099 (bvslt (size!45584 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374851 () Bool)

(declare-fun e!778881 () Bool)

(assert (=> b!1374851 (= e!778882 (not e!778881))))

(declare-fun res!918098 () Bool)

(assert (=> b!1374851 (=> res!918098 e!778881)))

(assert (=> b!1374851 (= res!918098 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-fun lt!603871 () array!93266)

(declare-fun arrayCountValidKeys!0 (array!93266 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374851 (= (arrayCountValidKeys!0 lt!603871 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374851 (= lt!603871 (array!93267 (store (arr!45033 a!4142) i!1457 k!2959) (size!45584 a!4142)))))

(declare-datatypes ((Unit!45453 0))(
  ( (Unit!45454) )
))
(declare-fun lt!603870 () Unit!45453)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93266 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45453)

(assert (=> b!1374851 (= lt!603870 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374852 () Bool)

(declare-fun res!918102 () Bool)

(assert (=> b!1374852 (=> (not res!918102) (not e!778882))))

(assert (=> b!1374852 (= res!918102 (validKeyInArray!0 (select (arr!45033 a!4142) i!1457)))))

(declare-fun b!1374853 () Bool)

(assert (=> b!1374853 (= e!778881 (= (arrayCountValidKeys!0 lt!603871 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457))))))

(assert (= (and start!116658 res!918100) b!1374852))

(assert (= (and b!1374852 res!918102) b!1374849))

(assert (= (and b!1374849 res!918101) b!1374850))

(assert (= (and b!1374850 res!918099) b!1374851))

(assert (= (and b!1374851 (not res!918098)) b!1374853))

(declare-fun m!1258499 () Bool)

(assert (=> b!1374851 m!1258499))

(declare-fun m!1258501 () Bool)

(assert (=> b!1374851 m!1258501))

(declare-fun m!1258503 () Bool)

(assert (=> b!1374851 m!1258503))

(declare-fun m!1258505 () Bool)

(assert (=> b!1374851 m!1258505))

(declare-fun m!1258507 () Bool)

(assert (=> start!116658 m!1258507))

(declare-fun m!1258509 () Bool)

(assert (=> b!1374853 m!1258509))

(declare-fun m!1258511 () Bool)

(assert (=> b!1374853 m!1258511))

(declare-fun m!1258513 () Bool)

(assert (=> b!1374852 m!1258513))

(assert (=> b!1374852 m!1258513))

(declare-fun m!1258515 () Bool)

(assert (=> b!1374852 m!1258515))

(declare-fun m!1258517 () Bool)

(assert (=> b!1374849 m!1258517))

(push 1)

(assert (not b!1374851))

(assert (not b!1374852))

(assert (not start!116658))

(assert (not b!1374853))

(assert (not b!1374849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!65664 () Bool)

(declare-fun call!65667 () (_ BitVec 32))

(assert (=> bm!65664 (= call!65667 (arrayCountValidKeys!0 lt!603871 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148127 () Bool)

(declare-fun lt!603889 () (_ BitVec 32))

(assert (=> d!148127 (and (bvsge lt!603889 #b00000000000000000000000000000000) (bvsle lt!603889 (bvsub (size!45584 lt!603871) #b00000000000000000000000000000000)))))

(declare-fun e!778915 () (_ BitVec 32))

(assert (=> d!148127 (= lt!603889 e!778915)))

(declare-fun c!127846 () Bool)

(assert (=> d!148127 (= c!127846 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148127 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45584 lt!603871)))))

(assert (=> d!148127 (= (arrayCountValidKeys!0 lt!603871 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603889)))

(declare-fun b!1374913 () Bool)

(declare-fun e!778916 () (_ BitVec 32))

(assert (=> b!1374913 (= e!778916 call!65667)))

(declare-fun b!1374914 () Bool)

(assert (=> b!1374914 (= e!778915 #b00000000000000000000000000000000)))

(declare-fun b!1374915 () Bool)

(assert (=> b!1374915 (= e!778916 (bvadd #b00000000000000000000000000000001 call!65667))))

(declare-fun b!1374916 () Bool)

(assert (=> b!1374916 (= e!778915 e!778916)))

(declare-fun c!127847 () Bool)

(assert (=> b!1374916 (= c!127847 (validKeyInArray!0 (select (arr!45033 lt!603871) #b00000000000000000000000000000000)))))

(assert (= (and d!148127 c!127846) b!1374914))

(assert (= (and d!148127 (not c!127846)) b!1374916))

(assert (= (and b!1374916 c!127847) b!1374915))

(assert (= (and b!1374916 (not c!127847)) b!1374913))

(assert (= (or b!1374915 b!1374913) bm!65664))

(declare-fun m!1258573 () Bool)

(assert (=> bm!65664 m!1258573))

(declare-fun m!1258575 () Bool)

(assert (=> b!1374916 m!1258575))

(assert (=> b!1374916 m!1258575))

(declare-fun m!1258577 () Bool)

(assert (=> b!1374916 m!1258577))

(assert (=> b!1374851 d!148127))

(declare-fun bm!65665 () Bool)

(declare-fun call!65668 () (_ BitVec 32))

(assert (=> bm!65665 (= call!65668 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148139 () Bool)

(declare-fun lt!603892 () (_ BitVec 32))

(assert (=> d!148139 (and (bvsge lt!603892 #b00000000000000000000000000000000) (bvsle lt!603892 (bvsub (size!45584 a!4142) #b00000000000000000000000000000000)))))

(declare-fun e!778917 () (_ BitVec 32))

(assert (=> d!148139 (= lt!603892 e!778917)))

(declare-fun c!127848 () Bool)

(assert (=> d!148139 (= c!127848 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148139 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45584 a!4142)))))

(assert (=> d!148139 (= (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603892)))

(declare-fun b!1374917 () Bool)

(declare-fun e!778918 () (_ BitVec 32))

(assert (=> b!1374917 (= e!778918 call!65668)))

(declare-fun b!1374918 () Bool)

(assert (=> b!1374918 (= e!778917 #b00000000000000000000000000000000)))

(declare-fun b!1374919 () Bool)

(assert (=> b!1374919 (= e!778918 (bvadd #b00000000000000000000000000000001 call!65668))))

(declare-fun b!1374920 () Bool)

(assert (=> b!1374920 (= e!778917 e!778918)))

(declare-fun c!127849 () Bool)

(assert (=> b!1374920 (= c!127849 (validKeyInArray!0 (select (arr!45033 a!4142) #b00000000000000000000000000000000)))))

