; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60228 () Bool)

(assert start!60228)

(declare-fun b!673681 () Bool)

(declare-fun res!440390 () Bool)

(declare-fun e!384649 () Bool)

(assert (=> b!673681 (=> (not res!440390) (not e!384649))))

(declare-fun e!384646 () Bool)

(assert (=> b!673681 (= res!440390 e!384646)))

(declare-fun res!440383 () Bool)

(assert (=> b!673681 (=> res!440383 e!384646)))

(declare-fun e!384647 () Bool)

(assert (=> b!673681 (= res!440383 e!384647)))

(declare-fun res!440386 () Bool)

(assert (=> b!673681 (=> (not res!440386) (not e!384647))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673681 (= res!440386 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673682 () Bool)

(declare-fun res!440367 () Bool)

(declare-fun e!384644 () Bool)

(assert (=> b!673682 (=> (not res!440367) (not e!384644))))

(declare-datatypes ((array!39231 0))(
  ( (array!39232 (arr!18804 (Array (_ BitVec 32) (_ BitVec 64))) (size!19168 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39231)

(assert (=> b!673682 (= res!440367 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19168 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673683 () Bool)

(declare-fun res!440375 () Bool)

(assert (=> b!673683 (=> (not res!440375) (not e!384644))))

(declare-datatypes ((List!12898 0))(
  ( (Nil!12895) (Cons!12894 (h!13939 (_ BitVec 64)) (t!19134 List!12898)) )
))
(declare-fun arrayNoDuplicates!0 (array!39231 (_ BitVec 32) List!12898) Bool)

(assert (=> b!673683 (= res!440375 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12895))))

(declare-fun b!673684 () Bool)

(declare-fun res!440377 () Bool)

(assert (=> b!673684 (=> (not res!440377) (not e!384644))))

(declare-fun acc!681 () List!12898)

(declare-fun contains!3441 (List!12898 (_ BitVec 64)) Bool)

(assert (=> b!673684 (= res!440377 (not (contains!3441 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673685 () Bool)

(declare-fun res!440372 () Bool)

(assert (=> b!673685 (=> (not res!440372) (not e!384649))))

(declare-fun lt!312477 () List!12898)

(declare-fun noDuplicate!688 (List!12898) Bool)

(assert (=> b!673685 (= res!440372 (noDuplicate!688 lt!312477))))

(declare-fun res!440374 () Bool)

(assert (=> start!60228 (=> (not res!440374) (not e!384644))))

(assert (=> start!60228 (= res!440374 (and (bvslt (size!19168 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19168 a!3626))))))

(assert (=> start!60228 e!384644))

(assert (=> start!60228 true))

(declare-fun array_inv!14578 (array!39231) Bool)

(assert (=> start!60228 (array_inv!14578 a!3626)))

(declare-fun b!673686 () Bool)

(declare-fun res!440373 () Bool)

(assert (=> b!673686 (=> (not res!440373) (not e!384644))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673686 (= res!440373 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673687 () Bool)

(declare-fun res!440378 () Bool)

(assert (=> b!673687 (=> (not res!440378) (not e!384644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673687 (= res!440378 (validKeyInArray!0 k!2843))))

(declare-fun b!673688 () Bool)

(declare-fun e!384641 () Bool)

(assert (=> b!673688 (= e!384641 e!384649)))

(declare-fun res!440369 () Bool)

(assert (=> b!673688 (=> (not res!440369) (not e!384649))))

(assert (=> b!673688 (= res!440369 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!289 (List!12898 (_ BitVec 64)) List!12898)

(assert (=> b!673688 (= lt!312477 ($colon$colon!289 acc!681 (select (arr!18804 a!3626) from!3004)))))

(declare-fun b!673689 () Bool)

(declare-fun res!440368 () Bool)

(assert (=> b!673689 (=> (not res!440368) (not e!384644))))

(assert (=> b!673689 (= res!440368 (not (contains!3441 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673690 () Bool)

(declare-fun res!440379 () Bool)

(assert (=> b!673690 (=> (not res!440379) (not e!384644))))

(assert (=> b!673690 (= res!440379 (noDuplicate!688 acc!681))))

(declare-fun b!673691 () Bool)

(declare-fun e!384642 () Bool)

(assert (=> b!673691 (= e!384642 (not (contains!3441 lt!312477 k!2843)))))

(declare-fun b!673692 () Bool)

(assert (=> b!673692 (= e!384649 false)))

(declare-fun lt!312476 () Bool)

(assert (=> b!673692 (= lt!312476 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312477))))

(declare-fun b!673693 () Bool)

(assert (=> b!673693 (= e!384647 (contains!3441 lt!312477 k!2843))))

(declare-fun b!673694 () Bool)

(declare-fun e!384645 () Bool)

(assert (=> b!673694 (= e!384645 (contains!3441 acc!681 k!2843))))

(declare-fun b!673695 () Bool)

(declare-fun res!440388 () Bool)

(assert (=> b!673695 (=> (not res!440388) (not e!384644))))

(assert (=> b!673695 (= res!440388 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673696 () Bool)

(declare-fun res!440387 () Bool)

(assert (=> b!673696 (=> (not res!440387) (not e!384649))))

(assert (=> b!673696 (= res!440387 (not (contains!3441 lt!312477 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673697 () Bool)

(declare-fun res!440389 () Bool)

(assert (=> b!673697 (=> (not res!440389) (not e!384644))))

(assert (=> b!673697 (= res!440389 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19168 a!3626))))))

(declare-fun b!673698 () Bool)

(declare-fun res!440380 () Bool)

(assert (=> b!673698 (=> (not res!440380) (not e!384649))))

(assert (=> b!673698 (= res!440380 (not (contains!3441 lt!312477 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673699 () Bool)

(declare-fun e!384640 () Bool)

(assert (=> b!673699 (= e!384640 (not (contains!3441 acc!681 k!2843)))))

(declare-fun b!673700 () Bool)

(declare-datatypes ((Unit!23680 0))(
  ( (Unit!23681) )
))
(declare-fun e!384648 () Unit!23680)

(declare-fun Unit!23682 () Unit!23680)

(assert (=> b!673700 (= e!384648 Unit!23682)))

(declare-fun b!673701 () Bool)

(assert (=> b!673701 (= e!384644 e!384641)))

(declare-fun res!440371 () Bool)

(assert (=> b!673701 (=> (not res!440371) (not e!384641))))

(assert (=> b!673701 (= res!440371 (not (= (select (arr!18804 a!3626) from!3004) k!2843)))))

(declare-fun lt!312474 () Unit!23680)

(assert (=> b!673701 (= lt!312474 e!384648)))

(declare-fun c!77024 () Bool)

(assert (=> b!673701 (= c!77024 (= (select (arr!18804 a!3626) from!3004) k!2843))))

(declare-fun b!673702 () Bool)

(declare-fun res!440384 () Bool)

(assert (=> b!673702 (=> (not res!440384) (not e!384644))))

(declare-fun e!384639 () Bool)

(assert (=> b!673702 (= res!440384 e!384639)))

(declare-fun res!440381 () Bool)

(assert (=> b!673702 (=> res!440381 e!384639)))

(assert (=> b!673702 (= res!440381 e!384645)))

(declare-fun res!440370 () Bool)

(assert (=> b!673702 (=> (not res!440370) (not e!384645))))

(assert (=> b!673702 (= res!440370 (bvsgt from!3004 i!1382))))

(declare-fun b!673703 () Bool)

(assert (=> b!673703 (= e!384639 e!384640)))

(declare-fun res!440376 () Bool)

(assert (=> b!673703 (=> (not res!440376) (not e!384640))))

(assert (=> b!673703 (= res!440376 (bvsle from!3004 i!1382))))

(declare-fun b!673704 () Bool)

(assert (=> b!673704 (= e!384646 e!384642)))

(declare-fun res!440385 () Bool)

(assert (=> b!673704 (=> (not res!440385) (not e!384642))))

(assert (=> b!673704 (= res!440385 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673705 () Bool)

(declare-fun Unit!23683 () Unit!23680)

(assert (=> b!673705 (= e!384648 Unit!23683)))

(assert (=> b!673705 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312475 () Unit!23680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39231 (_ BitVec 64) (_ BitVec 32)) Unit!23680)

(assert (=> b!673705 (= lt!312475 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673705 false))

(declare-fun b!673706 () Bool)

(declare-fun res!440382 () Bool)

(assert (=> b!673706 (=> (not res!440382) (not e!384644))))

(assert (=> b!673706 (= res!440382 (validKeyInArray!0 (select (arr!18804 a!3626) from!3004)))))

(assert (= (and start!60228 res!440374) b!673690))

(assert (= (and b!673690 res!440379) b!673684))

(assert (= (and b!673684 res!440377) b!673689))

(assert (= (and b!673689 res!440368) b!673702))

(assert (= (and b!673702 res!440370) b!673694))

(assert (= (and b!673702 (not res!440381)) b!673703))

(assert (= (and b!673703 res!440376) b!673699))

(assert (= (and b!673702 res!440384) b!673683))

(assert (= (and b!673683 res!440375) b!673695))

(assert (= (and b!673695 res!440388) b!673697))

(assert (= (and b!673697 res!440389) b!673687))

(assert (= (and b!673687 res!440378) b!673686))

(assert (= (and b!673686 res!440373) b!673682))

(assert (= (and b!673682 res!440367) b!673706))

(assert (= (and b!673706 res!440382) b!673701))

(assert (= (and b!673701 c!77024) b!673705))

(assert (= (and b!673701 (not c!77024)) b!673700))

(assert (= (and b!673701 res!440371) b!673688))

(assert (= (and b!673688 res!440369) b!673685))

(assert (= (and b!673685 res!440372) b!673698))

(assert (= (and b!673698 res!440380) b!673696))

(assert (= (and b!673696 res!440387) b!673681))

(assert (= (and b!673681 res!440386) b!673693))

(assert (= (and b!673681 (not res!440383)) b!673704))

(assert (= (and b!673704 res!440385) b!673691))

(assert (= (and b!673681 res!440390) b!673692))

(declare-fun m!641967 () Bool)

(assert (=> b!673694 m!641967))

(declare-fun m!641969 () Bool)

(assert (=> b!673690 m!641969))

(declare-fun m!641971 () Bool)

(assert (=> b!673692 m!641971))

(declare-fun m!641973 () Bool)

(assert (=> b!673706 m!641973))

(assert (=> b!673706 m!641973))

(declare-fun m!641975 () Bool)

(assert (=> b!673706 m!641975))

(declare-fun m!641977 () Bool)

(assert (=> b!673689 m!641977))

(declare-fun m!641979 () Bool)

(assert (=> b!673691 m!641979))

(declare-fun m!641981 () Bool)

(assert (=> b!673687 m!641981))

(declare-fun m!641983 () Bool)

(assert (=> start!60228 m!641983))

(assert (=> b!673699 m!641967))

(declare-fun m!641985 () Bool)

(assert (=> b!673686 m!641985))

(assert (=> b!673688 m!641973))

(assert (=> b!673688 m!641973))

(declare-fun m!641987 () Bool)

(assert (=> b!673688 m!641987))

(assert (=> b!673701 m!641973))

(declare-fun m!641989 () Bool)

(assert (=> b!673705 m!641989))

(declare-fun m!641991 () Bool)

(assert (=> b!673705 m!641991))

(assert (=> b!673693 m!641979))

(declare-fun m!641993 () Bool)

(assert (=> b!673685 m!641993))

(declare-fun m!641995 () Bool)

(assert (=> b!673696 m!641995))

(declare-fun m!641997 () Bool)

(assert (=> b!673683 m!641997))

(declare-fun m!641999 () Bool)

(assert (=> b!673698 m!641999))

(declare-fun m!642001 () Bool)

(assert (=> b!673695 m!642001))

(declare-fun m!642003 () Bool)

(assert (=> b!673684 m!642003))

(push 1)

