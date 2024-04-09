; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115490 () Bool)

(assert start!115490)

(declare-fun b!1365330 () Bool)

(declare-fun res!909041 () Bool)

(declare-fun e!774183 () Bool)

(assert (=> b!1365330 (=> (not res!909041) (not e!774183))))

(declare-datatypes ((array!92734 0))(
  ( (array!92735 (arr!44791 (Array (_ BitVec 32) (_ BitVec 64))) (size!45342 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92734)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365330 (= res!909041 (validKeyInArray!0 (select (arr!44791 a!3861) from!3239)))))

(declare-fun b!1365331 () Bool)

(declare-fun res!909042 () Bool)

(declare-fun e!774184 () Bool)

(assert (=> b!1365331 (=> (not res!909042) (not e!774184))))

(declare-datatypes ((List!32039 0))(
  ( (Nil!32036) (Cons!32035 (h!33244 (_ BitVec 64)) (t!46740 List!32039)) )
))
(declare-fun newAcc!98 () List!32039)

(declare-fun contains!9577 (List!32039 (_ BitVec 64)) Bool)

(assert (=> b!1365331 (= res!909042 (not (contains!9577 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365332 () Bool)

(declare-fun res!909033 () Bool)

(assert (=> b!1365332 (=> (not res!909033) (not e!774184))))

(declare-fun acc!866 () List!32039)

(assert (=> b!1365332 (= res!909033 (not (contains!9577 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365333 () Bool)

(declare-fun res!909040 () Bool)

(declare-fun e!774181 () Bool)

(assert (=> b!1365333 (=> (not res!909040) (not e!774181))))

(declare-fun lt!601219 () List!32039)

(declare-fun lt!601217 () List!32039)

(declare-fun subseq!968 (List!32039 List!32039) Bool)

(assert (=> b!1365333 (= res!909040 (subseq!968 lt!601219 lt!601217))))

(declare-fun b!1365334 () Bool)

(declare-fun res!909039 () Bool)

(assert (=> b!1365334 (=> (not res!909039) (not e!774184))))

(assert (=> b!1365334 (= res!909039 (subseq!968 newAcc!98 acc!866))))

(declare-fun res!909035 () Bool)

(assert (=> start!115490 (=> (not res!909035) (not e!774184))))

(assert (=> start!115490 (= res!909035 (and (bvslt (size!45342 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45342 a!3861))))))

(assert (=> start!115490 e!774184))

(declare-fun array_inv!33736 (array!92734) Bool)

(assert (=> start!115490 (array_inv!33736 a!3861)))

(assert (=> start!115490 true))

(declare-fun b!1365335 () Bool)

(declare-fun res!909030 () Bool)

(assert (=> b!1365335 (=> (not res!909030) (not e!774183))))

(assert (=> b!1365335 (= res!909030 (bvslt from!3239 (size!45342 a!3861)))))

(declare-fun b!1365336 () Bool)

(declare-fun res!909029 () Bool)

(assert (=> b!1365336 (=> (not res!909029) (not e!774181))))

(assert (=> b!1365336 (= res!909029 (not (contains!9577 lt!601219 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365337 () Bool)

(declare-fun res!909028 () Bool)

(assert (=> b!1365337 (=> (not res!909028) (not e!774181))))

(declare-fun noDuplicate!2456 (List!32039) Bool)

(assert (=> b!1365337 (= res!909028 (noDuplicate!2456 lt!601217))))

(declare-fun b!1365338 () Bool)

(assert (=> b!1365338 (= e!774181 false)))

(declare-fun lt!601216 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92734 (_ BitVec 32) List!32039) Bool)

(assert (=> b!1365338 (= lt!601216 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601217))))

(declare-datatypes ((Unit!45017 0))(
  ( (Unit!45018) )
))
(declare-fun lt!601220 () Unit!45017)

(declare-fun noDuplicateSubseq!155 (List!32039 List!32039) Unit!45017)

(assert (=> b!1365338 (= lt!601220 (noDuplicateSubseq!155 lt!601219 lt!601217))))

(declare-fun b!1365339 () Bool)

(declare-fun res!909031 () Bool)

(assert (=> b!1365339 (=> (not res!909031) (not e!774184))))

(assert (=> b!1365339 (= res!909031 (not (contains!9577 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365340 () Bool)

(assert (=> b!1365340 (= e!774183 e!774181)))

(declare-fun res!909034 () Bool)

(assert (=> b!1365340 (=> (not res!909034) (not e!774181))))

(assert (=> b!1365340 (= res!909034 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365340 (= lt!601219 (Cons!32035 (select (arr!44791 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365340 (= lt!601217 (Cons!32035 (select (arr!44791 a!3861) from!3239) acc!866))))

(declare-fun b!1365341 () Bool)

(declare-fun res!909032 () Bool)

(assert (=> b!1365341 (=> (not res!909032) (not e!774181))))

(assert (=> b!1365341 (= res!909032 (not (contains!9577 lt!601219 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365342 () Bool)

(declare-fun res!909038 () Bool)

(assert (=> b!1365342 (=> (not res!909038) (not e!774181))))

(assert (=> b!1365342 (= res!909038 (not (contains!9577 lt!601217 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365343 () Bool)

(declare-fun res!909026 () Bool)

(assert (=> b!1365343 (=> (not res!909026) (not e!774184))))

(assert (=> b!1365343 (= res!909026 (noDuplicate!2456 acc!866))))

(declare-fun b!1365344 () Bool)

(declare-fun res!909025 () Bool)

(assert (=> b!1365344 (=> (not res!909025) (not e!774183))))

(assert (=> b!1365344 (= res!909025 (not (contains!9577 acc!866 (select (arr!44791 a!3861) from!3239))))))

(declare-fun b!1365345 () Bool)

(declare-fun res!909036 () Bool)

(assert (=> b!1365345 (=> (not res!909036) (not e!774181))))

(assert (=> b!1365345 (= res!909036 (not (contains!9577 lt!601217 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365346 () Bool)

(declare-fun res!909027 () Bool)

(assert (=> b!1365346 (=> (not res!909027) (not e!774184))))

(assert (=> b!1365346 (= res!909027 (not (contains!9577 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365347 () Bool)

(assert (=> b!1365347 (= e!774184 e!774183)))

(declare-fun res!909037 () Bool)

(assert (=> b!1365347 (=> (not res!909037) (not e!774183))))

(assert (=> b!1365347 (= res!909037 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601218 () Unit!45017)

(assert (=> b!1365347 (= lt!601218 (noDuplicateSubseq!155 newAcc!98 acc!866))))

(assert (= (and start!115490 res!909035) b!1365343))

(assert (= (and b!1365343 res!909026) b!1365339))

(assert (= (and b!1365339 res!909031) b!1365332))

(assert (= (and b!1365332 res!909033) b!1365346))

(assert (= (and b!1365346 res!909027) b!1365331))

(assert (= (and b!1365331 res!909042) b!1365334))

(assert (= (and b!1365334 res!909039) b!1365347))

(assert (= (and b!1365347 res!909037) b!1365335))

(assert (= (and b!1365335 res!909030) b!1365330))

(assert (= (and b!1365330 res!909041) b!1365344))

(assert (= (and b!1365344 res!909025) b!1365340))

(assert (= (and b!1365340 res!909034) b!1365337))

(assert (= (and b!1365337 res!909028) b!1365342))

(assert (= (and b!1365342 res!909038) b!1365345))

(assert (= (and b!1365345 res!909036) b!1365336))

(assert (= (and b!1365336 res!909029) b!1365341))

(assert (= (and b!1365341 res!909032) b!1365333))

(assert (= (and b!1365333 res!909040) b!1365338))

(declare-fun m!1249921 () Bool)

(assert (=> b!1365330 m!1249921))

(assert (=> b!1365330 m!1249921))

(declare-fun m!1249923 () Bool)

(assert (=> b!1365330 m!1249923))

(declare-fun m!1249925 () Bool)

(assert (=> b!1365336 m!1249925))

(declare-fun m!1249927 () Bool)

(assert (=> b!1365341 m!1249927))

(assert (=> b!1365340 m!1249921))

(declare-fun m!1249929 () Bool)

(assert (=> b!1365338 m!1249929))

(declare-fun m!1249931 () Bool)

(assert (=> b!1365338 m!1249931))

(declare-fun m!1249933 () Bool)

(assert (=> b!1365345 m!1249933))

(declare-fun m!1249935 () Bool)

(assert (=> b!1365332 m!1249935))

(declare-fun m!1249937 () Bool)

(assert (=> b!1365337 m!1249937))

(declare-fun m!1249939 () Bool)

(assert (=> b!1365346 m!1249939))

(declare-fun m!1249941 () Bool)

(assert (=> b!1365331 m!1249941))

(declare-fun m!1249943 () Bool)

(assert (=> b!1365342 m!1249943))

(declare-fun m!1249945 () Bool)

(assert (=> b!1365334 m!1249945))

(declare-fun m!1249947 () Bool)

(assert (=> b!1365343 m!1249947))

(declare-fun m!1249949 () Bool)

(assert (=> b!1365333 m!1249949))

(declare-fun m!1249951 () Bool)

(assert (=> b!1365347 m!1249951))

(declare-fun m!1249953 () Bool)

(assert (=> b!1365347 m!1249953))

(declare-fun m!1249955 () Bool)

(assert (=> start!115490 m!1249955))

(declare-fun m!1249957 () Bool)

(assert (=> b!1365339 m!1249957))

(assert (=> b!1365344 m!1249921))

(assert (=> b!1365344 m!1249921))

(declare-fun m!1249959 () Bool)

(assert (=> b!1365344 m!1249959))

(push 1)

