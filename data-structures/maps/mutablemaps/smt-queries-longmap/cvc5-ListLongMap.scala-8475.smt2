; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103236 () Bool)

(assert start!103236)

(declare-fun b!1238782 () Bool)

(declare-fun res!826499 () Bool)

(declare-fun e!702075 () Bool)

(assert (=> b!1238782 (=> (not res!826499) (not e!702075))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79820 0))(
  ( (array!79821 (arr!38508 (Array (_ BitVec 32) (_ BitVec 64))) (size!39045 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79820)

(assert (=> b!1238782 (= res!826499 (not (= from!3213 (bvsub (size!39045 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238783 () Bool)

(declare-datatypes ((Unit!41085 0))(
  ( (Unit!41086) )
))
(declare-fun e!702076 () Unit!41085)

(declare-fun Unit!41087 () Unit!41085)

(assert (=> b!1238783 (= e!702076 Unit!41087)))

(declare-fun b!1238784 () Bool)

(declare-fun res!826496 () Bool)

(assert (=> b!1238784 (=> (not res!826496) (not e!702075))))

(declare-datatypes ((List!27459 0))(
  ( (Nil!27456) (Cons!27455 (h!28664 (_ BitVec 64)) (t!40929 List!27459)) )
))
(declare-fun acc!846 () List!27459)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7374 (List!27459 (_ BitVec 64)) Bool)

(assert (=> b!1238784 (= res!826496 (contains!7374 acc!846 k!2925))))

(declare-fun b!1238785 () Bool)

(declare-fun lt!561423 () Unit!41085)

(assert (=> b!1238785 (= e!702076 lt!561423)))

(declare-fun lt!561425 () List!27459)

(assert (=> b!1238785 (= lt!561425 (Cons!27455 (select (arr!38508 a!3835) from!3213) acc!846))))

(declare-fun lt!561424 () Unit!41085)

(declare-fun lemmaListSubSeqRefl!0 (List!27459) Unit!41085)

(assert (=> b!1238785 (= lt!561424 (lemmaListSubSeqRefl!0 lt!561425))))

(declare-fun subseq!611 (List!27459 List!27459) Bool)

(assert (=> b!1238785 (subseq!611 lt!561425 lt!561425)))

(declare-fun lt!561427 () Unit!41085)

(declare-fun subseqTail!98 (List!27459 List!27459) Unit!41085)

(assert (=> b!1238785 (= lt!561427 (subseqTail!98 lt!561425 lt!561425))))

(assert (=> b!1238785 (subseq!611 acc!846 lt!561425)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79820 List!27459 List!27459 (_ BitVec 32)) Unit!41085)

(assert (=> b!1238785 (= lt!561423 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561425 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79820 (_ BitVec 32) List!27459) Bool)

(assert (=> b!1238785 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238786 () Bool)

(assert (=> b!1238786 (= e!702075 false)))

(declare-fun lt!561426 () Unit!41085)

(assert (=> b!1238786 (= lt!561426 e!702076)))

(declare-fun c!121006 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238786 (= c!121006 (validKeyInArray!0 (select (arr!38508 a!3835) from!3213)))))

(declare-fun b!1238787 () Bool)

(declare-fun res!826498 () Bool)

(assert (=> b!1238787 (=> (not res!826498) (not e!702075))))

(declare-fun noDuplicate!1981 (List!27459) Bool)

(assert (=> b!1238787 (= res!826498 (noDuplicate!1981 acc!846))))

(declare-fun b!1238788 () Bool)

(declare-fun res!826497 () Bool)

(assert (=> b!1238788 (=> (not res!826497) (not e!702075))))

(assert (=> b!1238788 (= res!826497 (not (contains!7374 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238790 () Bool)

(declare-fun res!826501 () Bool)

(assert (=> b!1238790 (=> (not res!826501) (not e!702075))))

(assert (=> b!1238790 (= res!826501 (not (contains!7374 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!826495 () Bool)

(assert (=> start!103236 (=> (not res!826495) (not e!702075))))

(assert (=> start!103236 (= res!826495 (and (bvslt (size!39045 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39045 a!3835))))))

(assert (=> start!103236 e!702075))

(declare-fun array_inv!29284 (array!79820) Bool)

(assert (=> start!103236 (array_inv!29284 a!3835)))

(assert (=> start!103236 true))

(declare-fun b!1238789 () Bool)

(declare-fun res!826500 () Bool)

(assert (=> b!1238789 (=> (not res!826500) (not e!702075))))

(assert (=> b!1238789 (= res!826500 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!103236 res!826495) b!1238787))

(assert (= (and b!1238787 res!826498) b!1238790))

(assert (= (and b!1238790 res!826501) b!1238788))

(assert (= (and b!1238788 res!826497) b!1238789))

(assert (= (and b!1238789 res!826500) b!1238784))

(assert (= (and b!1238784 res!826496) b!1238782))

(assert (= (and b!1238782 res!826499) b!1238786))

(assert (= (and b!1238786 c!121006) b!1238785))

(assert (= (and b!1238786 (not c!121006)) b!1238783))

(declare-fun m!1142333 () Bool)

(assert (=> start!103236 m!1142333))

(declare-fun m!1142335 () Bool)

(assert (=> b!1238790 m!1142335))

(declare-fun m!1142337 () Bool)

(assert (=> b!1238785 m!1142337))

(declare-fun m!1142339 () Bool)

(assert (=> b!1238785 m!1142339))

(declare-fun m!1142341 () Bool)

(assert (=> b!1238785 m!1142341))

(declare-fun m!1142343 () Bool)

(assert (=> b!1238785 m!1142343))

(declare-fun m!1142345 () Bool)

(assert (=> b!1238785 m!1142345))

(declare-fun m!1142347 () Bool)

(assert (=> b!1238785 m!1142347))

(declare-fun m!1142349 () Bool)

(assert (=> b!1238785 m!1142349))

(declare-fun m!1142351 () Bool)

(assert (=> b!1238788 m!1142351))

(assert (=> b!1238786 m!1142341))

(assert (=> b!1238786 m!1142341))

(declare-fun m!1142353 () Bool)

(assert (=> b!1238786 m!1142353))

(declare-fun m!1142355 () Bool)

(assert (=> b!1238784 m!1142355))

(declare-fun m!1142357 () Bool)

(assert (=> b!1238789 m!1142357))

(declare-fun m!1142359 () Bool)

(assert (=> b!1238787 m!1142359))

(push 1)

(assert (not b!1238789))

(assert (not b!1238786))

(assert (not b!1238784))

(assert (not b!1238785))

(assert (not b!1238788))

(assert (not b!1238790))

(assert (not b!1238787))

(assert (not start!103236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

