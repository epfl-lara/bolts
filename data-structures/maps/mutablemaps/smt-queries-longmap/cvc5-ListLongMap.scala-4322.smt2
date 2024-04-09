; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59976 () Bool)

(assert start!59976)

(declare-fun b!664859 () Bool)

(declare-datatypes ((Unit!23185 0))(
  ( (Unit!23186) )
))
(declare-fun e!381123 () Unit!23185)

(declare-fun Unit!23187 () Unit!23185)

(assert (=> b!664859 (= e!381123 Unit!23187)))

(declare-fun b!664861 () Bool)

(declare-fun res!432621 () Bool)

(declare-fun e!381125 () Bool)

(assert (=> b!664861 (=> (not res!432621) (not e!381125))))

(declare-datatypes ((List!12772 0))(
  ( (Nil!12769) (Cons!12768 (h!13813 (_ BitVec 64)) (t!19008 List!12772)) )
))
(declare-fun acc!681 () List!12772)

(declare-fun noDuplicate!562 (List!12772) Bool)

(assert (=> b!664861 (= res!432621 (noDuplicate!562 acc!681))))

(declare-fun b!664862 () Bool)

(declare-fun res!432629 () Bool)

(declare-fun e!381124 () Bool)

(assert (=> b!664862 (=> res!432629 e!381124)))

(declare-fun lt!309813 () Bool)

(assert (=> b!664862 (= res!432629 lt!309813)))

(declare-fun b!664863 () Bool)

(declare-fun res!432625 () Bool)

(assert (=> b!664863 (=> res!432625 e!381124)))

(declare-fun lt!309821 () List!12772)

(declare-fun contains!3315 (List!12772 (_ BitVec 64)) Bool)

(assert (=> b!664863 (= res!432625 (contains!3315 lt!309821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664864 () Bool)

(declare-fun res!432639 () Bool)

(assert (=> b!664864 (=> (not res!432639) (not e!381125))))

(declare-datatypes ((array!38979 0))(
  ( (array!38980 (arr!18678 (Array (_ BitVec 32) (_ BitVec 64))) (size!19042 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38979)

(declare-fun arrayNoDuplicates!0 (array!38979 (_ BitVec 32) List!12772) Bool)

(assert (=> b!664864 (= res!432639 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12769))))

(declare-fun b!664865 () Bool)

(declare-fun res!432635 () Bool)

(assert (=> b!664865 (=> (not res!432635) (not e!381125))))

(assert (=> b!664865 (= res!432635 (not (contains!3315 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664866 () Bool)

(declare-fun e!381129 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!664866 (= e!381129 (contains!3315 acc!681 k!2843))))

(declare-fun b!664867 () Bool)

(declare-fun res!432633 () Bool)

(assert (=> b!664867 (=> res!432633 e!381124)))

(assert (=> b!664867 (= res!432633 (contains!3315 acc!681 k!2843))))

(declare-fun b!664868 () Bool)

(declare-fun e!381130 () Unit!23185)

(declare-fun Unit!23188 () Unit!23185)

(assert (=> b!664868 (= e!381130 Unit!23188)))

(declare-fun lt!309819 () Unit!23185)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38979 (_ BitVec 64) (_ BitVec 32)) Unit!23185)

(assert (=> b!664868 (= lt!309819 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664868 false))

(declare-fun res!432627 () Bool)

(assert (=> start!59976 (=> (not res!432627) (not e!381125))))

(assert (=> start!59976 (= res!432627 (and (bvslt (size!19042 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19042 a!3626))))))

(assert (=> start!59976 e!381125))

(assert (=> start!59976 true))

(declare-fun array_inv!14452 (array!38979) Bool)

(assert (=> start!59976 (array_inv!14452 a!3626)))

(declare-fun b!664860 () Bool)

(declare-fun res!432641 () Bool)

(assert (=> b!664860 (=> res!432641 e!381124)))

(assert (=> b!664860 (= res!432641 (not (contains!3315 lt!309821 k!2843)))))

(declare-fun b!664869 () Bool)

(declare-fun res!432640 () Bool)

(assert (=> b!664869 (=> (not res!432640) (not e!381125))))

(declare-fun e!381127 () Bool)

(assert (=> b!664869 (= res!432640 e!381127)))

(declare-fun res!432634 () Bool)

(assert (=> b!664869 (=> res!432634 e!381127)))

(assert (=> b!664869 (= res!432634 e!381129)))

(declare-fun res!432637 () Bool)

(assert (=> b!664869 (=> (not res!432637) (not e!381129))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664869 (= res!432637 (bvsgt from!3004 i!1382))))

(declare-fun b!664870 () Bool)

(declare-fun res!432636 () Bool)

(assert (=> b!664870 (=> (not res!432636) (not e!381125))))

(assert (=> b!664870 (= res!432636 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19042 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664871 () Bool)

(declare-fun res!432630 () Bool)

(assert (=> b!664871 (=> (not res!432630) (not e!381125))))

(assert (=> b!664871 (= res!432630 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664872 () Bool)

(declare-fun res!432623 () Bool)

(assert (=> b!664872 (=> res!432623 e!381124)))

(declare-fun subseq!53 (List!12772 List!12772) Bool)

(assert (=> b!664872 (= res!432623 (not (subseq!53 acc!681 lt!309821)))))

(declare-fun b!664873 () Bool)

(declare-fun res!432632 () Bool)

(assert (=> b!664873 (=> res!432632 e!381124)))

(assert (=> b!664873 (= res!432632 (not (noDuplicate!562 lt!309821)))))

(declare-fun b!664874 () Bool)

(declare-fun res!432622 () Bool)

(assert (=> b!664874 (=> (not res!432622) (not e!381125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664874 (= res!432622 (validKeyInArray!0 k!2843))))

(declare-fun b!664875 () Bool)

(declare-fun e!381126 () Bool)

(assert (=> b!664875 (= e!381127 e!381126)))

(declare-fun res!432628 () Bool)

(assert (=> b!664875 (=> (not res!432628) (not e!381126))))

(assert (=> b!664875 (= res!432628 (bvsle from!3004 i!1382))))

(declare-fun b!664876 () Bool)

(assert (=> b!664876 (= e!381125 (not e!381124))))

(declare-fun res!432631 () Bool)

(assert (=> b!664876 (=> res!432631 e!381124)))

(assert (=> b!664876 (= res!432631 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!51 (List!12772 (_ BitVec 64)) List!12772)

(assert (=> b!664876 (= (-!51 lt!309821 k!2843) acc!681)))

(declare-fun $colon$colon!184 (List!12772 (_ BitVec 64)) List!12772)

(assert (=> b!664876 (= lt!309821 ($colon$colon!184 acc!681 k!2843))))

(declare-fun lt!309818 () Unit!23185)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12772) Unit!23185)

(assert (=> b!664876 (= lt!309818 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!664876 (subseq!53 acc!681 acc!681)))

(declare-fun lt!309820 () Unit!23185)

(declare-fun lemmaListSubSeqRefl!0 (List!12772) Unit!23185)

(assert (=> b!664876 (= lt!309820 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664876 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309816 () Unit!23185)

(assert (=> b!664876 (= lt!309816 e!381123)))

(declare-fun c!76486 () Bool)

(assert (=> b!664876 (= c!76486 (validKeyInArray!0 (select (arr!18678 a!3626) from!3004)))))

(declare-fun lt!309814 () Unit!23185)

(assert (=> b!664876 (= lt!309814 e!381130)))

(declare-fun c!76487 () Bool)

(assert (=> b!664876 (= c!76487 lt!309813)))

(declare-fun arrayContainsKey!0 (array!38979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664876 (= lt!309813 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664876 (arrayContainsKey!0 (array!38980 (store (arr!18678 a!3626) i!1382 k!2843) (size!19042 a!3626)) k!2843 from!3004)))

(declare-fun b!664877 () Bool)

(declare-fun lt!309817 () Unit!23185)

(assert (=> b!664877 (= e!381123 lt!309817)))

(declare-fun lt!309822 () Unit!23185)

(assert (=> b!664877 (= lt!309822 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664877 (subseq!53 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38979 List!12772 List!12772 (_ BitVec 32)) Unit!23185)

(assert (=> b!664877 (= lt!309817 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!184 acc!681 (select (arr!18678 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664877 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664878 () Bool)

(assert (=> b!664878 (= e!381126 (not (contains!3315 acc!681 k!2843)))))

(declare-fun b!664879 () Bool)

(assert (=> b!664879 (= e!381124 true)))

(declare-fun lt!309815 () Bool)

(assert (=> b!664879 (= lt!309815 (contains!3315 lt!309821 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664880 () Bool)

(declare-fun res!432638 () Bool)

(assert (=> b!664880 (=> (not res!432638) (not e!381125))))

(assert (=> b!664880 (= res!432638 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19042 a!3626))))))

(declare-fun b!664881 () Bool)

(declare-fun res!432624 () Bool)

(assert (=> b!664881 (=> (not res!432624) (not e!381125))))

(assert (=> b!664881 (= res!432624 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664882 () Bool)

(declare-fun Unit!23189 () Unit!23185)

(assert (=> b!664882 (= e!381130 Unit!23189)))

(declare-fun b!664883 () Bool)

(declare-fun res!432626 () Bool)

(assert (=> b!664883 (=> (not res!432626) (not e!381125))))

(assert (=> b!664883 (= res!432626 (not (contains!3315 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59976 res!432627) b!664861))

(assert (= (and b!664861 res!432621) b!664883))

(assert (= (and b!664883 res!432626) b!664865))

(assert (= (and b!664865 res!432635) b!664869))

(assert (= (and b!664869 res!432637) b!664866))

(assert (= (and b!664869 (not res!432634)) b!664875))

(assert (= (and b!664875 res!432628) b!664878))

(assert (= (and b!664869 res!432640) b!664864))

(assert (= (and b!664864 res!432639) b!664871))

(assert (= (and b!664871 res!432630) b!664880))

(assert (= (and b!664880 res!432638) b!664874))

(assert (= (and b!664874 res!432622) b!664881))

(assert (= (and b!664881 res!432624) b!664870))

(assert (= (and b!664870 res!432636) b!664876))

(assert (= (and b!664876 c!76487) b!664868))

(assert (= (and b!664876 (not c!76487)) b!664882))

(assert (= (and b!664876 c!76486) b!664877))

(assert (= (and b!664876 (not c!76486)) b!664859))

(assert (= (and b!664876 (not res!432631)) b!664873))

(assert (= (and b!664873 (not res!432632)) b!664862))

(assert (= (and b!664862 (not res!432629)) b!664867))

(assert (= (and b!664867 (not res!432633)) b!664872))

(assert (= (and b!664872 (not res!432623)) b!664860))

(assert (= (and b!664860 (not res!432641)) b!664863))

(assert (= (and b!664863 (not res!432625)) b!664879))

(declare-fun m!636075 () Bool)

(assert (=> b!664865 m!636075))

(declare-fun m!636077 () Bool)

(assert (=> b!664878 m!636077))

(declare-fun m!636079 () Bool)

(assert (=> b!664868 m!636079))

(declare-fun m!636081 () Bool)

(assert (=> start!59976 m!636081))

(declare-fun m!636083 () Bool)

(assert (=> b!664876 m!636083))

(declare-fun m!636085 () Bool)

(assert (=> b!664876 m!636085))

(declare-fun m!636087 () Bool)

(assert (=> b!664876 m!636087))

(declare-fun m!636089 () Bool)

(assert (=> b!664876 m!636089))

(declare-fun m!636091 () Bool)

(assert (=> b!664876 m!636091))

(declare-fun m!636093 () Bool)

(assert (=> b!664876 m!636093))

(declare-fun m!636095 () Bool)

(assert (=> b!664876 m!636095))

(declare-fun m!636097 () Bool)

(assert (=> b!664876 m!636097))

(assert (=> b!664876 m!636087))

(declare-fun m!636099 () Bool)

(assert (=> b!664876 m!636099))

(declare-fun m!636101 () Bool)

(assert (=> b!664876 m!636101))

(declare-fun m!636103 () Bool)

(assert (=> b!664876 m!636103))

(declare-fun m!636105 () Bool)

(assert (=> b!664874 m!636105))

(declare-fun m!636107 () Bool)

(assert (=> b!664871 m!636107))

(declare-fun m!636109 () Bool)

(assert (=> b!664872 m!636109))

(assert (=> b!664867 m!636077))

(declare-fun m!636111 () Bool)

(assert (=> b!664881 m!636111))

(declare-fun m!636113 () Bool)

(assert (=> b!664879 m!636113))

(declare-fun m!636115 () Bool)

(assert (=> b!664864 m!636115))

(declare-fun m!636117 () Bool)

(assert (=> b!664863 m!636117))

(declare-fun m!636119 () Bool)

(assert (=> b!664883 m!636119))

(declare-fun m!636121 () Bool)

(assert (=> b!664860 m!636121))

(assert (=> b!664877 m!636085))

(assert (=> b!664877 m!636087))

(declare-fun m!636123 () Bool)

(assert (=> b!664877 m!636123))

(declare-fun m!636125 () Bool)

(assert (=> b!664877 m!636125))

(assert (=> b!664877 m!636087))

(assert (=> b!664877 m!636123))

(assert (=> b!664877 m!636093))

(assert (=> b!664877 m!636103))

(declare-fun m!636127 () Bool)

(assert (=> b!664861 m!636127))

(assert (=> b!664866 m!636077))

(declare-fun m!636129 () Bool)

(assert (=> b!664873 m!636129))

(push 1)

(assert (not b!664866))

(assert (not start!59976))

(assert (not b!664863))

(assert (not b!664874))

(assert (not b!664868))

(assert (not b!664867))

(assert (not b!664861))

(assert (not b!664872))

(assert (not b!664881))

(assert (not b!664877))

(assert (not b!664865))

(assert (not b!664871))

(assert (not b!664864))

(assert (not b!664883))

(assert (not b!664873))

(assert (not b!664878))

(assert (not b!664879))

(assert (not b!664876))

(assert (not b!664860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

