; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114212 () Bool)

(assert start!114212)

(declare-fun b!1356302 () Bool)

(declare-fun res!901201 () Bool)

(declare-fun e!770030 () Bool)

(assert (=> b!1356302 (=> (not res!901201) (not e!770030))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92317 0))(
  ( (array!92318 (arr!44602 (Array (_ BitVec 32) (_ BitVec 64))) (size!45153 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92317)

(assert (=> b!1356302 (= res!901201 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45153 a!3742)))))

(declare-fun b!1356303 () Bool)

(declare-fun res!901193 () Bool)

(assert (=> b!1356303 (=> (not res!901193) (not e!770030))))

(declare-datatypes ((List!31823 0))(
  ( (Nil!31820) (Cons!31819 (h!33028 (_ BitVec 64)) (t!46488 List!31823)) )
))
(declare-fun arrayNoDuplicates!0 (array!92317 (_ BitVec 32) List!31823) Bool)

(assert (=> b!1356303 (= res!901193 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31820))))

(declare-fun b!1356304 () Bool)

(declare-fun res!901194 () Bool)

(assert (=> b!1356304 (=> (not res!901194) (not e!770030))))

(declare-fun acc!759 () List!31823)

(declare-fun contains!9388 (List!31823 (_ BitVec 64)) Bool)

(assert (=> b!1356304 (= res!901194 (not (contains!9388 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356305 () Bool)

(declare-datatypes ((Unit!44570 0))(
  ( (Unit!44571) )
))
(declare-fun e!770029 () Unit!44570)

(declare-fun lt!598951 () Unit!44570)

(assert (=> b!1356305 (= e!770029 lt!598951)))

(declare-fun lt!598952 () Unit!44570)

(declare-fun lemmaListSubSeqRefl!0 (List!31823) Unit!44570)

(assert (=> b!1356305 (= lt!598952 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!797 (List!31823 List!31823) Bool)

(assert (=> b!1356305 (subseq!797 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92317 List!31823 List!31823 (_ BitVec 32)) Unit!44570)

(declare-fun $colon$colon!814 (List!31823 (_ BitVec 64)) List!31823)

(assert (=> b!1356305 (= lt!598951 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!814 acc!759 (select (arr!44602 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356305 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356306 () Bool)

(declare-fun res!901197 () Bool)

(assert (=> b!1356306 (=> (not res!901197) (not e!770030))))

(assert (=> b!1356306 (= res!901197 (not (contains!9388 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356308 () Bool)

(declare-fun res!901203 () Bool)

(assert (=> b!1356308 (=> (not res!901203) (not e!770030))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356308 (= res!901203 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356309 () Bool)

(declare-fun Unit!44572 () Unit!44570)

(assert (=> b!1356309 (= e!770029 Unit!44572)))

(declare-fun b!1356310 () Bool)

(declare-fun res!901200 () Bool)

(declare-fun e!770032 () Bool)

(assert (=> b!1356310 (=> (not res!901200) (not e!770032))))

(assert (=> b!1356310 (= res!901200 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356311 () Bool)

(declare-fun res!901198 () Bool)

(assert (=> b!1356311 (=> (not res!901198) (not e!770030))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356311 (= res!901198 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45153 a!3742))))))

(declare-fun b!1356312 () Bool)

(assert (=> b!1356312 (= e!770032 (not true))))

(assert (=> b!1356312 (arrayNoDuplicates!0 (array!92318 (store (arr!44602 a!3742) i!1404 l!3587) (size!45153 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598955 () Unit!44570)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92317 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31823) Unit!44570)

(assert (=> b!1356312 (= lt!598955 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356313 () Bool)

(assert (=> b!1356313 (= e!770030 e!770032)))

(declare-fun res!901202 () Bool)

(assert (=> b!1356313 (=> (not res!901202) (not e!770032))))

(declare-fun lt!598954 () Bool)

(assert (=> b!1356313 (= res!901202 (and (not (= from!3120 i!1404)) (not lt!598954) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598953 () Unit!44570)

(assert (=> b!1356313 (= lt!598953 e!770029)))

(declare-fun c!126997 () Bool)

(assert (=> b!1356313 (= c!126997 lt!598954)))

(assert (=> b!1356313 (= lt!598954 (validKeyInArray!0 (select (arr!44602 a!3742) from!3120)))))

(declare-fun b!1356314 () Bool)

(declare-fun res!901196 () Bool)

(assert (=> b!1356314 (=> (not res!901196) (not e!770030))))

(assert (=> b!1356314 (= res!901196 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356307 () Bool)

(declare-fun res!901195 () Bool)

(assert (=> b!1356307 (=> (not res!901195) (not e!770030))))

(declare-fun noDuplicate!2267 (List!31823) Bool)

(assert (=> b!1356307 (= res!901195 (noDuplicate!2267 acc!759))))

(declare-fun res!901199 () Bool)

(assert (=> start!114212 (=> (not res!901199) (not e!770030))))

(assert (=> start!114212 (= res!901199 (and (bvslt (size!45153 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45153 a!3742))))))

(assert (=> start!114212 e!770030))

(assert (=> start!114212 true))

(declare-fun array_inv!33547 (array!92317) Bool)

(assert (=> start!114212 (array_inv!33547 a!3742)))

(assert (= (and start!114212 res!901199) b!1356307))

(assert (= (and b!1356307 res!901195) b!1356306))

(assert (= (and b!1356306 res!901197) b!1356304))

(assert (= (and b!1356304 res!901194) b!1356303))

(assert (= (and b!1356303 res!901193) b!1356314))

(assert (= (and b!1356314 res!901196) b!1356311))

(assert (= (and b!1356311 res!901198) b!1356308))

(assert (= (and b!1356308 res!901203) b!1356302))

(assert (= (and b!1356302 res!901201) b!1356313))

(assert (= (and b!1356313 c!126997) b!1356305))

(assert (= (and b!1356313 (not c!126997)) b!1356309))

(assert (= (and b!1356313 res!901202) b!1356310))

(assert (= (and b!1356310 res!901200) b!1356312))

(declare-fun m!1242343 () Bool)

(assert (=> b!1356313 m!1242343))

(assert (=> b!1356313 m!1242343))

(declare-fun m!1242345 () Bool)

(assert (=> b!1356313 m!1242345))

(declare-fun m!1242347 () Bool)

(assert (=> b!1356305 m!1242347))

(assert (=> b!1356305 m!1242343))

(declare-fun m!1242349 () Bool)

(assert (=> b!1356305 m!1242349))

(declare-fun m!1242351 () Bool)

(assert (=> b!1356305 m!1242351))

(declare-fun m!1242353 () Bool)

(assert (=> b!1356305 m!1242353))

(assert (=> b!1356305 m!1242343))

(assert (=> b!1356305 m!1242349))

(declare-fun m!1242355 () Bool)

(assert (=> b!1356305 m!1242355))

(declare-fun m!1242357 () Bool)

(assert (=> b!1356312 m!1242357))

(declare-fun m!1242359 () Bool)

(assert (=> b!1356312 m!1242359))

(declare-fun m!1242361 () Bool)

(assert (=> b!1356312 m!1242361))

(declare-fun m!1242363 () Bool)

(assert (=> start!114212 m!1242363))

(assert (=> b!1356310 m!1242353))

(declare-fun m!1242365 () Bool)

(assert (=> b!1356307 m!1242365))

(declare-fun m!1242367 () Bool)

(assert (=> b!1356303 m!1242367))

(declare-fun m!1242369 () Bool)

(assert (=> b!1356308 m!1242369))

(declare-fun m!1242371 () Bool)

(assert (=> b!1356306 m!1242371))

(declare-fun m!1242373 () Bool)

(assert (=> b!1356304 m!1242373))

(declare-fun m!1242375 () Bool)

(assert (=> b!1356314 m!1242375))

(push 1)

