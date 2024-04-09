; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93566 () Bool)

(assert start!93566)

(declare-fun res!707498 () Bool)

(declare-fun e!602514 () Bool)

(assert (=> start!93566 (=> (not res!707498) (not e!602514))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66803 0))(
  ( (array!66804 (arr!32114 (Array (_ BitVec 32) (_ BitVec 64))) (size!32651 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66803)

(assert (=> start!93566 (= res!707498 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32651 a!3475)) (bvslt (size!32651 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93566 e!602514))

(assert (=> start!93566 true))

(declare-fun array_inv!24736 (array!66803) Bool)

(assert (=> start!93566 (array_inv!24736 a!3475)))

(declare-fun b!1058815 () Bool)

(declare-fun res!707500 () Bool)

(assert (=> b!1058815 (=> (not res!707500) (not e!602514))))

(declare-fun k0!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058815 (= res!707500 (arrayContainsKey!0 a!3475 k0!2741 from!2850))))

(declare-fun b!1058816 () Bool)

(declare-fun res!707499 () Bool)

(assert (=> b!1058816 (=> (not res!707499) (not e!602514))))

(assert (=> b!1058816 (= res!707499 (not (= (select (arr!32114 a!3475) from!2850) k0!2741)))))

(declare-fun b!1058817 () Bool)

(declare-fun lt!467032 () (_ BitVec 32))

(assert (=> b!1058817 (= e!602514 (or (bvslt lt!467032 #b00000000000000000000000000000000) (bvsge lt!467032 (size!32651 a!3475)) (not (= (select (arr!32114 a!3475) lt!467032) k0!2741))))))

(declare-fun arrayScanForKey!0 (array!66803 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058817 (= lt!467032 (arrayScanForKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850)))))

(assert (= (and start!93566 res!707498) b!1058815))

(assert (= (and b!1058815 res!707500) b!1058816))

(assert (= (and b!1058816 res!707499) b!1058817))

(declare-fun m!978585 () Bool)

(assert (=> start!93566 m!978585))

(declare-fun m!978587 () Bool)

(assert (=> b!1058815 m!978587))

(declare-fun m!978589 () Bool)

(assert (=> b!1058816 m!978589))

(declare-fun m!978591 () Bool)

(assert (=> b!1058817 m!978591))

(declare-fun m!978593 () Bool)

(assert (=> b!1058817 m!978593))

(check-sat (not b!1058815) (not b!1058817) (not start!93566))
(check-sat)
(get-model)

(declare-fun d!128605 () Bool)

(declare-fun res!707514 () Bool)

(declare-fun e!602525 () Bool)

(assert (=> d!128605 (=> res!707514 e!602525)))

(assert (=> d!128605 (= res!707514 (= (select (arr!32114 a!3475) from!2850) k0!2741))))

(assert (=> d!128605 (= (arrayContainsKey!0 a!3475 k0!2741 from!2850) e!602525)))

(declare-fun b!1058831 () Bool)

(declare-fun e!602526 () Bool)

(assert (=> b!1058831 (= e!602525 e!602526)))

(declare-fun res!707515 () Bool)

(assert (=> b!1058831 (=> (not res!707515) (not e!602526))))

(assert (=> b!1058831 (= res!707515 (bvslt (bvadd from!2850 #b00000000000000000000000000000001) (size!32651 a!3475)))))

(declare-fun b!1058832 () Bool)

(assert (=> b!1058832 (= e!602526 (arrayContainsKey!0 a!3475 k0!2741 (bvadd from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128605 (not res!707514)) b!1058831))

(assert (= (and b!1058831 res!707515) b!1058832))

(assert (=> d!128605 m!978589))

(declare-fun m!978605 () Bool)

(assert (=> b!1058832 m!978605))

(assert (=> b!1058815 d!128605))

(declare-fun d!128607 () Bool)

(declare-fun lt!467038 () (_ BitVec 32))

(assert (=> d!128607 (and (or (bvslt lt!467038 #b00000000000000000000000000000000) (bvsge lt!467038 (size!32651 a!3475)) (and (bvsge lt!467038 #b00000000000000000000000000000000) (bvslt lt!467038 (size!32651 a!3475)))) (bvsge lt!467038 #b00000000000000000000000000000000) (bvslt lt!467038 (size!32651 a!3475)) (= (select (arr!32114 a!3475) lt!467038) k0!2741))))

(declare-fun e!602535 () (_ BitVec 32))

(assert (=> d!128607 (= lt!467038 e!602535)))

(declare-fun c!107123 () Bool)

(assert (=> d!128607 (= c!107123 (= (select (arr!32114 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) k0!2741))))

(assert (=> d!128607 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2850) (size!32651 a!3475)) (bvslt (size!32651 a!3475) #b01111111111111111111111111111111))))

(assert (=> d!128607 (= (arrayScanForKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850)) lt!467038)))

(declare-fun b!1058843 () Bool)

(assert (=> b!1058843 (= e!602535 (bvadd #b00000000000000000000000000000001 from!2850))))

(declare-fun b!1058844 () Bool)

(assert (=> b!1058844 (= e!602535 (arrayScanForKey!0 a!3475 k0!2741 (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128607 c!107123) b!1058843))

(assert (= (and d!128607 (not c!107123)) b!1058844))

(declare-fun m!978609 () Bool)

(assert (=> d!128607 m!978609))

(declare-fun m!978611 () Bool)

(assert (=> d!128607 m!978611))

(declare-fun m!978613 () Bool)

(assert (=> b!1058844 m!978613))

(assert (=> b!1058817 d!128607))

(declare-fun d!128615 () Bool)

(assert (=> d!128615 (= (array_inv!24736 a!3475) (bvsge (size!32651 a!3475) #b00000000000000000000000000000000))))

(assert (=> start!93566 d!128615))

(check-sat (not b!1058832) (not b!1058844))
(check-sat)
