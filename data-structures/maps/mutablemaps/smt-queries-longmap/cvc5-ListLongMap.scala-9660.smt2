; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114134 () Bool)

(assert start!114134)

(declare-fun b!1354834 () Bool)

(declare-fun res!899969 () Bool)

(declare-fun e!769558 () Bool)

(assert (=> b!1354834 (=> (not res!899969) (not e!769558))))

(declare-datatypes ((List!31784 0))(
  ( (Nil!31781) (Cons!31780 (h!32989 (_ BitVec 64)) (t!46449 List!31784)) )
))
(declare-fun acc!759 () List!31784)

(declare-fun contains!9349 (List!31784 (_ BitVec 64)) Bool)

(assert (=> b!1354834 (= res!899969 (not (contains!9349 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354835 () Bool)

(declare-fun e!769556 () Bool)

(assert (=> b!1354835 (= e!769558 e!769556)))

(declare-fun res!899968 () Bool)

(assert (=> b!1354835 (=> (not res!899968) (not e!769556))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598364 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354835 (= res!899968 (and (not (= from!3120 i!1404)) lt!598364))))

(declare-datatypes ((Unit!44453 0))(
  ( (Unit!44454) )
))
(declare-fun lt!598363 () Unit!44453)

(declare-fun e!769557 () Unit!44453)

(assert (=> b!1354835 (= lt!598363 e!769557)))

(declare-fun c!126880 () Bool)

(assert (=> b!1354835 (= c!126880 lt!598364)))

(declare-datatypes ((array!92239 0))(
  ( (array!92240 (arr!44563 (Array (_ BitVec 32) (_ BitVec 64))) (size!45114 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92239)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354835 (= lt!598364 (validKeyInArray!0 (select (arr!44563 a!3742) from!3120)))))

(declare-fun b!1354836 () Bool)

(declare-fun Unit!44455 () Unit!44453)

(assert (=> b!1354836 (= e!769557 Unit!44455)))

(declare-fun b!1354837 () Bool)

(declare-fun res!899967 () Bool)

(assert (=> b!1354837 (=> (not res!899967) (not e!769558))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354837 (= res!899967 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354838 () Bool)

(declare-fun e!769554 () Bool)

(assert (=> b!1354838 (= e!769556 e!769554)))

(declare-fun res!899961 () Bool)

(assert (=> b!1354838 (=> (not res!899961) (not e!769554))))

(assert (=> b!1354838 (= res!899961 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!598362 () List!31784)

(declare-fun $colon$colon!775 (List!31784 (_ BitVec 64)) List!31784)

(assert (=> b!1354838 (= lt!598362 ($colon$colon!775 acc!759 (select (arr!44563 a!3742) from!3120)))))

(declare-fun b!1354839 () Bool)

(declare-fun res!899963 () Bool)

(assert (=> b!1354839 (=> (not res!899963) (not e!769558))))

(assert (=> b!1354839 (= res!899963 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45114 a!3742)))))

(declare-fun b!1354840 () Bool)

(declare-fun res!899962 () Bool)

(assert (=> b!1354840 (=> (not res!899962) (not e!769554))))

(declare-fun noDuplicate!2228 (List!31784) Bool)

(assert (=> b!1354840 (= res!899962 (noDuplicate!2228 lt!598362))))

(declare-fun b!1354841 () Bool)

(assert (=> b!1354841 (= e!769554 (not true))))

(declare-fun arrayNoDuplicates!0 (array!92239 (_ BitVec 32) List!31784) Bool)

(assert (=> b!1354841 (arrayNoDuplicates!0 (array!92240 (store (arr!44563 a!3742) i!1404 l!3587) (size!45114 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598362)))

(declare-fun lt!598359 () Unit!44453)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92239 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31784) Unit!44453)

(assert (=> b!1354841 (= lt!598359 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598362))))

(declare-fun b!1354842 () Bool)

(declare-fun res!899966 () Bool)

(assert (=> b!1354842 (=> (not res!899966) (not e!769554))))

(assert (=> b!1354842 (= res!899966 (not (contains!9349 lt!598362 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354843 () Bool)

(declare-fun res!899964 () Bool)

(assert (=> b!1354843 (=> (not res!899964) (not e!769554))))

(assert (=> b!1354843 (= res!899964 (not (contains!9349 lt!598362 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354844 () Bool)

(declare-fun lt!598361 () Unit!44453)

(assert (=> b!1354844 (= e!769557 lt!598361)))

(declare-fun lt!598360 () Unit!44453)

(declare-fun lemmaListSubSeqRefl!0 (List!31784) Unit!44453)

(assert (=> b!1354844 (= lt!598360 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!758 (List!31784 List!31784) Bool)

(assert (=> b!1354844 (subseq!758 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92239 List!31784 List!31784 (_ BitVec 32)) Unit!44453)

(assert (=> b!1354844 (= lt!598361 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!775 acc!759 (select (arr!44563 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354844 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354845 () Bool)

(declare-fun res!899973 () Bool)

(assert (=> b!1354845 (=> (not res!899973) (not e!769558))))

(assert (=> b!1354845 (= res!899973 (not (contains!9349 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354846 () Bool)

(declare-fun res!899971 () Bool)

(assert (=> b!1354846 (=> (not res!899971) (not e!769558))))

(assert (=> b!1354846 (= res!899971 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45114 a!3742))))))

(declare-fun res!899960 () Bool)

(assert (=> start!114134 (=> (not res!899960) (not e!769558))))

(assert (=> start!114134 (= res!899960 (and (bvslt (size!45114 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45114 a!3742))))))

(assert (=> start!114134 e!769558))

(assert (=> start!114134 true))

(declare-fun array_inv!33508 (array!92239) Bool)

(assert (=> start!114134 (array_inv!33508 a!3742)))

(declare-fun b!1354847 () Bool)

(declare-fun res!899965 () Bool)

(assert (=> b!1354847 (=> (not res!899965) (not e!769558))))

(assert (=> b!1354847 (= res!899965 (noDuplicate!2228 acc!759))))

(declare-fun b!1354848 () Bool)

(declare-fun res!899959 () Bool)

(assert (=> b!1354848 (=> (not res!899959) (not e!769558))))

(assert (=> b!1354848 (= res!899959 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31781))))

(declare-fun b!1354849 () Bool)

(declare-fun res!899972 () Bool)

(assert (=> b!1354849 (=> (not res!899972) (not e!769554))))

(assert (=> b!1354849 (= res!899972 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598362))))

(declare-fun b!1354850 () Bool)

(declare-fun res!899970 () Bool)

(assert (=> b!1354850 (=> (not res!899970) (not e!769558))))

(assert (=> b!1354850 (= res!899970 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114134 res!899960) b!1354847))

(assert (= (and b!1354847 res!899965) b!1354845))

(assert (= (and b!1354845 res!899973) b!1354834))

(assert (= (and b!1354834 res!899969) b!1354848))

(assert (= (and b!1354848 res!899959) b!1354850))

(assert (= (and b!1354850 res!899970) b!1354846))

(assert (= (and b!1354846 res!899971) b!1354837))

(assert (= (and b!1354837 res!899967) b!1354839))

(assert (= (and b!1354839 res!899963) b!1354835))

(assert (= (and b!1354835 c!126880) b!1354844))

(assert (= (and b!1354835 (not c!126880)) b!1354836))

(assert (= (and b!1354835 res!899968) b!1354838))

(assert (= (and b!1354838 res!899961) b!1354840))

(assert (= (and b!1354840 res!899962) b!1354842))

(assert (= (and b!1354842 res!899966) b!1354843))

(assert (= (and b!1354843 res!899964) b!1354849))

(assert (= (and b!1354849 res!899972) b!1354841))

(declare-fun m!1241155 () Bool)

(assert (=> b!1354850 m!1241155))

(declare-fun m!1241157 () Bool)

(assert (=> b!1354837 m!1241157))

(declare-fun m!1241159 () Bool)

(assert (=> b!1354847 m!1241159))

(declare-fun m!1241161 () Bool)

(assert (=> start!114134 m!1241161))

(declare-fun m!1241163 () Bool)

(assert (=> b!1354844 m!1241163))

(declare-fun m!1241165 () Bool)

(assert (=> b!1354844 m!1241165))

(declare-fun m!1241167 () Bool)

(assert (=> b!1354844 m!1241167))

(declare-fun m!1241169 () Bool)

(assert (=> b!1354844 m!1241169))

(declare-fun m!1241171 () Bool)

(assert (=> b!1354844 m!1241171))

(assert (=> b!1354844 m!1241165))

(assert (=> b!1354844 m!1241167))

(declare-fun m!1241173 () Bool)

(assert (=> b!1354844 m!1241173))

(assert (=> b!1354835 m!1241165))

(assert (=> b!1354835 m!1241165))

(declare-fun m!1241175 () Bool)

(assert (=> b!1354835 m!1241175))

(assert (=> b!1354838 m!1241165))

(assert (=> b!1354838 m!1241165))

(assert (=> b!1354838 m!1241167))

(declare-fun m!1241177 () Bool)

(assert (=> b!1354840 m!1241177))

(declare-fun m!1241179 () Bool)

(assert (=> b!1354849 m!1241179))

(declare-fun m!1241181 () Bool)

(assert (=> b!1354842 m!1241181))

(declare-fun m!1241183 () Bool)

(assert (=> b!1354845 m!1241183))

(declare-fun m!1241185 () Bool)

(assert (=> b!1354841 m!1241185))

(declare-fun m!1241187 () Bool)

(assert (=> b!1354841 m!1241187))

(declare-fun m!1241189 () Bool)

(assert (=> b!1354841 m!1241189))

(declare-fun m!1241191 () Bool)

(assert (=> b!1354834 m!1241191))

(declare-fun m!1241193 () Bool)

(assert (=> b!1354848 m!1241193))

(declare-fun m!1241195 () Bool)

(assert (=> b!1354843 m!1241195))

(push 1)

