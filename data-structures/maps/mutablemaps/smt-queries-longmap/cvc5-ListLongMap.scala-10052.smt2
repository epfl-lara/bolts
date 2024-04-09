; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118456 () Bool)

(assert start!118456)

(declare-fun res!926478 () Bool)

(declare-fun e!784823 () Bool)

(assert (=> start!118456 (=> (not res!926478) (not e!784823))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118456 (= res!926478 (validMask!0 mask!2987))))

(assert (=> start!118456 e!784823))

(assert (=> start!118456 true))

(declare-datatypes ((array!94677 0))(
  ( (array!94678 (arr!45712 (Array (_ BitVec 32) (_ BitVec 64))) (size!46263 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94677)

(declare-fun array_inv!34657 (array!94677) Bool)

(assert (=> start!118456 (array_inv!34657 a!2938)))

(declare-fun b!1385082 () Bool)

(declare-fun res!926479 () Bool)

(assert (=> b!1385082 (=> (not res!926479) (not e!784823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94677 (_ BitVec 32)) Bool)

(assert (=> b!1385082 (= res!926479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385083 () Bool)

(declare-fun res!926477 () Bool)

(assert (=> b!1385083 (=> (not res!926477) (not e!784823))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385083 (= res!926477 (and (= (size!46263 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46263 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46263 a!2938))))))

(declare-fun b!1385084 () Bool)

(declare-fun res!926480 () Bool)

(assert (=> b!1385084 (=> (not res!926480) (not e!784823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385084 (= res!926480 (validKeyInArray!0 (select (arr!45712 a!2938) i!1065)))))

(declare-fun b!1385085 () Bool)

(declare-fun res!926481 () Bool)

(assert (=> b!1385085 (=> (not res!926481) (not e!784823))))

(declare-datatypes ((List!32420 0))(
  ( (Nil!32417) (Cons!32416 (h!33625 (_ BitVec 64)) (t!47121 List!32420)) )
))
(declare-fun arrayNoDuplicates!0 (array!94677 (_ BitVec 32) List!32420) Bool)

(assert (=> b!1385085 (= res!926481 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32417))))

(declare-fun b!1385086 () Bool)

(assert (=> b!1385086 (= e!784823 (or (= (select (arr!45712 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!45712 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!118456 res!926478) b!1385083))

(assert (= (and b!1385083 res!926477) b!1385084))

(assert (= (and b!1385084 res!926480) b!1385085))

(assert (= (and b!1385085 res!926481) b!1385082))

(assert (= (and b!1385082 res!926479) b!1385086))

(declare-fun m!1270481 () Bool)

(assert (=> start!118456 m!1270481))

(declare-fun m!1270483 () Bool)

(assert (=> start!118456 m!1270483))

(declare-fun m!1270485 () Bool)

(assert (=> b!1385084 m!1270485))

(assert (=> b!1385084 m!1270485))

(declare-fun m!1270487 () Bool)

(assert (=> b!1385084 m!1270487))

(assert (=> b!1385086 m!1270485))

(declare-fun m!1270489 () Bool)

(assert (=> b!1385085 m!1270489))

(declare-fun m!1270491 () Bool)

(assert (=> b!1385082 m!1270491))

(push 1)

(assert (not b!1385085))

(assert (not b!1385084))

(assert (not b!1385082))

(assert (not start!118456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149289 () Bool)

(declare-fun res!926525 () Bool)

(declare-fun e!784855 () Bool)

(assert (=> d!149289 (=> res!926525 e!784855)))

(assert (=> d!149289 (= res!926525 (bvsge #b00000000000000000000000000000000 (size!46263 a!2938)))))

(assert (=> d!149289 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32417) e!784855)))

(declare-fun b!1385139 () Bool)

(declare-fun e!784853 () Bool)

(declare-fun contains!9753 (List!32420 (_ BitVec 64)) Bool)

(assert (=> b!1385139 (= e!784853 (contains!9753 Nil!32417 (select (arr!45712 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1385140 () Bool)

(declare-fun e!784854 () Bool)

(declare-fun call!66540 () Bool)

(assert (=> b!1385140 (= e!784854 call!66540)))

(declare-fun b!1385141 () Bool)

(declare-fun e!784856 () Bool)

(assert (=> b!1385141 (= e!784856 e!784854)))

(declare-fun c!128750 () Bool)

(assert (=> b!1385141 (= c!128750 (validKeyInArray!0 (select (arr!45712 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1385142 () Bool)

(assert (=> b!1385142 (= e!784855 e!784856)))

(declare-fun res!926524 () Bool)

(assert (=> b!1385142 (=> (not res!926524) (not e!784856))))

(assert (=> b!1385142 (= res!926524 (not e!784853))))

(declare-fun res!926526 () Bool)

(assert (=> b!1385142 (=> (not res!926526) (not e!784853))))

(assert (=> b!1385142 (= res!926526 (validKeyInArray!0 (select (arr!45712 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1385143 () Bool)

(assert (=> b!1385143 (= e!784854 call!66540)))

(declare-fun bm!66537 () Bool)

(assert (=> bm!66537 (= call!66540 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128750 (Cons!32416 (select (arr!45712 a!2938) #b00000000000000000000000000000000) Nil!32417) Nil!32417)))))

(assert (= (and d!149289 (not res!926525)) b!1385142))

(assert (= (and b!1385142 res!926526) b!1385139))

(assert (= (and b!1385142 res!926524) b!1385141))

(assert (= (and b!1385141 c!128750) b!1385143))

(assert (= (and b!1385141 (not c!128750)) b!1385140))

(assert (= (or b!1385143 b!1385140) bm!66537))

(declare-fun m!1270529 () Bool)

(assert (=> b!1385139 m!1270529))

(assert (=> b!1385139 m!1270529))

(declare-fun m!1270531 () Bool)

(assert (=> b!1385139 m!1270531))

(assert (=> b!1385141 m!1270529))

(assert (=> b!1385141 m!1270529))

(declare-fun m!1270533 () Bool)

(assert (=> b!1385141 m!1270533))

(assert (=> b!1385142 m!1270529))

(assert (=> b!1385142 m!1270529))

(assert (=> b!1385142 m!1270533))

(assert (=> bm!66537 m!1270529))

(declare-fun m!1270535 () Bool)

(assert (=> bm!66537 m!1270535))

(assert (=> b!1385085 d!149289))

(declare-fun d!149297 () Bool)

(assert (=> d!149297 (= (validKeyInArray!0 (select (arr!45712 a!2938) i!1065)) (and (not (= (select (arr!45712 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45712 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1385084 d!149297))

(declare-fun d!149299 () Bool)

(declare-fun res!926541 () Bool)

(declare-fun e!784876 () Bool)

(assert (=> d!149299 (=> res!926541 e!784876)))

(assert (=> d!149299 (= res!926541 (bvsge #b00000000000000000000000000000000 (size!46263 a!2938)))))

(assert (=> d!149299 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!784876)))

(declare-fun b!1385167 () Bool)

(declare-fun e!784875 () Bool)

(assert (=> b!1385167 (= e!784876 e!784875)))

(declare-fun c!128756 () Bool)

(assert (=> b!1385167 (= c!128756 (validKeyInArray!0 (select (arr!45712 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1385168 () Bool)

(declare-fun call!66546 () Bool)

(assert (=> b!1385168 (= e!784875 call!66546)))

(declare-fun bm!66543 () Bool)

(assert (=> bm!66543 (= call!66546 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1385169 () Bool)

(declare-fun e!784877 () Bool)

(assert (=> b!1385169 (= e!784877 call!66546)))

(declare-fun b!1385170 () Bool)

(assert (=> b!1385170 (= e!784875 e!784877)))

(declare-fun lt!609144 () (_ BitVec 64))

(assert (=> b!1385170 (= lt!609144 (select (arr!45712 a!2938) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46196 0))(
  ( (Unit!46197) )
))
(declare-fun lt!609143 () Unit!46196)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94677 (_ BitVec 64) (_ BitVec 32)) Unit!46196)

(assert (=> b!1385170 (= lt!609143 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609144 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1385170 (arrayContainsKey!0 a!2938 lt!609144 #b00000000000000000000000000000000)))

(declare-fun lt!609145 () Unit!46196)

(assert (=> b!1385170 (= lt!609145 lt!609143)))

(declare-fun res!926540 () Bool)

(declare-datatypes ((SeekEntryResult!10127 0))(
  ( (MissingZero!10127 (index!42878 (_ BitVec 32))) (Found!10127 (index!42879 (_ BitVec 32))) (Intermediate!10127 (undefined!10939 Bool) (index!42880 (_ BitVec 32)) (x!124379 (_ BitVec 32))) (Undefined!10127) (MissingVacant!10127 (index!42881 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94677 (_ BitVec 32)) SeekEntryResult!10127)

(assert (=> b!1385170 (= res!926540 (= (seekEntryOrOpen!0 (select (arr!45712 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10127 #b00000000000000000000000000000000)))))

(assert (=> b!1385170 (=> (not res!926540) (not e!784877))))

(assert (= (and d!149299 (not res!926541)) b!1385167))

(assert (= (and b!1385167 c!128756) b!1385170))

(assert (= (and b!1385167 (not c!128756)) b!1385168))

(assert (= (and b!1385170 res!926540) b!1385169))

(assert (= (or b!1385169 b!1385168) bm!66543))

(assert (=> b!1385167 m!1270529))

(assert (=> b!1385167 m!1270529))

(assert (=> b!1385167 m!1270533))

(declare-fun m!1270545 () Bool)

(assert (=> bm!66543 m!1270545))

(assert (=> b!1385170 m!1270529))

(declare-fun m!1270547 () Bool)

(assert (=> b!1385170 m!1270547))

(declare-fun m!1270549 () Bool)

(assert (=> b!1385170 m!1270549))

(assert (=> b!1385170 m!1270529))

(declare-fun m!1270551 () Bool)

(assert (=> b!1385170 m!1270551))

(assert (=> b!1385082 d!149299))

(declare-fun d!149303 () Bool)

(assert (=> d!149303 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118456 d!149303))

(declare-fun d!149309 () Bool)

(assert (=> d!149309 (= (array_inv!34657 a!2938) (bvsge (size!46263 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118456 d!149309))

(push 1)

(assert (not b!1385167))

(assert (not bm!66543))

(assert (not b!1385139))

(assert (not bm!66537))

(assert (not b!1385170))

(assert (not b!1385141))

(assert (not b!1385142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

