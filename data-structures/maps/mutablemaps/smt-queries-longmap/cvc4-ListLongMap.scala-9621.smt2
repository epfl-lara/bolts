; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113868 () Bool)

(assert start!113868)

(declare-fun b!1350196 () Bool)

(declare-fun res!895777 () Bool)

(declare-fun e!768111 () Bool)

(assert (=> b!1350196 (=> (not res!895777) (not e!768111))))

(declare-datatypes ((List!31669 0))(
  ( (Nil!31666) (Cons!31665 (h!32874 (_ BitVec 64)) (t!46334 List!31669)) )
))
(declare-fun acc!759 () List!31669)

(declare-fun contains!9234 (List!31669 (_ BitVec 64)) Bool)

(assert (=> b!1350196 (= res!895777 (not (contains!9234 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350197 () Bool)

(declare-fun noDuplicate!2113 (List!31669) Bool)

(assert (=> b!1350197 (= e!768111 (not (noDuplicate!2113 Nil!31666)))))

(declare-fun b!1350198 () Bool)

(declare-fun res!895776 () Bool)

(assert (=> b!1350198 (=> (not res!895776) (not e!768111))))

(assert (=> b!1350198 (= res!895776 (not (contains!9234 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350199 () Bool)

(declare-fun res!895779 () Bool)

(assert (=> b!1350199 (=> (not res!895779) (not e!768111))))

(assert (=> b!1350199 (= res!895779 (noDuplicate!2113 acc!759))))

(declare-fun b!1350200 () Bool)

(declare-fun res!895775 () Bool)

(assert (=> b!1350200 (=> (not res!895775) (not e!768111))))

(declare-datatypes ((array!92003 0))(
  ( (array!92004 (arr!44448 (Array (_ BitVec 32) (_ BitVec 64))) (size!44999 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92003)

(assert (=> b!1350200 (= res!895775 (bvsle #b00000000000000000000000000000000 (size!44999 a!3742)))))

(declare-fun res!895778 () Bool)

(assert (=> start!113868 (=> (not res!895778) (not e!768111))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113868 (= res!895778 (and (bvslt (size!44999 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44999 a!3742))))))

(assert (=> start!113868 e!768111))

(declare-fun array_inv!33393 (array!92003) Bool)

(assert (=> start!113868 (array_inv!33393 a!3742)))

(assert (=> start!113868 true))

(assert (= (and start!113868 res!895778) b!1350199))

(assert (= (and b!1350199 res!895779) b!1350198))

(assert (= (and b!1350198 res!895776) b!1350196))

(assert (= (and b!1350196 res!895777) b!1350200))

(assert (= (and b!1350200 res!895775) b!1350197))

(declare-fun m!1237467 () Bool)

(assert (=> start!113868 m!1237467))

(declare-fun m!1237469 () Bool)

(assert (=> b!1350199 m!1237469))

(declare-fun m!1237471 () Bool)

(assert (=> b!1350198 m!1237471))

(declare-fun m!1237473 () Bool)

(assert (=> b!1350196 m!1237473))

(declare-fun m!1237475 () Bool)

(assert (=> b!1350197 m!1237475))

(push 1)

(assert (not b!1350196))

(assert (not b!1350198))

(assert (not b!1350197))

(assert (not start!113868))

(assert (not b!1350199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144817 () Bool)

(assert (=> d!144817 (= (array_inv!33393 a!3742) (bvsge (size!44999 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!113868 d!144817))

(declare-fun d!144821 () Bool)

(declare-fun lt!596896 () Bool)

(declare-fun content!677 (List!31669) (Set (_ BitVec 64)))

(assert (=> d!144821 (= lt!596896 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!677 acc!759)))))

(declare-fun e!768150 () Bool)

(assert (=> d!144821 (= lt!596896 e!768150)))

(declare-fun res!895816 () Bool)

(assert (=> d!144821 (=> (not res!895816) (not e!768150))))

(assert (=> d!144821 (= res!895816 (is-Cons!31665 acc!759))))

(assert (=> d!144821 (= (contains!9234 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596896)))

(declare-fun b!1350237 () Bool)

(declare-fun e!768149 () Bool)

(assert (=> b!1350237 (= e!768150 e!768149)))

(declare-fun res!895817 () Bool)

(assert (=> b!1350237 (=> res!895817 e!768149)))

(assert (=> b!1350237 (= res!895817 (= (h!32874 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350238 () Bool)

(assert (=> b!1350238 (= e!768149 (contains!9234 (t!46334 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144821 res!895816) b!1350237))

(assert (= (and b!1350237 (not res!895817)) b!1350238))

(declare-fun m!1237513 () Bool)

(assert (=> d!144821 m!1237513))

(declare-fun m!1237515 () Bool)

(assert (=> d!144821 m!1237515))

(declare-fun m!1237517 () Bool)

(assert (=> b!1350238 m!1237517))

(assert (=> b!1350196 d!144821))

