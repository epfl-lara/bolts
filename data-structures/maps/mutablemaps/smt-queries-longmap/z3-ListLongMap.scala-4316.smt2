; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59942 () Bool)

(assert start!59942)

(declare-fun b!663675 () Bool)

(declare-fun e!380728 () Bool)

(assert (=> b!663675 (= e!380728 (not true))))

(declare-datatypes ((Unit!23100 0))(
  ( (Unit!23101) )
))
(declare-fun lt!309353 () Unit!23100)

(declare-fun e!380729 () Unit!23100)

(assert (=> b!663675 (= lt!309353 e!380729)))

(declare-fun c!76385 () Bool)

(declare-datatypes ((array!38945 0))(
  ( (array!38946 (arr!18661 (Array (_ BitVec 32) (_ BitVec 64))) (size!19025 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38945)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663675 (= c!76385 (validKeyInArray!0 (select (arr!18661 a!3626) from!3004)))))

(declare-fun lt!309350 () Unit!23100)

(declare-fun e!380734 () Unit!23100)

(assert (=> b!663675 (= lt!309350 e!380734)))

(declare-fun c!76384 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663675 (= c!76384 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663675 (arrayContainsKey!0 (array!38946 (store (arr!18661 a!3626) i!1382 k0!2843) (size!19025 a!3626)) k0!2843 from!3004)))

(declare-fun b!663676 () Bool)

(declare-fun res!431652 () Bool)

(assert (=> b!663676 (=> (not res!431652) (not e!380728))))

(declare-datatypes ((List!12755 0))(
  ( (Nil!12752) (Cons!12751 (h!13796 (_ BitVec 64)) (t!18991 List!12755)) )
))
(declare-fun acc!681 () List!12755)

(declare-fun contains!3298 (List!12755 (_ BitVec 64)) Bool)

(assert (=> b!663676 (= res!431652 (not (contains!3298 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663677 () Bool)

(declare-fun Unit!23102 () Unit!23100)

(assert (=> b!663677 (= e!380729 Unit!23102)))

(declare-fun b!663678 () Bool)

(declare-fun e!380733 () Bool)

(assert (=> b!663678 (= e!380733 (contains!3298 acc!681 k0!2843))))

(declare-fun b!663679 () Bool)

(declare-fun e!380732 () Bool)

(declare-fun e!380731 () Bool)

(assert (=> b!663679 (= e!380732 e!380731)))

(declare-fun res!431644 () Bool)

(assert (=> b!663679 (=> (not res!431644) (not e!380731))))

(assert (=> b!663679 (= res!431644 (bvsle from!3004 i!1382))))

(declare-fun b!663680 () Bool)

(declare-fun Unit!23103 () Unit!23100)

(assert (=> b!663680 (= e!380734 Unit!23103)))

(declare-fun b!663681 () Bool)

(declare-fun res!431649 () Bool)

(assert (=> b!663681 (=> (not res!431649) (not e!380728))))

(assert (=> b!663681 (= res!431649 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19025 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663682 () Bool)

(declare-fun res!431648 () Bool)

(assert (=> b!663682 (=> (not res!431648) (not e!380728))))

(assert (=> b!663682 (= res!431648 (validKeyInArray!0 k0!2843))))

(declare-fun b!663683 () Bool)

(declare-fun res!431645 () Bool)

(assert (=> b!663683 (=> (not res!431645) (not e!380728))))

(assert (=> b!663683 (= res!431645 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19025 a!3626))))))

(declare-fun b!663684 () Bool)

(declare-fun res!431654 () Bool)

(assert (=> b!663684 (=> (not res!431654) (not e!380728))))

(declare-fun arrayNoDuplicates!0 (array!38945 (_ BitVec 32) List!12755) Bool)

(assert (=> b!663684 (= res!431654 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663685 () Bool)

(declare-fun res!431643 () Bool)

(assert (=> b!663685 (=> (not res!431643) (not e!380728))))

(assert (=> b!663685 (= res!431643 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663686 () Bool)

(assert (=> b!663686 (= e!380731 (not (contains!3298 acc!681 k0!2843)))))

(declare-fun b!663687 () Bool)

(declare-fun res!431646 () Bool)

(assert (=> b!663687 (=> (not res!431646) (not e!380728))))

(declare-fun noDuplicate!545 (List!12755) Bool)

(assert (=> b!663687 (= res!431646 (noDuplicate!545 acc!681))))

(declare-fun res!431641 () Bool)

(assert (=> start!59942 (=> (not res!431641) (not e!380728))))

(assert (=> start!59942 (= res!431641 (and (bvslt (size!19025 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19025 a!3626))))))

(assert (=> start!59942 e!380728))

(assert (=> start!59942 true))

(declare-fun array_inv!14435 (array!38945) Bool)

(assert (=> start!59942 (array_inv!14435 a!3626)))

(declare-fun b!663688 () Bool)

(declare-fun res!431647 () Bool)

(assert (=> b!663688 (=> (not res!431647) (not e!380728))))

(assert (=> b!663688 (= res!431647 (not (contains!3298 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663689 () Bool)

(declare-fun res!431651 () Bool)

(assert (=> b!663689 (=> (not res!431651) (not e!380728))))

(assert (=> b!663689 (= res!431651 e!380732)))

(declare-fun res!431642 () Bool)

(assert (=> b!663689 (=> res!431642 e!380732)))

(assert (=> b!663689 (= res!431642 e!380733)))

(declare-fun res!431650 () Bool)

(assert (=> b!663689 (=> (not res!431650) (not e!380733))))

(assert (=> b!663689 (= res!431650 (bvsgt from!3004 i!1382))))

(declare-fun b!663690 () Bool)

(declare-fun res!431653 () Bool)

(assert (=> b!663690 (=> (not res!431653) (not e!380728))))

(assert (=> b!663690 (= res!431653 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12752))))

(declare-fun b!663691 () Bool)

(declare-fun Unit!23104 () Unit!23100)

(assert (=> b!663691 (= e!380734 Unit!23104)))

(declare-fun lt!309352 () Unit!23100)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38945 (_ BitVec 64) (_ BitVec 32)) Unit!23100)

(assert (=> b!663691 (= lt!309352 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!663691 false))

(declare-fun b!663692 () Bool)

(declare-fun lt!309354 () Unit!23100)

(assert (=> b!663692 (= e!380729 lt!309354)))

(declare-fun lt!309351 () Unit!23100)

(declare-fun lemmaListSubSeqRefl!0 (List!12755) Unit!23100)

(assert (=> b!663692 (= lt!309351 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!36 (List!12755 List!12755) Bool)

(assert (=> b!663692 (subseq!36 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38945 List!12755 List!12755 (_ BitVec 32)) Unit!23100)

(declare-fun $colon$colon!167 (List!12755 (_ BitVec 64)) List!12755)

(assert (=> b!663692 (= lt!309354 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!167 acc!681 (select (arr!18661 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663692 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!59942 res!431641) b!663687))

(assert (= (and b!663687 res!431646) b!663676))

(assert (= (and b!663676 res!431652) b!663688))

(assert (= (and b!663688 res!431647) b!663689))

(assert (= (and b!663689 res!431650) b!663678))

(assert (= (and b!663689 (not res!431642)) b!663679))

(assert (= (and b!663679 res!431644) b!663686))

(assert (= (and b!663689 res!431651) b!663690))

(assert (= (and b!663690 res!431653) b!663684))

(assert (= (and b!663684 res!431654) b!663683))

(assert (= (and b!663683 res!431645) b!663682))

(assert (= (and b!663682 res!431648) b!663685))

(assert (= (and b!663685 res!431643) b!663681))

(assert (= (and b!663681 res!431649) b!663675))

(assert (= (and b!663675 c!76384) b!663691))

(assert (= (and b!663675 (not c!76384)) b!663680))

(assert (= (and b!663675 c!76385) b!663692))

(assert (= (and b!663675 (not c!76385)) b!663677))

(declare-fun m!635203 () Bool)

(assert (=> b!663688 m!635203))

(declare-fun m!635205 () Bool)

(assert (=> b!663686 m!635205))

(declare-fun m!635207 () Bool)

(assert (=> b!663682 m!635207))

(declare-fun m!635209 () Bool)

(assert (=> b!663690 m!635209))

(declare-fun m!635211 () Bool)

(assert (=> b!663687 m!635211))

(declare-fun m!635213 () Bool)

(assert (=> start!59942 m!635213))

(declare-fun m!635215 () Bool)

(assert (=> b!663691 m!635215))

(assert (=> b!663678 m!635205))

(declare-fun m!635217 () Bool)

(assert (=> b!663676 m!635217))

(declare-fun m!635219 () Bool)

(assert (=> b!663692 m!635219))

(declare-fun m!635221 () Bool)

(assert (=> b!663692 m!635221))

(declare-fun m!635223 () Bool)

(assert (=> b!663692 m!635223))

(declare-fun m!635225 () Bool)

(assert (=> b!663692 m!635225))

(assert (=> b!663692 m!635221))

(assert (=> b!663692 m!635223))

(declare-fun m!635227 () Bool)

(assert (=> b!663692 m!635227))

(declare-fun m!635229 () Bool)

(assert (=> b!663692 m!635229))

(declare-fun m!635231 () Bool)

(assert (=> b!663685 m!635231))

(assert (=> b!663675 m!635221))

(declare-fun m!635233 () Bool)

(assert (=> b!663675 m!635233))

(declare-fun m!635235 () Bool)

(assert (=> b!663675 m!635235))

(assert (=> b!663675 m!635221))

(declare-fun m!635237 () Bool)

(assert (=> b!663675 m!635237))

(declare-fun m!635239 () Bool)

(assert (=> b!663675 m!635239))

(declare-fun m!635241 () Bool)

(assert (=> b!663684 m!635241))

(check-sat (not b!663678) (not b!663691) (not b!663682) (not b!663686) (not b!663688) (not b!663690) (not b!663692) (not start!59942) (not b!663676) (not b!663685) (not b!663684) (not b!663687) (not b!663675))
(check-sat)
