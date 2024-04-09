; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59920 () Bool)

(assert start!59920)

(declare-fun b!663077 () Bool)

(declare-fun e!380503 () Bool)

(declare-datatypes ((List!12744 0))(
  ( (Nil!12741) (Cons!12740 (h!13785 (_ BitVec 64)) (t!18980 List!12744)) )
))
(declare-fun acc!681 () List!12744)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3287 (List!12744 (_ BitVec 64)) Bool)

(assert (=> b!663077 (= e!380503 (contains!3287 acc!681 k!2843))))

(declare-fun b!663078 () Bool)

(declare-fun res!431180 () Bool)

(declare-fun e!380501 () Bool)

(assert (=> b!663078 (=> (not res!431180) (not e!380501))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38923 0))(
  ( (array!38924 (arr!18650 (Array (_ BitVec 32) (_ BitVec 64))) (size!19014 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38923)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!663078 (= res!431180 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19014 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!431173 () Bool)

(assert (=> start!59920 (=> (not res!431173) (not e!380501))))

(assert (=> start!59920 (= res!431173 (and (bvslt (size!19014 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19014 a!3626))))))

(assert (=> start!59920 e!380501))

(assert (=> start!59920 true))

(declare-fun array_inv!14424 (array!38923) Bool)

(assert (=> start!59920 (array_inv!14424 a!3626)))

(declare-fun b!663079 () Bool)

(declare-fun e!380499 () Bool)

(declare-fun e!380502 () Bool)

(assert (=> b!663079 (= e!380499 e!380502)))

(declare-fun res!431177 () Bool)

(assert (=> b!663079 (=> (not res!431177) (not e!380502))))

(assert (=> b!663079 (= res!431177 (bvsle from!3004 i!1382))))

(declare-fun b!663080 () Bool)

(declare-fun res!431183 () Bool)

(assert (=> b!663080 (=> (not res!431183) (not e!380501))))

(declare-fun arrayNoDuplicates!0 (array!38923 (_ BitVec 32) List!12744) Bool)

(assert (=> b!663080 (= res!431183 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663081 () Bool)

(assert (=> b!663081 (= e!380502 (not (contains!3287 acc!681 k!2843)))))

(declare-fun b!663082 () Bool)

(declare-fun res!431192 () Bool)

(assert (=> b!663082 (=> (not res!431192) (not e!380501))))

(assert (=> b!663082 (= res!431192 (not (contains!3287 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663083 () Bool)

(declare-datatypes ((Unit!23046 0))(
  ( (Unit!23047) )
))
(declare-fun e!380498 () Unit!23046)

(declare-fun Unit!23048 () Unit!23046)

(assert (=> b!663083 (= e!380498 Unit!23048)))

(declare-fun b!663084 () Bool)

(declare-fun e!380496 () Bool)

(declare-fun e!380497 () Bool)

(assert (=> b!663084 (= e!380496 e!380497)))

(declare-fun res!431175 () Bool)

(assert (=> b!663084 (=> res!431175 e!380497)))

(assert (=> b!663084 (= res!431175 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!309186 () List!12744)

(declare-fun $colon$colon!156 (List!12744 (_ BitVec 64)) List!12744)

(assert (=> b!663084 (= lt!309186 ($colon$colon!156 acc!681 (select (arr!18650 a!3626) from!3004)))))

(declare-fun subseq!25 (List!12744 List!12744) Bool)

(assert (=> b!663084 (subseq!25 acc!681 acc!681)))

(declare-fun lt!309184 () Unit!23046)

(declare-fun lemmaListSubSeqRefl!0 (List!12744) Unit!23046)

(assert (=> b!663084 (= lt!309184 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!663085 () Bool)

(declare-fun res!431186 () Bool)

(assert (=> b!663085 (=> (not res!431186) (not e!380501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663085 (= res!431186 (validKeyInArray!0 k!2843))))

(declare-fun b!663086 () Bool)

(declare-fun res!431185 () Bool)

(assert (=> b!663086 (=> res!431185 e!380497)))

(assert (=> b!663086 (= res!431185 (contains!3287 lt!309186 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!663087 () Bool)

(assert (=> b!663087 (= e!380497 true)))

(declare-fun lt!309185 () Bool)

(assert (=> b!663087 (= lt!309185 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309186))))

(declare-fun lt!309188 () Unit!23046)

(declare-fun noDuplicateSubseq!25 (List!12744 List!12744) Unit!23046)

(assert (=> b!663087 (= lt!309188 (noDuplicateSubseq!25 acc!681 lt!309186))))

(declare-fun b!663088 () Bool)

(declare-fun res!431188 () Bool)

(assert (=> b!663088 (=> (not res!431188) (not e!380501))))

(declare-fun noDuplicate!534 (List!12744) Bool)

(assert (=> b!663088 (= res!431188 (noDuplicate!534 acc!681))))

(declare-fun b!663089 () Bool)

(assert (=> b!663089 (= e!380501 (not e!380496))))

(declare-fun res!431178 () Bool)

(assert (=> b!663089 (=> res!431178 e!380496)))

(assert (=> b!663089 (= res!431178 (not (validKeyInArray!0 (select (arr!18650 a!3626) from!3004))))))

(declare-fun lt!309187 () Unit!23046)

(assert (=> b!663089 (= lt!309187 e!380498)))

(declare-fun c!76319 () Bool)

(declare-fun arrayContainsKey!0 (array!38923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663089 (= c!76319 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663089 (arrayContainsKey!0 (array!38924 (store (arr!18650 a!3626) i!1382 k!2843) (size!19014 a!3626)) k!2843 from!3004)))

(declare-fun b!663090 () Bool)

(declare-fun res!431190 () Bool)

(assert (=> b!663090 (=> (not res!431190) (not e!380501))))

(assert (=> b!663090 (= res!431190 e!380499)))

(declare-fun res!431189 () Bool)

(assert (=> b!663090 (=> res!431189 e!380499)))

(assert (=> b!663090 (= res!431189 e!380503)))

(declare-fun res!431182 () Bool)

(assert (=> b!663090 (=> (not res!431182) (not e!380503))))

(assert (=> b!663090 (= res!431182 (bvsgt from!3004 i!1382))))

(declare-fun b!663091 () Bool)

(declare-fun res!431181 () Bool)

(assert (=> b!663091 (=> (not res!431181) (not e!380501))))

(assert (=> b!663091 (= res!431181 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12741))))

(declare-fun b!663092 () Bool)

(declare-fun res!431176 () Bool)

(assert (=> b!663092 (=> res!431176 e!380497)))

(assert (=> b!663092 (= res!431176 (not (subseq!25 acc!681 lt!309186)))))

(declare-fun b!663093 () Bool)

(declare-fun res!431187 () Bool)

(assert (=> b!663093 (=> (not res!431187) (not e!380501))))

(assert (=> b!663093 (= res!431187 (not (contains!3287 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663094 () Bool)

(declare-fun Unit!23049 () Unit!23046)

(assert (=> b!663094 (= e!380498 Unit!23049)))

(declare-fun lt!309189 () Unit!23046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38923 (_ BitVec 64) (_ BitVec 32)) Unit!23046)

(assert (=> b!663094 (= lt!309189 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663094 false))

(declare-fun b!663095 () Bool)

(declare-fun res!431184 () Bool)

(assert (=> b!663095 (=> res!431184 e!380497)))

(assert (=> b!663095 (= res!431184 (contains!3287 lt!309186 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!663096 () Bool)

(declare-fun res!431179 () Bool)

(assert (=> b!663096 (=> (not res!431179) (not e!380501))))

(assert (=> b!663096 (= res!431179 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663097 () Bool)

(declare-fun res!431191 () Bool)

(assert (=> b!663097 (=> (not res!431191) (not e!380501))))

(assert (=> b!663097 (= res!431191 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19014 a!3626))))))

(declare-fun b!663098 () Bool)

(declare-fun res!431174 () Bool)

(assert (=> b!663098 (=> res!431174 e!380497)))

(assert (=> b!663098 (= res!431174 (not (noDuplicate!534 lt!309186)))))

(assert (= (and start!59920 res!431173) b!663088))

(assert (= (and b!663088 res!431188) b!663082))

(assert (= (and b!663082 res!431192) b!663093))

(assert (= (and b!663093 res!431187) b!663090))

(assert (= (and b!663090 res!431182) b!663077))

(assert (= (and b!663090 (not res!431189)) b!663079))

(assert (= (and b!663079 res!431177) b!663081))

(assert (= (and b!663090 res!431190) b!663091))

(assert (= (and b!663091 res!431181) b!663080))

(assert (= (and b!663080 res!431183) b!663097))

(assert (= (and b!663097 res!431191) b!663085))

(assert (= (and b!663085 res!431186) b!663096))

(assert (= (and b!663096 res!431179) b!663078))

(assert (= (and b!663078 res!431180) b!663089))

(assert (= (and b!663089 c!76319) b!663094))

(assert (= (and b!663089 (not c!76319)) b!663083))

(assert (= (and b!663089 (not res!431178)) b!663084))

(assert (= (and b!663084 (not res!431175)) b!663098))

(assert (= (and b!663098 (not res!431174)) b!663086))

(assert (= (and b!663086 (not res!431185)) b!663095))

(assert (= (and b!663095 (not res!431184)) b!663092))

(assert (= (and b!663092 (not res!431176)) b!663087))

(declare-fun m!634755 () Bool)

(assert (=> b!663084 m!634755))

(assert (=> b!663084 m!634755))

(declare-fun m!634757 () Bool)

(assert (=> b!663084 m!634757))

(declare-fun m!634759 () Bool)

(assert (=> b!663084 m!634759))

(declare-fun m!634761 () Bool)

(assert (=> b!663084 m!634761))

(declare-fun m!634763 () Bool)

(assert (=> b!663095 m!634763))

(declare-fun m!634765 () Bool)

(assert (=> b!663098 m!634765))

(declare-fun m!634767 () Bool)

(assert (=> start!59920 m!634767))

(declare-fun m!634769 () Bool)

(assert (=> b!663092 m!634769))

(declare-fun m!634771 () Bool)

(assert (=> b!663093 m!634771))

(declare-fun m!634773 () Bool)

(assert (=> b!663091 m!634773))

(declare-fun m!634775 () Bool)

(assert (=> b!663085 m!634775))

(declare-fun m!634777 () Bool)

(assert (=> b!663088 m!634777))

(declare-fun m!634779 () Bool)

(assert (=> b!663096 m!634779))

(declare-fun m!634781 () Bool)

(assert (=> b!663077 m!634781))

(assert (=> b!663089 m!634755))

(declare-fun m!634783 () Bool)

(assert (=> b!663089 m!634783))

(declare-fun m!634785 () Bool)

(assert (=> b!663089 m!634785))

(assert (=> b!663089 m!634755))

(declare-fun m!634787 () Bool)

(assert (=> b!663089 m!634787))

(declare-fun m!634789 () Bool)

(assert (=> b!663089 m!634789))

(declare-fun m!634791 () Bool)

(assert (=> b!663082 m!634791))

(declare-fun m!634793 () Bool)

(assert (=> b!663094 m!634793))

(declare-fun m!634795 () Bool)

(assert (=> b!663086 m!634795))

(declare-fun m!634797 () Bool)

(assert (=> b!663087 m!634797))

(declare-fun m!634799 () Bool)

(assert (=> b!663087 m!634799))

(declare-fun m!634801 () Bool)

(assert (=> b!663080 m!634801))

(assert (=> b!663081 m!634781))

(push 1)

