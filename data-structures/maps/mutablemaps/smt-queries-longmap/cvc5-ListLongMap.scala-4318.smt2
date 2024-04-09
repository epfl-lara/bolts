; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59952 () Bool)

(assert start!59952)

(declare-fun b!663959 () Bool)

(declare-fun res!431866 () Bool)

(declare-fun e!380840 () Bool)

(assert (=> b!663959 (=> (not res!431866) (not e!380840))))

(declare-datatypes ((array!38955 0))(
  ( (array!38956 (arr!18666 (Array (_ BitVec 32) (_ BitVec 64))) (size!19030 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38955)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663959 (= res!431866 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663960 () Bool)

(declare-fun res!431874 () Bool)

(assert (=> b!663960 (=> (not res!431874) (not e!380840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663960 (= res!431874 (validKeyInArray!0 k!2843))))

(declare-fun b!663961 () Bool)

(declare-fun e!380839 () Bool)

(declare-fun e!380842 () Bool)

(assert (=> b!663961 (= e!380839 e!380842)))

(declare-fun res!431885 () Bool)

(assert (=> b!663961 (=> (not res!431885) (not e!380842))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663961 (= res!431885 (bvsle from!3004 i!1382))))

(declare-fun b!663962 () Bool)

(declare-fun res!431882 () Bool)

(assert (=> b!663962 (=> (not res!431882) (not e!380840))))

(declare-datatypes ((List!12760 0))(
  ( (Nil!12757) (Cons!12756 (h!13801 (_ BitVec 64)) (t!18996 List!12760)) )
))
(declare-fun arrayNoDuplicates!0 (array!38955 (_ BitVec 32) List!12760) Bool)

(assert (=> b!663962 (= res!431882 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12757))))

(declare-fun b!663964 () Bool)

(declare-fun res!431869 () Bool)

(declare-fun e!380841 () Bool)

(assert (=> b!663964 (=> res!431869 e!380841)))

(declare-fun lt!309453 () List!12760)

(declare-fun contains!3303 (List!12760 (_ BitVec 64)) Bool)

(assert (=> b!663964 (= res!431869 (contains!3303 lt!309453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!663965 () Bool)

(declare-fun res!431867 () Bool)

(assert (=> b!663965 (=> res!431867 e!380841)))

(declare-fun acc!681 () List!12760)

(assert (=> b!663965 (= res!431867 (contains!3303 acc!681 k!2843))))

(declare-fun b!663966 () Bool)

(assert (=> b!663966 (= e!380841 true)))

(declare-fun lt!309455 () Bool)

(assert (=> b!663966 (= lt!309455 (contains!3303 lt!309453 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!663967 () Bool)

(declare-fun res!431865 () Bool)

(assert (=> b!663967 (=> (not res!431865) (not e!380840))))

(declare-fun noDuplicate!550 (List!12760) Bool)

(assert (=> b!663967 (= res!431865 (noDuplicate!550 acc!681))))

(declare-fun b!663968 () Bool)

(declare-fun res!431868 () Bool)

(assert (=> b!663968 (=> (not res!431868) (not e!380840))))

(assert (=> b!663968 (= res!431868 (not (contains!3303 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663969 () Bool)

(declare-datatypes ((Unit!23125 0))(
  ( (Unit!23126) )
))
(declare-fun e!380836 () Unit!23125)

(declare-fun lt!309458 () Unit!23125)

(assert (=> b!663969 (= e!380836 lt!309458)))

(declare-fun lt!309457 () Unit!23125)

(declare-fun lemmaListSubSeqRefl!0 (List!12760) Unit!23125)

(assert (=> b!663969 (= lt!309457 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!41 (List!12760 List!12760) Bool)

(assert (=> b!663969 (subseq!41 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38955 List!12760 List!12760 (_ BitVec 32)) Unit!23125)

(declare-fun $colon$colon!172 (List!12760 (_ BitVec 64)) List!12760)

(assert (=> b!663969 (= lt!309458 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!172 acc!681 (select (arr!18666 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663969 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663970 () Bool)

(declare-fun Unit!23127 () Unit!23125)

(assert (=> b!663970 (= e!380836 Unit!23127)))

(declare-fun b!663971 () Bool)

(declare-fun res!431881 () Bool)

(assert (=> b!663971 (=> (not res!431881) (not e!380840))))

(assert (=> b!663971 (= res!431881 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663972 () Bool)

(declare-fun e!380837 () Unit!23125)

(declare-fun Unit!23128 () Unit!23125)

(assert (=> b!663972 (= e!380837 Unit!23128)))

(declare-fun lt!309461 () Unit!23125)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38955 (_ BitVec 64) (_ BitVec 32)) Unit!23125)

(assert (=> b!663972 (= lt!309461 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663972 false))

(declare-fun b!663963 () Bool)

(assert (=> b!663963 (= e!380842 (not (contains!3303 acc!681 k!2843)))))

(declare-fun res!431883 () Bool)

(assert (=> start!59952 (=> (not res!431883) (not e!380840))))

(assert (=> start!59952 (= res!431883 (and (bvslt (size!19030 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19030 a!3626))))))

(assert (=> start!59952 e!380840))

(assert (=> start!59952 true))

(declare-fun array_inv!14440 (array!38955) Bool)

(assert (=> start!59952 (array_inv!14440 a!3626)))

(declare-fun b!663973 () Bool)

(declare-fun res!431870 () Bool)

(assert (=> b!663973 (=> res!431870 e!380841)))

(assert (=> b!663973 (= res!431870 (not (contains!3303 lt!309453 k!2843)))))

(declare-fun b!663974 () Bool)

(assert (=> b!663974 (= e!380840 (not e!380841))))

(declare-fun res!431871 () Bool)

(assert (=> b!663974 (=> res!431871 e!380841)))

(assert (=> b!663974 (= res!431871 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!39 (List!12760 (_ BitVec 64)) List!12760)

(assert (=> b!663974 (= (-!39 lt!309453 k!2843) acc!681)))

(assert (=> b!663974 (= lt!309453 ($colon$colon!172 acc!681 k!2843))))

(declare-fun lt!309454 () Unit!23125)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12760) Unit!23125)

(assert (=> b!663974 (= lt!309454 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!663974 (subseq!41 acc!681 acc!681)))

(declare-fun lt!309459 () Unit!23125)

(assert (=> b!663974 (= lt!309459 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!663974 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309460 () Unit!23125)

(assert (=> b!663974 (= lt!309460 e!380836)))

(declare-fun c!76414 () Bool)

(assert (=> b!663974 (= c!76414 (validKeyInArray!0 (select (arr!18666 a!3626) from!3004)))))

(declare-fun lt!309456 () Unit!23125)

(assert (=> b!663974 (= lt!309456 e!380837)))

(declare-fun c!76415 () Bool)

(declare-fun lt!309462 () Bool)

(assert (=> b!663974 (= c!76415 lt!309462)))

(assert (=> b!663974 (= lt!309462 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663974 (arrayContainsKey!0 (array!38956 (store (arr!18666 a!3626) i!1382 k!2843) (size!19030 a!3626)) k!2843 from!3004)))

(declare-fun b!663975 () Bool)

(declare-fun res!431873 () Bool)

(assert (=> b!663975 (=> (not res!431873) (not e!380840))))

(assert (=> b!663975 (= res!431873 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19030 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663976 () Bool)

(declare-fun res!431878 () Bool)

(assert (=> b!663976 (=> res!431878 e!380841)))

(assert (=> b!663976 (= res!431878 lt!309462)))

(declare-fun b!663977 () Bool)

(declare-fun res!431877 () Bool)

(assert (=> b!663977 (=> res!431877 e!380841)))

(assert (=> b!663977 (= res!431877 (not (subseq!41 acc!681 lt!309453)))))

(declare-fun b!663978 () Bool)

(declare-fun res!431876 () Bool)

(assert (=> b!663978 (=> (not res!431876) (not e!380840))))

(assert (=> b!663978 (= res!431876 (not (contains!3303 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663979 () Bool)

(declare-fun res!431880 () Bool)

(assert (=> b!663979 (=> res!431880 e!380841)))

(assert (=> b!663979 (= res!431880 (not (noDuplicate!550 lt!309453)))))

(declare-fun b!663980 () Bool)

(declare-fun Unit!23129 () Unit!23125)

(assert (=> b!663980 (= e!380837 Unit!23129)))

(declare-fun b!663981 () Bool)

(declare-fun res!431884 () Bool)

(assert (=> b!663981 (=> (not res!431884) (not e!380840))))

(assert (=> b!663981 (= res!431884 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19030 a!3626))))))

(declare-fun b!663982 () Bool)

(declare-fun res!431879 () Bool)

(assert (=> b!663982 (=> (not res!431879) (not e!380840))))

(assert (=> b!663982 (= res!431879 e!380839)))

(declare-fun res!431872 () Bool)

(assert (=> b!663982 (=> res!431872 e!380839)))

(declare-fun e!380835 () Bool)

(assert (=> b!663982 (= res!431872 e!380835)))

(declare-fun res!431875 () Bool)

(assert (=> b!663982 (=> (not res!431875) (not e!380835))))

(assert (=> b!663982 (= res!431875 (bvsgt from!3004 i!1382))))

(declare-fun b!663983 () Bool)

(assert (=> b!663983 (= e!380835 (contains!3303 acc!681 k!2843))))

(assert (= (and start!59952 res!431883) b!663967))

(assert (= (and b!663967 res!431865) b!663968))

(assert (= (and b!663968 res!431868) b!663978))

(assert (= (and b!663978 res!431876) b!663982))

(assert (= (and b!663982 res!431875) b!663983))

(assert (= (and b!663982 (not res!431872)) b!663961))

(assert (= (and b!663961 res!431885) b!663963))

(assert (= (and b!663982 res!431879) b!663962))

(assert (= (and b!663962 res!431882) b!663971))

(assert (= (and b!663971 res!431881) b!663981))

(assert (= (and b!663981 res!431884) b!663960))

(assert (= (and b!663960 res!431874) b!663959))

(assert (= (and b!663959 res!431866) b!663975))

(assert (= (and b!663975 res!431873) b!663974))

(assert (= (and b!663974 c!76415) b!663972))

(assert (= (and b!663974 (not c!76415)) b!663980))

(assert (= (and b!663974 c!76414) b!663969))

(assert (= (and b!663974 (not c!76414)) b!663970))

(assert (= (and b!663974 (not res!431871)) b!663979))

(assert (= (and b!663979 (not res!431880)) b!663976))

(assert (= (and b!663976 (not res!431878)) b!663965))

(assert (= (and b!663965 (not res!431867)) b!663977))

(assert (= (and b!663977 (not res!431877)) b!663973))

(assert (= (and b!663973 (not res!431870)) b!663964))

(assert (= (and b!663964 (not res!431869)) b!663966))

(declare-fun m!635403 () Bool)

(assert (=> start!59952 m!635403))

(declare-fun m!635405 () Bool)

(assert (=> b!663968 m!635405))

(declare-fun m!635407 () Bool)

(assert (=> b!663969 m!635407))

(declare-fun m!635409 () Bool)

(assert (=> b!663969 m!635409))

(declare-fun m!635411 () Bool)

(assert (=> b!663969 m!635411))

(declare-fun m!635413 () Bool)

(assert (=> b!663969 m!635413))

(assert (=> b!663969 m!635409))

(assert (=> b!663969 m!635411))

(declare-fun m!635415 () Bool)

(assert (=> b!663969 m!635415))

(declare-fun m!635417 () Bool)

(assert (=> b!663969 m!635417))

(declare-fun m!635419 () Bool)

(assert (=> b!663978 m!635419))

(declare-fun m!635421 () Bool)

(assert (=> b!663972 m!635421))

(declare-fun m!635423 () Bool)

(assert (=> b!663964 m!635423))

(declare-fun m!635425 () Bool)

(assert (=> b!663959 m!635425))

(declare-fun m!635427 () Bool)

(assert (=> b!663962 m!635427))

(declare-fun m!635429 () Bool)

(assert (=> b!663973 m!635429))

(declare-fun m!635431 () Bool)

(assert (=> b!663965 m!635431))

(declare-fun m!635433 () Bool)

(assert (=> b!663979 m!635433))

(declare-fun m!635435 () Bool)

(assert (=> b!663960 m!635435))

(assert (=> b!663974 m!635407))

(declare-fun m!635437 () Bool)

(assert (=> b!663974 m!635437))

(assert (=> b!663974 m!635409))

(declare-fun m!635439 () Bool)

(assert (=> b!663974 m!635439))

(declare-fun m!635441 () Bool)

(assert (=> b!663974 m!635441))

(assert (=> b!663974 m!635415))

(declare-fun m!635443 () Bool)

(assert (=> b!663974 m!635443))

(declare-fun m!635445 () Bool)

(assert (=> b!663974 m!635445))

(assert (=> b!663974 m!635409))

(declare-fun m!635447 () Bool)

(assert (=> b!663974 m!635447))

(declare-fun m!635449 () Bool)

(assert (=> b!663974 m!635449))

(assert (=> b!663974 m!635417))

(assert (=> b!663983 m!635431))

(declare-fun m!635451 () Bool)

(assert (=> b!663977 m!635451))

(declare-fun m!635453 () Bool)

(assert (=> b!663966 m!635453))

(declare-fun m!635455 () Bool)

(assert (=> b!663971 m!635455))

(assert (=> b!663963 m!635431))

(declare-fun m!635457 () Bool)

(assert (=> b!663967 m!635457))

(push 1)

(assert (not b!663965))

(assert (not b!663959))

(assert (not b!663979))

(assert (not b!663963))

(assert (not b!663983))

(assert (not b!663967))

(assert (not b!663978))

(assert (not b!663960))

(assert (not b!663971))

(assert (not b!663962))

(assert (not b!663968))

(assert (not b!663972))

(assert (not b!663969))

(assert (not b!663966))

(assert (not b!663974))

(assert (not b!663973))

(assert (not start!59952))

(assert (not b!663977))

(assert (not b!663964))

(check-sat)

