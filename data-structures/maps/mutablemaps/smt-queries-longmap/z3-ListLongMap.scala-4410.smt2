; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60890 () Bool)

(assert start!60890)

(declare-fun b!682566 () Bool)

(declare-fun res!448662 () Bool)

(declare-fun e!388887 () Bool)

(assert (=> b!682566 (=> (not res!448662) (not e!388887))))

(declare-datatypes ((List!13037 0))(
  ( (Nil!13034) (Cons!13033 (h!14078 (_ BitVec 64)) (t!19288 List!13037)) )
))
(declare-fun acc!681 () List!13037)

(declare-fun noDuplicate!827 (List!13037) Bool)

(assert (=> b!682566 (= res!448662 (noDuplicate!827 acc!681))))

(declare-fun b!682567 () Bool)

(declare-datatypes ((Unit!23952 0))(
  ( (Unit!23953) )
))
(declare-fun e!388884 () Unit!23952)

(declare-fun lt!313592 () Unit!23952)

(assert (=> b!682567 (= e!388884 lt!313592)))

(declare-fun lt!313591 () Unit!23952)

(declare-fun lemmaListSubSeqRefl!0 (List!13037) Unit!23952)

(assert (=> b!682567 (= lt!313591 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!165 (List!13037 List!13037) Bool)

(assert (=> b!682567 (subseq!165 acc!681 acc!681)))

(declare-datatypes ((array!39530 0))(
  ( (array!39531 (arr!18943 (Array (_ BitVec 32) (_ BitVec 64))) (size!19307 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39530)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39530 List!13037 List!13037 (_ BitVec 32)) Unit!23952)

(declare-fun $colon$colon!329 (List!13037 (_ BitVec 64)) List!13037)

(assert (=> b!682567 (= lt!313592 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!329 acc!681 (select (arr!18943 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39530 (_ BitVec 32) List!13037) Bool)

(assert (=> b!682567 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682568 () Bool)

(declare-fun res!448665 () Bool)

(assert (=> b!682568 (=> (not res!448665) (not e!388887))))

(assert (=> b!682568 (= res!448665 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682569 () Bool)

(declare-fun e!388888 () Unit!23952)

(declare-fun Unit!23954 () Unit!23952)

(assert (=> b!682569 (= e!388888 Unit!23954)))

(declare-fun lt!313593 () Unit!23952)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39530 (_ BitVec 64) (_ BitVec 32)) Unit!23952)

(assert (=> b!682569 (= lt!313593 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!682569 false))

(declare-fun b!682570 () Bool)

(declare-fun res!448666 () Bool)

(assert (=> b!682570 (=> (not res!448666) (not e!388887))))

(declare-fun arrayContainsKey!0 (array!39530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682570 (= res!448666 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682571 () Bool)

(declare-fun res!448660 () Bool)

(assert (=> b!682571 (=> (not res!448660) (not e!388887))))

(declare-fun e!388883 () Bool)

(assert (=> b!682571 (= res!448660 e!388883)))

(declare-fun res!448672 () Bool)

(assert (=> b!682571 (=> res!448672 e!388883)))

(declare-fun e!388885 () Bool)

(assert (=> b!682571 (= res!448672 e!388885)))

(declare-fun res!448671 () Bool)

(assert (=> b!682571 (=> (not res!448671) (not e!388885))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682571 (= res!448671 (bvsgt from!3004 i!1382))))

(declare-fun b!682572 () Bool)

(declare-fun res!448663 () Bool)

(assert (=> b!682572 (=> (not res!448663) (not e!388887))))

(assert (=> b!682572 (= res!448663 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19307 a!3626))))))

(declare-fun b!682573 () Bool)

(declare-fun contains!3580 (List!13037 (_ BitVec 64)) Bool)

(assert (=> b!682573 (= e!388885 (contains!3580 acc!681 k0!2843))))

(declare-fun b!682574 () Bool)

(declare-fun Unit!23955 () Unit!23952)

(assert (=> b!682574 (= e!388888 Unit!23955)))

(declare-fun b!682575 () Bool)

(declare-fun Unit!23956 () Unit!23952)

(assert (=> b!682575 (= e!388884 Unit!23956)))

(declare-fun b!682576 () Bool)

(assert (=> b!682576 (= e!388887 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun -!130 (List!13037 (_ BitVec 64)) List!13037)

(assert (=> b!682576 (= (-!130 ($colon$colon!329 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!313588 () Unit!23952)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13037) Unit!23952)

(assert (=> b!682576 (= lt!313588 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!682576 (subseq!165 acc!681 acc!681)))

(declare-fun lt!313587 () Unit!23952)

(assert (=> b!682576 (= lt!313587 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682576 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313589 () Unit!23952)

(assert (=> b!682576 (= lt!313589 e!388884)))

(declare-fun c!77320 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682576 (= c!77320 (validKeyInArray!0 (select (arr!18943 a!3626) from!3004)))))

(declare-fun lt!313590 () Unit!23952)

(assert (=> b!682576 (= lt!313590 e!388888)))

(declare-fun c!77321 () Bool)

(assert (=> b!682576 (= c!77321 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682576 (arrayContainsKey!0 (array!39531 (store (arr!18943 a!3626) i!1382 k0!2843) (size!19307 a!3626)) k0!2843 from!3004)))

(declare-fun res!448661 () Bool)

(assert (=> start!60890 (=> (not res!448661) (not e!388887))))

(assert (=> start!60890 (= res!448661 (and (bvslt (size!19307 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19307 a!3626))))))

(assert (=> start!60890 e!388887))

(assert (=> start!60890 true))

(declare-fun array_inv!14717 (array!39530) Bool)

(assert (=> start!60890 (array_inv!14717 a!3626)))

(declare-fun b!682577 () Bool)

(declare-fun res!448667 () Bool)

(assert (=> b!682577 (=> (not res!448667) (not e!388887))))

(assert (=> b!682577 (= res!448667 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13034))))

(declare-fun b!682578 () Bool)

(declare-fun e!388882 () Bool)

(assert (=> b!682578 (= e!388882 (not (contains!3580 acc!681 k0!2843)))))

(declare-fun b!682579 () Bool)

(declare-fun res!448673 () Bool)

(assert (=> b!682579 (=> (not res!448673) (not e!388887))))

(assert (=> b!682579 (= res!448673 (not (contains!3580 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682580 () Bool)

(declare-fun res!448669 () Bool)

(assert (=> b!682580 (=> (not res!448669) (not e!388887))))

(assert (=> b!682580 (= res!448669 (not (contains!3580 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682581 () Bool)

(declare-fun res!448664 () Bool)

(assert (=> b!682581 (=> (not res!448664) (not e!388887))))

(assert (=> b!682581 (= res!448664 (validKeyInArray!0 k0!2843))))

(declare-fun b!682582 () Bool)

(assert (=> b!682582 (= e!388883 e!388882)))

(declare-fun res!448670 () Bool)

(assert (=> b!682582 (=> (not res!448670) (not e!388882))))

(assert (=> b!682582 (= res!448670 (bvsle from!3004 i!1382))))

(declare-fun b!682583 () Bool)

(declare-fun res!448668 () Bool)

(assert (=> b!682583 (=> (not res!448668) (not e!388887))))

(assert (=> b!682583 (= res!448668 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19307 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60890 res!448661) b!682566))

(assert (= (and b!682566 res!448662) b!682579))

(assert (= (and b!682579 res!448673) b!682580))

(assert (= (and b!682580 res!448669) b!682571))

(assert (= (and b!682571 res!448671) b!682573))

(assert (= (and b!682571 (not res!448672)) b!682582))

(assert (= (and b!682582 res!448670) b!682578))

(assert (= (and b!682571 res!448660) b!682577))

(assert (= (and b!682577 res!448667) b!682568))

(assert (= (and b!682568 res!448665) b!682572))

(assert (= (and b!682572 res!448663) b!682581))

(assert (= (and b!682581 res!448664) b!682570))

(assert (= (and b!682570 res!448666) b!682583))

(assert (= (and b!682583 res!448668) b!682576))

(assert (= (and b!682576 c!77321) b!682569))

(assert (= (and b!682576 (not c!77321)) b!682574))

(assert (= (and b!682576 c!77320) b!682567))

(assert (= (and b!682576 (not c!77320)) b!682575))

(declare-fun m!647275 () Bool)

(assert (=> b!682577 m!647275))

(declare-fun m!647277 () Bool)

(assert (=> start!60890 m!647277))

(declare-fun m!647279 () Bool)

(assert (=> b!682566 m!647279))

(declare-fun m!647281 () Bool)

(assert (=> b!682569 m!647281))

(declare-fun m!647283 () Bool)

(assert (=> b!682581 m!647283))

(declare-fun m!647285 () Bool)

(assert (=> b!682568 m!647285))

(declare-fun m!647287 () Bool)

(assert (=> b!682578 m!647287))

(declare-fun m!647289 () Bool)

(assert (=> b!682570 m!647289))

(declare-fun m!647291 () Bool)

(assert (=> b!682579 m!647291))

(declare-fun m!647293 () Bool)

(assert (=> b!682576 m!647293))

(declare-fun m!647295 () Bool)

(assert (=> b!682576 m!647295))

(declare-fun m!647297 () Bool)

(assert (=> b!682576 m!647297))

(declare-fun m!647299 () Bool)

(assert (=> b!682576 m!647299))

(declare-fun m!647301 () Bool)

(assert (=> b!682576 m!647301))

(declare-fun m!647303 () Bool)

(assert (=> b!682576 m!647303))

(declare-fun m!647305 () Bool)

(assert (=> b!682576 m!647305))

(declare-fun m!647307 () Bool)

(assert (=> b!682576 m!647307))

(assert (=> b!682576 m!647293))

(assert (=> b!682576 m!647299))

(declare-fun m!647309 () Bool)

(assert (=> b!682576 m!647309))

(declare-fun m!647311 () Bool)

(assert (=> b!682576 m!647311))

(declare-fun m!647313 () Bool)

(assert (=> b!682576 m!647313))

(assert (=> b!682567 m!647297))

(assert (=> b!682567 m!647299))

(declare-fun m!647315 () Bool)

(assert (=> b!682567 m!647315))

(declare-fun m!647317 () Bool)

(assert (=> b!682567 m!647317))

(assert (=> b!682567 m!647299))

(assert (=> b!682567 m!647315))

(assert (=> b!682567 m!647305))

(assert (=> b!682567 m!647313))

(assert (=> b!682573 m!647287))

(declare-fun m!647319 () Bool)

(assert (=> b!682580 m!647319))

(check-sat (not b!682576) (not b!682578) (not b!682579) (not b!682569) (not b!682581) (not b!682568) (not start!60890) (not b!682580) (not b!682566) (not b!682570) (not b!682573) (not b!682577) (not b!682567))
(check-sat)
