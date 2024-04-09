; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93348 () Bool)

(assert start!93348)

(declare-fun b!1057617 () Bool)

(declare-fun e!601572 () Bool)

(declare-fun e!601569 () Bool)

(assert (=> b!1057617 (= e!601572 e!601569)))

(declare-fun res!706389 () Bool)

(assert (=> b!1057617 (=> res!706389 e!601569)))

(declare-fun lt!466550 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057617 (= res!706389 (or (bvsgt lt!466550 i!1381) (bvsle i!1381 lt!466550)))))

(declare-fun res!706386 () Bool)

(declare-fun e!601571 () Bool)

(assert (=> start!93348 (=> (not res!706386) (not e!601571))))

(declare-datatypes ((array!66695 0))(
  ( (array!66696 (arr!32065 (Array (_ BitVec 32) (_ BitVec 64))) (size!32602 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66695)

(assert (=> start!93348 (= res!706386 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32602 a!3488)) (bvslt (size!32602 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93348 e!601571))

(assert (=> start!93348 true))

(declare-fun array_inv!24687 (array!66695) Bool)

(assert (=> start!93348 (array_inv!24687 a!3488)))

(declare-fun b!1057618 () Bool)

(declare-fun e!601565 () Bool)

(declare-fun e!601568 () Bool)

(assert (=> b!1057618 (= e!601565 e!601568)))

(declare-fun res!706384 () Bool)

(assert (=> b!1057618 (=> res!706384 e!601568)))

(declare-fun lt!466549 () (_ BitVec 32))

(assert (=> b!1057618 (= res!706384 (or (bvslt lt!466550 #b00000000000000000000000000000000) (bvsge lt!466549 (size!32602 a!3488)) (bvsge lt!466550 (size!32602 a!3488))))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057618 (arrayContainsKey!0 a!3488 k!2747 lt!466549)))

(declare-datatypes ((Unit!34661 0))(
  ( (Unit!34662) )
))
(declare-fun lt!466552 () Unit!34661)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66695 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34661)

(assert (=> b!1057618 (= lt!466552 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466549))))

(assert (=> b!1057618 (= lt!466549 (bvadd #b00000000000000000000000000000001 lt!466550))))

(declare-datatypes ((List!22508 0))(
  ( (Nil!22505) (Cons!22504 (h!23713 (_ BitVec 64)) (t!31822 List!22508)) )
))
(declare-fun arrayNoDuplicates!0 (array!66695 (_ BitVec 32) List!22508) Bool)

(assert (=> b!1057618 (arrayNoDuplicates!0 a!3488 lt!466550 Nil!22505)))

(declare-fun lt!466551 () Unit!34661)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66695 (_ BitVec 32) (_ BitVec 32)) Unit!34661)

(assert (=> b!1057618 (= lt!466551 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466550))))

(declare-fun b!1057619 () Bool)

(declare-fun res!706387 () Bool)

(assert (=> b!1057619 (=> (not res!706387) (not e!601571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057619 (= res!706387 (validKeyInArray!0 k!2747))))

(declare-fun b!1057620 () Bool)

(declare-fun noDuplicate!1575 (List!22508) Bool)

(assert (=> b!1057620 (= e!601568 (noDuplicate!1575 Nil!22505))))

(declare-fun b!1057621 () Bool)

(declare-fun res!706388 () Bool)

(assert (=> b!1057621 (=> (not res!706388) (not e!601571))))

(assert (=> b!1057621 (= res!706388 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22505))))

(declare-fun b!1057622 () Bool)

(declare-fun e!601567 () Bool)

(assert (=> b!1057622 (= e!601571 e!601567)))

(declare-fun res!706385 () Bool)

(assert (=> b!1057622 (=> (not res!706385) (not e!601567))))

(declare-fun lt!466548 () array!66695)

(assert (=> b!1057622 (= res!706385 (arrayContainsKey!0 lt!466548 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057622 (= lt!466548 (array!66696 (store (arr!32065 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32602 a!3488)))))

(declare-fun b!1057623 () Bool)

(assert (=> b!1057623 (= e!601569 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057624 () Bool)

(declare-fun e!601570 () Bool)

(assert (=> b!1057624 (= e!601570 (not e!601565))))

(declare-fun res!706393 () Bool)

(assert (=> b!1057624 (=> res!706393 e!601565)))

(assert (=> b!1057624 (= res!706393 (or (bvsgt lt!466550 i!1381) (bvsle i!1381 lt!466550)))))

(assert (=> b!1057624 e!601572))

(declare-fun res!706391 () Bool)

(assert (=> b!1057624 (=> (not res!706391) (not e!601572))))

(assert (=> b!1057624 (= res!706391 (= (select (store (arr!32065 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466550) k!2747))))

(declare-fun b!1057625 () Bool)

(declare-fun res!706392 () Bool)

(assert (=> b!1057625 (=> (not res!706392) (not e!601571))))

(assert (=> b!1057625 (= res!706392 (= (select (arr!32065 a!3488) i!1381) k!2747))))

(declare-fun b!1057626 () Bool)

(assert (=> b!1057626 (= e!601567 e!601570)))

(declare-fun res!706390 () Bool)

(assert (=> b!1057626 (=> (not res!706390) (not e!601570))))

(assert (=> b!1057626 (= res!706390 (not (= lt!466550 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66695 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057626 (= lt!466550 (arrayScanForKey!0 lt!466548 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93348 res!706386) b!1057621))

(assert (= (and b!1057621 res!706388) b!1057619))

(assert (= (and b!1057619 res!706387) b!1057625))

(assert (= (and b!1057625 res!706392) b!1057622))

(assert (= (and b!1057622 res!706385) b!1057626))

(assert (= (and b!1057626 res!706390) b!1057624))

(assert (= (and b!1057624 res!706391) b!1057617))

(assert (= (and b!1057617 (not res!706389)) b!1057623))

(assert (= (and b!1057624 (not res!706393)) b!1057618))

(assert (= (and b!1057618 (not res!706384)) b!1057620))

(declare-fun m!977439 () Bool)

(assert (=> b!1057619 m!977439))

(declare-fun m!977441 () Bool)

(assert (=> b!1057626 m!977441))

(declare-fun m!977443 () Bool)

(assert (=> b!1057620 m!977443))

(declare-fun m!977445 () Bool)

(assert (=> start!93348 m!977445))

(declare-fun m!977447 () Bool)

(assert (=> b!1057623 m!977447))

(declare-fun m!977449 () Bool)

(assert (=> b!1057618 m!977449))

(declare-fun m!977451 () Bool)

(assert (=> b!1057618 m!977451))

(declare-fun m!977453 () Bool)

(assert (=> b!1057618 m!977453))

(declare-fun m!977455 () Bool)

(assert (=> b!1057618 m!977455))

(declare-fun m!977457 () Bool)

(assert (=> b!1057625 m!977457))

(declare-fun m!977459 () Bool)

(assert (=> b!1057621 m!977459))

(declare-fun m!977461 () Bool)

(assert (=> b!1057622 m!977461))

(declare-fun m!977463 () Bool)

(assert (=> b!1057622 m!977463))

(assert (=> b!1057624 m!977463))

(declare-fun m!977465 () Bool)

(assert (=> b!1057624 m!977465))

(push 1)

(assert (not b!1057622))

(assert (not b!1057619))

(assert (not b!1057621))

(assert (not b!1057623))

(assert (not b!1057626))

(assert (not b!1057620))

(assert (not b!1057618))

(assert (not start!93348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128415 () Bool)

(declare-fun res!706472 () Bool)

(declare-fun e!601642 () Bool)

(assert (=> d!128415 (=> res!706472 e!601642)))

(assert (=> d!128415 (= res!706472 (= (select (arr!32065 a!3488) lt!466549) k!2747))))

(assert (=> d!128415 (= (arrayContainsKey!0 a!3488 k!2747 lt!466549) e!601642)))

(declare-fun b!1057711 () Bool)

(declare-fun e!601643 () Bool)

(assert (=> b!1057711 (= e!601642 e!601643)))

(declare-fun res!706473 () Bool)

(assert (=> b!1057711 (=> (not res!706473) (not e!601643))))

(assert (=> b!1057711 (= res!706473 (bvslt (bvadd lt!466549 #b00000000000000000000000000000001) (size!32602 a!3488)))))

(declare-fun b!1057712 () Bool)

(assert (=> b!1057712 (= e!601643 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!466549 #b00000000000000000000000000000001)))))

(assert (= (and d!128415 (not res!706472)) b!1057711))

(assert (= (and b!1057711 res!706473) b!1057712))

(declare-fun m!977537 () Bool)

(assert (=> d!128415 m!977537))

(declare-fun m!977539 () Bool)

(assert (=> b!1057712 m!977539))

(assert (=> b!1057618 d!128415))

(declare-fun d!128421 () Bool)

(assert (=> d!128421 (arrayContainsKey!0 a!3488 k!2747 lt!466549)))

(declare-fun lt!466588 () Unit!34661)

(declare-fun choose!114 (array!66695 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34661)

(assert (=> d!128421 (= lt!466588 (choose!114 a!3488 k!2747 i!1381 lt!466549))))

(assert (=> d!128421 (bvsge i!1381 #b00000000000000000000000000000000)))

(assert (=> d!128421 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466549) lt!466588)))

(declare-fun bs!31014 () Bool)

(assert (= bs!31014 d!128421))

(assert (=> bs!31014 m!977449))

(declare-fun m!977541 () Bool)

(assert (=> bs!31014 m!977541))

(assert (=> b!1057618 d!128421))

(declare-fun b!1057745 () Bool)

(declare-fun e!601671 () Bool)

(declare-fun call!44856 () Bool)

(assert (=> b!1057745 (= e!601671 call!44856)))

(declare-fun d!128423 () Bool)

(declare-fun res!706496 () Bool)

(declare-fun e!601673 () Bool)

(assert (=> d!128423 (=> res!706496 e!601673)))

(assert (=> d!128423 (= res!706496 (bvsge lt!466550 (size!32602 a!3488)))))

(assert (=> d!128423 (= (arrayNoDuplicates!0 a!3488 lt!466550 Nil!22505) e!601673)))

(declare-fun b!1057746 () Bool)

(declare-fun e!601670 () Bool)

(assert (=> b!1057746 (= e!601673 e!601670)))

(declare-fun res!706494 () Bool)

(assert (=> b!1057746 (=> (not res!706494) (not e!601670))))

(declare-fun e!601672 () Bool)

(assert (=> b!1057746 (= res!706494 (not e!601672))))

(declare-fun res!706495 () Bool)

(assert (=> b!1057746 (=> (not res!706495) (not e!601672))))

(assert (=> b!1057746 (= res!706495 (validKeyInArray!0 (select (arr!32065 a!3488) lt!466550)))))

(declare-fun b!1057747 () Bool)

(declare-fun contains!6215 (List!22508 (_ BitVec 64)) Bool)

(assert (=> b!1057747 (= e!601672 (contains!6215 Nil!22505 (select (arr!32065 a!3488) lt!466550)))))

(declare-fun b!1057748 () Bool)

(assert (=> b!1057748 (= e!601671 call!44856)))

(declare-fun bm!44853 () Bool)

(declare-fun c!107088 () Bool)

(assert (=> bm!44853 (= call!44856 (arrayNoDuplicates!0 a!3488 (bvadd lt!466550 #b00000000000000000000000000000001) (ite c!107088 (Cons!22504 (select (arr!32065 a!3488) lt!466550) Nil!22505) Nil!22505)))))

(declare-fun b!1057749 () Bool)

(assert (=> b!1057749 (= e!601670 e!601671)))

(assert (=> b!1057749 (= c!107088 (validKeyInArray!0 (select (arr!32065 a!3488) lt!466550)))))

(assert (= (and d!128423 (not res!706496)) b!1057746))

(assert (= (and b!1057746 res!706495) b!1057747))

(assert (= (and b!1057746 res!706494) b!1057749))

(assert (= (and b!1057749 c!107088) b!1057748))

(assert (= (and b!1057749 (not c!107088)) b!1057745))

(assert (= (or b!1057748 b!1057745) bm!44853))

(declare-fun m!977565 () Bool)

(assert (=> b!1057746 m!977565))

(assert (=> b!1057746 m!977565))

(declare-fun m!977567 () Bool)

(assert (=> b!1057746 m!977567))

(assert (=> b!1057747 m!977565))

(assert (=> b!1057747 m!977565))

(declare-fun m!977569 () Bool)

(assert (=> b!1057747 m!977569))

(assert (=> bm!44853 m!977565))

(declare-fun m!977571 () Bool)

(assert (=> bm!44853 m!977571))

(assert (=> b!1057749 m!977565))

(assert (=> b!1057749 m!977565))

(assert (=> b!1057749 m!977567))

(assert (=> b!1057618 d!128423))

(declare-fun d!128435 () Bool)

(assert (=> d!128435 (arrayNoDuplicates!0 a!3488 lt!466550 Nil!22505)))

(declare-fun lt!466600 () Unit!34661)

(declare-fun choose!39 (array!66695 (_ BitVec 32) (_ BitVec 32)) Unit!34661)

(assert (=> d!128435 (= lt!466600 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466550))))

(assert (=> d!128435 (bvslt (size!32602 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128435 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466550) lt!466600)))

(declare-fun bs!31017 () Bool)

(assert (= bs!31017 d!128435))

(assert (=> bs!31017 m!977453))

(declare-fun m!977581 () Bool)

(assert (=> bs!31017 m!977581))

(assert (=> b!1057618 d!128435))

(declare-fun d!128439 () Bool)

(assert (=> d!128439 (= (array_inv!24687 a!3488) (bvsge (size!32602 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93348 d!128439))

(declare-fun d!128441 () Bool)

(declare-fun res!706497 () Bool)

(declare-fun e!601677 () Bool)

(assert (=> d!128441 (=> res!706497 e!601677)))

(assert (=> d!128441 (= res!706497 (= (select (arr!32065 a!3488) i!1381) k!2747))))

(assert (=> d!128441 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!601677)))

(declare-fun b!1057756 () Bool)

(declare-fun e!601678 () Bool)

(assert (=> b!1057756 (= e!601677 e!601678)))

(declare-fun res!706498 () Bool)

(assert (=> b!1057756 (=> (not res!706498) (not e!601678))))

(assert (=> b!1057756 (= res!706498 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32602 a!3488)))))

(declare-fun b!1057757 () Bool)

(assert (=> b!1057757 (= e!601678 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128441 (not res!706497)) b!1057756))

(assert (= (and b!1057756 res!706498) b!1057757))

(assert (=> d!128441 m!977457))

(declare-fun m!977583 () Bool)

(assert (=> b!1057757 m!977583))

(assert (=> b!1057623 d!128441))

(declare-fun d!128443 () Bool)

(declare-fun res!706509 () Bool)

(declare-fun e!601689 () Bool)

(assert (=> d!128443 (=> res!706509 e!601689)))

(assert (=> d!128443 (= res!706509 (is-Nil!22505 Nil!22505))))

(assert (=> d!128443 (= (noDuplicate!1575 Nil!22505) e!601689)))

(declare-fun b!1057768 () Bool)

(declare-fun e!601690 () Bool)

(assert (=> b!1057768 (= e!601689 e!601690)))

(declare-fun res!706510 () Bool)

(assert (=> b!1057768 (=> (not res!706510) (not e!601690))))

(assert (=> b!1057768 (= res!706510 (not (contains!6215 (t!31822 Nil!22505) (h!23713 Nil!22505))))))

(declare-fun b!1057769 () Bool)

(assert (=> b!1057769 (= e!601690 (noDuplicate!1575 (t!31822 Nil!22505)))))

(assert (= (and d!128443 (not res!706509)) b!1057768))

(assert (= (and b!1057768 res!706510) b!1057769))

(declare-fun m!977587 () Bool)

(assert (=> b!1057768 m!977587))

(declare-fun m!977589 () Bool)

(assert (=> b!1057769 m!977589))

(assert (=> b!1057620 d!128443))

(declare-fun d!128449 () Bool)

(assert (=> d!128449 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057619 d!128449))

(declare-fun b!1057770 () Bool)

(declare-fun e!601692 () Bool)

(declare-fun call!44857 () Bool)

(assert (=> b!1057770 (= e!601692 call!44857)))

(declare-fun d!128453 () Bool)

(declare-fun res!706513 () Bool)

(declare-fun e!601694 () Bool)

(assert (=> d!128453 (=> res!706513 e!601694)))

(assert (=> d!128453 (= res!706513 (bvsge #b00000000000000000000000000000000 (size!32602 a!3488)))))

(assert (=> d!128453 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22505) e!601694)))

(declare-fun b!1057771 () Bool)

(declare-fun e!601691 () Bool)

(assert (=> b!1057771 (= e!601694 e!601691)))

(declare-fun res!706511 () Bool)

(assert (=> b!1057771 (=> (not res!706511) (not e!601691))))

(declare-fun e!601693 () Bool)

(assert (=> b!1057771 (= res!706511 (not e!601693))))

(declare-fun res!706512 () Bool)

(assert (=> b!1057771 (=> (not res!706512) (not e!601693))))

(assert (=> b!1057771 (= res!706512 (validKeyInArray!0 (select (arr!32065 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1057772 () Bool)

(assert (=> b!1057772 (= e!601693 (contains!6215 Nil!22505 (select (arr!32065 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1057773 () Bool)

(assert (=> b!1057773 (= e!601692 call!44857)))

(declare-fun bm!44854 () Bool)

(declare-fun c!107092 () Bool)

(assert (=> bm!44854 (= call!44857 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107092 (Cons!22504 (select (arr!32065 a!3488) #b00000000000000000000000000000000) Nil!22505) Nil!22505)))))

(declare-fun b!1057774 () Bool)

(assert (=> b!1057774 (= e!601691 e!601692)))

(assert (=> b!1057774 (= c!107092 (validKeyInArray!0 (select (arr!32065 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128453 (not res!706513)) b!1057771))

(assert (= (and b!1057771 res!706512) b!1057772))

(assert (= (and b!1057771 res!706511) b!1057774))

(assert (= (and b!1057774 c!107092) b!1057773))

(assert (= (and b!1057774 (not c!107092)) b!1057770))

(assert (= (or b!1057773 b!1057770) bm!44854))

(declare-fun m!977591 () Bool)

(assert (=> b!1057771 m!977591))

(assert (=> b!1057771 m!977591))

(declare-fun m!977593 () Bool)

(assert (=> b!1057771 m!977593))

(assert (=> b!1057772 m!977591))

(assert (=> b!1057772 m!977591))

(declare-fun m!977595 () Bool)

(assert (=> b!1057772 m!977595))

(assert (=> bm!44854 m!977591))

(declare-fun m!977597 () Bool)

(assert (=> bm!44854 m!977597))

(assert (=> b!1057774 m!977591))

(assert (=> b!1057774 m!977591))

(assert (=> b!1057774 m!977593))

(assert (=> b!1057621 d!128453))

(declare-fun d!128455 () Bool)

(declare-fun lt!466606 () (_ BitVec 32))

(assert (=> d!128455 (and (or (bvslt lt!466606 #b00000000000000000000000000000000) (bvsge lt!466606 (size!32602 lt!466548)) (and (bvsge lt!466606 #b00000000000000000000000000000000) (bvslt lt!466606 (size!32602 lt!466548)))) (bvsge lt!466606 #b00000000000000000000000000000000) (bvslt lt!466606 (size!32602 lt!466548)) (= (select (arr!32065 lt!466548) lt!466606) k!2747))))

(declare-fun e!601707 () (_ BitVec 32))

(assert (=> d!128455 (= lt!466606 e!601707)))

(declare-fun c!107095 () Bool)

(assert (=> d!128455 (= c!107095 (= (select (arr!32065 lt!466548) #b00000000000000000000000000000000) k!2747))))

