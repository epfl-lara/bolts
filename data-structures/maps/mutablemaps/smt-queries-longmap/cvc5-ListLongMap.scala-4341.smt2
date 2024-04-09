; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60090 () Bool)

(assert start!60090)

(declare-fun b!669134 () Bool)

(declare-fun e!382740 () Bool)

(declare-fun e!382742 () Bool)

(assert (=> b!669134 (= e!382740 e!382742)))

(declare-fun res!436220 () Bool)

(assert (=> b!669134 (=> (not res!436220) (not e!382742))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669134 (= res!436220 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669135 () Bool)

(declare-fun res!436229 () Bool)

(declare-fun e!382746 () Bool)

(assert (=> b!669135 (=> (not res!436229) (not e!382746))))

(declare-fun e!382747 () Bool)

(assert (=> b!669135 (= res!436229 e!382747)))

(declare-fun res!436221 () Bool)

(assert (=> b!669135 (=> res!436221 e!382747)))

(declare-fun e!382748 () Bool)

(assert (=> b!669135 (= res!436221 e!382748)))

(declare-fun res!436214 () Bool)

(assert (=> b!669135 (=> (not res!436214) (not e!382748))))

(assert (=> b!669135 (= res!436214 (bvsgt from!3004 i!1382))))

(declare-fun b!669136 () Bool)

(declare-fun res!436218 () Bool)

(declare-fun e!382749 () Bool)

(assert (=> b!669136 (=> res!436218 e!382749)))

(declare-datatypes ((List!12829 0))(
  ( (Nil!12826) (Cons!12825 (h!13870 (_ BitVec 64)) (t!19065 List!12829)) )
))
(declare-fun lt!311529 () List!12829)

(declare-fun contains!3372 (List!12829 (_ BitVec 64)) Bool)

(assert (=> b!669136 (= res!436218 (contains!3372 lt!311529 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669137 () Bool)

(declare-datatypes ((Unit!23470 0))(
  ( (Unit!23471) )
))
(declare-fun e!382744 () Unit!23470)

(declare-fun Unit!23472 () Unit!23470)

(assert (=> b!669137 (= e!382744 Unit!23472)))

(declare-fun b!669138 () Bool)

(declare-fun res!436212 () Bool)

(assert (=> b!669138 (=> (not res!436212) (not e!382746))))

(declare-fun acc!681 () List!12829)

(assert (=> b!669138 (= res!436212 (not (contains!3372 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669139 () Bool)

(declare-fun res!436227 () Bool)

(assert (=> b!669139 (=> (not res!436227) (not e!382746))))

(declare-datatypes ((array!39093 0))(
  ( (array!39094 (arr!18735 (Array (_ BitVec 32) (_ BitVec 64))) (size!19099 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39093)

(assert (=> b!669139 (= res!436227 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19099 a!3626))))))

(declare-fun b!669140 () Bool)

(declare-fun e!382743 () Unit!23470)

(declare-fun lt!311532 () Unit!23470)

(assert (=> b!669140 (= e!382743 lt!311532)))

(declare-fun lt!311528 () Unit!23470)

(declare-fun lemmaListSubSeqRefl!0 (List!12829) Unit!23470)

(assert (=> b!669140 (= lt!311528 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!110 (List!12829 List!12829) Bool)

(assert (=> b!669140 (subseq!110 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39093 List!12829 List!12829 (_ BitVec 32)) Unit!23470)

(declare-fun $colon$colon!241 (List!12829 (_ BitVec 64)) List!12829)

(assert (=> b!669140 (= lt!311532 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!241 acc!681 (select (arr!18735 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39093 (_ BitVec 32) List!12829) Bool)

(assert (=> b!669140 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669141 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!669141 (= e!382742 (not (contains!3372 lt!311529 k!2843)))))

(declare-fun b!669142 () Bool)

(declare-fun Unit!23473 () Unit!23470)

(assert (=> b!669142 (= e!382744 Unit!23473)))

(declare-fun lt!311524 () Unit!23470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39093 (_ BitVec 64) (_ BitVec 32)) Unit!23470)

(assert (=> b!669142 (= lt!311524 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669142 false))

(declare-fun b!669143 () Bool)

(assert (=> b!669143 (= e!382746 (not e!382749))))

(declare-fun res!436219 () Bool)

(assert (=> b!669143 (=> res!436219 e!382749)))

(assert (=> b!669143 (= res!436219 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669143 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311529)))

(declare-fun lt!311523 () Unit!23470)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39093 (_ BitVec 64) (_ BitVec 32) List!12829 List!12829) Unit!23470)

(assert (=> b!669143 (= lt!311523 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311529))))

(declare-fun -!108 (List!12829 (_ BitVec 64)) List!12829)

(assert (=> b!669143 (= (-!108 lt!311529 k!2843) acc!681)))

(assert (=> b!669143 (= lt!311529 ($colon$colon!241 acc!681 k!2843))))

(declare-fun lt!311526 () Unit!23470)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12829) Unit!23470)

(assert (=> b!669143 (= lt!311526 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669143 (subseq!110 acc!681 acc!681)))

(declare-fun lt!311527 () Unit!23470)

(assert (=> b!669143 (= lt!311527 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669143 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311531 () Unit!23470)

(assert (=> b!669143 (= lt!311531 e!382743)))

(declare-fun c!76829 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669143 (= c!76829 (validKeyInArray!0 (select (arr!18735 a!3626) from!3004)))))

(declare-fun lt!311530 () Unit!23470)

(assert (=> b!669143 (= lt!311530 e!382744)))

(declare-fun c!76828 () Bool)

(declare-fun arrayContainsKey!0 (array!39093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669143 (= c!76828 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669143 (arrayContainsKey!0 (array!39094 (store (arr!18735 a!3626) i!1382 k!2843) (size!19099 a!3626)) k!2843 from!3004)))

(declare-fun b!669144 () Bool)

(declare-fun res!436213 () Bool)

(assert (=> b!669144 (=> (not res!436213) (not e!382746))))

(declare-fun noDuplicate!619 (List!12829) Bool)

(assert (=> b!669144 (= res!436213 (noDuplicate!619 acc!681))))

(declare-fun b!669145 () Bool)

(declare-fun res!436231 () Bool)

(assert (=> b!669145 (=> (not res!436231) (not e!382746))))

(assert (=> b!669145 (= res!436231 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669146 () Bool)

(declare-fun Unit!23474 () Unit!23470)

(assert (=> b!669146 (= e!382743 Unit!23474)))

(declare-fun b!669147 () Bool)

(declare-fun res!436225 () Bool)

(assert (=> b!669147 (=> (not res!436225) (not e!382746))))

(assert (=> b!669147 (= res!436225 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12826))))

(declare-fun b!669148 () Bool)

(declare-fun e!382741 () Bool)

(assert (=> b!669148 (= e!382741 (not (contains!3372 acc!681 k!2843)))))

(declare-fun res!436215 () Bool)

(assert (=> start!60090 (=> (not res!436215) (not e!382746))))

(assert (=> start!60090 (= res!436215 (and (bvslt (size!19099 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19099 a!3626))))))

(assert (=> start!60090 e!382746))

(assert (=> start!60090 true))

(declare-fun array_inv!14509 (array!39093) Bool)

(assert (=> start!60090 (array_inv!14509 a!3626)))

(declare-fun b!669149 () Bool)

(assert (=> b!669149 (= e!382748 (contains!3372 acc!681 k!2843))))

(declare-fun b!669150 () Bool)

(declare-fun res!436226 () Bool)

(assert (=> b!669150 (=> (not res!436226) (not e!382746))))

(assert (=> b!669150 (= res!436226 (validKeyInArray!0 k!2843))))

(declare-fun b!669151 () Bool)

(declare-fun res!436216 () Bool)

(assert (=> b!669151 (=> (not res!436216) (not e!382746))))

(assert (=> b!669151 (= res!436216 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669152 () Bool)

(declare-fun e!382750 () Bool)

(assert (=> b!669152 (= e!382750 (contains!3372 lt!311529 k!2843))))

(declare-fun b!669153 () Bool)

(assert (=> b!669153 (= e!382749 true)))

(declare-fun lt!311525 () Bool)

(assert (=> b!669153 (= lt!311525 e!382740)))

(declare-fun res!436224 () Bool)

(assert (=> b!669153 (=> res!436224 e!382740)))

(assert (=> b!669153 (= res!436224 e!382750)))

(declare-fun res!436228 () Bool)

(assert (=> b!669153 (=> (not res!436228) (not e!382750))))

(assert (=> b!669153 (= res!436228 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669154 () Bool)

(declare-fun res!436232 () Bool)

(assert (=> b!669154 (=> res!436232 e!382749)))

(assert (=> b!669154 (= res!436232 (not (noDuplicate!619 lt!311529)))))

(declare-fun b!669155 () Bool)

(assert (=> b!669155 (= e!382747 e!382741)))

(declare-fun res!436223 () Bool)

(assert (=> b!669155 (=> (not res!436223) (not e!382741))))

(assert (=> b!669155 (= res!436223 (bvsle from!3004 i!1382))))

(declare-fun b!669156 () Bool)

(declare-fun res!436217 () Bool)

(assert (=> b!669156 (=> (not res!436217) (not e!382746))))

(assert (=> b!669156 (= res!436217 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19099 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669157 () Bool)

(declare-fun res!436222 () Bool)

(assert (=> b!669157 (=> res!436222 e!382749)))

(assert (=> b!669157 (= res!436222 (contains!3372 lt!311529 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669158 () Bool)

(declare-fun res!436230 () Bool)

(assert (=> b!669158 (=> (not res!436230) (not e!382746))))

(assert (=> b!669158 (= res!436230 (not (contains!3372 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60090 res!436215) b!669144))

(assert (= (and b!669144 res!436213) b!669138))

(assert (= (and b!669138 res!436212) b!669158))

(assert (= (and b!669158 res!436230) b!669135))

(assert (= (and b!669135 res!436214) b!669149))

(assert (= (and b!669135 (not res!436221)) b!669155))

(assert (= (and b!669155 res!436223) b!669148))

(assert (= (and b!669135 res!436229) b!669147))

(assert (= (and b!669147 res!436225) b!669151))

(assert (= (and b!669151 res!436216) b!669139))

(assert (= (and b!669139 res!436227) b!669150))

(assert (= (and b!669150 res!436226) b!669145))

(assert (= (and b!669145 res!436231) b!669156))

(assert (= (and b!669156 res!436217) b!669143))

(assert (= (and b!669143 c!76828) b!669142))

(assert (= (and b!669143 (not c!76828)) b!669137))

(assert (= (and b!669143 c!76829) b!669140))

(assert (= (and b!669143 (not c!76829)) b!669146))

(assert (= (and b!669143 (not res!436219)) b!669154))

(assert (= (and b!669154 (not res!436232)) b!669157))

(assert (= (and b!669157 (not res!436222)) b!669136))

(assert (= (and b!669136 (not res!436218)) b!669153))

(assert (= (and b!669153 res!436228) b!669152))

(assert (= (and b!669153 (not res!436224)) b!669134))

(assert (= (and b!669134 res!436220) b!669141))

(declare-fun m!639321 () Bool)

(assert (=> start!60090 m!639321))

(declare-fun m!639323 () Bool)

(assert (=> b!669140 m!639323))

(declare-fun m!639325 () Bool)

(assert (=> b!669140 m!639325))

(declare-fun m!639327 () Bool)

(assert (=> b!669140 m!639327))

(declare-fun m!639329 () Bool)

(assert (=> b!669140 m!639329))

(assert (=> b!669140 m!639325))

(assert (=> b!669140 m!639327))

(declare-fun m!639331 () Bool)

(assert (=> b!669140 m!639331))

(declare-fun m!639333 () Bool)

(assert (=> b!669140 m!639333))

(declare-fun m!639335 () Bool)

(assert (=> b!669149 m!639335))

(declare-fun m!639337 () Bool)

(assert (=> b!669151 m!639337))

(declare-fun m!639339 () Bool)

(assert (=> b!669147 m!639339))

(declare-fun m!639341 () Bool)

(assert (=> b!669141 m!639341))

(declare-fun m!639343 () Bool)

(assert (=> b!669144 m!639343))

(declare-fun m!639345 () Bool)

(assert (=> b!669157 m!639345))

(declare-fun m!639347 () Bool)

(assert (=> b!669154 m!639347))

(declare-fun m!639349 () Bool)

(assert (=> b!669158 m!639349))

(assert (=> b!669152 m!639341))

(declare-fun m!639351 () Bool)

(assert (=> b!669143 m!639351))

(assert (=> b!669143 m!639323))

(assert (=> b!669143 m!639325))

(declare-fun m!639353 () Bool)

(assert (=> b!669143 m!639353))

(declare-fun m!639355 () Bool)

(assert (=> b!669143 m!639355))

(declare-fun m!639357 () Bool)

(assert (=> b!669143 m!639357))

(assert (=> b!669143 m!639331))

(declare-fun m!639359 () Bool)

(assert (=> b!669143 m!639359))

(assert (=> b!669143 m!639325))

(declare-fun m!639361 () Bool)

(assert (=> b!669143 m!639361))

(declare-fun m!639363 () Bool)

(assert (=> b!669143 m!639363))

(declare-fun m!639365 () Bool)

(assert (=> b!669143 m!639365))

(declare-fun m!639367 () Bool)

(assert (=> b!669143 m!639367))

(assert (=> b!669143 m!639333))

(assert (=> b!669148 m!639335))

(declare-fun m!639369 () Bool)

(assert (=> b!669138 m!639369))

(declare-fun m!639371 () Bool)

(assert (=> b!669145 m!639371))

(declare-fun m!639373 () Bool)

(assert (=> b!669150 m!639373))

(declare-fun m!639375 () Bool)

(assert (=> b!669136 m!639375))

(declare-fun m!639377 () Bool)

(assert (=> b!669142 m!639377))

(push 1)

(assert (not b!669154))

(assert (not b!669157))

(assert (not b!669141))

(assert (not b!669150))

(assert (not b!669151))

(assert (not b!669158))

(assert (not start!60090))

(assert (not b!669152))

(assert (not b!669143))

(assert (not b!669145))

(assert (not b!669142))

(assert (not b!669149))

(assert (not b!669140))

(assert (not b!669147))

(assert (not b!669136))

(assert (not b!669138))

(assert (not b!669144))

(assert (not b!669148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

