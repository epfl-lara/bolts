; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93564 () Bool)

(assert start!93564)

(declare-fun res!707491 () Bool)

(declare-fun e!602507 () Bool)

(assert (=> start!93564 (=> (not res!707491) (not e!602507))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66801 0))(
  ( (array!66802 (arr!32113 (Array (_ BitVec 32) (_ BitVec 64))) (size!32650 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66801)

(assert (=> start!93564 (= res!707491 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32650 a!3475)) (bvslt (size!32650 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93564 e!602507))

(assert (=> start!93564 true))

(declare-fun array_inv!24735 (array!66801) Bool)

(assert (=> start!93564 (array_inv!24735 a!3475)))

(declare-fun b!1058806 () Bool)

(declare-fun res!707489 () Bool)

(assert (=> b!1058806 (=> (not res!707489) (not e!602507))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058806 (= res!707489 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058807 () Bool)

(declare-fun res!707490 () Bool)

(assert (=> b!1058807 (=> (not res!707490) (not e!602507))))

(assert (=> b!1058807 (= res!707490 (not (= (select (arr!32113 a!3475) from!2850) k!2741)))))

(declare-fun b!1058808 () Bool)

(declare-fun lt!467029 () (_ BitVec 32))

(assert (=> b!1058808 (= e!602507 (or (bvslt lt!467029 #b00000000000000000000000000000000) (bvsge lt!467029 (size!32650 a!3475)) (not (= (select (arr!32113 a!3475) lt!467029) k!2741))))))

(declare-fun arrayScanForKey!0 (array!66801 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058808 (= lt!467029 (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)))))

(assert (= (and start!93564 res!707491) b!1058806))

(assert (= (and b!1058806 res!707489) b!1058807))

(assert (= (and b!1058807 res!707490) b!1058808))

(declare-fun m!978575 () Bool)

(assert (=> start!93564 m!978575))

(declare-fun m!978577 () Bool)

(assert (=> b!1058806 m!978577))

(declare-fun m!978579 () Bool)

(assert (=> b!1058807 m!978579))

(declare-fun m!978581 () Bool)

(assert (=> b!1058808 m!978581))

(declare-fun m!978583 () Bool)

(assert (=> b!1058808 m!978583))

(push 1)

(assert (not b!1058806))

(assert (not b!1058808))

(assert (not start!93564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128609 () Bool)

(declare-fun res!707520 () Bool)

(declare-fun e!602531 () Bool)

(assert (=> d!128609 (=> res!707520 e!602531)))

(assert (=> d!128609 (= res!707520 (= (select (arr!32113 a!3475) from!2850) k!2741))))

(assert (=> d!128609 (= (arrayContainsKey!0 a!3475 k!2741 from!2850) e!602531)))

(declare-fun b!1058837 () Bool)

(declare-fun e!602532 () Bool)

(assert (=> b!1058837 (= e!602531 e!602532)))

(declare-fun res!707521 () Bool)

(assert (=> b!1058837 (=> (not res!707521) (not e!602532))))

(assert (=> b!1058837 (= res!707521 (bvslt (bvadd from!2850 #b00000000000000000000000000000001) (size!32650 a!3475)))))

(declare-fun b!1058838 () Bool)

(assert (=> b!1058838 (= e!602532 (arrayContainsKey!0 a!3475 k!2741 (bvadd from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128609 (not res!707520)) b!1058837))

(assert (= (and b!1058837 res!707521) b!1058838))

(assert (=> d!128609 m!978579))

(declare-fun m!978607 () Bool)

(assert (=> b!1058838 m!978607))

(assert (=> b!1058806 d!128609))

(declare-fun d!128613 () Bool)

(declare-fun lt!467043 () (_ BitVec 32))

(assert (=> d!128613 (and (or (bvslt lt!467043 #b00000000000000000000000000000000) (bvsge lt!467043 (size!32650 a!3475)) (and (bvsge lt!467043 #b00000000000000000000000000000000) (bvslt lt!467043 (size!32650 a!3475)))) (bvsge lt!467043 #b00000000000000000000000000000000) (bvslt lt!467043 (size!32650 a!3475)) (= (select (arr!32113 a!3475) lt!467043) k!2741))))

(declare-fun e!602540 () (_ BitVec 32))

(assert (=> d!128613 (= lt!467043 e!602540)))

(declare-fun c!107128 () Bool)

(assert (=> d!128613 (= c!107128 (= (select (arr!32113 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) k!2741))))

(assert (=> d!128613 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2850) (size!32650 a!3475)) (bvslt (size!32650 a!3475) #b01111111111111111111111111111111))))

(assert (=> d!128613 (= (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)) lt!467043)))

(declare-fun b!1058853 () Bool)

(assert (=> b!1058853 (= e!602540 (bvadd #b00000000000000000000000000000001 from!2850))))

(declare-fun b!1058854 () Bool)

(assert (=> b!1058854 (= e!602540 (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128613 c!107128) b!1058853))

(assert (= (and d!128613 (not c!107128)) b!1058854))

(declare-fun m!978615 () Bool)

(assert (=> d!128613 m!978615))

(declare-fun m!978617 () Bool)

(assert (=> d!128613 m!978617))

(declare-fun m!978619 () Bool)

(assert (=> b!1058854 m!978619))

(assert (=> b!1058808 d!128613))

(declare-fun d!128617 () Bool)

(assert (=> d!128617 (= (array_inv!24735 a!3475) (bvsge (size!32650 a!3475) #b00000000000000000000000000000000))))

(assert (=> start!93564 d!128617))

(push 1)

(assert (not b!1058838))

(assert (not b!1058854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

