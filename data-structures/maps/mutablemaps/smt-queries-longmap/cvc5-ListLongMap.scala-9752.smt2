; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115580 () Bool)

(assert start!115580)

(declare-fun b!1366579 () Bool)

(declare-fun res!910254 () Bool)

(declare-fun e!774604 () Bool)

(assert (=> b!1366579 (=> (not res!910254) (not e!774604))))

(declare-datatypes ((List!32060 0))(
  ( (Nil!32057) (Cons!32056 (h!33265 (_ BitVec 64)) (t!46761 List!32060)) )
))
(declare-fun newAcc!98 () List!32060)

(declare-fun contains!9598 (List!32060 (_ BitVec 64)) Bool)

(assert (=> b!1366579 (= res!910254 (not (contains!9598 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366580 () Bool)

(declare-fun res!910260 () Bool)

(assert (=> b!1366580 (=> (not res!910260) (not e!774604))))

(assert (=> b!1366580 (= res!910260 (not (contains!9598 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366581 () Bool)

(declare-fun res!910256 () Bool)

(assert (=> b!1366581 (=> (not res!910256) (not e!774604))))

(declare-fun acc!866 () List!32060)

(declare-fun noDuplicate!2477 (List!32060) Bool)

(assert (=> b!1366581 (= res!910256 (noDuplicate!2477 acc!866))))

(declare-fun b!1366582 () Bool)

(declare-fun e!774602 () Bool)

(assert (=> b!1366582 (= e!774602 (not true))))

(declare-datatypes ((Unit!45059 0))(
  ( (Unit!45060) )
))
(declare-fun lt!601562 () Unit!45059)

(declare-fun lt!601561 () List!32060)

(declare-fun lt!601564 () List!32060)

(declare-fun noDuplicateSubseq!176 (List!32060 List!32060) Unit!45059)

(assert (=> b!1366582 (= lt!601562 (noDuplicateSubseq!176 lt!601561 lt!601564))))

(declare-datatypes ((array!92779 0))(
  ( (array!92780 (arr!44812 (Array (_ BitVec 32) (_ BitVec 64))) (size!45363 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92779)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92779 (_ BitVec 32) List!32060) Bool)

(assert (=> b!1366582 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601561)))

(declare-fun lt!601563 () Unit!45059)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92779 List!32060 List!32060 (_ BitVec 32)) Unit!45059)

(assert (=> b!1366582 (= lt!601563 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601564 lt!601561 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366582 (= lt!601561 (Cons!32056 (select (arr!44812 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366582 (= lt!601564 (Cons!32056 (select (arr!44812 a!3861) from!3239) acc!866))))

(declare-fun b!1366583 () Bool)

(assert (=> b!1366583 (= e!774604 e!774602)))

(declare-fun res!910250 () Bool)

(assert (=> b!1366583 (=> (not res!910250) (not e!774602))))

(assert (=> b!1366583 (= res!910250 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601565 () Unit!45059)

(assert (=> b!1366583 (= lt!601565 (noDuplicateSubseq!176 newAcc!98 acc!866))))

(declare-fun b!1366584 () Bool)

(declare-fun res!910255 () Bool)

(assert (=> b!1366584 (=> (not res!910255) (not e!774604))))

(declare-fun subseq!989 (List!32060 List!32060) Bool)

(assert (=> b!1366584 (= res!910255 (subseq!989 newAcc!98 acc!866))))

(declare-fun res!910253 () Bool)

(assert (=> start!115580 (=> (not res!910253) (not e!774604))))

(assert (=> start!115580 (= res!910253 (and (bvslt (size!45363 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45363 a!3861))))))

(assert (=> start!115580 e!774604))

(declare-fun array_inv!33757 (array!92779) Bool)

(assert (=> start!115580 (array_inv!33757 a!3861)))

(assert (=> start!115580 true))

(declare-fun b!1366585 () Bool)

(declare-fun res!910252 () Bool)

(assert (=> b!1366585 (=> (not res!910252) (not e!774602))))

(assert (=> b!1366585 (= res!910252 (not (contains!9598 acc!866 (select (arr!44812 a!3861) from!3239))))))

(declare-fun b!1366586 () Bool)

(declare-fun res!910258 () Bool)

(assert (=> b!1366586 (=> (not res!910258) (not e!774602))))

(assert (=> b!1366586 (= res!910258 (bvslt from!3239 (size!45363 a!3861)))))

(declare-fun b!1366587 () Bool)

(declare-fun res!910251 () Bool)

(assert (=> b!1366587 (=> (not res!910251) (not e!774604))))

(assert (=> b!1366587 (= res!910251 (not (contains!9598 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366588 () Bool)

(declare-fun res!910257 () Bool)

(assert (=> b!1366588 (=> (not res!910257) (not e!774602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366588 (= res!910257 (validKeyInArray!0 (select (arr!44812 a!3861) from!3239)))))

(declare-fun b!1366589 () Bool)

(declare-fun res!910259 () Bool)

(assert (=> b!1366589 (=> (not res!910259) (not e!774604))))

(assert (=> b!1366589 (= res!910259 (not (contains!9598 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115580 res!910253) b!1366581))

(assert (= (and b!1366581 res!910256) b!1366589))

(assert (= (and b!1366589 res!910259) b!1366587))

(assert (= (and b!1366587 res!910251) b!1366579))

(assert (= (and b!1366579 res!910254) b!1366580))

(assert (= (and b!1366580 res!910260) b!1366584))

(assert (= (and b!1366584 res!910255) b!1366583))

(assert (= (and b!1366583 res!910250) b!1366586))

(assert (= (and b!1366586 res!910258) b!1366588))

(assert (= (and b!1366588 res!910257) b!1366585))

(assert (= (and b!1366585 res!910252) b!1366582))

(declare-fun m!1250905 () Bool)

(assert (=> b!1366585 m!1250905))

(assert (=> b!1366585 m!1250905))

(declare-fun m!1250907 () Bool)

(assert (=> b!1366585 m!1250907))

(declare-fun m!1250909 () Bool)

(assert (=> b!1366589 m!1250909))

(assert (=> b!1366588 m!1250905))

(assert (=> b!1366588 m!1250905))

(declare-fun m!1250911 () Bool)

(assert (=> b!1366588 m!1250911))

(declare-fun m!1250913 () Bool)

(assert (=> b!1366580 m!1250913))

(declare-fun m!1250915 () Bool)

(assert (=> b!1366581 m!1250915))

(declare-fun m!1250917 () Bool)

(assert (=> b!1366582 m!1250917))

(declare-fun m!1250919 () Bool)

(assert (=> b!1366582 m!1250919))

(declare-fun m!1250921 () Bool)

(assert (=> b!1366582 m!1250921))

(assert (=> b!1366582 m!1250905))

(declare-fun m!1250923 () Bool)

(assert (=> b!1366584 m!1250923))

(declare-fun m!1250925 () Bool)

(assert (=> b!1366587 m!1250925))

(declare-fun m!1250927 () Bool)

(assert (=> b!1366583 m!1250927))

(declare-fun m!1250929 () Bool)

(assert (=> b!1366583 m!1250929))

(declare-fun m!1250931 () Bool)

(assert (=> b!1366579 m!1250931))

(declare-fun m!1250933 () Bool)

(assert (=> start!115580 m!1250933))

(push 1)

