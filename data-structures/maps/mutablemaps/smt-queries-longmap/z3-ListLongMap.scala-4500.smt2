; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62486 () Bool)

(assert start!62486)

(declare-fun b!702539 () Bool)

(declare-fun res!466526 () Bool)

(declare-fun e!397424 () Bool)

(assert (=> b!702539 (=> (not res!466526) (not e!397424))))

(declare-datatypes ((List!13307 0))(
  ( (Nil!13304) (Cons!13303 (h!14348 (_ BitVec 64)) (t!19597 List!13307)) )
))
(declare-fun lt!317676 () List!13307)

(declare-fun noDuplicate!1097 (List!13307) Bool)

(assert (=> b!702539 (= res!466526 (noDuplicate!1097 lt!317676))))

(declare-fun b!702540 () Bool)

(declare-fun res!466542 () Bool)

(declare-fun e!397426 () Bool)

(assert (=> b!702540 (=> (not res!466542) (not e!397426))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40121 0))(
  ( (array!40122 (arr!19213 (Array (_ BitVec 32) (_ BitVec 64))) (size!19596 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40121)

(assert (=> b!702540 (= res!466542 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19596 a!3591)))))

(declare-fun b!702541 () Bool)

(assert (=> b!702541 (= e!397426 e!397424)))

(declare-fun res!466531 () Bool)

(assert (=> b!702541 (=> (not res!466531) (not e!397424))))

(assert (=> b!702541 (= res!466531 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun newAcc!49 () List!13307)

(declare-fun $colon$colon!491 (List!13307 (_ BitVec 64)) List!13307)

(assert (=> b!702541 (= lt!317676 ($colon$colon!491 newAcc!49 (select (arr!19213 a!3591) from!2969)))))

(declare-fun lt!317675 () List!13307)

(declare-fun acc!652 () List!13307)

(assert (=> b!702541 (= lt!317675 ($colon$colon!491 acc!652 (select (arr!19213 a!3591) from!2969)))))

(declare-fun b!702542 () Bool)

(declare-fun res!466532 () Bool)

(assert (=> b!702542 (=> (not res!466532) (not e!397426))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702542 (= res!466532 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!702543 () Bool)

(declare-fun res!466540 () Bool)

(assert (=> b!702543 (=> (not res!466540) (not e!397426))))

(declare-fun contains!3850 (List!13307 (_ BitVec 64)) Bool)

(assert (=> b!702543 (= res!466540 (not (contains!3850 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702544 () Bool)

(declare-fun res!466543 () Bool)

(assert (=> b!702544 (=> (not res!466543) (not e!397426))))

(assert (=> b!702544 (= res!466543 (noDuplicate!1097 acc!652))))

(declare-fun b!702545 () Bool)

(declare-fun res!466536 () Bool)

(assert (=> b!702545 (=> (not res!466536) (not e!397424))))

(declare-fun arrayNoDuplicates!0 (array!40121 (_ BitVec 32) List!13307) Bool)

(assert (=> b!702545 (= res!466536 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317675))))

(declare-fun b!702546 () Bool)

(declare-fun res!466544 () Bool)

(assert (=> b!702546 (=> (not res!466544) (not e!397424))))

(assert (=> b!702546 (= res!466544 (not (contains!3850 lt!317676 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702547 () Bool)

(declare-fun res!466533 () Bool)

(assert (=> b!702547 (=> (not res!466533) (not e!397424))))

(assert (=> b!702547 (= res!466533 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702548 () Bool)

(declare-fun res!466537 () Bool)

(assert (=> b!702548 (=> (not res!466537) (not e!397426))))

(declare-fun subseq!294 (List!13307 List!13307) Bool)

(assert (=> b!702548 (= res!466537 (subseq!294 acc!652 newAcc!49))))

(declare-fun b!702549 () Bool)

(declare-fun res!466549 () Bool)

(assert (=> b!702549 (=> (not res!466549) (not e!397426))))

(assert (=> b!702549 (= res!466549 (not (contains!3850 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702550 () Bool)

(declare-fun res!466522 () Bool)

(assert (=> b!702550 (=> (not res!466522) (not e!397426))))

(assert (=> b!702550 (= res!466522 (noDuplicate!1097 newAcc!49))))

(declare-fun b!702551 () Bool)

(declare-fun res!466541 () Bool)

(assert (=> b!702551 (=> (not res!466541) (not e!397426))))

(assert (=> b!702551 (= res!466541 (contains!3850 newAcc!49 k0!2824))))

(declare-fun res!466524 () Bool)

(assert (=> start!62486 (=> (not res!466524) (not e!397426))))

(assert (=> start!62486 (= res!466524 (and (bvslt (size!19596 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19596 a!3591))))))

(assert (=> start!62486 e!397426))

(assert (=> start!62486 true))

(declare-fun array_inv!14987 (array!40121) Bool)

(assert (=> start!62486 (array_inv!14987 a!3591)))

(declare-fun b!702538 () Bool)

(declare-fun res!466538 () Bool)

(assert (=> b!702538 (=> (not res!466538) (not e!397424))))

(assert (=> b!702538 (= res!466538 (contains!3850 lt!317676 k0!2824))))

(declare-fun b!702552 () Bool)

(declare-fun res!466525 () Bool)

(assert (=> b!702552 (=> (not res!466525) (not e!397424))))

(declare-fun -!259 (List!13307 (_ BitVec 64)) List!13307)

(assert (=> b!702552 (= res!466525 (= (-!259 lt!317676 k0!2824) lt!317675))))

(declare-fun b!702553 () Bool)

(declare-fun res!466530 () Bool)

(assert (=> b!702553 (=> (not res!466530) (not e!397424))))

(assert (=> b!702553 (= res!466530 (not (contains!3850 lt!317675 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702554 () Bool)

(declare-fun res!466529 () Bool)

(assert (=> b!702554 (=> (not res!466529) (not e!397426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702554 (= res!466529 (validKeyInArray!0 (select (arr!19213 a!3591) from!2969)))))

(declare-fun b!702555 () Bool)

(declare-fun res!466528 () Bool)

(assert (=> b!702555 (=> (not res!466528) (not e!397424))))

(assert (=> b!702555 (= res!466528 (not (contains!3850 lt!317675 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702556 () Bool)

(declare-fun res!466545 () Bool)

(assert (=> b!702556 (=> (not res!466545) (not e!397426))))

(assert (=> b!702556 (= res!466545 (not (contains!3850 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702557 () Bool)

(declare-fun res!466539 () Bool)

(assert (=> b!702557 (=> (not res!466539) (not e!397426))))

(assert (=> b!702557 (= res!466539 (validKeyInArray!0 k0!2824))))

(declare-fun b!702558 () Bool)

(declare-fun res!466527 () Bool)

(assert (=> b!702558 (=> (not res!466527) (not e!397426))))

(assert (=> b!702558 (= res!466527 (not (contains!3850 acc!652 k0!2824)))))

(declare-fun b!702559 () Bool)

(declare-fun res!466550 () Bool)

(assert (=> b!702559 (=> (not res!466550) (not e!397424))))

(assert (=> b!702559 (= res!466550 (subseq!294 lt!317675 lt!317676))))

(declare-fun b!702560 () Bool)

(declare-fun res!466547 () Bool)

(assert (=> b!702560 (=> (not res!466547) (not e!397424))))

(assert (=> b!702560 (= res!466547 (not (contains!3850 lt!317676 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702561 () Bool)

(declare-fun res!466534 () Bool)

(assert (=> b!702561 (=> (not res!466534) (not e!397424))))

(assert (=> b!702561 (= res!466534 (not (contains!3850 lt!317675 k0!2824)))))

(declare-fun b!702562 () Bool)

(declare-fun res!466523 () Bool)

(assert (=> b!702562 (=> (not res!466523) (not e!397426))))

(assert (=> b!702562 (= res!466523 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702563 () Bool)

(declare-fun res!466546 () Bool)

(assert (=> b!702563 (=> (not res!466546) (not e!397424))))

(assert (=> b!702563 (= res!466546 (noDuplicate!1097 lt!317675))))

(declare-fun b!702564 () Bool)

(assert (=> b!702564 (= e!397424 (not true))))

(assert (=> b!702564 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317676)))

(declare-datatypes ((Unit!24576 0))(
  ( (Unit!24577) )
))
(declare-fun lt!317674 () Unit!24576)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40121 (_ BitVec 64) (_ BitVec 32) List!13307 List!13307) Unit!24576)

(assert (=> b!702564 (= lt!317674 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317675 lt!317676))))

(declare-fun b!702565 () Bool)

(declare-fun res!466548 () Bool)

(assert (=> b!702565 (=> (not res!466548) (not e!397426))))

(assert (=> b!702565 (= res!466548 (= (-!259 newAcc!49 k0!2824) acc!652))))

(declare-fun b!702566 () Bool)

(declare-fun res!466535 () Bool)

(assert (=> b!702566 (=> (not res!466535) (not e!397426))))

(assert (=> b!702566 (= res!466535 (not (contains!3850 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62486 res!466524) b!702544))

(assert (= (and b!702544 res!466543) b!702550))

(assert (= (and b!702550 res!466522) b!702549))

(assert (= (and b!702549 res!466549) b!702556))

(assert (= (and b!702556 res!466545) b!702542))

(assert (= (and b!702542 res!466532) b!702558))

(assert (= (and b!702558 res!466527) b!702557))

(assert (= (and b!702557 res!466539) b!702562))

(assert (= (and b!702562 res!466523) b!702548))

(assert (= (and b!702548 res!466537) b!702551))

(assert (= (and b!702551 res!466541) b!702565))

(assert (= (and b!702565 res!466548) b!702566))

(assert (= (and b!702566 res!466535) b!702543))

(assert (= (and b!702543 res!466540) b!702540))

(assert (= (and b!702540 res!466542) b!702554))

(assert (= (and b!702554 res!466529) b!702541))

(assert (= (and b!702541 res!466531) b!702563))

(assert (= (and b!702563 res!466546) b!702539))

(assert (= (and b!702539 res!466526) b!702553))

(assert (= (and b!702553 res!466530) b!702555))

(assert (= (and b!702555 res!466528) b!702547))

(assert (= (and b!702547 res!466533) b!702561))

(assert (= (and b!702561 res!466534) b!702545))

(assert (= (and b!702545 res!466536) b!702559))

(assert (= (and b!702559 res!466550) b!702538))

(assert (= (and b!702538 res!466538) b!702552))

(assert (= (and b!702552 res!466525) b!702560))

(assert (= (and b!702560 res!466547) b!702546))

(assert (= (and b!702546 res!466544) b!702564))

(declare-fun m!661639 () Bool)

(assert (=> b!702538 m!661639))

(declare-fun m!661641 () Bool)

(assert (=> b!702553 m!661641))

(declare-fun m!661643 () Bool)

(assert (=> b!702552 m!661643))

(declare-fun m!661645 () Bool)

(assert (=> b!702543 m!661645))

(declare-fun m!661647 () Bool)

(assert (=> b!702562 m!661647))

(declare-fun m!661649 () Bool)

(assert (=> b!702565 m!661649))

(declare-fun m!661651 () Bool)

(assert (=> b!702555 m!661651))

(declare-fun m!661653 () Bool)

(assert (=> b!702544 m!661653))

(declare-fun m!661655 () Bool)

(assert (=> b!702549 m!661655))

(declare-fun m!661657 () Bool)

(assert (=> b!702558 m!661657))

(declare-fun m!661659 () Bool)

(assert (=> b!702548 m!661659))

(declare-fun m!661661 () Bool)

(assert (=> b!702566 m!661661))

(declare-fun m!661663 () Bool)

(assert (=> b!702541 m!661663))

(assert (=> b!702541 m!661663))

(declare-fun m!661665 () Bool)

(assert (=> b!702541 m!661665))

(assert (=> b!702541 m!661663))

(declare-fun m!661667 () Bool)

(assert (=> b!702541 m!661667))

(declare-fun m!661669 () Bool)

(assert (=> b!702547 m!661669))

(declare-fun m!661671 () Bool)

(assert (=> b!702560 m!661671))

(declare-fun m!661673 () Bool)

(assert (=> b!702556 m!661673))

(declare-fun m!661675 () Bool)

(assert (=> b!702557 m!661675))

(declare-fun m!661677 () Bool)

(assert (=> b!702539 m!661677))

(declare-fun m!661679 () Bool)

(assert (=> b!702545 m!661679))

(declare-fun m!661681 () Bool)

(assert (=> b!702546 m!661681))

(declare-fun m!661683 () Bool)

(assert (=> b!702559 m!661683))

(declare-fun m!661685 () Bool)

(assert (=> b!702564 m!661685))

(declare-fun m!661687 () Bool)

(assert (=> b!702564 m!661687))

(declare-fun m!661689 () Bool)

(assert (=> b!702551 m!661689))

(assert (=> b!702554 m!661663))

(assert (=> b!702554 m!661663))

(declare-fun m!661691 () Bool)

(assert (=> b!702554 m!661691))

(declare-fun m!661693 () Bool)

(assert (=> b!702563 m!661693))

(declare-fun m!661695 () Bool)

(assert (=> b!702561 m!661695))

(declare-fun m!661697 () Bool)

(assert (=> b!702550 m!661697))

(declare-fun m!661699 () Bool)

(assert (=> b!702542 m!661699))

(declare-fun m!661701 () Bool)

(assert (=> start!62486 m!661701))

(check-sat (not b!702547) (not b!702563) (not b!702539) (not b!702538) (not b!702550) (not b!702559) (not b!702545) (not b!702543) (not b!702557) (not b!702565) (not b!702549) (not b!702542) (not b!702541) (not b!702558) (not b!702552) (not b!702564) (not start!62486) (not b!702556) (not b!702553) (not b!702548) (not b!702546) (not b!702566) (not b!702555) (not b!702560) (not b!702561) (not b!702551) (not b!702544) (not b!702554) (not b!702562))
(check-sat)
