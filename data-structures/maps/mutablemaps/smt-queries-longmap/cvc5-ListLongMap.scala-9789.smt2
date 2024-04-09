; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116294 () Bool)

(assert start!116294)

(declare-fun b!1372415 () Bool)

(declare-fun res!915806 () Bool)

(declare-fun e!777586 () Bool)

(assert (=> b!1372415 (=> (not res!915806) (not e!777586))))

(declare-datatypes ((List!32171 0))(
  ( (Nil!32168) (Cons!32167 (h!33376 (_ BitVec 64)) (t!46872 List!32171)) )
))
(declare-fun newAcc!98 () List!32171)

(declare-fun contains!9709 (List!32171 (_ BitVec 64)) Bool)

(assert (=> b!1372415 (= res!915806 (not (contains!9709 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372416 () Bool)

(declare-fun res!915810 () Bool)

(assert (=> b!1372416 (=> (not res!915810) (not e!777586))))

(declare-fun acc!866 () List!32171)

(declare-fun subseq!1100 (List!32171 List!32171) Bool)

(assert (=> b!1372416 (= res!915810 (subseq!1100 newAcc!98 acc!866))))

(declare-fun b!1372417 () Bool)

(declare-fun res!915808 () Bool)

(assert (=> b!1372417 (=> (not res!915808) (not e!777586))))

(assert (=> b!1372417 (= res!915808 (not (contains!9709 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372418 () Bool)

(assert (=> b!1372418 (= e!777586 false)))

(declare-datatypes ((array!93034 0))(
  ( (array!93035 (arr!44923 (Array (_ BitVec 32) (_ BitVec 64))) (size!45474 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93034)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602809 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93034 (_ BitVec 32) List!32171) Bool)

(assert (=> b!1372418 (= lt!602809 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45281 0))(
  ( (Unit!45282) )
))
(declare-fun lt!602810 () Unit!45281)

(declare-fun noDuplicateSubseq!287 (List!32171 List!32171) Unit!45281)

(assert (=> b!1372418 (= lt!602810 (noDuplicateSubseq!287 newAcc!98 acc!866))))

(declare-fun b!1372419 () Bool)

(declare-fun res!915809 () Bool)

(assert (=> b!1372419 (=> (not res!915809) (not e!777586))))

(assert (=> b!1372419 (= res!915809 (not (contains!9709 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372420 () Bool)

(declare-fun res!915805 () Bool)

(assert (=> b!1372420 (=> (not res!915805) (not e!777586))))

(declare-fun noDuplicate!2588 (List!32171) Bool)

(assert (=> b!1372420 (= res!915805 (noDuplicate!2588 acc!866))))

(declare-fun res!915804 () Bool)

(assert (=> start!116294 (=> (not res!915804) (not e!777586))))

(assert (=> start!116294 (= res!915804 (and (bvslt (size!45474 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45474 a!3861))))))

(assert (=> start!116294 e!777586))

(declare-fun array_inv!33868 (array!93034) Bool)

(assert (=> start!116294 (array_inv!33868 a!3861)))

(assert (=> start!116294 true))

(declare-fun b!1372421 () Bool)

(declare-fun res!915807 () Bool)

(assert (=> b!1372421 (=> (not res!915807) (not e!777586))))

(assert (=> b!1372421 (= res!915807 (not (contains!9709 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116294 res!915804) b!1372420))

(assert (= (and b!1372420 res!915805) b!1372421))

(assert (= (and b!1372421 res!915807) b!1372419))

(assert (= (and b!1372419 res!915809) b!1372415))

(assert (= (and b!1372415 res!915806) b!1372417))

(assert (= (and b!1372417 res!915808) b!1372416))

(assert (= (and b!1372416 res!915810) b!1372418))

(declare-fun m!1255891 () Bool)

(assert (=> start!116294 m!1255891))

(declare-fun m!1255893 () Bool)

(assert (=> b!1372418 m!1255893))

(declare-fun m!1255895 () Bool)

(assert (=> b!1372418 m!1255895))

(declare-fun m!1255897 () Bool)

(assert (=> b!1372420 m!1255897))

(declare-fun m!1255899 () Bool)

(assert (=> b!1372415 m!1255899))

(declare-fun m!1255901 () Bool)

(assert (=> b!1372416 m!1255901))

(declare-fun m!1255903 () Bool)

(assert (=> b!1372421 m!1255903))

(declare-fun m!1255905 () Bool)

(assert (=> b!1372417 m!1255905))

(declare-fun m!1255907 () Bool)

(assert (=> b!1372419 m!1255907))

(push 1)

(assert (not start!116294))

(assert (not b!1372420))

(assert (not b!1372421))

(assert (not b!1372417))

(assert (not b!1372415))

(assert (not b!1372419))

(assert (not b!1372416))

(assert (not b!1372418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

