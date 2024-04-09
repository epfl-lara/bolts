; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93546 () Bool)

(assert start!93546)

(declare-fun res!707424 () Bool)

(declare-fun e!602453 () Bool)

(assert (=> start!93546 (=> (not res!707424) (not e!602453))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66783 0))(
  ( (array!66784 (arr!32104 (Array (_ BitVec 32) (_ BitVec 64))) (size!32641 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66783)

(assert (=> start!93546 (= res!707424 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32641 a!3475)) (bvslt (size!32641 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93546 e!602453))

(assert (=> start!93546 true))

(declare-fun array_inv!24726 (array!66783) Bool)

(assert (=> start!93546 (array_inv!24726 a!3475)))

(declare-fun b!1058741 () Bool)

(declare-fun res!707425 () Bool)

(assert (=> b!1058741 (=> (not res!707425) (not e!602453))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058741 (= res!707425 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058742 () Bool)

(assert (=> b!1058742 (= e!602453 (bvslt (bvsub (size!32641 a!3475) from!2850) #b00000000000000000000000000000000))))

(assert (= (and start!93546 res!707424) b!1058741))

(assert (= (and b!1058741 res!707425) b!1058742))

(declare-fun m!978521 () Bool)

(assert (=> start!93546 m!978521))

(declare-fun m!978523 () Bool)

(assert (=> b!1058741 m!978523))

(push 1)

(assert (not b!1058741))

(assert (not start!93546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

