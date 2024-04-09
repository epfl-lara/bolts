; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59974 () Bool)

(assert start!59974)

(declare-fun b!664784 () Bool)

(declare-fun res!432571 () Bool)

(declare-fun e!381103 () Bool)

(assert (=> b!664784 (=> (not res!432571) (not e!381103))))

(declare-datatypes ((List!12771 0))(
  ( (Nil!12768) (Cons!12767 (h!13812 (_ BitVec 64)) (t!19007 List!12771)) )
))
(declare-fun acc!681 () List!12771)

(declare-fun contains!3314 (List!12771 (_ BitVec 64)) Bool)

(assert (=> b!664784 (= res!432571 (not (contains!3314 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664785 () Bool)

(declare-fun res!432578 () Bool)

(assert (=> b!664785 (=> (not res!432578) (not e!381103))))

(assert (=> b!664785 (= res!432578 (not (contains!3314 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664786 () Bool)

(declare-fun res!432559 () Bool)

(declare-fun e!381099 () Bool)

(assert (=> b!664786 (=> res!432559 e!381099)))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!664786 (= res!432559 (contains!3314 acc!681 k!2843))))

(declare-fun b!664787 () Bool)

(declare-fun res!432570 () Bool)

(assert (=> b!664787 (=> res!432570 e!381099)))

(declare-fun lt!309783 () List!12771)

(declare-fun subseq!52 (List!12771 List!12771) Bool)

(assert (=> b!664787 (= res!432570 (not (subseq!52 acc!681 lt!309783)))))

(declare-fun b!664788 () Bool)

(declare-fun res!432560 () Bool)

(assert (=> b!664788 (=> res!432560 e!381099)))

(assert (=> b!664788 (= res!432560 (contains!3314 lt!309783 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664789 () Bool)

(declare-fun res!432574 () Bool)

(assert (=> b!664789 (=> (not res!432574) (not e!381103))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38977 0))(
  ( (array!38978 (arr!18677 (Array (_ BitVec 32) (_ BitVec 64))) (size!19041 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38977)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!664789 (= res!432574 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19041 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664790 () Bool)

(declare-fun e!381106 () Bool)

(assert (=> b!664790 (= e!381106 (contains!3314 acc!681 k!2843))))

(declare-fun b!664791 () Bool)

(declare-fun res!432577 () Bool)

(assert (=> b!664791 (=> (not res!432577) (not e!381103))))

(assert (=> b!664791 (= res!432577 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19041 a!3626))))))

(declare-fun b!664792 () Bool)

(declare-fun res!432575 () Bool)

(assert (=> b!664792 (=> (not res!432575) (not e!381103))))

(declare-fun arrayNoDuplicates!0 (array!38977 (_ BitVec 32) List!12771) Bool)

(assert (=> b!664792 (= res!432575 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12768))))

(declare-fun res!432576 () Bool)

(assert (=> start!59974 (=> (not res!432576) (not e!381103))))

(assert (=> start!59974 (= res!432576 (and (bvslt (size!19041 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19041 a!3626))))))

(assert (=> start!59974 e!381103))

(assert (=> start!59974 true))

(declare-fun array_inv!14451 (array!38977) Bool)

(assert (=> start!59974 (array_inv!14451 a!3626)))

(declare-fun b!664793 () Bool)

(declare-fun res!432566 () Bool)

(assert (=> b!664793 (=> (not res!432566) (not e!381103))))

(declare-fun e!381100 () Bool)

(assert (=> b!664793 (= res!432566 e!381100)))

(declare-fun res!432567 () Bool)

(assert (=> b!664793 (=> res!432567 e!381100)))

(assert (=> b!664793 (= res!432567 e!381106)))

(declare-fun res!432568 () Bool)

(assert (=> b!664793 (=> (not res!432568) (not e!381106))))

(assert (=> b!664793 (= res!432568 (bvsgt from!3004 i!1382))))

(declare-fun b!664794 () Bool)

(assert (=> b!664794 (= e!381099 true)))

(declare-fun lt!309789 () Bool)

(assert (=> b!664794 (= lt!309789 (contains!3314 lt!309783 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664795 () Bool)

(declare-fun res!432564 () Bool)

(assert (=> b!664795 (=> (not res!432564) (not e!381103))))

(assert (=> b!664795 (= res!432564 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664796 () Bool)

(declare-fun res!432573 () Bool)

(assert (=> b!664796 (=> res!432573 e!381099)))

(declare-fun lt!309790 () Bool)

(assert (=> b!664796 (= res!432573 lt!309790)))

(declare-fun b!664797 () Bool)

(declare-fun res!432561 () Bool)

(assert (=> b!664797 (=> (not res!432561) (not e!381103))))

(declare-fun noDuplicate!561 (List!12771) Bool)

(assert (=> b!664797 (= res!432561 (noDuplicate!561 acc!681))))

(declare-fun b!664798 () Bool)

(declare-datatypes ((Unit!23180 0))(
  ( (Unit!23181) )
))
(declare-fun e!381101 () Unit!23180)

(declare-fun Unit!23182 () Unit!23180)

(assert (=> b!664798 (= e!381101 Unit!23182)))

(declare-fun lt!309787 () Unit!23180)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38977 (_ BitVec 64) (_ BitVec 32)) Unit!23180)

(assert (=> b!664798 (= lt!309787 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664798 false))

(declare-fun b!664799 () Bool)

(declare-fun e!381105 () Unit!23180)

(declare-fun Unit!23183 () Unit!23180)

(assert (=> b!664799 (= e!381105 Unit!23183)))

(declare-fun b!664800 () Bool)

(declare-fun lt!309786 () Unit!23180)

(assert (=> b!664800 (= e!381105 lt!309786)))

(declare-fun lt!309784 () Unit!23180)

(declare-fun lemmaListSubSeqRefl!0 (List!12771) Unit!23180)

(assert (=> b!664800 (= lt!309784 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664800 (subseq!52 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38977 List!12771 List!12771 (_ BitVec 32)) Unit!23180)

(declare-fun $colon$colon!183 (List!12771 (_ BitVec 64)) List!12771)

(assert (=> b!664800 (= lt!309786 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!183 acc!681 (select (arr!18677 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664800 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664801 () Bool)

(declare-fun e!381104 () Bool)

(assert (=> b!664801 (= e!381100 e!381104)))

(declare-fun res!432558 () Bool)

(assert (=> b!664801 (=> (not res!432558) (not e!381104))))

(assert (=> b!664801 (= res!432558 (bvsle from!3004 i!1382))))

(declare-fun b!664802 () Bool)

(declare-fun res!432572 () Bool)

(assert (=> b!664802 (=> (not res!432572) (not e!381103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664802 (= res!432572 (validKeyInArray!0 k!2843))))

(declare-fun b!664803 () Bool)

(declare-fun res!432565 () Bool)

(assert (=> b!664803 (=> (not res!432565) (not e!381103))))

(declare-fun arrayContainsKey!0 (array!38977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664803 (= res!432565 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664804 () Bool)

(declare-fun res!432569 () Bool)

(assert (=> b!664804 (=> res!432569 e!381099)))

(assert (=> b!664804 (= res!432569 (not (noDuplicate!561 lt!309783)))))

(declare-fun b!664805 () Bool)

(assert (=> b!664805 (= e!381104 (not (contains!3314 acc!681 k!2843)))))

(declare-fun b!664806 () Bool)

(assert (=> b!664806 (= e!381103 (not e!381099))))

(declare-fun res!432562 () Bool)

(assert (=> b!664806 (=> res!432562 e!381099)))

(assert (=> b!664806 (= res!432562 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!50 (List!12771 (_ BitVec 64)) List!12771)

(assert (=> b!664806 (= (-!50 lt!309783 k!2843) acc!681)))

(assert (=> b!664806 (= lt!309783 ($colon$colon!183 acc!681 k!2843))))

(declare-fun lt!309788 () Unit!23180)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12771) Unit!23180)

(assert (=> b!664806 (= lt!309788 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!664806 (subseq!52 acc!681 acc!681)))

(declare-fun lt!309791 () Unit!23180)

(assert (=> b!664806 (= lt!309791 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664806 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309785 () Unit!23180)

(assert (=> b!664806 (= lt!309785 e!381105)))

(declare-fun c!76481 () Bool)

(assert (=> b!664806 (= c!76481 (validKeyInArray!0 (select (arr!18677 a!3626) from!3004)))))

(declare-fun lt!309792 () Unit!23180)

(assert (=> b!664806 (= lt!309792 e!381101)))

(declare-fun c!76480 () Bool)

(assert (=> b!664806 (= c!76480 lt!309790)))

(assert (=> b!664806 (= lt!309790 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664806 (arrayContainsKey!0 (array!38978 (store (arr!18677 a!3626) i!1382 k!2843) (size!19041 a!3626)) k!2843 from!3004)))

(declare-fun b!664807 () Bool)

(declare-fun res!432563 () Bool)

(assert (=> b!664807 (=> res!432563 e!381099)))

(assert (=> b!664807 (= res!432563 (not (contains!3314 lt!309783 k!2843)))))

(declare-fun b!664808 () Bool)

(declare-fun Unit!23184 () Unit!23180)

(assert (=> b!664808 (= e!381101 Unit!23184)))

(assert (= (and start!59974 res!432576) b!664797))

(assert (= (and b!664797 res!432561) b!664785))

(assert (= (and b!664785 res!432578) b!664784))

(assert (= (and b!664784 res!432571) b!664793))

(assert (= (and b!664793 res!432568) b!664790))

(assert (= (and b!664793 (not res!432567)) b!664801))

(assert (= (and b!664801 res!432558) b!664805))

(assert (= (and b!664793 res!432566) b!664792))

(assert (= (and b!664792 res!432575) b!664795))

(assert (= (and b!664795 res!432564) b!664791))

(assert (= (and b!664791 res!432577) b!664802))

(assert (= (and b!664802 res!432572) b!664803))

(assert (= (and b!664803 res!432565) b!664789))

(assert (= (and b!664789 res!432574) b!664806))

(assert (= (and b!664806 c!76480) b!664798))

(assert (= (and b!664806 (not c!76480)) b!664808))

(assert (= (and b!664806 c!76481) b!664800))

(assert (= (and b!664806 (not c!76481)) b!664799))

(assert (= (and b!664806 (not res!432562)) b!664804))

(assert (= (and b!664804 (not res!432569)) b!664796))

(assert (= (and b!664796 (not res!432573)) b!664786))

(assert (= (and b!664786 (not res!432559)) b!664787))

(assert (= (and b!664787 (not res!432570)) b!664807))

(assert (= (and b!664807 (not res!432563)) b!664788))

(assert (= (and b!664788 (not res!432560)) b!664794))

(declare-fun m!636019 () Bool)

(assert (=> b!664802 m!636019))

(declare-fun m!636021 () Bool)

(assert (=> b!664805 m!636021))

(declare-fun m!636023 () Bool)

(assert (=> b!664792 m!636023))

(declare-fun m!636025 () Bool)

(assert (=> b!664807 m!636025))

(declare-fun m!636027 () Bool)

(assert (=> b!664794 m!636027))

(declare-fun m!636029 () Bool)

(assert (=> b!664806 m!636029))

(declare-fun m!636031 () Bool)

(assert (=> b!664806 m!636031))

(declare-fun m!636033 () Bool)

(assert (=> b!664806 m!636033))

(declare-fun m!636035 () Bool)

(assert (=> b!664806 m!636035))

(declare-fun m!636037 () Bool)

(assert (=> b!664806 m!636037))

(declare-fun m!636039 () Bool)

(assert (=> b!664806 m!636039))

(assert (=> b!664806 m!636031))

(declare-fun m!636041 () Bool)

(assert (=> b!664806 m!636041))

(declare-fun m!636043 () Bool)

(assert (=> b!664806 m!636043))

(declare-fun m!636045 () Bool)

(assert (=> b!664806 m!636045))

(declare-fun m!636047 () Bool)

(assert (=> b!664806 m!636047))

(declare-fun m!636049 () Bool)

(assert (=> b!664806 m!636049))

(declare-fun m!636051 () Bool)

(assert (=> b!664787 m!636051))

(assert (=> b!664800 m!636029))

(assert (=> b!664800 m!636031))

(declare-fun m!636053 () Bool)

(assert (=> b!664800 m!636053))

(declare-fun m!636055 () Bool)

(assert (=> b!664800 m!636055))

(assert (=> b!664800 m!636031))

(assert (=> b!664800 m!636053))

(assert (=> b!664800 m!636037))

(assert (=> b!664800 m!636049))

(declare-fun m!636057 () Bool)

(assert (=> start!59974 m!636057))

(declare-fun m!636059 () Bool)

(assert (=> b!664798 m!636059))

(declare-fun m!636061 () Bool)

(assert (=> b!664803 m!636061))

(declare-fun m!636063 () Bool)

(assert (=> b!664797 m!636063))

(declare-fun m!636065 () Bool)

(assert (=> b!664795 m!636065))

(declare-fun m!636067 () Bool)

(assert (=> b!664804 m!636067))

(assert (=> b!664786 m!636021))

(declare-fun m!636069 () Bool)

(assert (=> b!664784 m!636069))

(declare-fun m!636071 () Bool)

(assert (=> b!664785 m!636071))

(assert (=> b!664790 m!636021))

(declare-fun m!636073 () Bool)

(assert (=> b!664788 m!636073))

(push 1)

(assert (not b!664785))

(assert (not b!664798))

(assert (not b!664803))

(assert (not b!664790))

(assert (not b!664807))

(assert (not b!664787))

(assert (not b!664805))

(assert (not b!664804))

(assert (not b!664786))

(assert (not start!59974))

(assert (not b!664800))

(assert (not b!664797))

(assert (not b!664792))

(assert (not b!664784))

(assert (not b!664802))

(assert (not b!664795))

(assert (not b!664788))

(assert (not b!664806))

(assert (not b!664794))

(check-sat)

