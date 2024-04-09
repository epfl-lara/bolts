; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92722 () Bool)

(assert start!92722)

(declare-fun b!1053271 () Bool)

(declare-fun res!702437 () Bool)

(declare-fun e!598207 () Bool)

(assert (=> b!1053271 (=> (not res!702437) (not e!598207))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053271 (= res!702437 (validKeyInArray!0 k!2747))))

(declare-fun b!1053272 () Bool)

(declare-fun res!702436 () Bool)

(assert (=> b!1053272 (=> (not res!702436) (not e!598207))))

(declare-datatypes ((array!66417 0))(
  ( (array!66418 (arr!31941 (Array (_ BitVec 32) (_ BitVec 64))) (size!32478 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66417)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053272 (= res!702436 (= (select (arr!31941 a!3488) i!1381) k!2747))))

(declare-fun b!1053273 () Bool)

(declare-fun lt!465102 () (_ BitVec 32))

(declare-fun e!598208 () Bool)

(assert (=> b!1053273 (= e!598208 (and (not (= lt!465102 i!1381)) (not (= (select (store (arr!31941 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465102) k!2747))))))

(declare-fun lt!465103 () array!66417)

(declare-fun arrayScanForKey!0 (array!66417 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053273 (= lt!465102 (arrayScanForKey!0 lt!465103 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!702438 () Bool)

(assert (=> start!92722 (=> (not res!702438) (not e!598207))))

(assert (=> start!92722 (= res!702438 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32478 a!3488)) (bvslt (size!32478 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92722 e!598207))

(assert (=> start!92722 true))

(declare-fun array_inv!24563 (array!66417) Bool)

(assert (=> start!92722 (array_inv!24563 a!3488)))

(declare-fun b!1053274 () Bool)

(declare-fun res!702435 () Bool)

(assert (=> b!1053274 (=> (not res!702435) (not e!598207))))

(declare-datatypes ((List!22384 0))(
  ( (Nil!22381) (Cons!22380 (h!23589 (_ BitVec 64)) (t!31698 List!22384)) )
))
(declare-fun arrayNoDuplicates!0 (array!66417 (_ BitVec 32) List!22384) Bool)

(assert (=> b!1053274 (= res!702435 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22381))))

(declare-fun b!1053275 () Bool)

(assert (=> b!1053275 (= e!598207 e!598208)))

(declare-fun res!702434 () Bool)

(assert (=> b!1053275 (=> (not res!702434) (not e!598208))))

(declare-fun arrayContainsKey!0 (array!66417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053275 (= res!702434 (arrayContainsKey!0 lt!465103 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053275 (= lt!465103 (array!66418 (store (arr!31941 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32478 a!3488)))))

(assert (= (and start!92722 res!702438) b!1053274))

(assert (= (and b!1053274 res!702435) b!1053271))

(assert (= (and b!1053271 res!702437) b!1053272))

(assert (= (and b!1053272 res!702436) b!1053275))

(assert (= (and b!1053275 res!702434) b!1053273))

(declare-fun m!973739 () Bool)

(assert (=> start!92722 m!973739))

(declare-fun m!973741 () Bool)

(assert (=> b!1053275 m!973741))

(declare-fun m!973743 () Bool)

(assert (=> b!1053275 m!973743))

(declare-fun m!973745 () Bool)

(assert (=> b!1053274 m!973745))

(assert (=> b!1053273 m!973743))

(declare-fun m!973747 () Bool)

(assert (=> b!1053273 m!973747))

(declare-fun m!973749 () Bool)

(assert (=> b!1053273 m!973749))

(declare-fun m!973751 () Bool)

(assert (=> b!1053272 m!973751))

(declare-fun m!973753 () Bool)

(assert (=> b!1053271 m!973753))

(push 1)

(assert (not start!92722))

(assert (not b!1053275))

(assert (not b!1053274))

(assert (not b!1053273))

(assert (not b!1053271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1053323 () Bool)

(declare-fun e!598250 () Bool)

(declare-fun call!44749 () Bool)

(assert (=> b!1053323 (= e!598250 call!44749)))

(declare-fun b!1053324 () Bool)

(assert (=> b!1053324 (= e!598250 call!44749)))

(declare-fun b!1053325 () Bool)

(declare-fun e!598249 () Bool)

(assert (=> b!1053325 (= e!598249 e!598250)))

(declare-fun c!106888 () Bool)

(assert (=> b!1053325 (= c!106888 (validKeyInArray!0 (select (arr!31941 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053326 () Bool)

(declare-fun e!598252 () Bool)

(declare-fun contains!6184 (List!22384 (_ BitVec 64)) Bool)

(assert (=> b!1053326 (= e!598252 (contains!6184 Nil!22381 (select (arr!31941 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!127837 () Bool)

(declare-fun res!702472 () Bool)

(declare-fun e!598251 () Bool)

(assert (=> d!127837 (=> res!702472 e!598251)))

(assert (=> d!127837 (= res!702472 (bvsge #b00000000000000000000000000000000 (size!32478 a!3488)))))

(assert (=> d!127837 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22381) e!598251)))

(declare-fun bm!44746 () Bool)

(assert (=> bm!44746 (= call!44749 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106888 (Cons!22380 (select (arr!31941 a!3488) #b00000000000000000000000000000000) Nil!22381) Nil!22381)))))

(declare-fun b!1053327 () Bool)

(assert (=> b!1053327 (= e!598251 e!598249)))

(declare-fun res!702473 () Bool)

(assert (=> b!1053327 (=> (not res!702473) (not e!598249))))

(assert (=> b!1053327 (= res!702473 (not e!598252))))

(declare-fun res!702474 () Bool)

(assert (=> b!1053327 (=> (not res!702474) (not e!598252))))

(assert (=> b!1053327 (= res!702474 (validKeyInArray!0 (select (arr!31941 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127837 (not res!702472)) b!1053327))

(assert (= (and b!1053327 res!702474) b!1053326))

(assert (= (and b!1053327 res!702473) b!1053325))

(assert (= (and b!1053325 c!106888) b!1053323))

(assert (= (and b!1053325 (not c!106888)) b!1053324))

(assert (= (or b!1053323 b!1053324) bm!44746))

(declare-fun m!973771 () Bool)

(assert (=> b!1053325 m!973771))

(assert (=> b!1053325 m!973771))

(declare-fun m!973773 () Bool)

(assert (=> b!1053325 m!973773))

(assert (=> b!1053326 m!973771))

(assert (=> b!1053326 m!973771))

(declare-fun m!973775 () Bool)

(assert (=> b!1053326 m!973775))

(assert (=> bm!44746 m!973771))

(declare-fun m!973777 () Bool)

(assert (=> bm!44746 m!973777))

(assert (=> b!1053327 m!973771))

(assert (=> b!1053327 m!973771))

(assert (=> b!1053327 m!973773))

(assert (=> b!1053274 d!127837))

(declare-fun d!127845 () Bool)

(declare-fun res!702482 () Bool)

(declare-fun e!598263 () Bool)

