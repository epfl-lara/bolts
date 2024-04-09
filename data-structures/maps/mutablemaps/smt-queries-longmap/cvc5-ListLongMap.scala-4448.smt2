; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61806 () Bool)

(assert start!61806)

(declare-fun b!691564 () Bool)

(declare-fun e!393517 () Bool)

(declare-datatypes ((List!13150 0))(
  ( (Nil!13147) (Cons!13146 (h!14191 (_ BitVec 64)) (t!19425 List!13150)) )
))
(declare-fun acc!681 () List!13150)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3693 (List!13150 (_ BitVec 64)) Bool)

(assert (=> b!691564 (= e!393517 (contains!3693 acc!681 k!2843))))

(declare-fun b!691565 () Bool)

(declare-fun res!456071 () Bool)

(declare-fun e!393512 () Bool)

(assert (=> b!691565 (=> (not res!456071) (not e!393512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691565 (= res!456071 (validKeyInArray!0 k!2843))))

(declare-fun b!691566 () Bool)

(declare-fun res!456074 () Bool)

(assert (=> b!691566 (=> (not res!456074) (not e!393512))))

(declare-fun e!393514 () Bool)

(assert (=> b!691566 (= res!456074 e!393514)))

(declare-fun res!456061 () Bool)

(assert (=> b!691566 (=> res!456061 e!393514)))

(assert (=> b!691566 (= res!456061 e!393517)))

(declare-fun res!456072 () Bool)

(assert (=> b!691566 (=> (not res!456072) (not e!393517))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691566 (= res!456072 (bvsgt from!3004 i!1382))))

(declare-fun b!691567 () Bool)

(declare-fun res!456073 () Bool)

(assert (=> b!691567 (=> (not res!456073) (not e!393512))))

(declare-datatypes ((array!39783 0))(
  ( (array!39784 (arr!19056 (Array (_ BitVec 32) (_ BitVec 64))) (size!19439 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39783)

(declare-fun arrayContainsKey!0 (array!39783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691567 (= res!456073 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691568 () Bool)

(declare-fun res!456064 () Bool)

(assert (=> b!691568 (=> (not res!456064) (not e!393512))))

(declare-fun arrayNoDuplicates!0 (array!39783 (_ BitVec 32) List!13150) Bool)

(assert (=> b!691568 (= res!456064 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13147))))

(declare-fun b!691569 () Bool)

(assert (=> b!691569 (= e!393512 (and (not (= (select (arr!19056 a!3626) from!3004) k!2843)) (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!24394 0))(
  ( (Unit!24395) )
))
(declare-fun lt!316445 () Unit!24394)

(declare-fun e!393516 () Unit!24394)

(assert (=> b!691569 (= lt!316445 e!393516)))

(declare-fun c!78119 () Bool)

(assert (=> b!691569 (= c!78119 (= (select (arr!19056 a!3626) from!3004) k!2843))))

(declare-fun b!691570 () Bool)

(declare-fun res!456069 () Bool)

(assert (=> b!691570 (=> (not res!456069) (not e!393512))))

(assert (=> b!691570 (= res!456069 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19439 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691571 () Bool)

(declare-fun e!393515 () Bool)

(assert (=> b!691571 (= e!393515 (not (contains!3693 acc!681 k!2843)))))

(declare-fun b!691572 () Bool)

(assert (=> b!691572 (= e!393514 e!393515)))

(declare-fun res!456066 () Bool)

(assert (=> b!691572 (=> (not res!456066) (not e!393515))))

(assert (=> b!691572 (= res!456066 (bvsle from!3004 i!1382))))

(declare-fun b!691573 () Bool)

(declare-fun Unit!24396 () Unit!24394)

(assert (=> b!691573 (= e!393516 Unit!24396)))

(declare-fun res!456062 () Bool)

(assert (=> start!61806 (=> (not res!456062) (not e!393512))))

(assert (=> start!61806 (= res!456062 (and (bvslt (size!19439 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19439 a!3626))))))

(assert (=> start!61806 e!393512))

(assert (=> start!61806 true))

(declare-fun array_inv!14830 (array!39783) Bool)

(assert (=> start!61806 (array_inv!14830 a!3626)))

(declare-fun b!691574 () Bool)

(declare-fun res!456060 () Bool)

(assert (=> b!691574 (=> (not res!456060) (not e!393512))))

(assert (=> b!691574 (= res!456060 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19439 a!3626))))))

(declare-fun b!691575 () Bool)

(declare-fun res!456063 () Bool)

(assert (=> b!691575 (=> (not res!456063) (not e!393512))))

(assert (=> b!691575 (= res!456063 (not (contains!3693 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691576 () Bool)

(declare-fun Unit!24397 () Unit!24394)

(assert (=> b!691576 (= e!393516 Unit!24397)))

(assert (=> b!691576 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316446 () Unit!24394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39783 (_ BitVec 64) (_ BitVec 32)) Unit!24394)

(assert (=> b!691576 (= lt!316446 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691576 false))

(declare-fun b!691577 () Bool)

(declare-fun res!456070 () Bool)

(assert (=> b!691577 (=> (not res!456070) (not e!393512))))

(declare-fun noDuplicate!940 (List!13150) Bool)

(assert (=> b!691577 (= res!456070 (noDuplicate!940 acc!681))))

(declare-fun b!691578 () Bool)

(declare-fun res!456067 () Bool)

(assert (=> b!691578 (=> (not res!456067) (not e!393512))))

(assert (=> b!691578 (= res!456067 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691579 () Bool)

(declare-fun res!456065 () Bool)

(assert (=> b!691579 (=> (not res!456065) (not e!393512))))

(assert (=> b!691579 (= res!456065 (not (contains!3693 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691580 () Bool)

(declare-fun res!456068 () Bool)

(assert (=> b!691580 (=> (not res!456068) (not e!393512))))

(assert (=> b!691580 (= res!456068 (validKeyInArray!0 (select (arr!19056 a!3626) from!3004)))))

(assert (= (and start!61806 res!456062) b!691577))

(assert (= (and b!691577 res!456070) b!691575))

(assert (= (and b!691575 res!456063) b!691579))

(assert (= (and b!691579 res!456065) b!691566))

(assert (= (and b!691566 res!456072) b!691564))

(assert (= (and b!691566 (not res!456061)) b!691572))

(assert (= (and b!691572 res!456066) b!691571))

(assert (= (and b!691566 res!456074) b!691568))

(assert (= (and b!691568 res!456064) b!691578))

(assert (= (and b!691578 res!456067) b!691574))

(assert (= (and b!691574 res!456060) b!691565))

(assert (= (and b!691565 res!456071) b!691567))

(assert (= (and b!691567 res!456073) b!691570))

(assert (= (and b!691570 res!456069) b!691580))

(assert (= (and b!691580 res!456068) b!691569))

(assert (= (and b!691569 c!78119) b!691576))

(assert (= (and b!691569 (not c!78119)) b!691573))

(declare-fun m!654495 () Bool)

(assert (=> b!691565 m!654495))

(declare-fun m!654497 () Bool)

(assert (=> b!691577 m!654497))

(declare-fun m!654499 () Bool)

(assert (=> b!691569 m!654499))

(declare-fun m!654501 () Bool)

(assert (=> b!691578 m!654501))

(assert (=> b!691580 m!654499))

(assert (=> b!691580 m!654499))

(declare-fun m!654503 () Bool)

(assert (=> b!691580 m!654503))

(declare-fun m!654505 () Bool)

(assert (=> b!691567 m!654505))

(declare-fun m!654507 () Bool)

(assert (=> b!691575 m!654507))

(declare-fun m!654509 () Bool)

(assert (=> b!691571 m!654509))

(declare-fun m!654511 () Bool)

(assert (=> b!691579 m!654511))

(declare-fun m!654513 () Bool)

(assert (=> b!691576 m!654513))

(declare-fun m!654515 () Bool)

(assert (=> b!691576 m!654515))

(assert (=> b!691564 m!654509))

(declare-fun m!654517 () Bool)

(assert (=> b!691568 m!654517))

(declare-fun m!654519 () Bool)

(assert (=> start!61806 m!654519))

(push 1)

(assert (not b!691564))

(assert (not b!691576))

(assert (not b!691571))

(assert (not b!691568))

(assert (not b!691575))

(assert (not b!691580))

(assert (not b!691577))

