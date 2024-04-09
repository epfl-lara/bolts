; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115926 () Bool)

(assert start!115926)

(declare-fun b!1369898 () Bool)

(declare-fun res!913481 () Bool)

(declare-fun e!775956 () Bool)

(assert (=> b!1369898 (=> (not res!913481) (not e!775956))))

(declare-datatypes ((List!32146 0))(
  ( (Nil!32143) (Cons!32142 (h!33351 (_ BitVec 64)) (t!46847 List!32146)) )
))
(declare-fun newAcc!98 () List!32146)

(declare-fun contains!9684 (List!32146 (_ BitVec 64)) Bool)

(assert (=> b!1369898 (= res!913481 (not (contains!9684 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369899 () Bool)

(declare-fun res!913482 () Bool)

(declare-fun e!775955 () Bool)

(assert (=> b!1369899 (=> (not res!913482) (not e!775955))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92963 0))(
  ( (array!92964 (arr!44898 (Array (_ BitVec 32) (_ BitVec 64))) (size!45449 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92963)

(assert (=> b!1369899 (= res!913482 (bvslt from!3239 (size!45449 a!3861)))))

(declare-fun b!1369900 () Bool)

(assert (=> b!1369900 (= e!775955 false)))

(declare-fun acc!866 () List!32146)

(declare-fun lt!602305 () Bool)

(assert (=> b!1369900 (= lt!602305 (contains!9684 acc!866 (select (arr!44898 a!3861) from!3239)))))

(declare-fun b!1369901 () Bool)

(declare-fun res!913484 () Bool)

(assert (=> b!1369901 (=> (not res!913484) (not e!775956))))

(declare-fun noDuplicate!2563 (List!32146) Bool)

(assert (=> b!1369901 (= res!913484 (noDuplicate!2563 acc!866))))

(declare-fun b!1369902 () Bool)

(declare-fun res!913488 () Bool)

(assert (=> b!1369902 (=> (not res!913488) (not e!775956))))

(assert (=> b!1369902 (= res!913488 (not (contains!9684 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913480 () Bool)

(assert (=> start!115926 (=> (not res!913480) (not e!775956))))

(assert (=> start!115926 (= res!913480 (and (bvslt (size!45449 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45449 a!3861))))))

(assert (=> start!115926 e!775956))

(declare-fun array_inv!33843 (array!92963) Bool)

(assert (=> start!115926 (array_inv!33843 a!3861)))

(assert (=> start!115926 true))

(declare-fun b!1369903 () Bool)

(declare-fun res!913483 () Bool)

(assert (=> b!1369903 (=> (not res!913483) (not e!775956))))

(declare-fun subseq!1075 (List!32146 List!32146) Bool)

(assert (=> b!1369903 (= res!913483 (subseq!1075 newAcc!98 acc!866))))

(declare-fun b!1369904 () Bool)

(declare-fun res!913485 () Bool)

(assert (=> b!1369904 (=> (not res!913485) (not e!775956))))

(assert (=> b!1369904 (= res!913485 (not (contains!9684 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369905 () Bool)

(declare-fun res!913479 () Bool)

(assert (=> b!1369905 (=> (not res!913479) (not e!775956))))

(assert (=> b!1369905 (= res!913479 (not (contains!9684 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369906 () Bool)

(assert (=> b!1369906 (= e!775956 e!775955)))

(declare-fun res!913486 () Bool)

(assert (=> b!1369906 (=> (not res!913486) (not e!775955))))

(declare-fun arrayNoDuplicates!0 (array!92963 (_ BitVec 32) List!32146) Bool)

(assert (=> b!1369906 (= res!913486 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45231 0))(
  ( (Unit!45232) )
))
(declare-fun lt!602306 () Unit!45231)

(declare-fun noDuplicateSubseq!262 (List!32146 List!32146) Unit!45231)

(assert (=> b!1369906 (= lt!602306 (noDuplicateSubseq!262 newAcc!98 acc!866))))

(declare-fun b!1369907 () Bool)

(declare-fun res!913487 () Bool)

(assert (=> b!1369907 (=> (not res!913487) (not e!775955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369907 (= res!913487 (validKeyInArray!0 (select (arr!44898 a!3861) from!3239)))))

(assert (= (and start!115926 res!913480) b!1369901))

(assert (= (and b!1369901 res!913484) b!1369902))

(assert (= (and b!1369902 res!913488) b!1369904))

(assert (= (and b!1369904 res!913485) b!1369898))

(assert (= (and b!1369898 res!913481) b!1369905))

(assert (= (and b!1369905 res!913479) b!1369903))

(assert (= (and b!1369903 res!913483) b!1369906))

(assert (= (and b!1369906 res!913486) b!1369899))

(assert (= (and b!1369899 res!913482) b!1369907))

(assert (= (and b!1369907 res!913487) b!1369900))

(declare-fun m!1253605 () Bool)

(assert (=> b!1369900 m!1253605))

(assert (=> b!1369900 m!1253605))

(declare-fun m!1253607 () Bool)

(assert (=> b!1369900 m!1253607))

(declare-fun m!1253609 () Bool)

(assert (=> b!1369898 m!1253609))

(declare-fun m!1253611 () Bool)

(assert (=> b!1369901 m!1253611))

(declare-fun m!1253613 () Bool)

(assert (=> b!1369903 m!1253613))

(declare-fun m!1253615 () Bool)

(assert (=> b!1369904 m!1253615))

(declare-fun m!1253617 () Bool)

(assert (=> start!115926 m!1253617))

(declare-fun m!1253619 () Bool)

(assert (=> b!1369905 m!1253619))

(declare-fun m!1253621 () Bool)

(assert (=> b!1369902 m!1253621))

(declare-fun m!1253623 () Bool)

(assert (=> b!1369906 m!1253623))

(declare-fun m!1253625 () Bool)

(assert (=> b!1369906 m!1253625))

(assert (=> b!1369907 m!1253605))

(assert (=> b!1369907 m!1253605))

(declare-fun m!1253627 () Bool)

(assert (=> b!1369907 m!1253627))

(push 1)

