; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62154 () Bool)

(assert start!62154)

(declare-fun res!459650 () Bool)

(declare-fun e!395580 () Bool)

(assert (=> start!62154 (=> (not res!459650) (not e!395580))))

(declare-datatypes ((array!39900 0))(
  ( (array!39901 (arr!19107 (Array (_ BitVec 32) (_ BitVec 64))) (size!19490 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39900)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62154 (= res!459650 (and (bvslt (size!19490 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19490 a!3626))))))

(assert (=> start!62154 e!395580))

(assert (=> start!62154 true))

(declare-fun array_inv!14881 (array!39900) Bool)

(assert (=> start!62154 (array_inv!14881 a!3626)))

(declare-fun b!695523 () Bool)

(declare-fun res!459647 () Bool)

(assert (=> b!695523 (=> (not res!459647) (not e!395580))))

(declare-datatypes ((List!13201 0))(
  ( (Nil!13198) (Cons!13197 (h!14242 (_ BitVec 64)) (t!19491 List!13201)) )
))
(declare-fun acc!681 () List!13201)

(declare-fun noDuplicate!991 (List!13201) Bool)

(assert (=> b!695523 (= res!459647 (noDuplicate!991 acc!681))))

(declare-fun b!695524 () Bool)

(declare-fun res!459652 () Bool)

(assert (=> b!695524 (=> (not res!459652) (not e!395580))))

(declare-fun contains!3744 (List!13201 (_ BitVec 64)) Bool)

(assert (=> b!695524 (= res!459652 (not (contains!3744 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695525 () Bool)

(declare-fun res!459653 () Bool)

(assert (=> b!695525 (=> (not res!459653) (not e!395580))))

(declare-fun e!395577 () Bool)

(assert (=> b!695525 (= res!459653 e!395577)))

(declare-fun res!459651 () Bool)

(assert (=> b!695525 (=> res!459651 e!395577)))

(declare-fun e!395578 () Bool)

(assert (=> b!695525 (= res!459651 e!395578)))

(declare-fun res!459645 () Bool)

(assert (=> b!695525 (=> (not res!459645) (not e!395578))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695525 (= res!459645 (bvsgt from!3004 i!1382))))

(declare-fun b!695526 () Bool)

(declare-fun e!395579 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!695526 (= e!395579 (not (contains!3744 acc!681 k!2843)))))

(declare-fun b!695527 () Bool)

(assert (=> b!695527 (= e!395578 (contains!3744 acc!681 k!2843))))

(declare-fun b!695528 () Bool)

(assert (=> b!695528 (= e!395577 e!395579)))

(declare-fun res!459646 () Bool)

(assert (=> b!695528 (=> (not res!459646) (not e!395579))))

(assert (=> b!695528 (= res!459646 (bvsle from!3004 i!1382))))

(declare-fun b!695529 () Bool)

(declare-fun res!459648 () Bool)

(assert (=> b!695529 (=> (not res!459648) (not e!395580))))

(declare-fun arrayNoDuplicates!0 (array!39900 (_ BitVec 32) List!13201) Bool)

(assert (=> b!695529 (= res!459648 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13198))))

(declare-fun b!695530 () Bool)

(assert (=> b!695530 (= e!395580 false)))

(declare-fun lt!317019 () Bool)

(assert (=> b!695530 (= lt!317019 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695531 () Bool)

(declare-fun res!459649 () Bool)

(assert (=> b!695531 (=> (not res!459649) (not e!395580))))

(assert (=> b!695531 (= res!459649 (not (contains!3744 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62154 res!459650) b!695523))

(assert (= (and b!695523 res!459647) b!695531))

(assert (= (and b!695531 res!459649) b!695524))

(assert (= (and b!695524 res!459652) b!695525))

(assert (= (and b!695525 res!459645) b!695527))

(assert (= (and b!695525 (not res!459651)) b!695528))

(assert (= (and b!695528 res!459646) b!695526))

(assert (= (and b!695525 res!459653) b!695529))

(assert (= (and b!695529 res!459648) b!695530))

(declare-fun m!656955 () Bool)

(assert (=> b!695524 m!656955))

(declare-fun m!656957 () Bool)

(assert (=> b!695527 m!656957))

(declare-fun m!656959 () Bool)

(assert (=> b!695531 m!656959))

(declare-fun m!656961 () Bool)

(assert (=> start!62154 m!656961))

(declare-fun m!656963 () Bool)

(assert (=> b!695523 m!656963))

(declare-fun m!656965 () Bool)

(assert (=> b!695529 m!656965))

(assert (=> b!695526 m!656957))

(declare-fun m!656967 () Bool)

(assert (=> b!695530 m!656967))

(push 1)

(assert (not start!62154))

(assert (not b!695531))

(assert (not b!695523))

(assert (not b!695524))

(assert (not b!695530))

(assert (not b!695529))

(assert (not b!695526))

(assert (not b!695527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

