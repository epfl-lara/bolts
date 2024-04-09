; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114844 () Bool)

(assert start!114844)

(declare-fun b!1361088 () Bool)

(declare-fun res!905388 () Bool)

(declare-fun e!772229 () Bool)

(assert (=> b!1361088 (=> (not res!905388) (not e!772229))))

(declare-datatypes ((List!31929 0))(
  ( (Nil!31926) (Cons!31925 (h!33134 (_ BitVec 64)) (t!46618 List!31929)) )
))
(declare-fun lt!600030 () List!31929)

(declare-fun noDuplicate!2373 (List!31929) Bool)

(assert (=> b!1361088 (= res!905388 (noDuplicate!2373 lt!600030))))

(declare-fun b!1361089 () Bool)

(declare-datatypes ((Unit!44807 0))(
  ( (Unit!44808) )
))
(declare-fun e!772231 () Unit!44807)

(declare-fun lt!600028 () Unit!44807)

(assert (=> b!1361089 (= e!772231 lt!600028)))

(declare-fun lt!600032 () Unit!44807)

(declare-fun acc!759 () List!31929)

(declare-fun lemmaListSubSeqRefl!0 (List!31929) Unit!44807)

(assert (=> b!1361089 (= lt!600032 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!885 (List!31929 List!31929) Bool)

(assert (=> b!1361089 (subseq!885 acc!759 acc!759)))

(declare-datatypes ((array!92553 0))(
  ( (array!92554 (arr!44708 (Array (_ BitVec 32) (_ BitVec 64))) (size!45259 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92553)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92553 List!31929 List!31929 (_ BitVec 32)) Unit!44807)

(declare-fun $colon$colon!890 (List!31929 (_ BitVec 64)) List!31929)

(assert (=> b!1361089 (= lt!600028 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!890 acc!759 (select (arr!44708 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92553 (_ BitVec 32) List!31929) Bool)

(assert (=> b!1361089 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361090 () Bool)

(declare-fun res!905382 () Bool)

(assert (=> b!1361090 (=> (not res!905382) (not e!772229))))

(declare-fun contains!9494 (List!31929 (_ BitVec 64)) Bool)

(assert (=> b!1361090 (= res!905382 (not (contains!9494 lt!600030 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361091 () Bool)

(declare-fun res!905381 () Bool)

(declare-fun e!772227 () Bool)

(assert (=> b!1361091 (=> (not res!905381) (not e!772227))))

(assert (=> b!1361091 (= res!905381 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361092 () Bool)

(declare-fun e!772230 () Bool)

(assert (=> b!1361092 (= e!772227 e!772230)))

(declare-fun res!905387 () Bool)

(assert (=> b!1361092 (=> (not res!905387) (not e!772230))))

(declare-fun lt!600031 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361092 (= res!905387 (and (not (= from!3120 i!1404)) lt!600031))))

(declare-fun lt!600027 () Unit!44807)

(assert (=> b!1361092 (= lt!600027 e!772231)))

(declare-fun c!127297 () Bool)

(assert (=> b!1361092 (= c!127297 lt!600031)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361092 (= lt!600031 (validKeyInArray!0 (select (arr!44708 a!3742) from!3120)))))

(declare-fun b!1361093 () Bool)

(assert (=> b!1361093 (= e!772229 false)))

(declare-fun lt!600029 () Bool)

(assert (=> b!1361093 (= lt!600029 (contains!9494 lt!600030 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361094 () Bool)

(declare-fun res!905383 () Bool)

(assert (=> b!1361094 (=> (not res!905383) (not e!772227))))

(assert (=> b!1361094 (= res!905383 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45259 a!3742)))))

(declare-fun b!1361095 () Bool)

(declare-fun res!905389 () Bool)

(assert (=> b!1361095 (=> (not res!905389) (not e!772227))))

(assert (=> b!1361095 (= res!905389 (noDuplicate!2373 acc!759))))

(declare-fun b!1361096 () Bool)

(declare-fun res!905384 () Bool)

(assert (=> b!1361096 (=> (not res!905384) (not e!772227))))

(assert (=> b!1361096 (= res!905384 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45259 a!3742))))))

(declare-fun res!905385 () Bool)

(assert (=> start!114844 (=> (not res!905385) (not e!772227))))

(assert (=> start!114844 (= res!905385 (and (bvslt (size!45259 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45259 a!3742))))))

(assert (=> start!114844 e!772227))

(assert (=> start!114844 true))

(declare-fun array_inv!33653 (array!92553) Bool)

(assert (=> start!114844 (array_inv!33653 a!3742)))

(declare-fun b!1361097 () Bool)

(declare-fun res!905386 () Bool)

(assert (=> b!1361097 (=> (not res!905386) (not e!772227))))

(assert (=> b!1361097 (= res!905386 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31926))))

(declare-fun b!1361098 () Bool)

(assert (=> b!1361098 (= e!772230 e!772229)))

(declare-fun res!905379 () Bool)

(assert (=> b!1361098 (=> (not res!905379) (not e!772229))))

(assert (=> b!1361098 (= res!905379 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361098 (= lt!600030 ($colon$colon!890 acc!759 (select (arr!44708 a!3742) from!3120)))))

(declare-fun b!1361099 () Bool)

(declare-fun Unit!44809 () Unit!44807)

(assert (=> b!1361099 (= e!772231 Unit!44809)))

(declare-fun b!1361100 () Bool)

(declare-fun res!905380 () Bool)

(assert (=> b!1361100 (=> (not res!905380) (not e!772227))))

(assert (=> b!1361100 (= res!905380 (not (contains!9494 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361101 () Bool)

(declare-fun res!905390 () Bool)

(assert (=> b!1361101 (=> (not res!905390) (not e!772227))))

(assert (=> b!1361101 (= res!905390 (not (contains!9494 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361102 () Bool)

(declare-fun res!905391 () Bool)

(assert (=> b!1361102 (=> (not res!905391) (not e!772227))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361102 (= res!905391 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114844 res!905385) b!1361095))

(assert (= (and b!1361095 res!905389) b!1361101))

(assert (= (and b!1361101 res!905390) b!1361100))

(assert (= (and b!1361100 res!905380) b!1361097))

(assert (= (and b!1361097 res!905386) b!1361091))

(assert (= (and b!1361091 res!905381) b!1361096))

(assert (= (and b!1361096 res!905384) b!1361102))

(assert (= (and b!1361102 res!905391) b!1361094))

(assert (= (and b!1361094 res!905383) b!1361092))

(assert (= (and b!1361092 c!127297) b!1361089))

(assert (= (and b!1361092 (not c!127297)) b!1361099))

(assert (= (and b!1361092 res!905387) b!1361098))

(assert (= (and b!1361098 res!905379) b!1361088))

(assert (= (and b!1361088 res!905388) b!1361090))

(assert (= (and b!1361090 res!905382) b!1361093))

(declare-fun m!1246289 () Bool)

(assert (=> b!1361100 m!1246289))

(declare-fun m!1246291 () Bool)

(assert (=> b!1361095 m!1246291))

(declare-fun m!1246293 () Bool)

(assert (=> b!1361091 m!1246293))

(declare-fun m!1246295 () Bool)

(assert (=> b!1361098 m!1246295))

(assert (=> b!1361098 m!1246295))

(declare-fun m!1246297 () Bool)

(assert (=> b!1361098 m!1246297))

(assert (=> b!1361092 m!1246295))

(assert (=> b!1361092 m!1246295))

(declare-fun m!1246299 () Bool)

(assert (=> b!1361092 m!1246299))

(declare-fun m!1246301 () Bool)

(assert (=> b!1361102 m!1246301))

(declare-fun m!1246303 () Bool)

(assert (=> b!1361090 m!1246303))

(declare-fun m!1246305 () Bool)

(assert (=> b!1361101 m!1246305))

(declare-fun m!1246307 () Bool)

(assert (=> b!1361093 m!1246307))

(declare-fun m!1246309 () Bool)

(assert (=> b!1361088 m!1246309))

(declare-fun m!1246311 () Bool)

(assert (=> b!1361089 m!1246311))

(assert (=> b!1361089 m!1246295))

(assert (=> b!1361089 m!1246297))

(declare-fun m!1246313 () Bool)

(assert (=> b!1361089 m!1246313))

(declare-fun m!1246315 () Bool)

(assert (=> b!1361089 m!1246315))

(assert (=> b!1361089 m!1246295))

(assert (=> b!1361089 m!1246297))

(declare-fun m!1246317 () Bool)

(assert (=> b!1361089 m!1246317))

(declare-fun m!1246319 () Bool)

(assert (=> b!1361097 m!1246319))

(declare-fun m!1246321 () Bool)

(assert (=> start!114844 m!1246321))

(check-sat (not b!1361091) (not b!1361101) (not start!114844) (not b!1361088) (not b!1361098) (not b!1361100) (not b!1361102) (not b!1361092) (not b!1361093) (not b!1361097) (not b!1361090) (not b!1361089) (not b!1361095))
(check-sat)
