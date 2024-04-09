; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59948 () Bool)

(assert start!59948)

(declare-fun b!663837 () Bool)

(declare-datatypes ((Unit!23115 0))(
  ( (Unit!23116) )
))
(declare-fun e!380797 () Unit!23115)

(declare-fun Unit!23117 () Unit!23115)

(assert (=> b!663837 (= e!380797 Unit!23117)))

(declare-fun lt!309405 () Unit!23115)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!38951 0))(
  ( (array!38952 (arr!18664 (Array (_ BitVec 32) (_ BitVec 64))) (size!19028 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38951)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38951 (_ BitVec 64) (_ BitVec 32)) Unit!23115)

(assert (=> b!663837 (= lt!309405 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!663837 false))

(declare-fun b!663838 () Bool)

(declare-fun res!431770 () Bool)

(declare-fun e!380794 () Bool)

(assert (=> b!663838 (=> (not res!431770) (not e!380794))))

(declare-fun e!380795 () Bool)

(assert (=> b!663838 (= res!431770 e!380795)))

(declare-fun res!431777 () Bool)

(assert (=> b!663838 (=> res!431777 e!380795)))

(declare-fun e!380796 () Bool)

(assert (=> b!663838 (= res!431777 e!380796)))

(declare-fun res!431768 () Bool)

(assert (=> b!663838 (=> (not res!431768) (not e!380796))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663838 (= res!431768 (bvsgt from!3004 i!1382))))

(declare-fun b!663839 () Bool)

(assert (=> b!663839 (= e!380794 (not true))))

(declare-fun lt!309411 () Bool)

(declare-datatypes ((List!12758 0))(
  ( (Nil!12755) (Cons!12754 (h!13799 (_ BitVec 64)) (t!18994 List!12758)) )
))
(declare-fun acc!681 () List!12758)

(declare-fun contains!3301 (List!12758 (_ BitVec 64)) Bool)

(assert (=> b!663839 (= lt!309411 (contains!3301 acc!681 k0!2843))))

(declare-fun subseq!39 (List!12758 List!12758) Bool)

(assert (=> b!663839 (subseq!39 acc!681 acc!681)))

(declare-fun lt!309408 () Unit!23115)

(declare-fun lemmaListSubSeqRefl!0 (List!12758) Unit!23115)

(assert (=> b!663839 (= lt!309408 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!38951 (_ BitVec 32) List!12758) Bool)

(assert (=> b!663839 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309407 () Unit!23115)

(declare-fun e!380791 () Unit!23115)

(assert (=> b!663839 (= lt!309407 e!380791)))

(declare-fun c!76403 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663839 (= c!76403 (validKeyInArray!0 (select (arr!18664 a!3626) from!3004)))))

(declare-fun lt!309406 () Unit!23115)

(assert (=> b!663839 (= lt!309406 e!380797)))

(declare-fun c!76402 () Bool)

(declare-fun arrayContainsKey!0 (array!38951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663839 (= c!76402 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663839 (arrayContainsKey!0 (array!38952 (store (arr!18664 a!3626) i!1382 k0!2843) (size!19028 a!3626)) k0!2843 from!3004)))

(declare-fun b!663840 () Bool)

(declare-fun Unit!23118 () Unit!23115)

(assert (=> b!663840 (= e!380797 Unit!23118)))

(declare-fun res!431767 () Bool)

(assert (=> start!59948 (=> (not res!431767) (not e!380794))))

(assert (=> start!59948 (= res!431767 (and (bvslt (size!19028 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19028 a!3626))))))

(assert (=> start!59948 e!380794))

(assert (=> start!59948 true))

(declare-fun array_inv!14438 (array!38951) Bool)

(assert (=> start!59948 (array_inv!14438 a!3626)))

(declare-fun b!663841 () Bool)

(declare-fun res!431773 () Bool)

(assert (=> b!663841 (=> (not res!431773) (not e!380794))))

(declare-fun noDuplicate!548 (List!12758) Bool)

(assert (=> b!663841 (= res!431773 (noDuplicate!548 acc!681))))

(declare-fun b!663842 () Bool)

(declare-fun res!431774 () Bool)

(assert (=> b!663842 (=> (not res!431774) (not e!380794))))

(assert (=> b!663842 (= res!431774 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663843 () Bool)

(declare-fun res!431769 () Bool)

(assert (=> b!663843 (=> (not res!431769) (not e!380794))))

(assert (=> b!663843 (= res!431769 (not (contains!3301 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663844 () Bool)

(declare-fun res!431780 () Bool)

(assert (=> b!663844 (=> (not res!431780) (not e!380794))))

(assert (=> b!663844 (= res!431780 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19028 a!3626))))))

(declare-fun b!663845 () Bool)

(declare-fun lt!309410 () Unit!23115)

(assert (=> b!663845 (= e!380791 lt!309410)))

(declare-fun lt!309409 () Unit!23115)

(assert (=> b!663845 (= lt!309409 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!663845 (subseq!39 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38951 List!12758 List!12758 (_ BitVec 32)) Unit!23115)

(declare-fun $colon$colon!170 (List!12758 (_ BitVec 64)) List!12758)

(assert (=> b!663845 (= lt!309410 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!170 acc!681 (select (arr!18664 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663845 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663846 () Bool)

(assert (=> b!663846 (= e!380796 (contains!3301 acc!681 k0!2843))))

(declare-fun b!663847 () Bool)

(declare-fun res!431779 () Bool)

(assert (=> b!663847 (=> (not res!431779) (not e!380794))))

(assert (=> b!663847 (= res!431779 (not (contains!3301 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663848 () Bool)

(declare-fun e!380792 () Bool)

(assert (=> b!663848 (= e!380792 (not (contains!3301 acc!681 k0!2843)))))

(declare-fun b!663849 () Bool)

(declare-fun res!431771 () Bool)

(assert (=> b!663849 (=> (not res!431771) (not e!380794))))

(assert (=> b!663849 (= res!431771 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663850 () Bool)

(declare-fun res!431778 () Bool)

(assert (=> b!663850 (=> (not res!431778) (not e!380794))))

(assert (=> b!663850 (= res!431778 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12755))))

(declare-fun b!663851 () Bool)

(assert (=> b!663851 (= e!380795 e!380792)))

(declare-fun res!431775 () Bool)

(assert (=> b!663851 (=> (not res!431775) (not e!380792))))

(assert (=> b!663851 (= res!431775 (bvsle from!3004 i!1382))))

(declare-fun b!663852 () Bool)

(declare-fun res!431776 () Bool)

(assert (=> b!663852 (=> (not res!431776) (not e!380794))))

(assert (=> b!663852 (= res!431776 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19028 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663853 () Bool)

(declare-fun res!431772 () Bool)

(assert (=> b!663853 (=> (not res!431772) (not e!380794))))

(assert (=> b!663853 (= res!431772 (validKeyInArray!0 k0!2843))))

(declare-fun b!663854 () Bool)

(declare-fun Unit!23119 () Unit!23115)

(assert (=> b!663854 (= e!380791 Unit!23119)))

(assert (= (and start!59948 res!431767) b!663841))

(assert (= (and b!663841 res!431773) b!663843))

(assert (= (and b!663843 res!431769) b!663847))

(assert (= (and b!663847 res!431779) b!663838))

(assert (= (and b!663838 res!431768) b!663846))

(assert (= (and b!663838 (not res!431777)) b!663851))

(assert (= (and b!663851 res!431775) b!663848))

(assert (= (and b!663838 res!431770) b!663850))

(assert (= (and b!663850 res!431778) b!663849))

(assert (= (and b!663849 res!431771) b!663844))

(assert (= (and b!663844 res!431780) b!663853))

(assert (= (and b!663853 res!431772) b!663842))

(assert (= (and b!663842 res!431774) b!663852))

(assert (= (and b!663852 res!431776) b!663839))

(assert (= (and b!663839 c!76402) b!663837))

(assert (= (and b!663839 (not c!76402)) b!663840))

(assert (= (and b!663839 c!76403) b!663845))

(assert (= (and b!663839 (not c!76403)) b!663854))

(declare-fun m!635323 () Bool)

(assert (=> b!663850 m!635323))

(declare-fun m!635325 () Bool)

(assert (=> b!663843 m!635325))

(declare-fun m!635327 () Bool)

(assert (=> start!59948 m!635327))

(declare-fun m!635329 () Bool)

(assert (=> b!663846 m!635329))

(declare-fun m!635331 () Bool)

(assert (=> b!663845 m!635331))

(declare-fun m!635333 () Bool)

(assert (=> b!663845 m!635333))

(declare-fun m!635335 () Bool)

(assert (=> b!663845 m!635335))

(declare-fun m!635337 () Bool)

(assert (=> b!663845 m!635337))

(assert (=> b!663845 m!635333))

(assert (=> b!663845 m!635335))

(declare-fun m!635339 () Bool)

(assert (=> b!663845 m!635339))

(declare-fun m!635341 () Bool)

(assert (=> b!663845 m!635341))

(assert (=> b!663839 m!635331))

(assert (=> b!663839 m!635333))

(assert (=> b!663839 m!635329))

(declare-fun m!635343 () Bool)

(assert (=> b!663839 m!635343))

(assert (=> b!663839 m!635339))

(declare-fun m!635345 () Bool)

(assert (=> b!663839 m!635345))

(assert (=> b!663839 m!635333))

(declare-fun m!635347 () Bool)

(assert (=> b!663839 m!635347))

(declare-fun m!635349 () Bool)

(assert (=> b!663839 m!635349))

(assert (=> b!663839 m!635341))

(declare-fun m!635351 () Bool)

(assert (=> b!663849 m!635351))

(assert (=> b!663848 m!635329))

(declare-fun m!635353 () Bool)

(assert (=> b!663847 m!635353))

(declare-fun m!635355 () Bool)

(assert (=> b!663853 m!635355))

(declare-fun m!635357 () Bool)

(assert (=> b!663842 m!635357))

(declare-fun m!635359 () Bool)

(assert (=> b!663841 m!635359))

(declare-fun m!635361 () Bool)

(assert (=> b!663837 m!635361))

(check-sat (not b!663839) (not b!663843) (not b!663841) (not b!663848) (not b!663842) (not start!59948) (not b!663837) (not b!663849) (not b!663853) (not b!663846) (not b!663845) (not b!663850) (not b!663847))
