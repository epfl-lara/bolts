; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114852 () Bool)

(assert start!114852)

(declare-fun b!1361276 () Bool)

(declare-fun e!772290 () Bool)

(declare-fun e!772287 () Bool)

(assert (=> b!1361276 (= e!772290 e!772287)))

(declare-fun res!905555 () Bool)

(assert (=> b!1361276 (=> (not res!905555) (not e!772287))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1361276 (= res!905555 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31933 0))(
  ( (Nil!31930) (Cons!31929 (h!33138 (_ BitVec 64)) (t!46622 List!31933)) )
))
(declare-fun lt!600093 () List!31933)

(declare-fun acc!759 () List!31933)

(declare-datatypes ((array!92561 0))(
  ( (array!92562 (arr!44712 (Array (_ BitVec 32) (_ BitVec 64))) (size!45263 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92561)

(declare-fun $colon$colon!894 (List!31933 (_ BitVec 64)) List!31933)

(assert (=> b!1361276 (= lt!600093 ($colon$colon!894 acc!759 (select (arr!44712 a!3742) from!3120)))))

(declare-fun b!1361277 () Bool)

(declare-fun res!905546 () Bool)

(declare-fun e!772288 () Bool)

(assert (=> b!1361277 (=> (not res!905546) (not e!772288))))

(assert (=> b!1361277 (= res!905546 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45263 a!3742)))))

(declare-fun res!905552 () Bool)

(assert (=> start!114852 (=> (not res!905552) (not e!772288))))

(assert (=> start!114852 (= res!905552 (and (bvslt (size!45263 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45263 a!3742))))))

(assert (=> start!114852 e!772288))

(assert (=> start!114852 true))

(declare-fun array_inv!33657 (array!92561) Bool)

(assert (=> start!114852 (array_inv!33657 a!3742)))

(declare-fun b!1361278 () Bool)

(declare-fun res!905556 () Bool)

(assert (=> b!1361278 (=> (not res!905556) (not e!772287))))

(declare-fun contains!9498 (List!31933 (_ BitVec 64)) Bool)

(assert (=> b!1361278 (= res!905556 (not (contains!9498 lt!600093 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361279 () Bool)

(declare-fun res!905544 () Bool)

(assert (=> b!1361279 (=> (not res!905544) (not e!772288))))

(declare-fun noDuplicate!2377 (List!31933) Bool)

(assert (=> b!1361279 (= res!905544 (noDuplicate!2377 acc!759))))

(declare-fun b!1361280 () Bool)

(declare-datatypes ((Unit!44819 0))(
  ( (Unit!44820) )
))
(declare-fun e!772289 () Unit!44819)

(declare-fun lt!600094 () Unit!44819)

(assert (=> b!1361280 (= e!772289 lt!600094)))

(declare-fun lt!600095 () Unit!44819)

(declare-fun lemmaListSubSeqRefl!0 (List!31933) Unit!44819)

(assert (=> b!1361280 (= lt!600095 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!889 (List!31933 List!31933) Bool)

(assert (=> b!1361280 (subseq!889 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92561 List!31933 List!31933 (_ BitVec 32)) Unit!44819)

(assert (=> b!1361280 (= lt!600094 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!894 acc!759 (select (arr!44712 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92561 (_ BitVec 32) List!31933) Bool)

(assert (=> b!1361280 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361281 () Bool)

(declare-fun res!905548 () Bool)

(assert (=> b!1361281 (=> (not res!905548) (not e!772288))))

(assert (=> b!1361281 (= res!905548 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31930))))

(declare-fun b!1361282 () Bool)

(assert (=> b!1361282 (= e!772287 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600093)))))

(declare-fun b!1361283 () Bool)

(declare-fun res!905543 () Bool)

(assert (=> b!1361283 (=> (not res!905543) (not e!772288))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361283 (= res!905543 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45263 a!3742))))))

(declare-fun b!1361284 () Bool)

(declare-fun res!905553 () Bool)

(assert (=> b!1361284 (=> (not res!905553) (not e!772288))))

(assert (=> b!1361284 (= res!905553 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361285 () Bool)

(declare-fun res!905545 () Bool)

(assert (=> b!1361285 (=> (not res!905545) (not e!772287))))

(assert (=> b!1361285 (= res!905545 (noDuplicate!2377 lt!600093))))

(declare-fun b!1361286 () Bool)

(declare-fun res!905549 () Bool)

(assert (=> b!1361286 (=> (not res!905549) (not e!772287))))

(assert (=> b!1361286 (= res!905549 (not (contains!9498 lt!600093 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361287 () Bool)

(assert (=> b!1361287 (= e!772288 e!772290)))

(declare-fun res!905547 () Bool)

(assert (=> b!1361287 (=> (not res!905547) (not e!772290))))

(declare-fun lt!600091 () Bool)

(assert (=> b!1361287 (= res!905547 (and (not (= from!3120 i!1404)) lt!600091))))

(declare-fun lt!600092 () Unit!44819)

(assert (=> b!1361287 (= lt!600092 e!772289)))

(declare-fun c!127309 () Bool)

(assert (=> b!1361287 (= c!127309 lt!600091)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361287 (= lt!600091 (validKeyInArray!0 (select (arr!44712 a!3742) from!3120)))))

(declare-fun b!1361288 () Bool)

(declare-fun res!905554 () Bool)

(assert (=> b!1361288 (=> (not res!905554) (not e!772288))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361288 (= res!905554 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361289 () Bool)

(declare-fun Unit!44821 () Unit!44819)

(assert (=> b!1361289 (= e!772289 Unit!44821)))

(declare-fun b!1361290 () Bool)

(declare-fun res!905550 () Bool)

(assert (=> b!1361290 (=> (not res!905550) (not e!772288))))

(assert (=> b!1361290 (= res!905550 (not (contains!9498 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361291 () Bool)

(declare-fun res!905551 () Bool)

(assert (=> b!1361291 (=> (not res!905551) (not e!772288))))

(assert (=> b!1361291 (= res!905551 (not (contains!9498 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114852 res!905552) b!1361279))

(assert (= (and b!1361279 res!905544) b!1361290))

(assert (= (and b!1361290 res!905550) b!1361291))

(assert (= (and b!1361291 res!905551) b!1361281))

(assert (= (and b!1361281 res!905548) b!1361284))

(assert (= (and b!1361284 res!905553) b!1361283))

(assert (= (and b!1361283 res!905543) b!1361288))

(assert (= (and b!1361288 res!905554) b!1361277))

(assert (= (and b!1361277 res!905546) b!1361287))

(assert (= (and b!1361287 c!127309) b!1361280))

(assert (= (and b!1361287 (not c!127309)) b!1361289))

(assert (= (and b!1361287 res!905547) b!1361276))

(assert (= (and b!1361276 res!905555) b!1361285))

(assert (= (and b!1361285 res!905545) b!1361278))

(assert (= (and b!1361278 res!905556) b!1361286))

(assert (= (and b!1361286 res!905549) b!1361282))

(declare-fun m!1246429 () Bool)

(assert (=> b!1361290 m!1246429))

(declare-fun m!1246431 () Bool)

(assert (=> b!1361284 m!1246431))

(declare-fun m!1246433 () Bool)

(assert (=> b!1361278 m!1246433))

(declare-fun m!1246435 () Bool)

(assert (=> b!1361280 m!1246435))

(declare-fun m!1246437 () Bool)

(assert (=> b!1361280 m!1246437))

(declare-fun m!1246439 () Bool)

(assert (=> b!1361280 m!1246439))

(declare-fun m!1246441 () Bool)

(assert (=> b!1361280 m!1246441))

(declare-fun m!1246443 () Bool)

(assert (=> b!1361280 m!1246443))

(assert (=> b!1361280 m!1246437))

(assert (=> b!1361280 m!1246439))

(declare-fun m!1246445 () Bool)

(assert (=> b!1361280 m!1246445))

(declare-fun m!1246447 () Bool)

(assert (=> b!1361291 m!1246447))

(declare-fun m!1246449 () Bool)

(assert (=> b!1361286 m!1246449))

(declare-fun m!1246451 () Bool)

(assert (=> b!1361285 m!1246451))

(declare-fun m!1246453 () Bool)

(assert (=> b!1361282 m!1246453))

(declare-fun m!1246455 () Bool)

(assert (=> b!1361288 m!1246455))

(declare-fun m!1246457 () Bool)

(assert (=> start!114852 m!1246457))

(assert (=> b!1361287 m!1246437))

(assert (=> b!1361287 m!1246437))

(declare-fun m!1246459 () Bool)

(assert (=> b!1361287 m!1246459))

(declare-fun m!1246461 () Bool)

(assert (=> b!1361279 m!1246461))

(assert (=> b!1361276 m!1246437))

(assert (=> b!1361276 m!1246437))

(assert (=> b!1361276 m!1246439))

(declare-fun m!1246463 () Bool)

(assert (=> b!1361281 m!1246463))

(push 1)

(assert (not b!1361281))

(assert (not start!114852))

(assert (not b!1361284))

(assert (not b!1361276))

(assert (not b!1361287))

(assert (not b!1361285))

(assert (not b!1361278))

(assert (not b!1361282))

(assert (not b!1361286))

(assert (not b!1361288))

(assert (not b!1361280))

(assert (not b!1361290))

(assert (not b!1361291))

(assert (not b!1361279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145769 () Bool)

(declare-fun res!905585 () Bool)

(declare-fun e!772320 () Bool)

(assert (=> d!145769 (=> res!905585 e!772320)))

(assert (=> d!145769 (= res!905585 (is-Nil!31930 acc!759))))

(assert (=> d!145769 (= (noDuplicate!2377 acc!759) e!772320)))

(declare-fun b!1361320 () Bool)

(declare-fun e!772321 () Bool)

(assert (=> b!1361320 (= e!772320 e!772321)))

(declare-fun res!905586 () Bool)

(assert (=> b!1361320 (=> (not res!905586) (not e!772321))))

(assert (=> b!1361320 (= res!905586 (not (contains!9498 (t!46622 acc!759) (h!33138 acc!759))))))

(declare-fun b!1361321 () Bool)

(assert (=> b!1361321 (= e!772321 (noDuplicate!2377 (t!46622 acc!759)))))

(assert (= (and d!145769 (not res!905585)) b!1361320))

(assert (= (and b!1361320 res!905586) b!1361321))

(declare-fun m!1246481 () Bool)

(assert (=> b!1361320 m!1246481))

(declare-fun m!1246483 () Bool)

(assert (=> b!1361321 m!1246483))

(assert (=> b!1361279 d!145769))

(declare-fun d!145773 () Bool)

(declare-fun lt!600104 () Bool)

(declare-fun content!704 (List!31933) (Set (_ BitVec 64)))

(assert (=> d!145773 (= lt!600104 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!704 lt!600093)))))

(declare-fun e!772346 () Bool)

(assert (=> d!145773 (= lt!600104 e!772346)))

(declare-fun res!905607 () Bool)

(assert (=> d!145773 (=> (not res!905607) (not e!772346))))

(assert (=> d!145773 (= res!905607 (is-Cons!31929 lt!600093))))

(assert (=> d!145773 (= (contains!9498 lt!600093 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600104)))

(declare-fun b!1361351 () Bool)

(declare-fun e!772347 () Bool)

(assert (=> b!1361351 (= e!772346 e!772347)))

(declare-fun res!905606 () Bool)

(assert (=> b!1361351 (=> res!905606 e!772347)))

(assert (=> b!1361351 (= res!905606 (= (h!33138 lt!600093) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361352 () Bool)

(assert (=> b!1361352 (= e!772347 (contains!9498 (t!46622 lt!600093) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145773 res!905607) b!1361351))

(assert (= (and b!1361351 (not res!905606)) b!1361352))

(declare-fun m!1246487 () Bool)

(assert (=> d!145773 m!1246487))

(declare-fun m!1246491 () Bool)

(assert (=> d!145773 m!1246491))

(declare-fun m!1246493 () Bool)

(assert (=> b!1361352 m!1246493))

(assert (=> b!1361278 d!145773))

(declare-fun d!145777 () Bool)

(assert (=> d!145777 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600112 () Unit!44819)

(declare-fun choose!80 (array!92561 List!31933 List!31933 (_ BitVec 32)) Unit!44819)

(assert (=> d!145777 (= lt!600112 (choose!80 a!3742 ($colon$colon!894 acc!759 (select (arr!44712 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145777 (bvslt (size!45263 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145777 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!894 acc!759 (select (arr!44712 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600112)))

(declare-fun bs!39034 () Bool)

(assert (= bs!39034 d!145777))

(assert (=> bs!39034 m!1246443))

(assert (=> bs!39034 m!1246439))

(declare-fun m!1246505 () Bool)

(assert (=> bs!39034 m!1246505))

(assert (=> b!1361280 d!145777))

(declare-fun b!1361399 () Bool)

(declare-fun e!772390 () Bool)

(assert (=> b!1361399 (= e!772390 (subseq!889 acc!759 (t!46622 acc!759)))))

(declare-fun d!145787 () Bool)

(declare-fun res!905648 () Bool)

(declare-fun e!772388 () Bool)

(assert (=> d!145787 (=> res!905648 e!772388)))

(assert (=> d!145787 (= res!905648 (is-Nil!31930 acc!759))))

(assert (=> d!145787 (= (subseq!889 acc!759 acc!759) e!772388)))

(declare-fun b!1361396 () Bool)

(declare-fun e!772389 () Bool)

(assert (=> b!1361396 (= e!772388 e!772389)))

(declare-fun res!905646 () Bool)

(assert (=> b!1361396 (=> (not res!905646) (not e!772389))))

(assert (=> b!1361396 (= res!905646 (is-Cons!31929 acc!759))))

(declare-fun b!1361398 () Bool)

(declare-fun e!772391 () Bool)

(assert (=> b!1361398 (= e!772391 (subseq!889 (t!46622 acc!759) (t!46622 acc!759)))))

(declare-fun b!1361397 () Bool)

(assert (=> b!1361397 (= e!772389 e!772390)))

(declare-fun res!905647 () Bool)

(assert (=> b!1361397 (=> res!905647 e!772390)))

(assert (=> b!1361397 (= res!905647 e!772391)))

(declare-fun res!905645 () Bool)

(assert (=> b!1361397 (=> (not res!905645) (not e!772391))))

(assert (=> b!1361397 (= res!905645 (= (h!33138 acc!759) (h!33138 acc!759)))))

(assert (= (and d!145787 (not res!905648)) b!1361396))

(assert (= (and b!1361396 res!905646) b!1361397))

(assert (= (and b!1361397 res!905645) b!1361398))

(assert (= (and b!1361397 (not res!905647)) b!1361399))

(declare-fun m!1246535 () Bool)

(assert (=> b!1361399 m!1246535))

(declare-fun m!1246539 () Bool)

(assert (=> b!1361398 m!1246539))

(assert (=> b!1361280 d!145787))

(declare-fun b!1361450 () Bool)

(declare-fun e!772436 () Bool)

(declare-fun e!772438 () Bool)

(assert (=> b!1361450 (= e!772436 e!772438)))

(declare-fun res!905688 () Bool)

(assert (=> b!1361450 (=> (not res!905688) (not e!772438))))

(declare-fun e!772439 () Bool)

(assert (=> b!1361450 (= res!905688 (not e!772439))))

(declare-fun res!905689 () Bool)

(assert (=> b!1361450 (=> (not res!905689) (not e!772439))))

(assert (=> b!1361450 (= res!905689 (validKeyInArray!0 (select (arr!44712 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361451 () Bool)

(declare-fun e!772437 () Bool)

(declare-fun call!65368 () Bool)

(assert (=> b!1361451 (= e!772437 call!65368)))

(declare-fun c!127324 () Bool)

(declare-fun bm!65365 () Bool)

(assert (=> bm!65365 (= call!65368 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127324 (Cons!31929 (select (arr!44712 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun d!145805 () Bool)

(declare-fun res!905687 () Bool)

(assert (=> d!145805 (=> res!905687 e!772436)))

(assert (=> d!145805 (= res!905687 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45263 a!3742)))))

(assert (=> d!145805 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!772436)))

(declare-fun b!1361452 () Bool)

(assert (=> b!1361452 (= e!772437 call!65368)))

(declare-fun b!1361453 () Bool)

(assert (=> b!1361453 (= e!772438 e!772437)))

(assert (=> b!1361453 (= c!127324 (validKeyInArray!0 (select (arr!44712 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361454 () Bool)

(assert (=> b!1361454 (= e!772439 (contains!9498 acc!759 (select (arr!44712 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145805 (not res!905687)) b!1361450))

(assert (= (and b!1361450 res!905689) b!1361454))

(assert (= (and b!1361450 res!905688) b!1361453))

(assert (= (and b!1361453 c!127324) b!1361451))

(assert (= (and b!1361453 (not c!127324)) b!1361452))

(assert (= (or b!1361451 b!1361452) bm!65365))

(declare-fun m!1246601 () Bool)

(assert (=> b!1361450 m!1246601))

(assert (=> b!1361450 m!1246601))

(declare-fun m!1246603 () Bool)

(assert (=> b!1361450 m!1246603))

(assert (=> bm!65365 m!1246601))

(declare-fun m!1246605 () Bool)

(assert (=> bm!65365 m!1246605))

(assert (=> b!1361453 m!1246601))

(assert (=> b!1361453 m!1246601))

(assert (=> b!1361453 m!1246603))

(assert (=> b!1361454 m!1246601))

(assert (=> b!1361454 m!1246601))

(declare-fun m!1246607 () Bool)

(assert (=> b!1361454 m!1246607))

(assert (=> b!1361280 d!145805))

(declare-fun d!145833 () Bool)

(assert (=> d!145833 (= ($colon$colon!894 acc!759 (select (arr!44712 a!3742) from!3120)) (Cons!31929 (select (arr!44712 a!3742) from!3120) acc!759))))

(assert (=> b!1361280 d!145833))

(declare-fun d!145835 () Bool)

(assert (=> d!145835 (subseq!889 acc!759 acc!759)))

(declare-fun lt!600128 () Unit!44819)

(declare-fun choose!36 (List!31933) Unit!44819)

(assert (=> d!145835 (= lt!600128 (choose!36 acc!759))))

(assert (=> d!145835 (= (lemmaListSubSeqRefl!0 acc!759) lt!600128)))

(declare-fun bs!39037 () Bool)

(assert (= bs!39037 d!145835))

(assert (=> bs!39037 m!1246445))

(declare-fun m!1246609 () Bool)

(assert (=> bs!39037 m!1246609))

(assert (=> b!1361280 d!145835))

(declare-fun d!145837 () Bool)

(declare-fun lt!600129 () Bool)

(assert (=> d!145837 (= lt!600129 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!704 acc!759)))))

(declare-fun e!772440 () Bool)

(assert (=> d!145837 (= lt!600129 e!772440)))

(declare-fun res!905691 () Bool)

(assert (=> d!145837 (=> (not res!905691) (not e!772440))))

(assert (=> d!145837 (= res!905691 (is-Cons!31929 acc!759))))

(assert (=> d!145837 (= (contains!9498 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600129)))

(declare-fun b!1361455 () Bool)

(declare-fun e!772441 () Bool)

(assert (=> b!1361455 (= e!772440 e!772441)))

(declare-fun res!905690 () Bool)

(assert (=> b!1361455 (=> res!905690 e!772441)))

(assert (=> b!1361455 (= res!905690 (= (h!33138 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361456 () Bool)

(assert (=> b!1361456 (= e!772441 (contains!9498 (t!46622 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145837 res!905691) b!1361455))

(assert (= (and b!1361455 (not res!905690)) b!1361456))

(declare-fun m!1246611 () Bool)

(assert (=> d!145837 m!1246611))

(declare-fun m!1246613 () Bool)

(assert (=> d!145837 m!1246613))

(declare-fun m!1246615 () Bool)

(assert (=> b!1361456 m!1246615))

(assert (=> b!1361291 d!145837))

(declare-fun d!145839 () Bool)

(declare-fun lt!600130 () Bool)

(assert (=> d!145839 (= lt!600130 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!704 acc!759)))))

(declare-fun e!772442 () Bool)

(assert (=> d!145839 (= lt!600130 e!772442)))

(declare-fun res!905693 () Bool)

(assert (=> d!145839 (=> (not res!905693) (not e!772442))))

(assert (=> d!145839 (= res!905693 (is-Cons!31929 acc!759))))

(assert (=> d!145839 (= (contains!9498 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600130)))

(declare-fun b!1361457 () Bool)

(declare-fun e!772443 () Bool)

(assert (=> b!1361457 (= e!772442 e!772443)))

(declare-fun res!905692 () Bool)

(assert (=> b!1361457 (=> res!905692 e!772443)))

(assert (=> b!1361457 (= res!905692 (= (h!33138 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361458 () Bool)

(assert (=> b!1361458 (= e!772443 (contains!9498 (t!46622 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145839 res!905693) b!1361457))

(assert (= (and b!1361457 (not res!905692)) b!1361458))

(assert (=> d!145839 m!1246611))

(declare-fun m!1246617 () Bool)

(assert (=> d!145839 m!1246617))

(declare-fun m!1246619 () Bool)

(assert (=> b!1361458 m!1246619))

(assert (=> b!1361290 d!145839))

(declare-fun b!1361459 () Bool)

(declare-fun e!772444 () Bool)

(declare-fun e!772446 () Bool)

(assert (=> b!1361459 (= e!772444 e!772446)))

(declare-fun res!905695 () Bool)

(assert (=> b!1361459 (=> (not res!905695) (not e!772446))))

(declare-fun e!772447 () Bool)

(assert (=> b!1361459 (= res!905695 (not e!772447))))

(declare-fun res!905696 () Bool)

(assert (=> b!1361459 (=> (not res!905696) (not e!772447))))

(assert (=> b!1361459 (= res!905696 (validKeyInArray!0 (select (arr!44712 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1361460 () Bool)

(declare-fun e!772445 () Bool)

(declare-fun call!65369 () Bool)

(assert (=> b!1361460 (= e!772445 call!65369)))

(declare-fun bm!65366 () Bool)

(declare-fun c!127325 () Bool)

(assert (=> bm!65366 (= call!65369 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127325 (Cons!31929 (select (arr!44712 a!3742) #b00000000000000000000000000000000) Nil!31930) Nil!31930)))))

(declare-fun d!145841 () Bool)

(declare-fun res!905694 () Bool)

(assert (=> d!145841 (=> res!905694 e!772444)))

(assert (=> d!145841 (= res!905694 (bvsge #b00000000000000000000000000000000 (size!45263 a!3742)))))

(assert (=> d!145841 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31930) e!772444)))

(declare-fun b!1361461 () Bool)

(assert (=> b!1361461 (= e!772445 call!65369)))

(declare-fun b!1361462 () Bool)

(assert (=> b!1361462 (= e!772446 e!772445)))

(assert (=> b!1361462 (= c!127325 (validKeyInArray!0 (select (arr!44712 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1361463 () Bool)

(assert (=> b!1361463 (= e!772447 (contains!9498 Nil!31930 (select (arr!44712 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145841 (not res!905694)) b!1361459))

(assert (= (and b!1361459 res!905696) b!1361463))

(assert (= (and b!1361459 res!905695) b!1361462))

(assert (= (and b!1361462 c!127325) b!1361460))

(assert (= (and b!1361462 (not c!127325)) b!1361461))

(assert (= (or b!1361460 b!1361461) bm!65366))

(declare-fun m!1246621 () Bool)

(assert (=> b!1361459 m!1246621))

(assert (=> b!1361459 m!1246621))

(declare-fun m!1246623 () Bool)

(assert (=> b!1361459 m!1246623))

(assert (=> bm!65366 m!1246621))

(declare-fun m!1246625 () Bool)

(assert (=> bm!65366 m!1246625))

(assert (=> b!1361462 m!1246621))

(assert (=> b!1361462 m!1246621))

(assert (=> b!1361462 m!1246623))

(assert (=> b!1361463 m!1246621))

(assert (=> b!1361463 m!1246621))

(declare-fun m!1246627 () Bool)

(assert (=> b!1361463 m!1246627))

(assert (=> b!1361281 d!145841))

(declare-fun b!1361464 () Bool)

(declare-fun e!772448 () Bool)

(declare-fun e!772450 () Bool)

(assert (=> b!1361464 (= e!772448 e!772450)))

(declare-fun res!905698 () Bool)

(assert (=> b!1361464 (=> (not res!905698) (not e!772450))))

(declare-fun e!772451 () Bool)

(assert (=> b!1361464 (= res!905698 (not e!772451))))

(declare-fun res!905699 () Bool)

(assert (=> b!1361464 (=> (not res!905699) (not e!772451))))

(assert (=> b!1361464 (= res!905699 (validKeyInArray!0 (select (arr!44712 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361465 () Bool)

(declare-fun e!772449 () Bool)

(declare-fun call!65370 () Bool)

(assert (=> b!1361465 (= e!772449 call!65370)))

(declare-fun c!127326 () Bool)

(declare-fun bm!65367 () Bool)

(assert (=> bm!65367 (= call!65370 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127326 (Cons!31929 (select (arr!44712 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600093) lt!600093)))))

(declare-fun d!145843 () Bool)

(declare-fun res!905697 () Bool)

(assert (=> d!145843 (=> res!905697 e!772448)))

(assert (=> d!145843 (= res!905697 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45263 a!3742)))))

(assert (=> d!145843 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600093) e!772448)))

(declare-fun b!1361466 () Bool)

(assert (=> b!1361466 (= e!772449 call!65370)))

(declare-fun b!1361467 () Bool)

