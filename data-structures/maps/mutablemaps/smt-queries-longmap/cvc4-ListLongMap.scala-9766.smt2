; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115758 () Bool)

(assert start!115758)

(declare-fun res!911976 () Bool)

(declare-fun e!775308 () Bool)

(assert (=> start!115758 (=> (not res!911976) (not e!775308))))

(declare-datatypes ((array!92873 0))(
  ( (array!92874 (arr!44856 (Array (_ BitVec 32) (_ BitVec 64))) (size!45407 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92873)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115758 (= res!911976 (and (bvslt (size!45407 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45407 a!3861))))))

(assert (=> start!115758 e!775308))

(declare-fun array_inv!33801 (array!92873) Bool)

(assert (=> start!115758 (array_inv!33801 a!3861)))

(assert (=> start!115758 true))

(declare-fun b!1368343 () Bool)

(declare-fun e!775307 () Bool)

(assert (=> b!1368343 (= e!775307 false)))

(declare-fun lt!602000 () Bool)

(declare-datatypes ((List!32104 0))(
  ( (Nil!32101) (Cons!32100 (h!33309 (_ BitVec 64)) (t!46805 List!32104)) )
))
(declare-fun acc!866 () List!32104)

(declare-fun arrayNoDuplicates!0 (array!92873 (_ BitVec 32) List!32104) Bool)

(assert (=> b!1368343 (= lt!602000 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368344 () Bool)

(declare-fun res!911981 () Bool)

(assert (=> b!1368344 (=> (not res!911981) (not e!775308))))

(declare-fun newAcc!98 () List!32104)

(declare-fun subseq!1033 (List!32104 List!32104) Bool)

(assert (=> b!1368344 (= res!911981 (subseq!1033 newAcc!98 acc!866))))

(declare-fun b!1368345 () Bool)

(declare-fun res!911972 () Bool)

(assert (=> b!1368345 (=> (not res!911972) (not e!775308))))

(declare-fun contains!9642 (List!32104 (_ BitVec 64)) Bool)

(assert (=> b!1368345 (= res!911972 (not (contains!9642 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368346 () Bool)

(declare-fun res!911982 () Bool)

(assert (=> b!1368346 (=> (not res!911982) (not e!775308))))

(assert (=> b!1368346 (= res!911982 (not (contains!9642 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368347 () Bool)

(declare-fun res!911980 () Bool)

(assert (=> b!1368347 (=> (not res!911980) (not e!775308))))

(assert (=> b!1368347 (= res!911980 (not (contains!9642 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368348 () Bool)

(declare-fun res!911975 () Bool)

(assert (=> b!1368348 (=> (not res!911975) (not e!775307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368348 (= res!911975 (not (validKeyInArray!0 (select (arr!44856 a!3861) from!3239))))))

(declare-fun b!1368349 () Bool)

(declare-fun res!911977 () Bool)

(assert (=> b!1368349 (=> (not res!911977) (not e!775308))))

(declare-fun noDuplicate!2521 (List!32104) Bool)

(assert (=> b!1368349 (= res!911977 (noDuplicate!2521 acc!866))))

(declare-fun b!1368350 () Bool)

(declare-fun res!911974 () Bool)

(assert (=> b!1368350 (=> (not res!911974) (not e!775307))))

(assert (=> b!1368350 (= res!911974 (bvslt from!3239 (size!45407 a!3861)))))

(declare-fun b!1368351 () Bool)

(assert (=> b!1368351 (= e!775308 e!775307)))

(declare-fun res!911978 () Bool)

(assert (=> b!1368351 (=> (not res!911978) (not e!775307))))

(assert (=> b!1368351 (= res!911978 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45147 0))(
  ( (Unit!45148) )
))
(declare-fun lt!601999 () Unit!45147)

(declare-fun noDuplicateSubseq!220 (List!32104 List!32104) Unit!45147)

(assert (=> b!1368351 (= lt!601999 (noDuplicateSubseq!220 newAcc!98 acc!866))))

(declare-fun b!1368352 () Bool)

(declare-fun res!911973 () Bool)

(assert (=> b!1368352 (=> (not res!911973) (not e!775308))))

(assert (=> b!1368352 (= res!911973 (not (contains!9642 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368353 () Bool)

(declare-fun res!911979 () Bool)

(assert (=> b!1368353 (=> (not res!911979) (not e!775307))))

(assert (=> b!1368353 (= res!911979 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (= (and start!115758 res!911976) b!1368349))

(assert (= (and b!1368349 res!911977) b!1368347))

(assert (= (and b!1368347 res!911980) b!1368346))

(assert (= (and b!1368346 res!911982) b!1368345))

(assert (= (and b!1368345 res!911972) b!1368352))

(assert (= (and b!1368352 res!911973) b!1368344))

(assert (= (and b!1368344 res!911981) b!1368351))

(assert (= (and b!1368351 res!911978) b!1368350))

(assert (= (and b!1368350 res!911974) b!1368348))

(assert (= (and b!1368348 res!911975) b!1368353))

(assert (= (and b!1368353 res!911979) b!1368343))

(declare-fun m!1252351 () Bool)

(assert (=> b!1368351 m!1252351))

(declare-fun m!1252353 () Bool)

(assert (=> b!1368351 m!1252353))

(declare-fun m!1252355 () Bool)

(assert (=> b!1368344 m!1252355))

(declare-fun m!1252357 () Bool)

(assert (=> b!1368346 m!1252357))

(declare-fun m!1252359 () Bool)

(assert (=> b!1368347 m!1252359))

(declare-fun m!1252361 () Bool)

(assert (=> b!1368348 m!1252361))

(assert (=> b!1368348 m!1252361))

(declare-fun m!1252363 () Bool)

(assert (=> b!1368348 m!1252363))

(declare-fun m!1252365 () Bool)

(assert (=> b!1368349 m!1252365))

(declare-fun m!1252367 () Bool)

(assert (=> b!1368345 m!1252367))

(declare-fun m!1252369 () Bool)

(assert (=> start!115758 m!1252369))

(declare-fun m!1252371 () Bool)

(assert (=> b!1368352 m!1252371))

(declare-fun m!1252373 () Bool)

(assert (=> b!1368343 m!1252373))

(push 1)

(assert (not b!1368352))

(assert (not b!1368346))

