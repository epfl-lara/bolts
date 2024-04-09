; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113864 () Bool)

(assert start!113864)

(declare-fun b!1350166 () Bool)

(declare-fun e!768100 () Bool)

(declare-datatypes ((List!31667 0))(
  ( (Nil!31664) (Cons!31663 (h!32872 (_ BitVec 64)) (t!46332 List!31667)) )
))
(declare-fun noDuplicate!2111 (List!31667) Bool)

(assert (=> b!1350166 (= e!768100 (not (noDuplicate!2111 Nil!31664)))))

(declare-fun res!895747 () Bool)

(assert (=> start!113864 (=> (not res!895747) (not e!768100))))

(declare-datatypes ((array!91999 0))(
  ( (array!92000 (arr!44446 (Array (_ BitVec 32) (_ BitVec 64))) (size!44997 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91999)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113864 (= res!895747 (and (bvslt (size!44997 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44997 a!3742))))))

(assert (=> start!113864 e!768100))

(declare-fun array_inv!33391 (array!91999) Bool)

(assert (=> start!113864 (array_inv!33391 a!3742)))

(assert (=> start!113864 true))

(declare-fun b!1350167 () Bool)

(declare-fun res!895748 () Bool)

(assert (=> b!1350167 (=> (not res!895748) (not e!768100))))

(declare-fun acc!759 () List!31667)

(declare-fun contains!9232 (List!31667 (_ BitVec 64)) Bool)

(assert (=> b!1350167 (= res!895748 (not (contains!9232 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350168 () Bool)

(declare-fun res!895746 () Bool)

(assert (=> b!1350168 (=> (not res!895746) (not e!768100))))

(assert (=> b!1350168 (= res!895746 (bvsle #b00000000000000000000000000000000 (size!44997 a!3742)))))

(declare-fun b!1350169 () Bool)

(declare-fun res!895745 () Bool)

(assert (=> b!1350169 (=> (not res!895745) (not e!768100))))

(assert (=> b!1350169 (= res!895745 (noDuplicate!2111 acc!759))))

(declare-fun b!1350170 () Bool)

(declare-fun res!895749 () Bool)

(assert (=> b!1350170 (=> (not res!895749) (not e!768100))))

(assert (=> b!1350170 (= res!895749 (not (contains!9232 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113864 res!895747) b!1350169))

(assert (= (and b!1350169 res!895745) b!1350167))

(assert (= (and b!1350167 res!895748) b!1350170))

(assert (= (and b!1350170 res!895749) b!1350168))

(assert (= (and b!1350168 res!895746) b!1350166))

(declare-fun m!1237447 () Bool)

(assert (=> b!1350167 m!1237447))

(declare-fun m!1237449 () Bool)

(assert (=> start!113864 m!1237449))

(declare-fun m!1237451 () Bool)

(assert (=> b!1350166 m!1237451))

(declare-fun m!1237453 () Bool)

(assert (=> b!1350169 m!1237453))

(declare-fun m!1237455 () Bool)

(assert (=> b!1350170 m!1237455))

(push 1)

(assert (not b!1350170))

(assert (not b!1350169))

(assert (not b!1350167))

(assert (not b!1350166))

(assert (not start!113864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144809 () Bool)

(declare-fun res!895792 () Bool)

(declare-fun e!768125 () Bool)

(assert (=> d!144809 (=> res!895792 e!768125)))

(assert (=> d!144809 (= res!895792 (is-Nil!31664 acc!759))))

(assert (=> d!144809 (= (noDuplicate!2111 acc!759) e!768125)))

(declare-fun b!1350213 () Bool)

(declare-fun e!768126 () Bool)

(assert (=> b!1350213 (= e!768125 e!768126)))

(declare-fun res!895793 () Bool)

(assert (=> b!1350213 (=> (not res!895793) (not e!768126))))

(assert (=> b!1350213 (= res!895793 (not (contains!9232 (t!46332 acc!759) (h!32872 acc!759))))))

(declare-fun b!1350214 () Bool)

(assert (=> b!1350214 (= e!768126 (noDuplicate!2111 (t!46332 acc!759)))))

(assert (= (and d!144809 (not res!895792)) b!1350213))

(assert (= (and b!1350213 res!895793) b!1350214))

(declare-fun m!1237481 () Bool)

(assert (=> b!1350213 m!1237481))

(declare-fun m!1237483 () Bool)

(assert (=> b!1350214 m!1237483))

(assert (=> b!1350169 d!144809))

(declare-fun d!144813 () Bool)

(declare-fun lt!596892 () Bool)

(declare-fun content!676 (List!31667) (Set (_ BitVec 64)))

(assert (=> d!144813 (= lt!596892 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!676 acc!759)))))

(declare-fun e!768140 () Bool)

(assert (=> d!144813 (= lt!596892 e!768140)))

(declare-fun res!895806 () Bool)

(assert (=> d!144813 (=> (not res!895806) (not e!768140))))

(assert (=> d!144813 (= res!895806 (is-Cons!31663 acc!759))))

(assert (=> d!144813 (= (contains!9232 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596892)))

(declare-fun b!1350227 () Bool)

(declare-fun e!768139 () Bool)

(assert (=> b!1350227 (= e!768140 e!768139)))

(declare-fun res!895807 () Bool)

(assert (=> b!1350227 (=> res!895807 e!768139)))

(assert (=> b!1350227 (= res!895807 (= (h!32872 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350228 () Bool)

(assert (=> b!1350228 (= e!768139 (contains!9232 (t!46332 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144813 res!895806) b!1350227))

(assert (= (and b!1350227 (not res!895807)) b!1350228))

(declare-fun m!1237499 () Bool)

(assert (=> d!144813 m!1237499))

(declare-fun m!1237501 () Bool)

(assert (=> d!144813 m!1237501))

(declare-fun m!1237503 () Bool)

(assert (=> b!1350228 m!1237503))

(assert (=> b!1350167 d!144813))

(declare-fun d!144823 () Bool)

(assert (=> d!144823 (= (array_inv!33391 a!3742) (bvsge (size!44997 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!113864 d!144823))

(declare-fun d!144825 () Bool)

(declare-fun res!895812 () Bool)

(declare-fun e!768145 () Bool)

(assert (=> d!144825 (=> res!895812 e!768145)))

(assert (=> d!144825 (= res!895812 (is-Nil!31664 Nil!31664))))

(assert (=> d!144825 (= (noDuplicate!2111 Nil!31664) e!768145)))

(declare-fun b!1350231 () Bool)

(declare-fun e!768146 () Bool)

(assert (=> b!1350231 (= e!768145 e!768146)))

(declare-fun res!895813 () Bool)

(assert (=> b!1350231 (=> (not res!895813) (not e!768146))))

(assert (=> b!1350231 (= res!895813 (not (contains!9232 (t!46332 Nil!31664) (h!32872 Nil!31664))))))

(declare-fun b!1350232 () Bool)

(assert (=> b!1350232 (= e!768146 (noDuplicate!2111 (t!46332 Nil!31664)))))

(assert (= (and d!144825 (not res!895812)) b!1350231))

(assert (= (and b!1350231 res!895813) b!1350232))

(declare-fun m!1237505 () Bool)

(assert (=> b!1350231 m!1237505))

(declare-fun m!1237507 () Bool)

(assert (=> b!1350232 m!1237507))

(assert (=> b!1350166 d!144825))

(declare-fun d!144827 () Bool)

(declare-fun lt!596895 () Bool)

(assert (=> d!144827 (= lt!596895 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!676 acc!759)))))

(declare-fun e!768148 () Bool)

(assert (=> d!144827 (= lt!596895 e!768148)))

(declare-fun res!895814 () Bool)

(assert (=> d!144827 (=> (not res!895814) (not e!768148))))

(assert (=> d!144827 (= res!895814 (is-Cons!31663 acc!759))))

(assert (=> d!144827 (= (contains!9232 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596895)))

(declare-fun b!1350235 () Bool)

(declare-fun e!768147 () Bool)

(assert (=> b!1350235 (= e!768148 e!768147)))

