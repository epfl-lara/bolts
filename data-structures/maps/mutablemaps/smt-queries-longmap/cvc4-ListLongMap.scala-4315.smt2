; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59938 () Bool)

(assert start!59938)

(declare-fun b!663567 () Bool)

(declare-fun res!431570 () Bool)

(declare-fun e!380689 () Bool)

(assert (=> b!663567 (=> (not res!431570) (not e!380689))))

(declare-fun e!380687 () Bool)

(assert (=> b!663567 (= res!431570 e!380687)))

(declare-fun res!431563 () Bool)

(assert (=> b!663567 (=> res!431563 e!380687)))

(declare-fun e!380688 () Bool)

(assert (=> b!663567 (= res!431563 e!380688)))

(declare-fun res!431558 () Bool)

(assert (=> b!663567 (=> (not res!431558) (not e!380688))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663567 (= res!431558 (bvsgt from!3004 i!1382))))

(declare-fun b!663568 () Bool)

(declare-fun res!431557 () Bool)

(assert (=> b!663568 (=> (not res!431557) (not e!380689))))

(declare-datatypes ((array!38941 0))(
  ( (array!38942 (arr!18659 (Array (_ BitVec 32) (_ BitVec 64))) (size!19023 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38941)

(assert (=> b!663568 (= res!431557 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19023 a!3626))))))

(declare-fun b!663569 () Bool)

(declare-datatypes ((List!12753 0))(
  ( (Nil!12750) (Cons!12749 (h!13794 (_ BitVec 64)) (t!18989 List!12753)) )
))
(declare-fun acc!681 () List!12753)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3296 (List!12753 (_ BitVec 64)) Bool)

(assert (=> b!663569 (= e!380688 (contains!3296 acc!681 k!2843))))

(declare-fun b!663570 () Bool)

(declare-fun res!431567 () Bool)

(assert (=> b!663570 (=> (not res!431567) (not e!380689))))

(assert (=> b!663570 (= res!431567 (not (contains!3296 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663571 () Bool)

(declare-fun res!431560 () Bool)

(assert (=> b!663571 (=> (not res!431560) (not e!380689))))

(declare-fun arrayContainsKey!0 (array!38941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663571 (= res!431560 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663572 () Bool)

(declare-fun res!431564 () Bool)

(assert (=> b!663572 (=> (not res!431564) (not e!380689))))

(declare-fun arrayNoDuplicates!0 (array!38941 (_ BitVec 32) List!12753) Bool)

(assert (=> b!663572 (= res!431564 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663573 () Bool)

(declare-datatypes ((Unit!23090 0))(
  ( (Unit!23091) )
))
(declare-fun e!380691 () Unit!23090)

(declare-fun lt!309322 () Unit!23090)

(assert (=> b!663573 (= e!380691 lt!309322)))

(declare-fun lt!309324 () Unit!23090)

(declare-fun lemmaListSubSeqRefl!0 (List!12753) Unit!23090)

(assert (=> b!663573 (= lt!309324 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!34 (List!12753 List!12753) Bool)

(assert (=> b!663573 (subseq!34 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38941 List!12753 List!12753 (_ BitVec 32)) Unit!23090)

(declare-fun $colon$colon!165 (List!12753 (_ BitVec 64)) List!12753)

(assert (=> b!663573 (= lt!309322 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!165 acc!681 (select (arr!18659 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663573 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663574 () Bool)

(declare-fun res!431569 () Bool)

(assert (=> b!663574 (=> (not res!431569) (not e!380689))))

(declare-fun noDuplicate!543 (List!12753) Bool)

(assert (=> b!663574 (= res!431569 (noDuplicate!543 acc!681))))

(declare-fun b!663575 () Bool)

(declare-fun e!380686 () Bool)

(assert (=> b!663575 (= e!380686 (not (contains!3296 acc!681 k!2843)))))

(declare-fun b!663576 () Bool)

(declare-fun res!431566 () Bool)

(assert (=> b!663576 (=> (not res!431566) (not e!380689))))

(assert (=> b!663576 (= res!431566 (not (contains!3296 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!431565 () Bool)

(assert (=> start!59938 (=> (not res!431565) (not e!380689))))

(assert (=> start!59938 (= res!431565 (and (bvslt (size!19023 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19023 a!3626))))))

(assert (=> start!59938 e!380689))

(assert (=> start!59938 true))

(declare-fun array_inv!14433 (array!38941) Bool)

(assert (=> start!59938 (array_inv!14433 a!3626)))

(declare-fun b!663577 () Bool)

(declare-fun e!380690 () Unit!23090)

(declare-fun Unit!23092 () Unit!23090)

(assert (=> b!663577 (= e!380690 Unit!23092)))

(declare-fun b!663578 () Bool)

(declare-fun Unit!23093 () Unit!23090)

(assert (=> b!663578 (= e!380690 Unit!23093)))

(declare-fun lt!309321 () Unit!23090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38941 (_ BitVec 64) (_ BitVec 32)) Unit!23090)

(assert (=> b!663578 (= lt!309321 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663578 false))

(declare-fun b!663579 () Bool)

(declare-fun res!431561 () Bool)

(assert (=> b!663579 (=> (not res!431561) (not e!380689))))

(assert (=> b!663579 (= res!431561 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19023 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663580 () Bool)

(declare-fun Unit!23094 () Unit!23090)

(assert (=> b!663580 (= e!380691 Unit!23094)))

(declare-fun b!663581 () Bool)

(declare-fun res!431568 () Bool)

(assert (=> b!663581 (=> (not res!431568) (not e!380689))))

(assert (=> b!663581 (= res!431568 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12750))))

(declare-fun b!663582 () Bool)

(assert (=> b!663582 (= e!380689 (not true))))

(declare-fun lt!309323 () Unit!23090)

(assert (=> b!663582 (= lt!309323 e!380691)))

(declare-fun c!76372 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663582 (= c!76372 (validKeyInArray!0 (select (arr!18659 a!3626) from!3004)))))

(declare-fun lt!309320 () Unit!23090)

(assert (=> b!663582 (= lt!309320 e!380690)))

(declare-fun c!76373 () Bool)

(assert (=> b!663582 (= c!76373 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663582 (arrayContainsKey!0 (array!38942 (store (arr!18659 a!3626) i!1382 k!2843) (size!19023 a!3626)) k!2843 from!3004)))

(declare-fun b!663583 () Bool)

(declare-fun res!431559 () Bool)

(assert (=> b!663583 (=> (not res!431559) (not e!380689))))

(assert (=> b!663583 (= res!431559 (validKeyInArray!0 k!2843))))

(declare-fun b!663584 () Bool)

(assert (=> b!663584 (= e!380687 e!380686)))

(declare-fun res!431562 () Bool)

(assert (=> b!663584 (=> (not res!431562) (not e!380686))))

(assert (=> b!663584 (= res!431562 (bvsle from!3004 i!1382))))

(assert (= (and start!59938 res!431565) b!663574))

(assert (= (and b!663574 res!431569) b!663576))

(assert (= (and b!663576 res!431566) b!663570))

(assert (= (and b!663570 res!431567) b!663567))

(assert (= (and b!663567 res!431558) b!663569))

(assert (= (and b!663567 (not res!431563)) b!663584))

(assert (= (and b!663584 res!431562) b!663575))

(assert (= (and b!663567 res!431570) b!663581))

(assert (= (and b!663581 res!431568) b!663572))

(assert (= (and b!663572 res!431564) b!663568))

(assert (= (and b!663568 res!431557) b!663583))

(assert (= (and b!663583 res!431559) b!663571))

(assert (= (and b!663571 res!431560) b!663579))

(assert (= (and b!663579 res!431561) b!663582))

(assert (= (and b!663582 c!76373) b!663578))

(assert (= (and b!663582 (not c!76373)) b!663577))

(assert (= (and b!663582 c!76372) b!663573))

(assert (= (and b!663582 (not c!76372)) b!663580))

(declare-fun m!635123 () Bool)

(assert (=> b!663581 m!635123))

(declare-fun m!635125 () Bool)

(assert (=> b!663572 m!635125))

(declare-fun m!635127 () Bool)

(assert (=> b!663578 m!635127))

(declare-fun m!635129 () Bool)

(assert (=> b!663571 m!635129))

(declare-fun m!635131 () Bool)

(assert (=> b!663583 m!635131))

(declare-fun m!635133 () Bool)

(assert (=> b!663574 m!635133))

(declare-fun m!635135 () Bool)

(assert (=> start!59938 m!635135))

(declare-fun m!635137 () Bool)

(assert (=> b!663582 m!635137))

(declare-fun m!635139 () Bool)

(assert (=> b!663582 m!635139))

(declare-fun m!635141 () Bool)

(assert (=> b!663582 m!635141))

(assert (=> b!663582 m!635137))

(declare-fun m!635143 () Bool)

(assert (=> b!663582 m!635143))

(declare-fun m!635145 () Bool)

(assert (=> b!663582 m!635145))

(declare-fun m!635147 () Bool)

(assert (=> b!663569 m!635147))

(declare-fun m!635149 () Bool)

(assert (=> b!663576 m!635149))

(assert (=> b!663575 m!635147))

(declare-fun m!635151 () Bool)

(assert (=> b!663573 m!635151))

(assert (=> b!663573 m!635137))

(declare-fun m!635153 () Bool)

(assert (=> b!663573 m!635153))

(declare-fun m!635155 () Bool)

(assert (=> b!663573 m!635155))

(assert (=> b!663573 m!635137))

(assert (=> b!663573 m!635153))

(declare-fun m!635157 () Bool)

(assert (=> b!663573 m!635157))

(declare-fun m!635159 () Bool)

(assert (=> b!663573 m!635159))

(declare-fun m!635161 () Bool)

(assert (=> b!663570 m!635161))

(push 1)

(assert (not b!663570))

(assert (not b!663569))

(assert (not b!663573))

(assert (not b!663582))

(assert (not b!663571))

(assert (not start!59938))

(assert (not b!663583))

(assert (not b!663576))

(assert (not b!663575))

(assert (not b!663581))

(assert (not b!663572))

(assert (not b!663574))

(assert (not b!663578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

