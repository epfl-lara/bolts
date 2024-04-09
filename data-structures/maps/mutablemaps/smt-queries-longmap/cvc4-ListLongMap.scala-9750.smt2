; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115524 () Bool)

(assert start!115524)

(declare-fun b!1366248 () Bool)

(declare-fun res!909957 () Bool)

(declare-fun e!774385 () Bool)

(assert (=> b!1366248 (=> (not res!909957) (not e!774385))))

(declare-datatypes ((List!32056 0))(
  ( (Nil!32053) (Cons!32052 (h!33261 (_ BitVec 64)) (t!46757 List!32056)) )
))
(declare-fun acc!866 () List!32056)

(declare-fun contains!9594 (List!32056 (_ BitVec 64)) Bool)

(assert (=> b!1366248 (= res!909957 (not (contains!9594 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366249 () Bool)

(declare-fun res!909956 () Bool)

(declare-fun e!774386 () Bool)

(assert (=> b!1366249 (=> (not res!909956) (not e!774386))))

(declare-fun lt!601474 () List!32056)

(assert (=> b!1366249 (= res!909956 (not (contains!9594 lt!601474 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366250 () Bool)

(declare-fun e!774387 () Bool)

(assert (=> b!1366250 (= e!774387 e!774386)))

(declare-fun res!909951 () Bool)

(assert (=> b!1366250 (=> (not res!909951) (not e!774386))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1366250 (= res!909951 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-datatypes ((array!92768 0))(
  ( (array!92769 (arr!44808 (Array (_ BitVec 32) (_ BitVec 64))) (size!45359 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92768)

(declare-fun newAcc!98 () List!32056)

(declare-fun lt!601475 () List!32056)

(assert (=> b!1366250 (= lt!601475 (Cons!32052 (select (arr!44808 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366250 (= lt!601474 (Cons!32052 (select (arr!44808 a!3861) from!3239) acc!866))))

(declare-fun b!1366251 () Bool)

(declare-fun res!909952 () Bool)

(assert (=> b!1366251 (=> (not res!909952) (not e!774386))))

(assert (=> b!1366251 (= res!909952 (not (contains!9594 lt!601475 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366252 () Bool)

(declare-fun res!909949 () Bool)

(assert (=> b!1366252 (=> (not res!909949) (not e!774385))))

(declare-fun noDuplicate!2473 (List!32056) Bool)

(assert (=> b!1366252 (= res!909949 (noDuplicate!2473 acc!866))))

(declare-fun b!1366253 () Bool)

(declare-fun res!909959 () Bool)

(assert (=> b!1366253 (=> (not res!909959) (not e!774387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366253 (= res!909959 (validKeyInArray!0 (select (arr!44808 a!3861) from!3239)))))

(declare-fun res!909944 () Bool)

(assert (=> start!115524 (=> (not res!909944) (not e!774385))))

(assert (=> start!115524 (= res!909944 (and (bvslt (size!45359 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45359 a!3861))))))

(assert (=> start!115524 e!774385))

(declare-fun array_inv!33753 (array!92768) Bool)

(assert (=> start!115524 (array_inv!33753 a!3861)))

(assert (=> start!115524 true))

(declare-fun b!1366254 () Bool)

(declare-fun res!909958 () Bool)

(assert (=> b!1366254 (=> (not res!909958) (not e!774386))))

(assert (=> b!1366254 (= res!909958 (noDuplicate!2473 lt!601474))))

(declare-fun b!1366255 () Bool)

(declare-fun res!909943 () Bool)

(assert (=> b!1366255 (=> (not res!909943) (not e!774386))))

(assert (=> b!1366255 (= res!909943 (not (contains!9594 lt!601475 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366256 () Bool)

(declare-fun res!909954 () Bool)

(assert (=> b!1366256 (=> (not res!909954) (not e!774385))))

(declare-fun subseq!985 (List!32056 List!32056) Bool)

(assert (=> b!1366256 (= res!909954 (subseq!985 newAcc!98 acc!866))))

(declare-fun b!1366257 () Bool)

(declare-fun res!909946 () Bool)

(assert (=> b!1366257 (=> (not res!909946) (not e!774387))))

(assert (=> b!1366257 (= res!909946 (bvslt from!3239 (size!45359 a!3861)))))

(declare-fun b!1366258 () Bool)

(declare-fun res!909950 () Bool)

(assert (=> b!1366258 (=> (not res!909950) (not e!774385))))

(assert (=> b!1366258 (= res!909950 (not (contains!9594 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366259 () Bool)

(declare-fun res!909947 () Bool)

(assert (=> b!1366259 (=> (not res!909947) (not e!774385))))

(assert (=> b!1366259 (= res!909947 (not (contains!9594 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366260 () Bool)

(assert (=> b!1366260 (= e!774385 e!774387)))

(declare-fun res!909960 () Bool)

(assert (=> b!1366260 (=> (not res!909960) (not e!774387))))

(declare-fun arrayNoDuplicates!0 (array!92768 (_ BitVec 32) List!32056) Bool)

(assert (=> b!1366260 (= res!909960 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45051 0))(
  ( (Unit!45052) )
))
(declare-fun lt!601471 () Unit!45051)

(declare-fun noDuplicateSubseq!172 (List!32056 List!32056) Unit!45051)

(assert (=> b!1366260 (= lt!601471 (noDuplicateSubseq!172 newAcc!98 acc!866))))

(declare-fun b!1366261 () Bool)

(declare-fun res!909945 () Bool)

(assert (=> b!1366261 (=> (not res!909945) (not e!774385))))

(assert (=> b!1366261 (= res!909945 (not (contains!9594 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366262 () Bool)

(declare-fun res!909948 () Bool)

(assert (=> b!1366262 (=> (not res!909948) (not e!774386))))

(assert (=> b!1366262 (= res!909948 (subseq!985 lt!601475 lt!601474))))

(declare-fun b!1366263 () Bool)

(assert (=> b!1366263 (= e!774386 false)))

(declare-fun lt!601472 () Bool)

(assert (=> b!1366263 (= lt!601472 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601474))))

(declare-fun lt!601473 () Unit!45051)

(assert (=> b!1366263 (= lt!601473 (noDuplicateSubseq!172 lt!601475 lt!601474))))

(declare-fun b!1366264 () Bool)

(declare-fun res!909955 () Bool)

(assert (=> b!1366264 (=> (not res!909955) (not e!774386))))

(assert (=> b!1366264 (= res!909955 (not (contains!9594 lt!601474 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366265 () Bool)

(declare-fun res!909953 () Bool)

(assert (=> b!1366265 (=> (not res!909953) (not e!774387))))

(assert (=> b!1366265 (= res!909953 (not (contains!9594 acc!866 (select (arr!44808 a!3861) from!3239))))))

(assert (= (and start!115524 res!909944) b!1366252))

(assert (= (and b!1366252 res!909949) b!1366261))

(assert (= (and b!1366261 res!909945) b!1366248))

(assert (= (and b!1366248 res!909957) b!1366258))

(assert (= (and b!1366258 res!909950) b!1366259))

(assert (= (and b!1366259 res!909947) b!1366256))

(assert (= (and b!1366256 res!909954) b!1366260))

(assert (= (and b!1366260 res!909960) b!1366257))

(assert (= (and b!1366257 res!909946) b!1366253))

(assert (= (and b!1366253 res!909959) b!1366265))

(assert (= (and b!1366265 res!909953) b!1366250))

(assert (= (and b!1366250 res!909951) b!1366254))

(assert (= (and b!1366254 res!909958) b!1366264))

(assert (= (and b!1366264 res!909955) b!1366249))

(assert (= (and b!1366249 res!909956) b!1366251))

(assert (= (and b!1366251 res!909952) b!1366255))

(assert (= (and b!1366255 res!909943) b!1366262))

(assert (= (and b!1366262 res!909948) b!1366263))

(declare-fun m!1250601 () Bool)

(assert (=> b!1366258 m!1250601))

(declare-fun m!1250603 () Bool)

(assert (=> b!1366259 m!1250603))

(declare-fun m!1250605 () Bool)

(assert (=> start!115524 m!1250605))

(declare-fun m!1250607 () Bool)

(assert (=> b!1366261 m!1250607))

(declare-fun m!1250609 () Bool)

(assert (=> b!1366252 m!1250609))

(declare-fun m!1250611 () Bool)

(assert (=> b!1366256 m!1250611))

(declare-fun m!1250613 () Bool)

(assert (=> b!1366264 m!1250613))

(declare-fun m!1250615 () Bool)

(assert (=> b!1366250 m!1250615))

(declare-fun m!1250617 () Bool)

(assert (=> b!1366249 m!1250617))

(declare-fun m!1250619 () Bool)

(assert (=> b!1366251 m!1250619))

(declare-fun m!1250621 () Bool)

(assert (=> b!1366255 m!1250621))

(declare-fun m!1250623 () Bool)

(assert (=> b!1366262 m!1250623))

(declare-fun m!1250625 () Bool)

(assert (=> b!1366260 m!1250625))

(declare-fun m!1250627 () Bool)

(assert (=> b!1366260 m!1250627))

(declare-fun m!1250629 () Bool)

(assert (=> b!1366263 m!1250629))

(declare-fun m!1250631 () Bool)

(assert (=> b!1366263 m!1250631))

(declare-fun m!1250633 () Bool)

(assert (=> b!1366254 m!1250633))

(assert (=> b!1366253 m!1250615))

(assert (=> b!1366253 m!1250615))

(declare-fun m!1250635 () Bool)

(assert (=> b!1366253 m!1250635))

(declare-fun m!1250637 () Bool)

(assert (=> b!1366248 m!1250637))

(assert (=> b!1366265 m!1250615))

(assert (=> b!1366265 m!1250615))

(declare-fun m!1250639 () Bool)

(assert (=> b!1366265 m!1250639))

(push 1)

