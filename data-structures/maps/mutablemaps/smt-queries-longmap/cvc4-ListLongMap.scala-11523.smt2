; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134210 () Bool)

(assert start!134210)

(declare-fun b!1567547 () Bool)

(declare-fun res!1071372 () Bool)

(declare-fun e!873841 () Bool)

(assert (=> b!1567547 (=> (not res!1071372) (not e!873841))))

(declare-datatypes ((List!36831 0))(
  ( (Nil!36828) (Cons!36827 (h!38275 (_ BitVec 64)) (t!51746 List!36831)) )
))
(declare-fun acc!619 () List!36831)

(declare-fun noDuplicate!2681 (List!36831) Bool)

(assert (=> b!1567547 (= res!1071372 (noDuplicate!2681 acc!619))))

(declare-fun e!873842 () Bool)

(declare-datatypes ((array!104683 0))(
  ( (array!104684 (arr!50520 (Array (_ BitVec 32) (_ BitVec 64))) (size!51071 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104683)

(declare-fun b!1567548 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun contains!10390 (List!36831 (_ BitVec 64)) Bool)

(assert (=> b!1567548 (= e!873842 (not (contains!10390 acc!619 (select (arr!50520 a!3481) from!2856))))))

(declare-fun b!1567549 () Bool)

(declare-fun res!1071375 () Bool)

(assert (=> b!1567549 (=> (not res!1071375) (not e!873841))))

(assert (=> b!1567549 (= res!1071375 (not (contains!10390 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567550 () Bool)

(declare-fun res!1071371 () Bool)

(assert (=> b!1567550 (=> (not res!1071371) (not e!873841))))

(assert (=> b!1567550 (= res!1071371 (not (contains!10390 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567551 () Bool)

(declare-fun e!873843 () Bool)

(declare-fun lt!672952 () Bool)

(assert (=> b!1567551 (= e!873843 (and (not lt!672952) (bvslt (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000)))))

(declare-fun b!1567552 () Bool)

(assert (=> b!1567552 (= e!873841 e!873843)))

(declare-fun res!1071373 () Bool)

(assert (=> b!1567552 (=> (not res!1071373) (not e!873843))))

(assert (=> b!1567552 (= res!1071373 e!873842)))

(declare-fun res!1071377 () Bool)

(assert (=> b!1567552 (=> res!1071377 e!873842)))

(assert (=> b!1567552 (= res!1071377 lt!672952)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567552 (= lt!672952 (not (validKeyInArray!0 (select (arr!50520 a!3481) from!2856))))))

(declare-fun b!1567553 () Bool)

(declare-fun res!1071376 () Bool)

(assert (=> b!1567553 (=> (not res!1071376) (not e!873841))))

(assert (=> b!1567553 (= res!1071376 (bvslt from!2856 (size!51071 a!3481)))))

(declare-fun res!1071374 () Bool)

(assert (=> start!134210 (=> (not res!1071374) (not e!873841))))

(assert (=> start!134210 (= res!1071374 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51071 a!3481)) (bvslt (size!51071 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134210 e!873841))

(assert (=> start!134210 true))

(declare-fun array_inv!39165 (array!104683) Bool)

(assert (=> start!134210 (array_inv!39165 a!3481)))

(assert (= (and start!134210 res!1071374) b!1567547))

(assert (= (and b!1567547 res!1071372) b!1567549))

(assert (= (and b!1567549 res!1071375) b!1567550))

(assert (= (and b!1567550 res!1071371) b!1567553))

(assert (= (and b!1567553 res!1071376) b!1567552))

(assert (= (and b!1567552 (not res!1071377)) b!1567548))

(assert (= (and b!1567552 res!1071373) b!1567551))

(declare-fun m!1442387 () Bool)

(assert (=> b!1567552 m!1442387))

(assert (=> b!1567552 m!1442387))

(declare-fun m!1442389 () Bool)

(assert (=> b!1567552 m!1442389))

(declare-fun m!1442391 () Bool)

(assert (=> b!1567550 m!1442391))

(declare-fun m!1442393 () Bool)

(assert (=> b!1567549 m!1442393))

(declare-fun m!1442395 () Bool)

(assert (=> start!134210 m!1442395))

(assert (=> b!1567548 m!1442387))

(assert (=> b!1567548 m!1442387))

(declare-fun m!1442397 () Bool)

(assert (=> b!1567548 m!1442397))

(declare-fun m!1442399 () Bool)

(assert (=> b!1567547 m!1442399))

(push 1)

(assert (not b!1567548))

(assert (not b!1567552))

(assert (not b!1567550))

(assert (not b!1567547))

(assert (not start!134210))

(assert (not b!1567549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

