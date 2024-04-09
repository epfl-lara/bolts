; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62574 () Bool)

(assert start!62574)

(declare-fun b!705057 () Bool)

(declare-fun res!469047 () Bool)

(declare-fun e!397701 () Bool)

(assert (=> b!705057 (=> (not res!469047) (not e!397701))))

(declare-datatypes ((array!40209 0))(
  ( (array!40210 (arr!19257 (Array (_ BitVec 32) (_ BitVec 64))) (size!19640 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40209)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705057 (= res!469047 (not (validKeyInArray!0 (select (arr!19257 a!3591) from!2969))))))

(declare-fun b!705058 () Bool)

(declare-fun res!469053 () Bool)

(assert (=> b!705058 (=> (not res!469053) (not e!397701))))

(declare-datatypes ((List!13351 0))(
  ( (Nil!13348) (Cons!13347 (h!14392 (_ BitVec 64)) (t!19641 List!13351)) )
))
(declare-fun acc!652 () List!13351)

(declare-fun arrayNoDuplicates!0 (array!40209 (_ BitVec 32) List!13351) Bool)

(assert (=> b!705058 (= res!469053 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705059 () Bool)

(declare-fun res!469041 () Bool)

(assert (=> b!705059 (=> (not res!469041) (not e!397701))))

(declare-fun newAcc!49 () List!13351)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!303 (List!13351 (_ BitVec 64)) List!13351)

(assert (=> b!705059 (= res!469041 (= (-!303 newAcc!49 k!2824) acc!652))))

(declare-fun b!705060 () Bool)

(declare-fun res!469050 () Bool)

(assert (=> b!705060 (=> (not res!469050) (not e!397701))))

(assert (=> b!705060 (= res!469050 (validKeyInArray!0 k!2824))))

(declare-fun b!705061 () Bool)

(declare-fun res!469058 () Bool)

(assert (=> b!705061 (=> (not res!469058) (not e!397701))))

(declare-fun contains!3894 (List!13351 (_ BitVec 64)) Bool)

(assert (=> b!705061 (= res!469058 (not (contains!3894 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705062 () Bool)

(declare-fun res!469052 () Bool)

(assert (=> b!705062 (=> (not res!469052) (not e!397701))))

(assert (=> b!705062 (= res!469052 (not (contains!3894 acc!652 k!2824)))))

(declare-fun b!705063 () Bool)

(declare-fun res!469045 () Bool)

(assert (=> b!705063 (=> (not res!469045) (not e!397701))))

(declare-fun arrayContainsKey!0 (array!40209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705063 (= res!469045 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705064 () Bool)

(declare-fun res!469055 () Bool)

(assert (=> b!705064 (=> (not res!469055) (not e!397701))))

(assert (=> b!705064 (= res!469055 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19640 a!3591)))))

(declare-fun b!705065 () Bool)

(declare-fun res!469054 () Bool)

(assert (=> b!705065 (=> (not res!469054) (not e!397701))))

(assert (=> b!705065 (= res!469054 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705066 () Bool)

(declare-fun res!469049 () Bool)

(assert (=> b!705066 (=> (not res!469049) (not e!397701))))

(assert (=> b!705066 (= res!469049 (not (contains!3894 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705067 () Bool)

(declare-fun res!469046 () Bool)

(assert (=> b!705067 (=> (not res!469046) (not e!397701))))

(declare-fun subseq!338 (List!13351 List!13351) Bool)

(assert (=> b!705067 (= res!469046 (subseq!338 acc!652 newAcc!49))))

(declare-fun b!705068 () Bool)

(declare-fun res!469042 () Bool)

(assert (=> b!705068 (=> (not res!469042) (not e!397701))))

(declare-fun noDuplicate!1141 (List!13351) Bool)

(assert (=> b!705068 (= res!469042 (noDuplicate!1141 acc!652))))

(declare-fun b!705069 () Bool)

(declare-fun res!469057 () Bool)

(assert (=> b!705069 (=> (not res!469057) (not e!397701))))

(assert (=> b!705069 (= res!469057 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705070 () Bool)

(declare-fun res!469044 () Bool)

(assert (=> b!705070 (=> (not res!469044) (not e!397701))))

(assert (=> b!705070 (= res!469044 (not (contains!3894 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705071 () Bool)

(declare-fun res!469048 () Bool)

(assert (=> b!705071 (=> (not res!469048) (not e!397701))))

(assert (=> b!705071 (= res!469048 (contains!3894 newAcc!49 k!2824))))

(declare-fun res!469056 () Bool)

(assert (=> start!62574 (=> (not res!469056) (not e!397701))))

(assert (=> start!62574 (= res!469056 (and (bvslt (size!19640 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19640 a!3591))))))

(assert (=> start!62574 e!397701))

(assert (=> start!62574 true))

(declare-fun array_inv!15031 (array!40209) Bool)

(assert (=> start!62574 (array_inv!15031 a!3591)))

(declare-fun b!705072 () Bool)

(declare-fun res!469051 () Bool)

(assert (=> b!705072 (=> (not res!469051) (not e!397701))))

(assert (=> b!705072 (= res!469051 (not (contains!3894 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705073 () Bool)

(declare-fun res!469043 () Bool)

(assert (=> b!705073 (=> (not res!469043) (not e!397701))))

(assert (=> b!705073 (= res!469043 (noDuplicate!1141 newAcc!49))))

(declare-fun b!705074 () Bool)

(assert (=> b!705074 (= e!397701 false)))

(declare-fun lt!317832 () Bool)

(assert (=> b!705074 (= lt!317832 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(assert (= (and start!62574 res!469056) b!705068))

(assert (= (and b!705068 res!469042) b!705073))

(assert (= (and b!705073 res!469043) b!705070))

(assert (= (and b!705070 res!469044) b!705061))

(assert (= (and b!705061 res!469058) b!705063))

(assert (= (and b!705063 res!469045) b!705062))

(assert (= (and b!705062 res!469052) b!705060))

(assert (= (and b!705060 res!469050) b!705058))

(assert (= (and b!705058 res!469053) b!705067))

(assert (= (and b!705067 res!469046) b!705071))

(assert (= (and b!705071 res!469048) b!705059))

(assert (= (and b!705059 res!469041) b!705066))

(assert (= (and b!705066 res!469049) b!705072))

(assert (= (and b!705072 res!469051) b!705064))

(assert (= (and b!705064 res!469055) b!705057))

(assert (= (and b!705057 res!469047) b!705069))

(assert (= (and b!705069 res!469057) b!705065))

(assert (= (and b!705065 res!469054) b!705074))

(declare-fun m!663363 () Bool)

(assert (=> b!705074 m!663363))

(declare-fun m!663365 () Bool)

(assert (=> b!705063 m!663365))

(declare-fun m!663367 () Bool)

(assert (=> b!705062 m!663367))

(declare-fun m!663369 () Bool)

(assert (=> b!705057 m!663369))

(assert (=> b!705057 m!663369))

(declare-fun m!663371 () Bool)

(assert (=> b!705057 m!663371))

(declare-fun m!663373 () Bool)

(assert (=> b!705060 m!663373))

(declare-fun m!663375 () Bool)

(assert (=> b!705068 m!663375))

(declare-fun m!663377 () Bool)

(assert (=> b!705061 m!663377))

(declare-fun m!663379 () Bool)

(assert (=> b!705065 m!663379))

(declare-fun m!663381 () Bool)

(assert (=> b!705071 m!663381))

(declare-fun m!663383 () Bool)

(assert (=> b!705059 m!663383))

(declare-fun m!663385 () Bool)

(assert (=> b!705066 m!663385))

(declare-fun m!663387 () Bool)

(assert (=> b!705073 m!663387))

(declare-fun m!663389 () Bool)

(assert (=> b!705067 m!663389))

(declare-fun m!663391 () Bool)

(assert (=> b!705058 m!663391))

(declare-fun m!663393 () Bool)

(assert (=> start!62574 m!663393))

(declare-fun m!663395 () Bool)

(assert (=> b!705072 m!663395))

(declare-fun m!663397 () Bool)

(assert (=> b!705070 m!663397))

(push 1)

(assert (not b!705059))

(assert (not b!705066))

(assert (not b!705067))

(assert (not b!705060))

(assert (not b!705073))

(assert (not b!705063))

(assert (not b!705068))

(assert (not b!705062))

(assert (not b!705058))

(assert (not b!705071))

(assert (not b!705074))

(assert (not b!705070))

(assert (not start!62574))

(assert (not b!705072))

(assert (not b!705057))

(assert (not b!705065))

(assert (not b!705061))

(check-sat)

(pop 1)

