; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93350 () Bool)

(assert start!93350)

(declare-fun b!1057647 () Bool)

(declare-fun res!706418 () Bool)

(declare-fun e!601593 () Bool)

(assert (=> b!1057647 (=> (not res!706418) (not e!601593))))

(declare-datatypes ((array!66697 0))(
  ( (array!66698 (arr!32066 (Array (_ BitVec 32) (_ BitVec 64))) (size!32603 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66697)

(declare-datatypes ((List!22509 0))(
  ( (Nil!22506) (Cons!22505 (h!23714 (_ BitVec 64)) (t!31823 List!22509)) )
))
(declare-fun arrayNoDuplicates!0 (array!66697 (_ BitVec 32) List!22509) Bool)

(assert (=> b!1057647 (= res!706418 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22506))))

(declare-fun b!1057648 () Bool)

(declare-fun e!601596 () Bool)

(declare-fun noDuplicate!1576 (List!22509) Bool)

(assert (=> b!1057648 (= e!601596 (noDuplicate!1576 Nil!22506))))

(declare-fun b!1057649 () Bool)

(declare-fun e!601595 () Bool)

(assert (=> b!1057649 (= e!601595 e!601596)))

(declare-fun res!706419 () Bool)

(assert (=> b!1057649 (=> res!706419 e!601596)))

(declare-fun lt!466563 () (_ BitVec 32))

(declare-fun lt!466567 () (_ BitVec 32))

(assert (=> b!1057649 (= res!706419 (or (bvslt lt!466567 #b00000000000000000000000000000000) (bvsge lt!466563 (size!32603 a!3488)) (bvsge lt!466567 (size!32603 a!3488))))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057649 (arrayContainsKey!0 a!3488 k0!2747 lt!466563)))

(declare-datatypes ((Unit!34663 0))(
  ( (Unit!34664) )
))
(declare-fun lt!466565 () Unit!34663)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66697 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34663)

(assert (=> b!1057649 (= lt!466565 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466563))))

(assert (=> b!1057649 (= lt!466563 (bvadd #b00000000000000000000000000000001 lt!466567))))

(assert (=> b!1057649 (arrayNoDuplicates!0 a!3488 lt!466567 Nil!22506)))

(declare-fun lt!466566 () Unit!34663)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66697 (_ BitVec 32) (_ BitVec 32)) Unit!34663)

(assert (=> b!1057649 (= lt!466566 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466567))))

(declare-fun b!1057650 () Bool)

(declare-fun e!601590 () Bool)

(assert (=> b!1057650 (= e!601593 e!601590)))

(declare-fun res!706422 () Bool)

(assert (=> b!1057650 (=> (not res!706422) (not e!601590))))

(declare-fun lt!466564 () array!66697)

(assert (=> b!1057650 (= res!706422 (arrayContainsKey!0 lt!466564 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057650 (= lt!466564 (array!66698 (store (arr!32066 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32603 a!3488)))))

(declare-fun b!1057651 () Bool)

(declare-fun res!706417 () Bool)

(assert (=> b!1057651 (=> (not res!706417) (not e!601593))))

(assert (=> b!1057651 (= res!706417 (= (select (arr!32066 a!3488) i!1381) k0!2747))))

(declare-fun res!706415 () Bool)

(assert (=> start!93350 (=> (not res!706415) (not e!601593))))

(assert (=> start!93350 (= res!706415 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32603 a!3488)) (bvslt (size!32603 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93350 e!601593))

(assert (=> start!93350 true))

(declare-fun array_inv!24688 (array!66697) Bool)

(assert (=> start!93350 (array_inv!24688 a!3488)))

(declare-fun b!1057652 () Bool)

(declare-fun res!706414 () Bool)

(assert (=> b!1057652 (=> (not res!706414) (not e!601593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057652 (= res!706414 (validKeyInArray!0 k0!2747))))

(declare-fun b!1057653 () Bool)

(declare-fun e!601591 () Bool)

(assert (=> b!1057653 (= e!601591 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057654 () Bool)

(declare-fun e!601589 () Bool)

(assert (=> b!1057654 (= e!601589 e!601591)))

(declare-fun res!706416 () Bool)

(assert (=> b!1057654 (=> res!706416 e!601591)))

(assert (=> b!1057654 (= res!706416 (or (bvsgt lt!466567 i!1381) (bvsle i!1381 lt!466567)))))

(declare-fun b!1057655 () Bool)

(declare-fun e!601594 () Bool)

(assert (=> b!1057655 (= e!601590 e!601594)))

(declare-fun res!706423 () Bool)

(assert (=> b!1057655 (=> (not res!706423) (not e!601594))))

(assert (=> b!1057655 (= res!706423 (not (= lt!466567 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66697 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057655 (= lt!466567 (arrayScanForKey!0 lt!466564 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057656 () Bool)

(assert (=> b!1057656 (= e!601594 (not e!601595))))

(declare-fun res!706420 () Bool)

(assert (=> b!1057656 (=> res!706420 e!601595)))

(assert (=> b!1057656 (= res!706420 (or (bvsgt lt!466567 i!1381) (bvsle i!1381 lt!466567)))))

(assert (=> b!1057656 e!601589))

(declare-fun res!706421 () Bool)

(assert (=> b!1057656 (=> (not res!706421) (not e!601589))))

(assert (=> b!1057656 (= res!706421 (= (select (store (arr!32066 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466567) k0!2747))))

(assert (= (and start!93350 res!706415) b!1057647))

(assert (= (and b!1057647 res!706418) b!1057652))

(assert (= (and b!1057652 res!706414) b!1057651))

(assert (= (and b!1057651 res!706417) b!1057650))

(assert (= (and b!1057650 res!706422) b!1057655))

(assert (= (and b!1057655 res!706423) b!1057656))

(assert (= (and b!1057656 res!706421) b!1057654))

(assert (= (and b!1057654 (not res!706416)) b!1057653))

(assert (= (and b!1057656 (not res!706420)) b!1057649))

(assert (= (and b!1057649 (not res!706419)) b!1057648))

(declare-fun m!977467 () Bool)

(assert (=> b!1057649 m!977467))

(declare-fun m!977469 () Bool)

(assert (=> b!1057649 m!977469))

(declare-fun m!977471 () Bool)

(assert (=> b!1057649 m!977471))

(declare-fun m!977473 () Bool)

(assert (=> b!1057649 m!977473))

(declare-fun m!977475 () Bool)

(assert (=> b!1057653 m!977475))

(declare-fun m!977477 () Bool)

(assert (=> b!1057648 m!977477))

(declare-fun m!977479 () Bool)

(assert (=> b!1057651 m!977479))

(declare-fun m!977481 () Bool)

(assert (=> b!1057650 m!977481))

(declare-fun m!977483 () Bool)

(assert (=> b!1057650 m!977483))

(assert (=> b!1057656 m!977483))

(declare-fun m!977485 () Bool)

(assert (=> b!1057656 m!977485))

(declare-fun m!977487 () Bool)

(assert (=> b!1057652 m!977487))

(declare-fun m!977489 () Bool)

(assert (=> start!93350 m!977489))

(declare-fun m!977491 () Bool)

(assert (=> b!1057655 m!977491))

(declare-fun m!977493 () Bool)

(assert (=> b!1057647 m!977493))

(check-sat (not b!1057648) (not b!1057653) (not start!93350) (not b!1057649) (not b!1057647) (not b!1057650) (not b!1057655) (not b!1057652))
(check-sat)
(get-model)

(declare-fun d!128405 () Bool)

(declare-fun res!706458 () Bool)

(declare-fun e!601625 () Bool)

(assert (=> d!128405 (=> res!706458 e!601625)))

(assert (=> d!128405 (= res!706458 (= (select (arr!32066 lt!466564) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128405 (= (arrayContainsKey!0 lt!466564 k0!2747 #b00000000000000000000000000000000) e!601625)))

(declare-fun b!1057691 () Bool)

(declare-fun e!601626 () Bool)

(assert (=> b!1057691 (= e!601625 e!601626)))

(declare-fun res!706459 () Bool)

(assert (=> b!1057691 (=> (not res!706459) (not e!601626))))

(assert (=> b!1057691 (= res!706459 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32603 lt!466564)))))

(declare-fun b!1057692 () Bool)

(assert (=> b!1057692 (= e!601626 (arrayContainsKey!0 lt!466564 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128405 (not res!706458)) b!1057691))

(assert (= (and b!1057691 res!706459) b!1057692))

(declare-fun m!977523 () Bool)

(assert (=> d!128405 m!977523))

(declare-fun m!977525 () Bool)

(assert (=> b!1057692 m!977525))

(assert (=> b!1057650 d!128405))

(declare-fun d!128407 () Bool)

(declare-fun lt!466585 () (_ BitVec 32))

(assert (=> d!128407 (and (or (bvslt lt!466585 #b00000000000000000000000000000000) (bvsge lt!466585 (size!32603 lt!466564)) (and (bvsge lt!466585 #b00000000000000000000000000000000) (bvslt lt!466585 (size!32603 lt!466564)))) (bvsge lt!466585 #b00000000000000000000000000000000) (bvslt lt!466585 (size!32603 lt!466564)) (= (select (arr!32066 lt!466564) lt!466585) k0!2747))))

(declare-fun e!601629 () (_ BitVec 32))

(assert (=> d!128407 (= lt!466585 e!601629)))

(declare-fun c!107081 () Bool)

(assert (=> d!128407 (= c!107081 (= (select (arr!32066 lt!466564) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32603 lt!466564)) (bvslt (size!32603 lt!466564) #b01111111111111111111111111111111))))

(assert (=> d!128407 (= (arrayScanForKey!0 lt!466564 k0!2747 #b00000000000000000000000000000000) lt!466585)))

(declare-fun b!1057697 () Bool)

(assert (=> b!1057697 (= e!601629 #b00000000000000000000000000000000)))

(declare-fun b!1057698 () Bool)

(assert (=> b!1057698 (= e!601629 (arrayScanForKey!0 lt!466564 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128407 c!107081) b!1057697))

(assert (= (and d!128407 (not c!107081)) b!1057698))

(declare-fun m!977527 () Bool)

(assert (=> d!128407 m!977527))

(assert (=> d!128407 m!977523))

(declare-fun m!977529 () Bool)

(assert (=> b!1057698 m!977529))

(assert (=> b!1057655 d!128407))

(declare-fun d!128409 () Bool)

(assert (=> d!128409 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057652 d!128409))

(declare-fun d!128411 () Bool)

(declare-fun res!706464 () Bool)

(declare-fun e!601634 () Bool)

(assert (=> d!128411 (=> res!706464 e!601634)))

(get-info :version)

(assert (=> d!128411 (= res!706464 ((_ is Nil!22506) Nil!22506))))

(assert (=> d!128411 (= (noDuplicate!1576 Nil!22506) e!601634)))

(declare-fun b!1057703 () Bool)

(declare-fun e!601635 () Bool)

(assert (=> b!1057703 (= e!601634 e!601635)))

(declare-fun res!706465 () Bool)

(assert (=> b!1057703 (=> (not res!706465) (not e!601635))))

(declare-fun contains!6214 (List!22509 (_ BitVec 64)) Bool)

(assert (=> b!1057703 (= res!706465 (not (contains!6214 (t!31823 Nil!22506) (h!23714 Nil!22506))))))

(declare-fun b!1057704 () Bool)

(assert (=> b!1057704 (= e!601635 (noDuplicate!1576 (t!31823 Nil!22506)))))

(assert (= (and d!128411 (not res!706464)) b!1057703))

(assert (= (and b!1057703 res!706465) b!1057704))

(declare-fun m!977531 () Bool)

(assert (=> b!1057703 m!977531))

(declare-fun m!977533 () Bool)

(assert (=> b!1057704 m!977533))

(assert (=> b!1057648 d!128411))

(declare-fun d!128413 () Bool)

(assert (=> d!128413 (= (array_inv!24688 a!3488) (bvsge (size!32603 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93350 d!128413))

(declare-fun d!128417 () Bool)

(declare-fun res!706466 () Bool)

(declare-fun e!601636 () Bool)

(assert (=> d!128417 (=> res!706466 e!601636)))

(assert (=> d!128417 (= res!706466 (= (select (arr!32066 a!3488) i!1381) k0!2747))))

(assert (=> d!128417 (= (arrayContainsKey!0 a!3488 k0!2747 i!1381) e!601636)))

(declare-fun b!1057705 () Bool)

(declare-fun e!601637 () Bool)

(assert (=> b!1057705 (= e!601636 e!601637)))

(declare-fun res!706467 () Bool)

(assert (=> b!1057705 (=> (not res!706467) (not e!601637))))

(assert (=> b!1057705 (= res!706467 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32603 a!3488)))))

(declare-fun b!1057706 () Bool)

(assert (=> b!1057706 (= e!601637 (arrayContainsKey!0 a!3488 k0!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128417 (not res!706466)) b!1057705))

(assert (= (and b!1057705 res!706467) b!1057706))

(assert (=> d!128417 m!977479))

(declare-fun m!977535 () Bool)

(assert (=> b!1057706 m!977535))

(assert (=> b!1057653 d!128417))

(declare-fun b!1057723 () Bool)

(declare-fun e!601652 () Bool)

(declare-fun call!44852 () Bool)

(assert (=> b!1057723 (= e!601652 call!44852)))

(declare-fun b!1057724 () Bool)

(declare-fun e!601655 () Bool)

(declare-fun e!601653 () Bool)

(assert (=> b!1057724 (= e!601655 e!601653)))

(declare-fun res!706482 () Bool)

(assert (=> b!1057724 (=> (not res!706482) (not e!601653))))

(declare-fun e!601654 () Bool)

(assert (=> b!1057724 (= res!706482 (not e!601654))))

(declare-fun res!706481 () Bool)

(assert (=> b!1057724 (=> (not res!706481) (not e!601654))))

(assert (=> b!1057724 (= res!706481 (validKeyInArray!0 (select (arr!32066 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1057725 () Bool)

(assert (=> b!1057725 (= e!601652 call!44852)))

(declare-fun b!1057726 () Bool)

(assert (=> b!1057726 (= e!601654 (contains!6214 Nil!22506 (select (arr!32066 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1057727 () Bool)

(assert (=> b!1057727 (= e!601653 e!601652)))

(declare-fun c!107084 () Bool)

(assert (=> b!1057727 (= c!107084 (validKeyInArray!0 (select (arr!32066 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128419 () Bool)

(declare-fun res!706480 () Bool)

(assert (=> d!128419 (=> res!706480 e!601655)))

(assert (=> d!128419 (= res!706480 (bvsge #b00000000000000000000000000000000 (size!32603 a!3488)))))

(assert (=> d!128419 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22506) e!601655)))

(declare-fun bm!44849 () Bool)

(assert (=> bm!44849 (= call!44852 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107084 (Cons!22505 (select (arr!32066 a!3488) #b00000000000000000000000000000000) Nil!22506) Nil!22506)))))

(assert (= (and d!128419 (not res!706480)) b!1057724))

(assert (= (and b!1057724 res!706481) b!1057726))

(assert (= (and b!1057724 res!706482) b!1057727))

(assert (= (and b!1057727 c!107084) b!1057725))

(assert (= (and b!1057727 (not c!107084)) b!1057723))

(assert (= (or b!1057725 b!1057723) bm!44849))

(declare-fun m!977543 () Bool)

(assert (=> b!1057724 m!977543))

(assert (=> b!1057724 m!977543))

(declare-fun m!977545 () Bool)

(assert (=> b!1057724 m!977545))

(assert (=> b!1057726 m!977543))

(assert (=> b!1057726 m!977543))

(declare-fun m!977547 () Bool)

(assert (=> b!1057726 m!977547))

(assert (=> b!1057727 m!977543))

(assert (=> b!1057727 m!977543))

(assert (=> b!1057727 m!977545))

(assert (=> bm!44849 m!977543))

(declare-fun m!977549 () Bool)

(assert (=> bm!44849 m!977549))

(assert (=> b!1057647 d!128419))

(declare-fun d!128427 () Bool)

(declare-fun res!706483 () Bool)

(declare-fun e!601656 () Bool)

(assert (=> d!128427 (=> res!706483 e!601656)))

(assert (=> d!128427 (= res!706483 (= (select (arr!32066 a!3488) lt!466563) k0!2747))))

(assert (=> d!128427 (= (arrayContainsKey!0 a!3488 k0!2747 lt!466563) e!601656)))

(declare-fun b!1057728 () Bool)

(declare-fun e!601657 () Bool)

(assert (=> b!1057728 (= e!601656 e!601657)))

(declare-fun res!706484 () Bool)

(assert (=> b!1057728 (=> (not res!706484) (not e!601657))))

(assert (=> b!1057728 (= res!706484 (bvslt (bvadd lt!466563 #b00000000000000000000000000000001) (size!32603 a!3488)))))

(declare-fun b!1057729 () Bool)

(assert (=> b!1057729 (= e!601657 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!466563 #b00000000000000000000000000000001)))))

(assert (= (and d!128427 (not res!706483)) b!1057728))

(assert (= (and b!1057728 res!706484) b!1057729))

(declare-fun m!977551 () Bool)

(assert (=> d!128427 m!977551))

(declare-fun m!977553 () Bool)

(assert (=> b!1057729 m!977553))

(assert (=> b!1057649 d!128427))

(declare-fun d!128429 () Bool)

(assert (=> d!128429 (arrayContainsKey!0 a!3488 k0!2747 lt!466563)))

(declare-fun lt!466591 () Unit!34663)

(declare-fun choose!114 (array!66697 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34663)

(assert (=> d!128429 (= lt!466591 (choose!114 a!3488 k0!2747 i!1381 lt!466563))))

(assert (=> d!128429 (bvsge i!1381 #b00000000000000000000000000000000)))

(assert (=> d!128429 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466563) lt!466591)))

(declare-fun bs!31015 () Bool)

(assert (= bs!31015 d!128429))

(assert (=> bs!31015 m!977467))

(declare-fun m!977555 () Bool)

(assert (=> bs!31015 m!977555))

(assert (=> b!1057649 d!128429))

(declare-fun b!1057740 () Bool)

(declare-fun e!601666 () Bool)

(declare-fun call!44855 () Bool)

(assert (=> b!1057740 (= e!601666 call!44855)))

(declare-fun b!1057741 () Bool)

(declare-fun e!601669 () Bool)

(declare-fun e!601667 () Bool)

(assert (=> b!1057741 (= e!601669 e!601667)))

(declare-fun res!706493 () Bool)

(assert (=> b!1057741 (=> (not res!706493) (not e!601667))))

(declare-fun e!601668 () Bool)

(assert (=> b!1057741 (= res!706493 (not e!601668))))

(declare-fun res!706492 () Bool)

(assert (=> b!1057741 (=> (not res!706492) (not e!601668))))

(assert (=> b!1057741 (= res!706492 (validKeyInArray!0 (select (arr!32066 a!3488) lt!466567)))))

(declare-fun b!1057742 () Bool)

(assert (=> b!1057742 (= e!601666 call!44855)))

(declare-fun b!1057743 () Bool)

(assert (=> b!1057743 (= e!601668 (contains!6214 Nil!22506 (select (arr!32066 a!3488) lt!466567)))))

(declare-fun b!1057744 () Bool)

(assert (=> b!1057744 (= e!601667 e!601666)))

(declare-fun c!107087 () Bool)

(assert (=> b!1057744 (= c!107087 (validKeyInArray!0 (select (arr!32066 a!3488) lt!466567)))))

(declare-fun d!128431 () Bool)

(declare-fun res!706491 () Bool)

(assert (=> d!128431 (=> res!706491 e!601669)))

(assert (=> d!128431 (= res!706491 (bvsge lt!466567 (size!32603 a!3488)))))

(assert (=> d!128431 (= (arrayNoDuplicates!0 a!3488 lt!466567 Nil!22506) e!601669)))

(declare-fun bm!44852 () Bool)

(assert (=> bm!44852 (= call!44855 (arrayNoDuplicates!0 a!3488 (bvadd lt!466567 #b00000000000000000000000000000001) (ite c!107087 (Cons!22505 (select (arr!32066 a!3488) lt!466567) Nil!22506) Nil!22506)))))

(assert (= (and d!128431 (not res!706491)) b!1057741))

(assert (= (and b!1057741 res!706492) b!1057743))

(assert (= (and b!1057741 res!706493) b!1057744))

(assert (= (and b!1057744 c!107087) b!1057742))

(assert (= (and b!1057744 (not c!107087)) b!1057740))

(assert (= (or b!1057742 b!1057740) bm!44852))

(declare-fun m!977557 () Bool)

(assert (=> b!1057741 m!977557))

(assert (=> b!1057741 m!977557))

(declare-fun m!977559 () Bool)

(assert (=> b!1057741 m!977559))

(assert (=> b!1057743 m!977557))

(assert (=> b!1057743 m!977557))

(declare-fun m!977561 () Bool)

(assert (=> b!1057743 m!977561))

(assert (=> b!1057744 m!977557))

(assert (=> b!1057744 m!977557))

(assert (=> b!1057744 m!977559))

(assert (=> bm!44852 m!977557))

(declare-fun m!977563 () Bool)

(assert (=> bm!44852 m!977563))

(assert (=> b!1057649 d!128431))

(declare-fun d!128433 () Bool)

(assert (=> d!128433 (arrayNoDuplicates!0 a!3488 lt!466567 Nil!22506)))

(declare-fun lt!466596 () Unit!34663)

(declare-fun choose!39 (array!66697 (_ BitVec 32) (_ BitVec 32)) Unit!34663)

(assert (=> d!128433 (= lt!466596 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466567))))

(assert (=> d!128433 (bvslt (size!32603 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128433 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466567) lt!466596)))

(declare-fun bs!31016 () Bool)

(assert (= bs!31016 d!128433))

(assert (=> bs!31016 m!977471))

(declare-fun m!977573 () Bool)

(assert (=> bs!31016 m!977573))

(assert (=> b!1057649 d!128433))

(check-sat (not d!128433) (not bm!44852) (not b!1057698) (not b!1057729) (not d!128429) (not b!1057744) (not bm!44849) (not b!1057724) (not b!1057706) (not b!1057703) (not b!1057743) (not b!1057704) (not b!1057726) (not b!1057692) (not b!1057741) (not b!1057727))
(check-sat)
