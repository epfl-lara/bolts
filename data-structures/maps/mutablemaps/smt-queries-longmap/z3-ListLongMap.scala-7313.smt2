; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93518 () Bool)

(assert start!93518)

(declare-fun res!707349 () Bool)

(declare-fun e!602387 () Bool)

(assert (=> start!93518 (=> (not res!707349) (not e!602387))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66769 0))(
  ( (array!66770 (arr!32099 (Array (_ BitVec 32) (_ BitVec 64))) (size!32636 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66769)

(assert (=> start!93518 (= res!707349 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32636 a!3475)) (bvslt (size!32636 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93518 e!602387))

(assert (=> start!93518 true))

(declare-fun array_inv!24721 (array!66769) Bool)

(assert (=> start!93518 (array_inv!24721 a!3475)))

(declare-fun b!1058666 () Bool)

(declare-fun res!707350 () Bool)

(assert (=> b!1058666 (=> (not res!707350) (not e!602387))))

(declare-fun k0!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058666 (= res!707350 (arrayContainsKey!0 a!3475 k0!2741 from!2850))))

(declare-fun b!1058667 () Bool)

(assert (=> b!1058667 (= e!602387 (and (not (= (select (arr!32099 a!3475) from!2850) k0!2741)) (or (bvslt (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!2850) (size!32636 a!3475)))))))

(assert (= (and start!93518 res!707349) b!1058666))

(assert (= (and b!1058666 res!707350) b!1058667))

(declare-fun m!978465 () Bool)

(assert (=> start!93518 m!978465))

(declare-fun m!978467 () Bool)

(assert (=> b!1058666 m!978467))

(declare-fun m!978469 () Bool)

(assert (=> b!1058667 m!978469))

(check-sat (not start!93518) (not b!1058666))
(check-sat)
(get-model)

(declare-fun d!128571 () Bool)

(assert (=> d!128571 (= (array_inv!24721 a!3475) (bvsge (size!32636 a!3475) #b00000000000000000000000000000000))))

(assert (=> start!93518 d!128571))

(declare-fun d!128573 () Bool)

(declare-fun res!707361 () Bool)

(declare-fun e!602399 () Bool)

(assert (=> d!128573 (=> res!707361 e!602399)))

(assert (=> d!128573 (= res!707361 (= (select (arr!32099 a!3475) from!2850) k0!2741))))

(assert (=> d!128573 (= (arrayContainsKey!0 a!3475 k0!2741 from!2850) e!602399)))

(declare-fun b!1058678 () Bool)

(declare-fun e!602400 () Bool)

(assert (=> b!1058678 (= e!602399 e!602400)))

(declare-fun res!707362 () Bool)

(assert (=> b!1058678 (=> (not res!707362) (not e!602400))))

(assert (=> b!1058678 (= res!707362 (bvslt (bvadd from!2850 #b00000000000000000000000000000001) (size!32636 a!3475)))))

(declare-fun b!1058679 () Bool)

(assert (=> b!1058679 (= e!602400 (arrayContainsKey!0 a!3475 k0!2741 (bvadd from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128573 (not res!707361)) b!1058678))

(assert (= (and b!1058678 res!707362) b!1058679))

(assert (=> d!128573 m!978469))

(declare-fun m!978477 () Bool)

(assert (=> b!1058679 m!978477))

(assert (=> b!1058666 d!128573))

(check-sat (not b!1058679))
(check-sat)
