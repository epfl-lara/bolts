; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93556 () Bool)

(assert start!93556)

(declare-fun res!707454 () Bool)

(declare-fun e!602483 () Bool)

(assert (=> start!93556 (=> (not res!707454) (not e!602483))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66793 0))(
  ( (array!66794 (arr!32109 (Array (_ BitVec 32) (_ BitVec 64))) (size!32646 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66793)

(assert (=> start!93556 (= res!707454 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32646 a!3475)) (bvslt (size!32646 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93556 e!602483))

(assert (=> start!93556 true))

(declare-fun array_inv!24731 (array!66793) Bool)

(assert (=> start!93556 (array_inv!24731 a!3475)))

(declare-fun b!1058771 () Bool)

(declare-fun res!707455 () Bool)

(assert (=> b!1058771 (=> (not res!707455) (not e!602483))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058771 (= res!707455 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058772 () Bool)

(assert (=> b!1058772 (= e!602483 (and (not (= (select (arr!32109 a!3475) from!2850) k!2741)) (bvsge (bvsub (size!32646 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) (bvsub (size!32646 a!3475) from!2850))))))

(assert (= (and start!93556 res!707454) b!1058771))

(assert (= (and b!1058771 res!707455) b!1058772))

(declare-fun m!978545 () Bool)

(assert (=> start!93556 m!978545))

(declare-fun m!978547 () Bool)

(assert (=> b!1058771 m!978547))

(declare-fun m!978549 () Bool)

(assert (=> b!1058772 m!978549))

(push 1)

(assert (not start!93556))

(assert (not b!1058771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

