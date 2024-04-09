; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60904 () Bool)

(assert start!60904)

(declare-fun b!682944 () Bool)

(declare-fun res!448954 () Bool)

(declare-fun e!389034 () Bool)

(assert (=> b!682944 (=> (not res!448954) (not e!389034))))

(declare-datatypes ((array!39544 0))(
  ( (array!39545 (arr!18950 (Array (_ BitVec 32) (_ BitVec 64))) (size!19314 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39544)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13044 0))(
  ( (Nil!13041) (Cons!13040 (h!14085 (_ BitVec 64)) (t!19295 List!13044)) )
))
(declare-fun acc!681 () List!13044)

(declare-fun arrayNoDuplicates!0 (array!39544 (_ BitVec 32) List!13044) Bool)

(assert (=> b!682944 (= res!448954 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682945 () Bool)

(declare-fun res!448955 () Bool)

(assert (=> b!682945 (=> (not res!448955) (not e!389034))))

(declare-fun e!389032 () Bool)

(assert (=> b!682945 (= res!448955 e!389032)))

(declare-fun res!448963 () Bool)

(assert (=> b!682945 (=> res!448963 e!389032)))

(declare-fun e!389033 () Bool)

(assert (=> b!682945 (= res!448963 e!389033)))

(declare-fun res!448966 () Bool)

(assert (=> b!682945 (=> (not res!448966) (not e!389033))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682945 (= res!448966 (bvsgt from!3004 i!1382))))

(declare-fun b!682946 () Bool)

(declare-fun e!389030 () Bool)

(assert (=> b!682946 (= e!389032 e!389030)))

(declare-fun res!448957 () Bool)

(assert (=> b!682946 (=> (not res!448957) (not e!389030))))

(assert (=> b!682946 (= res!448957 (bvsle from!3004 i!1382))))

(declare-fun res!448958 () Bool)

(assert (=> start!60904 (=> (not res!448958) (not e!389034))))

(assert (=> start!60904 (= res!448958 (and (bvslt (size!19314 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19314 a!3626))))))

(assert (=> start!60904 e!389034))

(assert (=> start!60904 true))

(declare-fun array_inv!14724 (array!39544) Bool)

(assert (=> start!60904 (array_inv!14724 a!3626)))

(declare-fun b!682947 () Bool)

(declare-fun res!448956 () Bool)

(assert (=> b!682947 (=> (not res!448956) (not e!389034))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682947 (= res!448956 (validKeyInArray!0 k!2843))))

(declare-fun b!682948 () Bool)

(declare-fun res!448962 () Bool)

(assert (=> b!682948 (=> (not res!448962) (not e!389034))))

(declare-fun contains!3587 (List!13044 (_ BitVec 64)) Bool)

(assert (=> b!682948 (= res!448962 (not (contains!3587 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682949 () Bool)

(declare-datatypes ((Unit!23987 0))(
  ( (Unit!23988) )
))
(declare-fun e!389031 () Unit!23987)

(declare-fun lt!313739 () Unit!23987)

(assert (=> b!682949 (= e!389031 lt!313739)))

(declare-fun lt!313738 () Unit!23987)

(declare-fun lemmaListSubSeqRefl!0 (List!13044) Unit!23987)

(assert (=> b!682949 (= lt!313738 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!172 (List!13044 List!13044) Bool)

(assert (=> b!682949 (subseq!172 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39544 List!13044 List!13044 (_ BitVec 32)) Unit!23987)

(declare-fun $colon$colon!336 (List!13044 (_ BitVec 64)) List!13044)

(assert (=> b!682949 (= lt!313739 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!336 acc!681 (select (arr!18950 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682949 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682950 () Bool)

(declare-fun res!448965 () Bool)

(assert (=> b!682950 (=> (not res!448965) (not e!389034))))

(assert (=> b!682950 (= res!448965 (not (contains!3587 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682951 () Bool)

(declare-fun e!389035 () Unit!23987)

(declare-fun Unit!23989 () Unit!23987)

(assert (=> b!682951 (= e!389035 Unit!23989)))

(declare-fun lt!313736 () Unit!23987)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39544 (_ BitVec 64) (_ BitVec 32)) Unit!23987)

(assert (=> b!682951 (= lt!313736 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682951 false))

(declare-fun b!682952 () Bool)

(declare-fun res!448967 () Bool)

(assert (=> b!682952 (=> (not res!448967) (not e!389034))))

(assert (=> b!682952 (= res!448967 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13041))))

(declare-fun b!682953 () Bool)

(assert (=> b!682953 (= e!389030 (not (contains!3587 acc!681 k!2843)))))

(declare-fun b!682954 () Bool)

(declare-fun Unit!23990 () Unit!23987)

(assert (=> b!682954 (= e!389035 Unit!23990)))

(declare-fun b!682955 () Bool)

(declare-fun res!448959 () Bool)

(assert (=> b!682955 (=> (not res!448959) (not e!389034))))

(assert (=> b!682955 (= res!448959 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19314 a!3626))))))

(declare-fun b!682956 () Bool)

(assert (=> b!682956 (= e!389033 (contains!3587 acc!681 k!2843))))

(declare-fun b!682957 () Bool)

(declare-fun res!448960 () Bool)

(assert (=> b!682957 (=> (not res!448960) (not e!389034))))

(assert (=> b!682957 (= res!448960 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19314 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682958 () Bool)

(assert (=> b!682958 (= e!389034 (not true))))

(declare-fun -!137 (List!13044 (_ BitVec 64)) List!13044)

(assert (=> b!682958 (= (-!137 ($colon$colon!336 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313734 () Unit!23987)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13044) Unit!23987)

(assert (=> b!682958 (= lt!313734 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!682958 (subseq!172 acc!681 acc!681)))

(declare-fun lt!313740 () Unit!23987)

(assert (=> b!682958 (= lt!313740 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682958 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313735 () Unit!23987)

(assert (=> b!682958 (= lt!313735 e!389031)))

(declare-fun c!77362 () Bool)

(assert (=> b!682958 (= c!77362 (validKeyInArray!0 (select (arr!18950 a!3626) from!3004)))))

(declare-fun lt!313737 () Unit!23987)

(assert (=> b!682958 (= lt!313737 e!389035)))

(declare-fun c!77363 () Bool)

(declare-fun arrayContainsKey!0 (array!39544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682958 (= c!77363 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682958 (arrayContainsKey!0 (array!39545 (store (arr!18950 a!3626) i!1382 k!2843) (size!19314 a!3626)) k!2843 from!3004)))

(declare-fun b!682959 () Bool)

(declare-fun res!448961 () Bool)

(assert (=> b!682959 (=> (not res!448961) (not e!389034))))

(declare-fun noDuplicate!834 (List!13044) Bool)

(assert (=> b!682959 (= res!448961 (noDuplicate!834 acc!681))))

(declare-fun b!682960 () Bool)

(declare-fun res!448964 () Bool)

(assert (=> b!682960 (=> (not res!448964) (not e!389034))))

(assert (=> b!682960 (= res!448964 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682961 () Bool)

(declare-fun Unit!23991 () Unit!23987)

(assert (=> b!682961 (= e!389031 Unit!23991)))

(assert (= (and start!60904 res!448958) b!682959))

(assert (= (and b!682959 res!448961) b!682950))

(assert (= (and b!682950 res!448965) b!682948))

(assert (= (and b!682948 res!448962) b!682945))

(assert (= (and b!682945 res!448966) b!682956))

(assert (= (and b!682945 (not res!448963)) b!682946))

(assert (= (and b!682946 res!448957) b!682953))

(assert (= (and b!682945 res!448955) b!682952))

(assert (= (and b!682952 res!448967) b!682944))

(assert (= (and b!682944 res!448954) b!682955))

(assert (= (and b!682955 res!448959) b!682947))

(assert (= (and b!682947 res!448956) b!682960))

(assert (= (and b!682960 res!448964) b!682957))

(assert (= (and b!682957 res!448960) b!682958))

(assert (= (and b!682958 c!77363) b!682951))

(assert (= (and b!682958 (not c!77363)) b!682954))

(assert (= (and b!682958 c!77362) b!682949))

(assert (= (and b!682958 (not c!77362)) b!682961))

(declare-fun m!647597 () Bool)

(assert (=> b!682944 m!647597))

(declare-fun m!647599 () Bool)

(assert (=> b!682952 m!647599))

(declare-fun m!647601 () Bool)

(assert (=> b!682959 m!647601))

(declare-fun m!647603 () Bool)

(assert (=> b!682953 m!647603))

(declare-fun m!647605 () Bool)

(assert (=> b!682947 m!647605))

(declare-fun m!647607 () Bool)

(assert (=> b!682950 m!647607))

(declare-fun m!647609 () Bool)

(assert (=> b!682960 m!647609))

(declare-fun m!647611 () Bool)

(assert (=> b!682951 m!647611))

(declare-fun m!647613 () Bool)

(assert (=> b!682958 m!647613))

(declare-fun m!647615 () Bool)

(assert (=> b!682958 m!647615))

(declare-fun m!647617 () Bool)

(assert (=> b!682958 m!647617))

(declare-fun m!647619 () Bool)

(assert (=> b!682958 m!647619))

(declare-fun m!647621 () Bool)

(assert (=> b!682958 m!647621))

(declare-fun m!647623 () Bool)

(assert (=> b!682958 m!647623))

(declare-fun m!647625 () Bool)

(assert (=> b!682958 m!647625))

(declare-fun m!647627 () Bool)

(assert (=> b!682958 m!647627))

(assert (=> b!682958 m!647613))

(assert (=> b!682958 m!647619))

(declare-fun m!647629 () Bool)

(assert (=> b!682958 m!647629))

(declare-fun m!647631 () Bool)

(assert (=> b!682958 m!647631))

(declare-fun m!647633 () Bool)

(assert (=> b!682958 m!647633))

(assert (=> b!682956 m!647603))

(declare-fun m!647635 () Bool)

(assert (=> start!60904 m!647635))

(declare-fun m!647637 () Bool)

(assert (=> b!682948 m!647637))

(assert (=> b!682949 m!647617))

(assert (=> b!682949 m!647619))

(declare-fun m!647639 () Bool)

(assert (=> b!682949 m!647639))

(declare-fun m!647641 () Bool)

(assert (=> b!682949 m!647641))

(assert (=> b!682949 m!647619))

(assert (=> b!682949 m!647639))

(assert (=> b!682949 m!647625))

(assert (=> b!682949 m!647633))

(push 1)

(assert (not b!682951))

(assert (not b!682948))

(assert (not b!682956))

(assert (not b!682950))

(assert (not b!682944))

(assert (not b!682952))

(assert (not b!682959))

(assert (not start!60904))

(assert (not b!682960))

(assert (not b!682947))

