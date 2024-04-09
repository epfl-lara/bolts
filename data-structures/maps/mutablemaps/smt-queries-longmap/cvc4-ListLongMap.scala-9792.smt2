; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116316 () Bool)

(assert start!116316)

(declare-fun b!1372673 () Bool)

(declare-fun res!916066 () Bool)

(declare-fun e!777660 () Bool)

(assert (=> b!1372673 (=> (not res!916066) (not e!777660))))

(declare-datatypes ((List!32182 0))(
  ( (Nil!32179) (Cons!32178 (h!33387 (_ BitVec 64)) (t!46883 List!32182)) )
))
(declare-fun newAcc!98 () List!32182)

(declare-fun contains!9720 (List!32182 (_ BitVec 64)) Bool)

(assert (=> b!1372673 (= res!916066 (not (contains!9720 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372674 () Bool)

(declare-fun res!916063 () Bool)

(assert (=> b!1372674 (=> (not res!916063) (not e!777660))))

(assert (=> b!1372674 (= res!916063 (not (contains!9720 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372675 () Bool)

(declare-fun res!916067 () Bool)

(assert (=> b!1372675 (=> (not res!916067) (not e!777660))))

(declare-fun acc!866 () List!32182)

(declare-fun subseq!1111 (List!32182 List!32182) Bool)

(assert (=> b!1372675 (= res!916067 (subseq!1111 newAcc!98 acc!866))))

(declare-fun b!1372676 () Bool)

(assert (=> b!1372676 (= e!777660 false)))

(declare-datatypes ((array!93056 0))(
  ( (array!93057 (arr!44934 (Array (_ BitVec 32) (_ BitVec 64))) (size!45485 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93056)

(declare-fun lt!602866 () Bool)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!93056 (_ BitVec 32) List!32182) Bool)

(assert (=> b!1372676 (= lt!602866 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45303 0))(
  ( (Unit!45304) )
))
(declare-fun lt!602867 () Unit!45303)

(declare-fun noDuplicateSubseq!298 (List!32182 List!32182) Unit!45303)

(assert (=> b!1372676 (= lt!602867 (noDuplicateSubseq!298 newAcc!98 acc!866))))

(declare-fun b!1372677 () Bool)

(declare-fun res!916065 () Bool)

(assert (=> b!1372677 (=> (not res!916065) (not e!777660))))

(assert (=> b!1372677 (= res!916065 (not (contains!9720 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372679 () Bool)

(declare-fun res!916062 () Bool)

(assert (=> b!1372679 (=> (not res!916062) (not e!777660))))

(assert (=> b!1372679 (= res!916062 (not (contains!9720 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372678 () Bool)

(declare-fun res!916064 () Bool)

(assert (=> b!1372678 (=> (not res!916064) (not e!777660))))

(declare-fun noDuplicate!2599 (List!32182) Bool)

(assert (=> b!1372678 (= res!916064 (noDuplicate!2599 acc!866))))

(declare-fun res!916068 () Bool)

(assert (=> start!116316 (=> (not res!916068) (not e!777660))))

(assert (=> start!116316 (= res!916068 (and (bvslt (size!45485 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45485 a!3861))))))

(assert (=> start!116316 e!777660))

(declare-fun array_inv!33879 (array!93056) Bool)

(assert (=> start!116316 (array_inv!33879 a!3861)))

(assert (=> start!116316 true))

(assert (= (and start!116316 res!916068) b!1372678))

(assert (= (and b!1372678 res!916064) b!1372679))

(assert (= (and b!1372679 res!916062) b!1372677))

(assert (= (and b!1372677 res!916065) b!1372674))

(assert (= (and b!1372674 res!916063) b!1372673))

(assert (= (and b!1372673 res!916066) b!1372675))

(assert (= (and b!1372675 res!916067) b!1372676))

(declare-fun m!1256101 () Bool)

(assert (=> b!1372676 m!1256101))

(declare-fun m!1256103 () Bool)

(assert (=> b!1372676 m!1256103))

(declare-fun m!1256105 () Bool)

(assert (=> b!1372677 m!1256105))

(declare-fun m!1256107 () Bool)

(assert (=> b!1372674 m!1256107))

(declare-fun m!1256109 () Bool)

(assert (=> b!1372678 m!1256109))

(declare-fun m!1256111 () Bool)

(assert (=> b!1372675 m!1256111))

(declare-fun m!1256113 () Bool)

(assert (=> b!1372679 m!1256113))

(declare-fun m!1256115 () Bool)

(assert (=> start!116316 m!1256115))

(declare-fun m!1256117 () Bool)

(assert (=> b!1372673 m!1256117))

(push 1)

(assert (not b!1372673))

(assert (not b!1372678))

(assert (not b!1372674))

(assert (not b!1372676))

(assert (not start!116316))

(assert (not b!1372675))

(assert (not b!1372679))

(assert (not b!1372677))

(check-sat)

