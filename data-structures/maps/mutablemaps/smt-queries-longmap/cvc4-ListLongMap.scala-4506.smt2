; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62524 () Bool)

(assert start!62524)

(declare-fun b!703707 () Bool)

(declare-fun res!467691 () Bool)

(declare-fun e!397552 () Bool)

(assert (=> b!703707 (=> (not res!467691) (not e!397552))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40159 0))(
  ( (array!40160 (arr!19232 (Array (_ BitVec 32) (_ BitVec 64))) (size!19615 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40159)

(assert (=> b!703707 (= res!467691 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19615 a!3591)))))

(declare-fun b!703708 () Bool)

(declare-fun res!467701 () Bool)

(assert (=> b!703708 (=> (not res!467701) (not e!397552))))

(declare-datatypes ((List!13326 0))(
  ( (Nil!13323) (Cons!13322 (h!14367 (_ BitVec 64)) (t!19616 List!13326)) )
))
(declare-fun acc!652 () List!13326)

(declare-fun contains!3869 (List!13326 (_ BitVec 64)) Bool)

(assert (=> b!703708 (= res!467701 (not (contains!3869 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703709 () Bool)

(declare-fun res!467705 () Bool)

(assert (=> b!703709 (=> (not res!467705) (not e!397552))))

(declare-fun newAcc!49 () List!13326)

(declare-fun noDuplicate!1116 (List!13326) Bool)

(assert (=> b!703709 (= res!467705 (noDuplicate!1116 newAcc!49))))

(declare-fun b!703710 () Bool)

(declare-fun res!467696 () Bool)

(assert (=> b!703710 (=> (not res!467696) (not e!397552))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703710 (= res!467696 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!467706 () Bool)

(assert (=> start!62524 (=> (not res!467706) (not e!397552))))

(assert (=> start!62524 (= res!467706 (and (bvslt (size!19615 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19615 a!3591))))))

(assert (=> start!62524 e!397552))

(assert (=> start!62524 true))

(declare-fun array_inv!15006 (array!40159) Bool)

(assert (=> start!62524 (array_inv!15006 a!3591)))

(declare-fun b!703711 () Bool)

(declare-fun res!467707 () Bool)

(assert (=> b!703711 (=> (not res!467707) (not e!397552))))

(assert (=> b!703711 (= res!467707 (not (contains!3869 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703712 () Bool)

(declare-fun res!467693 () Bool)

(assert (=> b!703712 (=> (not res!467693) (not e!397552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703712 (= res!467693 (not (validKeyInArray!0 (select (arr!19232 a!3591) from!2969))))))

(declare-fun b!703713 () Bool)

(declare-fun res!467700 () Bool)

(assert (=> b!703713 (=> (not res!467700) (not e!397552))))

(assert (=> b!703713 (= res!467700 (noDuplicate!1116 acc!652))))

(declare-fun b!703714 () Bool)

(declare-fun res!467699 () Bool)

(assert (=> b!703714 (=> (not res!467699) (not e!397552))))

(declare-fun arrayNoDuplicates!0 (array!40159 (_ BitVec 32) List!13326) Bool)

(assert (=> b!703714 (= res!467699 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703715 () Bool)

(declare-fun res!467697 () Bool)

(assert (=> b!703715 (=> (not res!467697) (not e!397552))))

(assert (=> b!703715 (= res!467697 (not (contains!3869 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703716 () Bool)

(declare-fun res!467703 () Bool)

(assert (=> b!703716 (=> (not res!467703) (not e!397552))))

(assert (=> b!703716 (= res!467703 (not (contains!3869 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703717 () Bool)

(declare-fun res!467698 () Bool)

(assert (=> b!703717 (=> (not res!467698) (not e!397552))))

(assert (=> b!703717 (= res!467698 (validKeyInArray!0 k!2824))))

(declare-fun b!703718 () Bool)

(declare-fun res!467708 () Bool)

(assert (=> b!703718 (=> (not res!467708) (not e!397552))))

(assert (=> b!703718 (= res!467708 (not (contains!3869 acc!652 k!2824)))))

(declare-fun b!703719 () Bool)

(declare-fun res!467695 () Bool)

(assert (=> b!703719 (=> (not res!467695) (not e!397552))))

(declare-fun subseq!313 (List!13326 List!13326) Bool)

(assert (=> b!703719 (= res!467695 (subseq!313 acc!652 newAcc!49))))

(declare-fun b!703720 () Bool)

(declare-fun res!467694 () Bool)

(assert (=> b!703720 (=> (not res!467694) (not e!397552))))

(assert (=> b!703720 (= res!467694 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703721 () Bool)

(declare-fun res!467704 () Bool)

(assert (=> b!703721 (=> (not res!467704) (not e!397552))))

(declare-fun -!278 (List!13326 (_ BitVec 64)) List!13326)

(assert (=> b!703721 (= res!467704 (= (-!278 newAcc!49 k!2824) acc!652))))

(declare-fun b!703722 () Bool)

(assert (=> b!703722 (= e!397552 false)))

(declare-fun lt!317757 () Bool)

(assert (=> b!703722 (= lt!317757 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703723 () Bool)

(declare-fun res!467702 () Bool)

(assert (=> b!703723 (=> (not res!467702) (not e!397552))))

(assert (=> b!703723 (= res!467702 (contains!3869 newAcc!49 k!2824))))

(declare-fun b!703724 () Bool)

(declare-fun res!467692 () Bool)

(assert (=> b!703724 (=> (not res!467692) (not e!397552))))

(assert (=> b!703724 (= res!467692 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (= (and start!62524 res!467706) b!703713))

(assert (= (and b!703713 res!467700) b!703709))

(assert (= (and b!703709 res!467705) b!703708))

(assert (= (and b!703708 res!467701) b!703716))

(assert (= (and b!703716 res!467703) b!703710))

(assert (= (and b!703710 res!467696) b!703718))

(assert (= (and b!703718 res!467708) b!703717))

(assert (= (and b!703717 res!467698) b!703714))

(assert (= (and b!703714 res!467699) b!703719))

(assert (= (and b!703719 res!467695) b!703723))

(assert (= (and b!703723 res!467702) b!703721))

(assert (= (and b!703721 res!467704) b!703711))

(assert (= (and b!703711 res!467707) b!703715))

(assert (= (and b!703715 res!467697) b!703707))

(assert (= (and b!703707 res!467691) b!703712))

(assert (= (and b!703712 res!467693) b!703724))

(assert (= (and b!703724 res!467692) b!703720))

(assert (= (and b!703720 res!467694) b!703722))

(declare-fun m!662463 () Bool)

(assert (=> b!703714 m!662463))

(declare-fun m!662465 () Bool)

(assert (=> start!62524 m!662465))

(declare-fun m!662467 () Bool)

(assert (=> b!703712 m!662467))

(assert (=> b!703712 m!662467))

(declare-fun m!662469 () Bool)

(assert (=> b!703712 m!662469))

(declare-fun m!662471 () Bool)

(assert (=> b!703715 m!662471))

(declare-fun m!662473 () Bool)

(assert (=> b!703716 m!662473))

(declare-fun m!662475 () Bool)

(assert (=> b!703709 m!662475))

(declare-fun m!662477 () Bool)

(assert (=> b!703710 m!662477))

(declare-fun m!662479 () Bool)

(assert (=> b!703718 m!662479))

(declare-fun m!662481 () Bool)

(assert (=> b!703708 m!662481))

(declare-fun m!662483 () Bool)

(assert (=> b!703717 m!662483))

(declare-fun m!662485 () Bool)

(assert (=> b!703720 m!662485))

(declare-fun m!662487 () Bool)

(assert (=> b!703722 m!662487))

(declare-fun m!662489 () Bool)

(assert (=> b!703719 m!662489))

(declare-fun m!662491 () Bool)

(assert (=> b!703723 m!662491))

(declare-fun m!662493 () Bool)

(assert (=> b!703721 m!662493))

(declare-fun m!662495 () Bool)

(assert (=> b!703711 m!662495))

(declare-fun m!662497 () Bool)

(assert (=> b!703713 m!662497))

(push 1)

(assert (not b!703714))

(assert (not b!703712))

(assert (not b!703711))

(assert (not start!62524))

(assert (not b!703715))

(assert (not b!703723))

(assert (not b!703722))

(assert (not b!703719))

(assert (not b!703716))

(assert (not b!703718))

(assert (not b!703710))

(assert (not b!703713))

(assert (not b!703717))

(assert (not b!703708))

(assert (not b!703720))

(assert (not b!703709))

(assert (not b!703721))

(check-sat)

