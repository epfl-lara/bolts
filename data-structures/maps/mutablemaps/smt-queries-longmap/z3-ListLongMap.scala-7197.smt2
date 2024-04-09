; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92252 () Bool)

(assert start!92252)

(declare-fun b!1048239 () Bool)

(declare-fun e!594568 () Bool)

(declare-fun e!594567 () Bool)

(assert (=> b!1048239 (= e!594568 e!594567)))

(declare-fun res!697512 () Bool)

(assert (=> b!1048239 (=> (not res!697512) (not e!594567))))

(declare-fun lt!463144 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048239 (= res!697512 (not (= lt!463144 i!1381)))))

(declare-datatypes ((array!66028 0))(
  ( (array!66029 (arr!31751 (Array (_ BitVec 32) (_ BitVec 64))) (size!32288 (_ BitVec 32))) )
))
(declare-fun lt!463143 () array!66028)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66028 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048239 (= lt!463144 (arrayScanForKey!0 lt!463143 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048240 () Bool)

(declare-fun e!594569 () Bool)

(assert (=> b!1048240 (= e!594569 e!594568)))

(declare-fun res!697511 () Bool)

(assert (=> b!1048240 (=> (not res!697511) (not e!594568))))

(declare-fun arrayContainsKey!0 (array!66028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048240 (= res!697511 (arrayContainsKey!0 lt!463143 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66028)

(assert (=> b!1048240 (= lt!463143 (array!66029 (store (arr!31751 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32288 a!3488)))))

(declare-fun b!1048242 () Bool)

(assert (=> b!1048242 (= e!594567 (not (or (bvsle lt!463144 i!1381) (bvslt lt!463144 #b00000000000000000000000000000000) (bvslt lt!463144 (size!32288 a!3488)))))))

(assert (=> b!1048242 (= (select (store (arr!31751 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463144) k0!2747)))

(declare-fun b!1048243 () Bool)

(declare-fun res!697513 () Bool)

(assert (=> b!1048243 (=> (not res!697513) (not e!594569))))

(assert (=> b!1048243 (= res!697513 (= (select (arr!31751 a!3488) i!1381) k0!2747))))

(declare-fun b!1048244 () Bool)

(declare-fun res!697515 () Bool)

(assert (=> b!1048244 (=> (not res!697515) (not e!594569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048244 (= res!697515 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048241 () Bool)

(declare-fun res!697514 () Bool)

(assert (=> b!1048241 (=> (not res!697514) (not e!594569))))

(declare-datatypes ((List!22194 0))(
  ( (Nil!22191) (Cons!22190 (h!23399 (_ BitVec 64)) (t!31508 List!22194)) )
))
(declare-fun arrayNoDuplicates!0 (array!66028 (_ BitVec 32) List!22194) Bool)

(assert (=> b!1048241 (= res!697514 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22191))))

(declare-fun res!697510 () Bool)

(assert (=> start!92252 (=> (not res!697510) (not e!594569))))

(assert (=> start!92252 (= res!697510 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32288 a!3488)) (bvslt (size!32288 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92252 e!594569))

(assert (=> start!92252 true))

(declare-fun array_inv!24373 (array!66028) Bool)

(assert (=> start!92252 (array_inv!24373 a!3488)))

(assert (= (and start!92252 res!697510) b!1048241))

(assert (= (and b!1048241 res!697514) b!1048244))

(assert (= (and b!1048244 res!697515) b!1048243))

(assert (= (and b!1048243 res!697513) b!1048240))

(assert (= (and b!1048240 res!697511) b!1048239))

(assert (= (and b!1048239 res!697512) b!1048242))

(declare-fun m!969391 () Bool)

(assert (=> start!92252 m!969391))

(declare-fun m!969393 () Bool)

(assert (=> b!1048243 m!969393))

(declare-fun m!969395 () Bool)

(assert (=> b!1048242 m!969395))

(declare-fun m!969397 () Bool)

(assert (=> b!1048242 m!969397))

(declare-fun m!969399 () Bool)

(assert (=> b!1048239 m!969399))

(declare-fun m!969401 () Bool)

(assert (=> b!1048241 m!969401))

(declare-fun m!969403 () Bool)

(assert (=> b!1048240 m!969403))

(assert (=> b!1048240 m!969395))

(declare-fun m!969405 () Bool)

(assert (=> b!1048244 m!969405))

(check-sat (not b!1048244) (not start!92252) (not b!1048241) (not b!1048240) (not b!1048239))
(check-sat)
(get-model)

(declare-fun d!127609 () Bool)

(assert (=> d!127609 (= (array_inv!24373 a!3488) (bvsge (size!32288 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92252 d!127609))

(declare-fun d!127611 () Bool)

(declare-fun lt!463153 () (_ BitVec 32))

(assert (=> d!127611 (and (or (bvslt lt!463153 #b00000000000000000000000000000000) (bvsge lt!463153 (size!32288 lt!463143)) (and (bvsge lt!463153 #b00000000000000000000000000000000) (bvslt lt!463153 (size!32288 lt!463143)))) (bvsge lt!463153 #b00000000000000000000000000000000) (bvslt lt!463153 (size!32288 lt!463143)) (= (select (arr!31751 lt!463143) lt!463153) k0!2747))))

(declare-fun e!594584 () (_ BitVec 32))

(assert (=> d!127611 (= lt!463153 e!594584)))

(declare-fun c!106829 () Bool)

(assert (=> d!127611 (= c!106829 (= (select (arr!31751 lt!463143) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127611 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32288 lt!463143)) (bvslt (size!32288 lt!463143) #b01111111111111111111111111111111))))

(assert (=> d!127611 (= (arrayScanForKey!0 lt!463143 k0!2747 #b00000000000000000000000000000000) lt!463153)))

(declare-fun b!1048267 () Bool)

(assert (=> b!1048267 (= e!594584 #b00000000000000000000000000000000)))

(declare-fun b!1048268 () Bool)

(assert (=> b!1048268 (= e!594584 (arrayScanForKey!0 lt!463143 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127611 c!106829) b!1048267))

(assert (= (and d!127611 (not c!106829)) b!1048268))

(declare-fun m!969423 () Bool)

(assert (=> d!127611 m!969423))

(declare-fun m!969425 () Bool)

(assert (=> d!127611 m!969425))

(declare-fun m!969427 () Bool)

(assert (=> b!1048268 m!969427))

(assert (=> b!1048239 d!127611))

(declare-fun d!127619 () Bool)

(assert (=> d!127619 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1048244 d!127619))

(declare-fun d!127621 () Bool)

(declare-fun res!697544 () Bool)

(declare-fun e!594597 () Bool)

(assert (=> d!127621 (=> res!697544 e!594597)))

(assert (=> d!127621 (= res!697544 (= (select (arr!31751 lt!463143) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127621 (= (arrayContainsKey!0 lt!463143 k0!2747 #b00000000000000000000000000000000) e!594597)))

(declare-fun b!1048283 () Bool)

(declare-fun e!594598 () Bool)

(assert (=> b!1048283 (= e!594597 e!594598)))

(declare-fun res!697545 () Bool)

(assert (=> b!1048283 (=> (not res!697545) (not e!594598))))

(assert (=> b!1048283 (= res!697545 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32288 lt!463143)))))

(declare-fun b!1048284 () Bool)

(assert (=> b!1048284 (= e!594598 (arrayContainsKey!0 lt!463143 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127621 (not res!697544)) b!1048283))

(assert (= (and b!1048283 res!697545) b!1048284))

(assert (=> d!127621 m!969425))

(declare-fun m!969429 () Bool)

(assert (=> b!1048284 m!969429))

(assert (=> b!1048240 d!127621))

(declare-fun bm!44720 () Bool)

(declare-fun call!44723 () Bool)

(declare-fun c!106838 () Bool)

(assert (=> bm!44720 (= call!44723 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106838 (Cons!22190 (select (arr!31751 a!3488) #b00000000000000000000000000000000) Nil!22191) Nil!22191)))))

(declare-fun d!127625 () Bool)

(declare-fun res!697572 () Bool)

(declare-fun e!594632 () Bool)

(assert (=> d!127625 (=> res!697572 e!594632)))

(assert (=> d!127625 (= res!697572 (bvsge #b00000000000000000000000000000000 (size!32288 a!3488)))))

(assert (=> d!127625 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22191) e!594632)))

(declare-fun b!1048321 () Bool)

(declare-fun e!594631 () Bool)

(declare-fun e!594629 () Bool)

(assert (=> b!1048321 (= e!594631 e!594629)))

(assert (=> b!1048321 (= c!106838 (validKeyInArray!0 (select (arr!31751 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048322 () Bool)

(assert (=> b!1048322 (= e!594629 call!44723)))

(declare-fun b!1048323 () Bool)

(assert (=> b!1048323 (= e!594632 e!594631)))

(declare-fun res!697570 () Bool)

(assert (=> b!1048323 (=> (not res!697570) (not e!594631))))

(declare-fun e!594630 () Bool)

(assert (=> b!1048323 (= res!697570 (not e!594630))))

(declare-fun res!697571 () Bool)

(assert (=> b!1048323 (=> (not res!697571) (not e!594630))))

(assert (=> b!1048323 (= res!697571 (validKeyInArray!0 (select (arr!31751 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048324 () Bool)

(declare-fun contains!6122 (List!22194 (_ BitVec 64)) Bool)

(assert (=> b!1048324 (= e!594630 (contains!6122 Nil!22191 (select (arr!31751 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048325 () Bool)

(assert (=> b!1048325 (= e!594629 call!44723)))

(assert (= (and d!127625 (not res!697572)) b!1048323))

(assert (= (and b!1048323 res!697571) b!1048324))

(assert (= (and b!1048323 res!697570) b!1048321))

(assert (= (and b!1048321 c!106838) b!1048325))

(assert (= (and b!1048321 (not c!106838)) b!1048322))

(assert (= (or b!1048325 b!1048322) bm!44720))

(declare-fun m!969451 () Bool)

(assert (=> bm!44720 m!969451))

(declare-fun m!969453 () Bool)

(assert (=> bm!44720 m!969453))

(assert (=> b!1048321 m!969451))

(assert (=> b!1048321 m!969451))

(declare-fun m!969455 () Bool)

(assert (=> b!1048321 m!969455))

(assert (=> b!1048323 m!969451))

(assert (=> b!1048323 m!969451))

(assert (=> b!1048323 m!969455))

(assert (=> b!1048324 m!969451))

(assert (=> b!1048324 m!969451))

(declare-fun m!969457 () Bool)

(assert (=> b!1048324 m!969457))

(assert (=> b!1048241 d!127625))

(check-sat (not b!1048268) (not bm!44720) (not b!1048321) (not b!1048323) (not b!1048284) (not b!1048324))
(check-sat)
