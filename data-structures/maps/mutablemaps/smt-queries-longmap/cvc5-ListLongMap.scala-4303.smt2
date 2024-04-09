; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59862 () Bool)

(assert start!59862)

(declare-fun b!661291 () Bool)

(declare-fun e!379852 () Bool)

(declare-datatypes ((List!12715 0))(
  ( (Nil!12712) (Cons!12711 (h!13756 (_ BitVec 64)) (t!18951 List!12715)) )
))
(declare-fun acc!681 () List!12715)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3258 (List!12715 (_ BitVec 64)) Bool)

(assert (=> b!661291 (= e!379852 (contains!3258 acc!681 k!2843))))

(declare-fun b!661292 () Bool)

(declare-fun res!429536 () Bool)

(declare-fun e!379850 () Bool)

(assert (=> b!661292 (=> (not res!429536) (not e!379850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661292 (= res!429536 (validKeyInArray!0 k!2843))))

(declare-fun b!661293 () Bool)

(declare-fun res!429533 () Bool)

(assert (=> b!661293 (=> (not res!429533) (not e!379850))))

(declare-fun noDuplicate!505 (List!12715) Bool)

(assert (=> b!661293 (= res!429533 (noDuplicate!505 acc!681))))

(declare-fun b!661294 () Bool)

(declare-fun res!429539 () Bool)

(assert (=> b!661294 (=> (not res!429539) (not e!379850))))

(assert (=> b!661294 (= res!429539 (not (contains!3258 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661295 () Bool)

(declare-fun res!429538 () Bool)

(assert (=> b!661295 (=> (not res!429538) (not e!379850))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38865 0))(
  ( (array!38866 (arr!18621 (Array (_ BitVec 32) (_ BitVec 64))) (size!18985 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38865)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!661295 (= res!429538 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18985 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661296 () Bool)

(declare-fun res!429530 () Bool)

(assert (=> b!661296 (=> (not res!429530) (not e!379850))))

(declare-fun arrayContainsKey!0 (array!38865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661296 (= res!429530 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661297 () Bool)

(declare-fun res!429537 () Bool)

(assert (=> b!661297 (=> (not res!429537) (not e!379850))))

(assert (=> b!661297 (= res!429537 (not (contains!3258 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661298 () Bool)

(declare-fun res!429532 () Bool)

(assert (=> b!661298 (=> (not res!429532) (not e!379850))))

(declare-fun arrayNoDuplicates!0 (array!38865 (_ BitVec 32) List!12715) Bool)

(assert (=> b!661298 (= res!429532 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12712))))

(declare-fun b!661299 () Bool)

(assert (=> b!661299 (= e!379850 (not true))))

(assert (=> b!661299 (arrayContainsKey!0 (array!38866 (store (arr!18621 a!3626) i!1382 k!2843) (size!18985 a!3626)) k!2843 from!3004)))

(declare-fun res!429540 () Bool)

(assert (=> start!59862 (=> (not res!429540) (not e!379850))))

(assert (=> start!59862 (= res!429540 (and (bvslt (size!18985 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18985 a!3626))))))

(assert (=> start!59862 e!379850))

(assert (=> start!59862 true))

(declare-fun array_inv!14395 (array!38865) Bool)

(assert (=> start!59862 (array_inv!14395 a!3626)))

(declare-fun b!661300 () Bool)

(declare-fun e!379848 () Bool)

(declare-fun e!379851 () Bool)

(assert (=> b!661300 (= e!379848 e!379851)))

(declare-fun res!429529 () Bool)

(assert (=> b!661300 (=> (not res!429529) (not e!379851))))

(assert (=> b!661300 (= res!429529 (bvsle from!3004 i!1382))))

(declare-fun b!661301 () Bool)

(declare-fun res!429542 () Bool)

(assert (=> b!661301 (=> (not res!429542) (not e!379850))))

(assert (=> b!661301 (= res!429542 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661302 () Bool)

(declare-fun res!429531 () Bool)

(assert (=> b!661302 (=> (not res!429531) (not e!379850))))

(assert (=> b!661302 (= res!429531 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18985 a!3626))))))

(declare-fun b!661303 () Bool)

(declare-fun res!429534 () Bool)

(assert (=> b!661303 (=> (not res!429534) (not e!379850))))

(assert (=> b!661303 (= res!429534 e!379848)))

(declare-fun res!429541 () Bool)

(assert (=> b!661303 (=> res!429541 e!379848)))

(assert (=> b!661303 (= res!429541 e!379852)))

(declare-fun res!429535 () Bool)

(assert (=> b!661303 (=> (not res!429535) (not e!379852))))

(assert (=> b!661303 (= res!429535 (bvsgt from!3004 i!1382))))

(declare-fun b!661304 () Bool)

(assert (=> b!661304 (= e!379851 (not (contains!3258 acc!681 k!2843)))))

(assert (= (and start!59862 res!429540) b!661293))

(assert (= (and b!661293 res!429533) b!661297))

(assert (= (and b!661297 res!429537) b!661294))

(assert (= (and b!661294 res!429539) b!661303))

(assert (= (and b!661303 res!429535) b!661291))

(assert (= (and b!661303 (not res!429541)) b!661300))

(assert (= (and b!661300 res!429529) b!661304))

(assert (= (and b!661303 res!429534) b!661298))

(assert (= (and b!661298 res!429532) b!661301))

(assert (= (and b!661301 res!429542) b!661302))

(assert (= (and b!661302 res!429531) b!661292))

(assert (= (and b!661292 res!429536) b!661296))

(assert (= (and b!661296 res!429530) b!661295))

(assert (= (and b!661295 res!429538) b!661299))

(declare-fun m!633519 () Bool)

(assert (=> b!661299 m!633519))

(declare-fun m!633521 () Bool)

(assert (=> b!661299 m!633521))

(declare-fun m!633523 () Bool)

(assert (=> b!661293 m!633523))

(declare-fun m!633525 () Bool)

(assert (=> b!661297 m!633525))

(declare-fun m!633527 () Bool)

(assert (=> b!661294 m!633527))

(declare-fun m!633529 () Bool)

(assert (=> b!661301 m!633529))

(declare-fun m!633531 () Bool)

(assert (=> b!661304 m!633531))

(declare-fun m!633533 () Bool)

(assert (=> b!661296 m!633533))

(assert (=> b!661291 m!633531))

(declare-fun m!633535 () Bool)

(assert (=> b!661292 m!633535))

(declare-fun m!633537 () Bool)

(assert (=> start!59862 m!633537))

(declare-fun m!633539 () Bool)

(assert (=> b!661298 m!633539))

(push 1)

(assert (not b!661296))

(assert (not b!661294))

(assert (not b!661292))

(assert (not b!661299))

(assert (not b!661304))

(assert (not b!661297))

(assert (not b!661301))

(assert (not b!661298))

(assert (not start!59862))

(assert (not b!661293))

(assert (not b!661291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

