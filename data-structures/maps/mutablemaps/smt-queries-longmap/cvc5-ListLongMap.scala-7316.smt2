; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93552 () Bool)

(assert start!93552)

(declare-fun res!707442 () Bool)

(declare-fun e!602471 () Bool)

(assert (=> start!93552 (=> (not res!707442) (not e!602471))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66789 0))(
  ( (array!66790 (arr!32107 (Array (_ BitVec 32) (_ BitVec 64))) (size!32644 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66789)

(assert (=> start!93552 (= res!707442 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32644 a!3475)) (bvslt (size!32644 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93552 e!602471))

(assert (=> start!93552 true))

(declare-fun array_inv!24729 (array!66789) Bool)

(assert (=> start!93552 (array_inv!24729 a!3475)))

(declare-fun b!1058759 () Bool)

(declare-fun res!707443 () Bool)

(assert (=> b!1058759 (=> (not res!707443) (not e!602471))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058759 (= res!707443 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058760 () Bool)

(assert (=> b!1058760 (= e!602471 (and (not (= (select (arr!32107 a!3475) from!2850) k!2741)) (bvsge (bvsub (size!32644 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) (bvsub (size!32644 a!3475) from!2850))))))

(assert (= (and start!93552 res!707442) b!1058759))

(assert (= (and b!1058759 res!707443) b!1058760))

(declare-fun m!978533 () Bool)

(assert (=> start!93552 m!978533))

(declare-fun m!978535 () Bool)

(assert (=> b!1058759 m!978535))

(declare-fun m!978537 () Bool)

(assert (=> b!1058760 m!978537))

(push 1)

(assert (not start!93552))

(assert (not b!1058759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

