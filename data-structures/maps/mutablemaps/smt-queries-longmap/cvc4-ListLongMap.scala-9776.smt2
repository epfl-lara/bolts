; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115902 () Bool)

(assert start!115902)

(declare-fun b!1369559 () Bool)

(declare-fun res!913144 () Bool)

(declare-fun e!775857 () Bool)

(assert (=> b!1369559 (=> (not res!913144) (not e!775857))))

(declare-datatypes ((List!32134 0))(
  ( (Nil!32131) (Cons!32130 (h!33339 (_ BitVec 64)) (t!46835 List!32134)) )
))
(declare-fun newAcc!98 () List!32134)

(declare-fun acc!866 () List!32134)

(declare-fun subseq!1063 (List!32134 List!32134) Bool)

(assert (=> b!1369559 (= res!913144 (subseq!1063 newAcc!98 acc!866))))

(declare-fun res!913141 () Bool)

(assert (=> start!115902 (=> (not res!913141) (not e!775857))))

(declare-datatypes ((array!92939 0))(
  ( (array!92940 (arr!44886 (Array (_ BitVec 32) (_ BitVec 64))) (size!45437 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92939)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115902 (= res!913141 (and (bvslt (size!45437 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45437 a!3861))))))

(assert (=> start!115902 e!775857))

(declare-fun array_inv!33831 (array!92939) Bool)

(assert (=> start!115902 (array_inv!33831 a!3861)))

(assert (=> start!115902 true))

(declare-fun b!1369560 () Bool)

(declare-fun res!913145 () Bool)

(assert (=> b!1369560 (=> (not res!913145) (not e!775857))))

(declare-fun contains!9672 (List!32134 (_ BitVec 64)) Bool)

(assert (=> b!1369560 (= res!913145 (not (contains!9672 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369561 () Bool)

(assert (=> b!1369561 (= e!775857 false)))

(declare-fun lt!602242 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92939 (_ BitVec 32) List!32134) Bool)

(assert (=> b!1369561 (= lt!602242 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45207 0))(
  ( (Unit!45208) )
))
(declare-fun lt!602243 () Unit!45207)

(declare-fun noDuplicateSubseq!250 (List!32134 List!32134) Unit!45207)

(assert (=> b!1369561 (= lt!602243 (noDuplicateSubseq!250 newAcc!98 acc!866))))

(declare-fun b!1369562 () Bool)

(declare-fun res!913142 () Bool)

(assert (=> b!1369562 (=> (not res!913142) (not e!775857))))

(assert (=> b!1369562 (= res!913142 (not (contains!9672 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369563 () Bool)

(declare-fun res!913146 () Bool)

(assert (=> b!1369563 (=> (not res!913146) (not e!775857))))

(assert (=> b!1369563 (= res!913146 (not (contains!9672 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369564 () Bool)

(declare-fun res!913143 () Bool)

(assert (=> b!1369564 (=> (not res!913143) (not e!775857))))

(declare-fun noDuplicate!2551 (List!32134) Bool)

(assert (=> b!1369564 (= res!913143 (noDuplicate!2551 acc!866))))

(declare-fun b!1369565 () Bool)

(declare-fun res!913140 () Bool)

(assert (=> b!1369565 (=> (not res!913140) (not e!775857))))

(assert (=> b!1369565 (= res!913140 (not (contains!9672 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115902 res!913141) b!1369564))

(assert (= (and b!1369564 res!913143) b!1369560))

(assert (= (and b!1369560 res!913145) b!1369563))

(assert (= (and b!1369563 res!913146) b!1369565))

(assert (= (and b!1369565 res!913140) b!1369562))

(assert (= (and b!1369562 res!913142) b!1369559))

(assert (= (and b!1369559 res!913144) b!1369561))

(declare-fun m!1253341 () Bool)

(assert (=> b!1369564 m!1253341))

(declare-fun m!1253343 () Bool)

(assert (=> b!1369560 m!1253343))

(declare-fun m!1253345 () Bool)

(assert (=> b!1369562 m!1253345))

(declare-fun m!1253347 () Bool)

(assert (=> b!1369565 m!1253347))

(declare-fun m!1253349 () Bool)

(assert (=> b!1369561 m!1253349))

(declare-fun m!1253351 () Bool)

(assert (=> b!1369561 m!1253351))

(declare-fun m!1253353 () Bool)

(assert (=> b!1369559 m!1253353))

(declare-fun m!1253355 () Bool)

(assert (=> b!1369563 m!1253355))

(declare-fun m!1253357 () Bool)

(assert (=> start!115902 m!1253357))

(push 1)

(assert (not start!115902))

(assert (not b!1369561))

(assert (not b!1369564))

(assert (not b!1369559))

(assert (not b!1369562))

(assert (not b!1369565))

(assert (not b!1369563))

(assert (not b!1369560))

(check-sat)

(pop 1)

