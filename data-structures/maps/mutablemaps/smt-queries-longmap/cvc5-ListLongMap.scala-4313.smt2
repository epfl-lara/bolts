; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59922 () Bool)

(assert start!59922)

(declare-fun b!663135 () Bool)

(declare-datatypes ((Unit!23050 0))(
  ( (Unit!23051) )
))
(declare-fun e!380520 () Unit!23050)

(declare-fun Unit!23052 () Unit!23050)

(assert (=> b!663135 (= e!380520 Unit!23052)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!309202 () Unit!23050)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!38925 0))(
  ( (array!38926 (arr!18651 (Array (_ BitVec 32) (_ BitVec 64))) (size!19015 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38925)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38925 (_ BitVec 64) (_ BitVec 32)) Unit!23050)

(assert (=> b!663135 (= lt!309202 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663135 false))

(declare-fun b!663136 () Bool)

(declare-fun e!380524 () Unit!23050)

(declare-fun lt!309204 () Unit!23050)

(assert (=> b!663136 (= e!380524 lt!309204)))

(declare-fun lt!309203 () Unit!23050)

(declare-datatypes ((List!12745 0))(
  ( (Nil!12742) (Cons!12741 (h!13786 (_ BitVec 64)) (t!18981 List!12745)) )
))
(declare-fun acc!681 () List!12745)

(declare-fun lemmaListSubSeqRefl!0 (List!12745) Unit!23050)

(assert (=> b!663136 (= lt!309203 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!26 (List!12745 List!12745) Bool)

(assert (=> b!663136 (subseq!26 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38925 List!12745 List!12745 (_ BitVec 32)) Unit!23050)

(declare-fun $colon$colon!157 (List!12745 (_ BitVec 64)) List!12745)

(assert (=> b!663136 (= lt!309204 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!157 acc!681 (select (arr!18651 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38925 (_ BitVec 32) List!12745) Bool)

(assert (=> b!663136 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663137 () Bool)

(declare-fun e!380523 () Bool)

(declare-fun contains!3288 (List!12745 (_ BitVec 64)) Bool)

(assert (=> b!663137 (= e!380523 (not (contains!3288 acc!681 k!2843)))))

(declare-fun b!663138 () Bool)

(declare-fun res!431227 () Bool)

(declare-fun e!380519 () Bool)

(assert (=> b!663138 (=> (not res!431227) (not e!380519))))

(assert (=> b!663138 (= res!431227 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12742))))

(declare-fun b!663139 () Bool)

(declare-fun res!431222 () Bool)

(assert (=> b!663139 (=> (not res!431222) (not e!380519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663139 (= res!431222 (validKeyInArray!0 k!2843))))

(declare-fun b!663140 () Bool)

(assert (=> b!663140 (= e!380519 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!309200 () Unit!23050)

(assert (=> b!663140 (= lt!309200 e!380524)))

(declare-fun c!76324 () Bool)

(assert (=> b!663140 (= c!76324 (validKeyInArray!0 (select (arr!18651 a!3626) from!3004)))))

(declare-fun lt!309201 () Unit!23050)

(assert (=> b!663140 (= lt!309201 e!380520)))

(declare-fun c!76325 () Bool)

(declare-fun arrayContainsKey!0 (array!38925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663140 (= c!76325 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663140 (arrayContainsKey!0 (array!38926 (store (arr!18651 a!3626) i!1382 k!2843) (size!19015 a!3626)) k!2843 from!3004)))

(declare-fun b!663141 () Bool)

(declare-fun e!380521 () Bool)

(assert (=> b!663141 (= e!380521 e!380523)))

(declare-fun res!431232 () Bool)

(assert (=> b!663141 (=> (not res!431232) (not e!380523))))

(assert (=> b!663141 (= res!431232 (bvsle from!3004 i!1382))))

(declare-fun res!431229 () Bool)

(assert (=> start!59922 (=> (not res!431229) (not e!380519))))

(assert (=> start!59922 (= res!431229 (and (bvslt (size!19015 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19015 a!3626))))))

(assert (=> start!59922 e!380519))

(assert (=> start!59922 true))

(declare-fun array_inv!14425 (array!38925) Bool)

(assert (=> start!59922 (array_inv!14425 a!3626)))

(declare-fun b!663142 () Bool)

(declare-fun Unit!23053 () Unit!23050)

(assert (=> b!663142 (= e!380520 Unit!23053)))

(declare-fun b!663143 () Bool)

(declare-fun res!431225 () Bool)

(assert (=> b!663143 (=> (not res!431225) (not e!380519))))

(assert (=> b!663143 (= res!431225 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19015 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663144 () Bool)

(declare-fun res!431228 () Bool)

(assert (=> b!663144 (=> (not res!431228) (not e!380519))))

(assert (=> b!663144 (= res!431228 (not (contains!3288 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663145 () Bool)

(declare-fun res!431226 () Bool)

(assert (=> b!663145 (=> (not res!431226) (not e!380519))))

(assert (=> b!663145 (= res!431226 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19015 a!3626))))))

(declare-fun b!663146 () Bool)

(declare-fun Unit!23054 () Unit!23050)

(assert (=> b!663146 (= e!380524 Unit!23054)))

(declare-fun b!663147 () Bool)

(declare-fun res!431230 () Bool)

(assert (=> b!663147 (=> (not res!431230) (not e!380519))))

(assert (=> b!663147 (= res!431230 e!380521)))

(declare-fun res!431221 () Bool)

(assert (=> b!663147 (=> res!431221 e!380521)))

(declare-fun e!380522 () Bool)

(assert (=> b!663147 (= res!431221 e!380522)))

(declare-fun res!431223 () Bool)

(assert (=> b!663147 (=> (not res!431223) (not e!380522))))

(assert (=> b!663147 (= res!431223 (bvsgt from!3004 i!1382))))

(declare-fun b!663148 () Bool)

(declare-fun res!431231 () Bool)

(assert (=> b!663148 (=> (not res!431231) (not e!380519))))

(assert (=> b!663148 (= res!431231 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663149 () Bool)

(declare-fun res!431233 () Bool)

(assert (=> b!663149 (=> (not res!431233) (not e!380519))))

(assert (=> b!663149 (= res!431233 (not (contains!3288 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663150 () Bool)

(assert (=> b!663150 (= e!380522 (contains!3288 acc!681 k!2843))))

(declare-fun b!663151 () Bool)

(declare-fun res!431224 () Bool)

(assert (=> b!663151 (=> (not res!431224) (not e!380519))))

(declare-fun noDuplicate!535 (List!12745) Bool)

(assert (=> b!663151 (= res!431224 (noDuplicate!535 acc!681))))

(declare-fun b!663152 () Bool)

(declare-fun res!431234 () Bool)

(assert (=> b!663152 (=> (not res!431234) (not e!380519))))

(assert (=> b!663152 (= res!431234 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59922 res!431229) b!663151))

(assert (= (and b!663151 res!431224) b!663149))

(assert (= (and b!663149 res!431233) b!663144))

(assert (= (and b!663144 res!431228) b!663147))

(assert (= (and b!663147 res!431223) b!663150))

(assert (= (and b!663147 (not res!431221)) b!663141))

(assert (= (and b!663141 res!431232) b!663137))

(assert (= (and b!663147 res!431230) b!663138))

(assert (= (and b!663138 res!431227) b!663152))

(assert (= (and b!663152 res!431234) b!663145))

(assert (= (and b!663145 res!431226) b!663139))

(assert (= (and b!663139 res!431222) b!663148))

(assert (= (and b!663148 res!431231) b!663143))

(assert (= (and b!663143 res!431225) b!663140))

(assert (= (and b!663140 c!76325) b!663135))

(assert (= (and b!663140 (not c!76325)) b!663142))

(assert (= (and b!663140 c!76324) b!663136))

(assert (= (and b!663140 (not c!76324)) b!663146))

(declare-fun m!634803 () Bool)

(assert (=> b!663138 m!634803))

(declare-fun m!634805 () Bool)

(assert (=> b!663152 m!634805))

(declare-fun m!634807 () Bool)

(assert (=> b!663137 m!634807))

(declare-fun m!634809 () Bool)

(assert (=> b!663140 m!634809))

(declare-fun m!634811 () Bool)

(assert (=> b!663140 m!634811))

(declare-fun m!634813 () Bool)

(assert (=> b!663140 m!634813))

(assert (=> b!663140 m!634809))

(declare-fun m!634815 () Bool)

(assert (=> b!663140 m!634815))

(declare-fun m!634817 () Bool)

(assert (=> b!663140 m!634817))

(assert (=> b!663150 m!634807))

(declare-fun m!634819 () Bool)

(assert (=> b!663149 m!634819))

(declare-fun m!634821 () Bool)

(assert (=> b!663144 m!634821))

(declare-fun m!634823 () Bool)

(assert (=> b!663139 m!634823))

(declare-fun m!634825 () Bool)

(assert (=> b!663148 m!634825))

(declare-fun m!634827 () Bool)

(assert (=> b!663151 m!634827))

(declare-fun m!634829 () Bool)

(assert (=> b!663135 m!634829))

(declare-fun m!634831 () Bool)

(assert (=> start!59922 m!634831))

(declare-fun m!634833 () Bool)

(assert (=> b!663136 m!634833))

(assert (=> b!663136 m!634809))

(declare-fun m!634835 () Bool)

(assert (=> b!663136 m!634835))

(declare-fun m!634837 () Bool)

(assert (=> b!663136 m!634837))

(assert (=> b!663136 m!634809))

(assert (=> b!663136 m!634835))

(declare-fun m!634839 () Bool)

(assert (=> b!663136 m!634839))

(declare-fun m!634841 () Bool)

(assert (=> b!663136 m!634841))

(push 1)

