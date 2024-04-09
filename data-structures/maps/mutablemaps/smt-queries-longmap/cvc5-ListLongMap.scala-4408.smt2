; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60876 () Bool)

(assert start!60876)

(declare-fun b!682188 () Bool)

(declare-fun e!388739 () Bool)

(declare-datatypes ((List!13030 0))(
  ( (Nil!13027) (Cons!13026 (h!14071 (_ BitVec 64)) (t!19281 List!13030)) )
))
(declare-fun acc!681 () List!13030)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3573 (List!13030 (_ BitVec 64)) Bool)

(assert (=> b!682188 (= e!388739 (contains!3573 acc!681 k!2843))))

(declare-fun b!682189 () Bool)

(declare-fun res!448379 () Bool)

(declare-fun e!388738 () Bool)

(assert (=> b!682189 (=> (not res!448379) (not e!388738))))

(assert (=> b!682189 (= res!448379 (not (contains!3573 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682190 () Bool)

(declare-fun res!448378 () Bool)

(assert (=> b!682190 (=> (not res!448378) (not e!388738))))

(declare-datatypes ((array!39516 0))(
  ( (array!39517 (arr!18936 (Array (_ BitVec 32) (_ BitVec 64))) (size!19300 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39516)

(declare-fun arrayNoDuplicates!0 (array!39516 (_ BitVec 32) List!13030) Bool)

(assert (=> b!682190 (= res!448378 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13027))))

(declare-fun b!682191 () Bool)

(declare-fun e!388740 () Bool)

(assert (=> b!682191 (= e!388740 (not (contains!3573 acc!681 k!2843)))))

(declare-fun b!682192 () Bool)

(declare-fun res!448373 () Bool)

(assert (=> b!682192 (=> (not res!448373) (not e!388738))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!682192 (= res!448373 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19300 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!448377 () Bool)

(assert (=> start!60876 (=> (not res!448377) (not e!388738))))

(assert (=> start!60876 (= res!448377 (and (bvslt (size!19300 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19300 a!3626))))))

(assert (=> start!60876 e!388738))

(assert (=> start!60876 true))

(declare-fun array_inv!14710 (array!39516) Bool)

(assert (=> start!60876 (array_inv!14710 a!3626)))

(declare-fun b!682193 () Bool)

(declare-datatypes ((Unit!23917 0))(
  ( (Unit!23918) )
))
(declare-fun e!388735 () Unit!23917)

(declare-fun Unit!23919 () Unit!23917)

(assert (=> b!682193 (= e!388735 Unit!23919)))

(declare-fun lt!313450 () Unit!23917)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39516 (_ BitVec 64) (_ BitVec 32)) Unit!23917)

(assert (=> b!682193 (= lt!313450 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682193 false))

(declare-fun b!682194 () Bool)

(declare-fun res!448367 () Bool)

(assert (=> b!682194 (=> (not res!448367) (not e!388738))))

(declare-fun noDuplicate!820 (List!13030) Bool)

(assert (=> b!682194 (= res!448367 (noDuplicate!820 acc!681))))

(declare-fun b!682195 () Bool)

(declare-fun res!448372 () Bool)

(assert (=> b!682195 (=> (not res!448372) (not e!388738))))

(declare-fun e!388741 () Bool)

(assert (=> b!682195 (= res!448372 e!388741)))

(declare-fun res!448370 () Bool)

(assert (=> b!682195 (=> res!448370 e!388741)))

(assert (=> b!682195 (= res!448370 e!388739)))

(declare-fun res!448375 () Bool)

(assert (=> b!682195 (=> (not res!448375) (not e!388739))))

(assert (=> b!682195 (= res!448375 (bvsgt from!3004 i!1382))))

(declare-fun b!682196 () Bool)

(declare-fun res!448376 () Bool)

(assert (=> b!682196 (=> (not res!448376) (not e!388738))))

(declare-fun arrayContainsKey!0 (array!39516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682196 (= res!448376 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682197 () Bool)

(declare-fun res!448366 () Bool)

(assert (=> b!682197 (=> (not res!448366) (not e!388738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682197 (= res!448366 (validKeyInArray!0 k!2843))))

(declare-fun b!682198 () Bool)

(declare-fun e!388737 () Unit!23917)

(declare-fun Unit!23920 () Unit!23917)

(assert (=> b!682198 (= e!388737 Unit!23920)))

(declare-fun b!682199 () Bool)

(declare-fun Unit!23921 () Unit!23917)

(assert (=> b!682199 (= e!388735 Unit!23921)))

(declare-fun b!682200 () Bool)

(declare-fun res!448371 () Bool)

(assert (=> b!682200 (=> (not res!448371) (not e!388738))))

(assert (=> b!682200 (= res!448371 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682201 () Bool)

(assert (=> b!682201 (= e!388738 (not (not (contains!3573 acc!681 k!2843))))))

(declare-fun subseq!158 (List!13030 List!13030) Bool)

(assert (=> b!682201 (subseq!158 acc!681 acc!681)))

(declare-fun lt!313452 () Unit!23917)

(declare-fun lemmaListSubSeqRefl!0 (List!13030) Unit!23917)

(assert (=> b!682201 (= lt!313452 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682201 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313449 () Unit!23917)

(assert (=> b!682201 (= lt!313449 e!388737)))

(declare-fun c!77278 () Bool)

(assert (=> b!682201 (= c!77278 (validKeyInArray!0 (select (arr!18936 a!3626) from!3004)))))

(declare-fun lt!313448 () Unit!23917)

(assert (=> b!682201 (= lt!313448 e!388735)))

(declare-fun c!77279 () Bool)

(assert (=> b!682201 (= c!77279 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682201 (arrayContainsKey!0 (array!39517 (store (arr!18936 a!3626) i!1382 k!2843) (size!19300 a!3626)) k!2843 from!3004)))

(declare-fun b!682202 () Bool)

(declare-fun res!448368 () Bool)

(assert (=> b!682202 (=> (not res!448368) (not e!388738))))

(assert (=> b!682202 (= res!448368 (not (contains!3573 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682203 () Bool)

(assert (=> b!682203 (= e!388741 e!388740)))

(declare-fun res!448369 () Bool)

(assert (=> b!682203 (=> (not res!448369) (not e!388740))))

(assert (=> b!682203 (= res!448369 (bvsle from!3004 i!1382))))

(declare-fun b!682204 () Bool)

(declare-fun res!448374 () Bool)

(assert (=> b!682204 (=> (not res!448374) (not e!388738))))

(assert (=> b!682204 (= res!448374 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19300 a!3626))))))

(declare-fun b!682205 () Bool)

(declare-fun lt!313447 () Unit!23917)

(assert (=> b!682205 (= e!388737 lt!313447)))

(declare-fun lt!313451 () Unit!23917)

(assert (=> b!682205 (= lt!313451 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682205 (subseq!158 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39516 List!13030 List!13030 (_ BitVec 32)) Unit!23917)

(declare-fun $colon$colon!322 (List!13030 (_ BitVec 64)) List!13030)

(assert (=> b!682205 (= lt!313447 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!322 acc!681 (select (arr!18936 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682205 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!60876 res!448377) b!682194))

(assert (= (and b!682194 res!448367) b!682202))

(assert (= (and b!682202 res!448368) b!682189))

(assert (= (and b!682189 res!448379) b!682195))

(assert (= (and b!682195 res!448375) b!682188))

(assert (= (and b!682195 (not res!448370)) b!682203))

(assert (= (and b!682203 res!448369) b!682191))

(assert (= (and b!682195 res!448372) b!682190))

(assert (= (and b!682190 res!448378) b!682200))

(assert (= (and b!682200 res!448371) b!682204))

(assert (= (and b!682204 res!448374) b!682197))

(assert (= (and b!682197 res!448366) b!682196))

(assert (= (and b!682196 res!448376) b!682192))

(assert (= (and b!682192 res!448373) b!682201))

(assert (= (and b!682201 c!77279) b!682193))

(assert (= (and b!682201 (not c!77279)) b!682199))

(assert (= (and b!682201 c!77278) b!682205))

(assert (= (and b!682201 (not c!77278)) b!682198))

(declare-fun m!646971 () Bool)

(assert (=> b!682196 m!646971))

(declare-fun m!646973 () Bool)

(assert (=> b!682194 m!646973))

(declare-fun m!646975 () Bool)

(assert (=> b!682200 m!646975))

(declare-fun m!646977 () Bool)

(assert (=> b!682201 m!646977))

(declare-fun m!646979 () Bool)

(assert (=> b!682201 m!646979))

(declare-fun m!646981 () Bool)

(assert (=> b!682201 m!646981))

(declare-fun m!646983 () Bool)

(assert (=> b!682201 m!646983))

(declare-fun m!646985 () Bool)

(assert (=> b!682201 m!646985))

(declare-fun m!646987 () Bool)

(assert (=> b!682201 m!646987))

(assert (=> b!682201 m!646979))

(declare-fun m!646989 () Bool)

(assert (=> b!682201 m!646989))

(declare-fun m!646991 () Bool)

(assert (=> b!682201 m!646991))

(declare-fun m!646993 () Bool)

(assert (=> b!682201 m!646993))

(declare-fun m!646995 () Bool)

(assert (=> b!682193 m!646995))

(assert (=> b!682191 m!646981))

(declare-fun m!646997 () Bool)

(assert (=> b!682202 m!646997))

(declare-fun m!646999 () Bool)

(assert (=> b!682190 m!646999))

(declare-fun m!647001 () Bool)

(assert (=> b!682189 m!647001))

(assert (=> b!682205 m!646977))

(assert (=> b!682205 m!646979))

(declare-fun m!647003 () Bool)

(assert (=> b!682205 m!647003))

(declare-fun m!647005 () Bool)

(assert (=> b!682205 m!647005))

(assert (=> b!682205 m!646979))

(assert (=> b!682205 m!647003))

(assert (=> b!682205 m!646985))

(assert (=> b!682205 m!646993))

(declare-fun m!647007 () Bool)

(assert (=> b!682197 m!647007))

(assert (=> b!682188 m!646981))

(declare-fun m!647009 () Bool)

(assert (=> start!60876 m!647009))

(push 1)

(assert (not b!682188))

(assert (not b!682200))

(assert (not b!682201))

(assert (not start!60876))

(assert (not b!682189))

(assert (not b!682197))

(assert (not b!682193))

(assert (not b!682191))

(assert (not b!682202))

(assert (not b!682205))

(assert (not b!682194))

(assert (not b!682196))

(assert (not b!682190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

