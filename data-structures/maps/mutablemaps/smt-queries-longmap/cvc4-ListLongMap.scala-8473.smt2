; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103228 () Bool)

(assert start!103228)

(declare-fun res!826413 () Bool)

(declare-fun e!702041 () Bool)

(assert (=> start!103228 (=> (not res!826413) (not e!702041))))

(declare-datatypes ((array!79812 0))(
  ( (array!79813 (arr!38504 (Array (_ BitVec 32) (_ BitVec 64))) (size!39041 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79812)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103228 (= res!826413 (and (bvslt (size!39041 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39041 a!3835))))))

(assert (=> start!103228 e!702041))

(declare-fun array_inv!29280 (array!79812) Bool)

(assert (=> start!103228 (array_inv!29280 a!3835)))

(assert (=> start!103228 true))

(declare-fun b!1238674 () Bool)

(declare-fun res!826417 () Bool)

(assert (=> b!1238674 (=> (not res!826417) (not e!702041))))

(assert (=> b!1238674 (= res!826417 (not (= from!3213 (bvsub (size!39041 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238675 () Bool)

(declare-fun res!826416 () Bool)

(assert (=> b!1238675 (=> (not res!826416) (not e!702041))))

(declare-datatypes ((List!27455 0))(
  ( (Nil!27452) (Cons!27451 (h!28660 (_ BitVec 64)) (t!40925 List!27455)) )
))
(declare-fun acc!846 () List!27455)

(declare-fun arrayNoDuplicates!0 (array!79812 (_ BitVec 32) List!27455) Bool)

(assert (=> b!1238675 (= res!826416 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238676 () Bool)

(declare-fun res!826414 () Bool)

(assert (=> b!1238676 (=> (not res!826414) (not e!702041))))

(declare-fun noDuplicate!1977 (List!27455) Bool)

(assert (=> b!1238676 (= res!826414 (noDuplicate!1977 acc!846))))

(declare-fun b!1238677 () Bool)

(declare-datatypes ((Unit!41073 0))(
  ( (Unit!41074) )
))
(declare-fun e!702040 () Unit!41073)

(declare-fun lt!561363 () Unit!41073)

(assert (=> b!1238677 (= e!702040 lt!561363)))

(declare-fun lt!561367 () List!27455)

(assert (=> b!1238677 (= lt!561367 (Cons!27451 (select (arr!38504 a!3835) from!3213) acc!846))))

(declare-fun lt!561365 () Unit!41073)

(declare-fun lemmaListSubSeqRefl!0 (List!27455) Unit!41073)

(assert (=> b!1238677 (= lt!561365 (lemmaListSubSeqRefl!0 lt!561367))))

(declare-fun subseq!607 (List!27455 List!27455) Bool)

(assert (=> b!1238677 (subseq!607 lt!561367 lt!561367)))

(declare-fun lt!561364 () Unit!41073)

(declare-fun subseqTail!94 (List!27455 List!27455) Unit!41073)

(assert (=> b!1238677 (= lt!561364 (subseqTail!94 lt!561367 lt!561367))))

(assert (=> b!1238677 (subseq!607 acc!846 lt!561367)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79812 List!27455 List!27455 (_ BitVec 32)) Unit!41073)

(assert (=> b!1238677 (= lt!561363 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561367 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238677 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238678 () Bool)

(declare-fun Unit!41075 () Unit!41073)

(assert (=> b!1238678 (= e!702040 Unit!41075)))

(declare-fun b!1238679 () Bool)

(declare-fun res!826411 () Bool)

(assert (=> b!1238679 (=> (not res!826411) (not e!702041))))

(declare-fun contains!7370 (List!27455 (_ BitVec 64)) Bool)

(assert (=> b!1238679 (= res!826411 (not (contains!7370 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238680 () Bool)

(declare-fun res!826415 () Bool)

(assert (=> b!1238680 (=> (not res!826415) (not e!702041))))

(assert (=> b!1238680 (= res!826415 (not (contains!7370 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238681 () Bool)

(declare-fun res!826412 () Bool)

(assert (=> b!1238681 (=> (not res!826412) (not e!702041))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238681 (= res!826412 (contains!7370 acc!846 k!2925))))

(declare-fun b!1238682 () Bool)

(assert (=> b!1238682 (= e!702041 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun lt!561366 () Unit!41073)

(assert (=> b!1238682 (= lt!561366 e!702040)))

(declare-fun c!120994 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238682 (= c!120994 (validKeyInArray!0 (select (arr!38504 a!3835) from!3213)))))

(assert (= (and start!103228 res!826413) b!1238676))

(assert (= (and b!1238676 res!826414) b!1238679))

(assert (= (and b!1238679 res!826411) b!1238680))

(assert (= (and b!1238680 res!826415) b!1238675))

(assert (= (and b!1238675 res!826416) b!1238681))

(assert (= (and b!1238681 res!826412) b!1238674))

(assert (= (and b!1238674 res!826417) b!1238682))

(assert (= (and b!1238682 c!120994) b!1238677))

(assert (= (and b!1238682 (not c!120994)) b!1238678))

(declare-fun m!1142221 () Bool)

(assert (=> start!103228 m!1142221))

(declare-fun m!1142223 () Bool)

(assert (=> b!1238675 m!1142223))

(declare-fun m!1142225 () Bool)

(assert (=> b!1238679 m!1142225))

(declare-fun m!1142227 () Bool)

(assert (=> b!1238681 m!1142227))

(declare-fun m!1142229 () Bool)

(assert (=> b!1238677 m!1142229))

(declare-fun m!1142231 () Bool)

(assert (=> b!1238677 m!1142231))

(declare-fun m!1142233 () Bool)

(assert (=> b!1238677 m!1142233))

(declare-fun m!1142235 () Bool)

(assert (=> b!1238677 m!1142235))

(declare-fun m!1142237 () Bool)

(assert (=> b!1238677 m!1142237))

(declare-fun m!1142239 () Bool)

(assert (=> b!1238677 m!1142239))

(declare-fun m!1142241 () Bool)

(assert (=> b!1238677 m!1142241))

(assert (=> b!1238682 m!1142241))

(assert (=> b!1238682 m!1142241))

(declare-fun m!1142243 () Bool)

(assert (=> b!1238682 m!1142243))

(declare-fun m!1142245 () Bool)

(assert (=> b!1238680 m!1142245))

(declare-fun m!1142247 () Bool)

(assert (=> b!1238676 m!1142247))

(push 1)

