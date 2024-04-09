; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59860 () Bool)

(assert start!59860)

(declare-fun b!661249 () Bool)

(declare-fun res!429493 () Bool)

(declare-fun e!379835 () Bool)

(assert (=> b!661249 (=> (not res!429493) (not e!379835))))

(declare-datatypes ((List!12714 0))(
  ( (Nil!12711) (Cons!12710 (h!13755 (_ BitVec 64)) (t!18950 List!12714)) )
))
(declare-fun acc!681 () List!12714)

(declare-fun contains!3257 (List!12714 (_ BitVec 64)) Bool)

(assert (=> b!661249 (= res!429493 (not (contains!3257 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661250 () Bool)

(assert (=> b!661250 (= e!379835 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!38863 0))(
  ( (array!38864 (arr!18620 (Array (_ BitVec 32) (_ BitVec 64))) (size!18984 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38863)

(declare-fun arrayContainsKey!0 (array!38863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661250 (arrayContainsKey!0 (array!38864 (store (arr!18620 a!3626) i!1382 k!2843) (size!18984 a!3626)) k!2843 from!3004)))

(declare-fun res!429487 () Bool)

(assert (=> start!59860 (=> (not res!429487) (not e!379835))))

(assert (=> start!59860 (= res!429487 (and (bvslt (size!18984 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18984 a!3626))))))

(assert (=> start!59860 e!379835))

(assert (=> start!59860 true))

(declare-fun array_inv!14394 (array!38863) Bool)

(assert (=> start!59860 (array_inv!14394 a!3626)))

(declare-fun b!661251 () Bool)

(declare-fun res!429500 () Bool)

(assert (=> b!661251 (=> (not res!429500) (not e!379835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661251 (= res!429500 (validKeyInArray!0 k!2843))))

(declare-fun b!661252 () Bool)

(declare-fun res!429495 () Bool)

(assert (=> b!661252 (=> (not res!429495) (not e!379835))))

(assert (=> b!661252 (= res!429495 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18984 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661253 () Bool)

(declare-fun res!429498 () Bool)

(assert (=> b!661253 (=> (not res!429498) (not e!379835))))

(declare-fun e!379834 () Bool)

(assert (=> b!661253 (= res!429498 e!379834)))

(declare-fun res!429489 () Bool)

(assert (=> b!661253 (=> res!429489 e!379834)))

(declare-fun e!379836 () Bool)

(assert (=> b!661253 (= res!429489 e!379836)))

(declare-fun res!429488 () Bool)

(assert (=> b!661253 (=> (not res!429488) (not e!379836))))

(assert (=> b!661253 (= res!429488 (bvsgt from!3004 i!1382))))

(declare-fun b!661254 () Bool)

(declare-fun res!429496 () Bool)

(assert (=> b!661254 (=> (not res!429496) (not e!379835))))

(assert (=> b!661254 (= res!429496 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661255 () Bool)

(declare-fun res!429492 () Bool)

(assert (=> b!661255 (=> (not res!429492) (not e!379835))))

(assert (=> b!661255 (= res!429492 (not (contains!3257 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661256 () Bool)

(assert (=> b!661256 (= e!379836 (contains!3257 acc!681 k!2843))))

(declare-fun b!661257 () Bool)

(declare-fun res!429494 () Bool)

(assert (=> b!661257 (=> (not res!429494) (not e!379835))))

(declare-fun arrayNoDuplicates!0 (array!38863 (_ BitVec 32) List!12714) Bool)

(assert (=> b!661257 (= res!429494 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12711))))

(declare-fun b!661258 () Bool)

(declare-fun res!429491 () Bool)

(assert (=> b!661258 (=> (not res!429491) (not e!379835))))

(assert (=> b!661258 (= res!429491 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661259 () Bool)

(declare-fun res!429490 () Bool)

(assert (=> b!661259 (=> (not res!429490) (not e!379835))))

(declare-fun noDuplicate!504 (List!12714) Bool)

(assert (=> b!661259 (= res!429490 (noDuplicate!504 acc!681))))

(declare-fun b!661260 () Bool)

(declare-fun res!429497 () Bool)

(assert (=> b!661260 (=> (not res!429497) (not e!379835))))

(assert (=> b!661260 (= res!429497 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18984 a!3626))))))

(declare-fun b!661261 () Bool)

(declare-fun e!379833 () Bool)

(assert (=> b!661261 (= e!379834 e!379833)))

(declare-fun res!429499 () Bool)

(assert (=> b!661261 (=> (not res!429499) (not e!379833))))

(assert (=> b!661261 (= res!429499 (bvsle from!3004 i!1382))))

(declare-fun b!661262 () Bool)

(assert (=> b!661262 (= e!379833 (not (contains!3257 acc!681 k!2843)))))

(assert (= (and start!59860 res!429487) b!661259))

(assert (= (and b!661259 res!429490) b!661255))

(assert (= (and b!661255 res!429492) b!661249))

(assert (= (and b!661249 res!429493) b!661253))

(assert (= (and b!661253 res!429488) b!661256))

(assert (= (and b!661253 (not res!429489)) b!661261))

(assert (= (and b!661261 res!429499) b!661262))

(assert (= (and b!661253 res!429498) b!661257))

(assert (= (and b!661257 res!429494) b!661258))

(assert (= (and b!661258 res!429491) b!661260))

(assert (= (and b!661260 res!429497) b!661251))

(assert (= (and b!661251 res!429500) b!661254))

(assert (= (and b!661254 res!429496) b!661252))

(assert (= (and b!661252 res!429495) b!661250))

(declare-fun m!633497 () Bool)

(assert (=> b!661256 m!633497))

(declare-fun m!633499 () Bool)

(assert (=> b!661254 m!633499))

(declare-fun m!633501 () Bool)

(assert (=> b!661255 m!633501))

(declare-fun m!633503 () Bool)

(assert (=> b!661259 m!633503))

(declare-fun m!633505 () Bool)

(assert (=> b!661257 m!633505))

(declare-fun m!633507 () Bool)

(assert (=> b!661250 m!633507))

(declare-fun m!633509 () Bool)

(assert (=> b!661250 m!633509))

(declare-fun m!633511 () Bool)

(assert (=> start!59860 m!633511))

(declare-fun m!633513 () Bool)

(assert (=> b!661251 m!633513))

(declare-fun m!633515 () Bool)

(assert (=> b!661249 m!633515))

(declare-fun m!633517 () Bool)

(assert (=> b!661258 m!633517))

(assert (=> b!661262 m!633497))

(push 1)

(assert (not b!661249))

(assert (not start!59860))

(assert (not b!661250))

(assert (not b!661255))

(assert (not b!661251))

(assert (not b!661259))

(assert (not b!661262))

(assert (not b!661254))

(assert (not b!661256))

(assert (not b!661257))

(assert (not b!661258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

