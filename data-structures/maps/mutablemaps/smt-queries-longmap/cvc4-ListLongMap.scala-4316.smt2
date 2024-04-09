; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59944 () Bool)

(assert start!59944)

(declare-fun b!663729 () Bool)

(declare-fun res!431685 () Bool)

(declare-fun e!380752 () Bool)

(assert (=> b!663729 (=> (not res!431685) (not e!380752))))

(declare-datatypes ((List!12756 0))(
  ( (Nil!12753) (Cons!12752 (h!13797 (_ BitVec 64)) (t!18992 List!12756)) )
))
(declare-fun acc!681 () List!12756)

(declare-fun contains!3299 (List!12756 (_ BitVec 64)) Bool)

(assert (=> b!663729 (= res!431685 (not (contains!3299 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663730 () Bool)

(declare-fun e!380755 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!663730 (= e!380755 (not (contains!3299 acc!681 k!2843)))))

(declare-fun b!663731 () Bool)

(declare-fun res!431692 () Bool)

(assert (=> b!663731 (=> (not res!431692) (not e!380752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663731 (= res!431692 (validKeyInArray!0 k!2843))))

(declare-fun b!663732 () Bool)

(declare-fun res!431686 () Bool)

(assert (=> b!663732 (=> (not res!431686) (not e!380752))))

(declare-datatypes ((array!38947 0))(
  ( (array!38948 (arr!18662 (Array (_ BitVec 32) (_ BitVec 64))) (size!19026 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38947)

(declare-fun arrayContainsKey!0 (array!38947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663732 (= res!431686 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663733 () Bool)

(declare-datatypes ((Unit!23105 0))(
  ( (Unit!23106) )
))
(declare-fun e!380754 () Unit!23105)

(declare-fun lt!309367 () Unit!23105)

(assert (=> b!663733 (= e!380754 lt!309367)))

(declare-fun lt!309366 () Unit!23105)

(declare-fun lemmaListSubSeqRefl!0 (List!12756) Unit!23105)

(assert (=> b!663733 (= lt!309366 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!37 (List!12756 List!12756) Bool)

(assert (=> b!663733 (subseq!37 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38947 List!12756 List!12756 (_ BitVec 32)) Unit!23105)

(declare-fun $colon$colon!168 (List!12756 (_ BitVec 64)) List!12756)

(assert (=> b!663733 (= lt!309367 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!168 acc!681 (select (arr!18662 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38947 (_ BitVec 32) List!12756) Bool)

(assert (=> b!663733 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663734 () Bool)

(declare-fun e!380750 () Unit!23105)

(declare-fun Unit!23107 () Unit!23105)

(assert (=> b!663734 (= e!380750 Unit!23107)))

(declare-fun lt!309365 () Unit!23105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38947 (_ BitVec 64) (_ BitVec 32)) Unit!23105)

(assert (=> b!663734 (= lt!309365 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663734 false))

(declare-fun b!663735 () Bool)

(declare-fun Unit!23108 () Unit!23105)

(assert (=> b!663735 (= e!380750 Unit!23108)))

(declare-fun res!431696 () Bool)

(assert (=> start!59944 (=> (not res!431696) (not e!380752))))

(assert (=> start!59944 (= res!431696 (and (bvslt (size!19026 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19026 a!3626))))))

(assert (=> start!59944 e!380752))

(assert (=> start!59944 true))

(declare-fun array_inv!14436 (array!38947) Bool)

(assert (=> start!59944 (array_inv!14436 a!3626)))

(declare-fun b!663736 () Bool)

(declare-fun res!431693 () Bool)

(assert (=> b!663736 (=> (not res!431693) (not e!380752))))

(declare-fun noDuplicate!546 (List!12756) Bool)

(assert (=> b!663736 (= res!431693 (noDuplicate!546 acc!681))))

(declare-fun b!663737 () Bool)

(declare-fun Unit!23109 () Unit!23105)

(assert (=> b!663737 (= e!380754 Unit!23109)))

(declare-fun b!663738 () Bool)

(declare-fun e!380753 () Bool)

(assert (=> b!663738 (= e!380753 (contains!3299 acc!681 k!2843))))

(declare-fun b!663739 () Bool)

(declare-fun res!431683 () Bool)

(assert (=> b!663739 (=> (not res!431683) (not e!380752))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663739 (= res!431683 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19026 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663740 () Bool)

(assert (=> b!663740 (= e!380752 (not true))))

(declare-fun lt!309368 () Unit!23105)

(assert (=> b!663740 (= lt!309368 e!380754)))

(declare-fun c!76390 () Bool)

(assert (=> b!663740 (= c!76390 (validKeyInArray!0 (select (arr!18662 a!3626) from!3004)))))

(declare-fun lt!309369 () Unit!23105)

(assert (=> b!663740 (= lt!309369 e!380750)))

(declare-fun c!76391 () Bool)

(assert (=> b!663740 (= c!76391 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663740 (arrayContainsKey!0 (array!38948 (store (arr!18662 a!3626) i!1382 k!2843) (size!19026 a!3626)) k!2843 from!3004)))

(declare-fun b!663741 () Bool)

(declare-fun res!431694 () Bool)

(assert (=> b!663741 (=> (not res!431694) (not e!380752))))

(assert (=> b!663741 (= res!431694 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12753))))

(declare-fun b!663742 () Bool)

(declare-fun e!380749 () Bool)

(assert (=> b!663742 (= e!380749 e!380755)))

(declare-fun res!431684 () Bool)

(assert (=> b!663742 (=> (not res!431684) (not e!380755))))

(assert (=> b!663742 (= res!431684 (bvsle from!3004 i!1382))))

(declare-fun b!663743 () Bool)

(declare-fun res!431688 () Bool)

(assert (=> b!663743 (=> (not res!431688) (not e!380752))))

(assert (=> b!663743 (= res!431688 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19026 a!3626))))))

(declare-fun b!663744 () Bool)

(declare-fun res!431687 () Bool)

(assert (=> b!663744 (=> (not res!431687) (not e!380752))))

(assert (=> b!663744 (= res!431687 e!380749)))

(declare-fun res!431690 () Bool)

(assert (=> b!663744 (=> res!431690 e!380749)))

(assert (=> b!663744 (= res!431690 e!380753)))

(declare-fun res!431691 () Bool)

(assert (=> b!663744 (=> (not res!431691) (not e!380753))))

(assert (=> b!663744 (= res!431691 (bvsgt from!3004 i!1382))))

(declare-fun b!663745 () Bool)

(declare-fun res!431689 () Bool)

(assert (=> b!663745 (=> (not res!431689) (not e!380752))))

(assert (=> b!663745 (= res!431689 (not (contains!3299 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663746 () Bool)

(declare-fun res!431695 () Bool)

(assert (=> b!663746 (=> (not res!431695) (not e!380752))))

(assert (=> b!663746 (= res!431695 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59944 res!431696) b!663736))

(assert (= (and b!663736 res!431693) b!663745))

(assert (= (and b!663745 res!431689) b!663729))

(assert (= (and b!663729 res!431685) b!663744))

(assert (= (and b!663744 res!431691) b!663738))

(assert (= (and b!663744 (not res!431690)) b!663742))

(assert (= (and b!663742 res!431684) b!663730))

(assert (= (and b!663744 res!431687) b!663741))

(assert (= (and b!663741 res!431694) b!663746))

(assert (= (and b!663746 res!431695) b!663743))

(assert (= (and b!663743 res!431688) b!663731))

(assert (= (and b!663731 res!431692) b!663732))

(assert (= (and b!663732 res!431686) b!663739))

(assert (= (and b!663739 res!431683) b!663740))

(assert (= (and b!663740 c!76391) b!663734))

(assert (= (and b!663740 (not c!76391)) b!663735))

(assert (= (and b!663740 c!76390) b!663733))

(assert (= (and b!663740 (not c!76390)) b!663737))

(declare-fun m!635243 () Bool)

(assert (=> b!663730 m!635243))

(declare-fun m!635245 () Bool)

(assert (=> b!663746 m!635245))

(declare-fun m!635247 () Bool)

(assert (=> b!663733 m!635247))

(declare-fun m!635249 () Bool)

(assert (=> b!663733 m!635249))

(declare-fun m!635251 () Bool)

(assert (=> b!663733 m!635251))

(declare-fun m!635253 () Bool)

(assert (=> b!663733 m!635253))

(assert (=> b!663733 m!635249))

(assert (=> b!663733 m!635251))

(declare-fun m!635255 () Bool)

(assert (=> b!663733 m!635255))

(declare-fun m!635257 () Bool)

(assert (=> b!663733 m!635257))

(assert (=> b!663740 m!635249))

(declare-fun m!635259 () Bool)

(assert (=> b!663740 m!635259))

(declare-fun m!635261 () Bool)

(assert (=> b!663740 m!635261))

(assert (=> b!663740 m!635249))

(declare-fun m!635263 () Bool)

(assert (=> b!663740 m!635263))

(declare-fun m!635265 () Bool)

(assert (=> b!663740 m!635265))

(declare-fun m!635267 () Bool)

(assert (=> b!663745 m!635267))

(assert (=> b!663738 m!635243))

(declare-fun m!635269 () Bool)

(assert (=> b!663731 m!635269))

(declare-fun m!635271 () Bool)

(assert (=> b!663734 m!635271))

(declare-fun m!635273 () Bool)

(assert (=> b!663736 m!635273))

(declare-fun m!635275 () Bool)

(assert (=> b!663741 m!635275))

(declare-fun m!635277 () Bool)

(assert (=> b!663732 m!635277))

(declare-fun m!635279 () Bool)

(assert (=> start!59944 m!635279))

(declare-fun m!635281 () Bool)

(assert (=> b!663729 m!635281))

(push 1)

(assert (not b!663745))

(assert (not b!663732))

(assert (not b!663746))

(assert (not b!663729))

(assert (not start!59944))

(assert (not b!663733))

(assert (not b!663734))

(assert (not b!663730))

(assert (not b!663738))

(assert (not b!663740))

(assert (not b!663736))

(assert (not b!663741))

(assert (not b!663731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

