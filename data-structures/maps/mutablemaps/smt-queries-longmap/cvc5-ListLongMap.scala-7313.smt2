; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93516 () Bool)

(assert start!93516)

(declare-fun res!707343 () Bool)

(declare-fun e!602381 () Bool)

(assert (=> start!93516 (=> (not res!707343) (not e!602381))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66767 0))(
  ( (array!66768 (arr!32098 (Array (_ BitVec 32) (_ BitVec 64))) (size!32635 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66767)

(assert (=> start!93516 (= res!707343 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32635 a!3475)) (bvslt (size!32635 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93516 e!602381))

(assert (=> start!93516 true))

(declare-fun array_inv!24720 (array!66767) Bool)

(assert (=> start!93516 (array_inv!24720 a!3475)))

(declare-fun b!1058660 () Bool)

(declare-fun res!707344 () Bool)

(assert (=> b!1058660 (=> (not res!707344) (not e!602381))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058660 (= res!707344 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058661 () Bool)

(assert (=> b!1058661 (= e!602381 (and (not (= (select (arr!32098 a!3475) from!2850) k!2741)) (or (bvslt (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!2850) (size!32635 a!3475)))))))

(assert (= (and start!93516 res!707343) b!1058660))

(assert (= (and b!1058660 res!707344) b!1058661))

(declare-fun m!978459 () Bool)

(assert (=> start!93516 m!978459))

(declare-fun m!978461 () Bool)

(assert (=> b!1058660 m!978461))

(declare-fun m!978463 () Bool)

(assert (=> b!1058661 m!978463))

(push 1)

(assert (not b!1058660))

(assert (not start!93516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

