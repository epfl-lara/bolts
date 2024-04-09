; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118562 () Bool)

(assert start!118562)

(declare-fun res!927018 () Bool)

(declare-fun e!785114 () Bool)

(assert (=> start!118562 (=> (not res!927018) (not e!785114))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118562 (= res!927018 (validMask!0 mask!2987))))

(assert (=> start!118562 e!785114))

(assert (=> start!118562 true))

(declare-datatypes ((array!94756 0))(
  ( (array!94757 (arr!45750 (Array (_ BitVec 32) (_ BitVec 64))) (size!46301 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94756)

(declare-fun array_inv!34695 (array!94756) Bool)

(assert (=> start!118562 (array_inv!34695 a!2938)))

(declare-fun b!1385659 () Bool)

(declare-fun res!927022 () Bool)

(assert (=> b!1385659 (=> (not res!927022) (not e!785114))))

(declare-datatypes ((List!32458 0))(
  ( (Nil!32455) (Cons!32454 (h!33663 (_ BitVec 64)) (t!47159 List!32458)) )
))
(declare-fun arrayNoDuplicates!0 (array!94756 (_ BitVec 32) List!32458) Bool)

(assert (=> b!1385659 (= res!927022 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32455))))

(declare-fun b!1385660 () Bool)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385660 (= e!785114 (= i!1065 startIndex!16))))

(declare-fun b!1385661 () Bool)

(declare-fun res!927021 () Bool)

(assert (=> b!1385661 (=> (not res!927021) (not e!785114))))

(assert (=> b!1385661 (= res!927021 (and (= (size!46301 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46301 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46301 a!2938))))))

(declare-fun b!1385662 () Bool)

(declare-fun res!927024 () Bool)

(assert (=> b!1385662 (=> (not res!927024) (not e!785114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385662 (= res!927024 (validKeyInArray!0 (select (arr!45750 a!2938) i!1065)))))

(declare-fun b!1385663 () Bool)

(declare-fun res!927019 () Bool)

(assert (=> b!1385663 (=> (not res!927019) (not e!785114))))

(assert (=> b!1385663 (= res!927019 (and (not (= (select (arr!45750 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45750 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385664 () Bool)

(declare-fun res!927020 () Bool)

(assert (=> b!1385664 (=> (not res!927020) (not e!785114))))

(assert (=> b!1385664 (= res!927020 (validKeyInArray!0 (select (arr!45750 a!2938) startIndex!16)))))

(declare-fun b!1385665 () Bool)

(declare-fun res!927023 () Bool)

(assert (=> b!1385665 (=> (not res!927023) (not e!785114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94756 (_ BitVec 32)) Bool)

(assert (=> b!1385665 (= res!927023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118562 res!927018) b!1385661))

(assert (= (and b!1385661 res!927021) b!1385662))

(assert (= (and b!1385662 res!927024) b!1385659))

(assert (= (and b!1385659 res!927022) b!1385665))

(assert (= (and b!1385665 res!927023) b!1385663))

(assert (= (and b!1385663 res!927019) b!1385664))

(assert (= (and b!1385664 res!927020) b!1385660))

(declare-fun m!1270993 () Bool)

(assert (=> b!1385665 m!1270993))

(declare-fun m!1270995 () Bool)

(assert (=> b!1385663 m!1270995))

(declare-fun m!1270997 () Bool)

(assert (=> start!118562 m!1270997))

(declare-fun m!1270999 () Bool)

(assert (=> start!118562 m!1270999))

(declare-fun m!1271001 () Bool)

(assert (=> b!1385664 m!1271001))

(assert (=> b!1385664 m!1271001))

(declare-fun m!1271003 () Bool)

(assert (=> b!1385664 m!1271003))

(declare-fun m!1271005 () Bool)

(assert (=> b!1385659 m!1271005))

(assert (=> b!1385662 m!1270995))

(assert (=> b!1385662 m!1270995))

(declare-fun m!1271007 () Bool)

(assert (=> b!1385662 m!1271007))

(push 1)

(assert (not b!1385662))

(assert (not b!1385665))

(assert (not start!118562))

(assert (not b!1385659))

(assert (not b!1385664))

(check-sat)

(pop 1)

(push 1)

