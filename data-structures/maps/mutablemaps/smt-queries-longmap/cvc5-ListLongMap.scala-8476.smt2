; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103242 () Bool)

(assert start!103242)

(declare-fun b!1238863 () Bool)

(declare-datatypes ((Unit!41094 0))(
  ( (Unit!41095) )
))
(declare-fun e!702102 () Unit!41094)

(declare-fun lt!561470 () Unit!41094)

(assert (=> b!1238863 (= e!702102 lt!561470)))

(declare-datatypes ((array!79826 0))(
  ( (array!79827 (arr!38511 (Array (_ BitVec 32) (_ BitVec 64))) (size!39048 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79826)

(declare-datatypes ((List!27462 0))(
  ( (Nil!27459) (Cons!27458 (h!28667 (_ BitVec 64)) (t!40932 List!27462)) )
))
(declare-fun acc!846 () List!27462)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!561468 () List!27462)

(assert (=> b!1238863 (= lt!561468 (Cons!27458 (select (arr!38511 a!3835) from!3213) acc!846))))

(declare-fun lt!561472 () Unit!41094)

(declare-fun lemmaListSubSeqRefl!0 (List!27462) Unit!41094)

(assert (=> b!1238863 (= lt!561472 (lemmaListSubSeqRefl!0 lt!561468))))

(declare-fun subseq!614 (List!27462 List!27462) Bool)

(assert (=> b!1238863 (subseq!614 lt!561468 lt!561468)))

(declare-fun lt!561469 () Unit!41094)

(declare-fun subseqTail!101 (List!27462 List!27462) Unit!41094)

(assert (=> b!1238863 (= lt!561469 (subseqTail!101 lt!561468 lt!561468))))

(assert (=> b!1238863 (subseq!614 acc!846 lt!561468)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79826 List!27462 List!27462 (_ BitVec 32)) Unit!41094)

(assert (=> b!1238863 (= lt!561470 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561468 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79826 (_ BitVec 32) List!27462) Bool)

(assert (=> b!1238863 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun res!826559 () Bool)

(declare-fun e!702103 () Bool)

(assert (=> start!103242 (=> (not res!826559) (not e!702103))))

(assert (=> start!103242 (= res!826559 (and (bvslt (size!39048 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39048 a!3835))))))

(assert (=> start!103242 e!702103))

(declare-fun array_inv!29287 (array!79826) Bool)

(assert (=> start!103242 (array_inv!29287 a!3835)))

(assert (=> start!103242 true))

(declare-fun b!1238864 () Bool)

(declare-fun res!826561 () Bool)

(assert (=> b!1238864 (=> (not res!826561) (not e!702103))))

(declare-fun contains!7377 (List!27462 (_ BitVec 64)) Bool)

(assert (=> b!1238864 (= res!826561 (not (contains!7377 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238865 () Bool)

(declare-fun res!826560 () Bool)

(assert (=> b!1238865 (=> (not res!826560) (not e!702103))))

(assert (=> b!1238865 (= res!826560 (not (contains!7377 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238866 () Bool)

(assert (=> b!1238866 (= e!702103 false)))

(declare-fun lt!561471 () Unit!41094)

(assert (=> b!1238866 (= lt!561471 e!702102)))

(declare-fun c!121015 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238866 (= c!121015 (validKeyInArray!0 (select (arr!38511 a!3835) from!3213)))))

(declare-fun b!1238867 () Bool)

(declare-fun res!826564 () Bool)

(assert (=> b!1238867 (=> (not res!826564) (not e!702103))))

(assert (=> b!1238867 (= res!826564 (not (= from!3213 (bvsub (size!39048 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238868 () Bool)

(declare-fun res!826563 () Bool)

(assert (=> b!1238868 (=> (not res!826563) (not e!702103))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238868 (= res!826563 (contains!7377 acc!846 k!2925))))

(declare-fun b!1238869 () Bool)

(declare-fun res!826562 () Bool)

(assert (=> b!1238869 (=> (not res!826562) (not e!702103))))

(assert (=> b!1238869 (= res!826562 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238870 () Bool)

(declare-fun Unit!41096 () Unit!41094)

(assert (=> b!1238870 (= e!702102 Unit!41096)))

(declare-fun b!1238871 () Bool)

(declare-fun res!826558 () Bool)

(assert (=> b!1238871 (=> (not res!826558) (not e!702103))))

(declare-fun noDuplicate!1984 (List!27462) Bool)

(assert (=> b!1238871 (= res!826558 (noDuplicate!1984 acc!846))))

(assert (= (and start!103242 res!826559) b!1238871))

(assert (= (and b!1238871 res!826558) b!1238865))

(assert (= (and b!1238865 res!826560) b!1238864))

(assert (= (and b!1238864 res!826561) b!1238869))

(assert (= (and b!1238869 res!826562) b!1238868))

(assert (= (and b!1238868 res!826563) b!1238867))

(assert (= (and b!1238867 res!826564) b!1238866))

(assert (= (and b!1238866 c!121015) b!1238863))

(assert (= (and b!1238866 (not c!121015)) b!1238870))

(declare-fun m!1142417 () Bool)

(assert (=> b!1238866 m!1142417))

(assert (=> b!1238866 m!1142417))

(declare-fun m!1142419 () Bool)

(assert (=> b!1238866 m!1142419))

(declare-fun m!1142421 () Bool)

(assert (=> b!1238863 m!1142421))

(declare-fun m!1142423 () Bool)

(assert (=> b!1238863 m!1142423))

(declare-fun m!1142425 () Bool)

(assert (=> b!1238863 m!1142425))

(declare-fun m!1142427 () Bool)

(assert (=> b!1238863 m!1142427))

(declare-fun m!1142429 () Bool)

(assert (=> b!1238863 m!1142429))

(declare-fun m!1142431 () Bool)

(assert (=> b!1238863 m!1142431))

(assert (=> b!1238863 m!1142417))

(declare-fun m!1142433 () Bool)

(assert (=> b!1238868 m!1142433))

(declare-fun m!1142435 () Bool)

(assert (=> b!1238871 m!1142435))

(declare-fun m!1142437 () Bool)

(assert (=> b!1238865 m!1142437))

(declare-fun m!1142439 () Bool)

(assert (=> b!1238869 m!1142439))

(declare-fun m!1142441 () Bool)

(assert (=> b!1238864 m!1142441))

(declare-fun m!1142443 () Bool)

(assert (=> start!103242 m!1142443))

(push 1)

(assert (not b!1238863))

(assert (not b!1238865))

(assert (not b!1238869))

(assert (not b!1238868))

(assert (not b!1238871))

(assert (not start!103242))

(assert (not b!1238864))

(assert (not b!1238866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

