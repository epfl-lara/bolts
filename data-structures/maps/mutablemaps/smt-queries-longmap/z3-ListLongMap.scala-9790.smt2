; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116302 () Bool)

(assert start!116302)

(declare-fun b!1372514 () Bool)

(declare-fun res!915906 () Bool)

(declare-fun e!777614 () Bool)

(assert (=> b!1372514 (=> (not res!915906) (not e!777614))))

(declare-datatypes ((array!93042 0))(
  ( (array!93043 (arr!44927 (Array (_ BitVec 32) (_ BitVec 64))) (size!45478 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93042)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372514 (= res!915906 (not (validKeyInArray!0 (select (arr!44927 a!3861) from!3239))))))

(declare-fun b!1372515 () Bool)

(declare-fun res!915905 () Bool)

(declare-fun e!777616 () Bool)

(assert (=> b!1372515 (=> (not res!915905) (not e!777616))))

(declare-datatypes ((List!32175 0))(
  ( (Nil!32172) (Cons!32171 (h!33380 (_ BitVec 64)) (t!46876 List!32175)) )
))
(declare-fun newAcc!98 () List!32175)

(declare-fun contains!9713 (List!32175 (_ BitVec 64)) Bool)

(assert (=> b!1372515 (= res!915905 (not (contains!9713 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372516 () Bool)

(assert (=> b!1372516 (= e!777616 e!777614)))

(declare-fun res!915903 () Bool)

(assert (=> b!1372516 (=> (not res!915903) (not e!777614))))

(declare-fun acc!866 () List!32175)

(declare-fun arrayNoDuplicates!0 (array!93042 (_ BitVec 32) List!32175) Bool)

(assert (=> b!1372516 (= res!915903 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45289 0))(
  ( (Unit!45290) )
))
(declare-fun lt!602828 () Unit!45289)

(declare-fun noDuplicateSubseq!291 (List!32175 List!32175) Unit!45289)

(assert (=> b!1372516 (= lt!602828 (noDuplicateSubseq!291 newAcc!98 acc!866))))

(declare-fun b!1372517 () Bool)

(declare-fun res!915911 () Bool)

(assert (=> b!1372517 (=> (not res!915911) (not e!777614))))

(assert (=> b!1372517 (= res!915911 (bvslt from!3239 (size!45478 a!3861)))))

(declare-fun b!1372518 () Bool)

(declare-fun res!915909 () Bool)

(assert (=> b!1372518 (=> (not res!915909) (not e!777616))))

(assert (=> b!1372518 (= res!915909 (not (contains!9713 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915907 () Bool)

(assert (=> start!116302 (=> (not res!915907) (not e!777616))))

(assert (=> start!116302 (= res!915907 (and (bvslt (size!45478 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45478 a!3861))))))

(assert (=> start!116302 e!777616))

(declare-fun array_inv!33872 (array!93042) Bool)

(assert (=> start!116302 (array_inv!33872 a!3861)))

(assert (=> start!116302 true))

(declare-fun b!1372519 () Bool)

(assert (=> b!1372519 (= e!777614 (bvslt (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1372520 () Bool)

(declare-fun res!915912 () Bool)

(assert (=> b!1372520 (=> (not res!915912) (not e!777616))))

(assert (=> b!1372520 (= res!915912 (not (contains!9713 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372521 () Bool)

(declare-fun res!915904 () Bool)

(assert (=> b!1372521 (=> (not res!915904) (not e!777616))))

(assert (=> b!1372521 (= res!915904 (not (contains!9713 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372522 () Bool)

(declare-fun res!915910 () Bool)

(assert (=> b!1372522 (=> (not res!915910) (not e!777616))))

(declare-fun subseq!1104 (List!32175 List!32175) Bool)

(assert (=> b!1372522 (= res!915910 (subseq!1104 newAcc!98 acc!866))))

(declare-fun b!1372523 () Bool)

(declare-fun res!915908 () Bool)

(assert (=> b!1372523 (=> (not res!915908) (not e!777616))))

(declare-fun noDuplicate!2592 (List!32175) Bool)

(assert (=> b!1372523 (= res!915908 (noDuplicate!2592 acc!866))))

(assert (= (and start!116302 res!915907) b!1372523))

(assert (= (and b!1372523 res!915908) b!1372518))

(assert (= (and b!1372518 res!915909) b!1372521))

(assert (= (and b!1372521 res!915904) b!1372515))

(assert (= (and b!1372515 res!915905) b!1372520))

(assert (= (and b!1372520 res!915912) b!1372522))

(assert (= (and b!1372522 res!915910) b!1372516))

(assert (= (and b!1372516 res!915903) b!1372517))

(assert (= (and b!1372517 res!915911) b!1372514))

(assert (= (and b!1372514 res!915906) b!1372519))

(declare-fun m!1255967 () Bool)

(assert (=> b!1372514 m!1255967))

(assert (=> b!1372514 m!1255967))

(declare-fun m!1255969 () Bool)

(assert (=> b!1372514 m!1255969))

(declare-fun m!1255971 () Bool)

(assert (=> b!1372521 m!1255971))

(declare-fun m!1255973 () Bool)

(assert (=> b!1372520 m!1255973))

(declare-fun m!1255975 () Bool)

(assert (=> b!1372518 m!1255975))

(declare-fun m!1255977 () Bool)

(assert (=> b!1372516 m!1255977))

(declare-fun m!1255979 () Bool)

(assert (=> b!1372516 m!1255979))

(declare-fun m!1255981 () Bool)

(assert (=> start!116302 m!1255981))

(declare-fun m!1255983 () Bool)

(assert (=> b!1372515 m!1255983))

(declare-fun m!1255985 () Bool)

(assert (=> b!1372523 m!1255985))

(declare-fun m!1255987 () Bool)

(assert (=> b!1372522 m!1255987))

(check-sat (not b!1372522) (not b!1372518) (not start!116302) (not b!1372523) (not b!1372514) (not b!1372520) (not b!1372515) (not b!1372516) (not b!1372521))
(check-sat)
