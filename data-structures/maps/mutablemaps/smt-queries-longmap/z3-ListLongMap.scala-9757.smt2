; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115660 () Bool)

(assert start!115660)

(declare-fun b!1367267 () Bool)

(declare-fun res!910919 () Bool)

(declare-fun e!774910 () Bool)

(assert (=> b!1367267 (=> (not res!910919) (not e!774910))))

(declare-datatypes ((List!32076 0))(
  ( (Nil!32073) (Cons!32072 (h!33281 (_ BitVec 64)) (t!46777 List!32076)) )
))
(declare-fun newAcc!98 () List!32076)

(declare-fun contains!9614 (List!32076 (_ BitVec 64)) Bool)

(assert (=> b!1367267 (= res!910919 (not (contains!9614 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910916 () Bool)

(assert (=> start!115660 (=> (not res!910916) (not e!774910))))

(declare-datatypes ((array!92814 0))(
  ( (array!92815 (arr!44828 (Array (_ BitVec 32) (_ BitVec 64))) (size!45379 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92814)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115660 (= res!910916 (and (bvslt (size!45379 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45379 a!3861))))))

(assert (=> start!115660 e!774910))

(declare-fun array_inv!33773 (array!92814) Bool)

(assert (=> start!115660 (array_inv!33773 a!3861)))

(assert (=> start!115660 true))

(declare-fun b!1367268 () Bool)

(declare-fun res!910914 () Bool)

(assert (=> b!1367268 (=> (not res!910914) (not e!774910))))

(declare-fun acc!866 () List!32076)

(assert (=> b!1367268 (= res!910914 (not (contains!9614 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367269 () Bool)

(declare-fun res!910918 () Bool)

(assert (=> b!1367269 (=> (not res!910918) (not e!774910))))

(assert (=> b!1367269 (= res!910918 (not (contains!9614 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367270 () Bool)

(declare-fun res!910921 () Bool)

(assert (=> b!1367270 (=> (not res!910921) (not e!774910))))

(declare-fun noDuplicate!2493 (List!32076) Bool)

(assert (=> b!1367270 (= res!910921 (noDuplicate!2493 acc!866))))

(declare-fun b!1367271 () Bool)

(declare-fun res!910922 () Bool)

(declare-fun e!774909 () Bool)

(assert (=> b!1367271 (=> (not res!910922) (not e!774909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367271 (= res!910922 (validKeyInArray!0 (select (arr!44828 a!3861) from!3239)))))

(declare-fun b!1367272 () Bool)

(declare-fun res!910915 () Bool)

(assert (=> b!1367272 (=> (not res!910915) (not e!774909))))

(assert (=> b!1367272 (= res!910915 (bvslt from!3239 (size!45379 a!3861)))))

(declare-fun b!1367273 () Bool)

(assert (=> b!1367273 (= e!774910 e!774909)))

(declare-fun res!910917 () Bool)

(assert (=> b!1367273 (=> (not res!910917) (not e!774909))))

(declare-fun arrayNoDuplicates!0 (array!92814 (_ BitVec 32) List!32076) Bool)

(assert (=> b!1367273 (= res!910917 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45091 0))(
  ( (Unit!45092) )
))
(declare-fun lt!601810 () Unit!45091)

(declare-fun noDuplicateSubseq!192 (List!32076 List!32076) Unit!45091)

(assert (=> b!1367273 (= lt!601810 (noDuplicateSubseq!192 newAcc!98 acc!866))))

(declare-fun b!1367274 () Bool)

(assert (=> b!1367274 (= e!774909 false)))

(declare-fun lt!601811 () Bool)

(assert (=> b!1367274 (= lt!601811 (contains!9614 acc!866 (select (arr!44828 a!3861) from!3239)))))

(declare-fun b!1367275 () Bool)

(declare-fun res!910920 () Bool)

(assert (=> b!1367275 (=> (not res!910920) (not e!774910))))

(declare-fun subseq!1005 (List!32076 List!32076) Bool)

(assert (=> b!1367275 (= res!910920 (subseq!1005 newAcc!98 acc!866))))

(declare-fun b!1367276 () Bool)

(declare-fun res!910923 () Bool)

(assert (=> b!1367276 (=> (not res!910923) (not e!774910))))

(assert (=> b!1367276 (= res!910923 (not (contains!9614 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115660 res!910916) b!1367270))

(assert (= (and b!1367270 res!910921) b!1367269))

(assert (= (and b!1367269 res!910918) b!1367268))

(assert (= (and b!1367268 res!910914) b!1367267))

(assert (= (and b!1367267 res!910919) b!1367276))

(assert (= (and b!1367276 res!910923) b!1367275))

(assert (= (and b!1367275 res!910920) b!1367273))

(assert (= (and b!1367273 res!910917) b!1367272))

(assert (= (and b!1367272 res!910915) b!1367271))

(assert (= (and b!1367271 res!910922) b!1367274))

(declare-fun m!1251547 () Bool)

(assert (=> b!1367269 m!1251547))

(declare-fun m!1251549 () Bool)

(assert (=> start!115660 m!1251549))

(declare-fun m!1251551 () Bool)

(assert (=> b!1367276 m!1251551))

(declare-fun m!1251553 () Bool)

(assert (=> b!1367268 m!1251553))

(declare-fun m!1251555 () Bool)

(assert (=> b!1367273 m!1251555))

(declare-fun m!1251557 () Bool)

(assert (=> b!1367273 m!1251557))

(declare-fun m!1251559 () Bool)

(assert (=> b!1367271 m!1251559))

(assert (=> b!1367271 m!1251559))

(declare-fun m!1251561 () Bool)

(assert (=> b!1367271 m!1251561))

(declare-fun m!1251563 () Bool)

(assert (=> b!1367275 m!1251563))

(assert (=> b!1367274 m!1251559))

(assert (=> b!1367274 m!1251559))

(declare-fun m!1251565 () Bool)

(assert (=> b!1367274 m!1251565))

(declare-fun m!1251567 () Bool)

(assert (=> b!1367270 m!1251567))

(declare-fun m!1251569 () Bool)

(assert (=> b!1367267 m!1251569))

(check-sat (not b!1367269) (not start!115660) (not b!1367267) (not b!1367268) (not b!1367270) (not b!1367271) (not b!1367273) (not b!1367274) (not b!1367275) (not b!1367276))
(check-sat)
