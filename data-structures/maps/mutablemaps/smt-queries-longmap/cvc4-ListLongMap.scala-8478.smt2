; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103312 () Bool)

(assert start!103312)

(declare-fun b!1239315 () Bool)

(declare-fun res!826889 () Bool)

(declare-fun e!702373 () Bool)

(assert (=> b!1239315 (=> (not res!826889) (not e!702373))))

(declare-datatypes ((List!27470 0))(
  ( (Nil!27467) (Cons!27466 (h!28675 (_ BitVec 64)) (t!40940 List!27470)) )
))
(declare-fun acc!846 () List!27470)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7385 (List!27470 (_ BitVec 64)) Bool)

(assert (=> b!1239315 (= res!826889 (contains!7385 acc!846 k!2925))))

(declare-fun b!1239316 () Bool)

(declare-fun res!826884 () Bool)

(assert (=> b!1239316 (=> (not res!826884) (not e!702373))))

(assert (=> b!1239316 (= res!826884 (not (contains!7385 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239317 () Bool)

(declare-datatypes ((Unit!41122 0))(
  ( (Unit!41123) )
))
(declare-fun e!702371 () Unit!41122)

(declare-fun lt!561642 () Unit!41122)

(assert (=> b!1239317 (= e!702371 lt!561642)))

(declare-datatypes ((array!79845 0))(
  ( (array!79846 (arr!38519 (Array (_ BitVec 32) (_ BitVec 64))) (size!39056 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79845)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!561639 () List!27470)

(assert (=> b!1239317 (= lt!561639 (Cons!27466 (select (arr!38519 a!3835) from!3213) acc!846))))

(declare-fun lt!561640 () Unit!41122)

(declare-fun lemmaListSubSeqRefl!0 (List!27470) Unit!41122)

(assert (=> b!1239317 (= lt!561640 (lemmaListSubSeqRefl!0 lt!561639))))

(declare-fun subseq!622 (List!27470 List!27470) Bool)

(assert (=> b!1239317 (subseq!622 lt!561639 lt!561639)))

(declare-fun lt!561643 () Unit!41122)

(declare-fun subseqTail!109 (List!27470 List!27470) Unit!41122)

(assert (=> b!1239317 (= lt!561643 (subseqTail!109 lt!561639 lt!561639))))

(assert (=> b!1239317 (subseq!622 acc!846 lt!561639)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79845 List!27470 List!27470 (_ BitVec 32)) Unit!41122)

(assert (=> b!1239317 (= lt!561642 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561639 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79845 (_ BitVec 32) List!27470) Bool)

(assert (=> b!1239317 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239318 () Bool)

(declare-fun res!826891 () Bool)

(assert (=> b!1239318 (=> (not res!826891) (not e!702373))))

(declare-fun noDuplicate!1992 (List!27470) Bool)

(assert (=> b!1239318 (= res!826891 (noDuplicate!1992 acc!846))))

(declare-fun b!1239319 () Bool)

(declare-fun res!826885 () Bool)

(assert (=> b!1239319 (=> (not res!826885) (not e!702373))))

(assert (=> b!1239319 (= res!826885 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!826887 () Bool)

(assert (=> start!103312 (=> (not res!826887) (not e!702373))))

(assert (=> start!103312 (= res!826887 (and (bvslt (size!39056 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39056 a!3835))))))

(assert (=> start!103312 e!702373))

(declare-fun array_inv!29295 (array!79845) Bool)

(assert (=> start!103312 (array_inv!29295 a!3835)))

(assert (=> start!103312 true))

(declare-fun b!1239320 () Bool)

(declare-fun e!702374 () Bool)

(assert (=> b!1239320 (= e!702373 e!702374)))

(declare-fun res!826886 () Bool)

(assert (=> b!1239320 (=> (not res!826886) (not e!702374))))

(assert (=> b!1239320 (= res!826886 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39056 a!3835))))))

(declare-fun lt!561638 () Unit!41122)

(assert (=> b!1239320 (= lt!561638 e!702371)))

(declare-fun c!121078 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239320 (= c!121078 (validKeyInArray!0 (select (arr!38519 a!3835) from!3213)))))

(declare-fun b!1239321 () Bool)

(declare-fun res!826890 () Bool)

(assert (=> b!1239321 (=> (not res!826890) (not e!702373))))

(assert (=> b!1239321 (= res!826890 (not (contains!7385 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239322 () Bool)

(declare-fun res!826888 () Bool)

(assert (=> b!1239322 (=> (not res!826888) (not e!702373))))

(assert (=> b!1239322 (= res!826888 (not (= from!3213 (bvsub (size!39056 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239323 () Bool)

(assert (=> b!1239323 (= e!702374 false)))

(declare-fun lt!561641 () Bool)

(assert (=> b!1239323 (= lt!561641 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239324 () Bool)

(declare-fun Unit!41124 () Unit!41122)

(assert (=> b!1239324 (= e!702371 Unit!41124)))

(assert (= (and start!103312 res!826887) b!1239318))

(assert (= (and b!1239318 res!826891) b!1239316))

(assert (= (and b!1239316 res!826884) b!1239321))

(assert (= (and b!1239321 res!826890) b!1239319))

(assert (= (and b!1239319 res!826885) b!1239315))

(assert (= (and b!1239315 res!826889) b!1239322))

(assert (= (and b!1239322 res!826888) b!1239320))

(assert (= (and b!1239320 c!121078) b!1239317))

(assert (= (and b!1239320 (not c!121078)) b!1239324))

(assert (= (and b!1239320 res!826886) b!1239323))

(declare-fun m!1142797 () Bool)

(assert (=> b!1239320 m!1142797))

(assert (=> b!1239320 m!1142797))

(declare-fun m!1142799 () Bool)

(assert (=> b!1239320 m!1142799))

(declare-fun m!1142801 () Bool)

(assert (=> b!1239321 m!1142801))

(declare-fun m!1142803 () Bool)

(assert (=> b!1239317 m!1142803))

(declare-fun m!1142805 () Bool)

(assert (=> b!1239317 m!1142805))

(declare-fun m!1142807 () Bool)

(assert (=> b!1239317 m!1142807))

(assert (=> b!1239317 m!1142797))

(declare-fun m!1142809 () Bool)

(assert (=> b!1239317 m!1142809))

(declare-fun m!1142811 () Bool)

(assert (=> b!1239317 m!1142811))

(declare-fun m!1142813 () Bool)

(assert (=> b!1239317 m!1142813))

(declare-fun m!1142815 () Bool)

(assert (=> b!1239316 m!1142815))

(declare-fun m!1142817 () Bool)

(assert (=> b!1239318 m!1142817))

(declare-fun m!1142819 () Bool)

(assert (=> b!1239315 m!1142819))

(declare-fun m!1142821 () Bool)

(assert (=> start!103312 m!1142821))

(declare-fun m!1142823 () Bool)

(assert (=> b!1239319 m!1142823))

(assert (=> b!1239323 m!1142813))

(push 1)

(assert (not b!1239321))

(assert (not b!1239317))

