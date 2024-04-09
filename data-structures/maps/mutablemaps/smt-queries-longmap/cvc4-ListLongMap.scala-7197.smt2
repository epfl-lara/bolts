; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92254 () Bool)

(assert start!92254)

(declare-fun b!1048257 () Bool)

(declare-fun res!697529 () Bool)

(declare-fun e!594581 () Bool)

(assert (=> b!1048257 (=> (not res!697529) (not e!594581))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048257 (= res!697529 (validKeyInArray!0 k!2747))))

(declare-fun b!1048258 () Bool)

(declare-fun res!697533 () Bool)

(assert (=> b!1048258 (=> (not res!697533) (not e!594581))))

(declare-datatypes ((array!66030 0))(
  ( (array!66031 (arr!31752 (Array (_ BitVec 32) (_ BitVec 64))) (size!32289 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66030)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048258 (= res!697533 (= (select (arr!31752 a!3488) i!1381) k!2747))))

(declare-fun b!1048259 () Bool)

(declare-fun res!697532 () Bool)

(assert (=> b!1048259 (=> (not res!697532) (not e!594581))))

(declare-datatypes ((List!22195 0))(
  ( (Nil!22192) (Cons!22191 (h!23400 (_ BitVec 64)) (t!31509 List!22195)) )
))
(declare-fun arrayNoDuplicates!0 (array!66030 (_ BitVec 32) List!22195) Bool)

(assert (=> b!1048259 (= res!697532 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22192))))

(declare-fun b!1048260 () Bool)

(declare-fun e!594579 () Bool)

(declare-fun e!594580 () Bool)

(assert (=> b!1048260 (= e!594579 e!594580)))

(declare-fun res!697531 () Bool)

(assert (=> b!1048260 (=> (not res!697531) (not e!594580))))

(declare-fun lt!463149 () (_ BitVec 32))

(assert (=> b!1048260 (= res!697531 (not (= lt!463149 i!1381)))))

(declare-fun lt!463150 () array!66030)

(declare-fun arrayScanForKey!0 (array!66030 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048260 (= lt!463149 (arrayScanForKey!0 lt!463150 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048261 () Bool)

(assert (=> b!1048261 (= e!594580 (not (or (bvsle lt!463149 i!1381) (bvslt lt!463149 #b00000000000000000000000000000000) (bvslt lt!463149 (size!32289 a!3488)))))))

(assert (=> b!1048261 (= (select (store (arr!31752 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463149) k!2747)))

(declare-fun b!1048262 () Bool)

(assert (=> b!1048262 (= e!594581 e!594579)))

(declare-fun res!697530 () Bool)

(assert (=> b!1048262 (=> (not res!697530) (not e!594579))))

(declare-fun arrayContainsKey!0 (array!66030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048262 (= res!697530 (arrayContainsKey!0 lt!463150 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048262 (= lt!463150 (array!66031 (store (arr!31752 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32289 a!3488)))))

(declare-fun res!697528 () Bool)

(assert (=> start!92254 (=> (not res!697528) (not e!594581))))

(assert (=> start!92254 (= res!697528 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32289 a!3488)) (bvslt (size!32289 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92254 e!594581))

(assert (=> start!92254 true))

(declare-fun array_inv!24374 (array!66030) Bool)

(assert (=> start!92254 (array_inv!24374 a!3488)))

(assert (= (and start!92254 res!697528) b!1048259))

(assert (= (and b!1048259 res!697532) b!1048257))

(assert (= (and b!1048257 res!697529) b!1048258))

(assert (= (and b!1048258 res!697533) b!1048262))

(assert (= (and b!1048262 res!697530) b!1048260))

(assert (= (and b!1048260 res!697531) b!1048261))

(declare-fun m!969407 () Bool)

(assert (=> b!1048258 m!969407))

(declare-fun m!969409 () Bool)

(assert (=> start!92254 m!969409))

(declare-fun m!969411 () Bool)

(assert (=> b!1048260 m!969411))

(declare-fun m!969413 () Bool)

(assert (=> b!1048257 m!969413))

(declare-fun m!969415 () Bool)

(assert (=> b!1048259 m!969415))

(declare-fun m!969417 () Bool)

(assert (=> b!1048262 m!969417))

(declare-fun m!969419 () Bool)

(assert (=> b!1048262 m!969419))

(assert (=> b!1048261 m!969419))

(declare-fun m!969421 () Bool)

(assert (=> b!1048261 m!969421))

(push 1)

(assert (not b!1048259))

(assert (not b!1048262))

(assert (not b!1048260))

(assert (not start!92254))

(assert (not b!1048257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127623 () Bool)

(declare-fun res!697567 () Bool)

(declare-fun e!594625 () Bool)

(assert (=> d!127623 (=> res!697567 e!594625)))

(assert (=> d!127623 (= res!697567 (bvsge #b00000000000000000000000000000000 (size!32289 a!3488)))))

(assert (=> d!127623 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22192) e!594625)))

(declare-fun b!1048316 () Bool)

(declare-fun e!594627 () Bool)

(declare-fun call!44722 () Bool)

(assert (=> b!1048316 (= e!594627 call!44722)))

(declare-fun bm!44719 () Bool)

(declare-fun c!106837 () Bool)

(assert (=> bm!44719 (= call!44722 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106837 (Cons!22191 (select (arr!31752 a!3488) #b00000000000000000000000000000000) Nil!22192) Nil!22192)))))

(declare-fun b!1048317 () Bool)

(assert (=> b!1048317 (= e!594627 call!44722)))

(declare-fun b!1048318 () Bool)

(declare-fun e!594628 () Bool)

(assert (=> b!1048318 (= e!594625 e!594628)))

(declare-fun res!697568 () Bool)

(assert (=> b!1048318 (=> (not res!697568) (not e!594628))))

(declare-fun e!594626 () Bool)

(assert (=> b!1048318 (= res!697568 (not e!594626))))

(declare-fun res!697569 () Bool)

(assert (=> b!1048318 (=> (not res!697569) (not e!594626))))

(assert (=> b!1048318 (= res!697569 (validKeyInArray!0 (select (arr!31752 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048319 () Bool)

(assert (=> b!1048319 (= e!594628 e!594627)))

(assert (=> b!1048319 (= c!106837 (validKeyInArray!0 (select (arr!31752 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048320 () Bool)

(declare-fun contains!6123 (List!22195 (_ BitVec 64)) Bool)

(assert (=> b!1048320 (= e!594626 (contains!6123 Nil!22192 (select (arr!31752 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127623 (not res!697567)) b!1048318))

(assert (= (and b!1048318 res!697569) b!1048320))

(assert (= (and b!1048318 res!697568) b!1048319))

(assert (= (and b!1048319 c!106837) b!1048317))

(assert (= (and b!1048319 (not c!106837)) b!1048316))

(assert (= (or b!1048317 b!1048316) bm!44719))

(declare-fun m!969443 () Bool)

(assert (=> bm!44719 m!969443))

(declare-fun m!969445 () Bool)

(assert (=> bm!44719 m!969445))

(assert (=> b!1048318 m!969443))

(assert (=> b!1048318 m!969443))

(declare-fun m!969447 () Bool)

(assert (=> b!1048318 m!969447))

(assert (=> b!1048319 m!969443))

(assert (=> b!1048319 m!969443))

(assert (=> b!1048319 m!969447))

(assert (=> b!1048320 m!969443))

(assert (=> b!1048320 m!969443))

(declare-fun m!969449 () Bool)

(assert (=> b!1048320 m!969449))

(assert (=> b!1048259 d!127623))

(declare-fun d!127631 () Bool)

(declare-fun lt!463159 () (_ BitVec 32))

(assert (=> d!127631 (and (or (bvslt lt!463159 #b00000000000000000000000000000000) (bvsge lt!463159 (size!32289 lt!463150)) (and (bvsge lt!463159 #b00000000000000000000000000000000) (bvslt lt!463159 (size!32289 lt!463150)))) (bvsge lt!463159 #b00000000000000000000000000000000) (bvslt lt!463159 (size!32289 lt!463150)) (= (select (arr!31752 lt!463150) lt!463159) k!2747))))

(declare-fun e!594638 () (_ BitVec 32))

(assert (=> d!127631 (= lt!463159 e!594638)))

(declare-fun c!106844 () Bool)

(assert (=> d!127631 (= c!106844 (= (select (arr!31752 lt!463150) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127631 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32289 lt!463150)) (bvslt (size!32289 lt!463150) #b01111111111111111111111111111111))))

(assert (=> d!127631 (= (arrayScanForKey!0 lt!463150 k!2747 #b00000000000000000000000000000000) lt!463159)))

(declare-fun b!1048336 () Bool)

(assert (=> b!1048336 (= e!594638 #b00000000000000000000000000000000)))

(declare-fun b!1048337 () Bool)

(assert (=> b!1048337 (= e!594638 (arrayScanForKey!0 lt!463150 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127631 c!106844) b!1048336))

(assert (= (and d!127631 (not c!106844)) b!1048337))

(declare-fun m!969463 () Bool)

(assert (=> d!127631 m!969463))

(declare-fun m!969465 () Bool)

(assert (=> d!127631 m!969465))

(declare-fun m!969467 () Bool)

(assert (=> b!1048337 m!969467))

(assert (=> b!1048260 d!127631))

(declare-fun d!127633 () Bool)

(assert (=> d!127633 (= (array_inv!24374 a!3488) (bvsge (size!32289 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92254 d!127633))

(declare-fun d!127635 () Bool)

(assert (=> d!127635 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1048257 d!127635))

(declare-fun d!127637 () Bool)

(declare-fun res!697577 () Bool)

(declare-fun e!594643 () Bool)

(assert (=> d!127637 (=> res!697577 e!594643)))

(assert (=> d!127637 (= res!697577 (= (select (arr!31752 lt!463150) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127637 (= (arrayContainsKey!0 lt!463150 k!2747 #b00000000000000000000000000000000) e!594643)))

(declare-fun b!1048342 () Bool)

(declare-fun e!594644 () Bool)

(assert (=> b!1048342 (= e!594643 e!594644)))

(declare-fun res!697578 () Bool)

(assert (=> b!1048342 (=> (not res!697578) (not e!594644))))

(assert (=> b!1048342 (= res!697578 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32289 lt!463150)))))

(declare-fun b!1048343 () Bool)

(assert (=> b!1048343 (= e!594644 (arrayContainsKey!0 lt!463150 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127637 (not res!697577)) b!1048342))

(assert (= (and b!1048342 res!697578) b!1048343))

(assert (=> d!127637 m!969465))

(declare-fun m!969469 () Bool)

(assert (=> b!1048343 m!969469))

(assert (=> b!1048262 d!127637))

(push 1)

