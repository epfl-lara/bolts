; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103222 () Bool)

(assert start!103222)

(declare-fun b!1238593 () Bool)

(declare-datatypes ((Unit!41064 0))(
  ( (Unit!41065) )
))
(declare-fun e!702014 () Unit!41064)

(declare-fun lt!561318 () Unit!41064)

(assert (=> b!1238593 (= e!702014 lt!561318)))

(declare-datatypes ((List!27452 0))(
  ( (Nil!27449) (Cons!27448 (h!28657 (_ BitVec 64)) (t!40922 List!27452)) )
))
(declare-fun lt!561319 () List!27452)

(declare-datatypes ((array!79806 0))(
  ( (array!79807 (arr!38501 (Array (_ BitVec 32) (_ BitVec 64))) (size!39038 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79806)

(declare-fun acc!846 () List!27452)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1238593 (= lt!561319 (Cons!27448 (select (arr!38501 a!3835) from!3213) acc!846))))

(declare-fun lt!561322 () Unit!41064)

(declare-fun lemmaListSubSeqRefl!0 (List!27452) Unit!41064)

(assert (=> b!1238593 (= lt!561322 (lemmaListSubSeqRefl!0 lt!561319))))

(declare-fun subseq!604 (List!27452 List!27452) Bool)

(assert (=> b!1238593 (subseq!604 lt!561319 lt!561319)))

(declare-fun lt!561321 () Unit!41064)

(declare-fun subseqTail!91 (List!27452 List!27452) Unit!41064)

(assert (=> b!1238593 (= lt!561321 (subseqTail!91 lt!561319 lt!561319))))

(assert (=> b!1238593 (subseq!604 acc!846 lt!561319)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79806 List!27452 List!27452 (_ BitVec 32)) Unit!41064)

(assert (=> b!1238593 (= lt!561318 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561319 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79806 (_ BitVec 32) List!27452) Bool)

(assert (=> b!1238593 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238594 () Bool)

(declare-fun res!826350 () Bool)

(declare-fun e!702012 () Bool)

(assert (=> b!1238594 (=> (not res!826350) (not e!702012))))

(declare-fun contains!7367 (List!27452 (_ BitVec 64)) Bool)

(assert (=> b!1238594 (= res!826350 (not (contains!7367 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238595 () Bool)

(assert (=> b!1238595 (= e!702012 false)))

(declare-fun lt!561320 () Unit!41064)

(assert (=> b!1238595 (= lt!561320 e!702014)))

(declare-fun c!120985 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238595 (= c!120985 (validKeyInArray!0 (select (arr!38501 a!3835) from!3213)))))

(declare-fun b!1238596 () Bool)

(declare-fun res!826351 () Bool)

(assert (=> b!1238596 (=> (not res!826351) (not e!702012))))

(assert (=> b!1238596 (= res!826351 (not (contains!7367 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238598 () Bool)

(declare-fun res!826348 () Bool)

(assert (=> b!1238598 (=> (not res!826348) (not e!702012))))

(declare-fun noDuplicate!1974 (List!27452) Bool)

(assert (=> b!1238598 (= res!826348 (noDuplicate!1974 acc!846))))

(declare-fun b!1238599 () Bool)

(declare-fun Unit!41066 () Unit!41064)

(assert (=> b!1238599 (= e!702014 Unit!41066)))

(declare-fun b!1238600 () Bool)

(declare-fun res!826354 () Bool)

(assert (=> b!1238600 (=> (not res!826354) (not e!702012))))

(assert (=> b!1238600 (= res!826354 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238601 () Bool)

(declare-fun res!826353 () Bool)

(assert (=> b!1238601 (=> (not res!826353) (not e!702012))))

(assert (=> b!1238601 (= res!826353 (not (= from!3213 (bvsub (size!39038 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!826352 () Bool)

(assert (=> start!103222 (=> (not res!826352) (not e!702012))))

(assert (=> start!103222 (= res!826352 (and (bvslt (size!39038 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39038 a!3835))))))

(assert (=> start!103222 e!702012))

(declare-fun array_inv!29277 (array!79806) Bool)

(assert (=> start!103222 (array_inv!29277 a!3835)))

(assert (=> start!103222 true))

(declare-fun b!1238597 () Bool)

(declare-fun res!826349 () Bool)

(assert (=> b!1238597 (=> (not res!826349) (not e!702012))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238597 (= res!826349 (contains!7367 acc!846 k!2925))))

(assert (= (and start!103222 res!826352) b!1238598))

(assert (= (and b!1238598 res!826348) b!1238594))

(assert (= (and b!1238594 res!826350) b!1238596))

(assert (= (and b!1238596 res!826351) b!1238600))

(assert (= (and b!1238600 res!826354) b!1238597))

(assert (= (and b!1238597 res!826349) b!1238601))

(assert (= (and b!1238601 res!826353) b!1238595))

(assert (= (and b!1238595 c!120985) b!1238593))

(assert (= (and b!1238595 (not c!120985)) b!1238599))

(declare-fun m!1142137 () Bool)

(assert (=> b!1238595 m!1142137))

(assert (=> b!1238595 m!1142137))

(declare-fun m!1142139 () Bool)

(assert (=> b!1238595 m!1142139))

(declare-fun m!1142141 () Bool)

(assert (=> b!1238600 m!1142141))

(declare-fun m!1142143 () Bool)

(assert (=> b!1238598 m!1142143))

(declare-fun m!1142145 () Bool)

(assert (=> b!1238597 m!1142145))

(declare-fun m!1142147 () Bool)

(assert (=> b!1238596 m!1142147))

(declare-fun m!1142149 () Bool)

(assert (=> start!103222 m!1142149))

(declare-fun m!1142151 () Bool)

(assert (=> b!1238593 m!1142151))

(declare-fun m!1142153 () Bool)

(assert (=> b!1238593 m!1142153))

(declare-fun m!1142155 () Bool)

(assert (=> b!1238593 m!1142155))

(declare-fun m!1142157 () Bool)

(assert (=> b!1238593 m!1142157))

(declare-fun m!1142159 () Bool)

(assert (=> b!1238593 m!1142159))

(declare-fun m!1142161 () Bool)

(assert (=> b!1238593 m!1142161))

(assert (=> b!1238593 m!1142137))

(declare-fun m!1142163 () Bool)

(assert (=> b!1238594 m!1142163))

(push 1)

(assert (not b!1238593))

(assert (not b!1238597))

(assert (not b!1238595))

(assert (not b!1238596))

(assert (not b!1238594))

(assert (not b!1238600))

(assert (not start!103222))

(assert (not b!1238598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

