; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93554 () Bool)

(assert start!93554)

(declare-fun res!707448 () Bool)

(declare-fun e!602477 () Bool)

(assert (=> start!93554 (=> (not res!707448) (not e!602477))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66791 0))(
  ( (array!66792 (arr!32108 (Array (_ BitVec 32) (_ BitVec 64))) (size!32645 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66791)

(assert (=> start!93554 (= res!707448 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32645 a!3475)) (bvslt (size!32645 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93554 e!602477))

(assert (=> start!93554 true))

(declare-fun array_inv!24730 (array!66791) Bool)

(assert (=> start!93554 (array_inv!24730 a!3475)))

(declare-fun b!1058765 () Bool)

(declare-fun res!707449 () Bool)

(assert (=> b!1058765 (=> (not res!707449) (not e!602477))))

(declare-fun k0!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058765 (= res!707449 (arrayContainsKey!0 a!3475 k0!2741 from!2850))))

(declare-fun b!1058766 () Bool)

(assert (=> b!1058766 (= e!602477 (and (not (= (select (arr!32108 a!3475) from!2850) k0!2741)) (bvsge (bvsub (size!32645 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) (bvsub (size!32645 a!3475) from!2850))))))

(assert (= (and start!93554 res!707448) b!1058765))

(assert (= (and b!1058765 res!707449) b!1058766))

(declare-fun m!978539 () Bool)

(assert (=> start!93554 m!978539))

(declare-fun m!978541 () Bool)

(assert (=> b!1058765 m!978541))

(declare-fun m!978543 () Bool)

(assert (=> b!1058766 m!978543))

(check-sat (not b!1058765) (not start!93554))
(check-sat)
