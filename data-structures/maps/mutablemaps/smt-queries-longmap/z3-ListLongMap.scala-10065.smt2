; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118566 () Bool)

(assert start!118566)

(declare-fun b!1385687 () Bool)

(declare-fun res!927047 () Bool)

(declare-fun e!785125 () Bool)

(assert (=> b!1385687 (=> (not res!927047) (not e!785125))))

(declare-datatypes ((array!94760 0))(
  ( (array!94761 (arr!45752 (Array (_ BitVec 32) (_ BitVec 64))) (size!46303 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94760)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385687 (= res!927047 (validKeyInArray!0 (select (arr!45752 a!2938) i!1065)))))

(declare-fun b!1385689 () Bool)

(assert (=> b!1385689 (= e!785125 false)))

(declare-fun lt!609250 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94760 (_ BitVec 32)) Bool)

(assert (=> b!1385689 (= lt!609250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385686 () Bool)

(declare-fun res!927048 () Bool)

(assert (=> b!1385686 (=> (not res!927048) (not e!785125))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385686 (= res!927048 (and (= (size!46303 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46303 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46303 a!2938))))))

(declare-fun res!927045 () Bool)

(assert (=> start!118566 (=> (not res!927045) (not e!785125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118566 (= res!927045 (validMask!0 mask!2987))))

(assert (=> start!118566 e!785125))

(assert (=> start!118566 true))

(declare-fun array_inv!34697 (array!94760) Bool)

(assert (=> start!118566 (array_inv!34697 a!2938)))

(declare-fun b!1385688 () Bool)

(declare-fun res!927046 () Bool)

(assert (=> b!1385688 (=> (not res!927046) (not e!785125))))

(declare-datatypes ((List!32460 0))(
  ( (Nil!32457) (Cons!32456 (h!33665 (_ BitVec 64)) (t!47161 List!32460)) )
))
(declare-fun arrayNoDuplicates!0 (array!94760 (_ BitVec 32) List!32460) Bool)

(assert (=> b!1385688 (= res!927046 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32457))))

(assert (= (and start!118566 res!927045) b!1385686))

(assert (= (and b!1385686 res!927048) b!1385687))

(assert (= (and b!1385687 res!927047) b!1385688))

(assert (= (and b!1385688 res!927046) b!1385689))

(declare-fun m!1271021 () Bool)

(assert (=> b!1385687 m!1271021))

(assert (=> b!1385687 m!1271021))

(declare-fun m!1271023 () Bool)

(assert (=> b!1385687 m!1271023))

(declare-fun m!1271025 () Bool)

(assert (=> b!1385689 m!1271025))

(declare-fun m!1271027 () Bool)

(assert (=> start!118566 m!1271027))

(declare-fun m!1271029 () Bool)

(assert (=> start!118566 m!1271029))

(declare-fun m!1271031 () Bool)

(assert (=> b!1385688 m!1271031))

(check-sat (not b!1385687) (not start!118566) (not b!1385688) (not b!1385689))
