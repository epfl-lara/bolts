; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59854 () Bool)

(assert start!59854)

(declare-fun b!661123 () Bool)

(declare-fun e!379790 () Bool)

(declare-datatypes ((List!12711 0))(
  ( (Nil!12708) (Cons!12707 (h!13752 (_ BitVec 64)) (t!18947 List!12711)) )
))
(declare-fun acc!681 () List!12711)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3254 (List!12711 (_ BitVec 64)) Bool)

(assert (=> b!661123 (= e!379790 (contains!3254 acc!681 k!2843))))

(declare-fun b!661125 () Bool)

(declare-fun res!429373 () Bool)

(declare-fun e!379791 () Bool)

(assert (=> b!661125 (=> (not res!429373) (not e!379791))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38857 0))(
  ( (array!38858 (arr!18617 (Array (_ BitVec 32) (_ BitVec 64))) (size!18981 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38857)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!661125 (= res!429373 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18981 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661126 () Bool)

(declare-fun e!379788 () Bool)

(assert (=> b!661126 (= e!379788 (not (contains!3254 acc!681 k!2843)))))

(declare-fun b!661127 () Bool)

(declare-fun res!429372 () Bool)

(assert (=> b!661127 (=> (not res!429372) (not e!379791))))

(assert (=> b!661127 (= res!429372 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18981 a!3626))))))

(declare-fun b!661128 () Bool)

(declare-fun res!429361 () Bool)

(assert (=> b!661128 (=> (not res!429361) (not e!379791))))

(declare-fun noDuplicate!501 (List!12711) Bool)

(assert (=> b!661128 (= res!429361 (noDuplicate!501 acc!681))))

(declare-fun b!661129 () Bool)

(declare-fun res!429365 () Bool)

(assert (=> b!661129 (=> (not res!429365) (not e!379791))))

(declare-fun arrayContainsKey!0 (array!38857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661129 (= res!429365 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661130 () Bool)

(declare-fun res!429368 () Bool)

(assert (=> b!661130 (=> (not res!429368) (not e!379791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661130 (= res!429368 (validKeyInArray!0 k!2843))))

(declare-fun b!661131 () Bool)

(declare-fun e!379792 () Bool)

(assert (=> b!661131 (= e!379792 e!379788)))

(declare-fun res!429366 () Bool)

(assert (=> b!661131 (=> (not res!429366) (not e!379788))))

(assert (=> b!661131 (= res!429366 (bvsle from!3004 i!1382))))

(declare-fun b!661132 () Bool)

(declare-fun res!429369 () Bool)

(assert (=> b!661132 (=> (not res!429369) (not e!379791))))

(assert (=> b!661132 (= res!429369 (not (contains!3254 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!429362 () Bool)

(assert (=> start!59854 (=> (not res!429362) (not e!379791))))

(assert (=> start!59854 (= res!429362 (and (bvslt (size!18981 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18981 a!3626))))))

(assert (=> start!59854 e!379791))

(assert (=> start!59854 true))

(declare-fun array_inv!14391 (array!38857) Bool)

(assert (=> start!59854 (array_inv!14391 a!3626)))

(declare-fun b!661124 () Bool)

(declare-fun res!429374 () Bool)

(assert (=> b!661124 (=> (not res!429374) (not e!379791))))

(assert (=> b!661124 (= res!429374 (not (contains!3254 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661133 () Bool)

(declare-fun res!429371 () Bool)

(assert (=> b!661133 (=> (not res!429371) (not e!379791))))

(assert (=> b!661133 (= res!429371 e!379792)))

(declare-fun res!429367 () Bool)

(assert (=> b!661133 (=> res!429367 e!379792)))

(assert (=> b!661133 (= res!429367 e!379790)))

(declare-fun res!429363 () Bool)

(assert (=> b!661133 (=> (not res!429363) (not e!379790))))

(assert (=> b!661133 (= res!429363 (bvsgt from!3004 i!1382))))

(declare-fun b!661134 () Bool)

(declare-fun res!429364 () Bool)

(assert (=> b!661134 (=> (not res!429364) (not e!379791))))

(declare-fun arrayNoDuplicates!0 (array!38857 (_ BitVec 32) List!12711) Bool)

(assert (=> b!661134 (= res!429364 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12708))))

(declare-fun b!661135 () Bool)

(declare-fun res!429370 () Bool)

(assert (=> b!661135 (=> (not res!429370) (not e!379791))))

(assert (=> b!661135 (= res!429370 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661136 () Bool)

(assert (=> b!661136 (= e!379791 (not true))))

(assert (=> b!661136 (arrayContainsKey!0 (array!38858 (store (arr!18617 a!3626) i!1382 k!2843) (size!18981 a!3626)) k!2843 from!3004)))

(assert (= (and start!59854 res!429362) b!661128))

(assert (= (and b!661128 res!429361) b!661132))

(assert (= (and b!661132 res!429369) b!661124))

(assert (= (and b!661124 res!429374) b!661133))

(assert (= (and b!661133 res!429363) b!661123))

(assert (= (and b!661133 (not res!429367)) b!661131))

(assert (= (and b!661131 res!429366) b!661126))

(assert (= (and b!661133 res!429371) b!661134))

(assert (= (and b!661134 res!429364) b!661135))

(assert (= (and b!661135 res!429370) b!661127))

(assert (= (and b!661127 res!429372) b!661130))

(assert (= (and b!661130 res!429368) b!661129))

(assert (= (and b!661129 res!429365) b!661125))

(assert (= (and b!661125 res!429373) b!661136))

(declare-fun m!633431 () Bool)

(assert (=> b!661129 m!633431))

(declare-fun m!633433 () Bool)

(assert (=> b!661136 m!633433))

(declare-fun m!633435 () Bool)

(assert (=> b!661136 m!633435))

(declare-fun m!633437 () Bool)

(assert (=> b!661130 m!633437))

(declare-fun m!633439 () Bool)

(assert (=> b!661135 m!633439))

(declare-fun m!633441 () Bool)

(assert (=> b!661132 m!633441))

(declare-fun m!633443 () Bool)

(assert (=> b!661126 m!633443))

(declare-fun m!633445 () Bool)

(assert (=> start!59854 m!633445))

(declare-fun m!633447 () Bool)

(assert (=> b!661128 m!633447))

(declare-fun m!633449 () Bool)

(assert (=> b!661124 m!633449))

(assert (=> b!661123 m!633443))

(declare-fun m!633451 () Bool)

(assert (=> b!661134 m!633451))

(push 1)

(assert (not b!661132))

(assert (not b!661136))

(assert (not b!661135))

(assert (not b!661128))

(assert (not b!661130))

(assert (not b!661124))

(assert (not b!661129))

(assert (not b!661134))

(assert (not b!661126))

(assert (not b!661123))

(assert (not start!59854))

(check-sat)

(pop 1)

