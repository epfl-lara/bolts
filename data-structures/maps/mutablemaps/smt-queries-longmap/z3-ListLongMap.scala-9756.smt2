; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115654 () Bool)

(assert start!115654)

(declare-fun b!1367177 () Bool)

(declare-fun e!774883 () Bool)

(declare-fun e!774881 () Bool)

(assert (=> b!1367177 (= e!774883 e!774881)))

(declare-fun res!910833 () Bool)

(assert (=> b!1367177 (=> (not res!910833) (not e!774881))))

(declare-datatypes ((array!92808 0))(
  ( (array!92809 (arr!44825 (Array (_ BitVec 32) (_ BitVec 64))) (size!45376 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92808)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32073 0))(
  ( (Nil!32070) (Cons!32069 (h!33278 (_ BitVec 64)) (t!46774 List!32073)) )
))
(declare-fun acc!866 () List!32073)

(declare-fun arrayNoDuplicates!0 (array!92808 (_ BitVec 32) List!32073) Bool)

(assert (=> b!1367177 (= res!910833 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45085 0))(
  ( (Unit!45086) )
))
(declare-fun lt!601792 () Unit!45085)

(declare-fun newAcc!98 () List!32073)

(declare-fun noDuplicateSubseq!189 (List!32073 List!32073) Unit!45085)

(assert (=> b!1367177 (= lt!601792 (noDuplicateSubseq!189 newAcc!98 acc!866))))

(declare-fun b!1367178 () Bool)

(declare-fun res!910828 () Bool)

(assert (=> b!1367178 (=> (not res!910828) (not e!774883))))

(declare-fun noDuplicate!2490 (List!32073) Bool)

(assert (=> b!1367178 (= res!910828 (noDuplicate!2490 acc!866))))

(declare-fun res!910832 () Bool)

(assert (=> start!115654 (=> (not res!910832) (not e!774883))))

(assert (=> start!115654 (= res!910832 (and (bvslt (size!45376 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45376 a!3861))))))

(assert (=> start!115654 e!774883))

(declare-fun array_inv!33770 (array!92808) Bool)

(assert (=> start!115654 (array_inv!33770 a!3861)))

(assert (=> start!115654 true))

(declare-fun b!1367179 () Bool)

(assert (=> b!1367179 (= e!774881 false)))

(declare-fun lt!601793 () Bool)

(declare-fun contains!9611 (List!32073 (_ BitVec 64)) Bool)

(assert (=> b!1367179 (= lt!601793 (contains!9611 acc!866 (select (arr!44825 a!3861) from!3239)))))

(declare-fun b!1367180 () Bool)

(declare-fun res!910825 () Bool)

(assert (=> b!1367180 (=> (not res!910825) (not e!774881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367180 (= res!910825 (validKeyInArray!0 (select (arr!44825 a!3861) from!3239)))))

(declare-fun b!1367181 () Bool)

(declare-fun res!910827 () Bool)

(assert (=> b!1367181 (=> (not res!910827) (not e!774883))))

(assert (=> b!1367181 (= res!910827 (not (contains!9611 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367182 () Bool)

(declare-fun res!910830 () Bool)

(assert (=> b!1367182 (=> (not res!910830) (not e!774883))))

(declare-fun subseq!1002 (List!32073 List!32073) Bool)

(assert (=> b!1367182 (= res!910830 (subseq!1002 newAcc!98 acc!866))))

(declare-fun b!1367183 () Bool)

(declare-fun res!910829 () Bool)

(assert (=> b!1367183 (=> (not res!910829) (not e!774883))))

(assert (=> b!1367183 (= res!910829 (not (contains!9611 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367184 () Bool)

(declare-fun res!910831 () Bool)

(assert (=> b!1367184 (=> (not res!910831) (not e!774881))))

(assert (=> b!1367184 (= res!910831 (bvslt from!3239 (size!45376 a!3861)))))

(declare-fun b!1367185 () Bool)

(declare-fun res!910826 () Bool)

(assert (=> b!1367185 (=> (not res!910826) (not e!774883))))

(assert (=> b!1367185 (= res!910826 (not (contains!9611 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367186 () Bool)

(declare-fun res!910824 () Bool)

(assert (=> b!1367186 (=> (not res!910824) (not e!774883))))

(assert (=> b!1367186 (= res!910824 (not (contains!9611 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115654 res!910832) b!1367178))

(assert (= (and b!1367178 res!910828) b!1367183))

(assert (= (and b!1367183 res!910829) b!1367181))

(assert (= (and b!1367181 res!910827) b!1367186))

(assert (= (and b!1367186 res!910824) b!1367185))

(assert (= (and b!1367185 res!910826) b!1367182))

(assert (= (and b!1367182 res!910830) b!1367177))

(assert (= (and b!1367177 res!910833) b!1367184))

(assert (= (and b!1367184 res!910831) b!1367180))

(assert (= (and b!1367180 res!910825) b!1367179))

(declare-fun m!1251475 () Bool)

(assert (=> b!1367179 m!1251475))

(assert (=> b!1367179 m!1251475))

(declare-fun m!1251477 () Bool)

(assert (=> b!1367179 m!1251477))

(declare-fun m!1251479 () Bool)

(assert (=> b!1367178 m!1251479))

(declare-fun m!1251481 () Bool)

(assert (=> b!1367186 m!1251481))

(assert (=> b!1367180 m!1251475))

(assert (=> b!1367180 m!1251475))

(declare-fun m!1251483 () Bool)

(assert (=> b!1367180 m!1251483))

(declare-fun m!1251485 () Bool)

(assert (=> b!1367182 m!1251485))

(declare-fun m!1251487 () Bool)

(assert (=> start!115654 m!1251487))

(declare-fun m!1251489 () Bool)

(assert (=> b!1367177 m!1251489))

(declare-fun m!1251491 () Bool)

(assert (=> b!1367177 m!1251491))

(declare-fun m!1251493 () Bool)

(assert (=> b!1367183 m!1251493))

(declare-fun m!1251495 () Bool)

(assert (=> b!1367185 m!1251495))

(declare-fun m!1251497 () Bool)

(assert (=> b!1367181 m!1251497))

(check-sat (not b!1367183) (not b!1367177) (not b!1367178) (not start!115654) (not b!1367186) (not b!1367181) (not b!1367185) (not b!1367179) (not b!1367180) (not b!1367182))
(check-sat)
