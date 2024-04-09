; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61006 () Bool)

(assert start!61006)

(declare-fun b!683892 () Bool)

(declare-fun res!449701 () Bool)

(declare-fun e!389531 () Bool)

(assert (=> b!683892 (=> (not res!449701) (not e!389531))))

(declare-datatypes ((array!39571 0))(
  ( (array!39572 (arr!18962 (Array (_ BitVec 32) (_ BitVec 64))) (size!19328 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39571)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13056 0))(
  ( (Nil!13053) (Cons!13052 (h!14097 (_ BitVec 64)) (t!19310 List!13056)) )
))
(declare-fun acc!681 () List!13056)

(declare-fun arrayNoDuplicates!0 (array!39571 (_ BitVec 32) List!13056) Bool)

(assert (=> b!683892 (= res!449701 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683893 () Bool)

(declare-fun res!449700 () Bool)

(assert (=> b!683893 (=> (not res!449700) (not e!389531))))

(declare-fun e!389529 () Bool)

(assert (=> b!683893 (= res!449700 e!389529)))

(declare-fun res!449706 () Bool)

(assert (=> b!683893 (=> res!449706 e!389529)))

(declare-fun e!389532 () Bool)

(assert (=> b!683893 (= res!449706 e!389532)))

(declare-fun res!449694 () Bool)

(assert (=> b!683893 (=> (not res!449694) (not e!389532))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683893 (= res!449694 (bvsgt from!3004 i!1382))))

(declare-fun b!683894 () Bool)

(declare-fun e!389528 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3599 (List!13056 (_ BitVec 64)) Bool)

(assert (=> b!683894 (= e!389528 (not (contains!3599 acc!681 k!2843)))))

(declare-fun b!683895 () Bool)

(declare-fun res!449692 () Bool)

(assert (=> b!683895 (=> (not res!449692) (not e!389531))))

(assert (=> b!683895 (= res!449692 (not (contains!3599 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683896 () Bool)

(declare-fun res!449696 () Bool)

(assert (=> b!683896 (=> (not res!449696) (not e!389531))))

(assert (=> b!683896 (= res!449696 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19328 a!3626))))))

(declare-fun b!683897 () Bool)

(declare-fun res!449707 () Bool)

(assert (=> b!683897 (=> (not res!449707) (not e!389531))))

(assert (=> b!683897 (= res!449707 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13053))))

(declare-fun b!683899 () Bool)

(declare-fun res!449693 () Bool)

(declare-fun e!389530 () Bool)

(assert (=> b!683899 (=> res!449693 e!389530)))

(declare-fun lt!314115 () Bool)

(assert (=> b!683899 (= res!449693 lt!314115)))

(declare-fun b!683900 () Bool)

(declare-fun res!449697 () Bool)

(assert (=> b!683900 (=> (not res!449697) (not e!389531))))

(declare-fun arrayContainsKey!0 (array!39571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683900 (= res!449697 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683901 () Bool)

(declare-fun res!449705 () Bool)

(assert (=> b!683901 (=> (not res!449705) (not e!389531))))

(assert (=> b!683901 (= res!449705 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19328 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683902 () Bool)

(declare-datatypes ((Unit!24047 0))(
  ( (Unit!24048) )
))
(declare-fun e!389533 () Unit!24047)

(declare-fun Unit!24049 () Unit!24047)

(assert (=> b!683902 (= e!389533 Unit!24049)))

(declare-fun b!683903 () Bool)

(declare-fun res!449699 () Bool)

(assert (=> b!683903 (=> res!449699 e!389530)))

(declare-fun lt!314110 () List!13056)

(declare-fun noDuplicate!846 (List!13056) Bool)

(assert (=> b!683903 (= res!449699 (not (noDuplicate!846 lt!314110)))))

(declare-fun b!683904 () Bool)

(declare-fun res!449708 () Bool)

(assert (=> b!683904 (=> (not res!449708) (not e!389531))))

(assert (=> b!683904 (= res!449708 (noDuplicate!846 acc!681))))

(declare-fun b!683905 () Bool)

(declare-fun res!449695 () Bool)

(assert (=> b!683905 (=> (not res!449695) (not e!389531))))

(assert (=> b!683905 (= res!449695 (not (contains!3599 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683906 () Bool)

(declare-fun Unit!24050 () Unit!24047)

(assert (=> b!683906 (= e!389533 Unit!24050)))

(declare-fun lt!314112 () Unit!24047)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39571 (_ BitVec 64) (_ BitVec 32)) Unit!24047)

(assert (=> b!683906 (= lt!314112 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683906 false))

(declare-fun b!683907 () Bool)

(assert (=> b!683907 (= e!389530 (not (contains!3599 acc!681 k!2843)))))

(declare-fun b!683908 () Bool)

(declare-fun e!389526 () Unit!24047)

(declare-fun lt!314113 () Unit!24047)

(assert (=> b!683908 (= e!389526 lt!314113)))

(declare-fun lt!314108 () Unit!24047)

(declare-fun lemmaListSubSeqRefl!0 (List!13056) Unit!24047)

(assert (=> b!683908 (= lt!314108 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!184 (List!13056 List!13056) Bool)

(assert (=> b!683908 (subseq!184 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39571 List!13056 List!13056 (_ BitVec 32)) Unit!24047)

(declare-fun $colon$colon!348 (List!13056 (_ BitVec 64)) List!13056)

(assert (=> b!683908 (= lt!314113 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!348 acc!681 (select (arr!18962 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683908 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683898 () Bool)

(declare-fun Unit!24051 () Unit!24047)

(assert (=> b!683898 (= e!389526 Unit!24051)))

(declare-fun res!449703 () Bool)

(assert (=> start!61006 (=> (not res!449703) (not e!389531))))

(assert (=> start!61006 (= res!449703 (and (bvslt (size!19328 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19328 a!3626))))))

(assert (=> start!61006 e!389531))

(assert (=> start!61006 true))

(declare-fun array_inv!14736 (array!39571) Bool)

(assert (=> start!61006 (array_inv!14736 a!3626)))

(declare-fun b!683909 () Bool)

(assert (=> b!683909 (= e!389531 (not e!389530))))

(declare-fun res!449698 () Bool)

(assert (=> b!683909 (=> res!449698 e!389530)))

(assert (=> b!683909 (= res!449698 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!149 (List!13056 (_ BitVec 64)) List!13056)

(assert (=> b!683909 (= (-!149 lt!314110 k!2843) acc!681)))

(assert (=> b!683909 (= lt!314110 ($colon$colon!348 acc!681 k!2843))))

(declare-fun lt!314107 () Unit!24047)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13056) Unit!24047)

(assert (=> b!683909 (= lt!314107 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!683909 (subseq!184 acc!681 acc!681)))

(declare-fun lt!314109 () Unit!24047)

(assert (=> b!683909 (= lt!314109 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683909 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314111 () Unit!24047)

(assert (=> b!683909 (= lt!314111 e!389526)))

(declare-fun c!77467 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683909 (= c!77467 (validKeyInArray!0 (select (arr!18962 a!3626) from!3004)))))

(declare-fun lt!314114 () Unit!24047)

(assert (=> b!683909 (= lt!314114 e!389533)))

(declare-fun c!77468 () Bool)

(assert (=> b!683909 (= c!77468 lt!314115)))

(assert (=> b!683909 (= lt!314115 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683909 (arrayContainsKey!0 (array!39572 (store (arr!18962 a!3626) i!1382 k!2843) (size!19328 a!3626)) k!2843 from!3004)))

(declare-fun b!683910 () Bool)

(declare-fun res!449702 () Bool)

(assert (=> b!683910 (=> (not res!449702) (not e!389531))))

(assert (=> b!683910 (= res!449702 (validKeyInArray!0 k!2843))))

(declare-fun b!683911 () Bool)

(assert (=> b!683911 (= e!389529 e!389528)))

(declare-fun res!449704 () Bool)

(assert (=> b!683911 (=> (not res!449704) (not e!389528))))

(assert (=> b!683911 (= res!449704 (bvsle from!3004 i!1382))))

(declare-fun b!683912 () Bool)

(assert (=> b!683912 (= e!389532 (contains!3599 acc!681 k!2843))))

(assert (= (and start!61006 res!449703) b!683904))

(assert (= (and b!683904 res!449708) b!683895))

(assert (= (and b!683895 res!449692) b!683905))

(assert (= (and b!683905 res!449695) b!683893))

(assert (= (and b!683893 res!449694) b!683912))

(assert (= (and b!683893 (not res!449706)) b!683911))

(assert (= (and b!683911 res!449704) b!683894))

(assert (= (and b!683893 res!449700) b!683897))

(assert (= (and b!683897 res!449707) b!683892))

(assert (= (and b!683892 res!449701) b!683896))

(assert (= (and b!683896 res!449696) b!683910))

(assert (= (and b!683910 res!449702) b!683900))

(assert (= (and b!683900 res!449697) b!683901))

(assert (= (and b!683901 res!449705) b!683909))

(assert (= (and b!683909 c!77468) b!683906))

(assert (= (and b!683909 (not c!77468)) b!683902))

(assert (= (and b!683909 c!77467) b!683908))

(assert (= (and b!683909 (not c!77467)) b!683898))

(assert (= (and b!683909 (not res!449698)) b!683903))

(assert (= (and b!683903 (not res!449699)) b!683899))

(assert (= (and b!683899 (not res!449693)) b!683907))

(declare-fun m!648399 () Bool)

(assert (=> b!683906 m!648399))

(declare-fun m!648401 () Bool)

(assert (=> b!683912 m!648401))

(declare-fun m!648403 () Bool)

(assert (=> b!683910 m!648403))

(declare-fun m!648405 () Bool)

(assert (=> b!683897 m!648405))

(declare-fun m!648407 () Bool)

(assert (=> b!683895 m!648407))

(declare-fun m!648409 () Bool)

(assert (=> b!683892 m!648409))

(declare-fun m!648411 () Bool)

(assert (=> b!683909 m!648411))

(declare-fun m!648413 () Bool)

(assert (=> b!683909 m!648413))

(declare-fun m!648415 () Bool)

(assert (=> b!683909 m!648415))

(declare-fun m!648417 () Bool)

(assert (=> b!683909 m!648417))

(declare-fun m!648419 () Bool)

(assert (=> b!683909 m!648419))

(declare-fun m!648421 () Bool)

(assert (=> b!683909 m!648421))

(declare-fun m!648423 () Bool)

(assert (=> b!683909 m!648423))

(declare-fun m!648425 () Bool)

(assert (=> b!683909 m!648425))

(assert (=> b!683909 m!648413))

(declare-fun m!648427 () Bool)

(assert (=> b!683909 m!648427))

(declare-fun m!648429 () Bool)

(assert (=> b!683909 m!648429))

(declare-fun m!648431 () Bool)

(assert (=> b!683909 m!648431))

(assert (=> b!683907 m!648401))

(declare-fun m!648433 () Bool)

(assert (=> start!61006 m!648433))

(declare-fun m!648435 () Bool)

(assert (=> b!683903 m!648435))

(declare-fun m!648437 () Bool)

(assert (=> b!683900 m!648437))

(declare-fun m!648439 () Bool)

(assert (=> b!683904 m!648439))

(declare-fun m!648441 () Bool)

(assert (=> b!683905 m!648441))

(assert (=> b!683894 m!648401))

(assert (=> b!683908 m!648411))

(assert (=> b!683908 m!648413))

(declare-fun m!648443 () Bool)

(assert (=> b!683908 m!648443))

(declare-fun m!648445 () Bool)

(assert (=> b!683908 m!648445))

(assert (=> b!683908 m!648413))

(assert (=> b!683908 m!648443))

(assert (=> b!683908 m!648419))

(assert (=> b!683908 m!648431))

(push 1)

(assert (not b!683906))

(assert (not b!683892))

(assert (not b!683894))

(assert (not b!683903))

(assert (not b!683909))

(assert (not b!683900))

(assert (not b!683904))

(assert (not start!61006))

(assert (not b!683897))

(assert (not b!683912))

(assert (not b!683910))

(assert (not b!683908))

(assert (not b!683905))

(assert (not b!683907))

(assert (not b!683895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

