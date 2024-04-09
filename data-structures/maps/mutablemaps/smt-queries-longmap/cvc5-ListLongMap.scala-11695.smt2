; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136822 () Bool)

(assert start!136822)

(declare-fun res!1078612 () Bool)

(declare-fun e!880487 () Bool)

(assert (=> start!136822 (=> (not res!1078612) (not e!880487))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105751 0))(
  ( (array!105752 (arr!50980 (Array (_ BitVec 32) (_ BitVec 64))) (size!51531 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105751)

(assert (=> start!136822 (= res!1078612 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51531 a!3559)) (bvslt (size!51531 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136822 e!880487))

(assert (=> start!136822 true))

(declare-fun array_inv!39625 (array!105751) Bool)

(assert (=> start!136822 (array_inv!39625 a!3559)))

(declare-fun b!1578535 () Bool)

(declare-fun res!1078613 () Bool)

(assert (=> b!1578535 (=> (not res!1078613) (not e!880487))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578535 (= res!1078613 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578536 () Bool)

(assert (=> b!1578536 (= e!880487 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvsge (bvsub from!2937 #b00000000000000000000000000000001) (size!51531 a!3559))))))

(assert (= (and start!136822 res!1078612) b!1578535))

(assert (= (and b!1578535 res!1078613) b!1578536))

(declare-fun m!1450637 () Bool)

(assert (=> start!136822 m!1450637))

(declare-fun m!1450639 () Bool)

(assert (=> b!1578535 m!1450639))

(push 1)

(assert (not start!136822))

(assert (not b!1578535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

