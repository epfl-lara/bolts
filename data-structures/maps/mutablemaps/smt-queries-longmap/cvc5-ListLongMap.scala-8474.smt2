; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103230 () Bool)

(assert start!103230)

(declare-fun b!1238701 () Bool)

(declare-fun e!702050 () Bool)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79814 0))(
  ( (array!79815 (arr!38505 (Array (_ BitVec 32) (_ BitVec 64))) (size!39042 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79814)

(assert (=> b!1238701 (= e!702050 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39042 a!3835))))))

(declare-datatypes ((Unit!41076 0))(
  ( (Unit!41077) )
))
(declare-fun lt!561378 () Unit!41076)

(declare-fun e!702048 () Unit!41076)

(assert (=> b!1238701 (= lt!561378 e!702048)))

(declare-fun c!120997 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238701 (= c!120997 (validKeyInArray!0 (select (arr!38505 a!3835) from!3213)))))

(declare-fun b!1238702 () Bool)

(declare-fun Unit!41078 () Unit!41076)

(assert (=> b!1238702 (= e!702048 Unit!41078)))

(declare-fun b!1238704 () Bool)

(declare-fun res!826438 () Bool)

(assert (=> b!1238704 (=> (not res!826438) (not e!702050))))

(assert (=> b!1238704 (= res!826438 (not (= from!3213 (bvsub (size!39042 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238703 () Bool)

(declare-fun res!826434 () Bool)

(assert (=> b!1238703 (=> (not res!826434) (not e!702050))))

(declare-datatypes ((List!27456 0))(
  ( (Nil!27453) (Cons!27452 (h!28661 (_ BitVec 64)) (t!40926 List!27456)) )
))
(declare-fun acc!846 () List!27456)

(declare-fun contains!7371 (List!27456 (_ BitVec 64)) Bool)

(assert (=> b!1238703 (= res!826434 (not (contains!7371 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!826432 () Bool)

(assert (=> start!103230 (=> (not res!826432) (not e!702050))))

(assert (=> start!103230 (= res!826432 (and (bvslt (size!39042 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39042 a!3835))))))

(assert (=> start!103230 e!702050))

(declare-fun array_inv!29281 (array!79814) Bool)

(assert (=> start!103230 (array_inv!29281 a!3835)))

(assert (=> start!103230 true))

(declare-fun b!1238705 () Bool)

(declare-fun res!826435 () Bool)

(assert (=> b!1238705 (=> (not res!826435) (not e!702050))))

(assert (=> b!1238705 (= res!826435 (not (contains!7371 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238706 () Bool)

(declare-fun res!826433 () Bool)

(assert (=> b!1238706 (=> (not res!826433) (not e!702050))))

(declare-fun noDuplicate!1978 (List!27456) Bool)

(assert (=> b!1238706 (= res!826433 (noDuplicate!1978 acc!846))))

(declare-fun b!1238707 () Bool)

(declare-fun lt!561382 () Unit!41076)

(assert (=> b!1238707 (= e!702048 lt!561382)))

(declare-fun lt!561380 () List!27456)

(assert (=> b!1238707 (= lt!561380 (Cons!27452 (select (arr!38505 a!3835) from!3213) acc!846))))

(declare-fun lt!561379 () Unit!41076)

(declare-fun lemmaListSubSeqRefl!0 (List!27456) Unit!41076)

(assert (=> b!1238707 (= lt!561379 (lemmaListSubSeqRefl!0 lt!561380))))

(declare-fun subseq!608 (List!27456 List!27456) Bool)

(assert (=> b!1238707 (subseq!608 lt!561380 lt!561380)))

(declare-fun lt!561381 () Unit!41076)

(declare-fun subseqTail!95 (List!27456 List!27456) Unit!41076)

(assert (=> b!1238707 (= lt!561381 (subseqTail!95 lt!561380 lt!561380))))

(assert (=> b!1238707 (subseq!608 acc!846 lt!561380)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79814 List!27456 List!27456 (_ BitVec 32)) Unit!41076)

(assert (=> b!1238707 (= lt!561382 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561380 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79814 (_ BitVec 32) List!27456) Bool)

(assert (=> b!1238707 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238708 () Bool)

(declare-fun res!826436 () Bool)

(assert (=> b!1238708 (=> (not res!826436) (not e!702050))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238708 (= res!826436 (contains!7371 acc!846 k!2925))))

(declare-fun b!1238709 () Bool)

(declare-fun res!826437 () Bool)

(assert (=> b!1238709 (=> (not res!826437) (not e!702050))))

(assert (=> b!1238709 (= res!826437 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!103230 res!826432) b!1238706))

(assert (= (and b!1238706 res!826433) b!1238705))

(assert (= (and b!1238705 res!826435) b!1238703))

(assert (= (and b!1238703 res!826434) b!1238709))

(assert (= (and b!1238709 res!826437) b!1238708))

(assert (= (and b!1238708 res!826436) b!1238704))

(assert (= (and b!1238704 res!826438) b!1238701))

(assert (= (and b!1238701 c!120997) b!1238707))

(assert (= (and b!1238701 (not c!120997)) b!1238702))

(declare-fun m!1142249 () Bool)

(assert (=> b!1238703 m!1142249))

(declare-fun m!1142251 () Bool)

(assert (=> b!1238706 m!1142251))

(declare-fun m!1142253 () Bool)

(assert (=> b!1238708 m!1142253))

(declare-fun m!1142255 () Bool)

(assert (=> b!1238705 m!1142255))

(declare-fun m!1142257 () Bool)

(assert (=> b!1238707 m!1142257))

(declare-fun m!1142259 () Bool)

(assert (=> b!1238707 m!1142259))

(declare-fun m!1142261 () Bool)

(assert (=> b!1238707 m!1142261))

(declare-fun m!1142263 () Bool)

(assert (=> b!1238707 m!1142263))

(declare-fun m!1142265 () Bool)

(assert (=> b!1238707 m!1142265))

(declare-fun m!1142267 () Bool)

(assert (=> b!1238707 m!1142267))

(declare-fun m!1142269 () Bool)

(assert (=> b!1238707 m!1142269))

(declare-fun m!1142271 () Bool)

(assert (=> start!103230 m!1142271))

(declare-fun m!1142273 () Bool)

(assert (=> b!1238709 m!1142273))

(assert (=> b!1238701 m!1142269))

(assert (=> b!1238701 m!1142269))

(declare-fun m!1142275 () Bool)

(assert (=> b!1238701 m!1142275))

(push 1)

(assert (not b!1238709))

(assert (not b!1238703))

(assert (not b!1238701))

(assert (not b!1238706))

(assert (not start!103230))

(assert (not b!1238705))

(assert (not b!1238707))

(assert (not b!1238708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

