; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115720 () Bool)

(assert start!115720)

(declare-fun b!1367716 () Bool)

(declare-fun res!911354 () Bool)

(declare-fun e!775138 () Bool)

(assert (=> b!1367716 (=> (not res!911354) (not e!775138))))

(declare-datatypes ((List!32085 0))(
  ( (Nil!32082) (Cons!32081 (h!33290 (_ BitVec 64)) (t!46786 List!32085)) )
))
(declare-fun acc!866 () List!32085)

(declare-fun contains!9623 (List!32085 (_ BitVec 64)) Bool)

(assert (=> b!1367716 (= res!911354 (not (contains!9623 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367717 () Bool)

(declare-fun e!775137 () Bool)

(assert (=> b!1367717 (= e!775138 e!775137)))

(declare-fun res!911347 () Bool)

(assert (=> b!1367717 (=> (not res!911347) (not e!775137))))

(declare-datatypes ((array!92835 0))(
  ( (array!92836 (arr!44837 (Array (_ BitVec 32) (_ BitVec 64))) (size!45388 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92835)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92835 (_ BitVec 32) List!32085) Bool)

(assert (=> b!1367717 (= res!911347 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45109 0))(
  ( (Unit!45110) )
))
(declare-fun lt!601886 () Unit!45109)

(declare-fun newAcc!98 () List!32085)

(declare-fun noDuplicateSubseq!201 (List!32085 List!32085) Unit!45109)

(assert (=> b!1367717 (= lt!601886 (noDuplicateSubseq!201 newAcc!98 acc!866))))

(declare-fun b!1367718 () Bool)

(declare-fun res!911345 () Bool)

(assert (=> b!1367718 (=> (not res!911345) (not e!775137))))

(assert (=> b!1367718 (= res!911345 (bvslt from!3239 (size!45388 a!3861)))))

(declare-fun b!1367719 () Bool)

(assert (=> b!1367719 (= e!775137 false)))

(declare-fun lt!601885 () Bool)

(assert (=> b!1367719 (= lt!601885 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367720 () Bool)

(declare-fun res!911355 () Bool)

(assert (=> b!1367720 (=> (not res!911355) (not e!775137))))

(assert (=> b!1367720 (= res!911355 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun res!911346 () Bool)

(assert (=> start!115720 (=> (not res!911346) (not e!775138))))

(assert (=> start!115720 (= res!911346 (and (bvslt (size!45388 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45388 a!3861))))))

(assert (=> start!115720 e!775138))

(declare-fun array_inv!33782 (array!92835) Bool)

(assert (=> start!115720 (array_inv!33782 a!3861)))

(assert (=> start!115720 true))

(declare-fun b!1367721 () Bool)

(declare-fun res!911350 () Bool)

(assert (=> b!1367721 (=> (not res!911350) (not e!775138))))

(assert (=> b!1367721 (= res!911350 (not (contains!9623 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367722 () Bool)

(declare-fun res!911353 () Bool)

(assert (=> b!1367722 (=> (not res!911353) (not e!775138))))

(assert (=> b!1367722 (= res!911353 (not (contains!9623 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367723 () Bool)

(declare-fun res!911348 () Bool)

(assert (=> b!1367723 (=> (not res!911348) (not e!775138))))

(assert (=> b!1367723 (= res!911348 (not (contains!9623 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367724 () Bool)

(declare-fun res!911351 () Bool)

(assert (=> b!1367724 (=> (not res!911351) (not e!775138))))

(declare-fun noDuplicate!2502 (List!32085) Bool)

(assert (=> b!1367724 (= res!911351 (noDuplicate!2502 acc!866))))

(declare-fun b!1367725 () Bool)

(declare-fun res!911349 () Bool)

(assert (=> b!1367725 (=> (not res!911349) (not e!775138))))

(declare-fun subseq!1014 (List!32085 List!32085) Bool)

(assert (=> b!1367725 (= res!911349 (subseq!1014 newAcc!98 acc!866))))

(declare-fun b!1367726 () Bool)

(declare-fun res!911352 () Bool)

(assert (=> b!1367726 (=> (not res!911352) (not e!775137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367726 (= res!911352 (not (validKeyInArray!0 (select (arr!44837 a!3861) from!3239))))))

(assert (= (and start!115720 res!911346) b!1367724))

(assert (= (and b!1367724 res!911351) b!1367716))

(assert (= (and b!1367716 res!911354) b!1367723))

(assert (= (and b!1367723 res!911348) b!1367721))

(assert (= (and b!1367721 res!911350) b!1367722))

(assert (= (and b!1367722 res!911353) b!1367725))

(assert (= (and b!1367725 res!911349) b!1367717))

(assert (= (and b!1367717 res!911347) b!1367718))

(assert (= (and b!1367718 res!911345) b!1367726))

(assert (= (and b!1367726 res!911352) b!1367720))

(assert (= (and b!1367720 res!911355) b!1367719))

(declare-fun m!1251895 () Bool)

(assert (=> b!1367725 m!1251895))

(declare-fun m!1251897 () Bool)

(assert (=> b!1367726 m!1251897))

(assert (=> b!1367726 m!1251897))

(declare-fun m!1251899 () Bool)

(assert (=> b!1367726 m!1251899))

(declare-fun m!1251901 () Bool)

(assert (=> b!1367722 m!1251901))

(declare-fun m!1251903 () Bool)

(assert (=> b!1367724 m!1251903))

(declare-fun m!1251905 () Bool)

(assert (=> start!115720 m!1251905))

(declare-fun m!1251907 () Bool)

(assert (=> b!1367721 m!1251907))

(declare-fun m!1251909 () Bool)

(assert (=> b!1367717 m!1251909))

(declare-fun m!1251911 () Bool)

(assert (=> b!1367717 m!1251911))

(declare-fun m!1251913 () Bool)

(assert (=> b!1367716 m!1251913))

(declare-fun m!1251915 () Bool)

(assert (=> b!1367719 m!1251915))

(declare-fun m!1251917 () Bool)

(assert (=> b!1367723 m!1251917))

(check-sat (not b!1367724) (not b!1367717) (not b!1367716) (not b!1367726) (not b!1367719) (not b!1367721) (not start!115720) (not b!1367723) (not b!1367722) (not b!1367725))
(check-sat)
