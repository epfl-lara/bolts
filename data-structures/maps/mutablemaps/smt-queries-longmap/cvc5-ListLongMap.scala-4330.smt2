; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60024 () Bool)

(assert start!60024)

(declare-fun b!666659 () Bool)

(declare-fun res!434138 () Bool)

(declare-fun e!381700 () Bool)

(assert (=> b!666659 (=> (not res!434138) (not e!381700))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39027 0))(
  ( (array!39028 (arr!18702 (Array (_ BitVec 32) (_ BitVec 64))) (size!19066 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39027)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!666659 (= res!434138 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19066 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666661 () Bool)

(declare-fun e!381703 () Bool)

(declare-datatypes ((List!12796 0))(
  ( (Nil!12793) (Cons!12792 (h!13837 (_ BitVec 64)) (t!19032 List!12796)) )
))
(declare-fun acc!681 () List!12796)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3339 (List!12796 (_ BitVec 64)) Bool)

(assert (=> b!666661 (= e!381703 (contains!3339 acc!681 k!2843))))

(declare-fun b!666662 () Bool)

(declare-fun res!434145 () Bool)

(assert (=> b!666662 (=> (not res!434145) (not e!381700))))

(declare-fun arrayContainsKey!0 (array!39027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666662 (= res!434145 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666663 () Bool)

(declare-fun res!434143 () Bool)

(declare-fun e!381701 () Bool)

(assert (=> b!666663 (=> res!434143 e!381701)))

(assert (=> b!666663 (= res!434143 (contains!3339 acc!681 k!2843))))

(declare-fun b!666664 () Bool)

(declare-fun res!434135 () Bool)

(assert (=> b!666664 (=> res!434135 e!381701)))

(declare-fun lt!310538 () List!12796)

(assert (=> b!666664 (= res!434135 (not (contains!3339 lt!310538 k!2843)))))

(declare-fun b!666665 () Bool)

(declare-fun res!434136 () Bool)

(assert (=> b!666665 (=> (not res!434136) (not e!381700))))

(assert (=> b!666665 (= res!434136 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19066 a!3626))))))

(declare-fun b!666666 () Bool)

(declare-fun res!434146 () Bool)

(assert (=> b!666666 (=> (not res!434146) (not e!381700))))

(declare-fun arrayNoDuplicates!0 (array!39027 (_ BitVec 32) List!12796) Bool)

(assert (=> b!666666 (= res!434146 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666667 () Bool)

(declare-fun res!434147 () Bool)

(assert (=> b!666667 (=> (not res!434147) (not e!381700))))

(assert (=> b!666667 (= res!434147 (not (contains!3339 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666668 () Bool)

(declare-fun res!434150 () Bool)

(assert (=> b!666668 (=> (not res!434150) (not e!381700))))

(assert (=> b!666668 (= res!434150 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12793))))

(declare-fun b!666669 () Bool)

(assert (=> b!666669 (= e!381700 (not e!381701))))

(declare-fun res!434142 () Bool)

(assert (=> b!666669 (=> res!434142 e!381701)))

(assert (=> b!666669 (= res!434142 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!75 (List!12796 (_ BitVec 64)) List!12796)

(assert (=> b!666669 (= (-!75 lt!310538 k!2843) acc!681)))

(declare-fun $colon$colon!208 (List!12796 (_ BitVec 64)) List!12796)

(assert (=> b!666669 (= lt!310538 ($colon$colon!208 acc!681 k!2843))))

(declare-datatypes ((Unit!23305 0))(
  ( (Unit!23306) )
))
(declare-fun lt!310540 () Unit!23305)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12796) Unit!23305)

(assert (=> b!666669 (= lt!310540 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!77 (List!12796 List!12796) Bool)

(assert (=> b!666669 (subseq!77 acc!681 acc!681)))

(declare-fun lt!310535 () Unit!23305)

(declare-fun lemmaListSubSeqRefl!0 (List!12796) Unit!23305)

(assert (=> b!666669 (= lt!310535 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666669 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310536 () Unit!23305)

(declare-fun e!381705 () Unit!23305)

(assert (=> b!666669 (= lt!310536 e!381705)))

(declare-fun c!76630 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666669 (= c!76630 (validKeyInArray!0 (select (arr!18702 a!3626) from!3004)))))

(declare-fun lt!310541 () Unit!23305)

(declare-fun e!381706 () Unit!23305)

(assert (=> b!666669 (= lt!310541 e!381706)))

(declare-fun c!76631 () Bool)

(declare-fun lt!310533 () Bool)

(assert (=> b!666669 (= c!76631 lt!310533)))

(assert (=> b!666669 (= lt!310533 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666669 (arrayContainsKey!0 (array!39028 (store (arr!18702 a!3626) i!1382 k!2843) (size!19066 a!3626)) k!2843 from!3004)))

(declare-fun b!666670 () Bool)

(declare-fun res!434139 () Bool)

(assert (=> b!666670 (=> res!434139 e!381701)))

(declare-fun noDuplicate!586 (List!12796) Bool)

(assert (=> b!666670 (= res!434139 (not (noDuplicate!586 lt!310538)))))

(declare-fun b!666671 () Bool)

(declare-fun e!381699 () Bool)

(assert (=> b!666671 (= e!381699 (not (contains!3339 acc!681 k!2843)))))

(declare-fun b!666672 () Bool)

(declare-fun res!434151 () Bool)

(assert (=> b!666672 (=> (not res!434151) (not e!381700))))

(declare-fun e!381702 () Bool)

(assert (=> b!666672 (= res!434151 e!381702)))

(declare-fun res!434137 () Bool)

(assert (=> b!666672 (=> res!434137 e!381702)))

(assert (=> b!666672 (= res!434137 e!381703)))

(declare-fun res!434140 () Bool)

(assert (=> b!666672 (=> (not res!434140) (not e!381703))))

(assert (=> b!666672 (= res!434140 (bvsgt from!3004 i!1382))))

(declare-fun b!666673 () Bool)

(declare-fun res!434134 () Bool)

(assert (=> b!666673 (=> (not res!434134) (not e!381700))))

(assert (=> b!666673 (= res!434134 (not (contains!3339 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666674 () Bool)

(declare-fun Unit!23307 () Unit!23305)

(assert (=> b!666674 (= e!381706 Unit!23307)))

(declare-fun b!666675 () Bool)

(declare-fun lt!310537 () Unit!23305)

(assert (=> b!666675 (= e!381705 lt!310537)))

(declare-fun lt!310539 () Unit!23305)

(assert (=> b!666675 (= lt!310539 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666675 (subseq!77 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39027 List!12796 List!12796 (_ BitVec 32)) Unit!23305)

(assert (=> b!666675 (= lt!310537 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!208 acc!681 (select (arr!18702 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666675 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666676 () Bool)

(declare-fun Unit!23308 () Unit!23305)

(assert (=> b!666676 (= e!381705 Unit!23308)))

(declare-fun b!666677 () Bool)

(declare-fun Unit!23309 () Unit!23305)

(assert (=> b!666677 (= e!381706 Unit!23309)))

(declare-fun lt!310542 () Unit!23305)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39027 (_ BitVec 64) (_ BitVec 32)) Unit!23305)

(assert (=> b!666677 (= lt!310542 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666677 false))

(declare-fun b!666660 () Bool)

(declare-fun res!434153 () Bool)

(assert (=> b!666660 (=> res!434153 e!381701)))

(assert (=> b!666660 (= res!434153 (contains!3339 lt!310538 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!434141 () Bool)

(assert (=> start!60024 (=> (not res!434141) (not e!381700))))

(assert (=> start!60024 (= res!434141 (and (bvslt (size!19066 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19066 a!3626))))))

(assert (=> start!60024 e!381700))

(assert (=> start!60024 true))

(declare-fun array_inv!14476 (array!39027) Bool)

(assert (=> start!60024 (array_inv!14476 a!3626)))

(declare-fun b!666678 () Bool)

(declare-fun res!434152 () Bool)

(assert (=> b!666678 (=> res!434152 e!381701)))

(assert (=> b!666678 (= res!434152 (not (subseq!77 acc!681 lt!310538)))))

(declare-fun b!666679 () Bool)

(assert (=> b!666679 (= e!381701 true)))

(declare-fun lt!310534 () Bool)

(assert (=> b!666679 (= lt!310534 (contains!3339 lt!310538 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666680 () Bool)

(declare-fun res!434144 () Bool)

(assert (=> b!666680 (=> (not res!434144) (not e!381700))))

(assert (=> b!666680 (= res!434144 (validKeyInArray!0 k!2843))))

(declare-fun b!666681 () Bool)

(declare-fun res!434133 () Bool)

(assert (=> b!666681 (=> res!434133 e!381701)))

(assert (=> b!666681 (= res!434133 lt!310533)))

(declare-fun b!666682 () Bool)

(assert (=> b!666682 (= e!381702 e!381699)))

(declare-fun res!434149 () Bool)

(assert (=> b!666682 (=> (not res!434149) (not e!381699))))

(assert (=> b!666682 (= res!434149 (bvsle from!3004 i!1382))))

(declare-fun b!666683 () Bool)

(declare-fun res!434148 () Bool)

(assert (=> b!666683 (=> (not res!434148) (not e!381700))))

(assert (=> b!666683 (= res!434148 (noDuplicate!586 acc!681))))

(assert (= (and start!60024 res!434141) b!666683))

(assert (= (and b!666683 res!434148) b!666673))

(assert (= (and b!666673 res!434134) b!666667))

(assert (= (and b!666667 res!434147) b!666672))

(assert (= (and b!666672 res!434140) b!666661))

(assert (= (and b!666672 (not res!434137)) b!666682))

(assert (= (and b!666682 res!434149) b!666671))

(assert (= (and b!666672 res!434151) b!666668))

(assert (= (and b!666668 res!434150) b!666666))

(assert (= (and b!666666 res!434146) b!666665))

(assert (= (and b!666665 res!434136) b!666680))

(assert (= (and b!666680 res!434144) b!666662))

(assert (= (and b!666662 res!434145) b!666659))

(assert (= (and b!666659 res!434138) b!666669))

(assert (= (and b!666669 c!76631) b!666677))

(assert (= (and b!666669 (not c!76631)) b!666674))

(assert (= (and b!666669 c!76630) b!666675))

(assert (= (and b!666669 (not c!76630)) b!666676))

(assert (= (and b!666669 (not res!434142)) b!666670))

(assert (= (and b!666670 (not res!434139)) b!666681))

(assert (= (and b!666681 (not res!434133)) b!666663))

(assert (= (and b!666663 (not res!434143)) b!666678))

(assert (= (and b!666678 (not res!434152)) b!666664))

(assert (= (and b!666664 (not res!434135)) b!666660))

(assert (= (and b!666660 (not res!434153)) b!666679))

(declare-fun m!637419 () Bool)

(assert (=> b!666680 m!637419))

(declare-fun m!637421 () Bool)

(assert (=> b!666664 m!637421))

(declare-fun m!637423 () Bool)

(assert (=> b!666671 m!637423))

(declare-fun m!637425 () Bool)

(assert (=> b!666666 m!637425))

(declare-fun m!637427 () Bool)

(assert (=> b!666660 m!637427))

(declare-fun m!637429 () Bool)

(assert (=> start!60024 m!637429))

(declare-fun m!637431 () Bool)

(assert (=> b!666667 m!637431))

(assert (=> b!666663 m!637423))

(declare-fun m!637433 () Bool)

(assert (=> b!666677 m!637433))

(declare-fun m!637435 () Bool)

(assert (=> b!666662 m!637435))

(declare-fun m!637437 () Bool)

(assert (=> b!666673 m!637437))

(declare-fun m!637439 () Bool)

(assert (=> b!666675 m!637439))

(declare-fun m!637441 () Bool)

(assert (=> b!666675 m!637441))

(declare-fun m!637443 () Bool)

(assert (=> b!666675 m!637443))

(declare-fun m!637445 () Bool)

(assert (=> b!666675 m!637445))

(assert (=> b!666675 m!637441))

(assert (=> b!666675 m!637443))

(declare-fun m!637447 () Bool)

(assert (=> b!666675 m!637447))

(declare-fun m!637449 () Bool)

(assert (=> b!666675 m!637449))

(declare-fun m!637451 () Bool)

(assert (=> b!666670 m!637451))

(declare-fun m!637453 () Bool)

(assert (=> b!666668 m!637453))

(assert (=> b!666669 m!637439))

(assert (=> b!666669 m!637441))

(declare-fun m!637455 () Bool)

(assert (=> b!666669 m!637455))

(declare-fun m!637457 () Bool)

(assert (=> b!666669 m!637457))

(assert (=> b!666669 m!637447))

(declare-fun m!637459 () Bool)

(assert (=> b!666669 m!637459))

(assert (=> b!666669 m!637441))

(declare-fun m!637461 () Bool)

(assert (=> b!666669 m!637461))

(declare-fun m!637463 () Bool)

(assert (=> b!666669 m!637463))

(declare-fun m!637465 () Bool)

(assert (=> b!666669 m!637465))

(declare-fun m!637467 () Bool)

(assert (=> b!666669 m!637467))

(assert (=> b!666669 m!637449))

(declare-fun m!637469 () Bool)

(assert (=> b!666679 m!637469))

(assert (=> b!666661 m!637423))

(declare-fun m!637471 () Bool)

(assert (=> b!666683 m!637471))

(declare-fun m!637473 () Bool)

(assert (=> b!666678 m!637473))

(push 1)

(assert (not b!666675))

(assert (not b!666677))

(assert (not b!666669))

(assert (not b!666679))

(assert (not b!666662))

(assert (not b!666668))

(assert (not b!666678))

(assert (not b!666663))

(assert (not b!666670))

(assert (not b!666680))

(assert (not b!666671))

(assert (not b!666683))

(assert (not start!60024))

(assert (not b!666660))

(assert (not b!666664))

(assert (not b!666666))

(assert (not b!666673))

(assert (not b!666661))

(assert (not b!666667))

(check-sat)

