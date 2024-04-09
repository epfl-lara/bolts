; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93530 () Bool)

(assert start!93530)

(declare-fun res!707385 () Bool)

(declare-fun e!602417 () Bool)

(assert (=> start!93530 (=> (not res!707385) (not e!602417))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66776 0))(
  ( (array!66777 (arr!32102 (Array (_ BitVec 32) (_ BitVec 64))) (size!32639 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66776)

(assert (=> start!93530 (= res!707385 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32639 a!3475)) (bvslt (size!32639 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93530 e!602417))

(assert (=> start!93530 true))

(declare-fun array_inv!24724 (array!66776) Bool)

(assert (=> start!93530 (array_inv!24724 a!3475)))

(declare-fun b!1058701 () Bool)

(declare-fun res!707386 () Bool)

(assert (=> b!1058701 (=> (not res!707386) (not e!602417))))

(declare-fun k0!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058701 (= res!707386 (arrayContainsKey!0 a!3475 k0!2741 from!2850))))

(declare-fun b!1058702 () Bool)

(declare-fun res!707384 () Bool)

(assert (=> b!1058702 (=> (not res!707384) (not e!602417))))

(assert (=> b!1058702 (= res!707384 (and (not (= (select (arr!32102 a!3475) from!2850) k0!2741)) (bvsge (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2850) (size!32639 a!3475))))))

(declare-fun b!1058703 () Bool)

(assert (=> b!1058703 (= e!602417 (not (arrayContainsKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850))))))

(assert (= (and start!93530 res!707385) b!1058701))

(assert (= (and b!1058701 res!707386) b!1058702))

(assert (= (and b!1058702 res!707384) b!1058703))

(declare-fun m!978487 () Bool)

(assert (=> start!93530 m!978487))

(declare-fun m!978489 () Bool)

(assert (=> b!1058701 m!978489))

(declare-fun m!978491 () Bool)

(assert (=> b!1058702 m!978491))

(declare-fun m!978493 () Bool)

(assert (=> b!1058703 m!978493))

(check-sat (not b!1058703) (not b!1058701) (not start!93530))
(check-sat)
(get-model)

(declare-fun d!128579 () Bool)

(declare-fun res!707400 () Bool)

(declare-fun e!602429 () Bool)

(assert (=> d!128579 (=> res!707400 e!602429)))

(assert (=> d!128579 (= res!707400 (= (select (arr!32102 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) k0!2741))))

(assert (=> d!128579 (= (arrayContainsKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850)) e!602429)))

(declare-fun b!1058717 () Bool)

(declare-fun e!602430 () Bool)

(assert (=> b!1058717 (= e!602429 e!602430)))

(declare-fun res!707401 () Bool)

(assert (=> b!1058717 (=> (not res!707401) (not e!602430))))

(assert (=> b!1058717 (= res!707401 (bvslt (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001) (size!32639 a!3475)))))

(declare-fun b!1058718 () Bool)

(assert (=> b!1058718 (= e!602430 (arrayContainsKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128579 (not res!707400)) b!1058717))

(assert (= (and b!1058717 res!707401) b!1058718))

(declare-fun m!978503 () Bool)

(assert (=> d!128579 m!978503))

(declare-fun m!978505 () Bool)

(assert (=> b!1058718 m!978505))

(assert (=> b!1058703 d!128579))

(declare-fun d!128581 () Bool)

(declare-fun res!707402 () Bool)

(declare-fun e!602431 () Bool)

(assert (=> d!128581 (=> res!707402 e!602431)))

(assert (=> d!128581 (= res!707402 (= (select (arr!32102 a!3475) from!2850) k0!2741))))

(assert (=> d!128581 (= (arrayContainsKey!0 a!3475 k0!2741 from!2850) e!602431)))

(declare-fun b!1058719 () Bool)

(declare-fun e!602432 () Bool)

(assert (=> b!1058719 (= e!602431 e!602432)))

(declare-fun res!707403 () Bool)

(assert (=> b!1058719 (=> (not res!707403) (not e!602432))))

(assert (=> b!1058719 (= res!707403 (bvslt (bvadd from!2850 #b00000000000000000000000000000001) (size!32639 a!3475)))))

(declare-fun b!1058720 () Bool)

(assert (=> b!1058720 (= e!602432 (arrayContainsKey!0 a!3475 k0!2741 (bvadd from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128581 (not res!707402)) b!1058719))

(assert (= (and b!1058719 res!707403) b!1058720))

(assert (=> d!128581 m!978491))

(declare-fun m!978507 () Bool)

(assert (=> b!1058720 m!978507))

(assert (=> b!1058701 d!128581))

(declare-fun d!128583 () Bool)

(assert (=> d!128583 (= (array_inv!24724 a!3475) (bvsge (size!32639 a!3475) #b00000000000000000000000000000000))))

(assert (=> start!93530 d!128583))

(check-sat (not b!1058720) (not b!1058718))
(check-sat)
