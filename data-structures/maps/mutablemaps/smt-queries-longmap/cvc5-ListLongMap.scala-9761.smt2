; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115724 () Bool)

(assert start!115724)

(declare-fun b!1367782 () Bool)

(declare-fun res!911419 () Bool)

(declare-fun e!775155 () Bool)

(assert (=> b!1367782 (=> (not res!911419) (not e!775155))))

(declare-datatypes ((List!32087 0))(
  ( (Nil!32084) (Cons!32083 (h!33292 (_ BitVec 64)) (t!46788 List!32087)) )
))
(declare-fun newAcc!98 () List!32087)

(declare-fun contains!9625 (List!32087 (_ BitVec 64)) Bool)

(assert (=> b!1367782 (= res!911419 (not (contains!9625 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367783 () Bool)

(declare-fun res!911413 () Bool)

(assert (=> b!1367783 (=> (not res!911413) (not e!775155))))

(assert (=> b!1367783 (= res!911413 (not (contains!9625 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367784 () Bool)

(declare-fun e!775154 () Bool)

(assert (=> b!1367784 (= e!775154 false)))

(declare-datatypes ((array!92839 0))(
  ( (array!92840 (arr!44839 (Array (_ BitVec 32) (_ BitVec 64))) (size!45390 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92839)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!601897 () Bool)

(declare-fun acc!866 () List!32087)

(declare-fun arrayNoDuplicates!0 (array!92839 (_ BitVec 32) List!32087) Bool)

(assert (=> b!1367784 (= lt!601897 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367785 () Bool)

(declare-fun res!911416 () Bool)

(assert (=> b!1367785 (=> (not res!911416) (not e!775154))))

(assert (=> b!1367785 (= res!911416 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367786 () Bool)

(assert (=> b!1367786 (= e!775155 e!775154)))

(declare-fun res!911420 () Bool)

(assert (=> b!1367786 (=> (not res!911420) (not e!775154))))

(assert (=> b!1367786 (= res!911420 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45113 0))(
  ( (Unit!45114) )
))
(declare-fun lt!601898 () Unit!45113)

(declare-fun noDuplicateSubseq!203 (List!32087 List!32087) Unit!45113)

(assert (=> b!1367786 (= lt!601898 (noDuplicateSubseq!203 newAcc!98 acc!866))))

(declare-fun b!1367787 () Bool)

(declare-fun res!911411 () Bool)

(assert (=> b!1367787 (=> (not res!911411) (not e!775155))))

(assert (=> b!1367787 (= res!911411 (not (contains!9625 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367788 () Bool)

(declare-fun res!911417 () Bool)

(assert (=> b!1367788 (=> (not res!911417) (not e!775154))))

(assert (=> b!1367788 (= res!911417 (bvslt from!3239 (size!45390 a!3861)))))

(declare-fun res!911415 () Bool)

(assert (=> start!115724 (=> (not res!911415) (not e!775155))))

(assert (=> start!115724 (= res!911415 (and (bvslt (size!45390 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45390 a!3861))))))

(assert (=> start!115724 e!775155))

(declare-fun array_inv!33784 (array!92839) Bool)

(assert (=> start!115724 (array_inv!33784 a!3861)))

(assert (=> start!115724 true))

(declare-fun b!1367789 () Bool)

(declare-fun res!911418 () Bool)

(assert (=> b!1367789 (=> (not res!911418) (not e!775155))))

(declare-fun subseq!1016 (List!32087 List!32087) Bool)

(assert (=> b!1367789 (= res!911418 (subseq!1016 newAcc!98 acc!866))))

(declare-fun b!1367790 () Bool)

(declare-fun res!911421 () Bool)

(assert (=> b!1367790 (=> (not res!911421) (not e!775155))))

(assert (=> b!1367790 (= res!911421 (not (contains!9625 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367791 () Bool)

(declare-fun res!911412 () Bool)

(assert (=> b!1367791 (=> (not res!911412) (not e!775155))))

(declare-fun noDuplicate!2504 (List!32087) Bool)

(assert (=> b!1367791 (= res!911412 (noDuplicate!2504 acc!866))))

(declare-fun b!1367792 () Bool)

(declare-fun res!911414 () Bool)

(assert (=> b!1367792 (=> (not res!911414) (not e!775154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367792 (= res!911414 (not (validKeyInArray!0 (select (arr!44839 a!3861) from!3239))))))

(assert (= (and start!115724 res!911415) b!1367791))

(assert (= (and b!1367791 res!911412) b!1367787))

(assert (= (and b!1367787 res!911411) b!1367790))

(assert (= (and b!1367790 res!911421) b!1367782))

(assert (= (and b!1367782 res!911419) b!1367783))

(assert (= (and b!1367783 res!911413) b!1367789))

(assert (= (and b!1367789 res!911418) b!1367786))

(assert (= (and b!1367786 res!911420) b!1367788))

(assert (= (and b!1367788 res!911417) b!1367792))

(assert (= (and b!1367792 res!911414) b!1367785))

(assert (= (and b!1367785 res!911416) b!1367784))

(declare-fun m!1251943 () Bool)

(assert (=> b!1367783 m!1251943))

(declare-fun m!1251945 () Bool)

(assert (=> b!1367791 m!1251945))

(declare-fun m!1251947 () Bool)

(assert (=> b!1367792 m!1251947))

(assert (=> b!1367792 m!1251947))

(declare-fun m!1251949 () Bool)

(assert (=> b!1367792 m!1251949))

(declare-fun m!1251951 () Bool)

(assert (=> start!115724 m!1251951))

(declare-fun m!1251953 () Bool)

(assert (=> b!1367786 m!1251953))

(declare-fun m!1251955 () Bool)

(assert (=> b!1367786 m!1251955))

(declare-fun m!1251957 () Bool)

(assert (=> b!1367782 m!1251957))

(declare-fun m!1251959 () Bool)

(assert (=> b!1367784 m!1251959))

(declare-fun m!1251961 () Bool)

(assert (=> b!1367790 m!1251961))

(declare-fun m!1251963 () Bool)

(assert (=> b!1367789 m!1251963))

(declare-fun m!1251965 () Bool)

(assert (=> b!1367787 m!1251965))

(push 1)

