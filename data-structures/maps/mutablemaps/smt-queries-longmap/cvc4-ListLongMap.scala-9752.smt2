; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115584 () Bool)

(assert start!115584)

(declare-fun b!1366645 () Bool)

(declare-fun res!910320 () Bool)

(declare-fun e!774622 () Bool)

(assert (=> b!1366645 (=> (not res!910320) (not e!774622))))

(declare-datatypes ((List!32062 0))(
  ( (Nil!32059) (Cons!32058 (h!33267 (_ BitVec 64)) (t!46763 List!32062)) )
))
(declare-fun acc!866 () List!32062)

(declare-fun contains!9600 (List!32062 (_ BitVec 64)) Bool)

(assert (=> b!1366645 (= res!910320 (not (contains!9600 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366646 () Bool)

(declare-fun res!910323 () Bool)

(assert (=> b!1366646 (=> (not res!910323) (not e!774622))))

(assert (=> b!1366646 (= res!910323 (not (contains!9600 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366647 () Bool)

(declare-fun res!910318 () Bool)

(declare-fun e!774621 () Bool)

(assert (=> b!1366647 (=> (not res!910318) (not e!774621))))

(declare-datatypes ((array!92783 0))(
  ( (array!92784 (arr!44814 (Array (_ BitVec 32) (_ BitVec 64))) (size!45365 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92783)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366647 (= res!910318 (validKeyInArray!0 (select (arr!44814 a!3861) from!3239)))))

(declare-fun b!1366648 () Bool)

(declare-fun res!910319 () Bool)

(assert (=> b!1366648 (=> (not res!910319) (not e!774621))))

(assert (=> b!1366648 (= res!910319 (bvslt from!3239 (size!45365 a!3861)))))

(declare-fun res!910322 () Bool)

(assert (=> start!115584 (=> (not res!910322) (not e!774622))))

(assert (=> start!115584 (= res!910322 (and (bvslt (size!45365 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45365 a!3861))))))

(assert (=> start!115584 e!774622))

(declare-fun array_inv!33759 (array!92783) Bool)

(assert (=> start!115584 (array_inv!33759 a!3861)))

(assert (=> start!115584 true))

(declare-fun b!1366649 () Bool)

(declare-fun res!910324 () Bool)

(assert (=> b!1366649 (=> (not res!910324) (not e!774622))))

(declare-fun newAcc!98 () List!32062)

(declare-fun subseq!991 (List!32062 List!32062) Bool)

(assert (=> b!1366649 (= res!910324 (subseq!991 newAcc!98 acc!866))))

(declare-fun b!1366650 () Bool)

(declare-fun res!910317 () Bool)

(assert (=> b!1366650 (=> (not res!910317) (not e!774621))))

(assert (=> b!1366650 (= res!910317 (not (contains!9600 acc!866 (select (arr!44814 a!3861) from!3239))))))

(declare-fun b!1366651 () Bool)

(assert (=> b!1366651 (= e!774622 e!774621)))

(declare-fun res!910321 () Bool)

(assert (=> b!1366651 (=> (not res!910321) (not e!774621))))

(declare-fun arrayNoDuplicates!0 (array!92783 (_ BitVec 32) List!32062) Bool)

(assert (=> b!1366651 (= res!910321 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45063 0))(
  ( (Unit!45064) )
))
(declare-fun lt!601591 () Unit!45063)

(declare-fun noDuplicateSubseq!178 (List!32062 List!32062) Unit!45063)

(assert (=> b!1366651 (= lt!601591 (noDuplicateSubseq!178 newAcc!98 acc!866))))

(declare-fun b!1366652 () Bool)

(declare-fun res!910326 () Bool)

(assert (=> b!1366652 (=> (not res!910326) (not e!774622))))

(assert (=> b!1366652 (= res!910326 (not (contains!9600 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366653 () Bool)

(assert (=> b!1366653 (= e!774621 (not true))))

(declare-fun lt!601593 () Unit!45063)

(declare-fun lt!601592 () List!32062)

(declare-fun lt!601594 () List!32062)

(assert (=> b!1366653 (= lt!601593 (noDuplicateSubseq!178 lt!601592 lt!601594))))

(assert (=> b!1366653 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601592)))

(declare-fun lt!601595 () Unit!45063)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92783 List!32062 List!32062 (_ BitVec 32)) Unit!45063)

(assert (=> b!1366653 (= lt!601595 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601594 lt!601592 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366653 (= lt!601592 (Cons!32058 (select (arr!44814 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366653 (= lt!601594 (Cons!32058 (select (arr!44814 a!3861) from!3239) acc!866))))

(declare-fun b!1366654 () Bool)

(declare-fun res!910316 () Bool)

(assert (=> b!1366654 (=> (not res!910316) (not e!774622))))

(declare-fun noDuplicate!2479 (List!32062) Bool)

(assert (=> b!1366654 (= res!910316 (noDuplicate!2479 acc!866))))

(declare-fun b!1366655 () Bool)

(declare-fun res!910325 () Bool)

(assert (=> b!1366655 (=> (not res!910325) (not e!774622))))

(assert (=> b!1366655 (= res!910325 (not (contains!9600 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115584 res!910322) b!1366654))

(assert (= (and b!1366654 res!910316) b!1366646))

(assert (= (and b!1366646 res!910323) b!1366645))

(assert (= (and b!1366645 res!910320) b!1366655))

(assert (= (and b!1366655 res!910325) b!1366652))

(assert (= (and b!1366652 res!910326) b!1366649))

(assert (= (and b!1366649 res!910324) b!1366651))

(assert (= (and b!1366651 res!910321) b!1366648))

(assert (= (and b!1366648 res!910319) b!1366647))

(assert (= (and b!1366647 res!910318) b!1366650))

(assert (= (and b!1366650 res!910317) b!1366653))

(declare-fun m!1250965 () Bool)

(assert (=> b!1366645 m!1250965))

(declare-fun m!1250967 () Bool)

(assert (=> b!1366655 m!1250967))

(declare-fun m!1250969 () Bool)

(assert (=> b!1366652 m!1250969))

(declare-fun m!1250971 () Bool)

(assert (=> start!115584 m!1250971))

(declare-fun m!1250973 () Bool)

(assert (=> b!1366647 m!1250973))

(assert (=> b!1366647 m!1250973))

(declare-fun m!1250975 () Bool)

(assert (=> b!1366647 m!1250975))

(declare-fun m!1250977 () Bool)

(assert (=> b!1366649 m!1250977))

(declare-fun m!1250979 () Bool)

(assert (=> b!1366646 m!1250979))

(declare-fun m!1250981 () Bool)

(assert (=> b!1366654 m!1250981))

(declare-fun m!1250983 () Bool)

(assert (=> b!1366653 m!1250983))

(declare-fun m!1250985 () Bool)

(assert (=> b!1366653 m!1250985))

(declare-fun m!1250987 () Bool)

(assert (=> b!1366653 m!1250987))

(assert (=> b!1366653 m!1250973))

(declare-fun m!1250989 () Bool)

(assert (=> b!1366651 m!1250989))

(declare-fun m!1250991 () Bool)

(assert (=> b!1366651 m!1250991))

(assert (=> b!1366650 m!1250973))

(assert (=> b!1366650 m!1250973))

(declare-fun m!1250993 () Bool)

(assert (=> b!1366650 m!1250993))

(push 1)

(assert (not b!1366652))

