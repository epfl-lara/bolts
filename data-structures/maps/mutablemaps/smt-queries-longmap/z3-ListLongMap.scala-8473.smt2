; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103226 () Bool)

(assert start!103226)

(declare-fun b!1238647 () Bool)

(declare-fun res!826393 () Bool)

(declare-fun e!702031 () Bool)

(assert (=> b!1238647 (=> (not res!826393) (not e!702031))))

(declare-datatypes ((List!27454 0))(
  ( (Nil!27451) (Cons!27450 (h!28659 (_ BitVec 64)) (t!40924 List!27454)) )
))
(declare-fun acc!846 () List!27454)

(declare-fun contains!7369 (List!27454 (_ BitVec 64)) Bool)

(assert (=> b!1238647 (= res!826393 (not (contains!7369 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238648 () Bool)

(declare-fun res!826396 () Bool)

(assert (=> b!1238648 (=> (not res!826396) (not e!702031))))

(declare-datatypes ((array!79810 0))(
  ( (array!79811 (arr!38503 (Array (_ BitVec 32) (_ BitVec 64))) (size!39040 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79810)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79810 (_ BitVec 32) List!27454) Bool)

(assert (=> b!1238648 (= res!826396 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238649 () Bool)

(declare-fun res!826395 () Bool)

(assert (=> b!1238649 (=> (not res!826395) (not e!702031))))

(declare-fun noDuplicate!1976 (List!27454) Bool)

(assert (=> b!1238649 (= res!826395 (noDuplicate!1976 acc!846))))

(declare-fun res!826394 () Bool)

(assert (=> start!103226 (=> (not res!826394) (not e!702031))))

(assert (=> start!103226 (= res!826394 (and (bvslt (size!39040 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39040 a!3835))))))

(assert (=> start!103226 e!702031))

(declare-fun array_inv!29279 (array!79810) Bool)

(assert (=> start!103226 (array_inv!29279 a!3835)))

(assert (=> start!103226 true))

(declare-fun b!1238650 () Bool)

(declare-datatypes ((Unit!41070 0))(
  ( (Unit!41071) )
))
(declare-fun e!702030 () Unit!41070)

(declare-fun lt!561350 () Unit!41070)

(assert (=> b!1238650 (= e!702030 lt!561350)))

(declare-fun lt!561349 () List!27454)

(assert (=> b!1238650 (= lt!561349 (Cons!27450 (select (arr!38503 a!3835) from!3213) acc!846))))

(declare-fun lt!561348 () Unit!41070)

(declare-fun lemmaListSubSeqRefl!0 (List!27454) Unit!41070)

(assert (=> b!1238650 (= lt!561348 (lemmaListSubSeqRefl!0 lt!561349))))

(declare-fun subseq!606 (List!27454 List!27454) Bool)

(assert (=> b!1238650 (subseq!606 lt!561349 lt!561349)))

(declare-fun lt!561351 () Unit!41070)

(declare-fun subseqTail!93 (List!27454 List!27454) Unit!41070)

(assert (=> b!1238650 (= lt!561351 (subseqTail!93 lt!561349 lt!561349))))

(assert (=> b!1238650 (subseq!606 acc!846 lt!561349)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79810 List!27454 List!27454 (_ BitVec 32)) Unit!41070)

(assert (=> b!1238650 (= lt!561350 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561349 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238650 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238651 () Bool)

(declare-fun res!826390 () Bool)

(assert (=> b!1238651 (=> (not res!826390) (not e!702031))))

(assert (=> b!1238651 (= res!826390 (not (= from!3213 (bvsub (size!39040 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238652 () Bool)

(declare-fun res!826391 () Bool)

(assert (=> b!1238652 (=> (not res!826391) (not e!702031))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1238652 (= res!826391 (contains!7369 acc!846 k0!2925))))

(declare-fun b!1238653 () Bool)

(declare-fun Unit!41072 () Unit!41070)

(assert (=> b!1238653 (= e!702030 Unit!41072)))

(declare-fun b!1238654 () Bool)

(assert (=> b!1238654 (= e!702031 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun lt!561352 () Unit!41070)

(assert (=> b!1238654 (= lt!561352 e!702030)))

(declare-fun c!120991 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238654 (= c!120991 (validKeyInArray!0 (select (arr!38503 a!3835) from!3213)))))

(declare-fun b!1238655 () Bool)

(declare-fun res!826392 () Bool)

(assert (=> b!1238655 (=> (not res!826392) (not e!702031))))

(assert (=> b!1238655 (= res!826392 (not (contains!7369 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103226 res!826394) b!1238649))

(assert (= (and b!1238649 res!826395) b!1238647))

(assert (= (and b!1238647 res!826393) b!1238655))

(assert (= (and b!1238655 res!826392) b!1238648))

(assert (= (and b!1238648 res!826396) b!1238652))

(assert (= (and b!1238652 res!826391) b!1238651))

(assert (= (and b!1238651 res!826390) b!1238654))

(assert (= (and b!1238654 c!120991) b!1238650))

(assert (= (and b!1238654 (not c!120991)) b!1238653))

(declare-fun m!1142193 () Bool)

(assert (=> b!1238650 m!1142193))

(declare-fun m!1142195 () Bool)

(assert (=> b!1238650 m!1142195))

(declare-fun m!1142197 () Bool)

(assert (=> b!1238650 m!1142197))

(declare-fun m!1142199 () Bool)

(assert (=> b!1238650 m!1142199))

(declare-fun m!1142201 () Bool)

(assert (=> b!1238650 m!1142201))

(declare-fun m!1142203 () Bool)

(assert (=> b!1238650 m!1142203))

(declare-fun m!1142205 () Bool)

(assert (=> b!1238650 m!1142205))

(declare-fun m!1142207 () Bool)

(assert (=> start!103226 m!1142207))

(declare-fun m!1142209 () Bool)

(assert (=> b!1238649 m!1142209))

(declare-fun m!1142211 () Bool)

(assert (=> b!1238648 m!1142211))

(declare-fun m!1142213 () Bool)

(assert (=> b!1238647 m!1142213))

(assert (=> b!1238654 m!1142203))

(assert (=> b!1238654 m!1142203))

(declare-fun m!1142215 () Bool)

(assert (=> b!1238654 m!1142215))

(declare-fun m!1142217 () Bool)

(assert (=> b!1238652 m!1142217))

(declare-fun m!1142219 () Bool)

(assert (=> b!1238655 m!1142219))

(check-sat (not b!1238648) (not b!1238654) (not start!103226) (not b!1238647) (not b!1238652) (not b!1238650) (not b!1238649) (not b!1238655))
(check-sat)
