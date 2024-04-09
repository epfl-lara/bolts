; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136856 () Bool)

(assert start!136856)

(declare-fun b!1578669 () Bool)

(declare-fun res!1078746 () Bool)

(declare-fun e!880578 () Bool)

(assert (=> b!1578669 (=> (not res!1078746) (not e!880578))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105776 0))(
  ( (array!105777 (arr!50991 (Array (_ BitVec 32) (_ BitVec 64))) (size!51542 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105776)

(assert (=> b!1578669 (= res!1078746 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51542 a!3559))))))

(declare-fun res!1078747 () Bool)

(assert (=> start!136856 (=> (not res!1078747) (not e!880578))))

(assert (=> start!136856 (= res!1078747 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51542 a!3559)) (bvslt (size!51542 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136856 e!880578))

(assert (=> start!136856 true))

(declare-fun array_inv!39636 (array!105776) Bool)

(assert (=> start!136856 (array_inv!39636 a!3559)))

(declare-fun b!1578671 () Bool)

(assert (=> b!1578671 (= e!880578 (not true))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578671 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52136 0))(
  ( (Unit!52137) )
))
(declare-fun lt!676252 () Unit!52136)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105776 (_ BitVec 64) (_ BitVec 32)) Unit!52136)

(assert (=> b!1578671 (= lt!676252 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578670 () Bool)

(declare-fun res!1078748 () Bool)

(assert (=> b!1578670 (=> (not res!1078748) (not e!880578))))

(assert (=> b!1578670 (= res!1078748 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578668 () Bool)

(declare-fun res!1078745 () Bool)

(assert (=> b!1578668 (=> (not res!1078745) (not e!880578))))

(assert (=> b!1578668 (= res!1078745 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(assert (= (and start!136856 res!1078747) b!1578668))

(assert (= (and b!1578668 res!1078745) b!1578669))

(assert (= (and b!1578669 res!1078746) b!1578670))

(assert (= (and b!1578670 res!1078748) b!1578671))

(declare-fun m!1450729 () Bool)

(assert (=> start!136856 m!1450729))

(declare-fun m!1450731 () Bool)

(assert (=> b!1578671 m!1450731))

(declare-fun m!1450733 () Bool)

(assert (=> b!1578671 m!1450733))

(declare-fun m!1450735 () Bool)

(assert (=> b!1578670 m!1450735))

(declare-fun m!1450737 () Bool)

(assert (=> b!1578668 m!1450737))

(push 1)

(assert (not b!1578668))

(assert (not start!136856))

(assert (not b!1578670))

(assert (not b!1578671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

