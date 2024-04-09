; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115472 () Bool)

(assert start!115472)

(declare-fun b!1364921 () Bool)

(declare-fun res!908618 () Bool)

(declare-fun e!774087 () Bool)

(assert (=> b!1364921 (=> (not res!908618) (not e!774087))))

(declare-datatypes ((List!32030 0))(
  ( (Nil!32027) (Cons!32026 (h!33235 (_ BitVec 64)) (t!46731 List!32030)) )
))
(declare-fun acc!866 () List!32030)

(declare-fun contains!9568 (List!32030 (_ BitVec 64)) Bool)

(assert (=> b!1364921 (= res!908618 (not (contains!9568 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364922 () Bool)

(declare-fun res!908619 () Bool)

(assert (=> b!1364922 (=> (not res!908619) (not e!774087))))

(declare-fun newAcc!98 () List!32030)

(declare-fun subseq!959 (List!32030 List!32030) Bool)

(assert (=> b!1364922 (= res!908619 (subseq!959 newAcc!98 acc!866))))

(declare-fun b!1364924 () Bool)

(assert (=> b!1364924 (= e!774087 false)))

(declare-datatypes ((Unit!44999 0))(
  ( (Unit!45000) )
))
(declare-fun lt!601109 () Unit!44999)

(declare-fun noDuplicateSubseq!146 (List!32030 List!32030) Unit!44999)

(assert (=> b!1364924 (= lt!601109 (noDuplicateSubseq!146 newAcc!98 acc!866))))

(declare-fun b!1364925 () Bool)

(declare-fun res!908622 () Bool)

(assert (=> b!1364925 (=> (not res!908622) (not e!774087))))

(assert (=> b!1364925 (= res!908622 (not (contains!9568 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364926 () Bool)

(declare-fun res!908620 () Bool)

(assert (=> b!1364926 (=> (not res!908620) (not e!774087))))

(declare-fun noDuplicate!2447 (List!32030) Bool)

(assert (=> b!1364926 (= res!908620 (noDuplicate!2447 acc!866))))

(declare-fun b!1364927 () Bool)

(declare-fun res!908621 () Bool)

(assert (=> b!1364927 (=> (not res!908621) (not e!774087))))

(assert (=> b!1364927 (= res!908621 (not (contains!9568 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908617 () Bool)

(assert (=> start!115472 (=> (not res!908617) (not e!774087))))

(declare-datatypes ((array!92716 0))(
  ( (array!92717 (arr!44782 (Array (_ BitVec 32) (_ BitVec 64))) (size!45333 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92716)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115472 (= res!908617 (and (bvslt (size!45333 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45333 a!3861))))))

(assert (=> start!115472 e!774087))

(declare-fun array_inv!33727 (array!92716) Bool)

(assert (=> start!115472 (array_inv!33727 a!3861)))

(assert (=> start!115472 true))

(declare-fun b!1364923 () Bool)

(declare-fun res!908616 () Bool)

(assert (=> b!1364923 (=> (not res!908616) (not e!774087))))

(assert (=> b!1364923 (= res!908616 (not (contains!9568 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115472 res!908617) b!1364926))

(assert (= (and b!1364926 res!908620) b!1364923))

(assert (= (and b!1364923 res!908616) b!1364921))

(assert (= (and b!1364921 res!908618) b!1364925))

(assert (= (and b!1364925 res!908622) b!1364927))

(assert (= (and b!1364927 res!908621) b!1364922))

(assert (= (and b!1364922 res!908619) b!1364924))

(declare-fun m!1249633 () Bool)

(assert (=> b!1364927 m!1249633))

(declare-fun m!1249635 () Bool)

(assert (=> b!1364925 m!1249635))

(declare-fun m!1249637 () Bool)

(assert (=> b!1364921 m!1249637))

(declare-fun m!1249639 () Bool)

(assert (=> start!115472 m!1249639))

(declare-fun m!1249641 () Bool)

(assert (=> b!1364923 m!1249641))

(declare-fun m!1249643 () Bool)

(assert (=> b!1364924 m!1249643))

(declare-fun m!1249645 () Bool)

(assert (=> b!1364926 m!1249645))

(declare-fun m!1249647 () Bool)

(assert (=> b!1364922 m!1249647))

(push 1)

(assert (not b!1364927))

(assert (not b!1364921))

(assert (not b!1364922))

(assert (not b!1364923))

(assert (not start!115472))

(assert (not b!1364926))

(assert (not b!1364924))

(assert (not b!1364925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

