; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115916 () Bool)

(assert start!115916)

(declare-fun b!1369741 () Bool)

(declare-fun res!913329 () Bool)

(declare-fun e!775911 () Bool)

(assert (=> b!1369741 (=> (not res!913329) (not e!775911))))

(declare-datatypes ((array!92953 0))(
  ( (array!92954 (arr!44893 (Array (_ BitVec 32) (_ BitVec 64))) (size!45444 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92953)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32141 0))(
  ( (Nil!32138) (Cons!32137 (h!33346 (_ BitVec 64)) (t!46842 List!32141)) )
))
(declare-fun acc!866 () List!32141)

(declare-fun contains!9679 (List!32141 (_ BitVec 64)) Bool)

(assert (=> b!1369741 (= res!913329 (not (contains!9679 acc!866 (select (arr!44893 a!3861) from!3239))))))

(declare-fun res!913327 () Bool)

(declare-fun e!775912 () Bool)

(assert (=> start!115916 (=> (not res!913327) (not e!775912))))

(assert (=> start!115916 (= res!913327 (and (bvslt (size!45444 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45444 a!3861))))))

(assert (=> start!115916 e!775912))

(declare-fun array_inv!33838 (array!92953) Bool)

(assert (=> start!115916 (array_inv!33838 a!3861)))

(assert (=> start!115916 true))

(declare-fun b!1369742 () Bool)

(declare-fun res!913330 () Bool)

(assert (=> b!1369742 (=> (not res!913330) (not e!775912))))

(declare-fun newAcc!98 () List!32141)

(declare-fun subseq!1070 (List!32141 List!32141) Bool)

(assert (=> b!1369742 (= res!913330 (subseq!1070 newAcc!98 acc!866))))

(declare-fun b!1369743 () Bool)

(declare-fun res!913325 () Bool)

(assert (=> b!1369743 (=> (not res!913325) (not e!775912))))

(declare-fun noDuplicate!2558 (List!32141) Bool)

(assert (=> b!1369743 (= res!913325 (noDuplicate!2558 acc!866))))

(declare-fun b!1369744 () Bool)

(declare-fun res!913323 () Bool)

(assert (=> b!1369744 (=> (not res!913323) (not e!775912))))

(assert (=> b!1369744 (= res!913323 (not (contains!9679 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369745 () Bool)

(assert (=> b!1369745 (= e!775911 (bvslt (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1369746 () Bool)

(declare-fun res!913322 () Bool)

(assert (=> b!1369746 (=> (not res!913322) (not e!775912))))

(assert (=> b!1369746 (= res!913322 (not (contains!9679 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369747 () Bool)

(declare-fun res!913331 () Bool)

(assert (=> b!1369747 (=> (not res!913331) (not e!775912))))

(assert (=> b!1369747 (= res!913331 (not (contains!9679 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369748 () Bool)

(declare-fun res!913326 () Bool)

(assert (=> b!1369748 (=> (not res!913326) (not e!775911))))

(assert (=> b!1369748 (= res!913326 (bvslt from!3239 (size!45444 a!3861)))))

(declare-fun b!1369749 () Bool)

(declare-fun res!913332 () Bool)

(assert (=> b!1369749 (=> (not res!913332) (not e!775911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369749 (= res!913332 (validKeyInArray!0 (select (arr!44893 a!3861) from!3239)))))

(declare-fun b!1369750 () Bool)

(declare-fun res!913324 () Bool)

(assert (=> b!1369750 (=> (not res!913324) (not e!775912))))

(assert (=> b!1369750 (= res!913324 (not (contains!9679 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369751 () Bool)

(assert (=> b!1369751 (= e!775912 e!775911)))

(declare-fun res!913328 () Bool)

(assert (=> b!1369751 (=> (not res!913328) (not e!775911))))

(declare-fun arrayNoDuplicates!0 (array!92953 (_ BitVec 32) List!32141) Bool)

(assert (=> b!1369751 (= res!913328 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45221 0))(
  ( (Unit!45222) )
))
(declare-fun lt!602282 () Unit!45221)

(declare-fun noDuplicateSubseq!257 (List!32141 List!32141) Unit!45221)

(assert (=> b!1369751 (= lt!602282 (noDuplicateSubseq!257 newAcc!98 acc!866))))

(assert (= (and start!115916 res!913327) b!1369743))

(assert (= (and b!1369743 res!913325) b!1369746))

(assert (= (and b!1369746 res!913322) b!1369744))

(assert (= (and b!1369744 res!913323) b!1369747))

(assert (= (and b!1369747 res!913331) b!1369750))

(assert (= (and b!1369750 res!913324) b!1369742))

(assert (= (and b!1369742 res!913330) b!1369751))

(assert (= (and b!1369751 res!913328) b!1369748))

(assert (= (and b!1369748 res!913326) b!1369749))

(assert (= (and b!1369749 res!913332) b!1369741))

(assert (= (and b!1369741 res!913329) b!1369745))

(declare-fun m!1253485 () Bool)

(assert (=> b!1369749 m!1253485))

(assert (=> b!1369749 m!1253485))

(declare-fun m!1253487 () Bool)

(assert (=> b!1369749 m!1253487))

(declare-fun m!1253489 () Bool)

(assert (=> b!1369744 m!1253489))

(declare-fun m!1253491 () Bool)

(assert (=> b!1369747 m!1253491))

(declare-fun m!1253493 () Bool)

(assert (=> b!1369750 m!1253493))

(assert (=> b!1369741 m!1253485))

(assert (=> b!1369741 m!1253485))

(declare-fun m!1253495 () Bool)

(assert (=> b!1369741 m!1253495))

(declare-fun m!1253497 () Bool)

(assert (=> b!1369746 m!1253497))

(declare-fun m!1253499 () Bool)

(assert (=> b!1369743 m!1253499))

(declare-fun m!1253501 () Bool)

(assert (=> b!1369742 m!1253501))

(declare-fun m!1253503 () Bool)

(assert (=> start!115916 m!1253503))

(declare-fun m!1253505 () Bool)

(assert (=> b!1369751 m!1253505))

(declare-fun m!1253507 () Bool)

(assert (=> b!1369751 m!1253507))

(push 1)

