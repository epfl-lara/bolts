; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136854 () Bool)

(assert start!136854)

(declare-fun res!1078736 () Bool)

(declare-fun e!880571 () Bool)

(assert (=> start!136854 (=> (not res!1078736) (not e!880571))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105774 0))(
  ( (array!105775 (arr!50990 (Array (_ BitVec 32) (_ BitVec 64))) (size!51541 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105774)

(assert (=> start!136854 (= res!1078736 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51541 a!3559)) (bvslt (size!51541 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136854 e!880571))

(assert (=> start!136854 true))

(declare-fun array_inv!39635 (array!105774) Bool)

(assert (=> start!136854 (array_inv!39635 a!3559)))

(declare-fun b!1578657 () Bool)

(declare-fun res!1078735 () Bool)

(assert (=> b!1578657 (=> (not res!1078735) (not e!880571))))

(assert (=> b!1578657 (= res!1078735 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51541 a!3559))))))

(declare-fun b!1578658 () Bool)

(declare-fun res!1078734 () Bool)

(assert (=> b!1578658 (=> (not res!1078734) (not e!880571))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578658 (= res!1078734 (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578659 () Bool)

(assert (=> b!1578659 (= e!880571 (not true))))

(assert (=> b!1578659 (arrayContainsKey!0 a!3559 k0!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52134 0))(
  ( (Unit!52135) )
))
(declare-fun lt!676249 () Unit!52134)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105774 (_ BitVec 64) (_ BitVec 32)) Unit!52134)

(assert (=> b!1578659 (= lt!676249 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578656 () Bool)

(declare-fun res!1078733 () Bool)

(assert (=> b!1578656 (=> (not res!1078733) (not e!880571))))

(assert (=> b!1578656 (= res!1078733 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(assert (= (and start!136854 res!1078736) b!1578656))

(assert (= (and b!1578656 res!1078733) b!1578657))

(assert (= (and b!1578657 res!1078735) b!1578658))

(assert (= (and b!1578658 res!1078734) b!1578659))

(declare-fun m!1450719 () Bool)

(assert (=> start!136854 m!1450719))

(declare-fun m!1450721 () Bool)

(assert (=> b!1578658 m!1450721))

(declare-fun m!1450723 () Bool)

(assert (=> b!1578659 m!1450723))

(declare-fun m!1450725 () Bool)

(assert (=> b!1578659 m!1450725))

(declare-fun m!1450727 () Bool)

(assert (=> b!1578656 m!1450727))

(check-sat (not b!1578659) (not b!1578656) (not start!136854) (not b!1578658))
