; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103224 () Bool)

(assert start!103224)

(declare-fun b!1238620 () Bool)

(declare-fun e!702021 () Bool)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1238620 (= e!702021 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41067 0))(
  ( (Unit!41068) )
))
(declare-fun lt!561336 () Unit!41067)

(declare-fun e!702023 () Unit!41067)

(assert (=> b!1238620 (= lt!561336 e!702023)))

(declare-fun c!120988 () Bool)

(declare-datatypes ((array!79808 0))(
  ( (array!79809 (arr!38502 (Array (_ BitVec 32) (_ BitVec 64))) (size!39039 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79808)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238620 (= c!120988 (validKeyInArray!0 (select (arr!38502 a!3835) from!3213)))))

(declare-fun b!1238621 () Bool)

(declare-fun res!826370 () Bool)

(assert (=> b!1238621 (=> (not res!826370) (not e!702021))))

(assert (=> b!1238621 (= res!826370 (not (= from!3213 (bvsub (size!39039 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238622 () Bool)

(declare-fun res!826371 () Bool)

(assert (=> b!1238622 (=> (not res!826371) (not e!702021))))

(declare-datatypes ((List!27453 0))(
  ( (Nil!27450) (Cons!27449 (h!28658 (_ BitVec 64)) (t!40923 List!27453)) )
))
(declare-fun acc!846 () List!27453)

(declare-fun noDuplicate!1975 (List!27453) Bool)

(assert (=> b!1238622 (= res!826371 (noDuplicate!1975 acc!846))))

(declare-fun b!1238623 () Bool)

(declare-fun res!826373 () Bool)

(assert (=> b!1238623 (=> (not res!826373) (not e!702021))))

(declare-fun arrayNoDuplicates!0 (array!79808 (_ BitVec 32) List!27453) Bool)

(assert (=> b!1238623 (= res!826373 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238624 () Bool)

(declare-fun res!826374 () Bool)

(assert (=> b!1238624 (=> (not res!826374) (not e!702021))))

(declare-fun contains!7368 (List!27453 (_ BitVec 64)) Bool)

(assert (=> b!1238624 (= res!826374 (not (contains!7368 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238625 () Bool)

(declare-fun res!826375 () Bool)

(assert (=> b!1238625 (=> (not res!826375) (not e!702021))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238625 (= res!826375 (contains!7368 acc!846 k!2925))))

(declare-fun b!1238626 () Bool)

(declare-fun Unit!41069 () Unit!41067)

(assert (=> b!1238626 (= e!702023 Unit!41069)))

(declare-fun b!1238627 () Bool)

(declare-fun res!826372 () Bool)

(assert (=> b!1238627 (=> (not res!826372) (not e!702021))))

(assert (=> b!1238627 (= res!826372 (not (contains!7368 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238628 () Bool)

(declare-fun lt!561333 () Unit!41067)

(assert (=> b!1238628 (= e!702023 lt!561333)))

(declare-fun lt!561337 () List!27453)

(assert (=> b!1238628 (= lt!561337 (Cons!27449 (select (arr!38502 a!3835) from!3213) acc!846))))

(declare-fun lt!561335 () Unit!41067)

(declare-fun lemmaListSubSeqRefl!0 (List!27453) Unit!41067)

(assert (=> b!1238628 (= lt!561335 (lemmaListSubSeqRefl!0 lt!561337))))

(declare-fun subseq!605 (List!27453 List!27453) Bool)

(assert (=> b!1238628 (subseq!605 lt!561337 lt!561337)))

(declare-fun lt!561334 () Unit!41067)

(declare-fun subseqTail!92 (List!27453 List!27453) Unit!41067)

(assert (=> b!1238628 (= lt!561334 (subseqTail!92 lt!561337 lt!561337))))

(assert (=> b!1238628 (subseq!605 acc!846 lt!561337)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79808 List!27453 List!27453 (_ BitVec 32)) Unit!41067)

(assert (=> b!1238628 (= lt!561333 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561337 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238628 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun res!826369 () Bool)

(assert (=> start!103224 (=> (not res!826369) (not e!702021))))

(assert (=> start!103224 (= res!826369 (and (bvslt (size!39039 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39039 a!3835))))))

(assert (=> start!103224 e!702021))

(declare-fun array_inv!29278 (array!79808) Bool)

(assert (=> start!103224 (array_inv!29278 a!3835)))

(assert (=> start!103224 true))

(assert (= (and start!103224 res!826369) b!1238622))

(assert (= (and b!1238622 res!826371) b!1238627))

(assert (= (and b!1238627 res!826372) b!1238624))

(assert (= (and b!1238624 res!826374) b!1238623))

(assert (= (and b!1238623 res!826373) b!1238625))

(assert (= (and b!1238625 res!826375) b!1238621))

(assert (= (and b!1238621 res!826370) b!1238620))

(assert (= (and b!1238620 c!120988) b!1238628))

(assert (= (and b!1238620 (not c!120988)) b!1238626))

(declare-fun m!1142165 () Bool)

(assert (=> b!1238623 m!1142165))

(declare-fun m!1142167 () Bool)

(assert (=> start!103224 m!1142167))

(declare-fun m!1142169 () Bool)

(assert (=> b!1238625 m!1142169))

(declare-fun m!1142171 () Bool)

(assert (=> b!1238628 m!1142171))

(declare-fun m!1142173 () Bool)

(assert (=> b!1238628 m!1142173))

(declare-fun m!1142175 () Bool)

(assert (=> b!1238628 m!1142175))

(declare-fun m!1142177 () Bool)

(assert (=> b!1238628 m!1142177))

(declare-fun m!1142179 () Bool)

(assert (=> b!1238628 m!1142179))

(declare-fun m!1142181 () Bool)

(assert (=> b!1238628 m!1142181))

(declare-fun m!1142183 () Bool)

(assert (=> b!1238628 m!1142183))

(declare-fun m!1142185 () Bool)

(assert (=> b!1238624 m!1142185))

(declare-fun m!1142187 () Bool)

(assert (=> b!1238627 m!1142187))

(declare-fun m!1142189 () Bool)

(assert (=> b!1238622 m!1142189))

(assert (=> b!1238620 m!1142175))

(assert (=> b!1238620 m!1142175))

(declare-fun m!1142191 () Bool)

(assert (=> b!1238620 m!1142191))

(push 1)

