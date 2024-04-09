; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115912 () Bool)

(assert start!115912)

(declare-fun b!1369679 () Bool)

(declare-fun e!775894 () Bool)

(declare-fun e!775893 () Bool)

(assert (=> b!1369679 (= e!775894 e!775893)))

(declare-fun res!913269 () Bool)

(assert (=> b!1369679 (=> (not res!913269) (not e!775893))))

(declare-datatypes ((array!92949 0))(
  ( (array!92950 (arr!44891 (Array (_ BitVec 32) (_ BitVec 64))) (size!45442 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92949)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32139 0))(
  ( (Nil!32136) (Cons!32135 (h!33344 (_ BitVec 64)) (t!46840 List!32139)) )
))
(declare-fun acc!866 () List!32139)

(declare-fun arrayNoDuplicates!0 (array!92949 (_ BitVec 32) List!32139) Bool)

(assert (=> b!1369679 (= res!913269 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45217 0))(
  ( (Unit!45218) )
))
(declare-fun lt!602273 () Unit!45217)

(declare-fun newAcc!98 () List!32139)

(declare-fun noDuplicateSubseq!255 (List!32139 List!32139) Unit!45217)

(assert (=> b!1369679 (= lt!602273 (noDuplicateSubseq!255 newAcc!98 acc!866))))

(declare-fun b!1369680 () Bool)

(declare-fun res!913262 () Bool)

(assert (=> b!1369680 (=> (not res!913262) (not e!775893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369680 (= res!913262 (validKeyInArray!0 (select (arr!44891 a!3861) from!3239)))))

(declare-fun b!1369681 () Bool)

(declare-fun res!913260 () Bool)

(assert (=> b!1369681 (=> (not res!913260) (not e!775894))))

(declare-fun noDuplicate!2556 (List!32139) Bool)

(assert (=> b!1369681 (= res!913260 (noDuplicate!2556 acc!866))))

(declare-fun b!1369682 () Bool)

(declare-fun res!913263 () Bool)

(assert (=> b!1369682 (=> (not res!913263) (not e!775894))))

(declare-fun subseq!1068 (List!32139 List!32139) Bool)

(assert (=> b!1369682 (= res!913263 (subseq!1068 newAcc!98 acc!866))))

(declare-fun b!1369683 () Bool)

(declare-fun res!913268 () Bool)

(assert (=> b!1369683 (=> (not res!913268) (not e!775894))))

(declare-fun contains!9677 (List!32139 (_ BitVec 64)) Bool)

(assert (=> b!1369683 (= res!913268 (not (contains!9677 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913261 () Bool)

(assert (=> start!115912 (=> (not res!913261) (not e!775894))))

(assert (=> start!115912 (= res!913261 (and (bvslt (size!45442 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45442 a!3861))))))

(assert (=> start!115912 e!775894))

(declare-fun array_inv!33836 (array!92949) Bool)

(assert (=> start!115912 (array_inv!33836 a!3861)))

(assert (=> start!115912 true))

(declare-fun b!1369684 () Bool)

(declare-fun res!913264 () Bool)

(assert (=> b!1369684 (=> (not res!913264) (not e!775893))))

(assert (=> b!1369684 (= res!913264 (bvslt from!3239 (size!45442 a!3861)))))

(declare-fun b!1369685 () Bool)

(declare-fun res!913266 () Bool)

(assert (=> b!1369685 (=> (not res!913266) (not e!775894))))

(assert (=> b!1369685 (= res!913266 (not (contains!9677 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369686 () Bool)

(declare-fun res!913267 () Bool)

(assert (=> b!1369686 (=> (not res!913267) (not e!775894))))

(assert (=> b!1369686 (= res!913267 (not (contains!9677 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369687 () Bool)

(declare-fun res!913265 () Bool)

(assert (=> b!1369687 (=> (not res!913265) (not e!775894))))

(assert (=> b!1369687 (= res!913265 (not (contains!9677 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369688 () Bool)

(assert (=> b!1369688 (= e!775893 false)))

(declare-fun lt!602272 () Bool)

(assert (=> b!1369688 (= lt!602272 (contains!9677 acc!866 (select (arr!44891 a!3861) from!3239)))))

(assert (= (and start!115912 res!913261) b!1369681))

(assert (= (and b!1369681 res!913260) b!1369685))

(assert (= (and b!1369685 res!913266) b!1369687))

(assert (= (and b!1369687 res!913265) b!1369683))

(assert (= (and b!1369683 res!913268) b!1369686))

(assert (= (and b!1369686 res!913267) b!1369682))

(assert (= (and b!1369682 res!913263) b!1369679))

(assert (= (and b!1369679 res!913269) b!1369684))

(assert (= (and b!1369684 res!913264) b!1369680))

(assert (= (and b!1369680 res!913262) b!1369688))

(declare-fun m!1253437 () Bool)

(assert (=> b!1369683 m!1253437))

(declare-fun m!1253439 () Bool)

(assert (=> start!115912 m!1253439))

(declare-fun m!1253441 () Bool)

(assert (=> b!1369680 m!1253441))

(assert (=> b!1369680 m!1253441))

(declare-fun m!1253443 () Bool)

(assert (=> b!1369680 m!1253443))

(declare-fun m!1253445 () Bool)

(assert (=> b!1369681 m!1253445))

(declare-fun m!1253447 () Bool)

(assert (=> b!1369687 m!1253447))

(declare-fun m!1253449 () Bool)

(assert (=> b!1369686 m!1253449))

(declare-fun m!1253451 () Bool)

(assert (=> b!1369685 m!1253451))

(declare-fun m!1253453 () Bool)

(assert (=> b!1369679 m!1253453))

(declare-fun m!1253455 () Bool)

(assert (=> b!1369679 m!1253455))

(assert (=> b!1369688 m!1253441))

(assert (=> b!1369688 m!1253441))

(declare-fun m!1253457 () Bool)

(assert (=> b!1369688 m!1253457))

(declare-fun m!1253459 () Bool)

(assert (=> b!1369682 m!1253459))

(check-sat (not start!115912) (not b!1369682) (not b!1369679) (not b!1369683) (not b!1369681) (not b!1369687) (not b!1369685) (not b!1369680) (not b!1369686) (not b!1369688))
(check-sat)
