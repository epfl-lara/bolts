; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93568 () Bool)

(assert start!93568)

(declare-fun res!707508 () Bool)

(declare-fun e!602520 () Bool)

(assert (=> start!93568 (=> (not res!707508) (not e!602520))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66805 0))(
  ( (array!66806 (arr!32115 (Array (_ BitVec 32) (_ BitVec 64))) (size!32652 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66805)

(assert (=> start!93568 (= res!707508 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32652 a!3475)) (bvslt (size!32652 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93568 e!602520))

(assert (=> start!93568 true))

(declare-fun array_inv!24737 (array!66805) Bool)

(assert (=> start!93568 (array_inv!24737 a!3475)))

(declare-fun b!1058824 () Bool)

(declare-fun res!707509 () Bool)

(assert (=> b!1058824 (=> (not res!707509) (not e!602520))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058824 (= res!707509 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058825 () Bool)

(declare-fun res!707507 () Bool)

(assert (=> b!1058825 (=> (not res!707507) (not e!602520))))

(assert (=> b!1058825 (= res!707507 (not (= (select (arr!32115 a!3475) from!2850) k!2741)))))

(declare-fun b!1058826 () Bool)

(declare-fun lt!467035 () (_ BitVec 32))

(assert (=> b!1058826 (= e!602520 (or (bvslt lt!467035 #b00000000000000000000000000000000) (bvsge lt!467035 (size!32652 a!3475)) (not (= (select (arr!32115 a!3475) lt!467035) k!2741))))))

(declare-fun arrayScanForKey!0 (array!66805 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058826 (= lt!467035 (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)))))

(assert (= (and start!93568 res!707508) b!1058824))

(assert (= (and b!1058824 res!707509) b!1058825))

(assert (= (and b!1058825 res!707507) b!1058826))

(declare-fun m!978595 () Bool)

(assert (=> start!93568 m!978595))

(declare-fun m!978597 () Bool)

(assert (=> b!1058824 m!978597))

(declare-fun m!978599 () Bool)

(assert (=> b!1058825 m!978599))

(declare-fun m!978601 () Bool)

(assert (=> b!1058826 m!978601))

(declare-fun m!978603 () Bool)

(assert (=> b!1058826 m!978603))

(push 1)

(assert (not b!1058826))

(assert (not start!93568))

(assert (not b!1058824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128611 () Bool)

(declare-fun lt!467044 () (_ BitVec 32))

(assert (=> d!128611 (and (or (bvslt lt!467044 #b00000000000000000000000000000000) (bvsge lt!467044 (size!32652 a!3475)) (and (bvsge lt!467044 #b00000000000000000000000000000000) (bvslt lt!467044 (size!32652 a!3475)))) (bvsge lt!467044 #b00000000000000000000000000000000) (bvslt lt!467044 (size!32652 a!3475)) (= (select (arr!32115 a!3475) lt!467044) k!2741))))

(declare-fun e!602541 () (_ BitVec 32))

(assert (=> d!128611 (= lt!467044 e!602541)))

(declare-fun c!107129 () Bool)

(assert (=> d!128611 (= c!107129 (= (select (arr!32115 a!3475) (bvadd #b00000000000000000000000000000001 from!2850)) k!2741))))

(assert (=> d!128611 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2850) (size!32652 a!3475)) (bvslt (size!32652 a!3475) #b01111111111111111111111111111111))))

(assert (=> d!128611 (= (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850)) lt!467044)))

(declare-fun b!1058855 () Bool)

(assert (=> b!1058855 (= e!602541 (bvadd #b00000000000000000000000000000001 from!2850))))

(declare-fun b!1058856 () Bool)

(assert (=> b!1058856 (= e!602541 (arrayScanForKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128611 c!107129) b!1058855))

(assert (= (and d!128611 (not c!107129)) b!1058856))

(declare-fun m!978621 () Bool)

(assert (=> d!128611 m!978621))

(declare-fun m!978623 () Bool)

(assert (=> d!128611 m!978623))

(declare-fun m!978625 () Bool)

(assert (=> b!1058856 m!978625))

(assert (=> b!1058826 d!128611))

(declare-fun d!128619 () Bool)

(assert (=> d!128619 (= (array_inv!24737 a!3475) (bvsge (size!32652 a!3475) #b00000000000000000000000000000000))))

(assert (=> start!93568 d!128619))

(declare-fun d!128621 () Bool)

(declare-fun res!707526 () Bool)

(declare-fun e!602546 () Bool)

(assert (=> d!128621 (=> res!707526 e!602546)))

(assert (=> d!128621 (= res!707526 (= (select (arr!32115 a!3475) from!2850) k!2741))))

(assert (=> d!128621 (= (arrayContainsKey!0 a!3475 k!2741 from!2850) e!602546)))

(declare-fun b!1058861 () Bool)

(declare-fun e!602547 () Bool)

(assert (=> b!1058861 (= e!602546 e!602547)))

(declare-fun res!707527 () Bool)

(assert (=> b!1058861 (=> (not res!707527) (not e!602547))))

(assert (=> b!1058861 (= res!707527 (bvslt (bvadd from!2850 #b00000000000000000000000000000001) (size!32652 a!3475)))))

(declare-fun b!1058862 () Bool)

(assert (=> b!1058862 (= e!602547 (arrayContainsKey!0 a!3475 k!2741 (bvadd from!2850 #b00000000000000000000000000000001)))))

(assert (= (and d!128621 (not res!707526)) b!1058861))

(assert (= (and b!1058861 res!707527) b!1058862))

(assert (=> d!128621 m!978599))

(declare-fun m!978627 () Bool)

(assert (=> b!1058862 m!978627))

(assert (=> b!1058824 d!128621))

(push 1)

(assert (not b!1058862))

(assert (not b!1058856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

