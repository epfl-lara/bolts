; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59822 () Bool)

(assert start!59822)

(declare-fun b!660516 () Bool)

(declare-fun res!428760 () Bool)

(declare-fun e!379552 () Bool)

(assert (=> b!660516 (=> (not res!428760) (not e!379552))))

(declare-datatypes ((List!12695 0))(
  ( (Nil!12692) (Cons!12691 (h!13736 (_ BitVec 64)) (t!18931 List!12695)) )
))
(declare-fun acc!681 () List!12695)

(declare-fun contains!3238 (List!12695 (_ BitVec 64)) Bool)

(assert (=> b!660516 (= res!428760 (not (contains!3238 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660517 () Bool)

(declare-fun res!428762 () Bool)

(assert (=> b!660517 (=> (not res!428762) (not e!379552))))

(assert (=> b!660517 (= res!428762 (not (contains!3238 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660518 () Bool)

(declare-fun e!379550 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!660518 (= e!379550 (not (contains!3238 acc!681 k0!2843)))))

(declare-fun b!660519 () Bool)

(declare-fun res!428757 () Bool)

(assert (=> b!660519 (=> (not res!428757) (not e!379552))))

(declare-datatypes ((array!38825 0))(
  ( (array!38826 (arr!18601 (Array (_ BitVec 32) (_ BitVec 64))) (size!18965 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38825)

(declare-fun arrayNoDuplicates!0 (array!38825 (_ BitVec 32) List!12695) Bool)

(assert (=> b!660519 (= res!428757 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12692))))

(declare-fun b!660520 () Bool)

(declare-fun e!379551 () Bool)

(assert (=> b!660520 (= e!379551 (contains!3238 acc!681 k0!2843))))

(declare-fun b!660521 () Bool)

(declare-fun res!428759 () Bool)

(assert (=> b!660521 (=> (not res!428759) (not e!379552))))

(declare-fun noDuplicate!485 (List!12695) Bool)

(assert (=> b!660521 (= res!428759 (noDuplicate!485 acc!681))))

(declare-fun res!428754 () Bool)

(assert (=> start!59822 (=> (not res!428754) (not e!379552))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59822 (= res!428754 (and (bvslt (size!18965 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18965 a!3626))))))

(assert (=> start!59822 e!379552))

(assert (=> start!59822 true))

(declare-fun array_inv!14375 (array!38825) Bool)

(assert (=> start!59822 (array_inv!14375 a!3626)))

(declare-fun b!660522 () Bool)

(assert (=> b!660522 (= e!379552 false)))

(declare-fun lt!308745 () Bool)

(assert (=> b!660522 (= lt!308745 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660523 () Bool)

(declare-fun res!428756 () Bool)

(assert (=> b!660523 (=> (not res!428756) (not e!379552))))

(declare-fun e!379548 () Bool)

(assert (=> b!660523 (= res!428756 e!379548)))

(declare-fun res!428758 () Bool)

(assert (=> b!660523 (=> res!428758 e!379548)))

(assert (=> b!660523 (= res!428758 e!379551)))

(declare-fun res!428755 () Bool)

(assert (=> b!660523 (=> (not res!428755) (not e!379551))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660523 (= res!428755 (bvsgt from!3004 i!1382))))

(declare-fun b!660524 () Bool)

(assert (=> b!660524 (= e!379548 e!379550)))

(declare-fun res!428761 () Bool)

(assert (=> b!660524 (=> (not res!428761) (not e!379550))))

(assert (=> b!660524 (= res!428761 (bvsle from!3004 i!1382))))

(assert (= (and start!59822 res!428754) b!660521))

(assert (= (and b!660521 res!428759) b!660517))

(assert (= (and b!660517 res!428762) b!660516))

(assert (= (and b!660516 res!428760) b!660523))

(assert (= (and b!660523 res!428755) b!660520))

(assert (= (and b!660523 (not res!428758)) b!660524))

(assert (= (and b!660524 res!428761) b!660518))

(assert (= (and b!660523 res!428756) b!660519))

(assert (= (and b!660519 res!428757) b!660522))

(declare-fun m!633119 () Bool)

(assert (=> b!660520 m!633119))

(assert (=> b!660518 m!633119))

(declare-fun m!633121 () Bool)

(assert (=> start!59822 m!633121))

(declare-fun m!633123 () Bool)

(assert (=> b!660521 m!633123))

(declare-fun m!633125 () Bool)

(assert (=> b!660517 m!633125))

(declare-fun m!633127 () Bool)

(assert (=> b!660516 m!633127))

(declare-fun m!633129 () Bool)

(assert (=> b!660522 m!633129))

(declare-fun m!633131 () Bool)

(assert (=> b!660519 m!633131))

(check-sat (not b!660522) (not b!660519) (not b!660520) (not b!660517) (not b!660516) (not b!660518) (not start!59822) (not b!660521))
