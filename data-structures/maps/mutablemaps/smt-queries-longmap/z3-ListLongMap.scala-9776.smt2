; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115900 () Bool)

(assert start!115900)

(declare-fun b!1369538 () Bool)

(declare-fun res!913123 () Bool)

(declare-fun e!775851 () Bool)

(assert (=> b!1369538 (=> (not res!913123) (not e!775851))))

(declare-datatypes ((List!32133 0))(
  ( (Nil!32130) (Cons!32129 (h!33338 (_ BitVec 64)) (t!46834 List!32133)) )
))
(declare-fun acc!866 () List!32133)

(declare-fun noDuplicate!2550 (List!32133) Bool)

(assert (=> b!1369538 (= res!913123 (noDuplicate!2550 acc!866))))

(declare-fun b!1369539 () Bool)

(declare-fun res!913120 () Bool)

(assert (=> b!1369539 (=> (not res!913120) (not e!775851))))

(declare-fun contains!9671 (List!32133 (_ BitVec 64)) Bool)

(assert (=> b!1369539 (= res!913120 (not (contains!9671 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913119 () Bool)

(assert (=> start!115900 (=> (not res!913119) (not e!775851))))

(declare-datatypes ((array!92937 0))(
  ( (array!92938 (arr!44885 (Array (_ BitVec 32) (_ BitVec 64))) (size!45436 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92937)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115900 (= res!913119 (and (bvslt (size!45436 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45436 a!3861))))))

(assert (=> start!115900 e!775851))

(declare-fun array_inv!33830 (array!92937) Bool)

(assert (=> start!115900 (array_inv!33830 a!3861)))

(assert (=> start!115900 true))

(declare-fun b!1369540 () Bool)

(declare-fun res!913124 () Bool)

(assert (=> b!1369540 (=> (not res!913124) (not e!775851))))

(declare-fun newAcc!98 () List!32133)

(declare-fun subseq!1062 (List!32133 List!32133) Bool)

(assert (=> b!1369540 (= res!913124 (subseq!1062 newAcc!98 acc!866))))

(declare-fun b!1369541 () Bool)

(declare-fun res!913125 () Bool)

(assert (=> b!1369541 (=> (not res!913125) (not e!775851))))

(assert (=> b!1369541 (= res!913125 (not (contains!9671 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369542 () Bool)

(declare-fun res!913121 () Bool)

(assert (=> b!1369542 (=> (not res!913121) (not e!775851))))

(assert (=> b!1369542 (= res!913121 (not (contains!9671 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369543 () Bool)

(declare-fun res!913122 () Bool)

(assert (=> b!1369543 (=> (not res!913122) (not e!775851))))

(assert (=> b!1369543 (= res!913122 (not (contains!9671 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369544 () Bool)

(assert (=> b!1369544 (= e!775851 false)))

(declare-fun lt!602237 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92937 (_ BitVec 32) List!32133) Bool)

(assert (=> b!1369544 (= lt!602237 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45205 0))(
  ( (Unit!45206) )
))
(declare-fun lt!602236 () Unit!45205)

(declare-fun noDuplicateSubseq!249 (List!32133 List!32133) Unit!45205)

(assert (=> b!1369544 (= lt!602236 (noDuplicateSubseq!249 newAcc!98 acc!866))))

(assert (= (and start!115900 res!913119) b!1369538))

(assert (= (and b!1369538 res!913123) b!1369542))

(assert (= (and b!1369542 res!913121) b!1369539))

(assert (= (and b!1369539 res!913120) b!1369541))

(assert (= (and b!1369541 res!913125) b!1369543))

(assert (= (and b!1369543 res!913122) b!1369540))

(assert (= (and b!1369540 res!913124) b!1369544))

(declare-fun m!1253323 () Bool)

(assert (=> b!1369544 m!1253323))

(declare-fun m!1253325 () Bool)

(assert (=> b!1369544 m!1253325))

(declare-fun m!1253327 () Bool)

(assert (=> b!1369542 m!1253327))

(declare-fun m!1253329 () Bool)

(assert (=> b!1369543 m!1253329))

(declare-fun m!1253331 () Bool)

(assert (=> b!1369540 m!1253331))

(declare-fun m!1253333 () Bool)

(assert (=> b!1369539 m!1253333))

(declare-fun m!1253335 () Bool)

(assert (=> b!1369538 m!1253335))

(declare-fun m!1253337 () Bool)

(assert (=> start!115900 m!1253337))

(declare-fun m!1253339 () Bool)

(assert (=> b!1369541 m!1253339))

(check-sat (not b!1369540) (not b!1369543) (not b!1369538) (not b!1369544) (not b!1369541) (not b!1369539) (not start!115900) (not b!1369542))
(check-sat)
