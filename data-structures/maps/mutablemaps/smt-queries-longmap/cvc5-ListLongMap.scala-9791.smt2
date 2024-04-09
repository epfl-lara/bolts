; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116306 () Bool)

(assert start!116306)

(declare-fun b!1372568 () Bool)

(declare-fun res!915961 () Bool)

(declare-fun e!777631 () Bool)

(assert (=> b!1372568 (=> (not res!915961) (not e!777631))))

(declare-datatypes ((List!32177 0))(
  ( (Nil!32174) (Cons!32173 (h!33382 (_ BitVec 64)) (t!46878 List!32177)) )
))
(declare-fun newAcc!98 () List!32177)

(declare-fun acc!866 () List!32177)

(declare-fun subseq!1106 (List!32177 List!32177) Bool)

(assert (=> b!1372568 (= res!915961 (subseq!1106 newAcc!98 acc!866))))

(declare-fun b!1372570 () Bool)

(declare-fun res!915960 () Bool)

(assert (=> b!1372570 (=> (not res!915960) (not e!777631))))

(declare-fun contains!9715 (List!32177 (_ BitVec 64)) Bool)

(assert (=> b!1372570 (= res!915960 (not (contains!9715 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372571 () Bool)

(assert (=> b!1372571 (= e!777631 false)))

(declare-datatypes ((array!93046 0))(
  ( (array!93047 (arr!44929 (Array (_ BitVec 32) (_ BitVec 64))) (size!45480 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93046)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602837 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93046 (_ BitVec 32) List!32177) Bool)

(assert (=> b!1372571 (= lt!602837 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45293 0))(
  ( (Unit!45294) )
))
(declare-fun lt!602836 () Unit!45293)

(declare-fun noDuplicateSubseq!293 (List!32177 List!32177) Unit!45293)

(assert (=> b!1372571 (= lt!602836 (noDuplicateSubseq!293 newAcc!98 acc!866))))

(declare-fun b!1372572 () Bool)

(declare-fun res!915962 () Bool)

(assert (=> b!1372572 (=> (not res!915962) (not e!777631))))

(assert (=> b!1372572 (= res!915962 (not (contains!9715 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915958 () Bool)

(assert (=> start!116306 (=> (not res!915958) (not e!777631))))

(assert (=> start!116306 (= res!915958 (and (bvslt (size!45480 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45480 a!3861))))))

(assert (=> start!116306 e!777631))

(declare-fun array_inv!33874 (array!93046) Bool)

(assert (=> start!116306 (array_inv!33874 a!3861)))

(assert (=> start!116306 true))

(declare-fun b!1372569 () Bool)

(declare-fun res!915963 () Bool)

(assert (=> b!1372569 (=> (not res!915963) (not e!777631))))

(assert (=> b!1372569 (= res!915963 (not (contains!9715 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372573 () Bool)

(declare-fun res!915957 () Bool)

(assert (=> b!1372573 (=> (not res!915957) (not e!777631))))

(assert (=> b!1372573 (= res!915957 (not (contains!9715 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372574 () Bool)

(declare-fun res!915959 () Bool)

(assert (=> b!1372574 (=> (not res!915959) (not e!777631))))

(declare-fun noDuplicate!2594 (List!32177) Bool)

(assert (=> b!1372574 (= res!915959 (noDuplicate!2594 acc!866))))

(assert (= (and start!116306 res!915958) b!1372574))

(assert (= (and b!1372574 res!915959) b!1372569))

(assert (= (and b!1372569 res!915963) b!1372570))

(assert (= (and b!1372570 res!915960) b!1372573))

(assert (= (and b!1372573 res!915957) b!1372572))

(assert (= (and b!1372572 res!915962) b!1372568))

(assert (= (and b!1372568 res!915961) b!1372571))

(declare-fun m!1256011 () Bool)

(assert (=> b!1372572 m!1256011))

(declare-fun m!1256013 () Bool)

(assert (=> b!1372573 m!1256013))

(declare-fun m!1256015 () Bool)

(assert (=> b!1372570 m!1256015))

(declare-fun m!1256017 () Bool)

(assert (=> start!116306 m!1256017))

(declare-fun m!1256019 () Bool)

(assert (=> b!1372571 m!1256019))

(declare-fun m!1256021 () Bool)

(assert (=> b!1372571 m!1256021))

(declare-fun m!1256023 () Bool)

(assert (=> b!1372574 m!1256023))

(declare-fun m!1256025 () Bool)

(assert (=> b!1372569 m!1256025))

(declare-fun m!1256027 () Bool)

(assert (=> b!1372568 m!1256027))

(push 1)

(assert (not b!1372569))

(assert (not b!1372572))

(assert (not b!1372568))

(assert (not b!1372570))

(assert (not start!116306))

(assert (not b!1372571))

(assert (not b!1372574))

(assert (not b!1372573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

