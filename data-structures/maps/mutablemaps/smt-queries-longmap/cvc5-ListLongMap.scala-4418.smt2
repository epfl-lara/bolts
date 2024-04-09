; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61014 () Bool)

(assert start!61014)

(declare-fun b!684144 () Bool)

(declare-fun e!389624 () Bool)

(declare-fun e!389623 () Bool)

(assert (=> b!684144 (= e!389624 (not e!389623))))

(declare-fun res!449907 () Bool)

(assert (=> b!684144 (=> res!449907 e!389623)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!684144 (= res!449907 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13060 0))(
  ( (Nil!13057) (Cons!13056 (h!14101 (_ BitVec 64)) (t!19314 List!13060)) )
))
(declare-fun lt!314232 () List!13060)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!13060)

(declare-fun -!153 (List!13060 (_ BitVec 64)) List!13060)

(assert (=> b!684144 (= (-!153 lt!314232 k!2843) acc!681)))

(declare-fun $colon$colon!352 (List!13060 (_ BitVec 64)) List!13060)

(assert (=> b!684144 (= lt!314232 ($colon$colon!352 acc!681 k!2843))))

(declare-datatypes ((Unit!24067 0))(
  ( (Unit!24068) )
))
(declare-fun lt!314234 () Unit!24067)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13060) Unit!24067)

(assert (=> b!684144 (= lt!314234 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!188 (List!13060 List!13060) Bool)

(assert (=> b!684144 (subseq!188 acc!681 acc!681)))

(declare-fun lt!314233 () Unit!24067)

(declare-fun lemmaListSubSeqRefl!0 (List!13060) Unit!24067)

(assert (=> b!684144 (= lt!314233 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!39579 0))(
  ( (array!39580 (arr!18966 (Array (_ BitVec 32) (_ BitVec 64))) (size!19332 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39579)

(declare-fun arrayNoDuplicates!0 (array!39579 (_ BitVec 32) List!13060) Bool)

(assert (=> b!684144 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314227 () Unit!24067)

(declare-fun e!389622 () Unit!24067)

(assert (=> b!684144 (= lt!314227 e!389622)))

(declare-fun c!77492 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684144 (= c!77492 (validKeyInArray!0 (select (arr!18966 a!3626) from!3004)))))

(declare-fun lt!314229 () Unit!24067)

(declare-fun e!389625 () Unit!24067)

(assert (=> b!684144 (= lt!314229 e!389625)))

(declare-fun c!77491 () Bool)

(declare-fun lt!314228 () Bool)

(assert (=> b!684144 (= c!77491 lt!314228)))

(declare-fun arrayContainsKey!0 (array!39579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684144 (= lt!314228 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684144 (arrayContainsKey!0 (array!39580 (store (arr!18966 a!3626) i!1382 k!2843) (size!19332 a!3626)) k!2843 from!3004)))

(declare-fun b!684145 () Bool)

(declare-fun e!389626 () Bool)

(declare-fun e!389627 () Bool)

(assert (=> b!684145 (= e!389626 e!389627)))

(declare-fun res!449897 () Bool)

(assert (=> b!684145 (=> (not res!449897) (not e!389627))))

(assert (=> b!684145 (= res!449897 (bvsle from!3004 i!1382))))

(declare-fun b!684146 () Bool)

(declare-fun Unit!24069 () Unit!24067)

(assert (=> b!684146 (= e!389625 Unit!24069)))

(declare-fun b!684147 () Bool)

(declare-fun res!449900 () Bool)

(assert (=> b!684147 (=> (not res!449900) (not e!389624))))

(assert (=> b!684147 (= res!449900 e!389626)))

(declare-fun res!449902 () Bool)

(assert (=> b!684147 (=> res!449902 e!389626)))

(declare-fun e!389628 () Bool)

(assert (=> b!684147 (= res!449902 e!389628)))

(declare-fun res!449899 () Bool)

(assert (=> b!684147 (=> (not res!449899) (not e!389628))))

(assert (=> b!684147 (= res!449899 (bvsgt from!3004 i!1382))))

(declare-fun b!684148 () Bool)

(declare-fun res!449910 () Bool)

(assert (=> b!684148 (=> res!449910 e!389623)))

(assert (=> b!684148 (= res!449910 lt!314228)))

(declare-fun b!684149 () Bool)

(declare-fun lt!314231 () Unit!24067)

(assert (=> b!684149 (= e!389622 lt!314231)))

(declare-fun lt!314226 () Unit!24067)

(assert (=> b!684149 (= lt!314226 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684149 (subseq!188 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39579 List!13060 List!13060 (_ BitVec 32)) Unit!24067)

(assert (=> b!684149 (= lt!314231 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!352 acc!681 (select (arr!18966 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684149 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684150 () Bool)

(declare-fun res!449909 () Bool)

(assert (=> b!684150 (=> (not res!449909) (not e!389624))))

(assert (=> b!684150 (= res!449909 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684151 () Bool)

(declare-fun Unit!24070 () Unit!24067)

(assert (=> b!684151 (= e!389622 Unit!24070)))

(declare-fun b!684152 () Bool)

(declare-fun res!449903 () Bool)

(assert (=> b!684152 (=> (not res!449903) (not e!389624))))

(declare-fun contains!3603 (List!13060 (_ BitVec 64)) Bool)

(assert (=> b!684152 (= res!449903 (not (contains!3603 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684153 () Bool)

(declare-fun res!449904 () Bool)

(assert (=> b!684153 (=> (not res!449904) (not e!389624))))

(assert (=> b!684153 (= res!449904 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19332 a!3626))))))

(declare-fun b!684154 () Bool)

(assert (=> b!684154 (= e!389628 (contains!3603 acc!681 k!2843))))

(declare-fun b!684155 () Bool)

(assert (=> b!684155 (= e!389623 true)))

(declare-fun lt!314230 () Bool)

(assert (=> b!684155 (= lt!314230 (contains!3603 acc!681 k!2843))))

(declare-fun b!684156 () Bool)

(assert (=> b!684156 (= e!389627 (not (contains!3603 acc!681 k!2843)))))

(declare-fun b!684157 () Bool)

(declare-fun res!449911 () Bool)

(assert (=> b!684157 (=> (not res!449911) (not e!389624))))

(assert (=> b!684157 (= res!449911 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684158 () Bool)

(declare-fun res!449901 () Bool)

(assert (=> b!684158 (=> (not res!449901) (not e!389624))))

(assert (=> b!684158 (= res!449901 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13057))))

(declare-fun b!684159 () Bool)

(declare-fun res!449896 () Bool)

(assert (=> b!684159 (=> (not res!449896) (not e!389624))))

(assert (=> b!684159 (= res!449896 (validKeyInArray!0 k!2843))))

(declare-fun b!684160 () Bool)

(declare-fun res!449912 () Bool)

(assert (=> b!684160 (=> (not res!449912) (not e!389624))))

(assert (=> b!684160 (= res!449912 (not (contains!3603 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684161 () Bool)

(declare-fun res!449908 () Bool)

(assert (=> b!684161 (=> res!449908 e!389623)))

(declare-fun noDuplicate!850 (List!13060) Bool)

(assert (=> b!684161 (= res!449908 (not (noDuplicate!850 lt!314232)))))

(declare-fun b!684162 () Bool)

(declare-fun res!449905 () Bool)

(assert (=> b!684162 (=> (not res!449905) (not e!389624))))

(assert (=> b!684162 (= res!449905 (noDuplicate!850 acc!681))))

(declare-fun b!684163 () Bool)

(declare-fun res!449906 () Bool)

(assert (=> b!684163 (=> (not res!449906) (not e!389624))))

(assert (=> b!684163 (= res!449906 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19332 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!449898 () Bool)

(assert (=> start!61014 (=> (not res!449898) (not e!389624))))

(assert (=> start!61014 (= res!449898 (and (bvslt (size!19332 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19332 a!3626))))))

(assert (=> start!61014 e!389624))

(assert (=> start!61014 true))

(declare-fun array_inv!14740 (array!39579) Bool)

(assert (=> start!61014 (array_inv!14740 a!3626)))

(declare-fun b!684164 () Bool)

(declare-fun Unit!24071 () Unit!24067)

(assert (=> b!684164 (= e!389625 Unit!24071)))

(declare-fun lt!314235 () Unit!24067)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39579 (_ BitVec 64) (_ BitVec 32)) Unit!24067)

(assert (=> b!684164 (= lt!314235 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684164 false))

(assert (= (and start!61014 res!449898) b!684162))

(assert (= (and b!684162 res!449905) b!684160))

(assert (= (and b!684160 res!449912) b!684152))

(assert (= (and b!684152 res!449903) b!684147))

(assert (= (and b!684147 res!449899) b!684154))

(assert (= (and b!684147 (not res!449902)) b!684145))

(assert (= (and b!684145 res!449897) b!684156))

(assert (= (and b!684147 res!449900) b!684158))

(assert (= (and b!684158 res!449901) b!684150))

(assert (= (and b!684150 res!449909) b!684153))

(assert (= (and b!684153 res!449904) b!684159))

(assert (= (and b!684159 res!449896) b!684157))

(assert (= (and b!684157 res!449911) b!684163))

(assert (= (and b!684163 res!449906) b!684144))

(assert (= (and b!684144 c!77491) b!684164))

(assert (= (and b!684144 (not c!77491)) b!684146))

(assert (= (and b!684144 c!77492) b!684149))

(assert (= (and b!684144 (not c!77492)) b!684151))

(assert (= (and b!684144 (not res!449907)) b!684161))

(assert (= (and b!684161 (not res!449908)) b!684148))

(assert (= (and b!684148 (not res!449910)) b!684155))

(declare-fun m!648591 () Bool)

(assert (=> b!684158 m!648591))

(declare-fun m!648593 () Bool)

(assert (=> b!684156 m!648593))

(declare-fun m!648595 () Bool)

(assert (=> start!61014 m!648595))

(declare-fun m!648597 () Bool)

(assert (=> b!684160 m!648597))

(declare-fun m!648599 () Bool)

(assert (=> b!684162 m!648599))

(declare-fun m!648601 () Bool)

(assert (=> b!684161 m!648601))

(declare-fun m!648603 () Bool)

(assert (=> b!684152 m!648603))

(declare-fun m!648605 () Bool)

(assert (=> b!684144 m!648605))

(declare-fun m!648607 () Bool)

(assert (=> b!684144 m!648607))

(declare-fun m!648609 () Bool)

(assert (=> b!684144 m!648609))

(declare-fun m!648611 () Bool)

(assert (=> b!684144 m!648611))

(declare-fun m!648613 () Bool)

(assert (=> b!684144 m!648613))

(declare-fun m!648615 () Bool)

(assert (=> b!684144 m!648615))

(declare-fun m!648617 () Bool)

(assert (=> b!684144 m!648617))

(assert (=> b!684144 m!648607))

(declare-fun m!648619 () Bool)

(assert (=> b!684144 m!648619))

(declare-fun m!648621 () Bool)

(assert (=> b!684144 m!648621))

(declare-fun m!648623 () Bool)

(assert (=> b!684144 m!648623))

(declare-fun m!648625 () Bool)

(assert (=> b!684144 m!648625))

(assert (=> b!684149 m!648605))

(assert (=> b!684149 m!648607))

(declare-fun m!648627 () Bool)

(assert (=> b!684149 m!648627))

(declare-fun m!648629 () Bool)

(assert (=> b!684149 m!648629))

(assert (=> b!684149 m!648607))

(assert (=> b!684149 m!648627))

(assert (=> b!684149 m!648613))

(assert (=> b!684149 m!648625))

(declare-fun m!648631 () Bool)

(assert (=> b!684150 m!648631))

(declare-fun m!648633 () Bool)

(assert (=> b!684157 m!648633))

(declare-fun m!648635 () Bool)

(assert (=> b!684159 m!648635))

(assert (=> b!684154 m!648593))

(assert (=> b!684155 m!648593))

(declare-fun m!648637 () Bool)

(assert (=> b!684164 m!648637))

(push 1)

(assert (not b!684150))

(assert (not b!684152))

(assert (not b!684159))

(assert (not b!684162))

(assert (not start!61014))

(assert (not b!684161))

(assert (not b!684157))

(assert (not b!684158))

(assert (not b!684156))

(assert (not b!684160))

(assert (not b!684149))

(assert (not b!684155))

(assert (not b!684154))

(assert (not b!684144))

(assert (not b!684164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

