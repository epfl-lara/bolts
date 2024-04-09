; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59934 () Bool)

(assert start!59934)

(declare-fun b!663459 () Bool)

(declare-fun res!431475 () Bool)

(declare-fun e!380646 () Bool)

(assert (=> b!663459 (=> (not res!431475) (not e!380646))))

(declare-datatypes ((array!38937 0))(
  ( (array!38938 (arr!18657 (Array (_ BitVec 32) (_ BitVec 64))) (size!19021 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38937)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12751 0))(
  ( (Nil!12748) (Cons!12747 (h!13792 (_ BitVec 64)) (t!18987 List!12751)) )
))
(declare-fun acc!681 () List!12751)

(declare-fun arrayNoDuplicates!0 (array!38937 (_ BitVec 32) List!12751) Bool)

(assert (=> b!663459 (= res!431475 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663460 () Bool)

(declare-fun res!431476 () Bool)

(assert (=> b!663460 (=> (not res!431476) (not e!380646))))

(declare-fun noDuplicate!541 (List!12751) Bool)

(assert (=> b!663460 (= res!431476 (noDuplicate!541 acc!681))))

(declare-fun b!663461 () Bool)

(declare-fun e!380647 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3294 (List!12751 (_ BitVec 64)) Bool)

(assert (=> b!663461 (= e!380647 (contains!3294 acc!681 k!2843))))

(declare-fun b!663462 () Bool)

(declare-fun res!431477 () Bool)

(assert (=> b!663462 (=> (not res!431477) (not e!380646))))

(assert (=> b!663462 (= res!431477 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12748))))

(declare-fun b!663463 () Bool)

(declare-fun res!431483 () Bool)

(assert (=> b!663463 (=> (not res!431483) (not e!380646))))

(declare-fun e!380644 () Bool)

(assert (=> b!663463 (= res!431483 e!380644)))

(declare-fun res!431478 () Bool)

(assert (=> b!663463 (=> res!431478 e!380644)))

(assert (=> b!663463 (= res!431478 e!380647)))

(declare-fun res!431486 () Bool)

(assert (=> b!663463 (=> (not res!431486) (not e!380647))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663463 (= res!431486 (bvsgt from!3004 i!1382))))

(declare-fun b!663464 () Bool)

(declare-datatypes ((Unit!23080 0))(
  ( (Unit!23081) )
))
(declare-fun e!380649 () Unit!23080)

(declare-fun lt!309291 () Unit!23080)

(assert (=> b!663464 (= e!380649 lt!309291)))

(declare-fun lt!309294 () Unit!23080)

(declare-fun lemmaListSubSeqRefl!0 (List!12751) Unit!23080)

(assert (=> b!663464 (= lt!309294 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!32 (List!12751 List!12751) Bool)

(assert (=> b!663464 (subseq!32 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38937 List!12751 List!12751 (_ BitVec 32)) Unit!23080)

(declare-fun $colon$colon!163 (List!12751 (_ BitVec 64)) List!12751)

(assert (=> b!663464 (= lt!309291 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!163 acc!681 (select (arr!18657 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663464 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663465 () Bool)

(declare-fun e!380650 () Bool)

(assert (=> b!663465 (= e!380644 e!380650)))

(declare-fun res!431480 () Bool)

(assert (=> b!663465 (=> (not res!431480) (not e!380650))))

(assert (=> b!663465 (= res!431480 (bvsle from!3004 i!1382))))

(declare-fun b!663466 () Bool)

(declare-fun e!380645 () Unit!23080)

(declare-fun Unit!23082 () Unit!23080)

(assert (=> b!663466 (= e!380645 Unit!23082)))

(declare-fun lt!309292 () Unit!23080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38937 (_ BitVec 64) (_ BitVec 32)) Unit!23080)

(assert (=> b!663466 (= lt!309292 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663466 false))

(declare-fun b!663467 () Bool)

(declare-fun res!431482 () Bool)

(assert (=> b!663467 (=> (not res!431482) (not e!380646))))

(assert (=> b!663467 (= res!431482 (not (contains!3294 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663468 () Bool)

(assert (=> b!663468 (= e!380650 (not (contains!3294 acc!681 k!2843)))))

(declare-fun b!663469 () Bool)

(assert (=> b!663469 (= e!380646 (not true))))

(declare-fun lt!309293 () Unit!23080)

(assert (=> b!663469 (= lt!309293 e!380649)))

(declare-fun c!76361 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663469 (= c!76361 (validKeyInArray!0 (select (arr!18657 a!3626) from!3004)))))

(declare-fun lt!309290 () Unit!23080)

(assert (=> b!663469 (= lt!309290 e!380645)))

(declare-fun c!76360 () Bool)

(declare-fun arrayContainsKey!0 (array!38937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663469 (= c!76360 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663469 (arrayContainsKey!0 (array!38938 (store (arr!18657 a!3626) i!1382 k!2843) (size!19021 a!3626)) k!2843 from!3004)))

(declare-fun b!663470 () Bool)

(declare-fun res!431481 () Bool)

(assert (=> b!663470 (=> (not res!431481) (not e!380646))))

(assert (=> b!663470 (= res!431481 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19021 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663471 () Bool)

(declare-fun res!431473 () Bool)

(assert (=> b!663471 (=> (not res!431473) (not e!380646))))

(assert (=> b!663471 (= res!431473 (not (contains!3294 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663472 () Bool)

(declare-fun Unit!23083 () Unit!23080)

(assert (=> b!663472 (= e!380649 Unit!23083)))

(declare-fun b!663473 () Bool)

(declare-fun res!431484 () Bool)

(assert (=> b!663473 (=> (not res!431484) (not e!380646))))

(assert (=> b!663473 (= res!431484 (validKeyInArray!0 k!2843))))

(declare-fun res!431485 () Bool)

(assert (=> start!59934 (=> (not res!431485) (not e!380646))))

(assert (=> start!59934 (= res!431485 (and (bvslt (size!19021 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19021 a!3626))))))

(assert (=> start!59934 e!380646))

(assert (=> start!59934 true))

(declare-fun array_inv!14431 (array!38937) Bool)

(assert (=> start!59934 (array_inv!14431 a!3626)))

(declare-fun b!663474 () Bool)

(declare-fun Unit!23084 () Unit!23080)

(assert (=> b!663474 (= e!380645 Unit!23084)))

(declare-fun b!663475 () Bool)

(declare-fun res!431474 () Bool)

(assert (=> b!663475 (=> (not res!431474) (not e!380646))))

(assert (=> b!663475 (= res!431474 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19021 a!3626))))))

(declare-fun b!663476 () Bool)

(declare-fun res!431479 () Bool)

(assert (=> b!663476 (=> (not res!431479) (not e!380646))))

(assert (=> b!663476 (= res!431479 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!59934 res!431485) b!663460))

(assert (= (and b!663460 res!431476) b!663471))

(assert (= (and b!663471 res!431473) b!663467))

(assert (= (and b!663467 res!431482) b!663463))

(assert (= (and b!663463 res!431486) b!663461))

(assert (= (and b!663463 (not res!431478)) b!663465))

(assert (= (and b!663465 res!431480) b!663468))

(assert (= (and b!663463 res!431483) b!663462))

(assert (= (and b!663462 res!431477) b!663459))

(assert (= (and b!663459 res!431475) b!663475))

(assert (= (and b!663475 res!431474) b!663473))

(assert (= (and b!663473 res!431484) b!663476))

(assert (= (and b!663476 res!431479) b!663470))

(assert (= (and b!663470 res!431481) b!663469))

(assert (= (and b!663469 c!76360) b!663466))

(assert (= (and b!663469 (not c!76360)) b!663474))

(assert (= (and b!663469 c!76361) b!663464))

(assert (= (and b!663469 (not c!76361)) b!663472))

(declare-fun m!635043 () Bool)

(assert (=> b!663468 m!635043))

(declare-fun m!635045 () Bool)

(assert (=> b!663462 m!635045))

(declare-fun m!635047 () Bool)

(assert (=> start!59934 m!635047))

(declare-fun m!635049 () Bool)

(assert (=> b!663467 m!635049))

(declare-fun m!635051 () Bool)

(assert (=> b!663460 m!635051))

(declare-fun m!635053 () Bool)

(assert (=> b!663464 m!635053))

(declare-fun m!635055 () Bool)

(assert (=> b!663464 m!635055))

(declare-fun m!635057 () Bool)

(assert (=> b!663464 m!635057))

(declare-fun m!635059 () Bool)

(assert (=> b!663464 m!635059))

(assert (=> b!663464 m!635055))

(assert (=> b!663464 m!635057))

(declare-fun m!635061 () Bool)

(assert (=> b!663464 m!635061))

(declare-fun m!635063 () Bool)

(assert (=> b!663464 m!635063))

(declare-fun m!635065 () Bool)

(assert (=> b!663466 m!635065))

(declare-fun m!635067 () Bool)

(assert (=> b!663473 m!635067))

(assert (=> b!663469 m!635055))

(declare-fun m!635069 () Bool)

(assert (=> b!663469 m!635069))

(declare-fun m!635071 () Bool)

(assert (=> b!663469 m!635071))

(assert (=> b!663469 m!635055))

(declare-fun m!635073 () Bool)

(assert (=> b!663469 m!635073))

(declare-fun m!635075 () Bool)

(assert (=> b!663469 m!635075))

(declare-fun m!635077 () Bool)

(assert (=> b!663476 m!635077))

(declare-fun m!635079 () Bool)

(assert (=> b!663471 m!635079))

(assert (=> b!663461 m!635043))

(declare-fun m!635081 () Bool)

(assert (=> b!663459 m!635081))

(push 1)

(assert (not b!663476))

(assert (not b!663459))

(assert (not b!663468))

(assert (not b!663469))

(assert (not b!663466))

(assert (not b!663464))

(assert (not b!663461))

(assert (not b!663467))

(assert (not start!59934))

(assert (not b!663473))

(assert (not b!663471))

(assert (not b!663462))

(assert (not b!663460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

