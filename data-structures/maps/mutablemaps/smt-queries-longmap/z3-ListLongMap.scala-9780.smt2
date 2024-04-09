; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115924 () Bool)

(assert start!115924)

(declare-fun b!1369868 () Bool)

(declare-fun res!913451 () Bool)

(declare-fun e!775948 () Bool)

(assert (=> b!1369868 (=> (not res!913451) (not e!775948))))

(declare-datatypes ((List!32145 0))(
  ( (Nil!32142) (Cons!32141 (h!33350 (_ BitVec 64)) (t!46846 List!32145)) )
))
(declare-fun newAcc!98 () List!32145)

(declare-fun contains!9683 (List!32145 (_ BitVec 64)) Bool)

(assert (=> b!1369868 (= res!913451 (not (contains!9683 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369869 () Bool)

(declare-fun res!913455 () Bool)

(declare-fun e!775946 () Bool)

(assert (=> b!1369869 (=> (not res!913455) (not e!775946))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92961 0))(
  ( (array!92962 (arr!44897 (Array (_ BitVec 32) (_ BitVec 64))) (size!45448 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92961)

(assert (=> b!1369869 (= res!913455 (bvslt from!3239 (size!45448 a!3861)))))

(declare-fun b!1369870 () Bool)

(declare-fun res!913453 () Bool)

(assert (=> b!1369870 (=> (not res!913453) (not e!775946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369870 (= res!913453 (validKeyInArray!0 (select (arr!44897 a!3861) from!3239)))))

(declare-fun b!1369871 () Bool)

(declare-fun res!913452 () Bool)

(assert (=> b!1369871 (=> (not res!913452) (not e!775948))))

(declare-fun acc!866 () List!32145)

(declare-fun subseq!1074 (List!32145 List!32145) Bool)

(assert (=> b!1369871 (= res!913452 (subseq!1074 newAcc!98 acc!866))))

(declare-fun b!1369872 () Bool)

(assert (=> b!1369872 (= e!775946 false)))

(declare-fun lt!602300 () Bool)

(assert (=> b!1369872 (= lt!602300 (contains!9683 acc!866 (select (arr!44897 a!3861) from!3239)))))

(declare-fun res!913449 () Bool)

(assert (=> start!115924 (=> (not res!913449) (not e!775948))))

(assert (=> start!115924 (= res!913449 (and (bvslt (size!45448 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45448 a!3861))))))

(assert (=> start!115924 e!775948))

(declare-fun array_inv!33842 (array!92961) Bool)

(assert (=> start!115924 (array_inv!33842 a!3861)))

(assert (=> start!115924 true))

(declare-fun b!1369873 () Bool)

(declare-fun res!913457 () Bool)

(assert (=> b!1369873 (=> (not res!913457) (not e!775948))))

(assert (=> b!1369873 (= res!913457 (not (contains!9683 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369874 () Bool)

(declare-fun res!913454 () Bool)

(assert (=> b!1369874 (=> (not res!913454) (not e!775948))))

(assert (=> b!1369874 (= res!913454 (not (contains!9683 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369875 () Bool)

(declare-fun res!913456 () Bool)

(assert (=> b!1369875 (=> (not res!913456) (not e!775948))))

(declare-fun noDuplicate!2562 (List!32145) Bool)

(assert (=> b!1369875 (= res!913456 (noDuplicate!2562 acc!866))))

(declare-fun b!1369876 () Bool)

(declare-fun res!913458 () Bool)

(assert (=> b!1369876 (=> (not res!913458) (not e!775948))))

(assert (=> b!1369876 (= res!913458 (not (contains!9683 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369877 () Bool)

(assert (=> b!1369877 (= e!775948 e!775946)))

(declare-fun res!913450 () Bool)

(assert (=> b!1369877 (=> (not res!913450) (not e!775946))))

(declare-fun arrayNoDuplicates!0 (array!92961 (_ BitVec 32) List!32145) Bool)

(assert (=> b!1369877 (= res!913450 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45229 0))(
  ( (Unit!45230) )
))
(declare-fun lt!602299 () Unit!45229)

(declare-fun noDuplicateSubseq!261 (List!32145 List!32145) Unit!45229)

(assert (=> b!1369877 (= lt!602299 (noDuplicateSubseq!261 newAcc!98 acc!866))))

(assert (= (and start!115924 res!913449) b!1369875))

(assert (= (and b!1369875 res!913456) b!1369876))

(assert (= (and b!1369876 res!913458) b!1369873))

(assert (= (and b!1369873 res!913457) b!1369868))

(assert (= (and b!1369868 res!913451) b!1369874))

(assert (= (and b!1369874 res!913454) b!1369871))

(assert (= (and b!1369871 res!913452) b!1369877))

(assert (= (and b!1369877 res!913450) b!1369869))

(assert (= (and b!1369869 res!913455) b!1369870))

(assert (= (and b!1369870 res!913453) b!1369872))

(declare-fun m!1253581 () Bool)

(assert (=> b!1369876 m!1253581))

(declare-fun m!1253583 () Bool)

(assert (=> b!1369872 m!1253583))

(assert (=> b!1369872 m!1253583))

(declare-fun m!1253585 () Bool)

(assert (=> b!1369872 m!1253585))

(assert (=> b!1369870 m!1253583))

(assert (=> b!1369870 m!1253583))

(declare-fun m!1253587 () Bool)

(assert (=> b!1369870 m!1253587))

(declare-fun m!1253589 () Bool)

(assert (=> b!1369874 m!1253589))

(declare-fun m!1253591 () Bool)

(assert (=> b!1369873 m!1253591))

(declare-fun m!1253593 () Bool)

(assert (=> b!1369877 m!1253593))

(declare-fun m!1253595 () Bool)

(assert (=> b!1369877 m!1253595))

(declare-fun m!1253597 () Bool)

(assert (=> start!115924 m!1253597))

(declare-fun m!1253599 () Bool)

(assert (=> b!1369868 m!1253599))

(declare-fun m!1253601 () Bool)

(assert (=> b!1369871 m!1253601))

(declare-fun m!1253603 () Bool)

(assert (=> b!1369875 m!1253603))

(check-sat (not b!1369872) (not b!1369873) (not b!1369876) (not b!1369868) (not b!1369871) (not b!1369870) (not start!115924) (not b!1369877) (not b!1369874) (not b!1369875))
(check-sat)
