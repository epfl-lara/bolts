; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115102 () Bool)

(assert start!115102)

(declare-fun b!1363473 () Bool)

(declare-datatypes ((Unit!44942 0))(
  ( (Unit!44943) )
))
(declare-fun e!773279 () Unit!44942)

(declare-fun Unit!44944 () Unit!44942)

(assert (=> b!1363473 (= e!773279 Unit!44944)))

(declare-fun b!1363474 () Bool)

(declare-fun res!907384 () Bool)

(declare-fun e!773278 () Bool)

(assert (=> b!1363474 (=> (not res!907384) (not e!773278))))

(declare-datatypes ((array!92652 0))(
  ( (array!92653 (arr!44753 (Array (_ BitVec 32) (_ BitVec 64))) (size!45304 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92652)

(declare-datatypes ((List!31974 0))(
  ( (Nil!31971) (Cons!31970 (h!33179 (_ BitVec 64)) (t!46672 List!31974)) )
))
(declare-fun arrayNoDuplicates!0 (array!92652 (_ BitVec 32) List!31974) Bool)

(assert (=> b!1363474 (= res!907384 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31971))))

(declare-fun b!1363475 () Bool)

(declare-fun res!907383 () Bool)

(assert (=> b!1363475 (=> (not res!907383) (not e!773278))))

(declare-fun acc!759 () List!31974)

(declare-fun contains!9539 (List!31974 (_ BitVec 64)) Bool)

(assert (=> b!1363475 (= res!907383 (not (contains!9539 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!907382 () Bool)

(assert (=> start!115102 (=> (not res!907382) (not e!773278))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115102 (= res!907382 (and (bvslt (size!45304 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45304 a!3742))))))

(assert (=> start!115102 e!773278))

(assert (=> start!115102 true))

(declare-fun array_inv!33698 (array!92652) Bool)

(assert (=> start!115102 (array_inv!33698 a!3742)))

(declare-fun b!1363476 () Bool)

(declare-fun res!907386 () Bool)

(assert (=> b!1363476 (=> (not res!907386) (not e!773278))))

(assert (=> b!1363476 (= res!907386 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45304 a!3742)))))

(declare-fun b!1363477 () Bool)

(declare-fun res!907388 () Bool)

(assert (=> b!1363477 (=> (not res!907388) (not e!773278))))

(assert (=> b!1363477 (= res!907388 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363478 () Bool)

(declare-fun e!773281 () Bool)

(assert (=> b!1363478 (= e!773281 false)))

(declare-fun lt!600756 () Bool)

(assert (=> b!1363478 (= lt!600756 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363479 () Bool)

(declare-fun res!907380 () Bool)

(assert (=> b!1363479 (=> (not res!907380) (not e!773278))))

(assert (=> b!1363479 (= res!907380 (not (contains!9539 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363480 () Bool)

(declare-fun res!907381 () Bool)

(assert (=> b!1363480 (=> (not res!907381) (not e!773278))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363480 (= res!907381 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363481 () Bool)

(declare-fun res!907387 () Bool)

(assert (=> b!1363481 (=> (not res!907387) (not e!773278))))

(declare-fun noDuplicate!2418 (List!31974) Bool)

(assert (=> b!1363481 (= res!907387 (noDuplicate!2418 acc!759))))

(declare-fun b!1363482 () Bool)

(declare-fun lt!600754 () Unit!44942)

(assert (=> b!1363482 (= e!773279 lt!600754)))

(declare-fun lt!600758 () Unit!44942)

(declare-fun lemmaListSubSeqRefl!0 (List!31974) Unit!44942)

(assert (=> b!1363482 (= lt!600758 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!930 (List!31974 List!31974) Bool)

(assert (=> b!1363482 (subseq!930 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92652 List!31974 List!31974 (_ BitVec 32)) Unit!44942)

(declare-fun $colon$colon!935 (List!31974 (_ BitVec 64)) List!31974)

(assert (=> b!1363482 (= lt!600754 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!935 acc!759 (select (arr!44753 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363482 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363483 () Bool)

(assert (=> b!1363483 (= e!773278 e!773281)))

(declare-fun res!907389 () Bool)

(assert (=> b!1363483 (=> (not res!907389) (not e!773281))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!600757 () Bool)

(assert (=> b!1363483 (= res!907389 (and (not (= from!3120 i!1404)) (not lt!600757) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600755 () Unit!44942)

(assert (=> b!1363483 (= lt!600755 e!773279)))

(declare-fun c!127489 () Bool)

(assert (=> b!1363483 (= c!127489 lt!600757)))

(assert (=> b!1363483 (= lt!600757 (validKeyInArray!0 (select (arr!44753 a!3742) from!3120)))))

(declare-fun b!1363484 () Bool)

(declare-fun res!907385 () Bool)

(assert (=> b!1363484 (=> (not res!907385) (not e!773278))))

(assert (=> b!1363484 (= res!907385 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45304 a!3742))))))

(assert (= (and start!115102 res!907382) b!1363481))

(assert (= (and b!1363481 res!907387) b!1363475))

(assert (= (and b!1363475 res!907383) b!1363479))

(assert (= (and b!1363479 res!907380) b!1363474))

(assert (= (and b!1363474 res!907384) b!1363477))

(assert (= (and b!1363477 res!907388) b!1363484))

(assert (= (and b!1363484 res!907385) b!1363480))

(assert (= (and b!1363480 res!907381) b!1363476))

(assert (= (and b!1363476 res!907386) b!1363483))

(assert (= (and b!1363483 c!127489) b!1363482))

(assert (= (and b!1363483 (not c!127489)) b!1363473))

(assert (= (and b!1363483 res!907389) b!1363478))

(declare-fun m!1248293 () Bool)

(assert (=> b!1363482 m!1248293))

(declare-fun m!1248295 () Bool)

(assert (=> b!1363482 m!1248295))

(declare-fun m!1248297 () Bool)

(assert (=> b!1363482 m!1248297))

(declare-fun m!1248299 () Bool)

(assert (=> b!1363482 m!1248299))

(declare-fun m!1248301 () Bool)

(assert (=> b!1363482 m!1248301))

(assert (=> b!1363482 m!1248295))

(assert (=> b!1363482 m!1248297))

(declare-fun m!1248303 () Bool)

(assert (=> b!1363482 m!1248303))

(declare-fun m!1248305 () Bool)

(assert (=> b!1363475 m!1248305))

(assert (=> b!1363478 m!1248301))

(declare-fun m!1248307 () Bool)

(assert (=> b!1363480 m!1248307))

(declare-fun m!1248309 () Bool)

(assert (=> b!1363479 m!1248309))

(declare-fun m!1248311 () Bool)

(assert (=> b!1363474 m!1248311))

(declare-fun m!1248313 () Bool)

(assert (=> start!115102 m!1248313))

(declare-fun m!1248315 () Bool)

(assert (=> b!1363477 m!1248315))

(assert (=> b!1363483 m!1248295))

(assert (=> b!1363483 m!1248295))

(declare-fun m!1248317 () Bool)

(assert (=> b!1363483 m!1248317))

(declare-fun m!1248319 () Bool)

(assert (=> b!1363481 m!1248319))

(check-sat (not b!1363482) (not b!1363481) (not b!1363477) (not b!1363480) (not b!1363478) (not b!1363474) (not b!1363475) (not start!115102) (not b!1363479) (not b!1363483))
(check-sat)
