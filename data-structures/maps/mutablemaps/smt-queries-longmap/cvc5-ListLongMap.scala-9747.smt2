; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115502 () Bool)

(assert start!115502)

(declare-fun b!1365654 () Bool)

(declare-fun e!774253 () Bool)

(declare-fun e!774256 () Bool)

(assert (=> b!1365654 (= e!774253 e!774256)))

(declare-fun res!909366 () Bool)

(assert (=> b!1365654 (=> (not res!909366) (not e!774256))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1365654 (= res!909366 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-datatypes ((array!92746 0))(
  ( (array!92747 (arr!44797 (Array (_ BitVec 32) (_ BitVec 64))) (size!45348 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92746)

(declare-datatypes ((List!32045 0))(
  ( (Nil!32042) (Cons!32041 (h!33250 (_ BitVec 64)) (t!46746 List!32045)) )
))
(declare-fun newAcc!98 () List!32045)

(declare-fun lt!601309 () List!32045)

(assert (=> b!1365654 (= lt!601309 (Cons!32041 (select (arr!44797 a!3861) from!3239) newAcc!98))))

(declare-fun acc!866 () List!32045)

(declare-fun lt!601307 () List!32045)

(assert (=> b!1365654 (= lt!601307 (Cons!32041 (select (arr!44797 a!3861) from!3239) acc!866))))

(declare-fun b!1365655 () Bool)

(assert (=> b!1365655 (= e!774256 false)))

(declare-fun lt!601306 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92746 (_ BitVec 32) List!32045) Bool)

(assert (=> b!1365655 (= lt!601306 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601307))))

(declare-datatypes ((Unit!45029 0))(
  ( (Unit!45030) )
))
(declare-fun lt!601310 () Unit!45029)

(declare-fun noDuplicateSubseq!161 (List!32045 List!32045) Unit!45029)

(assert (=> b!1365655 (= lt!601310 (noDuplicateSubseq!161 lt!601309 lt!601307))))

(declare-fun b!1365656 () Bool)

(declare-fun res!909361 () Bool)

(declare-fun e!774254 () Bool)

(assert (=> b!1365656 (=> (not res!909361) (not e!774254))))

(declare-fun contains!9583 (List!32045 (_ BitVec 64)) Bool)

(assert (=> b!1365656 (= res!909361 (not (contains!9583 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!909353 () Bool)

(assert (=> start!115502 (=> (not res!909353) (not e!774254))))

(assert (=> start!115502 (= res!909353 (and (bvslt (size!45348 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45348 a!3861))))))

(assert (=> start!115502 e!774254))

(declare-fun array_inv!33742 (array!92746) Bool)

(assert (=> start!115502 (array_inv!33742 a!3861)))

(assert (=> start!115502 true))

(declare-fun b!1365657 () Bool)

(declare-fun res!909350 () Bool)

(assert (=> b!1365657 (=> (not res!909350) (not e!774254))))

(assert (=> b!1365657 (= res!909350 (not (contains!9583 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365658 () Bool)

(declare-fun res!909349 () Bool)

(assert (=> b!1365658 (=> (not res!909349) (not e!774256))))

(declare-fun subseq!974 (List!32045 List!32045) Bool)

(assert (=> b!1365658 (= res!909349 (subseq!974 lt!601309 lt!601307))))

(declare-fun b!1365659 () Bool)

(declare-fun res!909358 () Bool)

(assert (=> b!1365659 (=> (not res!909358) (not e!774254))))

(assert (=> b!1365659 (= res!909358 (not (contains!9583 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365660 () Bool)

(declare-fun res!909362 () Bool)

(assert (=> b!1365660 (=> (not res!909362) (not e!774254))))

(declare-fun noDuplicate!2462 (List!32045) Bool)

(assert (=> b!1365660 (= res!909362 (noDuplicate!2462 acc!866))))

(declare-fun b!1365661 () Bool)

(declare-fun res!909357 () Bool)

(assert (=> b!1365661 (=> (not res!909357) (not e!774253))))

(assert (=> b!1365661 (= res!909357 (bvslt from!3239 (size!45348 a!3861)))))

(declare-fun b!1365662 () Bool)

(assert (=> b!1365662 (= e!774254 e!774253)))

(declare-fun res!909355 () Bool)

(assert (=> b!1365662 (=> (not res!909355) (not e!774253))))

(assert (=> b!1365662 (= res!909355 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601308 () Unit!45029)

(assert (=> b!1365662 (= lt!601308 (noDuplicateSubseq!161 newAcc!98 acc!866))))

(declare-fun b!1365663 () Bool)

(declare-fun res!909364 () Bool)

(assert (=> b!1365663 (=> (not res!909364) (not e!774253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365663 (= res!909364 (validKeyInArray!0 (select (arr!44797 a!3861) from!3239)))))

(declare-fun b!1365664 () Bool)

(declare-fun res!909359 () Bool)

(assert (=> b!1365664 (=> (not res!909359) (not e!774256))))

(assert (=> b!1365664 (= res!909359 (not (contains!9583 lt!601309 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365665 () Bool)

(declare-fun res!909356 () Bool)

(assert (=> b!1365665 (=> (not res!909356) (not e!774254))))

(assert (=> b!1365665 (= res!909356 (subseq!974 newAcc!98 acc!866))))

(declare-fun b!1365666 () Bool)

(declare-fun res!909365 () Bool)

(assert (=> b!1365666 (=> (not res!909365) (not e!774254))))

(assert (=> b!1365666 (= res!909365 (not (contains!9583 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365667 () Bool)

(declare-fun res!909363 () Bool)

(assert (=> b!1365667 (=> (not res!909363) (not e!774256))))

(assert (=> b!1365667 (= res!909363 (not (contains!9583 lt!601309 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365668 () Bool)

(declare-fun res!909354 () Bool)

(assert (=> b!1365668 (=> (not res!909354) (not e!774256))))

(assert (=> b!1365668 (= res!909354 (noDuplicate!2462 lt!601307))))

(declare-fun b!1365669 () Bool)

(declare-fun res!909352 () Bool)

(assert (=> b!1365669 (=> (not res!909352) (not e!774256))))

(assert (=> b!1365669 (= res!909352 (not (contains!9583 lt!601307 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365670 () Bool)

(declare-fun res!909351 () Bool)

(assert (=> b!1365670 (=> (not res!909351) (not e!774256))))

(assert (=> b!1365670 (= res!909351 (not (contains!9583 lt!601307 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365671 () Bool)

(declare-fun res!909360 () Bool)

(assert (=> b!1365671 (=> (not res!909360) (not e!774253))))

(assert (=> b!1365671 (= res!909360 (not (contains!9583 acc!866 (select (arr!44797 a!3861) from!3239))))))

(assert (= (and start!115502 res!909353) b!1365660))

(assert (= (and b!1365660 res!909362) b!1365659))

(assert (= (and b!1365659 res!909358) b!1365666))

(assert (= (and b!1365666 res!909365) b!1365656))

(assert (= (and b!1365656 res!909361) b!1365657))

(assert (= (and b!1365657 res!909350) b!1365665))

(assert (= (and b!1365665 res!909356) b!1365662))

(assert (= (and b!1365662 res!909355) b!1365661))

(assert (= (and b!1365661 res!909357) b!1365663))

(assert (= (and b!1365663 res!909364) b!1365671))

(assert (= (and b!1365671 res!909360) b!1365654))

(assert (= (and b!1365654 res!909366) b!1365668))

(assert (= (and b!1365668 res!909354) b!1365669))

(assert (= (and b!1365669 res!909352) b!1365670))

(assert (= (and b!1365670 res!909351) b!1365667))

(assert (= (and b!1365667 res!909363) b!1365664))

(assert (= (and b!1365664 res!909359) b!1365658))

(assert (= (and b!1365658 res!909349) b!1365655))

(declare-fun m!1250161 () Bool)

(assert (=> b!1365656 m!1250161))

(declare-fun m!1250163 () Bool)

(assert (=> start!115502 m!1250163))

(declare-fun m!1250165 () Bool)

(assert (=> b!1365666 m!1250165))

(declare-fun m!1250167 () Bool)

(assert (=> b!1365654 m!1250167))

(declare-fun m!1250169 () Bool)

(assert (=> b!1365657 m!1250169))

(assert (=> b!1365671 m!1250167))

(assert (=> b!1365671 m!1250167))

(declare-fun m!1250171 () Bool)

(assert (=> b!1365671 m!1250171))

(declare-fun m!1250173 () Bool)

(assert (=> b!1365659 m!1250173))

(declare-fun m!1250175 () Bool)

(assert (=> b!1365664 m!1250175))

(declare-fun m!1250177 () Bool)

(assert (=> b!1365670 m!1250177))

(assert (=> b!1365663 m!1250167))

(assert (=> b!1365663 m!1250167))

(declare-fun m!1250179 () Bool)

(assert (=> b!1365663 m!1250179))

(declare-fun m!1250181 () Bool)

(assert (=> b!1365662 m!1250181))

(declare-fun m!1250183 () Bool)

(assert (=> b!1365662 m!1250183))

(declare-fun m!1250185 () Bool)

(assert (=> b!1365655 m!1250185))

(declare-fun m!1250187 () Bool)

(assert (=> b!1365655 m!1250187))

(declare-fun m!1250189 () Bool)

(assert (=> b!1365660 m!1250189))

(declare-fun m!1250191 () Bool)

(assert (=> b!1365658 m!1250191))

(declare-fun m!1250193 () Bool)

(assert (=> b!1365668 m!1250193))

(declare-fun m!1250195 () Bool)

(assert (=> b!1365667 m!1250195))

(declare-fun m!1250197 () Bool)

(assert (=> b!1365669 m!1250197))

(declare-fun m!1250199 () Bool)

(assert (=> b!1365665 m!1250199))

(push 1)

