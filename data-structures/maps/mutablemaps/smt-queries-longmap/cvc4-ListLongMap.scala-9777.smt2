; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115908 () Bool)

(assert start!115908)

(declare-fun res!913204 () Bool)

(declare-fun e!775875 () Bool)

(assert (=> start!115908 (=> (not res!913204) (not e!775875))))

(declare-datatypes ((array!92945 0))(
  ( (array!92946 (arr!44889 (Array (_ BitVec 32) (_ BitVec 64))) (size!45440 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92945)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115908 (= res!913204 (and (bvslt (size!45440 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45440 a!3861))))))

(assert (=> start!115908 e!775875))

(declare-fun array_inv!33834 (array!92945) Bool)

(assert (=> start!115908 (array_inv!33834 a!3861)))

(assert (=> start!115908 true))

(declare-fun b!1369622 () Bool)

(declare-fun res!913208 () Bool)

(assert (=> b!1369622 (=> (not res!913208) (not e!775875))))

(declare-datatypes ((List!32137 0))(
  ( (Nil!32134) (Cons!32133 (h!33342 (_ BitVec 64)) (t!46838 List!32137)) )
))
(declare-fun newAcc!98 () List!32137)

(declare-fun contains!9675 (List!32137 (_ BitVec 64)) Bool)

(assert (=> b!1369622 (= res!913208 (not (contains!9675 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369623 () Bool)

(declare-fun res!913203 () Bool)

(assert (=> b!1369623 (=> (not res!913203) (not e!775875))))

(declare-fun acc!866 () List!32137)

(assert (=> b!1369623 (= res!913203 (not (contains!9675 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369624 () Bool)

(declare-fun res!913205 () Bool)

(assert (=> b!1369624 (=> (not res!913205) (not e!775875))))

(assert (=> b!1369624 (= res!913205 (not (contains!9675 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369625 () Bool)

(declare-fun res!913207 () Bool)

(assert (=> b!1369625 (=> (not res!913207) (not e!775875))))

(declare-fun noDuplicate!2554 (List!32137) Bool)

(assert (=> b!1369625 (= res!913207 (noDuplicate!2554 acc!866))))

(declare-fun b!1369626 () Bool)

(declare-fun res!913206 () Bool)

(assert (=> b!1369626 (=> (not res!913206) (not e!775875))))

(declare-fun subseq!1066 (List!32137 List!32137) Bool)

(assert (=> b!1369626 (= res!913206 (subseq!1066 newAcc!98 acc!866))))

(declare-fun b!1369627 () Bool)

(assert (=> b!1369627 (= e!775875 false)))

(declare-fun lt!602260 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92945 (_ BitVec 32) List!32137) Bool)

(assert (=> b!1369627 (= lt!602260 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45213 0))(
  ( (Unit!45214) )
))
(declare-fun lt!602261 () Unit!45213)

(declare-fun noDuplicateSubseq!253 (List!32137 List!32137) Unit!45213)

(assert (=> b!1369627 (= lt!602261 (noDuplicateSubseq!253 newAcc!98 acc!866))))

(declare-fun b!1369628 () Bool)

(declare-fun res!913209 () Bool)

(assert (=> b!1369628 (=> (not res!913209) (not e!775875))))

(assert (=> b!1369628 (= res!913209 (not (contains!9675 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115908 res!913204) b!1369625))

(assert (= (and b!1369625 res!913207) b!1369624))

(assert (= (and b!1369624 res!913205) b!1369623))

(assert (= (and b!1369623 res!913203) b!1369628))

(assert (= (and b!1369628 res!913209) b!1369622))

(assert (= (and b!1369622 res!913208) b!1369626))

(assert (= (and b!1369626 res!913206) b!1369627))

(declare-fun m!1253395 () Bool)

(assert (=> b!1369626 m!1253395))

(declare-fun m!1253397 () Bool)

(assert (=> b!1369628 m!1253397))

(declare-fun m!1253399 () Bool)

(assert (=> b!1369627 m!1253399))

(declare-fun m!1253401 () Bool)

(assert (=> b!1369627 m!1253401))

(declare-fun m!1253403 () Bool)

(assert (=> b!1369622 m!1253403))

(declare-fun m!1253405 () Bool)

(assert (=> b!1369623 m!1253405))

(declare-fun m!1253407 () Bool)

(assert (=> b!1369625 m!1253407))

(declare-fun m!1253409 () Bool)

(assert (=> start!115908 m!1253409))

(declare-fun m!1253411 () Bool)

(assert (=> b!1369624 m!1253411))

(push 1)

(assert (not b!1369628))

(assert (not b!1369623))

(assert (not b!1369625))

(assert (not b!1369626))

(assert (not start!115908))

(assert (not b!1369624))

(assert (not b!1369627))

(assert (not b!1369622))

(check-sat)

(pop 1)

