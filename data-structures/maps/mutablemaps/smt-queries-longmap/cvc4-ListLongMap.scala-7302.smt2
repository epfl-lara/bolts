; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93352 () Bool)

(assert start!93352)

(declare-fun b!1057677 () Bool)

(declare-fun res!706452 () Bool)

(declare-fun e!601620 () Bool)

(assert (=> b!1057677 (=> (not res!706452) (not e!601620))))

(declare-datatypes ((array!66699 0))(
  ( (array!66700 (arr!32067 (Array (_ BitVec 32) (_ BitVec 64))) (size!32604 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66699)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057677 (= res!706452 (= (select (arr!32067 a!3488) i!1381) k!2747))))

(declare-fun b!1057678 () Bool)

(declare-fun e!601619 () Bool)

(assert (=> b!1057678 (= e!601620 e!601619)))

(declare-fun res!706453 () Bool)

(assert (=> b!1057678 (=> (not res!706453) (not e!601619))))

(declare-fun lt!466581 () array!66699)

(declare-fun arrayContainsKey!0 (array!66699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057678 (= res!706453 (arrayContainsKey!0 lt!466581 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057678 (= lt!466581 (array!66700 (store (arr!32067 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32604 a!3488)))))

(declare-fun e!601615 () Bool)

(declare-fun b!1057679 () Bool)

(assert (=> b!1057679 (= e!601615 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057681 () Bool)

(declare-fun e!601613 () Bool)

(declare-fun e!601614 () Bool)

(assert (=> b!1057681 (= e!601613 e!601614)))

(declare-fun res!706449 () Bool)

(assert (=> b!1057681 (=> res!706449 e!601614)))

(declare-fun lt!466582 () (_ BitVec 32))

(declare-fun lt!466580 () (_ BitVec 32))

(assert (=> b!1057681 (= res!706449 (or (bvslt lt!466580 #b00000000000000000000000000000000) (bvsge lt!466582 (size!32604 a!3488)) (bvsge lt!466580 (size!32604 a!3488))))))

(assert (=> b!1057681 (arrayContainsKey!0 a!3488 k!2747 lt!466582)))

(declare-datatypes ((Unit!34665 0))(
  ( (Unit!34666) )
))
(declare-fun lt!466579 () Unit!34665)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66699 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34665)

(assert (=> b!1057681 (= lt!466579 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466582))))

(assert (=> b!1057681 (= lt!466582 (bvadd #b00000000000000000000000000000001 lt!466580))))

(declare-datatypes ((List!22510 0))(
  ( (Nil!22507) (Cons!22506 (h!23715 (_ BitVec 64)) (t!31824 List!22510)) )
))
(declare-fun arrayNoDuplicates!0 (array!66699 (_ BitVec 32) List!22510) Bool)

(assert (=> b!1057681 (arrayNoDuplicates!0 a!3488 lt!466580 Nil!22507)))

(declare-fun lt!466578 () Unit!34665)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66699 (_ BitVec 32) (_ BitVec 32)) Unit!34665)

(assert (=> b!1057681 (= lt!466578 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466580))))

(declare-fun b!1057682 () Bool)

(declare-fun e!601617 () Bool)

(assert (=> b!1057682 (= e!601619 e!601617)))

(declare-fun res!706451 () Bool)

(assert (=> b!1057682 (=> (not res!706451) (not e!601617))))

(assert (=> b!1057682 (= res!706451 (not (= lt!466580 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66699 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057682 (= lt!466580 (arrayScanForKey!0 lt!466581 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057683 () Bool)

(declare-fun res!706447 () Bool)

(assert (=> b!1057683 (=> (not res!706447) (not e!601620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057683 (= res!706447 (validKeyInArray!0 k!2747))))

(declare-fun b!1057680 () Bool)

(declare-fun e!601618 () Bool)

(assert (=> b!1057680 (= e!601618 e!601615)))

(declare-fun res!706444 () Bool)

(assert (=> b!1057680 (=> res!706444 e!601615)))

(assert (=> b!1057680 (= res!706444 (or (bvsgt lt!466580 i!1381) (bvsle i!1381 lt!466580)))))

(declare-fun res!706448 () Bool)

(assert (=> start!93352 (=> (not res!706448) (not e!601620))))

(assert (=> start!93352 (= res!706448 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32604 a!3488)) (bvslt (size!32604 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93352 e!601620))

(assert (=> start!93352 true))

(declare-fun array_inv!24689 (array!66699) Bool)

(assert (=> start!93352 (array_inv!24689 a!3488)))

(declare-fun b!1057684 () Bool)

(assert (=> b!1057684 (= e!601617 (not e!601613))))

(declare-fun res!706450 () Bool)

(assert (=> b!1057684 (=> res!706450 e!601613)))

(assert (=> b!1057684 (= res!706450 (or (bvsgt lt!466580 i!1381) (bvsle i!1381 lt!466580)))))

(assert (=> b!1057684 e!601618))

(declare-fun res!706445 () Bool)

(assert (=> b!1057684 (=> (not res!706445) (not e!601618))))

(assert (=> b!1057684 (= res!706445 (= (select (store (arr!32067 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466580) k!2747))))

(declare-fun b!1057685 () Bool)

(declare-fun noDuplicate!1577 (List!22510) Bool)

(assert (=> b!1057685 (= e!601614 (noDuplicate!1577 Nil!22507))))

(declare-fun b!1057686 () Bool)

(declare-fun res!706446 () Bool)

(assert (=> b!1057686 (=> (not res!706446) (not e!601620))))

(assert (=> b!1057686 (= res!706446 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22507))))

(assert (= (and start!93352 res!706448) b!1057686))

(assert (= (and b!1057686 res!706446) b!1057683))

(assert (= (and b!1057683 res!706447) b!1057677))

(assert (= (and b!1057677 res!706452) b!1057678))

(assert (= (and b!1057678 res!706453) b!1057682))

(assert (= (and b!1057682 res!706451) b!1057684))

(assert (= (and b!1057684 res!706445) b!1057680))

(assert (= (and b!1057680 (not res!706444)) b!1057679))

(assert (= (and b!1057684 (not res!706450)) b!1057681))

(assert (= (and b!1057681 (not res!706449)) b!1057685))

(declare-fun m!977495 () Bool)

(assert (=> b!1057679 m!977495))

(declare-fun m!977497 () Bool)

(assert (=> start!93352 m!977497))

(declare-fun m!977499 () Bool)

(assert (=> b!1057686 m!977499))

(declare-fun m!977501 () Bool)

(assert (=> b!1057678 m!977501))

(declare-fun m!977503 () Bool)

(assert (=> b!1057678 m!977503))

(declare-fun m!977505 () Bool)

(assert (=> b!1057681 m!977505))

(declare-fun m!977507 () Bool)

(assert (=> b!1057681 m!977507))

(declare-fun m!977509 () Bool)

(assert (=> b!1057681 m!977509))

(declare-fun m!977511 () Bool)

(assert (=> b!1057681 m!977511))

(declare-fun m!977513 () Bool)

(assert (=> b!1057683 m!977513))

(declare-fun m!977515 () Bool)

(assert (=> b!1057685 m!977515))

(declare-fun m!977517 () Bool)

(assert (=> b!1057682 m!977517))

(declare-fun m!977519 () Bool)

(assert (=> b!1057677 m!977519))

(assert (=> b!1057684 m!977503))

(declare-fun m!977521 () Bool)

(assert (=> b!1057684 m!977521))

(push 1)

(assert (not b!1057679))

(assert (not b!1057682))

(assert (not b!1057686))

(assert (not b!1057681))

(assert (not b!1057678))

(assert (not b!1057683))

(assert (not start!93352))

(assert (not b!1057685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128425 () Bool)

(declare-fun lt!466597 () (_ BitVec 32))

(assert (=> d!128425 (and (or (bvslt lt!466597 #b00000000000000000000000000000000) (bvsge lt!466597 (size!32604 lt!466581)) (and (bvsge lt!466597 #b00000000000000000000000000000000) (bvslt lt!466597 (size!32604 lt!466581)))) (bvsge lt!466597 #b00000000000000000000000000000000) (bvslt lt!466597 (size!32604 lt!466581)) (= (select (arr!32067 lt!466581) lt!466597) k!2747))))

(declare-fun e!601676 () (_ BitVec 32))

(assert (=> d!128425 (= lt!466597 e!601676)))

(declare-fun c!107091 () Bool)

(assert (=> d!128425 (= c!107091 (= (select (arr!32067 lt!466581) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128425 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32604 lt!466581)) (bvslt (size!32604 lt!466581) #b01111111111111111111111111111111))))

(assert (=> d!128425 (= (arrayScanForKey!0 lt!466581 k!2747 #b00000000000000000000000000000000) lt!466597)))

(declare-fun b!1057754 () Bool)

(assert (=> b!1057754 (= e!601676 #b00000000000000000000000000000000)))

(declare-fun b!1057755 () Bool)

(assert (=> b!1057755 (= e!601676 (arrayScanForKey!0 lt!466581 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128425 c!107091) b!1057754))

(assert (= (and d!128425 (not c!107091)) b!1057755))

(declare-fun m!977575 () Bool)

(assert (=> d!128425 m!977575))

(declare-fun m!977577 () Bool)

(assert (=> d!128425 m!977577))

(declare-fun m!977579 () Bool)

(assert (=> b!1057755 m!977579))

(assert (=> b!1057682 d!128425))

(declare-fun d!128437 () Bool)

(declare-fun res!706503 () Bool)

(declare-fun e!601683 () Bool)

(assert (=> d!128437 (=> res!706503 e!601683)))

(assert (=> d!128437 (= res!706503 (= (select (arr!32067 lt!466581) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128437 (= (arrayContainsKey!0 lt!466581 k!2747 #b00000000000000000000000000000000) e!601683)))

(declare-fun b!1057762 () Bool)

(declare-fun e!601684 () Bool)

(assert (=> b!1057762 (= e!601683 e!601684)))

(declare-fun res!706504 () Bool)

(assert (=> b!1057762 (=> (not res!706504) (not e!601684))))

(assert (=> b!1057762 (= res!706504 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32604 lt!466581)))))

(declare-fun b!1057763 () Bool)

(assert (=> b!1057763 (= e!601684 (arrayContainsKey!0 lt!466581 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128437 (not res!706503)) b!1057762))

(assert (= (and b!1057762 res!706504) b!1057763))

(assert (=> d!128437 m!977577))

(declare-fun m!977585 () Bool)

(assert (=> b!1057763 m!977585))

(assert (=> b!1057678 d!128437))

(declare-fun d!128445 () Bool)

(assert (=> d!128445 (= (array_inv!24689 a!3488) (bvsge (size!32604 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93352 d!128445))

(declare-fun d!128447 () Bool)

(assert (=> d!128447 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057683 d!128447))

(declare-fun d!128451 () Bool)

(declare-fun res!706518 () Bool)

(declare-fun e!601699 () Bool)

(assert (=> d!128451 (=> res!706518 e!601699)))

(assert (=> d!128451 (= res!706518 (is-Nil!22507 Nil!22507))))

(assert (=> d!128451 (= (noDuplicate!1577 Nil!22507) e!601699)))

(declare-fun b!1057779 () Bool)

(declare-fun e!601700 () Bool)

(assert (=> b!1057779 (= e!601699 e!601700)))

(declare-fun res!706519 () Bool)

(assert (=> b!1057779 (=> (not res!706519) (not e!601700))))

(declare-fun contains!6216 (List!22510 (_ BitVec 64)) Bool)

(assert (=> b!1057779 (= res!706519 (not (contains!6216 (t!31824 Nil!22507) (h!23715 Nil!22507))))))

(declare-fun b!1057780 () Bool)

(assert (=> b!1057780 (= e!601700 (noDuplicate!1577 (t!31824 Nil!22507)))))

(assert (= (and d!128451 (not res!706518)) b!1057779))

(assert (= (and b!1057779 res!706519) b!1057780))

(declare-fun m!977599 () Bool)

(assert (=> b!1057779 m!977599))

(declare-fun m!977601 () Bool)

(assert (=> b!1057780 m!977601))

(assert (=> b!1057685 d!128451))

(declare-fun d!128457 () Bool)

(declare-fun res!706520 () Bool)

(declare-fun e!601701 () Bool)

(assert (=> d!128457 (=> res!706520 e!601701)))

(assert (=> d!128457 (= res!706520 (= (select (arr!32067 a!3488) i!1381) k!2747))))

(assert (=> d!128457 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!601701)))

(declare-fun b!1057781 () Bool)

(declare-fun e!601702 () Bool)

(assert (=> b!1057781 (= e!601701 e!601702)))

(declare-fun res!706521 () Bool)

(assert (=> b!1057781 (=> (not res!706521) (not e!601702))))

(assert (=> b!1057781 (= res!706521 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32604 a!3488)))))

(declare-fun b!1057782 () Bool)

(assert (=> b!1057782 (= e!601702 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128457 (not res!706520)) b!1057781))

(assert (= (and b!1057781 res!706521) b!1057782))

(assert (=> d!128457 m!977519))

(declare-fun m!977603 () Bool)

(assert (=> b!1057782 m!977603))

(assert (=> b!1057679 d!128457))

(declare-fun d!128459 () Bool)

(declare-fun res!706522 () Bool)

(declare-fun e!601703 () Bool)

(assert (=> d!128459 (=> res!706522 e!601703)))

(assert (=> d!128459 (= res!706522 (= (select (arr!32067 a!3488) lt!466582) k!2747))))

(assert (=> d!128459 (= (arrayContainsKey!0 a!3488 k!2747 lt!466582) e!601703)))

(declare-fun b!1057783 () Bool)

(declare-fun e!601704 () Bool)

(assert (=> b!1057783 (= e!601703 e!601704)))

(declare-fun res!706523 () Bool)

(assert (=> b!1057783 (=> (not res!706523) (not e!601704))))

(assert (=> b!1057783 (= res!706523 (bvslt (bvadd lt!466582 #b00000000000000000000000000000001) (size!32604 a!3488)))))

(declare-fun b!1057784 () Bool)

(assert (=> b!1057784 (= e!601704 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!466582 #b00000000000000000000000000000001)))))

(assert (= (and d!128459 (not res!706522)) b!1057783))

(assert (= (and b!1057783 res!706523) b!1057784))

(declare-fun m!977605 () Bool)

