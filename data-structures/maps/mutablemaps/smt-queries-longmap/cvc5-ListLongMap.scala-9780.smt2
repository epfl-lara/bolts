; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115922 () Bool)

(assert start!115922)

(declare-fun b!1369838 () Bool)

(declare-fun res!913422 () Bool)

(declare-fun e!775937 () Bool)

(assert (=> b!1369838 (=> (not res!913422) (not e!775937))))

(declare-datatypes ((List!32144 0))(
  ( (Nil!32141) (Cons!32140 (h!33349 (_ BitVec 64)) (t!46845 List!32144)) )
))
(declare-fun acc!866 () List!32144)

(declare-fun contains!9682 (List!32144 (_ BitVec 64)) Bool)

(assert (=> b!1369838 (= res!913422 (not (contains!9682 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369839 () Bool)

(declare-fun e!775938 () Bool)

(assert (=> b!1369839 (= e!775937 e!775938)))

(declare-fun res!913428 () Bool)

(assert (=> b!1369839 (=> (not res!913428) (not e!775938))))

(declare-datatypes ((array!92959 0))(
  ( (array!92960 (arr!44896 (Array (_ BitVec 32) (_ BitVec 64))) (size!45447 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92959)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92959 (_ BitVec 32) List!32144) Bool)

(assert (=> b!1369839 (= res!913428 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45227 0))(
  ( (Unit!45228) )
))
(declare-fun lt!602293 () Unit!45227)

(declare-fun newAcc!98 () List!32144)

(declare-fun noDuplicateSubseq!260 (List!32144 List!32144) Unit!45227)

(assert (=> b!1369839 (= lt!602293 (noDuplicateSubseq!260 newAcc!98 acc!866))))

(declare-fun b!1369840 () Bool)

(declare-fun res!913424 () Bool)

(assert (=> b!1369840 (=> (not res!913424) (not e!775937))))

(declare-fun noDuplicate!2561 (List!32144) Bool)

(assert (=> b!1369840 (= res!913424 (noDuplicate!2561 acc!866))))

(declare-fun b!1369841 () Bool)

(declare-fun res!913421 () Bool)

(assert (=> b!1369841 (=> (not res!913421) (not e!775937))))

(assert (=> b!1369841 (= res!913421 (not (contains!9682 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369842 () Bool)

(declare-fun res!913427 () Bool)

(assert (=> b!1369842 (=> (not res!913427) (not e!775937))))

(assert (=> b!1369842 (= res!913427 (not (contains!9682 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913425 () Bool)

(assert (=> start!115922 (=> (not res!913425) (not e!775937))))

(assert (=> start!115922 (= res!913425 (and (bvslt (size!45447 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45447 a!3861))))))

(assert (=> start!115922 e!775937))

(declare-fun array_inv!33841 (array!92959) Bool)

(assert (=> start!115922 (array_inv!33841 a!3861)))

(assert (=> start!115922 true))

(declare-fun b!1369843 () Bool)

(declare-fun res!913426 () Bool)

(assert (=> b!1369843 (=> (not res!913426) (not e!775937))))

(assert (=> b!1369843 (= res!913426 (not (contains!9682 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369844 () Bool)

(declare-fun res!913420 () Bool)

(assert (=> b!1369844 (=> (not res!913420) (not e!775938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369844 (= res!913420 (validKeyInArray!0 (select (arr!44896 a!3861) from!3239)))))

(declare-fun b!1369845 () Bool)

(declare-fun res!913423 () Bool)

(assert (=> b!1369845 (=> (not res!913423) (not e!775937))))

(declare-fun subseq!1073 (List!32144 List!32144) Bool)

(assert (=> b!1369845 (= res!913423 (subseq!1073 newAcc!98 acc!866))))

(declare-fun b!1369846 () Bool)

(declare-fun res!913419 () Bool)

(assert (=> b!1369846 (=> (not res!913419) (not e!775938))))

(assert (=> b!1369846 (= res!913419 (bvslt from!3239 (size!45447 a!3861)))))

(declare-fun b!1369847 () Bool)

(assert (=> b!1369847 (= e!775938 false)))

(declare-fun lt!602294 () Bool)

(assert (=> b!1369847 (= lt!602294 (contains!9682 acc!866 (select (arr!44896 a!3861) from!3239)))))

(assert (= (and start!115922 res!913425) b!1369840))

(assert (= (and b!1369840 res!913424) b!1369843))

(assert (= (and b!1369843 res!913426) b!1369838))

(assert (= (and b!1369838 res!913422) b!1369841))

(assert (= (and b!1369841 res!913421) b!1369842))

(assert (= (and b!1369842 res!913427) b!1369845))

(assert (= (and b!1369845 res!913423) b!1369839))

(assert (= (and b!1369839 res!913428) b!1369846))

(assert (= (and b!1369846 res!913419) b!1369844))

(assert (= (and b!1369844 res!913420) b!1369847))

(declare-fun m!1253557 () Bool)

(assert (=> b!1369839 m!1253557))

(declare-fun m!1253559 () Bool)

(assert (=> b!1369839 m!1253559))

(declare-fun m!1253561 () Bool)

(assert (=> b!1369838 m!1253561))

(declare-fun m!1253563 () Bool)

(assert (=> b!1369847 m!1253563))

(assert (=> b!1369847 m!1253563))

(declare-fun m!1253565 () Bool)

(assert (=> b!1369847 m!1253565))

(declare-fun m!1253567 () Bool)

(assert (=> b!1369842 m!1253567))

(declare-fun m!1253569 () Bool)

(assert (=> b!1369840 m!1253569))

(declare-fun m!1253571 () Bool)

(assert (=> b!1369843 m!1253571))

(assert (=> b!1369844 m!1253563))

(assert (=> b!1369844 m!1253563))

(declare-fun m!1253573 () Bool)

(assert (=> b!1369844 m!1253573))

(declare-fun m!1253575 () Bool)

(assert (=> b!1369841 m!1253575))

(declare-fun m!1253577 () Bool)

(assert (=> start!115922 m!1253577))

(declare-fun m!1253579 () Bool)

(assert (=> b!1369845 m!1253579))

(push 1)

