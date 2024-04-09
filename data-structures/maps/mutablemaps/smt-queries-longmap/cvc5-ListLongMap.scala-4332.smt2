; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60036 () Bool)

(assert start!60036)

(declare-fun b!667109 () Bool)

(declare-fun res!434527 () Bool)

(declare-fun e!381854 () Bool)

(assert (=> b!667109 (=> (not res!434527) (not e!381854))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39039 0))(
  ( (array!39040 (arr!18708 (Array (_ BitVec 32) (_ BitVec 64))) (size!19072 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39039)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!667109 (= res!434527 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19072 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667110 () Bool)

(declare-fun e!381857 () Bool)

(declare-datatypes ((List!12802 0))(
  ( (Nil!12799) (Cons!12798 (h!13843 (_ BitVec 64)) (t!19038 List!12802)) )
))
(declare-fun lt!310717 () List!12802)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3345 (List!12802 (_ BitVec 64)) Bool)

(assert (=> b!667110 (= e!381857 (not (contains!3345 lt!310717 k!2843)))))

(declare-fun b!667111 () Bool)

(declare-fun res!434525 () Bool)

(assert (=> b!667111 (=> (not res!434525) (not e!381854))))

(declare-fun acc!681 () List!12802)

(declare-fun noDuplicate!592 (List!12802) Bool)

(assert (=> b!667111 (= res!434525 (noDuplicate!592 acc!681))))

(declare-fun b!667112 () Bool)

(declare-fun res!434518 () Bool)

(assert (=> b!667112 (=> (not res!434518) (not e!381854))))

(declare-fun arrayNoDuplicates!0 (array!39039 (_ BitVec 32) List!12802) Bool)

(assert (=> b!667112 (= res!434518 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12799))))

(declare-fun b!667113 () Bool)

(declare-fun res!434528 () Bool)

(assert (=> b!667113 (=> (not res!434528) (not e!381854))))

(assert (=> b!667113 (= res!434528 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667114 () Bool)

(declare-fun res!434523 () Bool)

(assert (=> b!667114 (=> (not res!434523) (not e!381854))))

(assert (=> b!667114 (= res!434523 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19072 a!3626))))))

(declare-fun b!667115 () Bool)

(declare-fun res!434530 () Bool)

(assert (=> b!667115 (=> (not res!434530) (not e!381854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667115 (= res!434530 (validKeyInArray!0 k!2843))))

(declare-fun b!667116 () Bool)

(declare-fun e!381850 () Bool)

(assert (=> b!667116 (= e!381850 true)))

(declare-fun lt!310721 () Bool)

(declare-fun e!381852 () Bool)

(assert (=> b!667116 (= lt!310721 e!381852)))

(declare-fun res!434529 () Bool)

(assert (=> b!667116 (=> res!434529 e!381852)))

(declare-fun e!381858 () Bool)

(assert (=> b!667116 (= res!434529 e!381858)))

(declare-fun res!434511 () Bool)

(assert (=> b!667116 (=> (not res!434511) (not e!381858))))

(assert (=> b!667116 (= res!434511 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667117 () Bool)

(declare-fun res!434526 () Bool)

(assert (=> b!667117 (=> (not res!434526) (not e!381854))))

(declare-fun e!381851 () Bool)

(assert (=> b!667117 (= res!434526 e!381851)))

(declare-fun res!434519 () Bool)

(assert (=> b!667117 (=> res!434519 e!381851)))

(declare-fun e!381856 () Bool)

(assert (=> b!667117 (= res!434519 e!381856)))

(declare-fun res!434516 () Bool)

(assert (=> b!667117 (=> (not res!434516) (not e!381856))))

(assert (=> b!667117 (= res!434516 (bvsgt from!3004 i!1382))))

(declare-fun b!667118 () Bool)

(declare-datatypes ((Unit!23335 0))(
  ( (Unit!23336) )
))
(declare-fun e!381859 () Unit!23335)

(declare-fun Unit!23337 () Unit!23335)

(assert (=> b!667118 (= e!381859 Unit!23337)))

(declare-fun lt!310715 () Unit!23335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39039 (_ BitVec 64) (_ BitVec 32)) Unit!23335)

(assert (=> b!667118 (= lt!310715 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667118 false))

(declare-fun b!667119 () Bool)

(declare-fun res!434524 () Bool)

(assert (=> b!667119 (=> res!434524 e!381850)))

(assert (=> b!667119 (= res!434524 (contains!3345 lt!310717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667120 () Bool)

(declare-fun e!381849 () Unit!23335)

(declare-fun lt!310716 () Unit!23335)

(assert (=> b!667120 (= e!381849 lt!310716)))

(declare-fun lt!310722 () Unit!23335)

(declare-fun lemmaListSubSeqRefl!0 (List!12802) Unit!23335)

(assert (=> b!667120 (= lt!310722 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!83 (List!12802 List!12802) Bool)

(assert (=> b!667120 (subseq!83 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39039 List!12802 List!12802 (_ BitVec 32)) Unit!23335)

(declare-fun $colon$colon!214 (List!12802 (_ BitVec 64)) List!12802)

(assert (=> b!667120 (= lt!310716 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!214 acc!681 (select (arr!18708 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667120 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667121 () Bool)

(declare-fun res!434520 () Bool)

(assert (=> b!667121 (=> res!434520 e!381850)))

(assert (=> b!667121 (= res!434520 (contains!3345 lt!310717 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667122 () Bool)

(declare-fun res!434521 () Bool)

(assert (=> b!667122 (=> (not res!434521) (not e!381854))))

(assert (=> b!667122 (= res!434521 (not (contains!3345 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667123 () Bool)

(declare-fun e!381855 () Bool)

(assert (=> b!667123 (= e!381855 (not (contains!3345 acc!681 k!2843)))))

(declare-fun b!667124 () Bool)

(declare-fun Unit!23338 () Unit!23335)

(assert (=> b!667124 (= e!381859 Unit!23338)))

(declare-fun b!667125 () Bool)

(declare-fun Unit!23339 () Unit!23335)

(assert (=> b!667125 (= e!381849 Unit!23339)))

(declare-fun b!667126 () Bool)

(declare-fun res!434513 () Bool)

(assert (=> b!667126 (=> (not res!434513) (not e!381854))))

(assert (=> b!667126 (= res!434513 (not (contains!3345 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667127 () Bool)

(assert (=> b!667127 (= e!381854 (not e!381850))))

(declare-fun res!434515 () Bool)

(assert (=> b!667127 (=> res!434515 e!381850)))

(assert (=> b!667127 (= res!434515 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667127 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310717)))

(declare-fun lt!310718 () Unit!23335)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39039 (_ BitVec 64) (_ BitVec 32) List!12802 List!12802) Unit!23335)

(assert (=> b!667127 (= lt!310718 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310717))))

(declare-fun -!81 (List!12802 (_ BitVec 64)) List!12802)

(assert (=> b!667127 (= (-!81 lt!310717 k!2843) acc!681)))

(assert (=> b!667127 (= lt!310717 ($colon$colon!214 acc!681 k!2843))))

(declare-fun lt!310713 () Unit!23335)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12802) Unit!23335)

(assert (=> b!667127 (= lt!310713 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!667127 (subseq!83 acc!681 acc!681)))

(declare-fun lt!310720 () Unit!23335)

(assert (=> b!667127 (= lt!310720 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667127 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310714 () Unit!23335)

(assert (=> b!667127 (= lt!310714 e!381849)))

(declare-fun c!76667 () Bool)

(assert (=> b!667127 (= c!76667 (validKeyInArray!0 (select (arr!18708 a!3626) from!3004)))))

(declare-fun lt!310719 () Unit!23335)

(assert (=> b!667127 (= lt!310719 e!381859)))

(declare-fun c!76666 () Bool)

(declare-fun arrayContainsKey!0 (array!39039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667127 (= c!76666 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667127 (arrayContainsKey!0 (array!39040 (store (arr!18708 a!3626) i!1382 k!2843) (size!19072 a!3626)) k!2843 from!3004)))

(declare-fun b!667128 () Bool)

(declare-fun res!434531 () Bool)

(assert (=> b!667128 (=> (not res!434531) (not e!381854))))

(assert (=> b!667128 (= res!434531 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667129 () Bool)

(assert (=> b!667129 (= e!381851 e!381855)))

(declare-fun res!434514 () Bool)

(assert (=> b!667129 (=> (not res!434514) (not e!381855))))

(assert (=> b!667129 (= res!434514 (bvsle from!3004 i!1382))))

(declare-fun b!667130 () Bool)

(assert (=> b!667130 (= e!381856 (contains!3345 acc!681 k!2843))))

(declare-fun b!667131 () Bool)

(assert (=> b!667131 (= e!381852 e!381857)))

(declare-fun res!434517 () Bool)

(assert (=> b!667131 (=> (not res!434517) (not e!381857))))

(assert (=> b!667131 (= res!434517 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!434522 () Bool)

(assert (=> start!60036 (=> (not res!434522) (not e!381854))))

(assert (=> start!60036 (= res!434522 (and (bvslt (size!19072 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19072 a!3626))))))

(assert (=> start!60036 e!381854))

(assert (=> start!60036 true))

(declare-fun array_inv!14482 (array!39039) Bool)

(assert (=> start!60036 (array_inv!14482 a!3626)))

(declare-fun b!667132 () Bool)

(declare-fun res!434512 () Bool)

(assert (=> b!667132 (=> res!434512 e!381850)))

(assert (=> b!667132 (= res!434512 (not (noDuplicate!592 lt!310717)))))

(declare-fun b!667133 () Bool)

(assert (=> b!667133 (= e!381858 (contains!3345 lt!310717 k!2843))))

(assert (= (and start!60036 res!434522) b!667111))

(assert (= (and b!667111 res!434525) b!667122))

(assert (= (and b!667122 res!434521) b!667126))

(assert (= (and b!667126 res!434513) b!667117))

(assert (= (and b!667117 res!434516) b!667130))

(assert (= (and b!667117 (not res!434519)) b!667129))

(assert (= (and b!667129 res!434514) b!667123))

(assert (= (and b!667117 res!434526) b!667112))

(assert (= (and b!667112 res!434518) b!667113))

(assert (= (and b!667113 res!434528) b!667114))

(assert (= (and b!667114 res!434523) b!667115))

(assert (= (and b!667115 res!434530) b!667128))

(assert (= (and b!667128 res!434531) b!667109))

(assert (= (and b!667109 res!434527) b!667127))

(assert (= (and b!667127 c!76666) b!667118))

(assert (= (and b!667127 (not c!76666)) b!667124))

(assert (= (and b!667127 c!76667) b!667120))

(assert (= (and b!667127 (not c!76667)) b!667125))

(assert (= (and b!667127 (not res!434515)) b!667132))

(assert (= (and b!667132 (not res!434512)) b!667119))

(assert (= (and b!667119 (not res!434524)) b!667121))

(assert (= (and b!667121 (not res!434520)) b!667116))

(assert (= (and b!667116 res!434511) b!667133))

(assert (= (and b!667116 (not res!434529)) b!667131))

(assert (= (and b!667131 res!434517) b!667110))

(declare-fun m!637755 () Bool)

(assert (=> b!667126 m!637755))

(declare-fun m!637757 () Bool)

(assert (=> b!667133 m!637757))

(declare-fun m!637759 () Bool)

(assert (=> b!667113 m!637759))

(declare-fun m!637761 () Bool)

(assert (=> start!60036 m!637761))

(declare-fun m!637763 () Bool)

(assert (=> b!667122 m!637763))

(declare-fun m!637765 () Bool)

(assert (=> b!667111 m!637765))

(declare-fun m!637767 () Bool)

(assert (=> b!667112 m!637767))

(declare-fun m!637769 () Bool)

(assert (=> b!667120 m!637769))

(declare-fun m!637771 () Bool)

(assert (=> b!667120 m!637771))

(declare-fun m!637773 () Bool)

(assert (=> b!667120 m!637773))

(declare-fun m!637775 () Bool)

(assert (=> b!667120 m!637775))

(assert (=> b!667120 m!637771))

(assert (=> b!667120 m!637773))

(declare-fun m!637777 () Bool)

(assert (=> b!667120 m!637777))

(declare-fun m!637779 () Bool)

(assert (=> b!667120 m!637779))

(declare-fun m!637781 () Bool)

(assert (=> b!667128 m!637781))

(assert (=> b!667110 m!637757))

(declare-fun m!637783 () Bool)

(assert (=> b!667132 m!637783))

(declare-fun m!637785 () Bool)

(assert (=> b!667130 m!637785))

(declare-fun m!637787 () Bool)

(assert (=> b!667118 m!637787))

(declare-fun m!637789 () Bool)

(assert (=> b!667115 m!637789))

(assert (=> b!667127 m!637769))

(assert (=> b!667127 m!637771))

(declare-fun m!637791 () Bool)

(assert (=> b!667127 m!637791))

(declare-fun m!637793 () Bool)

(assert (=> b!667127 m!637793))

(declare-fun m!637795 () Bool)

(assert (=> b!667127 m!637795))

(declare-fun m!637797 () Bool)

(assert (=> b!667127 m!637797))

(assert (=> b!667127 m!637777))

(declare-fun m!637799 () Bool)

(assert (=> b!667127 m!637799))

(declare-fun m!637801 () Bool)

(assert (=> b!667127 m!637801))

(assert (=> b!667127 m!637771))

(declare-fun m!637803 () Bool)

(assert (=> b!667127 m!637803))

(declare-fun m!637805 () Bool)

(assert (=> b!667127 m!637805))

(declare-fun m!637807 () Bool)

(assert (=> b!667127 m!637807))

(assert (=> b!667127 m!637779))

(declare-fun m!637809 () Bool)

(assert (=> b!667121 m!637809))

(declare-fun m!637811 () Bool)

(assert (=> b!667119 m!637811))

(assert (=> b!667123 m!637785))

(push 1)

(assert (not b!667118))

(assert (not b!667132))

(assert (not b!667130))

(assert (not b!667133))

(assert (not b!667111))

(assert (not b!667120))

(assert (not b!667127))

(assert (not b!667128))

(assert (not b!667113))

(assert (not start!60036))

(assert (not b!667112))

(assert (not b!667122))

(assert (not b!667115))

(assert (not b!667126))

(assert (not b!667123))

(assert (not b!667121))

(assert (not b!667110))

(assert (not b!667119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

