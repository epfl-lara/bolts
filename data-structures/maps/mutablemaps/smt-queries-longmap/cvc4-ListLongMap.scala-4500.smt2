; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62488 () Bool)

(assert start!62488)

(declare-fun b!702625 () Bool)

(declare-fun res!466635 () Bool)

(declare-fun e!397433 () Bool)

(assert (=> b!702625 (=> (not res!466635) (not e!397433))))

(declare-datatypes ((List!13308 0))(
  ( (Nil!13305) (Cons!13304 (h!14349 (_ BitVec 64)) (t!19598 List!13308)) )
))
(declare-fun lt!317685 () List!13308)

(declare-fun contains!3851 (List!13308 (_ BitVec 64)) Bool)

(assert (=> b!702625 (= res!466635 (not (contains!3851 lt!317685 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702626 () Bool)

(declare-fun res!466626 () Bool)

(declare-fun e!397435 () Bool)

(assert (=> b!702626 (=> (not res!466626) (not e!397435))))

(declare-datatypes ((array!40123 0))(
  ( (array!40124 (arr!19214 (Array (_ BitVec 32) (_ BitVec 64))) (size!19597 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40123)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13308)

(declare-fun arrayNoDuplicates!0 (array!40123 (_ BitVec 32) List!13308) Bool)

(assert (=> b!702626 (= res!466626 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702627 () Bool)

(declare-fun res!466624 () Bool)

(assert (=> b!702627 (=> (not res!466624) (not e!397435))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!702627 (= res!466624 (not (contains!3851 acc!652 k!2824)))))

(declare-fun b!702628 () Bool)

(declare-fun res!466614 () Bool)

(assert (=> b!702628 (=> (not res!466614) (not e!397435))))

(declare-fun newAcc!49 () List!13308)

(assert (=> b!702628 (= res!466614 (not (contains!3851 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702629 () Bool)

(declare-fun res!466616 () Bool)

(assert (=> b!702629 (=> (not res!466616) (not e!397435))))

(assert (=> b!702629 (= res!466616 (not (contains!3851 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702630 () Bool)

(declare-fun res!466615 () Bool)

(assert (=> b!702630 (=> (not res!466615) (not e!397435))))

(declare-fun arrayContainsKey!0 (array!40123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702630 (= res!466615 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702631 () Bool)

(declare-fun res!466629 () Bool)

(assert (=> b!702631 (=> (not res!466629) (not e!397433))))

(assert (=> b!702631 (= res!466629 (contains!3851 lt!317685 k!2824))))

(declare-fun b!702632 () Bool)

(declare-fun res!466620 () Bool)

(assert (=> b!702632 (=> (not res!466620) (not e!397435))))

(assert (=> b!702632 (= res!466620 (contains!3851 newAcc!49 k!2824))))

(declare-fun b!702633 () Bool)

(declare-fun res!466617 () Bool)

(assert (=> b!702633 (=> (not res!466617) (not e!397433))))

(declare-fun lt!317683 () List!13308)

(assert (=> b!702633 (= res!466617 (not (contains!3851 lt!317683 k!2824)))))

(declare-fun b!702635 () Bool)

(declare-fun res!466612 () Bool)

(assert (=> b!702635 (=> (not res!466612) (not e!397433))))

(assert (=> b!702635 (= res!466612 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317683))))

(declare-fun b!702636 () Bool)

(declare-fun res!466627 () Bool)

(assert (=> b!702636 (=> (not res!466627) (not e!397433))))

(declare-fun noDuplicate!1098 (List!13308) Bool)

(assert (=> b!702636 (= res!466627 (noDuplicate!1098 lt!317685))))

(declare-fun b!702637 () Bool)

(declare-fun res!466634 () Bool)

(assert (=> b!702637 (=> (not res!466634) (not e!397435))))

(assert (=> b!702637 (= res!466634 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19597 a!3591)))))

(declare-fun b!702638 () Bool)

(declare-fun res!466618 () Bool)

(assert (=> b!702638 (=> (not res!466618) (not e!397433))))

(declare-fun -!260 (List!13308 (_ BitVec 64)) List!13308)

(assert (=> b!702638 (= res!466618 (= (-!260 lt!317685 k!2824) lt!317683))))

(declare-fun b!702639 () Bool)

(declare-fun res!466619 () Bool)

(assert (=> b!702639 (=> (not res!466619) (not e!397435))))

(assert (=> b!702639 (= res!466619 (= (-!260 newAcc!49 k!2824) acc!652))))

(declare-fun b!702640 () Bool)

(declare-fun res!466636 () Bool)

(assert (=> b!702640 (=> (not res!466636) (not e!397435))))

(assert (=> b!702640 (= res!466636 (noDuplicate!1098 newAcc!49))))

(declare-fun b!702641 () Bool)

(declare-fun res!466610 () Bool)

(assert (=> b!702641 (=> (not res!466610) (not e!397433))))

(assert (=> b!702641 (= res!466610 (not (contains!3851 lt!317685 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702642 () Bool)

(declare-fun res!466621 () Bool)

(assert (=> b!702642 (=> (not res!466621) (not e!397435))))

(assert (=> b!702642 (= res!466621 (not (contains!3851 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702643 () Bool)

(declare-fun res!466611 () Bool)

(assert (=> b!702643 (=> (not res!466611) (not e!397433))))

(assert (=> b!702643 (= res!466611 (not (contains!3851 lt!317683 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702644 () Bool)

(assert (=> b!702644 (= e!397435 e!397433)))

(declare-fun res!466633 () Bool)

(assert (=> b!702644 (=> (not res!466633) (not e!397433))))

(assert (=> b!702644 (= res!466633 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!492 (List!13308 (_ BitVec 64)) List!13308)

(assert (=> b!702644 (= lt!317685 ($colon$colon!492 newAcc!49 (select (arr!19214 a!3591) from!2969)))))

(assert (=> b!702644 (= lt!317683 ($colon$colon!492 acc!652 (select (arr!19214 a!3591) from!2969)))))

(declare-fun b!702645 () Bool)

(declare-fun res!466609 () Bool)

(assert (=> b!702645 (=> (not res!466609) (not e!397433))))

(assert (=> b!702645 (= res!466609 (not (contains!3851 lt!317683 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702646 () Bool)

(declare-fun res!466628 () Bool)

(assert (=> b!702646 (=> (not res!466628) (not e!397435))))

(declare-fun subseq!295 (List!13308 List!13308) Bool)

(assert (=> b!702646 (= res!466628 (subseq!295 acc!652 newAcc!49))))

(declare-fun b!702647 () Bool)

(assert (=> b!702647 (= e!397433 (not true))))

(assert (=> b!702647 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317685)))

(declare-datatypes ((Unit!24578 0))(
  ( (Unit!24579) )
))
(declare-fun lt!317684 () Unit!24578)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40123 (_ BitVec 64) (_ BitVec 32) List!13308 List!13308) Unit!24578)

(assert (=> b!702647 (= lt!317684 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317683 lt!317685))))

(declare-fun b!702648 () Bool)

(declare-fun res!466613 () Bool)

(assert (=> b!702648 (=> (not res!466613) (not e!397435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702648 (= res!466613 (validKeyInArray!0 (select (arr!19214 a!3591) from!2969)))))

(declare-fun b!702649 () Bool)

(declare-fun res!466632 () Bool)

(assert (=> b!702649 (=> (not res!466632) (not e!397435))))

(assert (=> b!702649 (= res!466632 (validKeyInArray!0 k!2824))))

(declare-fun b!702650 () Bool)

(declare-fun res!466622 () Bool)

(assert (=> b!702650 (=> (not res!466622) (not e!397435))))

(assert (=> b!702650 (= res!466622 (noDuplicate!1098 acc!652))))

(declare-fun b!702651 () Bool)

(declare-fun res!466623 () Bool)

(assert (=> b!702651 (=> (not res!466623) (not e!397433))))

(assert (=> b!702651 (= res!466623 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702652 () Bool)

(declare-fun res!466625 () Bool)

(assert (=> b!702652 (=> (not res!466625) (not e!397433))))

(assert (=> b!702652 (= res!466625 (subseq!295 lt!317683 lt!317685))))

(declare-fun b!702653 () Bool)

(declare-fun res!466631 () Bool)

(assert (=> b!702653 (=> (not res!466631) (not e!397435))))

(assert (=> b!702653 (= res!466631 (not (contains!3851 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!466630 () Bool)

(assert (=> start!62488 (=> (not res!466630) (not e!397435))))

(assert (=> start!62488 (= res!466630 (and (bvslt (size!19597 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19597 a!3591))))))

(assert (=> start!62488 e!397435))

(assert (=> start!62488 true))

(declare-fun array_inv!14988 (array!40123) Bool)

(assert (=> start!62488 (array_inv!14988 a!3591)))

(declare-fun b!702634 () Bool)

(declare-fun res!466637 () Bool)

(assert (=> b!702634 (=> (not res!466637) (not e!397433))))

(assert (=> b!702634 (= res!466637 (noDuplicate!1098 lt!317683))))

(assert (= (and start!62488 res!466630) b!702650))

(assert (= (and b!702650 res!466622) b!702640))

(assert (= (and b!702640 res!466636) b!702653))

(assert (= (and b!702653 res!466631) b!702642))

(assert (= (and b!702642 res!466621) b!702630))

(assert (= (and b!702630 res!466615) b!702627))

(assert (= (and b!702627 res!466624) b!702649))

(assert (= (and b!702649 res!466632) b!702626))

(assert (= (and b!702626 res!466626) b!702646))

(assert (= (and b!702646 res!466628) b!702632))

(assert (= (and b!702632 res!466620) b!702639))

(assert (= (and b!702639 res!466619) b!702628))

(assert (= (and b!702628 res!466614) b!702629))

(assert (= (and b!702629 res!466616) b!702637))

(assert (= (and b!702637 res!466634) b!702648))

(assert (= (and b!702648 res!466613) b!702644))

(assert (= (and b!702644 res!466633) b!702634))

(assert (= (and b!702634 res!466637) b!702636))

(assert (= (and b!702636 res!466627) b!702645))

(assert (= (and b!702645 res!466609) b!702643))

(assert (= (and b!702643 res!466611) b!702651))

(assert (= (and b!702651 res!466623) b!702633))

(assert (= (and b!702633 res!466617) b!702635))

(assert (= (and b!702635 res!466612) b!702652))

(assert (= (and b!702652 res!466625) b!702631))

(assert (= (and b!702631 res!466629) b!702638))

(assert (= (and b!702638 res!466618) b!702641))

(assert (= (and b!702641 res!466610) b!702625))

(assert (= (and b!702625 res!466635) b!702647))

(declare-fun m!661703 () Bool)

(assert (=> b!702633 m!661703))

(declare-fun m!661705 () Bool)

(assert (=> b!702635 m!661705))

(declare-fun m!661707 () Bool)

(assert (=> start!62488 m!661707))

(declare-fun m!661709 () Bool)

(assert (=> b!702645 m!661709))

(declare-fun m!661711 () Bool)

(assert (=> b!702627 m!661711))

(declare-fun m!661713 () Bool)

(assert (=> b!702647 m!661713))

(declare-fun m!661715 () Bool)

(assert (=> b!702647 m!661715))

(declare-fun m!661717 () Bool)

(assert (=> b!702625 m!661717))

(declare-fun m!661719 () Bool)

(assert (=> b!702652 m!661719))

(declare-fun m!661721 () Bool)

(assert (=> b!702639 m!661721))

(declare-fun m!661723 () Bool)

(assert (=> b!702636 m!661723))

(declare-fun m!661725 () Bool)

(assert (=> b!702653 m!661725))

(declare-fun m!661727 () Bool)

(assert (=> b!702642 m!661727))

(declare-fun m!661729 () Bool)

(assert (=> b!702644 m!661729))

(assert (=> b!702644 m!661729))

(declare-fun m!661731 () Bool)

(assert (=> b!702644 m!661731))

(assert (=> b!702644 m!661729))

(declare-fun m!661733 () Bool)

(assert (=> b!702644 m!661733))

(declare-fun m!661735 () Bool)

(assert (=> b!702649 m!661735))

(declare-fun m!661737 () Bool)

(assert (=> b!702643 m!661737))

(declare-fun m!661739 () Bool)

(assert (=> b!702640 m!661739))

(declare-fun m!661741 () Bool)

(assert (=> b!702631 m!661741))

(assert (=> b!702648 m!661729))

(assert (=> b!702648 m!661729))

(declare-fun m!661743 () Bool)

(assert (=> b!702648 m!661743))

(declare-fun m!661745 () Bool)

(assert (=> b!702651 m!661745))

(declare-fun m!661747 () Bool)

(assert (=> b!702632 m!661747))

(declare-fun m!661749 () Bool)

(assert (=> b!702638 m!661749))

(declare-fun m!661751 () Bool)

(assert (=> b!702641 m!661751))

(declare-fun m!661753 () Bool)

(assert (=> b!702634 m!661753))

(declare-fun m!661755 () Bool)

(assert (=> b!702650 m!661755))

(declare-fun m!661757 () Bool)

(assert (=> b!702626 m!661757))

(declare-fun m!661759 () Bool)

(assert (=> b!702628 m!661759))

(declare-fun m!661761 () Bool)

(assert (=> b!702630 m!661761))

(declare-fun m!661763 () Bool)

(assert (=> b!702646 m!661763))

(declare-fun m!661765 () Bool)

(assert (=> b!702629 m!661765))

(push 1)

(assert (not b!702640))

(assert (not b!702629))

(assert (not start!62488))

