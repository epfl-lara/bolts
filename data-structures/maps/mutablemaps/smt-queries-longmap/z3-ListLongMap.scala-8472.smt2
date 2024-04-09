; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103220 () Bool)

(assert start!103220)

(declare-fun res!826328 () Bool)

(declare-fun e!702003 () Bool)

(assert (=> start!103220 (=> (not res!826328) (not e!702003))))

(declare-datatypes ((array!79804 0))(
  ( (array!79805 (arr!38500 (Array (_ BitVec 32) (_ BitVec 64))) (size!39037 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79804)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103220 (= res!826328 (and (bvslt (size!39037 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39037 a!3835))))))

(assert (=> start!103220 e!702003))

(declare-fun array_inv!29276 (array!79804) Bool)

(assert (=> start!103220 (array_inv!29276 a!3835)))

(assert (=> start!103220 true))

(declare-fun b!1238566 () Bool)

(declare-fun res!826330 () Bool)

(assert (=> b!1238566 (=> (not res!826330) (not e!702003))))

(assert (=> b!1238566 (= res!826330 (not (= from!3213 (bvsub (size!39037 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238567 () Bool)

(declare-fun res!826327 () Bool)

(assert (=> b!1238567 (=> (not res!826327) (not e!702003))))

(declare-datatypes ((List!27451 0))(
  ( (Nil!27448) (Cons!27447 (h!28656 (_ BitVec 64)) (t!40921 List!27451)) )
))
(declare-fun acc!846 () List!27451)

(declare-fun noDuplicate!1973 (List!27451) Bool)

(assert (=> b!1238567 (= res!826327 (noDuplicate!1973 acc!846))))

(declare-fun b!1238568 () Bool)

(declare-fun res!826333 () Bool)

(assert (=> b!1238568 (=> (not res!826333) (not e!702003))))

(declare-fun arrayNoDuplicates!0 (array!79804 (_ BitVec 32) List!27451) Bool)

(assert (=> b!1238568 (= res!826333 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238569 () Bool)

(declare-fun res!826331 () Bool)

(assert (=> b!1238569 (=> (not res!826331) (not e!702003))))

(declare-fun contains!7366 (List!27451 (_ BitVec 64)) Bool)

(assert (=> b!1238569 (= res!826331 (not (contains!7366 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238570 () Bool)

(declare-datatypes ((Unit!41061 0))(
  ( (Unit!41062) )
))
(declare-fun e!702005 () Unit!41061)

(declare-fun lt!561304 () Unit!41061)

(assert (=> b!1238570 (= e!702005 lt!561304)))

(declare-fun lt!561303 () List!27451)

(assert (=> b!1238570 (= lt!561303 (Cons!27447 (select (arr!38500 a!3835) from!3213) acc!846))))

(declare-fun lt!561307 () Unit!41061)

(declare-fun lemmaListSubSeqRefl!0 (List!27451) Unit!41061)

(assert (=> b!1238570 (= lt!561307 (lemmaListSubSeqRefl!0 lt!561303))))

(declare-fun subseq!603 (List!27451 List!27451) Bool)

(assert (=> b!1238570 (subseq!603 lt!561303 lt!561303)))

(declare-fun lt!561305 () Unit!41061)

(declare-fun subseqTail!90 (List!27451 List!27451) Unit!41061)

(assert (=> b!1238570 (= lt!561305 (subseqTail!90 lt!561303 lt!561303))))

(assert (=> b!1238570 (subseq!603 acc!846 lt!561303)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79804 List!27451 List!27451 (_ BitVec 32)) Unit!41061)

(assert (=> b!1238570 (= lt!561304 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561303 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238570 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238571 () Bool)

(declare-fun res!826329 () Bool)

(assert (=> b!1238571 (=> (not res!826329) (not e!702003))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1238571 (= res!826329 (contains!7366 acc!846 k0!2925))))

(declare-fun b!1238572 () Bool)

(declare-fun Unit!41063 () Unit!41061)

(assert (=> b!1238572 (= e!702005 Unit!41063)))

(declare-fun b!1238573 () Bool)

(assert (=> b!1238573 (= e!702003 false)))

(declare-fun lt!561306 () Unit!41061)

(assert (=> b!1238573 (= lt!561306 e!702005)))

(declare-fun c!120982 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238573 (= c!120982 (validKeyInArray!0 (select (arr!38500 a!3835) from!3213)))))

(declare-fun b!1238574 () Bool)

(declare-fun res!826332 () Bool)

(assert (=> b!1238574 (=> (not res!826332) (not e!702003))))

(assert (=> b!1238574 (= res!826332 (not (contains!7366 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103220 res!826328) b!1238567))

(assert (= (and b!1238567 res!826327) b!1238574))

(assert (= (and b!1238574 res!826332) b!1238569))

(assert (= (and b!1238569 res!826331) b!1238568))

(assert (= (and b!1238568 res!826333) b!1238571))

(assert (= (and b!1238571 res!826329) b!1238566))

(assert (= (and b!1238566 res!826330) b!1238573))

(assert (= (and b!1238573 c!120982) b!1238570))

(assert (= (and b!1238573 (not c!120982)) b!1238572))

(declare-fun m!1142109 () Bool)

(assert (=> start!103220 m!1142109))

(declare-fun m!1142111 () Bool)

(assert (=> b!1238573 m!1142111))

(assert (=> b!1238573 m!1142111))

(declare-fun m!1142113 () Bool)

(assert (=> b!1238573 m!1142113))

(declare-fun m!1142115 () Bool)

(assert (=> b!1238567 m!1142115))

(declare-fun m!1142117 () Bool)

(assert (=> b!1238571 m!1142117))

(declare-fun m!1142119 () Bool)

(assert (=> b!1238574 m!1142119))

(declare-fun m!1142121 () Bool)

(assert (=> b!1238570 m!1142121))

(declare-fun m!1142123 () Bool)

(assert (=> b!1238570 m!1142123))

(declare-fun m!1142125 () Bool)

(assert (=> b!1238570 m!1142125))

(assert (=> b!1238570 m!1142111))

(declare-fun m!1142127 () Bool)

(assert (=> b!1238570 m!1142127))

(declare-fun m!1142129 () Bool)

(assert (=> b!1238570 m!1142129))

(declare-fun m!1142131 () Bool)

(assert (=> b!1238570 m!1142131))

(declare-fun m!1142133 () Bool)

(assert (=> b!1238569 m!1142133))

(declare-fun m!1142135 () Bool)

(assert (=> b!1238568 m!1142135))

(check-sat (not b!1238568) (not b!1238567) (not b!1238569) (not b!1238574) (not start!103220) (not b!1238571) (not b!1238570) (not b!1238573))
