; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61008 () Bool)

(assert start!61008)

(declare-fun b!683955 () Bool)

(declare-fun e!389556 () Bool)

(declare-fun e!389550 () Bool)

(assert (=> b!683955 (= e!389556 e!389550)))

(declare-fun res!449755 () Bool)

(assert (=> b!683955 (=> (not res!449755) (not e!389550))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683955 (= res!449755 (bvsle from!3004 i!1382))))

(declare-fun b!683956 () Bool)

(declare-fun res!449749 () Bool)

(declare-fun e!389555 () Bool)

(assert (=> b!683956 (=> res!449749 e!389555)))

(declare-datatypes ((List!13057 0))(
  ( (Nil!13054) (Cons!13053 (h!14098 (_ BitVec 64)) (t!19311 List!13057)) )
))
(declare-fun lt!314142 () List!13057)

(declare-fun noDuplicate!847 (List!13057) Bool)

(assert (=> b!683956 (= res!449749 (not (noDuplicate!847 lt!314142)))))

(declare-fun b!683957 () Bool)

(declare-fun e!389554 () Bool)

(declare-fun acc!681 () List!13057)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3600 (List!13057 (_ BitVec 64)) Bool)

(assert (=> b!683957 (= e!389554 (contains!3600 acc!681 k!2843))))

(declare-fun res!449757 () Bool)

(declare-fun e!389551 () Bool)

(assert (=> start!61008 (=> (not res!449757) (not e!389551))))

(declare-datatypes ((array!39573 0))(
  ( (array!39574 (arr!18963 (Array (_ BitVec 32) (_ BitVec 64))) (size!19329 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39573)

(assert (=> start!61008 (= res!449757 (and (bvslt (size!19329 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19329 a!3626))))))

(assert (=> start!61008 e!389551))

(assert (=> start!61008 true))

(declare-fun array_inv!14737 (array!39573) Bool)

(assert (=> start!61008 (array_inv!14737 a!3626)))

(declare-fun b!683958 () Bool)

(assert (=> b!683958 (= e!389550 (not (contains!3600 acc!681 k!2843)))))

(declare-fun b!683959 () Bool)

(declare-fun res!449750 () Bool)

(assert (=> b!683959 (=> (not res!449750) (not e!389551))))

(assert (=> b!683959 (= res!449750 (not (contains!3600 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683960 () Bool)

(declare-fun res!449758 () Bool)

(assert (=> b!683960 (=> (not res!449758) (not e!389551))))

(assert (=> b!683960 (= res!449758 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19329 a!3626))))))

(declare-fun b!683961 () Bool)

(declare-fun res!449744 () Bool)

(assert (=> b!683961 (=> res!449744 e!389555)))

(declare-fun lt!314144 () Bool)

(assert (=> b!683961 (= res!449744 lt!314144)))

(declare-fun b!683962 () Bool)

(declare-fun res!449753 () Bool)

(assert (=> b!683962 (=> (not res!449753) (not e!389551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683962 (= res!449753 (validKeyInArray!0 k!2843))))

(declare-fun b!683963 () Bool)

(declare-datatypes ((Unit!24052 0))(
  ( (Unit!24053) )
))
(declare-fun e!389557 () Unit!24052)

(declare-fun Unit!24054 () Unit!24052)

(assert (=> b!683963 (= e!389557 Unit!24054)))

(declare-fun b!683964 () Bool)

(assert (=> b!683964 (= e!389555 true)))

(declare-fun lt!314141 () Bool)

(assert (=> b!683964 (= lt!314141 (contains!3600 acc!681 k!2843))))

(declare-fun b!683965 () Bool)

(declare-fun res!449754 () Bool)

(assert (=> b!683965 (=> (not res!449754) (not e!389551))))

(declare-fun arrayContainsKey!0 (array!39573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683965 (= res!449754 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683966 () Bool)

(assert (=> b!683966 (= e!389551 (not e!389555))))

(declare-fun res!449751 () Bool)

(assert (=> b!683966 (=> res!449751 e!389555)))

(assert (=> b!683966 (= res!449751 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!150 (List!13057 (_ BitVec 64)) List!13057)

(assert (=> b!683966 (= (-!150 lt!314142 k!2843) acc!681)))

(declare-fun $colon$colon!349 (List!13057 (_ BitVec 64)) List!13057)

(assert (=> b!683966 (= lt!314142 ($colon$colon!349 acc!681 k!2843))))

(declare-fun lt!314136 () Unit!24052)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13057) Unit!24052)

(assert (=> b!683966 (= lt!314136 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!185 (List!13057 List!13057) Bool)

(assert (=> b!683966 (subseq!185 acc!681 acc!681)))

(declare-fun lt!314139 () Unit!24052)

(declare-fun lemmaListSubSeqRefl!0 (List!13057) Unit!24052)

(assert (=> b!683966 (= lt!314139 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39573 (_ BitVec 32) List!13057) Bool)

(assert (=> b!683966 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314143 () Unit!24052)

(declare-fun e!389552 () Unit!24052)

(assert (=> b!683966 (= lt!314143 e!389552)))

(declare-fun c!77474 () Bool)

(assert (=> b!683966 (= c!77474 (validKeyInArray!0 (select (arr!18963 a!3626) from!3004)))))

(declare-fun lt!314137 () Unit!24052)

(assert (=> b!683966 (= lt!314137 e!389557)))

(declare-fun c!77473 () Bool)

(assert (=> b!683966 (= c!77473 lt!314144)))

(assert (=> b!683966 (= lt!314144 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683966 (arrayContainsKey!0 (array!39574 (store (arr!18963 a!3626) i!1382 k!2843) (size!19329 a!3626)) k!2843 from!3004)))

(declare-fun b!683967 () Bool)

(declare-fun res!449752 () Bool)

(assert (=> b!683967 (=> (not res!449752) (not e!389551))))

(assert (=> b!683967 (= res!449752 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683968 () Bool)

(declare-fun lt!314138 () Unit!24052)

(assert (=> b!683968 (= e!389552 lt!314138)))

(declare-fun lt!314145 () Unit!24052)

(assert (=> b!683968 (= lt!314145 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683968 (subseq!185 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39573 List!13057 List!13057 (_ BitVec 32)) Unit!24052)

(assert (=> b!683968 (= lt!314138 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!349 acc!681 (select (arr!18963 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683968 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683969 () Bool)

(declare-fun Unit!24055 () Unit!24052)

(assert (=> b!683969 (= e!389557 Unit!24055)))

(declare-fun lt!314140 () Unit!24052)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39573 (_ BitVec 64) (_ BitVec 32)) Unit!24052)

(assert (=> b!683969 (= lt!314140 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683969 false))

(declare-fun b!683970 () Bool)

(declare-fun Unit!24056 () Unit!24052)

(assert (=> b!683970 (= e!389552 Unit!24056)))

(declare-fun b!683971 () Bool)

(declare-fun res!449748 () Bool)

(assert (=> b!683971 (=> (not res!449748) (not e!389551))))

(assert (=> b!683971 (= res!449748 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19329 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683972 () Bool)

(declare-fun res!449743 () Bool)

(assert (=> b!683972 (=> (not res!449743) (not e!389551))))

(assert (=> b!683972 (= res!449743 e!389556)))

(declare-fun res!449747 () Bool)

(assert (=> b!683972 (=> res!449747 e!389556)))

(assert (=> b!683972 (= res!449747 e!389554)))

(declare-fun res!449746 () Bool)

(assert (=> b!683972 (=> (not res!449746) (not e!389554))))

(assert (=> b!683972 (= res!449746 (bvsgt from!3004 i!1382))))

(declare-fun b!683973 () Bool)

(declare-fun res!449745 () Bool)

(assert (=> b!683973 (=> (not res!449745) (not e!389551))))

(assert (=> b!683973 (= res!449745 (noDuplicate!847 acc!681))))

(declare-fun b!683974 () Bool)

(declare-fun res!449759 () Bool)

(assert (=> b!683974 (=> (not res!449759) (not e!389551))))

(assert (=> b!683974 (= res!449759 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13054))))

(declare-fun b!683975 () Bool)

(declare-fun res!449756 () Bool)

(assert (=> b!683975 (=> (not res!449756) (not e!389551))))

(assert (=> b!683975 (= res!449756 (not (contains!3600 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61008 res!449757) b!683973))

(assert (= (and b!683973 res!449745) b!683959))

(assert (= (and b!683959 res!449750) b!683975))

(assert (= (and b!683975 res!449756) b!683972))

(assert (= (and b!683972 res!449746) b!683957))

(assert (= (and b!683972 (not res!449747)) b!683955))

(assert (= (and b!683955 res!449755) b!683958))

(assert (= (and b!683972 res!449743) b!683974))

(assert (= (and b!683974 res!449759) b!683967))

(assert (= (and b!683967 res!449752) b!683960))

(assert (= (and b!683960 res!449758) b!683962))

(assert (= (and b!683962 res!449753) b!683965))

(assert (= (and b!683965 res!449754) b!683971))

(assert (= (and b!683971 res!449748) b!683966))

(assert (= (and b!683966 c!77473) b!683969))

(assert (= (and b!683966 (not c!77473)) b!683963))

(assert (= (and b!683966 c!77474) b!683968))

(assert (= (and b!683966 (not c!77474)) b!683970))

(assert (= (and b!683966 (not res!449751)) b!683956))

(assert (= (and b!683956 (not res!449749)) b!683961))

(assert (= (and b!683961 (not res!449744)) b!683964))

(declare-fun m!648447 () Bool)

(assert (=> b!683967 m!648447))

(declare-fun m!648449 () Bool)

(assert (=> b!683975 m!648449))

(declare-fun m!648451 () Bool)

(assert (=> start!61008 m!648451))

(declare-fun m!648453 () Bool)

(assert (=> b!683958 m!648453))

(declare-fun m!648455 () Bool)

(assert (=> b!683974 m!648455))

(declare-fun m!648457 () Bool)

(assert (=> b!683965 m!648457))

(declare-fun m!648459 () Bool)

(assert (=> b!683969 m!648459))

(assert (=> b!683964 m!648453))

(declare-fun m!648461 () Bool)

(assert (=> b!683973 m!648461))

(declare-fun m!648463 () Bool)

(assert (=> b!683956 m!648463))

(declare-fun m!648465 () Bool)

(assert (=> b!683966 m!648465))

(declare-fun m!648467 () Bool)

(assert (=> b!683966 m!648467))

(declare-fun m!648469 () Bool)

(assert (=> b!683966 m!648469))

(declare-fun m!648471 () Bool)

(assert (=> b!683966 m!648471))

(declare-fun m!648473 () Bool)

(assert (=> b!683966 m!648473))

(declare-fun m!648475 () Bool)

(assert (=> b!683966 m!648475))

(declare-fun m!648477 () Bool)

(assert (=> b!683966 m!648477))

(declare-fun m!648479 () Bool)

(assert (=> b!683966 m!648479))

(assert (=> b!683966 m!648467))

(declare-fun m!648481 () Bool)

(assert (=> b!683966 m!648481))

(declare-fun m!648483 () Bool)

(assert (=> b!683966 m!648483))

(declare-fun m!648485 () Bool)

(assert (=> b!683966 m!648485))

(assert (=> b!683957 m!648453))

(declare-fun m!648487 () Bool)

(assert (=> b!683959 m!648487))

(assert (=> b!683968 m!648465))

(assert (=> b!683968 m!648467))

(declare-fun m!648489 () Bool)

(assert (=> b!683968 m!648489))

(declare-fun m!648491 () Bool)

(assert (=> b!683968 m!648491))

(assert (=> b!683968 m!648467))

(assert (=> b!683968 m!648489))

(assert (=> b!683968 m!648475))

(assert (=> b!683968 m!648485))

(declare-fun m!648493 () Bool)

(assert (=> b!683962 m!648493))

(push 1)

(assert (not b!683964))

(assert (not b!683965))

(assert (not b!683969))

(assert (not b!683974))

(assert (not b!683956))

(assert (not b!683962))

(assert (not b!683958))

(assert (not b!683973))

(assert (not b!683968))

(assert (not b!683975))

(assert (not b!683966))

(assert (not b!683957))

(assert (not start!61008))

(assert (not b!683959))

