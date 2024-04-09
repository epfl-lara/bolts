; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93550 () Bool)

(assert start!93550)

(declare-fun res!707436 () Bool)

(declare-fun e!602465 () Bool)

(assert (=> start!93550 (=> (not res!707436) (not e!602465))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66787 0))(
  ( (array!66788 (arr!32106 (Array (_ BitVec 32) (_ BitVec 64))) (size!32643 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66787)

(assert (=> start!93550 (= res!707436 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32643 a!3475)) (bvslt (size!32643 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93550 e!602465))

(assert (=> start!93550 true))

(declare-fun array_inv!24728 (array!66787) Bool)

(assert (=> start!93550 (array_inv!24728 a!3475)))

(declare-fun b!1058753 () Bool)

(declare-fun res!707437 () Bool)

(assert (=> b!1058753 (=> (not res!707437) (not e!602465))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058753 (= res!707437 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058754 () Bool)

(assert (=> b!1058754 (= e!602465 (bvslt (bvsub (size!32643 a!3475) from!2850) #b00000000000000000000000000000000))))

(assert (= (and start!93550 res!707436) b!1058753))

(assert (= (and b!1058753 res!707437) b!1058754))

(declare-fun m!978529 () Bool)

(assert (=> start!93550 m!978529))

(declare-fun m!978531 () Bool)

(assert (=> b!1058753 m!978531))

(push 1)

(assert (not b!1058753))

(assert (not start!93550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

