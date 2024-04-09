; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115732 () Bool)

(assert start!115732)

(declare-fun b!1367914 () Bool)

(declare-fun res!911545 () Bool)

(declare-fun e!775192 () Bool)

(assert (=> b!1367914 (=> (not res!911545) (not e!775192))))

(declare-datatypes ((List!32091 0))(
  ( (Nil!32088) (Cons!32087 (h!33296 (_ BitVec 64)) (t!46792 List!32091)) )
))
(declare-fun newAcc!98 () List!32091)

(declare-fun contains!9629 (List!32091 (_ BitVec 64)) Bool)

(assert (=> b!1367914 (= res!911545 (not (contains!9629 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367915 () Bool)

(declare-fun res!911550 () Bool)

(declare-fun e!775190 () Bool)

(assert (=> b!1367915 (=> (not res!911550) (not e!775190))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92847 0))(
  ( (array!92848 (arr!44843 (Array (_ BitVec 32) (_ BitVec 64))) (size!45394 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92847)

(assert (=> b!1367915 (= res!911550 (bvslt from!3239 (size!45394 a!3861)))))

(declare-fun b!1367916 () Bool)

(assert (=> b!1367916 (= e!775190 false)))

(declare-fun lt!601921 () Bool)

(declare-fun acc!866 () List!32091)

(declare-fun arrayNoDuplicates!0 (array!92847 (_ BitVec 32) List!32091) Bool)

(assert (=> b!1367916 (= lt!601921 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367917 () Bool)

(declare-fun res!911543 () Bool)

(assert (=> b!1367917 (=> (not res!911543) (not e!775192))))

(assert (=> b!1367917 (= res!911543 (not (contains!9629 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367918 () Bool)

(assert (=> b!1367918 (= e!775192 e!775190)))

(declare-fun res!911552 () Bool)

(assert (=> b!1367918 (=> (not res!911552) (not e!775190))))

(assert (=> b!1367918 (= res!911552 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45121 0))(
  ( (Unit!45122) )
))
(declare-fun lt!601922 () Unit!45121)

(declare-fun noDuplicateSubseq!207 (List!32091 List!32091) Unit!45121)

(assert (=> b!1367918 (= lt!601922 (noDuplicateSubseq!207 newAcc!98 acc!866))))

(declare-fun b!1367919 () Bool)

(declare-fun res!911551 () Bool)

(assert (=> b!1367919 (=> (not res!911551) (not e!775190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367919 (= res!911551 (not (validKeyInArray!0 (select (arr!44843 a!3861) from!3239))))))

(declare-fun b!1367920 () Bool)

(declare-fun res!911547 () Bool)

(assert (=> b!1367920 (=> (not res!911547) (not e!775192))))

(assert (=> b!1367920 (= res!911547 (not (contains!9629 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367921 () Bool)

(declare-fun res!911544 () Bool)

(assert (=> b!1367921 (=> (not res!911544) (not e!775192))))

(assert (=> b!1367921 (= res!911544 (not (contains!9629 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911548 () Bool)

(assert (=> start!115732 (=> (not res!911548) (not e!775192))))

(assert (=> start!115732 (= res!911548 (and (bvslt (size!45394 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45394 a!3861))))))

(assert (=> start!115732 e!775192))

(declare-fun array_inv!33788 (array!92847) Bool)

(assert (=> start!115732 (array_inv!33788 a!3861)))

(assert (=> start!115732 true))

(declare-fun b!1367922 () Bool)

(declare-fun res!911549 () Bool)

(assert (=> b!1367922 (=> (not res!911549) (not e!775192))))

(declare-fun subseq!1020 (List!32091 List!32091) Bool)

(assert (=> b!1367922 (= res!911549 (subseq!1020 newAcc!98 acc!866))))

(declare-fun b!1367923 () Bool)

(declare-fun res!911553 () Bool)

(assert (=> b!1367923 (=> (not res!911553) (not e!775190))))

(assert (=> b!1367923 (= res!911553 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367924 () Bool)

(declare-fun res!911546 () Bool)

(assert (=> b!1367924 (=> (not res!911546) (not e!775192))))

(declare-fun noDuplicate!2508 (List!32091) Bool)

(assert (=> b!1367924 (= res!911546 (noDuplicate!2508 acc!866))))

(assert (= (and start!115732 res!911548) b!1367924))

(assert (= (and b!1367924 res!911546) b!1367921))

(assert (= (and b!1367921 res!911544) b!1367920))

(assert (= (and b!1367920 res!911547) b!1367917))

(assert (= (and b!1367917 res!911543) b!1367914))

(assert (= (and b!1367914 res!911545) b!1367922))

(assert (= (and b!1367922 res!911549) b!1367918))

(assert (= (and b!1367918 res!911552) b!1367915))

(assert (= (and b!1367915 res!911550) b!1367919))

(assert (= (and b!1367919 res!911551) b!1367923))

(assert (= (and b!1367923 res!911553) b!1367916))

(declare-fun m!1252039 () Bool)

(assert (=> b!1367916 m!1252039))

(declare-fun m!1252041 () Bool)

(assert (=> b!1367919 m!1252041))

(assert (=> b!1367919 m!1252041))

(declare-fun m!1252043 () Bool)

(assert (=> b!1367919 m!1252043))

(declare-fun m!1252045 () Bool)

(assert (=> b!1367922 m!1252045))

(declare-fun m!1252047 () Bool)

(assert (=> b!1367917 m!1252047))

(declare-fun m!1252049 () Bool)

(assert (=> b!1367924 m!1252049))

(declare-fun m!1252051 () Bool)

(assert (=> b!1367920 m!1252051))

(declare-fun m!1252053 () Bool)

(assert (=> start!115732 m!1252053))

(declare-fun m!1252055 () Bool)

(assert (=> b!1367914 m!1252055))

(declare-fun m!1252057 () Bool)

(assert (=> b!1367921 m!1252057))

(declare-fun m!1252059 () Bool)

(assert (=> b!1367918 m!1252059))

(declare-fun m!1252061 () Bool)

(assert (=> b!1367918 m!1252061))

(check-sat (not b!1367921) (not b!1367920) (not b!1367924) (not b!1367918) (not b!1367916) (not start!115732) (not b!1367917) (not b!1367922) (not b!1367914) (not b!1367919))
(check-sat)
