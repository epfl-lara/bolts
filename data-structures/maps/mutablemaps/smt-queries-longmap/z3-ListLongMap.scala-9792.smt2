; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116314 () Bool)

(assert start!116314)

(declare-fun b!1372652 () Bool)

(declare-fun res!916045 () Bool)

(declare-fun e!777655 () Bool)

(assert (=> b!1372652 (=> (not res!916045) (not e!777655))))

(declare-datatypes ((List!32181 0))(
  ( (Nil!32178) (Cons!32177 (h!33386 (_ BitVec 64)) (t!46882 List!32181)) )
))
(declare-fun newAcc!98 () List!32181)

(declare-fun contains!9719 (List!32181 (_ BitVec 64)) Bool)

(assert (=> b!1372652 (= res!916045 (not (contains!9719 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372653 () Bool)

(declare-fun res!916044 () Bool)

(assert (=> b!1372653 (=> (not res!916044) (not e!777655))))

(declare-fun acc!866 () List!32181)

(assert (=> b!1372653 (= res!916044 (not (contains!9719 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916046 () Bool)

(assert (=> start!116314 (=> (not res!916046) (not e!777655))))

(declare-datatypes ((array!93054 0))(
  ( (array!93055 (arr!44933 (Array (_ BitVec 32) (_ BitVec 64))) (size!45484 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93054)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116314 (= res!916046 (and (bvslt (size!45484 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45484 a!3861))))))

(assert (=> start!116314 e!777655))

(declare-fun array_inv!33878 (array!93054) Bool)

(assert (=> start!116314 (array_inv!33878 a!3861)))

(assert (=> start!116314 true))

(declare-fun b!1372654 () Bool)

(declare-fun res!916047 () Bool)

(assert (=> b!1372654 (=> (not res!916047) (not e!777655))))

(assert (=> b!1372654 (= res!916047 (not (contains!9719 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372655 () Bool)

(assert (=> b!1372655 (= e!777655 false)))

(declare-fun lt!602860 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93054 (_ BitVec 32) List!32181) Bool)

(assert (=> b!1372655 (= lt!602860 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45301 0))(
  ( (Unit!45302) )
))
(declare-fun lt!602861 () Unit!45301)

(declare-fun noDuplicateSubseq!297 (List!32181 List!32181) Unit!45301)

(assert (=> b!1372655 (= lt!602861 (noDuplicateSubseq!297 newAcc!98 acc!866))))

(declare-fun b!1372656 () Bool)

(declare-fun res!916042 () Bool)

(assert (=> b!1372656 (=> (not res!916042) (not e!777655))))

(declare-fun subseq!1110 (List!32181 List!32181) Bool)

(assert (=> b!1372656 (= res!916042 (subseq!1110 newAcc!98 acc!866))))

(declare-fun b!1372657 () Bool)

(declare-fun res!916041 () Bool)

(assert (=> b!1372657 (=> (not res!916041) (not e!777655))))

(declare-fun noDuplicate!2598 (List!32181) Bool)

(assert (=> b!1372657 (= res!916041 (noDuplicate!2598 acc!866))))

(declare-fun b!1372658 () Bool)

(declare-fun res!916043 () Bool)

(assert (=> b!1372658 (=> (not res!916043) (not e!777655))))

(assert (=> b!1372658 (= res!916043 (not (contains!9719 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116314 res!916046) b!1372657))

(assert (= (and b!1372657 res!916041) b!1372653))

(assert (= (and b!1372653 res!916044) b!1372654))

(assert (= (and b!1372654 res!916047) b!1372652))

(assert (= (and b!1372652 res!916045) b!1372658))

(assert (= (and b!1372658 res!916043) b!1372656))

(assert (= (and b!1372656 res!916042) b!1372655))

(declare-fun m!1256083 () Bool)

(assert (=> b!1372657 m!1256083))

(declare-fun m!1256085 () Bool)

(assert (=> b!1372655 m!1256085))

(declare-fun m!1256087 () Bool)

(assert (=> b!1372655 m!1256087))

(declare-fun m!1256089 () Bool)

(assert (=> b!1372656 m!1256089))

(declare-fun m!1256091 () Bool)

(assert (=> start!116314 m!1256091))

(declare-fun m!1256093 () Bool)

(assert (=> b!1372654 m!1256093))

(declare-fun m!1256095 () Bool)

(assert (=> b!1372653 m!1256095))

(declare-fun m!1256097 () Bool)

(assert (=> b!1372652 m!1256097))

(declare-fun m!1256099 () Bool)

(assert (=> b!1372658 m!1256099))

(check-sat (not b!1372653) (not b!1372658) (not b!1372652) (not start!116314) (not b!1372655) (not b!1372656) (not b!1372657) (not b!1372654))
(check-sat)
