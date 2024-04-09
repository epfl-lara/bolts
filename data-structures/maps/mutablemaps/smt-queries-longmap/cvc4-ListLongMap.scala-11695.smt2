; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136826 () Bool)

(assert start!136826)

(declare-fun res!1078624 () Bool)

(declare-fun e!880499 () Bool)

(assert (=> start!136826 (=> (not res!1078624) (not e!880499))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105755 0))(
  ( (array!105756 (arr!50982 (Array (_ BitVec 32) (_ BitVec 64))) (size!51533 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105755)

(assert (=> start!136826 (= res!1078624 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51533 a!3559)) (bvslt (size!51533 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136826 e!880499))

(assert (=> start!136826 true))

(declare-fun array_inv!39627 (array!105755) Bool)

(assert (=> start!136826 (array_inv!39627 a!3559)))

(declare-fun b!1578547 () Bool)

(declare-fun res!1078625 () Bool)

(assert (=> b!1578547 (=> (not res!1078625) (not e!880499))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578547 (= res!1078625 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578548 () Bool)

(assert (=> b!1578548 (= e!880499 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvsge (bvsub from!2937 #b00000000000000000000000000000001) (size!51533 a!3559))))))

(assert (= (and start!136826 res!1078624) b!1578547))

(assert (= (and b!1578547 res!1078625) b!1578548))

(declare-fun m!1450645 () Bool)

(assert (=> start!136826 m!1450645))

(declare-fun m!1450647 () Bool)

(assert (=> b!1578547 m!1450647))

(push 1)

(assert (not b!1578547))

(assert (not start!136826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

