; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115468 () Bool)

(assert start!115468)

(declare-fun b!1364879 () Bool)

(declare-fun e!774076 () Bool)

(assert (=> b!1364879 (= e!774076 false)))

(declare-datatypes ((Unit!44995 0))(
  ( (Unit!44996) )
))
(declare-fun lt!601103 () Unit!44995)

(declare-datatypes ((List!32028 0))(
  ( (Nil!32025) (Cons!32024 (h!33233 (_ BitVec 64)) (t!46729 List!32028)) )
))
(declare-fun newAcc!98 () List!32028)

(declare-fun acc!866 () List!32028)

(declare-fun noDuplicateSubseq!144 (List!32028 List!32028) Unit!44995)

(assert (=> b!1364879 (= lt!601103 (noDuplicateSubseq!144 newAcc!98 acc!866))))

(declare-fun b!1364880 () Bool)

(declare-fun res!908578 () Bool)

(assert (=> b!1364880 (=> (not res!908578) (not e!774076))))

(declare-fun noDuplicate!2445 (List!32028) Bool)

(assert (=> b!1364880 (= res!908578 (noDuplicate!2445 acc!866))))

(declare-fun b!1364881 () Bool)

(declare-fun res!908576 () Bool)

(assert (=> b!1364881 (=> (not res!908576) (not e!774076))))

(declare-fun contains!9566 (List!32028 (_ BitVec 64)) Bool)

(assert (=> b!1364881 (= res!908576 (not (contains!9566 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908580 () Bool)

(assert (=> start!115468 (=> (not res!908580) (not e!774076))))

(declare-datatypes ((array!92712 0))(
  ( (array!92713 (arr!44780 (Array (_ BitVec 32) (_ BitVec 64))) (size!45331 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92712)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115468 (= res!908580 (and (bvslt (size!45331 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45331 a!3861))))))

(assert (=> start!115468 e!774076))

(declare-fun array_inv!33725 (array!92712) Bool)

(assert (=> start!115468 (array_inv!33725 a!3861)))

(assert (=> start!115468 true))

(declare-fun b!1364882 () Bool)

(declare-fun res!908574 () Bool)

(assert (=> b!1364882 (=> (not res!908574) (not e!774076))))

(declare-fun subseq!957 (List!32028 List!32028) Bool)

(assert (=> b!1364882 (= res!908574 (subseq!957 newAcc!98 acc!866))))

(declare-fun b!1364883 () Bool)

(declare-fun res!908579 () Bool)

(assert (=> b!1364883 (=> (not res!908579) (not e!774076))))

(assert (=> b!1364883 (= res!908579 (not (contains!9566 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364884 () Bool)

(declare-fun res!908577 () Bool)

(assert (=> b!1364884 (=> (not res!908577) (not e!774076))))

(assert (=> b!1364884 (= res!908577 (not (contains!9566 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364885 () Bool)

(declare-fun res!908575 () Bool)

(assert (=> b!1364885 (=> (not res!908575) (not e!774076))))

(assert (=> b!1364885 (= res!908575 (not (contains!9566 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115468 res!908580) b!1364880))

(assert (= (and b!1364880 res!908578) b!1364884))

(assert (= (and b!1364884 res!908577) b!1364885))

(assert (= (and b!1364885 res!908575) b!1364883))

(assert (= (and b!1364883 res!908579) b!1364881))

(assert (= (and b!1364881 res!908576) b!1364882))

(assert (= (and b!1364882 res!908574) b!1364879))

(declare-fun m!1249601 () Bool)

(assert (=> b!1364885 m!1249601))

(declare-fun m!1249603 () Bool)

(assert (=> b!1364880 m!1249603))

(declare-fun m!1249605 () Bool)

(assert (=> b!1364884 m!1249605))

(declare-fun m!1249607 () Bool)

(assert (=> b!1364882 m!1249607))

(declare-fun m!1249609 () Bool)

(assert (=> b!1364883 m!1249609))

(declare-fun m!1249611 () Bool)

(assert (=> b!1364881 m!1249611))

(declare-fun m!1249613 () Bool)

(assert (=> b!1364879 m!1249613))

(declare-fun m!1249615 () Bool)

(assert (=> start!115468 m!1249615))

(check-sat (not b!1364881) (not b!1364883) (not b!1364885) (not b!1364880) (not start!115468) (not b!1364884) (not b!1364879) (not b!1364882))
(check-sat)
