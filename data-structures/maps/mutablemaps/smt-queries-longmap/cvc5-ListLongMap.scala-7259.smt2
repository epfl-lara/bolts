; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92682 () Bool)

(assert start!92682)

(declare-fun b!1053115 () Bool)

(declare-fun res!702316 () Bool)

(declare-fun e!598100 () Bool)

(assert (=> b!1053115 (=> (not res!702316) (not e!598100))))

(declare-datatypes ((array!66404 0))(
  ( (array!66405 (arr!31936 (Array (_ BitVec 32) (_ BitVec 64))) (size!32473 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66404)

(declare-datatypes ((List!22379 0))(
  ( (Nil!22376) (Cons!22375 (h!23584 (_ BitVec 64)) (t!31693 List!22379)) )
))
(declare-fun arrayNoDuplicates!0 (array!66404 (_ BitVec 32) List!22379) Bool)

(assert (=> b!1053115 (= res!702316 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22376))))

(declare-fun b!1053116 () Bool)

(declare-fun res!702318 () Bool)

(assert (=> b!1053116 (=> (not res!702318) (not e!598100))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053116 (= res!702318 (validKeyInArray!0 k!2747))))

(declare-fun b!1053117 () Bool)

(declare-fun res!702315 () Bool)

(assert (=> b!1053117 (=> (not res!702315) (not e!598100))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053117 (= res!702315 (= (select (arr!31936 a!3488) i!1381) k!2747))))

(declare-fun b!1053118 () Bool)

(declare-fun e!598099 () Bool)

(declare-fun lt!465064 () (_ BitVec 32))

(assert (=> b!1053118 (= e!598099 (and (not (= lt!465064 i!1381)) (or (bvslt lt!465064 #b00000000000000000000000000000000) (bvsge lt!465064 (size!32473 a!3488)))))))

(declare-fun lt!465063 () array!66404)

(declare-fun arrayScanForKey!0 (array!66404 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053118 (= lt!465064 (arrayScanForKey!0 lt!465063 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053119 () Bool)

(assert (=> b!1053119 (= e!598100 e!598099)))

(declare-fun res!702314 () Bool)

(assert (=> b!1053119 (=> (not res!702314) (not e!598099))))

(declare-fun arrayContainsKey!0 (array!66404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053119 (= res!702314 (arrayContainsKey!0 lt!465063 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053119 (= lt!465063 (array!66405 (store (arr!31936 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32473 a!3488)))))

(declare-fun res!702317 () Bool)

(assert (=> start!92682 (=> (not res!702317) (not e!598100))))

(assert (=> start!92682 (= res!702317 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32473 a!3488)) (bvslt (size!32473 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92682 e!598100))

(assert (=> start!92682 true))

(declare-fun array_inv!24558 (array!66404) Bool)

(assert (=> start!92682 (array_inv!24558 a!3488)))

(assert (= (and start!92682 res!702317) b!1053115))

(assert (= (and b!1053115 res!702316) b!1053116))

(assert (= (and b!1053116 res!702318) b!1053117))

(assert (= (and b!1053117 res!702315) b!1053119))

(assert (= (and b!1053119 res!702314) b!1053118))

(declare-fun m!973617 () Bool)

(assert (=> b!1053118 m!973617))

(declare-fun m!973619 () Bool)

(assert (=> start!92682 m!973619))

(declare-fun m!973621 () Bool)

(assert (=> b!1053119 m!973621))

(declare-fun m!973623 () Bool)

(assert (=> b!1053119 m!973623))

(declare-fun m!973625 () Bool)

(assert (=> b!1053117 m!973625))

(declare-fun m!973627 () Bool)

(assert (=> b!1053116 m!973627))

(declare-fun m!973629 () Bool)

(assert (=> b!1053115 m!973629))

(push 1)

(assert (not b!1053119))

(assert (not b!1053118))

(assert (not b!1053116))

(assert (not start!92682))

(assert (not b!1053115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127797 () Bool)

(assert (=> d!127797 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053116 d!127797))

(declare-fun d!127799 () Bool)

(assert (=> d!127799 (= (array_inv!24558 a!3488) (bvsge (size!32473 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92682 d!127799))

(declare-fun b!1053172 () Bool)

(declare-fun e!598139 () Bool)

(declare-fun contains!6180 (List!22379 (_ BitVec 64)) Bool)

(assert (=> b!1053172 (= e!598139 (contains!6180 Nil!22376 (select (arr!31936 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053173 () Bool)

(declare-fun e!598137 () Bool)

(declare-fun e!598138 () Bool)

(assert (=> b!1053173 (= e!598137 e!598138)))

(declare-fun res!702361 () Bool)

(assert (=> b!1053173 (=> (not res!702361) (not e!598138))))

(assert (=> b!1053173 (= res!702361 (not e!598139))))

(declare-fun res!702363 () Bool)

(assert (=> b!1053173 (=> (not res!702363) (not e!598139))))

(assert (=> b!1053173 (= res!702363 (validKeyInArray!0 (select (arr!31936 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053174 () Bool)

(declare-fun e!598136 () Bool)

(declare-fun call!44735 () Bool)

(assert (=> b!1053174 (= e!598136 call!44735)))

(declare-fun d!127801 () Bool)

(declare-fun res!702362 () Bool)

(assert (=> d!127801 (=> res!702362 e!598137)))

(assert (=> d!127801 (= res!702362 (bvsge #b00000000000000000000000000000000 (size!32473 a!3488)))))

(assert (=> d!127801 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22376) e!598137)))

(declare-fun b!1053175 () Bool)

(assert (=> b!1053175 (= e!598138 e!598136)))

(declare-fun c!106868 () Bool)

(assert (=> b!1053175 (= c!106868 (validKeyInArray!0 (select (arr!31936 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053176 () Bool)

(assert (=> b!1053176 (= e!598136 call!44735)))

(declare-fun bm!44732 () Bool)

(assert (=> bm!44732 (= call!44735 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106868 (Cons!22375 (select (arr!31936 a!3488) #b00000000000000000000000000000000) Nil!22376) Nil!22376)))))

(assert (= (and d!127801 (not res!702362)) b!1053173))

(assert (= (and b!1053173 res!702363) b!1053172))

(assert (= (and b!1053173 res!702361) b!1053175))

(assert (= (and b!1053175 c!106868) b!1053176))

(assert (= (and b!1053175 (not c!106868)) b!1053174))

(assert (= (or b!1053176 b!1053174) bm!44732))

(declare-fun m!973667 () Bool)

(assert (=> b!1053172 m!973667))

(assert (=> b!1053172 m!973667))

(declare-fun m!973669 () Bool)

(assert (=> b!1053172 m!973669))

(assert (=> b!1053173 m!973667))

(assert (=> b!1053173 m!973667))

(declare-fun m!973671 () Bool)

(assert (=> b!1053173 m!973671))

(assert (=> b!1053175 m!973667))

(assert (=> b!1053175 m!973667))

(assert (=> b!1053175 m!973671))

(assert (=> bm!44732 m!973667))

(declare-fun m!973673 () Bool)

(assert (=> bm!44732 m!973673))

(assert (=> b!1053115 d!127801))

(declare-fun d!127813 () Bool)

(declare-fun res!702374 () Bool)

(declare-fun e!598152 () Bool)

(assert (=> d!127813 (=> res!702374 e!598152)))

(assert (=> d!127813 (= res!702374 (= (select (arr!31936 lt!465063) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127813 (= (arrayContainsKey!0 lt!465063 k!2747 #b00000000000000000000000000000000) e!598152)))

(declare-fun b!1053191 () Bool)

(declare-fun e!598153 () Bool)

(assert (=> b!1053191 (= e!598152 e!598153)))

(declare-fun res!702375 () Bool)

(assert (=> b!1053191 (=> (not res!702375) (not e!598153))))

(assert (=> b!1053191 (= res!702375 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32473 lt!465063)))))

(declare-fun b!1053192 () Bool)

(assert (=> b!1053192 (= e!598153 (arrayContainsKey!0 lt!465063 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127813 (not res!702374)) b!1053191))

(assert (= (and b!1053191 res!702375) b!1053192))

(declare-fun m!973675 () Bool)

(assert (=> d!127813 m!973675))

(declare-fun m!973677 () Bool)

(assert (=> b!1053192 m!973677))

(assert (=> b!1053119 d!127813))

(declare-fun d!127817 () Bool)

(declare-fun lt!465085 () (_ BitVec 32))

(assert (=> d!127817 (and (or (bvslt lt!465085 #b00000000000000000000000000000000) (bvsge lt!465085 (size!32473 lt!465063)) (and (bvsge lt!465085 #b00000000000000000000000000000000) (bvslt lt!465085 (size!32473 lt!465063)))) (bvsge lt!465085 #b00000000000000000000000000000000) (bvslt lt!465085 (size!32473 lt!465063)) (= (select (arr!31936 lt!465063) lt!465085) k!2747))))

(declare-fun e!598163 () (_ BitVec 32))

(assert (=> d!127817 (= lt!465085 e!598163)))

(declare-fun c!106877 () Bool)

(assert (=> d!127817 (= c!106877 (= (select (arr!31936 lt!465063) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127817 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32473 lt!465063)) (bvslt (size!32473 lt!465063) #b01111111111111111111111111111111))))

(assert (=> d!127817 (= (arrayScanForKey!0 lt!465063 k!2747 #b00000000000000000000000000000000) lt!465085)))

(declare-fun b!1053208 () Bool)

(assert (=> b!1053208 (= e!598163 #b00000000000000000000000000000000)))

(declare-fun b!1053209 () Bool)

(assert (=> b!1053209 (= e!598163 (arrayScanForKey!0 lt!465063 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127817 c!106877) b!1053208))

(assert (= (and d!127817 (not c!106877)) b!1053209))

(declare-fun m!973693 () Bool)

(assert (=> d!127817 m!973693))

(assert (=> d!127817 m!973675))

(declare-fun m!973695 () Bool)

(assert (=> b!1053209 m!973695))

(assert (=> b!1053118 d!127817))

(push 1)

(assert (not bm!44732))

(assert (not b!1053172))

(assert (not b!1053175))

(assert (not b!1053209))

(assert (not b!1053173))

(assert (not b!1053192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

