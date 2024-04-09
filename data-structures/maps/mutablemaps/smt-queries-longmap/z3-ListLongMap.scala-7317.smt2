; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93560 () Bool)

(assert start!93560)

(declare-fun res!707473 () Bool)

(declare-fun e!602496 () Bool)

(assert (=> start!93560 (=> (not res!707473) (not e!602496))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66797 0))(
  ( (array!66798 (arr!32111 (Array (_ BitVec 32) (_ BitVec 64))) (size!32648 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66797)

(assert (=> start!93560 (= res!707473 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32648 a!3475)) (bvslt (size!32648 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93560 e!602496))

(assert (=> start!93560 true))

(declare-fun array_inv!24733 (array!66797) Bool)

(assert (=> start!93560 (array_inv!24733 a!3475)))

(declare-fun b!1058788 () Bool)

(declare-fun res!707472 () Bool)

(assert (=> b!1058788 (=> (not res!707472) (not e!602496))))

(declare-fun k0!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058788 (= res!707472 (arrayContainsKey!0 a!3475 k0!2741 from!2850))))

(declare-fun b!1058789 () Bool)

(declare-fun res!707471 () Bool)

(assert (=> b!1058789 (=> (not res!707471) (not e!602496))))

(assert (=> b!1058789 (= res!707471 (not (= (select (arr!32111 a!3475) from!2850) k0!2741)))))

(declare-fun b!1058790 () Bool)

(assert (=> b!1058790 (= e!602496 false)))

(declare-fun lt!467023 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!66797 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058790 (= lt!467023 (arrayScanForKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850)))))

(assert (= (and start!93560 res!707473) b!1058788))

(assert (= (and b!1058788 res!707472) b!1058789))

(assert (= (and b!1058789 res!707471) b!1058790))

(declare-fun m!978559 () Bool)

(assert (=> start!93560 m!978559))

(declare-fun m!978561 () Bool)

(assert (=> b!1058788 m!978561))

(declare-fun m!978563 () Bool)

(assert (=> b!1058789 m!978563))

(declare-fun m!978565 () Bool)

(assert (=> b!1058790 m!978565))

(check-sat (not b!1058788) (not b!1058790) (not start!93560))
