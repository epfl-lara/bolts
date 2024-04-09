; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93562 () Bool)

(assert start!93562)

(declare-fun res!707480 () Bool)

(declare-fun e!602501 () Bool)

(assert (=> start!93562 (=> (not res!707480) (not e!602501))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66799 0))(
  ( (array!66800 (arr!32112 (Array (_ BitVec 32) (_ BitVec 64))) (size!32649 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66799)

(assert (=> start!93562 (= res!707480 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32649 a!3475)) (bvslt (size!32649 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93562 e!602501))

(assert (=> start!93562 true))

(declare-fun array_inv!24734 (array!66799) Bool)

(assert (=> start!93562 (array_inv!24734 a!3475)))

(declare-fun b!1058797 () Bool)

(declare-fun res!707482 () Bool)

(assert (=> b!1058797 (=> (not res!707482) (not e!602501))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058797 (= res!707482 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058798 () Bool)

(declare-fun res!707481 () Bool)

(assert (=> b!1058798 (=> (not res!707481) (not e!602501))))

(assert (=> b!1058798 (= res!707481 (not (= (select (arr!32112 a!3475) from!2850) k!2741)))))

(declare-fun b!1058799 () Bool)

(assert (=> b!1058799 (= e!602501 false)))

(declare-fun lt!467026 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!66799 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058799 (= lt!467026 (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)))))

(assert (= (and start!93562 res!707480) b!1058797))

(assert (= (and b!1058797 res!707482) b!1058798))

(assert (= (and b!1058798 res!707481) b!1058799))

(declare-fun m!978567 () Bool)

(assert (=> start!93562 m!978567))

(declare-fun m!978569 () Bool)

(assert (=> b!1058797 m!978569))

(declare-fun m!978571 () Bool)

(assert (=> b!1058798 m!978571))

(declare-fun m!978573 () Bool)

(assert (=> b!1058799 m!978573))

(push 1)

(assert (not b!1058797))

(assert (not b!1058799))

(assert (not start!93562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

