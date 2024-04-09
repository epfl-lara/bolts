; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115844 () Bool)

(assert start!115844)

(declare-fun b!1369142 () Bool)

(declare-fun res!912741 () Bool)

(declare-fun e!775632 () Bool)

(assert (=> b!1369142 (=> (not res!912741) (not e!775632))))

(declare-datatypes ((List!32123 0))(
  ( (Nil!32120) (Cons!32119 (h!33328 (_ BitVec 64)) (t!46824 List!32123)) )
))
(declare-fun acc!866 () List!32123)

(declare-fun noDuplicate!2540 (List!32123) Bool)

(assert (=> b!1369142 (= res!912741 (noDuplicate!2540 acc!866))))

(declare-fun b!1369143 () Bool)

(declare-fun res!912745 () Bool)

(assert (=> b!1369143 (=> (not res!912745) (not e!775632))))

(declare-fun newAcc!98 () List!32123)

(declare-fun contains!9661 (List!32123 (_ BitVec 64)) Bool)

(assert (=> b!1369143 (= res!912745 (not (contains!9661 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369144 () Bool)

(declare-fun res!912747 () Bool)

(assert (=> b!1369144 (=> (not res!912747) (not e!775632))))

(assert (=> b!1369144 (= res!912747 (not (contains!9661 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912743 () Bool)

(assert (=> start!115844 (=> (not res!912743) (not e!775632))))

(declare-datatypes ((array!92914 0))(
  ( (array!92915 (arr!44875 (Array (_ BitVec 32) (_ BitVec 64))) (size!45426 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92914)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115844 (= res!912743 (and (bvslt (size!45426 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45426 a!3861))))))

(assert (=> start!115844 e!775632))

(declare-fun array_inv!33820 (array!92914) Bool)

(assert (=> start!115844 (array_inv!33820 a!3861)))

(assert (=> start!115844 true))

(declare-fun b!1369145 () Bool)

(declare-fun res!912746 () Bool)

(assert (=> b!1369145 (=> (not res!912746) (not e!775632))))

(declare-fun subseq!1052 (List!32123 List!32123) Bool)

(assert (=> b!1369145 (= res!912746 (subseq!1052 newAcc!98 acc!866))))

(declare-fun b!1369146 () Bool)

(declare-fun res!912744 () Bool)

(assert (=> b!1369146 (=> (not res!912744) (not e!775632))))

(assert (=> b!1369146 (= res!912744 (not (contains!9661 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369147 () Bool)

(assert (=> b!1369147 (= e!775632 false)))

(declare-fun lt!602158 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92914 (_ BitVec 32) List!32123) Bool)

(assert (=> b!1369147 (= lt!602158 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45185 0))(
  ( (Unit!45186) )
))
(declare-fun lt!602159 () Unit!45185)

(declare-fun noDuplicateSubseq!239 (List!32123 List!32123) Unit!45185)

(assert (=> b!1369147 (= lt!602159 (noDuplicateSubseq!239 newAcc!98 acc!866))))

(declare-fun b!1369148 () Bool)

(declare-fun res!912742 () Bool)

(assert (=> b!1369148 (=> (not res!912742) (not e!775632))))

(assert (=> b!1369148 (= res!912742 (not (contains!9661 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115844 res!912743) b!1369142))

(assert (= (and b!1369142 res!912741) b!1369146))

(assert (= (and b!1369146 res!912744) b!1369144))

(assert (= (and b!1369144 res!912747) b!1369148))

(assert (= (and b!1369148 res!912742) b!1369143))

(assert (= (and b!1369143 res!912745) b!1369145))

(assert (= (and b!1369145 res!912746) b!1369147))

(declare-fun m!1253005 () Bool)

(assert (=> b!1369144 m!1253005))

(declare-fun m!1253007 () Bool)

(assert (=> b!1369147 m!1253007))

(declare-fun m!1253009 () Bool)

(assert (=> b!1369147 m!1253009))

(declare-fun m!1253011 () Bool)

(assert (=> b!1369148 m!1253011))

(declare-fun m!1253013 () Bool)

(assert (=> b!1369142 m!1253013))

(declare-fun m!1253015 () Bool)

(assert (=> b!1369145 m!1253015))

(declare-fun m!1253017 () Bool)

(assert (=> b!1369146 m!1253017))

(declare-fun m!1253019 () Bool)

(assert (=> b!1369143 m!1253019))

(declare-fun m!1253021 () Bool)

(assert (=> start!115844 m!1253021))

(push 1)

(assert (not start!115844))

(assert (not b!1369143))

(assert (not b!1369142))

(assert (not b!1369148))

(assert (not b!1369144))

(assert (not b!1369147))

(assert (not b!1369146))

(assert (not b!1369145))

(check-sat)

(pop 1)

