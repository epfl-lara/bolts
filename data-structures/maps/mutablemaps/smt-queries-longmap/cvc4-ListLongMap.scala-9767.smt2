; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115764 () Bool)

(assert start!115764)

(declare-fun b!1368442 () Bool)

(declare-fun res!912079 () Bool)

(declare-fun e!775335 () Bool)

(assert (=> b!1368442 (=> (not res!912079) (not e!775335))))

(declare-datatypes ((List!32107 0))(
  ( (Nil!32104) (Cons!32103 (h!33312 (_ BitVec 64)) (t!46808 List!32107)) )
))
(declare-fun acc!866 () List!32107)

(declare-fun contains!9645 (List!32107 (_ BitVec 64)) Bool)

(assert (=> b!1368442 (= res!912079 (not (contains!9645 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368443 () Bool)

(declare-fun res!912072 () Bool)

(assert (=> b!1368443 (=> (not res!912072) (not e!775335))))

(assert (=> b!1368443 (= res!912072 (not (contains!9645 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368444 () Bool)

(declare-fun res!912074 () Bool)

(declare-fun e!775334 () Bool)

(assert (=> b!1368444 (=> (not res!912074) (not e!775334))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368444 (= res!912074 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368445 () Bool)

(declare-fun res!912080 () Bool)

(assert (=> b!1368445 (=> (not res!912080) (not e!775335))))

(declare-fun newAcc!98 () List!32107)

(declare-fun subseq!1036 (List!32107 List!32107) Bool)

(assert (=> b!1368445 (= res!912080 (subseq!1036 newAcc!98 acc!866))))

(declare-fun res!912071 () Bool)

(assert (=> start!115764 (=> (not res!912071) (not e!775335))))

(declare-datatypes ((array!92879 0))(
  ( (array!92880 (arr!44859 (Array (_ BitVec 32) (_ BitVec 64))) (size!45410 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92879)

(assert (=> start!115764 (= res!912071 (and (bvslt (size!45410 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45410 a!3861))))))

(assert (=> start!115764 e!775335))

(declare-fun array_inv!33804 (array!92879) Bool)

(assert (=> start!115764 (array_inv!33804 a!3861)))

(assert (=> start!115764 true))

(declare-fun b!1368446 () Bool)

(declare-fun res!912076 () Bool)

(assert (=> b!1368446 (=> (not res!912076) (not e!775334))))

(assert (=> b!1368446 (= res!912076 (bvslt from!3239 (size!45410 a!3861)))))

(declare-fun b!1368447 () Bool)

(declare-fun res!912081 () Bool)

(assert (=> b!1368447 (=> (not res!912081) (not e!775335))))

(assert (=> b!1368447 (= res!912081 (not (contains!9645 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368448 () Bool)

(declare-fun res!912078 () Bool)

(assert (=> b!1368448 (=> (not res!912078) (not e!775335))))

(declare-fun noDuplicate!2524 (List!32107) Bool)

(assert (=> b!1368448 (= res!912078 (noDuplicate!2524 acc!866))))

(declare-fun b!1368449 () Bool)

(declare-fun res!912075 () Bool)

(assert (=> b!1368449 (=> (not res!912075) (not e!775334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368449 (= res!912075 (not (validKeyInArray!0 (select (arr!44859 a!3861) from!3239))))))

(declare-fun b!1368450 () Bool)

(assert (=> b!1368450 (= e!775335 e!775334)))

(declare-fun res!912077 () Bool)

(assert (=> b!1368450 (=> (not res!912077) (not e!775334))))

(declare-fun arrayNoDuplicates!0 (array!92879 (_ BitVec 32) List!32107) Bool)

(assert (=> b!1368450 (= res!912077 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45153 0))(
  ( (Unit!45154) )
))
(declare-fun lt!602018 () Unit!45153)

(declare-fun noDuplicateSubseq!223 (List!32107 List!32107) Unit!45153)

(assert (=> b!1368450 (= lt!602018 (noDuplicateSubseq!223 newAcc!98 acc!866))))

(declare-fun b!1368451 () Bool)

(declare-fun res!912073 () Bool)

(assert (=> b!1368451 (=> (not res!912073) (not e!775335))))

(assert (=> b!1368451 (= res!912073 (not (contains!9645 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368452 () Bool)

(assert (=> b!1368452 (= e!775334 false)))

(declare-fun lt!602017 () Bool)

(assert (=> b!1368452 (= lt!602017 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(assert (= (and start!115764 res!912071) b!1368448))

(assert (= (and b!1368448 res!912078) b!1368443))

(assert (= (and b!1368443 res!912072) b!1368442))

(assert (= (and b!1368442 res!912079) b!1368451))

(assert (= (and b!1368451 res!912073) b!1368447))

(assert (= (and b!1368447 res!912081) b!1368445))

(assert (= (and b!1368445 res!912080) b!1368450))

(assert (= (and b!1368450 res!912077) b!1368446))

(assert (= (and b!1368446 res!912076) b!1368449))

(assert (= (and b!1368449 res!912075) b!1368444))

(assert (= (and b!1368444 res!912074) b!1368452))

(declare-fun m!1252423 () Bool)

(assert (=> b!1368449 m!1252423))

(assert (=> b!1368449 m!1252423))

(declare-fun m!1252425 () Bool)

(assert (=> b!1368449 m!1252425))

(declare-fun m!1252427 () Bool)

(assert (=> b!1368448 m!1252427))

(declare-fun m!1252429 () Bool)

(assert (=> b!1368447 m!1252429))

(declare-fun m!1252431 () Bool)

(assert (=> b!1368445 m!1252431))

(declare-fun m!1252433 () Bool)

(assert (=> b!1368452 m!1252433))

(declare-fun m!1252435 () Bool)

(assert (=> b!1368442 m!1252435))

(declare-fun m!1252437 () Bool)

(assert (=> b!1368451 m!1252437))

(declare-fun m!1252439 () Bool)

(assert (=> start!115764 m!1252439))

(declare-fun m!1252441 () Bool)

(assert (=> b!1368443 m!1252441))

(declare-fun m!1252443 () Bool)

(assert (=> b!1368450 m!1252443))

(declare-fun m!1252445 () Bool)

(assert (=> b!1368450 m!1252445))

(push 1)

(assert (not b!1368443))

(assert (not b!1368449))

