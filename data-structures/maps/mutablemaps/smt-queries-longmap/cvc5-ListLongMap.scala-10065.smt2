; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118564 () Bool)

(assert start!118564)

(declare-fun res!927035 () Bool)

(declare-fun e!785120 () Bool)

(assert (=> start!118564 (=> (not res!927035) (not e!785120))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118564 (= res!927035 (validMask!0 mask!2987))))

(assert (=> start!118564 e!785120))

(assert (=> start!118564 true))

(declare-datatypes ((array!94758 0))(
  ( (array!94759 (arr!45751 (Array (_ BitVec 32) (_ BitVec 64))) (size!46302 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94758)

(declare-fun array_inv!34696 (array!94758) Bool)

(assert (=> start!118564 (array_inv!34696 a!2938)))

(declare-fun b!1385676 () Bool)

(declare-fun res!927033 () Bool)

(assert (=> b!1385676 (=> (not res!927033) (not e!785120))))

(declare-datatypes ((List!32459 0))(
  ( (Nil!32456) (Cons!32455 (h!33664 (_ BitVec 64)) (t!47160 List!32459)) )
))
(declare-fun arrayNoDuplicates!0 (array!94758 (_ BitVec 32) List!32459) Bool)

(assert (=> b!1385676 (= res!927033 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32456))))

(declare-fun b!1385675 () Bool)

(declare-fun res!927034 () Bool)

(assert (=> b!1385675 (=> (not res!927034) (not e!785120))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385675 (= res!927034 (validKeyInArray!0 (select (arr!45751 a!2938) i!1065)))))

(declare-fun b!1385677 () Bool)

(assert (=> b!1385677 (= e!785120 false)))

(declare-fun lt!609247 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94758 (_ BitVec 32)) Bool)

(assert (=> b!1385677 (= lt!609247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385674 () Bool)

(declare-fun res!927036 () Bool)

(assert (=> b!1385674 (=> (not res!927036) (not e!785120))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385674 (= res!927036 (and (= (size!46302 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46302 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46302 a!2938))))))

(assert (= (and start!118564 res!927035) b!1385674))

(assert (= (and b!1385674 res!927036) b!1385675))

(assert (= (and b!1385675 res!927034) b!1385676))

(assert (= (and b!1385676 res!927033) b!1385677))

(declare-fun m!1271009 () Bool)

(assert (=> start!118564 m!1271009))

(declare-fun m!1271011 () Bool)

(assert (=> start!118564 m!1271011))

(declare-fun m!1271013 () Bool)

(assert (=> b!1385676 m!1271013))

(declare-fun m!1271015 () Bool)

(assert (=> b!1385675 m!1271015))

(assert (=> b!1385675 m!1271015))

(declare-fun m!1271017 () Bool)

(assert (=> b!1385675 m!1271017))

(declare-fun m!1271019 () Bool)

(assert (=> b!1385677 m!1271019))

(push 1)

(assert (not b!1385675))

(assert (not start!118564))

(assert (not b!1385676))

(assert (not b!1385677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

