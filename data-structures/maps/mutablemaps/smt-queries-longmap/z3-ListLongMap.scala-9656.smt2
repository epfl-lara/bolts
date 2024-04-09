; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114112 () Bool)

(assert start!114112)

(declare-fun b!1354277 () Bool)

(declare-fun res!899473 () Bool)

(declare-fun e!769390 () Bool)

(assert (=> b!1354277 (=> (not res!899473) (not e!769390))))

(declare-datatypes ((List!31773 0))(
  ( (Nil!31770) (Cons!31769 (h!32978 (_ BitVec 64)) (t!46438 List!31773)) )
))
(declare-fun acc!759 () List!31773)

(declare-fun contains!9338 (List!31773 (_ BitVec 64)) Bool)

(assert (=> b!1354277 (= res!899473 (not (contains!9338 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354278 () Bool)

(declare-fun res!899471 () Bool)

(declare-fun e!769392 () Bool)

(assert (=> b!1354278 (=> (not res!899471) (not e!769392))))

(declare-fun lt!598162 () List!31773)

(assert (=> b!1354278 (= res!899471 (not (contains!9338 lt!598162 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354279 () Bool)

(declare-fun e!769391 () Bool)

(assert (=> b!1354279 (= e!769391 e!769392)))

(declare-fun res!899480 () Bool)

(assert (=> b!1354279 (=> (not res!899480) (not e!769392))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1354279 (= res!899480 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((array!92217 0))(
  ( (array!92218 (arr!44552 (Array (_ BitVec 32) (_ BitVec 64))) (size!45103 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92217)

(declare-fun $colon$colon!764 (List!31773 (_ BitVec 64)) List!31773)

(assert (=> b!1354279 (= lt!598162 ($colon$colon!764 acc!759 (select (arr!44552 a!3742) from!3120)))))

(declare-fun b!1354281 () Bool)

(declare-fun res!899472 () Bool)

(assert (=> b!1354281 (=> (not res!899472) (not e!769392))))

(assert (=> b!1354281 (= res!899472 (not (contains!9338 lt!598162 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354282 () Bool)

(declare-fun res!899481 () Bool)

(assert (=> b!1354282 (=> (not res!899481) (not e!769390))))

(assert (=> b!1354282 (= res!899481 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45103 a!3742)))))

(declare-fun b!1354283 () Bool)

(assert (=> b!1354283 (= e!769390 e!769391)))

(declare-fun res!899475 () Bool)

(assert (=> b!1354283 (=> (not res!899475) (not e!769391))))

(declare-fun lt!598165 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354283 (= res!899475 (and (not (= from!3120 i!1404)) lt!598165))))

(declare-datatypes ((Unit!44420 0))(
  ( (Unit!44421) )
))
(declare-fun lt!598161 () Unit!44420)

(declare-fun e!769393 () Unit!44420)

(assert (=> b!1354283 (= lt!598161 e!769393)))

(declare-fun c!126847 () Bool)

(assert (=> b!1354283 (= c!126847 lt!598165)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354283 (= lt!598165 (validKeyInArray!0 (select (arr!44552 a!3742) from!3120)))))

(declare-fun b!1354284 () Bool)

(declare-fun res!899470 () Bool)

(assert (=> b!1354284 (=> (not res!899470) (not e!769390))))

(assert (=> b!1354284 (= res!899470 (not (contains!9338 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354285 () Bool)

(declare-fun res!899477 () Bool)

(assert (=> b!1354285 (=> (not res!899477) (not e!769390))))

(declare-fun arrayNoDuplicates!0 (array!92217 (_ BitVec 32) List!31773) Bool)

(assert (=> b!1354285 (= res!899477 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31770))))

(declare-fun b!1354286 () Bool)

(declare-fun Unit!44422 () Unit!44420)

(assert (=> b!1354286 (= e!769393 Unit!44422)))

(declare-fun b!1354287 () Bool)

(declare-fun res!899469 () Bool)

(assert (=> b!1354287 (=> (not res!899469) (not e!769390))))

(assert (=> b!1354287 (= res!899469 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354288 () Bool)

(assert (=> b!1354288 (= e!769392 false)))

(declare-fun lt!598164 () Bool)

(assert (=> b!1354288 (= lt!598164 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598162))))

(declare-fun b!1354280 () Bool)

(declare-fun lt!598166 () Unit!44420)

(assert (=> b!1354280 (= e!769393 lt!598166)))

(declare-fun lt!598163 () Unit!44420)

(declare-fun lemmaListSubSeqRefl!0 (List!31773) Unit!44420)

(assert (=> b!1354280 (= lt!598163 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!747 (List!31773 List!31773) Bool)

(assert (=> b!1354280 (subseq!747 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92217 List!31773 List!31773 (_ BitVec 32)) Unit!44420)

(assert (=> b!1354280 (= lt!598166 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!764 acc!759 (select (arr!44552 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354280 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!899479 () Bool)

(assert (=> start!114112 (=> (not res!899479) (not e!769390))))

(assert (=> start!114112 (= res!899479 (and (bvslt (size!45103 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45103 a!3742))))))

(assert (=> start!114112 e!769390))

(assert (=> start!114112 true))

(declare-fun array_inv!33497 (array!92217) Bool)

(assert (=> start!114112 (array_inv!33497 a!3742)))

(declare-fun b!1354289 () Bool)

(declare-fun res!899476 () Bool)

(assert (=> b!1354289 (=> (not res!899476) (not e!769390))))

(declare-fun noDuplicate!2217 (List!31773) Bool)

(assert (=> b!1354289 (= res!899476 (noDuplicate!2217 acc!759))))

(declare-fun b!1354290 () Bool)

(declare-fun res!899478 () Bool)

(assert (=> b!1354290 (=> (not res!899478) (not e!769392))))

(assert (=> b!1354290 (= res!899478 (noDuplicate!2217 lt!598162))))

(declare-fun b!1354291 () Bool)

(declare-fun res!899468 () Bool)

(assert (=> b!1354291 (=> (not res!899468) (not e!769390))))

(assert (=> b!1354291 (= res!899468 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45103 a!3742))))))

(declare-fun b!1354292 () Bool)

(declare-fun res!899474 () Bool)

(assert (=> b!1354292 (=> (not res!899474) (not e!769390))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354292 (= res!899474 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114112 res!899479) b!1354289))

(assert (= (and b!1354289 res!899476) b!1354284))

(assert (= (and b!1354284 res!899470) b!1354277))

(assert (= (and b!1354277 res!899473) b!1354285))

(assert (= (and b!1354285 res!899477) b!1354287))

(assert (= (and b!1354287 res!899469) b!1354291))

(assert (= (and b!1354291 res!899468) b!1354292))

(assert (= (and b!1354292 res!899474) b!1354282))

(assert (= (and b!1354282 res!899481) b!1354283))

(assert (= (and b!1354283 c!126847) b!1354280))

(assert (= (and b!1354283 (not c!126847)) b!1354286))

(assert (= (and b!1354283 res!899475) b!1354279))

(assert (= (and b!1354279 res!899480) b!1354290))

(assert (= (and b!1354290 res!899478) b!1354278))

(assert (= (and b!1354278 res!899471) b!1354281))

(assert (= (and b!1354281 res!899472) b!1354288))

(declare-fun m!1240705 () Bool)

(assert (=> b!1354277 m!1240705))

(declare-fun m!1240707 () Bool)

(assert (=> b!1354288 m!1240707))

(declare-fun m!1240709 () Bool)

(assert (=> b!1354287 m!1240709))

(declare-fun m!1240711 () Bool)

(assert (=> b!1354292 m!1240711))

(declare-fun m!1240713 () Bool)

(assert (=> b!1354283 m!1240713))

(assert (=> b!1354283 m!1240713))

(declare-fun m!1240715 () Bool)

(assert (=> b!1354283 m!1240715))

(declare-fun m!1240717 () Bool)

(assert (=> b!1354290 m!1240717))

(declare-fun m!1240719 () Bool)

(assert (=> b!1354278 m!1240719))

(declare-fun m!1240721 () Bool)

(assert (=> b!1354280 m!1240721))

(assert (=> b!1354280 m!1240713))

(declare-fun m!1240723 () Bool)

(assert (=> b!1354280 m!1240723))

(declare-fun m!1240725 () Bool)

(assert (=> b!1354280 m!1240725))

(declare-fun m!1240727 () Bool)

(assert (=> b!1354280 m!1240727))

(assert (=> b!1354280 m!1240713))

(assert (=> b!1354280 m!1240723))

(declare-fun m!1240729 () Bool)

(assert (=> b!1354280 m!1240729))

(declare-fun m!1240731 () Bool)

(assert (=> b!1354289 m!1240731))

(declare-fun m!1240733 () Bool)

(assert (=> b!1354281 m!1240733))

(assert (=> b!1354279 m!1240713))

(assert (=> b!1354279 m!1240713))

(assert (=> b!1354279 m!1240723))

(declare-fun m!1240735 () Bool)

(assert (=> b!1354285 m!1240735))

(declare-fun m!1240737 () Bool)

(assert (=> start!114112 m!1240737))

(declare-fun m!1240739 () Bool)

(assert (=> b!1354284 m!1240739))

(check-sat (not b!1354281) (not b!1354290) (not b!1354292) (not b!1354283) (not b!1354279) (not b!1354284) (not b!1354280) (not b!1354289) (not b!1354285) (not b!1354287) (not b!1354278) (not b!1354277) (not b!1354288) (not start!114112))
(check-sat)
