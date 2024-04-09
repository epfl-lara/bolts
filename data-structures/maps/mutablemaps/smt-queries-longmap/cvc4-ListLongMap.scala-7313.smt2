; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93520 () Bool)

(assert start!93520)

(declare-fun res!707355 () Bool)

(declare-fun e!602393 () Bool)

(assert (=> start!93520 (=> (not res!707355) (not e!602393))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66771 0))(
  ( (array!66772 (arr!32100 (Array (_ BitVec 32) (_ BitVec 64))) (size!32637 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66771)

(assert (=> start!93520 (= res!707355 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32637 a!3475)) (bvslt (size!32637 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93520 e!602393))

(assert (=> start!93520 true))

(declare-fun array_inv!24722 (array!66771) Bool)

(assert (=> start!93520 (array_inv!24722 a!3475)))

(declare-fun b!1058672 () Bool)

(declare-fun res!707356 () Bool)

(assert (=> b!1058672 (=> (not res!707356) (not e!602393))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058672 (= res!707356 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058673 () Bool)

(assert (=> b!1058673 (= e!602393 (and (not (= (select (arr!32100 a!3475) from!2850) k!2741)) (or (bvslt (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!2850) (size!32637 a!3475)))))))

(assert (= (and start!93520 res!707355) b!1058672))

(assert (= (and b!1058672 res!707356) b!1058673))

(declare-fun m!978471 () Bool)

(assert (=> start!93520 m!978471))

(declare-fun m!978473 () Bool)

(assert (=> b!1058672 m!978473))

(declare-fun m!978475 () Bool)

(assert (=> b!1058673 m!978475))

(push 1)

(assert (not start!93520))

(assert (not b!1058672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

