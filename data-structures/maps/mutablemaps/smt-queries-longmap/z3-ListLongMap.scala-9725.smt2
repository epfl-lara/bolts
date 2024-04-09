; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115114 () Bool)

(assert start!115114)

(declare-fun b!1363703 () Bool)

(declare-fun e!773351 () Bool)

(declare-fun e!773350 () Bool)

(assert (=> b!1363703 (= e!773351 e!773350)))

(declare-fun res!907583 () Bool)

(assert (=> b!1363703 (=> (not res!907583) (not e!773350))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!600838 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363703 (= res!907583 (and (not (= from!3120 i!1404)) (not lt!600838) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44960 0))(
  ( (Unit!44961) )
))
(declare-fun lt!600836 () Unit!44960)

(declare-fun e!773353 () Unit!44960)

(assert (=> b!1363703 (= lt!600836 e!773353)))

(declare-fun c!127507 () Bool)

(assert (=> b!1363703 (= c!127507 lt!600838)))

(declare-datatypes ((array!92664 0))(
  ( (array!92665 (arr!44759 (Array (_ BitVec 32) (_ BitVec 64))) (size!45310 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92664)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363703 (= lt!600838 (validKeyInArray!0 (select (arr!44759 a!3742) from!3120)))))

(declare-fun b!1363704 () Bool)

(declare-fun lt!600839 () Unit!44960)

(assert (=> b!1363704 (= e!773353 lt!600839)))

(declare-fun lt!600837 () Unit!44960)

(declare-datatypes ((List!31980 0))(
  ( (Nil!31977) (Cons!31976 (h!33185 (_ BitVec 64)) (t!46678 List!31980)) )
))
(declare-fun acc!759 () List!31980)

(declare-fun lemmaListSubSeqRefl!0 (List!31980) Unit!44960)

(assert (=> b!1363704 (= lt!600837 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!936 (List!31980 List!31980) Bool)

(assert (=> b!1363704 (subseq!936 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92664 List!31980 List!31980 (_ BitVec 32)) Unit!44960)

(declare-fun $colon$colon!941 (List!31980 (_ BitVec 64)) List!31980)

(assert (=> b!1363704 (= lt!600839 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!941 acc!759 (select (arr!44759 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92664 (_ BitVec 32) List!31980) Bool)

(assert (=> b!1363704 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363705 () Bool)

(assert (=> b!1363705 (= e!773350 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1363705 (arrayNoDuplicates!0 (array!92665 (store (arr!44759 a!3742) i!1404 l!3587) (size!45310 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600835 () Unit!44960)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92664 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31980) Unit!44960)

(assert (=> b!1363705 (= lt!600835 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363706 () Bool)

(declare-fun res!907577 () Bool)

(assert (=> b!1363706 (=> (not res!907577) (not e!773350))))

(assert (=> b!1363706 (= res!907577 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363707 () Bool)

(declare-fun res!907581 () Bool)

(assert (=> b!1363707 (=> (not res!907581) (not e!773351))))

(assert (=> b!1363707 (= res!907581 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45310 a!3742))))))

(declare-fun b!1363708 () Bool)

(declare-fun res!907574 () Bool)

(assert (=> b!1363708 (=> (not res!907574) (not e!773351))))

(declare-fun contains!9545 (List!31980 (_ BitVec 64)) Bool)

(assert (=> b!1363708 (= res!907574 (not (contains!9545 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363709 () Bool)

(declare-fun res!907578 () Bool)

(assert (=> b!1363709 (=> (not res!907578) (not e!773351))))

(assert (=> b!1363709 (= res!907578 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31977))))

(declare-fun b!1363710 () Bool)

(declare-fun res!907575 () Bool)

(assert (=> b!1363710 (=> (not res!907575) (not e!773351))))

(assert (=> b!1363710 (= res!907575 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45310 a!3742)))))

(declare-fun b!1363711 () Bool)

(declare-fun res!907584 () Bool)

(assert (=> b!1363711 (=> (not res!907584) (not e!773351))))

(assert (=> b!1363711 (= res!907584 (not (contains!9545 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363712 () Bool)

(declare-fun Unit!44962 () Unit!44960)

(assert (=> b!1363712 (= e!773353 Unit!44962)))

(declare-fun b!1363713 () Bool)

(declare-fun res!907580 () Bool)

(assert (=> b!1363713 (=> (not res!907580) (not e!773351))))

(assert (=> b!1363713 (= res!907580 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363714 () Bool)

(declare-fun res!907579 () Bool)

(assert (=> b!1363714 (=> (not res!907579) (not e!773351))))

(declare-fun noDuplicate!2424 (List!31980) Bool)

(assert (=> b!1363714 (= res!907579 (noDuplicate!2424 acc!759))))

(declare-fun b!1363715 () Bool)

(declare-fun res!907576 () Bool)

(assert (=> b!1363715 (=> (not res!907576) (not e!773351))))

(assert (=> b!1363715 (= res!907576 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!907582 () Bool)

(assert (=> start!115114 (=> (not res!907582) (not e!773351))))

(assert (=> start!115114 (= res!907582 (and (bvslt (size!45310 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45310 a!3742))))))

(assert (=> start!115114 e!773351))

(assert (=> start!115114 true))

(declare-fun array_inv!33704 (array!92664) Bool)

(assert (=> start!115114 (array_inv!33704 a!3742)))

(assert (= (and start!115114 res!907582) b!1363714))

(assert (= (and b!1363714 res!907579) b!1363711))

(assert (= (and b!1363711 res!907584) b!1363708))

(assert (= (and b!1363708 res!907574) b!1363709))

(assert (= (and b!1363709 res!907578) b!1363713))

(assert (= (and b!1363713 res!907580) b!1363707))

(assert (= (and b!1363707 res!907581) b!1363715))

(assert (= (and b!1363715 res!907576) b!1363710))

(assert (= (and b!1363710 res!907575) b!1363703))

(assert (= (and b!1363703 c!127507) b!1363704))

(assert (= (and b!1363703 (not c!127507)) b!1363712))

(assert (= (and b!1363703 res!907583) b!1363706))

(assert (= (and b!1363706 res!907577) b!1363705))

(declare-fun m!1248467 () Bool)

(assert (=> b!1363708 m!1248467))

(declare-fun m!1248469 () Bool)

(assert (=> b!1363705 m!1248469))

(declare-fun m!1248471 () Bool)

(assert (=> b!1363705 m!1248471))

(declare-fun m!1248473 () Bool)

(assert (=> b!1363705 m!1248473))

(declare-fun m!1248475 () Bool)

(assert (=> b!1363713 m!1248475))

(declare-fun m!1248477 () Bool)

(assert (=> b!1363706 m!1248477))

(declare-fun m!1248479 () Bool)

(assert (=> b!1363704 m!1248479))

(declare-fun m!1248481 () Bool)

(assert (=> b!1363704 m!1248481))

(declare-fun m!1248483 () Bool)

(assert (=> b!1363704 m!1248483))

(declare-fun m!1248485 () Bool)

(assert (=> b!1363704 m!1248485))

(assert (=> b!1363704 m!1248477))

(assert (=> b!1363704 m!1248481))

(assert (=> b!1363704 m!1248483))

(declare-fun m!1248487 () Bool)

(assert (=> b!1363704 m!1248487))

(declare-fun m!1248489 () Bool)

(assert (=> b!1363714 m!1248489))

(declare-fun m!1248491 () Bool)

(assert (=> b!1363711 m!1248491))

(assert (=> b!1363703 m!1248481))

(assert (=> b!1363703 m!1248481))

(declare-fun m!1248493 () Bool)

(assert (=> b!1363703 m!1248493))

(declare-fun m!1248495 () Bool)

(assert (=> b!1363709 m!1248495))

(declare-fun m!1248497 () Bool)

(assert (=> b!1363715 m!1248497))

(declare-fun m!1248499 () Bool)

(assert (=> start!115114 m!1248499))

(check-sat (not b!1363703) (not b!1363711) (not b!1363704) (not b!1363715) (not b!1363705) (not start!115114) (not b!1363708) (not b!1363706) (not b!1363709) (not b!1363713) (not b!1363714))
(check-sat)
