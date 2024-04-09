; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136846 () Bool)

(assert start!136846)

(declare-fun b!1578609 () Bool)

(declare-fun res!1078687 () Bool)

(declare-fun e!880548 () Bool)

(assert (=> b!1578609 (=> (not res!1078687) (not e!880548))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105766 0))(
  ( (array!105767 (arr!50986 (Array (_ BitVec 32) (_ BitVec 64))) (size!51537 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105766)

(assert (=> b!1578609 (= res!1078687 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51537 a!3559))))))

(declare-fun b!1578610 () Bool)

(declare-fun res!1078685 () Bool)

(assert (=> b!1578610 (=> (not res!1078685) (not e!880548))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578610 (= res!1078685 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun res!1078688 () Bool)

(assert (=> start!136846 (=> (not res!1078688) (not e!880548))))

(assert (=> start!136846 (= res!1078688 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51537 a!3559)) (bvslt (size!51537 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136846 e!880548))

(assert (=> start!136846 true))

(declare-fun array_inv!39631 (array!105766) Bool)

(assert (=> start!136846 (array_inv!39631 a!3559)))

(declare-fun b!1578608 () Bool)

(declare-fun res!1078686 () Bool)

(assert (=> b!1578608 (=> (not res!1078686) (not e!880548))))

(assert (=> b!1578608 (= res!1078686 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578611 () Bool)

(assert (=> b!1578611 (= e!880548 (bvsge (bvsub from!2937 #b00000000000000000000000000000001) from!2937))))

(assert (= (and start!136846 res!1078688) b!1578608))

(assert (= (and b!1578608 res!1078686) b!1578609))

(assert (= (and b!1578609 res!1078687) b!1578610))

(assert (= (and b!1578610 res!1078685) b!1578611))

(declare-fun m!1450691 () Bool)

(assert (=> b!1578610 m!1450691))

(declare-fun m!1450693 () Bool)

(assert (=> start!136846 m!1450693))

(declare-fun m!1450695 () Bool)

(assert (=> b!1578608 m!1450695))

(push 1)

(assert (not b!1578610))

(assert (not b!1578608))

(assert (not start!136846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

