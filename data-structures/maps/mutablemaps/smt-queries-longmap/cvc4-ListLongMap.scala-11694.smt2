; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136820 () Bool)

(assert start!136820)

(declare-fun res!1078606 () Bool)

(declare-fun e!880481 () Bool)

(assert (=> start!136820 (=> (not res!1078606) (not e!880481))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105749 0))(
  ( (array!105750 (arr!50979 (Array (_ BitVec 32) (_ BitVec 64))) (size!51530 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105749)

(assert (=> start!136820 (= res!1078606 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51530 a!3559)) (bvslt (size!51530 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136820 e!880481))

(assert (=> start!136820 true))

(declare-fun array_inv!39624 (array!105749) Bool)

(assert (=> start!136820 (array_inv!39624 a!3559)))

(declare-fun b!1578529 () Bool)

(declare-fun res!1078607 () Bool)

(assert (=> b!1578529 (=> (not res!1078607) (not e!880481))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578529 (= res!1078607 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578530 () Bool)

(assert (=> b!1578530 (= e!880481 (and (bvsle from!2937 #b00000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!51530 a!3559))))))

(assert (= (and start!136820 res!1078606) b!1578529))

(assert (= (and b!1578529 res!1078607) b!1578530))

(declare-fun m!1450633 () Bool)

(assert (=> start!136820 m!1450633))

(declare-fun m!1450635 () Bool)

(assert (=> b!1578529 m!1450635))

(push 1)

(assert (not b!1578529))

(assert (not start!136820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

