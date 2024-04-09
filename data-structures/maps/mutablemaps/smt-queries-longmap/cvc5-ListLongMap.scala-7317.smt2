; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93558 () Bool)

(assert start!93558)

(declare-fun res!707464 () Bool)

(declare-fun e!602490 () Bool)

(assert (=> start!93558 (=> (not res!707464) (not e!602490))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66795 0))(
  ( (array!66796 (arr!32110 (Array (_ BitVec 32) (_ BitVec 64))) (size!32647 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66795)

(assert (=> start!93558 (= res!707464 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32647 a!3475)) (bvslt (size!32647 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93558 e!602490))

(assert (=> start!93558 true))

(declare-fun array_inv!24732 (array!66795) Bool)

(assert (=> start!93558 (array_inv!24732 a!3475)))

(declare-fun b!1058779 () Bool)

(declare-fun res!707463 () Bool)

(assert (=> b!1058779 (=> (not res!707463) (not e!602490))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058779 (= res!707463 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058780 () Bool)

(declare-fun res!707462 () Bool)

(assert (=> b!1058780 (=> (not res!707462) (not e!602490))))

(assert (=> b!1058780 (= res!707462 (not (= (select (arr!32110 a!3475) from!2850) k!2741)))))

(declare-fun b!1058781 () Bool)

(assert (=> b!1058781 (= e!602490 false)))

(declare-fun lt!467020 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!66795 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058781 (= lt!467020 (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)))))

(assert (= (and start!93558 res!707464) b!1058779))

(assert (= (and b!1058779 res!707463) b!1058780))

(assert (= (and b!1058780 res!707462) b!1058781))

(declare-fun m!978551 () Bool)

(assert (=> start!93558 m!978551))

(declare-fun m!978553 () Bool)

(assert (=> b!1058779 m!978553))

(declare-fun m!978555 () Bool)

(assert (=> b!1058780 m!978555))

(declare-fun m!978557 () Bool)

(assert (=> b!1058781 m!978557))

(push 1)

(assert (not b!1058779))

(assert (not b!1058781))

(assert (not start!93558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

