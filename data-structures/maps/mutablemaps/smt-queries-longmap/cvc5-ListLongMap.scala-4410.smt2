; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60888 () Bool)

(assert start!60888)

(declare-fun b!682512 () Bool)

(declare-fun res!448629 () Bool)

(declare-fun e!388862 () Bool)

(assert (=> b!682512 (=> (not res!448629) (not e!388862))))

(declare-datatypes ((List!13036 0))(
  ( (Nil!13033) (Cons!13032 (h!14077 (_ BitVec 64)) (t!19287 List!13036)) )
))
(declare-fun acc!681 () List!13036)

(declare-fun noDuplicate!826 (List!13036) Bool)

(assert (=> b!682512 (= res!448629 (noDuplicate!826 acc!681))))

(declare-fun b!682513 () Bool)

(declare-fun res!448627 () Bool)

(assert (=> b!682513 (=> (not res!448627) (not e!388862))))

(declare-fun e!388863 () Bool)

(assert (=> b!682513 (= res!448627 e!388863)))

(declare-fun res!448619 () Bool)

(assert (=> b!682513 (=> res!448619 e!388863)))

(declare-fun e!388861 () Bool)

(assert (=> b!682513 (= res!448619 e!388861)))

(declare-fun res!448620 () Bool)

(assert (=> b!682513 (=> (not res!448620) (not e!388861))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682513 (= res!448620 (bvsgt from!3004 i!1382))))

(declare-fun b!682514 () Bool)

(declare-fun res!448623 () Bool)

(assert (=> b!682514 (=> (not res!448623) (not e!388862))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682514 (= res!448623 (validKeyInArray!0 k!2843))))

(declare-fun b!682515 () Bool)

(declare-fun res!448626 () Bool)

(assert (=> b!682515 (=> (not res!448626) (not e!388862))))

(declare-datatypes ((array!39528 0))(
  ( (array!39529 (arr!18942 (Array (_ BitVec 32) (_ BitVec 64))) (size!19306 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39528)

(declare-fun arrayNoDuplicates!0 (array!39528 (_ BitVec 32) List!13036) Bool)

(assert (=> b!682515 (= res!448626 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682516 () Bool)

(declare-datatypes ((Unit!23947 0))(
  ( (Unit!23948) )
))
(declare-fun e!388867 () Unit!23947)

(declare-fun Unit!23949 () Unit!23947)

(assert (=> b!682516 (= e!388867 Unit!23949)))

(declare-fun b!682517 () Bool)

(declare-fun lt!313572 () Unit!23947)

(assert (=> b!682517 (= e!388867 lt!313572)))

(declare-fun lt!313568 () Unit!23947)

(declare-fun lemmaListSubSeqRefl!0 (List!13036) Unit!23947)

(assert (=> b!682517 (= lt!313568 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!164 (List!13036 List!13036) Bool)

(assert (=> b!682517 (subseq!164 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39528 List!13036 List!13036 (_ BitVec 32)) Unit!23947)

(declare-fun $colon$colon!328 (List!13036 (_ BitVec 64)) List!13036)

(assert (=> b!682517 (= lt!313572 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!328 acc!681 (select (arr!18942 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682517 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun res!448622 () Bool)

(assert (=> start!60888 (=> (not res!448622) (not e!388862))))

(assert (=> start!60888 (= res!448622 (and (bvslt (size!19306 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19306 a!3626))))))

(assert (=> start!60888 e!388862))

(assert (=> start!60888 true))

(declare-fun array_inv!14716 (array!39528) Bool)

(assert (=> start!60888 (array_inv!14716 a!3626)))

(declare-fun b!682518 () Bool)

(declare-fun e!388865 () Unit!23947)

(declare-fun Unit!23950 () Unit!23947)

(assert (=> b!682518 (= e!388865 Unit!23950)))

(declare-fun lt!313570 () Unit!23947)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39528 (_ BitVec 64) (_ BitVec 32)) Unit!23947)

(assert (=> b!682518 (= lt!313570 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682518 false))

(declare-fun b!682519 () Bool)

(declare-fun res!448631 () Bool)

(assert (=> b!682519 (=> (not res!448631) (not e!388862))))

(declare-fun contains!3579 (List!13036 (_ BitVec 64)) Bool)

(assert (=> b!682519 (= res!448631 (not (contains!3579 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682520 () Bool)

(declare-fun res!448625 () Bool)

(assert (=> b!682520 (=> (not res!448625) (not e!388862))))

(assert (=> b!682520 (= res!448625 (not (contains!3579 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682521 () Bool)

(assert (=> b!682521 (= e!388862 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun -!129 (List!13036 (_ BitVec 64)) List!13036)

(assert (=> b!682521 (= (-!129 ($colon$colon!328 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313566 () Unit!23947)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13036) Unit!23947)

(assert (=> b!682521 (= lt!313566 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!682521 (subseq!164 acc!681 acc!681)))

(declare-fun lt!313571 () Unit!23947)

(assert (=> b!682521 (= lt!313571 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682521 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313567 () Unit!23947)

(assert (=> b!682521 (= lt!313567 e!388867)))

(declare-fun c!77315 () Bool)

(assert (=> b!682521 (= c!77315 (validKeyInArray!0 (select (arr!18942 a!3626) from!3004)))))

(declare-fun lt!313569 () Unit!23947)

(assert (=> b!682521 (= lt!313569 e!388865)))

(declare-fun c!77314 () Bool)

(declare-fun arrayContainsKey!0 (array!39528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682521 (= c!77314 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682521 (arrayContainsKey!0 (array!39529 (store (arr!18942 a!3626) i!1382 k!2843) (size!19306 a!3626)) k!2843 from!3004)))

(declare-fun b!682522 () Bool)

(declare-fun e!388866 () Bool)

(assert (=> b!682522 (= e!388863 e!388866)))

(declare-fun res!448628 () Bool)

(assert (=> b!682522 (=> (not res!448628) (not e!388866))))

(assert (=> b!682522 (= res!448628 (bvsle from!3004 i!1382))))

(declare-fun b!682523 () Bool)

(declare-fun res!448624 () Bool)

(assert (=> b!682523 (=> (not res!448624) (not e!388862))))

(assert (=> b!682523 (= res!448624 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13033))))

(declare-fun b!682524 () Bool)

(assert (=> b!682524 (= e!388861 (contains!3579 acc!681 k!2843))))

(declare-fun b!682525 () Bool)

(declare-fun res!448630 () Bool)

(assert (=> b!682525 (=> (not res!448630) (not e!388862))))

(assert (=> b!682525 (= res!448630 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19306 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682526 () Bool)

(assert (=> b!682526 (= e!388866 (not (contains!3579 acc!681 k!2843)))))

(declare-fun b!682527 () Bool)

(declare-fun res!448618 () Bool)

(assert (=> b!682527 (=> (not res!448618) (not e!388862))))

(assert (=> b!682527 (= res!448618 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682528 () Bool)

(declare-fun Unit!23951 () Unit!23947)

(assert (=> b!682528 (= e!388865 Unit!23951)))

(declare-fun b!682529 () Bool)

(declare-fun res!448621 () Bool)

(assert (=> b!682529 (=> (not res!448621) (not e!388862))))

(assert (=> b!682529 (= res!448621 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19306 a!3626))))))

(assert (= (and start!60888 res!448622) b!682512))

(assert (= (and b!682512 res!448629) b!682519))

(assert (= (and b!682519 res!448631) b!682520))

(assert (= (and b!682520 res!448625) b!682513))

(assert (= (and b!682513 res!448620) b!682524))

(assert (= (and b!682513 (not res!448619)) b!682522))

(assert (= (and b!682522 res!448628) b!682526))

(assert (= (and b!682513 res!448627) b!682523))

(assert (= (and b!682523 res!448624) b!682515))

(assert (= (and b!682515 res!448626) b!682529))

(assert (= (and b!682529 res!448621) b!682514))

(assert (= (and b!682514 res!448623) b!682527))

(assert (= (and b!682527 res!448618) b!682525))

(assert (= (and b!682525 res!448630) b!682521))

(assert (= (and b!682521 c!77314) b!682518))

(assert (= (and b!682521 (not c!77314)) b!682528))

(assert (= (and b!682521 c!77315) b!682517))

(assert (= (and b!682521 (not c!77315)) b!682516))

(declare-fun m!647229 () Bool)

(assert (=> b!682517 m!647229))

(declare-fun m!647231 () Bool)

(assert (=> b!682517 m!647231))

(declare-fun m!647233 () Bool)

(assert (=> b!682517 m!647233))

(declare-fun m!647235 () Bool)

(assert (=> b!682517 m!647235))

(assert (=> b!682517 m!647231))

(assert (=> b!682517 m!647233))

(declare-fun m!647237 () Bool)

(assert (=> b!682517 m!647237))

(declare-fun m!647239 () Bool)

(assert (=> b!682517 m!647239))

(declare-fun m!647241 () Bool)

(assert (=> b!682515 m!647241))

(declare-fun m!647243 () Bool)

(assert (=> b!682520 m!647243))

(declare-fun m!647245 () Bool)

(assert (=> b!682521 m!647245))

(declare-fun m!647247 () Bool)

(assert (=> b!682521 m!647247))

(assert (=> b!682521 m!647229))

(assert (=> b!682521 m!647231))

(declare-fun m!647249 () Bool)

(assert (=> b!682521 m!647249))

(declare-fun m!647251 () Bool)

(assert (=> b!682521 m!647251))

(assert (=> b!682521 m!647237))

(declare-fun m!647253 () Bool)

(assert (=> b!682521 m!647253))

(assert (=> b!682521 m!647245))

(assert (=> b!682521 m!647231))

(declare-fun m!647255 () Bool)

(assert (=> b!682521 m!647255))

(declare-fun m!647257 () Bool)

(assert (=> b!682521 m!647257))

(assert (=> b!682521 m!647239))

(declare-fun m!647259 () Bool)

(assert (=> b!682526 m!647259))

(declare-fun m!647261 () Bool)

(assert (=> b!682514 m!647261))

(declare-fun m!647263 () Bool)

(assert (=> b!682523 m!647263))

(declare-fun m!647265 () Bool)

(assert (=> b!682519 m!647265))

(declare-fun m!647267 () Bool)

(assert (=> b!682512 m!647267))

(declare-fun m!647269 () Bool)

(assert (=> start!60888 m!647269))

(assert (=> b!682524 m!647259))

(declare-fun m!647271 () Bool)

(assert (=> b!682527 m!647271))

(declare-fun m!647273 () Bool)

(assert (=> b!682518 m!647273))

(push 1)

