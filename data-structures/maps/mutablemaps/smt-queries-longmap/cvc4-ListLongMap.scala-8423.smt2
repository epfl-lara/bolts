; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102624 () Bool)

(assert start!102624)

(declare-fun b!1233395 () Bool)

(declare-fun res!821735 () Bool)

(declare-fun e!699682 () Bool)

(assert (=> b!1233395 (=> (not res!821735) (not e!699682))))

(declare-datatypes ((array!79494 0))(
  ( (array!79495 (arr!38354 (Array (_ BitVec 32) (_ BitVec 64))) (size!38891 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79494)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233395 (= res!821735 (validKeyInArray!0 (select (arr!38354 a!3806) from!3184)))))

(declare-fun b!1233396 () Bool)

(declare-fun res!821730 () Bool)

(assert (=> b!1233396 (=> (not res!821730) (not e!699682))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1233396 (= res!821730 (validKeyInArray!0 k!2913))))

(declare-fun b!1233397 () Bool)

(declare-fun e!699680 () Bool)

(assert (=> b!1233397 (= e!699682 (not e!699680))))

(declare-fun res!821734 () Bool)

(assert (=> b!1233397 (=> res!821734 e!699680)))

(assert (=> b!1233397 (= res!821734 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27305 0))(
  ( (Nil!27302) (Cons!27301 (h!28510 (_ BitVec 64)) (t!40775 List!27305)) )
))
(declare-fun lt!559626 () List!27305)

(assert (=> b!1233397 (= lt!559626 (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302))))

(declare-fun e!699679 () Bool)

(assert (=> b!1233397 e!699679))

(declare-fun res!821723 () Bool)

(assert (=> b!1233397 (=> (not res!821723) (not e!699679))))

(declare-fun arrayNoDuplicates!0 (array!79494 (_ BitVec 32) List!27305) Bool)

(assert (=> b!1233397 (= res!821723 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27302))))

(declare-fun acc!823 () List!27305)

(declare-datatypes ((Unit!40788 0))(
  ( (Unit!40789) )
))
(declare-fun lt!559627 () Unit!40788)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79494 List!27305 List!27305 (_ BitVec 32)) Unit!40788)

(assert (=> b!1233397 (= lt!559627 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27302 from!3184))))

(assert (=> b!1233397 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27301 (select (arr!38354 a!3806) from!3184) acc!823))))

(declare-fun b!1233398 () Bool)

(declare-fun res!821724 () Bool)

(assert (=> b!1233398 (=> (not res!821724) (not e!699682))))

(assert (=> b!1233398 (= res!821724 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233399 () Bool)

(declare-fun res!821725 () Bool)

(assert (=> b!1233399 (=> (not res!821725) (not e!699682))))

(declare-fun arrayContainsKey!0 (array!79494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233399 (= res!821725 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233400 () Bool)

(declare-fun res!821733 () Bool)

(assert (=> b!1233400 (=> res!821733 e!699680)))

(declare-fun contains!7220 (List!27305 (_ BitVec 64)) Bool)

(assert (=> b!1233400 (= res!821733 (contains!7220 lt!559626 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!821727 () Bool)

(assert (=> start!102624 (=> (not res!821727) (not e!699682))))

(assert (=> start!102624 (= res!821727 (bvslt (size!38891 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102624 e!699682))

(declare-fun array_inv!29130 (array!79494) Bool)

(assert (=> start!102624 (array_inv!29130 a!3806)))

(assert (=> start!102624 true))

(declare-fun b!1233401 () Bool)

(declare-fun res!821732 () Bool)

(assert (=> b!1233401 (=> res!821732 e!699680)))

(declare-fun noDuplicate!1827 (List!27305) Bool)

(assert (=> b!1233401 (= res!821732 (not (noDuplicate!1827 lt!559626)))))

(declare-fun b!1233402 () Bool)

(declare-fun res!821731 () Bool)

(assert (=> b!1233402 (=> (not res!821731) (not e!699682))))

(assert (=> b!1233402 (= res!821731 (not (contains!7220 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233403 () Bool)

(declare-fun res!821726 () Bool)

(assert (=> b!1233403 (=> (not res!821726) (not e!699682))))

(assert (=> b!1233403 (= res!821726 (noDuplicate!1827 acc!823))))

(declare-fun b!1233404 () Bool)

(declare-fun res!821722 () Bool)

(assert (=> b!1233404 (=> res!821722 e!699680)))

(assert (=> b!1233404 (= res!821722 (contains!7220 lt!559626 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233405 () Bool)

(declare-fun res!821728 () Bool)

(assert (=> b!1233405 (=> (not res!821728) (not e!699682))))

(assert (=> b!1233405 (= res!821728 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38891 a!3806)) (bvslt from!3184 (size!38891 a!3806))))))

(declare-fun b!1233406 () Bool)

(assert (=> b!1233406 (= e!699679 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302)))))

(declare-fun b!1233407 () Bool)

(assert (=> b!1233407 (= e!699680 (contains!7220 lt!559626 (select (arr!38354 a!3806) from!3184)))))

(declare-fun b!1233408 () Bool)

(declare-fun res!821729 () Bool)

(assert (=> b!1233408 (=> (not res!821729) (not e!699682))))

(assert (=> b!1233408 (= res!821729 (not (contains!7220 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102624 res!821727) b!1233396))

(assert (= (and b!1233396 res!821730) b!1233405))

(assert (= (and b!1233405 res!821728) b!1233403))

(assert (= (and b!1233403 res!821726) b!1233402))

(assert (= (and b!1233402 res!821731) b!1233408))

(assert (= (and b!1233408 res!821729) b!1233399))

(assert (= (and b!1233399 res!821725) b!1233398))

(assert (= (and b!1233398 res!821724) b!1233395))

(assert (= (and b!1233395 res!821735) b!1233397))

(assert (= (and b!1233397 res!821723) b!1233406))

(assert (= (and b!1233397 (not res!821734)) b!1233401))

(assert (= (and b!1233401 (not res!821732)) b!1233404))

(assert (= (and b!1233404 (not res!821722)) b!1233400))

(assert (= (and b!1233400 (not res!821733)) b!1233407))

(declare-fun m!1137511 () Bool)

(assert (=> b!1233399 m!1137511))

(declare-fun m!1137513 () Bool)

(assert (=> b!1233398 m!1137513))

(declare-fun m!1137515 () Bool)

(assert (=> b!1233406 m!1137515))

(declare-fun m!1137517 () Bool)

(assert (=> b!1233406 m!1137517))

(declare-fun m!1137519 () Bool)

(assert (=> b!1233404 m!1137519))

(assert (=> b!1233407 m!1137515))

(assert (=> b!1233407 m!1137515))

(declare-fun m!1137521 () Bool)

(assert (=> b!1233407 m!1137521))

(declare-fun m!1137523 () Bool)

(assert (=> b!1233402 m!1137523))

(assert (=> b!1233395 m!1137515))

(assert (=> b!1233395 m!1137515))

(declare-fun m!1137525 () Bool)

(assert (=> b!1233395 m!1137525))

(declare-fun m!1137527 () Bool)

(assert (=> b!1233400 m!1137527))

(declare-fun m!1137529 () Bool)

(assert (=> b!1233396 m!1137529))

(declare-fun m!1137531 () Bool)

(assert (=> b!1233403 m!1137531))

(assert (=> b!1233397 m!1137515))

(declare-fun m!1137533 () Bool)

(assert (=> b!1233397 m!1137533))

(declare-fun m!1137535 () Bool)

(assert (=> b!1233397 m!1137535))

(declare-fun m!1137537 () Bool)

(assert (=> b!1233397 m!1137537))

(declare-fun m!1137539 () Bool)

(assert (=> start!102624 m!1137539))

(declare-fun m!1137541 () Bool)

(assert (=> b!1233408 m!1137541))

(declare-fun m!1137543 () Bool)

(assert (=> b!1233401 m!1137543))

(push 1)

(assert (not b!1233399))

(assert (not b!1233401))

(assert (not b!1233395))

(assert (not b!1233407))

(assert (not b!1233398))

(assert (not b!1233402))

(assert (not b!1233397))

(assert (not b!1233404))

(assert (not b!1233408))

(assert (not b!1233396))

(assert (not b!1233403))

(assert (not b!1233406))

(assert (not b!1233400))

(assert (not start!102624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1233457 () Bool)

(declare-fun e!699728 () Bool)

(declare-fun call!60972 () Bool)

(assert (=> b!1233457 (= e!699728 call!60972)))

(declare-fun b!1233458 () Bool)

(declare-fun e!699725 () Bool)

(assert (=> b!1233458 (= e!699725 (contains!7220 Nil!27302 (select (arr!38354 a!3806) from!3184)))))

(declare-fun b!1233459 () Bool)

(declare-fun e!699727 () Bool)

(declare-fun e!699726 () Bool)

(assert (=> b!1233459 (= e!699727 e!699726)))

(declare-fun res!821773 () Bool)

(assert (=> b!1233459 (=> (not res!821773) (not e!699726))))

(assert (=> b!1233459 (= res!821773 (not e!699725))))

(declare-fun res!821774 () Bool)

(assert (=> b!1233459 (=> (not res!821774) (not e!699725))))

(assert (=> b!1233459 (= res!821774 (validKeyInArray!0 (select (arr!38354 a!3806) from!3184)))))

(declare-fun b!1233460 () Bool)

(assert (=> b!1233460 (= e!699728 call!60972)))

(declare-fun bm!60969 () Bool)

(declare-fun c!120705 () Bool)

(assert (=> bm!60969 (= call!60972 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120705 (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302) Nil!27302)))))

(declare-fun d!135219 () Bool)

(declare-fun res!821772 () Bool)

(assert (=> d!135219 (=> res!821772 e!699727)))

(assert (=> d!135219 (= res!821772 (bvsge from!3184 (size!38891 a!3806)))))

(assert (=> d!135219 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27302) e!699727)))

(declare-fun b!1233461 () Bool)

(assert (=> b!1233461 (= e!699726 e!699728)))

(assert (=> b!1233461 (= c!120705 (validKeyInArray!0 (select (arr!38354 a!3806) from!3184)))))

(assert (= (and d!135219 (not res!821772)) b!1233459))

(assert (= (and b!1233459 res!821774) b!1233458))

(assert (= (and b!1233459 res!821773) b!1233461))

(assert (= (and b!1233461 c!120705) b!1233460))

(assert (= (and b!1233461 (not c!120705)) b!1233457))

(assert (= (or b!1233460 b!1233457) bm!60969))

(assert (=> b!1233458 m!1137515))

(assert (=> b!1233458 m!1137515))

(declare-fun m!1137573 () Bool)

(assert (=> b!1233458 m!1137573))

(assert (=> b!1233459 m!1137515))

(assert (=> b!1233459 m!1137515))

(assert (=> b!1233459 m!1137525))

(assert (=> bm!60969 m!1137515))

(declare-fun m!1137575 () Bool)

(assert (=> bm!60969 m!1137575))

(assert (=> b!1233461 m!1137515))

(assert (=> b!1233461 m!1137515))

(assert (=> b!1233461 m!1137525))

(assert (=> b!1233397 d!135219))

(declare-fun d!135229 () Bool)

(assert (=> d!135229 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27302)))

(declare-fun lt!559639 () Unit!40788)

(declare-fun choose!80 (array!79494 List!27305 List!27305 (_ BitVec 32)) Unit!40788)

(assert (=> d!135229 (= lt!559639 (choose!80 a!3806 acc!823 Nil!27302 from!3184))))

(assert (=> d!135229 (bvslt (size!38891 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!135229 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27302 from!3184) lt!559639)))

(declare-fun bs!34652 () Bool)

(assert (= bs!34652 d!135229))

(assert (=> bs!34652 m!1137533))

(declare-fun m!1137595 () Bool)

(assert (=> bs!34652 m!1137595))

(assert (=> b!1233397 d!135229))

(declare-fun b!1233488 () Bool)

(declare-fun e!699754 () Bool)

(declare-fun call!60977 () Bool)

(assert (=> b!1233488 (= e!699754 call!60977)))

(declare-fun b!1233489 () Bool)

(declare-fun e!699751 () Bool)

(assert (=> b!1233489 (= e!699751 (contains!7220 (Cons!27301 (select (arr!38354 a!3806) from!3184) acc!823) (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233490 () Bool)

(declare-fun e!699753 () Bool)

(declare-fun e!699752 () Bool)

(assert (=> b!1233490 (= e!699753 e!699752)))

(declare-fun res!821794 () Bool)

(assert (=> b!1233490 (=> (not res!821794) (not e!699752))))

(assert (=> b!1233490 (= res!821794 (not e!699751))))

(declare-fun res!821795 () Bool)

(assert (=> b!1233490 (=> (not res!821795) (not e!699751))))

(assert (=> b!1233490 (= res!821795 (validKeyInArray!0 (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233491 () Bool)

(assert (=> b!1233491 (= e!699754 call!60977)))

(declare-fun c!120710 () Bool)

(declare-fun bm!60974 () Bool)

(assert (=> bm!60974 (= call!60977 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120710 (Cons!27301 (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27301 (select (arr!38354 a!3806) from!3184) acc!823)) (Cons!27301 (select (arr!38354 a!3806) from!3184) acc!823))))))

(declare-fun d!135239 () Bool)

(declare-fun res!821793 () Bool)

(assert (=> d!135239 (=> res!821793 e!699753)))

(assert (=> d!135239 (= res!821793 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38891 a!3806)))))

(assert (=> d!135239 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27301 (select (arr!38354 a!3806) from!3184) acc!823)) e!699753)))

(declare-fun b!1233492 () Bool)

(assert (=> b!1233492 (= e!699752 e!699754)))

(assert (=> b!1233492 (= c!120710 (validKeyInArray!0 (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135239 (not res!821793)) b!1233490))

(assert (= (and b!1233490 res!821795) b!1233489))

(assert (= (and b!1233490 res!821794) b!1233492))

(assert (= (and b!1233492 c!120710) b!1233491))

(assert (= (and b!1233492 (not c!120710)) b!1233488))

(assert (= (or b!1233491 b!1233488) bm!60974))

(declare-fun m!1137601 () Bool)

(assert (=> b!1233489 m!1137601))

(assert (=> b!1233489 m!1137601))

(declare-fun m!1137603 () Bool)

(assert (=> b!1233489 m!1137603))

(assert (=> b!1233490 m!1137601))

(assert (=> b!1233490 m!1137601))

(declare-fun m!1137605 () Bool)

(assert (=> b!1233490 m!1137605))

(assert (=> bm!60974 m!1137601))

(declare-fun m!1137607 () Bool)

(assert (=> bm!60974 m!1137607))

(assert (=> b!1233492 m!1137601))

(assert (=> b!1233492 m!1137601))

(assert (=> b!1233492 m!1137605))

(assert (=> b!1233397 d!135239))

(declare-fun d!135243 () Bool)

(assert (=> d!135243 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1233396 d!135243))

(declare-fun lt!559648 () Bool)

(declare-fun d!135247 () Bool)

(declare-fun content!584 (List!27305) (Set (_ BitVec 64)))

(assert (=> d!135247 (= lt!559648 (member (select (arr!38354 a!3806) from!3184) (content!584 lt!559626)))))

(declare-fun e!699775 () Bool)

(assert (=> d!135247 (= lt!559648 e!699775)))

(declare-fun res!821813 () Bool)

(assert (=> d!135247 (=> (not res!821813) (not e!699775))))

(assert (=> d!135247 (= res!821813 (is-Cons!27301 lt!559626))))

(assert (=> d!135247 (= (contains!7220 lt!559626 (select (arr!38354 a!3806) from!3184)) lt!559648)))

(declare-fun b!1233516 () Bool)

(declare-fun e!699776 () Bool)

(assert (=> b!1233516 (= e!699775 e!699776)))

(declare-fun res!821814 () Bool)

(assert (=> b!1233516 (=> res!821814 e!699776)))

(assert (=> b!1233516 (= res!821814 (= (h!28510 lt!559626) (select (arr!38354 a!3806) from!3184)))))

(declare-fun b!1233517 () Bool)

(assert (=> b!1233517 (= e!699776 (contains!7220 (t!40775 lt!559626) (select (arr!38354 a!3806) from!3184)))))

(assert (= (and d!135247 res!821813) b!1233516))

(assert (= (and b!1233516 (not res!821814)) b!1233517))

(declare-fun m!1137625 () Bool)

(assert (=> d!135247 m!1137625))

(assert (=> d!135247 m!1137515))

(declare-fun m!1137627 () Bool)

(assert (=> d!135247 m!1137627))

(assert (=> b!1233517 m!1137515))

(declare-fun m!1137629 () Bool)

(assert (=> b!1233517 m!1137629))

(assert (=> b!1233407 d!135247))

(declare-fun b!1233520 () Bool)

(declare-fun e!699782 () Bool)

(declare-fun call!60981 () Bool)

(assert (=> b!1233520 (= e!699782 call!60981)))

(declare-fun b!1233521 () Bool)

(declare-fun e!699779 () Bool)

(assert (=> b!1233521 (= e!699779 (contains!7220 (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302) (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233522 () Bool)

(declare-fun e!699781 () Bool)

(declare-fun e!699780 () Bool)

(assert (=> b!1233522 (= e!699781 e!699780)))

(declare-fun res!821818 () Bool)

(assert (=> b!1233522 (=> (not res!821818) (not e!699780))))

(assert (=> b!1233522 (= res!821818 (not e!699779))))

(declare-fun res!821819 () Bool)

(assert (=> b!1233522 (=> (not res!821819) (not e!699779))))

(assert (=> b!1233522 (= res!821819 (validKeyInArray!0 (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233523 () Bool)

(assert (=> b!1233523 (= e!699782 call!60981)))

(declare-fun bm!60978 () Bool)

(declare-fun c!120714 () Bool)

(assert (=> bm!60978 (= call!60981 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120714 (Cons!27301 (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302)) (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302))))))

(declare-fun d!135257 () Bool)

(declare-fun res!821817 () Bool)

(assert (=> d!135257 (=> res!821817 e!699781)))

(assert (=> d!135257 (= res!821817 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38891 a!3806)))))

(assert (=> d!135257 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27301 (select (arr!38354 a!3806) from!3184) Nil!27302)) e!699781)))

(declare-fun b!1233524 () Bool)

(assert (=> b!1233524 (= e!699780 e!699782)))

(assert (=> b!1233524 (= c!120714 (validKeyInArray!0 (select (arr!38354 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135257 (not res!821817)) b!1233522))

(assert (= (and b!1233522 res!821819) b!1233521))

(assert (= (and b!1233522 res!821818) b!1233524))

(assert (= (and b!1233524 c!120714) b!1233523))

(assert (= (and b!1233524 (not c!120714)) b!1233520))

(assert (= (or b!1233523 b!1233520) bm!60978))

(assert (=> b!1233521 m!1137601))

(assert (=> b!1233521 m!1137601))

(declare-fun m!1137641 () Bool)

(assert (=> b!1233521 m!1137641))

(assert (=> b!1233522 m!1137601))

(assert (=> b!1233522 m!1137601))

(assert (=> b!1233522 m!1137605))

(assert (=> bm!60978 m!1137601))

(declare-fun m!1137643 () Bool)

(assert (=> bm!60978 m!1137643))

(assert (=> b!1233524 m!1137601))

(assert (=> b!1233524 m!1137601))

(assert (=> b!1233524 m!1137605))

(assert (=> b!1233406 d!135257))

(declare-fun d!135265 () Bool)

(assert (=> d!135265 (= (validKeyInArray!0 (select (arr!38354 a!3806) from!3184)) (and (not (= (select (arr!38354 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38354 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1233395 d!135265))

(declare-fun d!135269 () Bool)

(declare-fun lt!559650 () Bool)

(assert (=> d!135269 (= lt!559650 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!584 lt!559626)))))

(declare-fun e!699787 () Bool)

(assert (=> d!135269 (= lt!559650 e!699787)))

(declare-fun res!821824 () Bool)

(assert (=> d!135269 (=> (not res!821824) (not e!699787))))

(assert (=> d!135269 (= res!821824 (is-Cons!27301 lt!559626))))

(assert (=> d!135269 (= (contains!7220 lt!559626 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559650)))

(declare-fun b!1233529 () Bool)

(declare-fun e!699788 () Bool)

(assert (=> b!1233529 (= e!699787 e!699788)))

(declare-fun res!821825 () Bool)

(assert (=> b!1233529 (=> res!821825 e!699788)))

(assert (=> b!1233529 (= res!821825 (= (h!28510 lt!559626) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233530 () Bool)

(assert (=> b!1233530 (= e!699788 (contains!7220 (t!40775 lt!559626) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135269 res!821824) b!1233529))

(assert (= (and b!1233529 (not res!821825)) b!1233530))

(assert (=> d!135269 m!1137625))

(declare-fun m!1137649 () Bool)

(assert (=> d!135269 m!1137649))

(declare-fun m!1137651 () Bool)

(assert (=> b!1233530 m!1137651))

(assert (=> b!1233404 d!135269))

(declare-fun d!135273 () Bool)

(declare-fun res!821836 () Bool)

(declare-fun e!699799 () Bool)

(assert (=> d!135273 (=> res!821836 e!699799)))

(assert (=> d!135273 (= res!821836 (is-Nil!27302 acc!823))))

(assert (=> d!135273 (= (noDuplicate!1827 acc!823) e!699799)))

(declare-fun b!1233541 () Bool)

(declare-fun e!699800 () Bool)

(assert (=> b!1233541 (= e!699799 e!699800)))

(declare-fun res!821837 () Bool)

(assert (=> b!1233541 (=> (not res!821837) (not e!699800))))

(assert (=> b!1233541 (= res!821837 (not (contains!7220 (t!40775 acc!823) (h!28510 acc!823))))))

(declare-fun b!1233542 () Bool)

(assert (=> b!1233542 (= e!699800 (noDuplicate!1827 (t!40775 acc!823)))))

(assert (= (and d!135273 (not res!821836)) b!1233541))

(assert (= (and b!1233541 res!821837) b!1233542))

(declare-fun m!1137667 () Bool)

(assert (=> b!1233541 m!1137667))

(declare-fun m!1137669 () Bool)

(assert (=> b!1233542 m!1137669))

(assert (=> b!1233403 d!135273))

(declare-fun d!135281 () Bool)

(declare-fun lt!559654 () Bool)

(assert (=> d!135281 (= lt!559654 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!584 acc!823)))))

(declare-fun e!699801 () Bool)

(assert (=> d!135281 (= lt!559654 e!699801)))

(declare-fun res!821838 () Bool)

(assert (=> d!135281 (=> (not res!821838) (not e!699801))))

(assert (=> d!135281 (= res!821838 (is-Cons!27301 acc!823))))

(assert (=> d!135281 (= (contains!7220 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559654)))

(declare-fun b!1233543 () Bool)

(declare-fun e!699802 () Bool)

(assert (=> b!1233543 (= e!699801 e!699802)))

(declare-fun res!821839 () Bool)

(assert (=> b!1233543 (=> res!821839 e!699802)))

(assert (=> b!1233543 (= res!821839 (= (h!28510 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233544 () Bool)

(assert (=> b!1233544 (= e!699802 (contains!7220 (t!40775 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135281 res!821838) b!1233543))

(assert (= (and b!1233543 (not res!821839)) b!1233544))

(declare-fun m!1137671 () Bool)

(assert (=> d!135281 m!1137671))

(declare-fun m!1137673 () Bool)

(assert (=> d!135281 m!1137673))

(declare-fun m!1137675 () Bool)

(assert (=> b!1233544 m!1137675))

(assert (=> b!1233402 d!135281))

(declare-fun d!135283 () Bool)

(assert (=> d!135283 (= (array_inv!29130 a!3806) (bvsge (size!38891 a!3806) #b00000000000000000000000000000000))))

