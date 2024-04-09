; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59958 () Bool)

(assert start!59958)

(declare-fun b!664184 () Bool)

(declare-fun res!432062 () Bool)

(declare-fun e!380909 () Bool)

(assert (=> b!664184 (=> (not res!432062) (not e!380909))))

(declare-datatypes ((array!38961 0))(
  ( (array!38962 (arr!18669 (Array (_ BitVec 32) (_ BitVec 64))) (size!19033 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38961)

(declare-datatypes ((List!12763 0))(
  ( (Nil!12760) (Cons!12759 (h!13804 (_ BitVec 64)) (t!18999 List!12763)) )
))
(declare-fun arrayNoDuplicates!0 (array!38961 (_ BitVec 32) List!12763) Bool)

(assert (=> b!664184 (= res!432062 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12760))))

(declare-fun b!664185 () Bool)

(declare-fun res!432071 () Bool)

(declare-fun e!380913 () Bool)

(assert (=> b!664185 (=> res!432071 e!380913)))

(declare-fun lt!309545 () List!12763)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3306 (List!12763 (_ BitVec 64)) Bool)

(assert (=> b!664185 (= res!432071 (not (contains!3306 lt!309545 k!2843)))))

(declare-fun b!664186 () Bool)

(declare-fun res!432061 () Bool)

(assert (=> b!664186 (=> (not res!432061) (not e!380909))))

(declare-fun acc!681 () List!12763)

(assert (=> b!664186 (= res!432061 (not (contains!3306 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664187 () Bool)

(declare-fun e!380908 () Bool)

(declare-fun e!380910 () Bool)

(assert (=> b!664187 (= e!380908 e!380910)))

(declare-fun res!432068 () Bool)

(assert (=> b!664187 (=> (not res!432068) (not e!380910))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664187 (= res!432068 (bvsle from!3004 i!1382))))

(declare-fun b!664188 () Bool)

(declare-fun res!432059 () Bool)

(assert (=> b!664188 (=> res!432059 e!380913)))

(assert (=> b!664188 (= res!432059 (contains!3306 acc!681 k!2843))))

(declare-fun b!664189 () Bool)

(declare-fun res!432069 () Bool)

(assert (=> b!664189 (=> (not res!432069) (not e!380909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664189 (= res!432069 (validKeyInArray!0 k!2843))))

(declare-fun b!664190 () Bool)

(declare-datatypes ((Unit!23140 0))(
  ( (Unit!23141) )
))
(declare-fun e!380911 () Unit!23140)

(declare-fun Unit!23142 () Unit!23140)

(assert (=> b!664190 (= e!380911 Unit!23142)))

(declare-fun lt!309550 () Unit!23140)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38961 (_ BitVec 64) (_ BitVec 32)) Unit!23140)

(assert (=> b!664190 (= lt!309550 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664190 false))

(declare-fun b!664191 () Bool)

(declare-fun Unit!23143 () Unit!23140)

(assert (=> b!664191 (= e!380911 Unit!23143)))

(declare-fun b!664192 () Bool)

(declare-fun res!432072 () Bool)

(assert (=> b!664192 (=> (not res!432072) (not e!380909))))

(declare-fun arrayContainsKey!0 (array!38961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664192 (= res!432072 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664193 () Bool)

(declare-fun res!432066 () Bool)

(assert (=> b!664193 (=> (not res!432066) (not e!380909))))

(declare-fun noDuplicate!553 (List!12763) Bool)

(assert (=> b!664193 (= res!432066 (noDuplicate!553 acc!681))))

(declare-fun b!664194 () Bool)

(declare-fun res!432067 () Bool)

(assert (=> b!664194 (=> (not res!432067) (not e!380909))))

(assert (=> b!664194 (= res!432067 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19033 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664195 () Bool)

(declare-fun res!432063 () Bool)

(assert (=> b!664195 (=> res!432063 e!380913)))

(assert (=> b!664195 (= res!432063 (contains!3306 lt!309545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!432060 () Bool)

(assert (=> start!59958 (=> (not res!432060) (not e!380909))))

(assert (=> start!59958 (= res!432060 (and (bvslt (size!19033 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19033 a!3626))))))

(assert (=> start!59958 e!380909))

(assert (=> start!59958 true))

(declare-fun array_inv!14443 (array!38961) Bool)

(assert (=> start!59958 (array_inv!14443 a!3626)))

(declare-fun b!664196 () Bool)

(declare-fun e!380907 () Unit!23140)

(declare-fun Unit!23144 () Unit!23140)

(assert (=> b!664196 (= e!380907 Unit!23144)))

(declare-fun b!664197 () Bool)

(declare-fun res!432054 () Bool)

(assert (=> b!664197 (=> (not res!432054) (not e!380909))))

(assert (=> b!664197 (= res!432054 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664198 () Bool)

(assert (=> b!664198 (= e!380913 true)))

(declare-fun lt!309552 () Bool)

(assert (=> b!664198 (= lt!309552 (contains!3306 lt!309545 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664199 () Bool)

(declare-fun res!432073 () Bool)

(assert (=> b!664199 (=> (not res!432073) (not e!380909))))

(assert (=> b!664199 (= res!432073 e!380908)))

(declare-fun res!432065 () Bool)

(assert (=> b!664199 (=> res!432065 e!380908)))

(declare-fun e!380914 () Bool)

(assert (=> b!664199 (= res!432065 e!380914)))

(declare-fun res!432057 () Bool)

(assert (=> b!664199 (=> (not res!432057) (not e!380914))))

(assert (=> b!664199 (= res!432057 (bvsgt from!3004 i!1382))))

(declare-fun b!664200 () Bool)

(declare-fun res!432064 () Bool)

(assert (=> b!664200 (=> res!432064 e!380913)))

(declare-fun lt!309548 () Bool)

(assert (=> b!664200 (= res!432064 lt!309548)))

(declare-fun b!664201 () Bool)

(declare-fun res!432056 () Bool)

(assert (=> b!664201 (=> (not res!432056) (not e!380909))))

(assert (=> b!664201 (= res!432056 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19033 a!3626))))))

(declare-fun b!664202 () Bool)

(assert (=> b!664202 (= e!380909 (not e!380913))))

(declare-fun res!432055 () Bool)

(assert (=> b!664202 (=> res!432055 e!380913)))

(assert (=> b!664202 (= res!432055 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!42 (List!12763 (_ BitVec 64)) List!12763)

(assert (=> b!664202 (= (-!42 lt!309545 k!2843) acc!681)))

(declare-fun $colon$colon!175 (List!12763 (_ BitVec 64)) List!12763)

(assert (=> b!664202 (= lt!309545 ($colon$colon!175 acc!681 k!2843))))

(declare-fun lt!309549 () Unit!23140)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12763) Unit!23140)

(assert (=> b!664202 (= lt!309549 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!44 (List!12763 List!12763) Bool)

(assert (=> b!664202 (subseq!44 acc!681 acc!681)))

(declare-fun lt!309544 () Unit!23140)

(declare-fun lemmaListSubSeqRefl!0 (List!12763) Unit!23140)

(assert (=> b!664202 (= lt!309544 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664202 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309546 () Unit!23140)

(assert (=> b!664202 (= lt!309546 e!380907)))

(declare-fun c!76432 () Bool)

(assert (=> b!664202 (= c!76432 (validKeyInArray!0 (select (arr!18669 a!3626) from!3004)))))

(declare-fun lt!309543 () Unit!23140)

(assert (=> b!664202 (= lt!309543 e!380911)))

(declare-fun c!76433 () Bool)

(assert (=> b!664202 (= c!76433 lt!309548)))

(assert (=> b!664202 (= lt!309548 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664202 (arrayContainsKey!0 (array!38962 (store (arr!18669 a!3626) i!1382 k!2843) (size!19033 a!3626)) k!2843 from!3004)))

(declare-fun b!664203 () Bool)

(declare-fun lt!309547 () Unit!23140)

(assert (=> b!664203 (= e!380907 lt!309547)))

(declare-fun lt!309551 () Unit!23140)

(assert (=> b!664203 (= lt!309551 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664203 (subseq!44 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38961 List!12763 List!12763 (_ BitVec 32)) Unit!23140)

(assert (=> b!664203 (= lt!309547 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!175 acc!681 (select (arr!18669 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664203 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664204 () Bool)

(declare-fun res!432070 () Bool)

(assert (=> b!664204 (=> res!432070 e!380913)))

(assert (=> b!664204 (= res!432070 (not (subseq!44 acc!681 lt!309545)))))

(declare-fun b!664205 () Bool)

(assert (=> b!664205 (= e!380910 (not (contains!3306 acc!681 k!2843)))))

(declare-fun b!664206 () Bool)

(declare-fun res!432058 () Bool)

(assert (=> b!664206 (=> (not res!432058) (not e!380909))))

(assert (=> b!664206 (= res!432058 (not (contains!3306 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664207 () Bool)

(assert (=> b!664207 (= e!380914 (contains!3306 acc!681 k!2843))))

(declare-fun b!664208 () Bool)

(declare-fun res!432074 () Bool)

(assert (=> b!664208 (=> res!432074 e!380913)))

(assert (=> b!664208 (= res!432074 (not (noDuplicate!553 lt!309545)))))

(assert (= (and start!59958 res!432060) b!664193))

(assert (= (and b!664193 res!432066) b!664186))

(assert (= (and b!664186 res!432061) b!664206))

(assert (= (and b!664206 res!432058) b!664199))

(assert (= (and b!664199 res!432057) b!664207))

(assert (= (and b!664199 (not res!432065)) b!664187))

(assert (= (and b!664187 res!432068) b!664205))

(assert (= (and b!664199 res!432073) b!664184))

(assert (= (and b!664184 res!432062) b!664197))

(assert (= (and b!664197 res!432054) b!664201))

(assert (= (and b!664201 res!432056) b!664189))

(assert (= (and b!664189 res!432069) b!664192))

(assert (= (and b!664192 res!432072) b!664194))

(assert (= (and b!664194 res!432067) b!664202))

(assert (= (and b!664202 c!76433) b!664190))

(assert (= (and b!664202 (not c!76433)) b!664191))

(assert (= (and b!664202 c!76432) b!664203))

(assert (= (and b!664202 (not c!76432)) b!664196))

(assert (= (and b!664202 (not res!432055)) b!664208))

(assert (= (and b!664208 (not res!432074)) b!664200))

(assert (= (and b!664200 (not res!432064)) b!664188))

(assert (= (and b!664188 (not res!432059)) b!664204))

(assert (= (and b!664204 (not res!432070)) b!664185))

(assert (= (and b!664185 (not res!432071)) b!664195))

(assert (= (and b!664195 (not res!432063)) b!664198))

(declare-fun m!635571 () Bool)

(assert (=> b!664188 m!635571))

(declare-fun m!635573 () Bool)

(assert (=> b!664198 m!635573))

(declare-fun m!635575 () Bool)

(assert (=> b!664195 m!635575))

(declare-fun m!635577 () Bool)

(assert (=> start!59958 m!635577))

(declare-fun m!635579 () Bool)

(assert (=> b!664185 m!635579))

(declare-fun m!635581 () Bool)

(assert (=> b!664189 m!635581))

(declare-fun m!635583 () Bool)

(assert (=> b!664193 m!635583))

(assert (=> b!664205 m!635571))

(declare-fun m!635585 () Bool)

(assert (=> b!664190 m!635585))

(declare-fun m!635587 () Bool)

(assert (=> b!664203 m!635587))

(declare-fun m!635589 () Bool)

(assert (=> b!664203 m!635589))

(declare-fun m!635591 () Bool)

(assert (=> b!664203 m!635591))

(declare-fun m!635593 () Bool)

(assert (=> b!664203 m!635593))

(assert (=> b!664203 m!635589))

(assert (=> b!664203 m!635591))

(declare-fun m!635595 () Bool)

(assert (=> b!664203 m!635595))

(declare-fun m!635597 () Bool)

(assert (=> b!664203 m!635597))

(assert (=> b!664207 m!635571))

(declare-fun m!635599 () Bool)

(assert (=> b!664184 m!635599))

(declare-fun m!635601 () Bool)

(assert (=> b!664192 m!635601))

(declare-fun m!635603 () Bool)

(assert (=> b!664204 m!635603))

(declare-fun m!635605 () Bool)

(assert (=> b!664208 m!635605))

(declare-fun m!635607 () Bool)

(assert (=> b!664206 m!635607))

(declare-fun m!635609 () Bool)

(assert (=> b!664186 m!635609))

(declare-fun m!635611 () Bool)

(assert (=> b!664197 m!635611))

(assert (=> b!664202 m!635587))

(assert (=> b!664202 m!635589))

(declare-fun m!635613 () Bool)

(assert (=> b!664202 m!635613))

(declare-fun m!635615 () Bool)

(assert (=> b!664202 m!635615))

(assert (=> b!664202 m!635595))

(declare-fun m!635617 () Bool)

(assert (=> b!664202 m!635617))

(declare-fun m!635619 () Bool)

(assert (=> b!664202 m!635619))

(declare-fun m!635621 () Bool)

(assert (=> b!664202 m!635621))

(assert (=> b!664202 m!635589))

(declare-fun m!635623 () Bool)

(assert (=> b!664202 m!635623))

(declare-fun m!635625 () Bool)

(assert (=> b!664202 m!635625))

(assert (=> b!664202 m!635597))

(push 1)

(assert (not b!664193))

(assert (not b!664185))

(assert (not b!664188))

(assert (not b!664186))

(assert (not b!664184))

(assert (not b!664202))

(assert (not b!664203))

(assert (not start!59958))

(assert (not b!664206))

(assert (not b!664198))

(assert (not b!664197))

(assert (not b!664208))

(assert (not b!664207))

(assert (not b!664192))

(assert (not b!664195))

(assert (not b!664205))

(assert (not b!664204))

(assert (not b!664190))

(assert (not b!664189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

