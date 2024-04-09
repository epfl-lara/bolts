; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92758 () Bool)

(assert start!92758)

(declare-fun b!1053413 () Bool)

(declare-fun res!702546 () Bool)

(declare-fun e!598315 () Bool)

(assert (=> b!1053413 (=> (not res!702546) (not e!598315))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053413 (= res!702546 (validKeyInArray!0 k!2747))))

(declare-fun res!702542 () Bool)

(assert (=> start!92758 (=> (not res!702542) (not e!598315))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66426 0))(
  ( (array!66427 (arr!31944 (Array (_ BitVec 32) (_ BitVec 64))) (size!32481 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66426)

(assert (=> start!92758 (= res!702542 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32481 a!3488)) (bvslt (size!32481 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92758 e!598315))

(assert (=> start!92758 true))

(declare-fun array_inv!24566 (array!66426) Bool)

(assert (=> start!92758 (array_inv!24566 a!3488)))

(declare-fun b!1053414 () Bool)

(declare-fun res!702544 () Bool)

(assert (=> b!1053414 (=> (not res!702544) (not e!598315))))

(declare-datatypes ((List!22387 0))(
  ( (Nil!22384) (Cons!22383 (h!23592 (_ BitVec 64)) (t!31701 List!22387)) )
))
(declare-fun arrayNoDuplicates!0 (array!66426 (_ BitVec 32) List!22387) Bool)

(assert (=> b!1053414 (= res!702544 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22384))))

(declare-fun b!1053415 () Bool)

(declare-fun e!598313 () Bool)

(declare-fun e!598312 () Bool)

(assert (=> b!1053415 (= e!598313 (not e!598312))))

(declare-fun res!702543 () Bool)

(assert (=> b!1053415 (=> res!702543 e!598312)))

(declare-fun lt!465129 () (_ BitVec 32))

(assert (=> b!1053415 (= res!702543 (bvsle lt!465129 i!1381))))

(assert (=> b!1053415 (= (select (store (arr!31944 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465129) k!2747)))

(declare-fun b!1053416 () Bool)

(declare-fun arrayContainsKey!0 (array!66426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053416 (= e!598312 (arrayContainsKey!0 a!3488 k!2747 lt!465129))))

(declare-fun b!1053417 () Bool)

(declare-fun e!598314 () Bool)

(assert (=> b!1053417 (= e!598314 e!598313)))

(declare-fun res!702545 () Bool)

(assert (=> b!1053417 (=> (not res!702545) (not e!598313))))

(assert (=> b!1053417 (= res!702545 (not (= lt!465129 i!1381)))))

(declare-fun lt!465130 () array!66426)

(declare-fun arrayScanForKey!0 (array!66426 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053417 (= lt!465129 (arrayScanForKey!0 lt!465130 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053418 () Bool)

(declare-fun res!702540 () Bool)

(assert (=> b!1053418 (=> (not res!702540) (not e!598315))))

(assert (=> b!1053418 (= res!702540 (= (select (arr!31944 a!3488) i!1381) k!2747))))

(declare-fun b!1053419 () Bool)

(assert (=> b!1053419 (= e!598315 e!598314)))

(declare-fun res!702541 () Bool)

(assert (=> b!1053419 (=> (not res!702541) (not e!598314))))

(assert (=> b!1053419 (= res!702541 (arrayContainsKey!0 lt!465130 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053419 (= lt!465130 (array!66427 (store (arr!31944 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32481 a!3488)))))

(assert (= (and start!92758 res!702542) b!1053414))

(assert (= (and b!1053414 res!702544) b!1053413))

(assert (= (and b!1053413 res!702546) b!1053418))

(assert (= (and b!1053418 res!702540) b!1053419))

(assert (= (and b!1053419 res!702541) b!1053417))

(assert (= (and b!1053417 res!702545) b!1053415))

(assert (= (and b!1053415 (not res!702543)) b!1053416))

(declare-fun m!973839 () Bool)

(assert (=> b!1053417 m!973839))

(declare-fun m!973841 () Bool)

(assert (=> b!1053419 m!973841))

(declare-fun m!973843 () Bool)

(assert (=> b!1053419 m!973843))

(declare-fun m!973845 () Bool)

(assert (=> b!1053414 m!973845))

(declare-fun m!973847 () Bool)

(assert (=> start!92758 m!973847))

(declare-fun m!973849 () Bool)

(assert (=> b!1053418 m!973849))

(assert (=> b!1053415 m!973843))

(declare-fun m!973851 () Bool)

(assert (=> b!1053415 m!973851))

(declare-fun m!973853 () Bool)

(assert (=> b!1053413 m!973853))

(declare-fun m!973855 () Bool)

(assert (=> b!1053416 m!973855))

(push 1)

(assert (not b!1053417))

(assert (not b!1053419))

(assert (not b!1053413))

(assert (not start!92758))

(assert (not b!1053414))

(assert (not b!1053416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127869 () Bool)

(declare-fun lt!465136 () (_ BitVec 32))

(assert (=> d!127869 (and (or (bvslt lt!465136 #b00000000000000000000000000000000) (bvsge lt!465136 (size!32481 lt!465130)) (and (bvsge lt!465136 #b00000000000000000000000000000000) (bvslt lt!465136 (size!32481 lt!465130)))) (bvsge lt!465136 #b00000000000000000000000000000000) (bvslt lt!465136 (size!32481 lt!465130)) (= (select (arr!31944 lt!465130) lt!465136) k!2747))))

(declare-fun e!598356 () (_ BitVec 32))

(assert (=> d!127869 (= lt!465136 e!598356)))

(declare-fun c!106909 () Bool)

(assert (=> d!127869 (= c!106909 (= (select (arr!31944 lt!465130) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127869 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32481 lt!465130)) (bvslt (size!32481 lt!465130) #b01111111111111111111111111111111))))

(assert (=> d!127869 (= (arrayScanForKey!0 lt!465130 k!2747 #b00000000000000000000000000000000) lt!465136)))

(declare-fun b!1053469 () Bool)

(assert (=> b!1053469 (= e!598356 #b00000000000000000000000000000000)))

(declare-fun b!1053470 () Bool)

(assert (=> b!1053470 (= e!598356 (arrayScanForKey!0 lt!465130 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127869 c!106909) b!1053469))

(assert (= (and d!127869 (not c!106909)) b!1053470))

(declare-fun m!973881 () Bool)

(assert (=> d!127869 m!973881))

(declare-fun m!973883 () Bool)

(assert (=> d!127869 m!973883))

(declare-fun m!973885 () Bool)

(assert (=> b!1053470 m!973885))

(assert (=> b!1053417 d!127869))

(declare-fun b!1053488 () Bool)

(declare-fun e!598373 () Bool)

(declare-fun e!598374 () Bool)

(assert (=> b!1053488 (= e!598373 e!598374)))

(declare-fun c!106913 () Bool)

(assert (=> b!1053488 (= c!106913 (validKeyInArray!0 (select (arr!31944 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053490 () Bool)

(declare-fun e!598371 () Bool)

(declare-fun contains!6188 (List!22387 (_ BitVec 64)) Bool)

(assert (=> b!1053490 (= e!598371 (contains!6188 Nil!22384 (select (arr!31944 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053491 () Bool)

(declare-fun call!44759 () Bool)

(assert (=> b!1053491 (= e!598374 call!44759)))

(declare-fun bm!44756 () Bool)

(assert (=> bm!44756 (= call!44759 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106913 (Cons!22383 (select (arr!31944 a!3488) #b00000000000000000000000000000000) Nil!22384) Nil!22384)))))

(declare-fun b!1053492 () Bool)

(declare-fun e!598372 () Bool)

(assert (=> b!1053492 (= e!598372 e!598373)))

(declare-fun res!702587 () Bool)

(assert (=> b!1053492 (=> (not res!702587) (not e!598373))))

(assert (=> b!1053492 (= res!702587 (not e!598371))))

