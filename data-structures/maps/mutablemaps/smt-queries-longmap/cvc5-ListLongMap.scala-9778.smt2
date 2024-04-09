; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115910 () Bool)

(assert start!115910)

(declare-fun b!1369649 () Bool)

(declare-fun res!913232 () Bool)

(declare-fun e!775884 () Bool)

(assert (=> b!1369649 (=> (not res!913232) (not e!775884))))

(declare-datatypes ((List!32138 0))(
  ( (Nil!32135) (Cons!32134 (h!33343 (_ BitVec 64)) (t!46839 List!32138)) )
))
(declare-fun acc!866 () List!32138)

(declare-fun contains!9676 (List!32138 (_ BitVec 64)) Bool)

(assert (=> b!1369649 (= res!913232 (not (contains!9676 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369650 () Bool)

(declare-fun res!913237 () Bool)

(declare-fun e!775885 () Bool)

(assert (=> b!1369650 (=> (not res!913237) (not e!775885))))

(declare-datatypes ((array!92947 0))(
  ( (array!92948 (arr!44890 (Array (_ BitVec 32) (_ BitVec 64))) (size!45441 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92947)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369650 (= res!913237 (validKeyInArray!0 (select (arr!44890 a!3861) from!3239)))))

(declare-fun res!913238 () Bool)

(assert (=> start!115910 (=> (not res!913238) (not e!775884))))

(assert (=> start!115910 (= res!913238 (and (bvslt (size!45441 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45441 a!3861))))))

(assert (=> start!115910 e!775884))

(declare-fun array_inv!33835 (array!92947) Bool)

(assert (=> start!115910 (array_inv!33835 a!3861)))

(assert (=> start!115910 true))

(declare-fun b!1369651 () Bool)

(declare-fun res!913230 () Bool)

(assert (=> b!1369651 (=> (not res!913230) (not e!775884))))

(declare-fun newAcc!98 () List!32138)

(assert (=> b!1369651 (= res!913230 (not (contains!9676 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369652 () Bool)

(declare-fun res!913233 () Bool)

(assert (=> b!1369652 (=> (not res!913233) (not e!775884))))

(assert (=> b!1369652 (= res!913233 (not (contains!9676 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369653 () Bool)

(declare-fun res!913239 () Bool)

(assert (=> b!1369653 (=> (not res!913239) (not e!775884))))

(assert (=> b!1369653 (= res!913239 (not (contains!9676 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369654 () Bool)

(declare-fun res!913235 () Bool)

(assert (=> b!1369654 (=> (not res!913235) (not e!775884))))

(declare-fun noDuplicate!2555 (List!32138) Bool)

(assert (=> b!1369654 (= res!913235 (noDuplicate!2555 acc!866))))

(declare-fun b!1369655 () Bool)

(declare-fun res!913231 () Bool)

(assert (=> b!1369655 (=> (not res!913231) (not e!775885))))

(assert (=> b!1369655 (= res!913231 (bvslt from!3239 (size!45441 a!3861)))))

(declare-fun b!1369656 () Bool)

(declare-fun res!913234 () Bool)

(assert (=> b!1369656 (=> (not res!913234) (not e!775884))))

(declare-fun subseq!1067 (List!32138 List!32138) Bool)

(assert (=> b!1369656 (= res!913234 (subseq!1067 newAcc!98 acc!866))))

(declare-fun b!1369657 () Bool)

(assert (=> b!1369657 (= e!775884 e!775885)))

(declare-fun res!913236 () Bool)

(assert (=> b!1369657 (=> (not res!913236) (not e!775885))))

(declare-fun arrayNoDuplicates!0 (array!92947 (_ BitVec 32) List!32138) Bool)

(assert (=> b!1369657 (= res!913236 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45215 0))(
  ( (Unit!45216) )
))
(declare-fun lt!602267 () Unit!45215)

(declare-fun noDuplicateSubseq!254 (List!32138 List!32138) Unit!45215)

(assert (=> b!1369657 (= lt!602267 (noDuplicateSubseq!254 newAcc!98 acc!866))))

(declare-fun b!1369658 () Bool)

(assert (=> b!1369658 (= e!775885 false)))

(declare-fun lt!602266 () Bool)

(assert (=> b!1369658 (= lt!602266 (contains!9676 acc!866 (select (arr!44890 a!3861) from!3239)))))

(assert (= (and start!115910 res!913238) b!1369654))

(assert (= (and b!1369654 res!913235) b!1369653))

(assert (= (and b!1369653 res!913239) b!1369649))

(assert (= (and b!1369649 res!913232) b!1369652))

(assert (= (and b!1369652 res!913233) b!1369651))

(assert (= (and b!1369651 res!913230) b!1369656))

(assert (= (and b!1369656 res!913234) b!1369657))

(assert (= (and b!1369657 res!913236) b!1369655))

(assert (= (and b!1369655 res!913231) b!1369650))

(assert (= (and b!1369650 res!913237) b!1369658))

(declare-fun m!1253413 () Bool)

(assert (=> b!1369658 m!1253413))

(assert (=> b!1369658 m!1253413))

(declare-fun m!1253415 () Bool)

(assert (=> b!1369658 m!1253415))

(declare-fun m!1253417 () Bool)

(assert (=> start!115910 m!1253417))

(declare-fun m!1253419 () Bool)

(assert (=> b!1369657 m!1253419))

(declare-fun m!1253421 () Bool)

(assert (=> b!1369657 m!1253421))

(declare-fun m!1253423 () Bool)

(assert (=> b!1369652 m!1253423))

(assert (=> b!1369650 m!1253413))

(assert (=> b!1369650 m!1253413))

(declare-fun m!1253425 () Bool)

(assert (=> b!1369650 m!1253425))

(declare-fun m!1253427 () Bool)

(assert (=> b!1369656 m!1253427))

(declare-fun m!1253429 () Bool)

(assert (=> b!1369649 m!1253429))

(declare-fun m!1253431 () Bool)

(assert (=> b!1369651 m!1253431))

(declare-fun m!1253433 () Bool)

(assert (=> b!1369654 m!1253433))

(declare-fun m!1253435 () Bool)

(assert (=> b!1369653 m!1253435))

(push 1)

