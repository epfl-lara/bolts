; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115484 () Bool)

(assert start!115484)

(declare-fun res!908879 () Bool)

(declare-fun e!774148 () Bool)

(assert (=> start!115484 (=> (not res!908879) (not e!774148))))

(declare-datatypes ((array!92728 0))(
  ( (array!92729 (arr!44788 (Array (_ BitVec 32) (_ BitVec 64))) (size!45339 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92728)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115484 (= res!908879 (and (bvslt (size!45339 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45339 a!3861))))))

(assert (=> start!115484 e!774148))

(declare-fun array_inv!33733 (array!92728) Bool)

(assert (=> start!115484 (array_inv!33733 a!3861)))

(assert (=> start!115484 true))

(declare-fun b!1365168 () Bool)

(declare-fun e!774147 () Bool)

(assert (=> b!1365168 (= e!774147 false)))

(declare-datatypes ((List!32036 0))(
  ( (Nil!32033) (Cons!32032 (h!33241 (_ BitVec 64)) (t!46737 List!32036)) )
))
(declare-fun lt!601175 () List!32036)

(declare-fun lt!601171 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92728 (_ BitVec 32) List!32036) Bool)

(assert (=> b!1365168 (= lt!601171 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601175))))

(declare-datatypes ((Unit!45011 0))(
  ( (Unit!45012) )
))
(declare-fun lt!601172 () Unit!45011)

(declare-fun lt!601174 () List!32036)

(declare-fun noDuplicateSubseq!152 (List!32036 List!32036) Unit!45011)

(assert (=> b!1365168 (= lt!601172 (noDuplicateSubseq!152 lt!601174 lt!601175))))

(declare-fun b!1365169 () Bool)

(declare-fun res!908877 () Bool)

(declare-fun e!774145 () Bool)

(assert (=> b!1365169 (=> (not res!908877) (not e!774145))))

(assert (=> b!1365169 (= res!908877 (bvslt from!3239 (size!45339 a!3861)))))

(declare-fun b!1365170 () Bool)

(declare-fun res!908863 () Bool)

(assert (=> b!1365170 (=> (not res!908863) (not e!774147))))

(declare-fun contains!9574 (List!32036 (_ BitVec 64)) Bool)

(assert (=> b!1365170 (= res!908863 (not (contains!9574 lt!601174 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365171 () Bool)

(declare-fun res!908867 () Bool)

(assert (=> b!1365171 (=> (not res!908867) (not e!774148))))

(declare-fun acc!866 () List!32036)

(declare-fun noDuplicate!2453 (List!32036) Bool)

(assert (=> b!1365171 (= res!908867 (noDuplicate!2453 acc!866))))

(declare-fun b!1365172 () Bool)

(declare-fun res!908878 () Bool)

(assert (=> b!1365172 (=> (not res!908878) (not e!774147))))

(assert (=> b!1365172 (= res!908878 (not (contains!9574 lt!601175 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365173 () Bool)

(declare-fun res!908870 () Bool)

(assert (=> b!1365173 (=> (not res!908870) (not e!774148))))

(assert (=> b!1365173 (= res!908870 (not (contains!9574 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365174 () Bool)

(declare-fun res!908864 () Bool)

(assert (=> b!1365174 (=> (not res!908864) (not e!774147))))

(assert (=> b!1365174 (= res!908864 (not (contains!9574 lt!601175 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365175 () Bool)

(declare-fun res!908876 () Bool)

(assert (=> b!1365175 (=> (not res!908876) (not e!774148))))

(declare-fun newAcc!98 () List!32036)

(assert (=> b!1365175 (= res!908876 (not (contains!9574 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365176 () Bool)

(declare-fun res!908872 () Bool)

(assert (=> b!1365176 (=> (not res!908872) (not e!774148))))

(declare-fun subseq!965 (List!32036 List!32036) Bool)

(assert (=> b!1365176 (= res!908872 (subseq!965 newAcc!98 acc!866))))

(declare-fun b!1365177 () Bool)

(declare-fun res!908874 () Bool)

(assert (=> b!1365177 (=> (not res!908874) (not e!774147))))

(assert (=> b!1365177 (= res!908874 (subseq!965 lt!601174 lt!601175))))

(declare-fun b!1365178 () Bool)

(declare-fun res!908865 () Bool)

(assert (=> b!1365178 (=> (not res!908865) (not e!774147))))

(assert (=> b!1365178 (= res!908865 (noDuplicate!2453 lt!601175))))

(declare-fun b!1365179 () Bool)

(assert (=> b!1365179 (= e!774148 e!774145)))

(declare-fun res!908880 () Bool)

(assert (=> b!1365179 (=> (not res!908880) (not e!774145))))

(assert (=> b!1365179 (= res!908880 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601173 () Unit!45011)

(assert (=> b!1365179 (= lt!601173 (noDuplicateSubseq!152 newAcc!98 acc!866))))

(declare-fun b!1365180 () Bool)

(declare-fun res!908866 () Bool)

(assert (=> b!1365180 (=> (not res!908866) (not e!774145))))

(assert (=> b!1365180 (= res!908866 (not (contains!9574 acc!866 (select (arr!44788 a!3861) from!3239))))))

(declare-fun b!1365181 () Bool)

(declare-fun res!908869 () Bool)

(assert (=> b!1365181 (=> (not res!908869) (not e!774148))))

(assert (=> b!1365181 (= res!908869 (not (contains!9574 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365182 () Bool)

(declare-fun res!908868 () Bool)

(assert (=> b!1365182 (=> (not res!908868) (not e!774148))))

(assert (=> b!1365182 (= res!908868 (not (contains!9574 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365183 () Bool)

(declare-fun res!908871 () Bool)

(assert (=> b!1365183 (=> (not res!908871) (not e!774147))))

(assert (=> b!1365183 (= res!908871 (not (contains!9574 lt!601174 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365184 () Bool)

(declare-fun res!908873 () Bool)

(assert (=> b!1365184 (=> (not res!908873) (not e!774145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365184 (= res!908873 (validKeyInArray!0 (select (arr!44788 a!3861) from!3239)))))

(declare-fun b!1365185 () Bool)

(assert (=> b!1365185 (= e!774145 e!774147)))

(declare-fun res!908875 () Bool)

(assert (=> b!1365185 (=> (not res!908875) (not e!774147))))

(assert (=> b!1365185 (= res!908875 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365185 (= lt!601174 (Cons!32032 (select (arr!44788 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365185 (= lt!601175 (Cons!32032 (select (arr!44788 a!3861) from!3239) acc!866))))

(assert (= (and start!115484 res!908879) b!1365171))

(assert (= (and b!1365171 res!908867) b!1365173))

(assert (= (and b!1365173 res!908870) b!1365181))

(assert (= (and b!1365181 res!908869) b!1365182))

(assert (= (and b!1365182 res!908868) b!1365175))

(assert (= (and b!1365175 res!908876) b!1365176))

(assert (= (and b!1365176 res!908872) b!1365179))

(assert (= (and b!1365179 res!908880) b!1365169))

(assert (= (and b!1365169 res!908877) b!1365184))

(assert (= (and b!1365184 res!908873) b!1365180))

(assert (= (and b!1365180 res!908866) b!1365185))

(assert (= (and b!1365185 res!908875) b!1365178))

(assert (= (and b!1365178 res!908865) b!1365172))

(assert (= (and b!1365172 res!908878) b!1365174))

(assert (= (and b!1365174 res!908864) b!1365170))

(assert (= (and b!1365170 res!908863) b!1365183))

(assert (= (and b!1365183 res!908871) b!1365177))

(assert (= (and b!1365177 res!908874) b!1365168))

(declare-fun m!1249801 () Bool)

(assert (=> b!1365178 m!1249801))

(declare-fun m!1249803 () Bool)

(assert (=> b!1365175 m!1249803))

(declare-fun m!1249805 () Bool)

(assert (=> b!1365179 m!1249805))

(declare-fun m!1249807 () Bool)

(assert (=> b!1365179 m!1249807))

(declare-fun m!1249809 () Bool)

(assert (=> b!1365177 m!1249809))

(declare-fun m!1249811 () Bool)

(assert (=> b!1365172 m!1249811))

(declare-fun m!1249813 () Bool)

(assert (=> b!1365170 m!1249813))

(declare-fun m!1249815 () Bool)

(assert (=> b!1365174 m!1249815))

(declare-fun m!1249817 () Bool)

(assert (=> b!1365176 m!1249817))

(declare-fun m!1249819 () Bool)

(assert (=> b!1365180 m!1249819))

(assert (=> b!1365180 m!1249819))

(declare-fun m!1249821 () Bool)

(assert (=> b!1365180 m!1249821))

(declare-fun m!1249823 () Bool)

(assert (=> b!1365171 m!1249823))

(assert (=> b!1365185 m!1249819))

(declare-fun m!1249825 () Bool)

(assert (=> b!1365181 m!1249825))

(declare-fun m!1249827 () Bool)

(assert (=> start!115484 m!1249827))

(declare-fun m!1249829 () Bool)

(assert (=> b!1365168 m!1249829))

(declare-fun m!1249831 () Bool)

(assert (=> b!1365168 m!1249831))

(assert (=> b!1365184 m!1249819))

(assert (=> b!1365184 m!1249819))

(declare-fun m!1249833 () Bool)

(assert (=> b!1365184 m!1249833))

(declare-fun m!1249835 () Bool)

(assert (=> b!1365182 m!1249835))

(declare-fun m!1249837 () Bool)

(assert (=> b!1365183 m!1249837))

(declare-fun m!1249839 () Bool)

(assert (=> b!1365173 m!1249839))

(push 1)

