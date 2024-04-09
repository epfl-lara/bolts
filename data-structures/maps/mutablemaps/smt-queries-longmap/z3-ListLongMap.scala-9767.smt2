; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115762 () Bool)

(assert start!115762)

(declare-fun b!1368409 () Bool)

(declare-fun e!775325 () Bool)

(assert (=> b!1368409 (= e!775325 false)))

(declare-datatypes ((array!92877 0))(
  ( (array!92878 (arr!44858 (Array (_ BitVec 32) (_ BitVec 64))) (size!45409 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92877)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602012 () Bool)

(declare-datatypes ((List!32106 0))(
  ( (Nil!32103) (Cons!32102 (h!33311 (_ BitVec 64)) (t!46807 List!32106)) )
))
(declare-fun acc!866 () List!32106)

(declare-fun arrayNoDuplicates!0 (array!92877 (_ BitVec 32) List!32106) Bool)

(assert (=> b!1368409 (= lt!602012 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368410 () Bool)

(declare-fun res!912040 () Bool)

(declare-fun e!775327 () Bool)

(assert (=> b!1368410 (=> (not res!912040) (not e!775327))))

(declare-fun contains!9644 (List!32106 (_ BitVec 64)) Bool)

(assert (=> b!1368410 (= res!912040 (not (contains!9644 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912048 () Bool)

(assert (=> start!115762 (=> (not res!912048) (not e!775327))))

(assert (=> start!115762 (= res!912048 (and (bvslt (size!45409 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45409 a!3861))))))

(assert (=> start!115762 e!775327))

(declare-fun array_inv!33803 (array!92877) Bool)

(assert (=> start!115762 (array_inv!33803 a!3861)))

(assert (=> start!115762 true))

(declare-fun b!1368411 () Bool)

(declare-fun res!912041 () Bool)

(assert (=> b!1368411 (=> (not res!912041) (not e!775325))))

(assert (=> b!1368411 (= res!912041 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368412 () Bool)

(declare-fun res!912039 () Bool)

(assert (=> b!1368412 (=> (not res!912039) (not e!775325))))

(assert (=> b!1368412 (= res!912039 (bvslt from!3239 (size!45409 a!3861)))))

(declare-fun b!1368413 () Bool)

(declare-fun res!912043 () Bool)

(assert (=> b!1368413 (=> (not res!912043) (not e!775327))))

(declare-fun newAcc!98 () List!32106)

(assert (=> b!1368413 (= res!912043 (not (contains!9644 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368414 () Bool)

(declare-fun res!912042 () Bool)

(assert (=> b!1368414 (=> (not res!912042) (not e!775327))))

(declare-fun noDuplicate!2523 (List!32106) Bool)

(assert (=> b!1368414 (= res!912042 (noDuplicate!2523 acc!866))))

(declare-fun b!1368415 () Bool)

(declare-fun res!912044 () Bool)

(assert (=> b!1368415 (=> (not res!912044) (not e!775325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368415 (= res!912044 (not (validKeyInArray!0 (select (arr!44858 a!3861) from!3239))))))

(declare-fun b!1368416 () Bool)

(assert (=> b!1368416 (= e!775327 e!775325)))

(declare-fun res!912045 () Bool)

(assert (=> b!1368416 (=> (not res!912045) (not e!775325))))

(assert (=> b!1368416 (= res!912045 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45151 0))(
  ( (Unit!45152) )
))
(declare-fun lt!602011 () Unit!45151)

(declare-fun noDuplicateSubseq!222 (List!32106 List!32106) Unit!45151)

(assert (=> b!1368416 (= lt!602011 (noDuplicateSubseq!222 newAcc!98 acc!866))))

(declare-fun b!1368417 () Bool)

(declare-fun res!912038 () Bool)

(assert (=> b!1368417 (=> (not res!912038) (not e!775327))))

(declare-fun subseq!1035 (List!32106 List!32106) Bool)

(assert (=> b!1368417 (= res!912038 (subseq!1035 newAcc!98 acc!866))))

(declare-fun b!1368418 () Bool)

(declare-fun res!912047 () Bool)

(assert (=> b!1368418 (=> (not res!912047) (not e!775327))))

(assert (=> b!1368418 (= res!912047 (not (contains!9644 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368419 () Bool)

(declare-fun res!912046 () Bool)

(assert (=> b!1368419 (=> (not res!912046) (not e!775327))))

(assert (=> b!1368419 (= res!912046 (not (contains!9644 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115762 res!912048) b!1368414))

(assert (= (and b!1368414 res!912042) b!1368410))

(assert (= (and b!1368410 res!912040) b!1368419))

(assert (= (and b!1368419 res!912046) b!1368413))

(assert (= (and b!1368413 res!912043) b!1368418))

(assert (= (and b!1368418 res!912047) b!1368417))

(assert (= (and b!1368417 res!912038) b!1368416))

(assert (= (and b!1368416 res!912045) b!1368412))

(assert (= (and b!1368412 res!912039) b!1368415))

(assert (= (and b!1368415 res!912044) b!1368411))

(assert (= (and b!1368411 res!912041) b!1368409))

(declare-fun m!1252399 () Bool)

(assert (=> b!1368409 m!1252399))

(declare-fun m!1252401 () Bool)

(assert (=> b!1368419 m!1252401))

(declare-fun m!1252403 () Bool)

(assert (=> b!1368413 m!1252403))

(declare-fun m!1252405 () Bool)

(assert (=> b!1368410 m!1252405))

(declare-fun m!1252407 () Bool)

(assert (=> b!1368418 m!1252407))

(declare-fun m!1252409 () Bool)

(assert (=> b!1368417 m!1252409))

(declare-fun m!1252411 () Bool)

(assert (=> b!1368415 m!1252411))

(assert (=> b!1368415 m!1252411))

(declare-fun m!1252413 () Bool)

(assert (=> b!1368415 m!1252413))

(declare-fun m!1252415 () Bool)

(assert (=> start!115762 m!1252415))

(declare-fun m!1252417 () Bool)

(assert (=> b!1368416 m!1252417))

(declare-fun m!1252419 () Bool)

(assert (=> b!1368416 m!1252419))

(declare-fun m!1252421 () Bool)

(assert (=> b!1368414 m!1252421))

(check-sat (not b!1368415) (not b!1368409) (not start!115762) (not b!1368419) (not b!1368417) (not b!1368418) (not b!1368416) (not b!1368414) (not b!1368410) (not b!1368413))
(check-sat)
