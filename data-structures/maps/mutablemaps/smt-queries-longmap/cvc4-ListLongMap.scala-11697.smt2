; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136850 () Bool)

(assert start!136850)

(declare-fun b!1578635 () Bool)

(declare-fun e!880560 () Bool)

(declare-fun from!2937 () (_ BitVec 32))

(assert (=> b!1578635 (= e!880560 (bvsge (bvsub from!2937 #b00000000000000000000000000000001) from!2937))))

(declare-fun b!1578633 () Bool)

(declare-fun res!1078711 () Bool)

(assert (=> b!1578633 (=> (not res!1078711) (not e!880560))))

(declare-datatypes ((array!105770 0))(
  ( (array!105771 (arr!50988 (Array (_ BitVec 32) (_ BitVec 64))) (size!51539 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105770)

(assert (=> b!1578633 (= res!1078711 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51539 a!3559))))))

(declare-fun b!1578634 () Bool)

(declare-fun res!1078709 () Bool)

(assert (=> b!1578634 (=> (not res!1078709) (not e!880560))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578634 (= res!1078709 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun res!1078710 () Bool)

(assert (=> start!136850 (=> (not res!1078710) (not e!880560))))

(assert (=> start!136850 (= res!1078710 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51539 a!3559)) (bvslt (size!51539 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136850 e!880560))

(assert (=> start!136850 true))

(declare-fun array_inv!39633 (array!105770) Bool)

(assert (=> start!136850 (array_inv!39633 a!3559)))

(declare-fun b!1578632 () Bool)

(declare-fun res!1078712 () Bool)

(assert (=> b!1578632 (=> (not res!1078712) (not e!880560))))

(assert (=> b!1578632 (= res!1078712 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(assert (= (and start!136850 res!1078710) b!1578632))

(assert (= (and b!1578632 res!1078712) b!1578633))

(assert (= (and b!1578633 res!1078711) b!1578634))

(assert (= (and b!1578634 res!1078709) b!1578635))

(declare-fun m!1450703 () Bool)

(assert (=> b!1578634 m!1450703))

(declare-fun m!1450705 () Bool)

(assert (=> start!136850 m!1450705))

(declare-fun m!1450707 () Bool)

(assert (=> b!1578632 m!1450707))

(push 1)

(assert (not b!1578632))

(assert (not start!136850))

(assert (not b!1578634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

