; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93528 () Bool)

(assert start!93528)

(declare-fun res!707376 () Bool)

(declare-fun e!602412 () Bool)

(assert (=> start!93528 (=> (not res!707376) (not e!602412))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66774 0))(
  ( (array!66775 (arr!32101 (Array (_ BitVec 32) (_ BitVec 64))) (size!32638 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66774)

(assert (=> start!93528 (= res!707376 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32638 a!3475)) (bvslt (size!32638 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93528 e!602412))

(assert (=> start!93528 true))

(declare-fun array_inv!24723 (array!66774) Bool)

(assert (=> start!93528 (array_inv!24723 a!3475)))

(declare-fun b!1058692 () Bool)

(declare-fun res!707375 () Bool)

(assert (=> b!1058692 (=> (not res!707375) (not e!602412))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058692 (= res!707375 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058693 () Bool)

(declare-fun res!707377 () Bool)

(assert (=> b!1058693 (=> (not res!707377) (not e!602412))))

(assert (=> b!1058693 (= res!707377 (and (not (= (select (arr!32101 a!3475) from!2850) k!2741)) (bvsge (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2850) (size!32638 a!3475))))))

(declare-fun b!1058694 () Bool)

(assert (=> b!1058694 (= e!602412 (not (arrayContainsKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850))))))

(assert (= (and start!93528 res!707376) b!1058692))

(assert (= (and b!1058692 res!707375) b!1058693))

(assert (= (and b!1058693 res!707377) b!1058694))

(declare-fun m!978479 () Bool)

(assert (=> start!93528 m!978479))

(declare-fun m!978481 () Bool)

(assert (=> b!1058692 m!978481))

(declare-fun m!978483 () Bool)

(assert (=> b!1058693 m!978483))

(declare-fun m!978485 () Bool)

(assert (=> b!1058694 m!978485))

(push 1)

(assert (not b!1058694))

(assert (not b!1058692))

(assert (not start!93528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128585 () Bool)

(declare-fun res!707408 () Bool)

(declare-fun e!602437 () Bool)

(assert (=> d!128585 (=> res!707408 e!602437)))

(assert (=> d!128585 (= res!707408 (= (select (arr!32101 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) k!2741))))

(assert (=> d!128585 (= (arrayContainsKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)) e!602437)))

(declare-fun b!1058725 () Bool)

(declare-fun e!602438 () Bool)

(assert (=> b!1058725 (= e!602437 e!602438)))

(declare-fun res!707409 () Bool)

(assert (=> b!1058725 (=> (not res!707409) (not e!602438))))

(assert (=> b!1058725 (= res!707409 (bvslt (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001) (size!32638 a!3475)))))

(declare-fun b!1058726 () Bool)

(assert (=> b!1058726 (= e!602438 (arrayContainsKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128585 (not res!707408)) b!1058725))

(assert (= (and b!1058725 res!707409) b!1058726))

(declare-fun m!978509 () Bool)

(assert (=> d!128585 m!978509))

(declare-fun m!978511 () Bool)

(assert (=> b!1058726 m!978511))

(assert (=> b!1058694 d!128585))

(declare-fun d!128591 () Bool)

(declare-fun res!707410 () Bool)

(declare-fun e!602439 () Bool)

(assert (=> d!128591 (=> res!707410 e!602439)))

(assert (=> d!128591 (= res!707410 (= (select (arr!32101 a!3475) from!2850) k!2741))))

(assert (=> d!128591 (= (arrayContainsKey!0 a!3475 k!2741 from!2850) e!602439)))

(declare-fun b!1058727 () Bool)

(declare-fun e!602440 () Bool)

(assert (=> b!1058727 (= e!602439 e!602440)))

