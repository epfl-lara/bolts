; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59814 () Bool)

(assert start!59814)

(declare-fun b!660408 () Bool)

(declare-fun res!428646 () Bool)

(declare-fun e!379492 () Bool)

(assert (=> b!660408 (=> (not res!428646) (not e!379492))))

(declare-datatypes ((List!12691 0))(
  ( (Nil!12688) (Cons!12687 (h!13732 (_ BitVec 64)) (t!18927 List!12691)) )
))
(declare-fun acc!681 () List!12691)

(declare-fun contains!3234 (List!12691 (_ BitVec 64)) Bool)

(assert (=> b!660408 (= res!428646 (not (contains!3234 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660409 () Bool)

(declare-fun res!428648 () Bool)

(assert (=> b!660409 (=> (not res!428648) (not e!379492))))

(declare-fun e!379489 () Bool)

(assert (=> b!660409 (= res!428648 e!379489)))

(declare-fun res!428654 () Bool)

(assert (=> b!660409 (=> res!428654 e!379489)))

(declare-fun e!379488 () Bool)

(assert (=> b!660409 (= res!428654 e!379488)))

(declare-fun res!428650 () Bool)

(assert (=> b!660409 (=> (not res!428650) (not e!379488))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660409 (= res!428650 (bvsgt from!3004 i!1382))))

(declare-fun b!660410 () Bool)

(assert (=> b!660410 (= e!379492 false)))

(declare-datatypes ((array!38817 0))(
  ( (array!38818 (arr!18597 (Array (_ BitVec 32) (_ BitVec 64))) (size!18961 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38817)

(declare-fun lt!308733 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38817 (_ BitVec 32) List!12691) Bool)

(assert (=> b!660410 (= lt!308733 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660411 () Bool)

(declare-fun e!379490 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660411 (= e!379490 (not (contains!3234 acc!681 k!2843)))))

(declare-fun res!428649 () Bool)

(assert (=> start!59814 (=> (not res!428649) (not e!379492))))

(assert (=> start!59814 (= res!428649 (and (bvslt (size!18961 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18961 a!3626))))))

(assert (=> start!59814 e!379492))

(assert (=> start!59814 true))

(declare-fun array_inv!14371 (array!38817) Bool)

(assert (=> start!59814 (array_inv!14371 a!3626)))

(declare-fun b!660412 () Bool)

(assert (=> b!660412 (= e!379488 (contains!3234 acc!681 k!2843))))

(declare-fun b!660413 () Bool)

(assert (=> b!660413 (= e!379489 e!379490)))

(declare-fun res!428651 () Bool)

(assert (=> b!660413 (=> (not res!428651) (not e!379490))))

(assert (=> b!660413 (= res!428651 (bvsle from!3004 i!1382))))

(declare-fun b!660414 () Bool)

(declare-fun res!428647 () Bool)

(assert (=> b!660414 (=> (not res!428647) (not e!379492))))

(assert (=> b!660414 (= res!428647 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12688))))

(declare-fun b!660415 () Bool)

(declare-fun res!428652 () Bool)

(assert (=> b!660415 (=> (not res!428652) (not e!379492))))

(assert (=> b!660415 (= res!428652 (not (contains!3234 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660416 () Bool)

(declare-fun res!428653 () Bool)

(assert (=> b!660416 (=> (not res!428653) (not e!379492))))

(declare-fun noDuplicate!481 (List!12691) Bool)

(assert (=> b!660416 (= res!428653 (noDuplicate!481 acc!681))))

(assert (= (and start!59814 res!428649) b!660416))

(assert (= (and b!660416 res!428653) b!660408))

(assert (= (and b!660408 res!428646) b!660415))

(assert (= (and b!660415 res!428652) b!660409))

(assert (= (and b!660409 res!428650) b!660412))

(assert (= (and b!660409 (not res!428654)) b!660413))

(assert (= (and b!660413 res!428651) b!660411))

(assert (= (and b!660409 res!428648) b!660414))

(assert (= (and b!660414 res!428647) b!660410))

(declare-fun m!633063 () Bool)

(assert (=> b!660416 m!633063))

(declare-fun m!633065 () Bool)

(assert (=> b!660414 m!633065))

(declare-fun m!633067 () Bool)

(assert (=> b!660408 m!633067))

(declare-fun m!633069 () Bool)

(assert (=> b!660410 m!633069))

(declare-fun m!633071 () Bool)

(assert (=> b!660412 m!633071))

(declare-fun m!633073 () Bool)

(assert (=> start!59814 m!633073))

(assert (=> b!660411 m!633071))

(declare-fun m!633075 () Bool)

(assert (=> b!660415 m!633075))

(push 1)

(assert (not b!660412))

(assert (not b!660414))

(assert (not b!660415))

(assert (not b!660410))

(assert (not b!660411))

(assert (not b!660416))

(assert (not start!59814))

(assert (not b!660408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

