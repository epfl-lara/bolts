; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113964 () Bool)

(assert start!113964)

(declare-fun b!1351185 () Bool)

(declare-fun res!896773 () Bool)

(declare-fun e!768453 () Bool)

(assert (=> b!1351185 (=> (not res!896773) (not e!768453))))

(declare-datatypes ((List!31699 0))(
  ( (Nil!31696) (Cons!31695 (h!32904 (_ BitVec 64)) (t!46364 List!31699)) )
))
(declare-fun acc!759 () List!31699)

(declare-fun noDuplicate!2143 (List!31699) Bool)

(assert (=> b!1351185 (= res!896773 (noDuplicate!2143 acc!759))))

(declare-fun b!1351186 () Bool)

(declare-fun res!896769 () Bool)

(assert (=> b!1351186 (=> (not res!896769) (not e!768453))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92069 0))(
  ( (array!92070 (arr!44478 (Array (_ BitVec 32) (_ BitVec 64))) (size!45029 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92069)

(assert (=> b!1351186 (= res!896769 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45029 a!3742))))))

(declare-fun b!1351187 () Bool)

(declare-fun res!896771 () Bool)

(declare-fun e!768454 () Bool)

(assert (=> b!1351187 (=> res!896771 e!768454)))

(declare-fun lt!597120 () List!31699)

(declare-fun contains!9264 (List!31699 (_ BitVec 64)) Bool)

(assert (=> b!1351187 (= res!896771 (contains!9264 lt!597120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351188 () Bool)

(declare-fun res!896770 () Bool)

(assert (=> b!1351188 (=> res!896770 e!768454)))

(declare-fun subseq!673 (List!31699 List!31699) Bool)

(assert (=> b!1351188 (= res!896770 (not (subseq!673 acc!759 lt!597120)))))

(declare-fun b!1351189 () Bool)

(assert (=> b!1351189 (= e!768454 true)))

(declare-fun lt!597121 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92069 (_ BitVec 32) List!31699) Bool)

(assert (=> b!1351189 (= lt!597121 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597120))))

(declare-datatypes ((Unit!44208 0))(
  ( (Unit!44209) )
))
(declare-fun lt!597122 () Unit!44208)

(declare-fun noDuplicateSubseq!124 (List!31699 List!31699) Unit!44208)

(assert (=> b!1351189 (= lt!597122 (noDuplicateSubseq!124 acc!759 lt!597120))))

(declare-fun b!1351190 () Bool)

(declare-fun res!896764 () Bool)

(assert (=> b!1351190 (=> (not res!896764) (not e!768453))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351190 (= res!896764 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351191 () Bool)

(declare-fun res!896778 () Bool)

(assert (=> b!1351191 (=> (not res!896778) (not e!768453))))

(assert (=> b!1351191 (= res!896778 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45029 a!3742)))))

(declare-fun b!1351192 () Bool)

(declare-fun res!896775 () Bool)

(assert (=> b!1351192 (=> res!896775 e!768454)))

(assert (=> b!1351192 (= res!896775 (contains!9264 lt!597120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351193 () Bool)

(declare-fun res!896777 () Bool)

(assert (=> b!1351193 (=> (not res!896777) (not e!768453))))

(assert (=> b!1351193 (= res!896777 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351194 () Bool)

(declare-fun res!896766 () Bool)

(assert (=> b!1351194 (=> (not res!896766) (not e!768453))))

(assert (=> b!1351194 (= res!896766 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31696))))

(declare-fun res!896774 () Bool)

(assert (=> start!113964 (=> (not res!896774) (not e!768453))))

(assert (=> start!113964 (= res!896774 (and (bvslt (size!45029 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45029 a!3742))))))

(assert (=> start!113964 e!768453))

(assert (=> start!113964 true))

(declare-fun array_inv!33423 (array!92069) Bool)

(assert (=> start!113964 (array_inv!33423 a!3742)))

(declare-fun b!1351195 () Bool)

(declare-fun res!896768 () Bool)

(assert (=> b!1351195 (=> (not res!896768) (not e!768453))))

(assert (=> b!1351195 (= res!896768 (not (contains!9264 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351196 () Bool)

(declare-fun res!896765 () Bool)

(assert (=> b!1351196 (=> (not res!896765) (not e!768453))))

(assert (=> b!1351196 (= res!896765 (validKeyInArray!0 (select (arr!44478 a!3742) from!3120)))))

(declare-fun b!1351197 () Bool)

(declare-fun res!896772 () Bool)

(assert (=> b!1351197 (=> res!896772 e!768454)))

(assert (=> b!1351197 (= res!896772 (not (noDuplicate!2143 lt!597120)))))

(declare-fun b!1351198 () Bool)

(declare-fun res!896776 () Bool)

(assert (=> b!1351198 (=> (not res!896776) (not e!768453))))

(assert (=> b!1351198 (= res!896776 (not (contains!9264 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351199 () Bool)

(assert (=> b!1351199 (= e!768453 (not e!768454))))

(declare-fun res!896767 () Bool)

(assert (=> b!1351199 (=> res!896767 e!768454)))

(assert (=> b!1351199 (= res!896767 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!690 (List!31699 (_ BitVec 64)) List!31699)

(assert (=> b!1351199 (= lt!597120 ($colon$colon!690 acc!759 (select (arr!44478 a!3742) from!3120)))))

(assert (=> b!1351199 (subseq!673 acc!759 acc!759)))

(declare-fun lt!597119 () Unit!44208)

(declare-fun lemmaListSubSeqRefl!0 (List!31699) Unit!44208)

(assert (=> b!1351199 (= lt!597119 (lemmaListSubSeqRefl!0 acc!759))))

(assert (= (and start!113964 res!896774) b!1351185))

(assert (= (and b!1351185 res!896773) b!1351195))

(assert (= (and b!1351195 res!896768) b!1351198))

(assert (= (and b!1351198 res!896776) b!1351194))

(assert (= (and b!1351194 res!896766) b!1351193))

(assert (= (and b!1351193 res!896777) b!1351186))

(assert (= (and b!1351186 res!896769) b!1351190))

(assert (= (and b!1351190 res!896764) b!1351191))

(assert (= (and b!1351191 res!896778) b!1351196))

(assert (= (and b!1351196 res!896765) b!1351199))

(assert (= (and b!1351199 (not res!896767)) b!1351197))

(assert (= (and b!1351197 (not res!896772)) b!1351187))

(assert (= (and b!1351187 (not res!896771)) b!1351192))

(assert (= (and b!1351192 (not res!896775)) b!1351188))

(assert (= (and b!1351188 (not res!896770)) b!1351189))

(declare-fun m!1238281 () Bool)

(assert (=> b!1351192 m!1238281))

(declare-fun m!1238283 () Bool)

(assert (=> b!1351190 m!1238283))

(declare-fun m!1238285 () Bool)

(assert (=> b!1351187 m!1238285))

(declare-fun m!1238287 () Bool)

(assert (=> start!113964 m!1238287))

(declare-fun m!1238289 () Bool)

(assert (=> b!1351199 m!1238289))

(assert (=> b!1351199 m!1238289))

(declare-fun m!1238291 () Bool)

(assert (=> b!1351199 m!1238291))

(declare-fun m!1238293 () Bool)

(assert (=> b!1351199 m!1238293))

(declare-fun m!1238295 () Bool)

(assert (=> b!1351199 m!1238295))

(declare-fun m!1238297 () Bool)

(assert (=> b!1351194 m!1238297))

(declare-fun m!1238299 () Bool)

(assert (=> b!1351185 m!1238299))

(declare-fun m!1238301 () Bool)

(assert (=> b!1351189 m!1238301))

(declare-fun m!1238303 () Bool)

(assert (=> b!1351189 m!1238303))

(declare-fun m!1238305 () Bool)

(assert (=> b!1351195 m!1238305))

(declare-fun m!1238307 () Bool)

(assert (=> b!1351193 m!1238307))

(assert (=> b!1351196 m!1238289))

(assert (=> b!1351196 m!1238289))

(declare-fun m!1238309 () Bool)

(assert (=> b!1351196 m!1238309))

(declare-fun m!1238311 () Bool)

(assert (=> b!1351198 m!1238311))

(declare-fun m!1238313 () Bool)

(assert (=> b!1351197 m!1238313))

(declare-fun m!1238315 () Bool)

(assert (=> b!1351188 m!1238315))

(push 1)

(assert (not b!1351198))

(assert (not b!1351194))

(assert (not b!1351193))

(assert (not b!1351187))

(assert (not b!1351195))

(assert (not start!113964))

(assert (not b!1351192))

(assert (not b!1351185))

(assert (not b!1351190))

(assert (not b!1351188))

(assert (not b!1351199))

(assert (not b!1351196))

(assert (not b!1351197))

