; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118536 () Bool)

(assert start!118536)

(declare-fun b!1385482 () Bool)

(declare-fun e!785036 () Bool)

(assert (=> b!1385482 (= e!785036 false)))

(declare-fun lt!609214 () Bool)

(declare-datatypes ((array!94730 0))(
  ( (array!94731 (arr!45737 (Array (_ BitVec 32) (_ BitVec 64))) (size!46288 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94730)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94730 (_ BitVec 32)) Bool)

(assert (=> b!1385482 (= lt!609214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385481 () Bool)

(declare-fun res!926840 () Bool)

(assert (=> b!1385481 (=> (not res!926840) (not e!785036))))

(declare-datatypes ((List!32445 0))(
  ( (Nil!32442) (Cons!32441 (h!33650 (_ BitVec 64)) (t!47146 List!32445)) )
))
(declare-fun arrayNoDuplicates!0 (array!94730 (_ BitVec 32) List!32445) Bool)

(assert (=> b!1385481 (= res!926840 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32442))))

(declare-fun res!926839 () Bool)

(assert (=> start!118536 (=> (not res!926839) (not e!785036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118536 (= res!926839 (validMask!0 mask!2987))))

(assert (=> start!118536 e!785036))

(assert (=> start!118536 true))

(declare-fun array_inv!34682 (array!94730) Bool)

(assert (=> start!118536 (array_inv!34682 a!2938)))

(declare-fun b!1385480 () Bool)

(declare-fun res!926841 () Bool)

(assert (=> b!1385480 (=> (not res!926841) (not e!785036))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385480 (= res!926841 (validKeyInArray!0 (select (arr!45737 a!2938) i!1065)))))

(declare-fun b!1385479 () Bool)

(declare-fun res!926838 () Bool)

(assert (=> b!1385479 (=> (not res!926838) (not e!785036))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385479 (= res!926838 (and (= (size!46288 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46288 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46288 a!2938))))))

(assert (= (and start!118536 res!926839) b!1385479))

(assert (= (and b!1385479 res!926838) b!1385480))

(assert (= (and b!1385480 res!926841) b!1385481))

(assert (= (and b!1385481 res!926840) b!1385482))

(declare-fun m!1270829 () Bool)

(assert (=> b!1385482 m!1270829))

(declare-fun m!1270831 () Bool)

(assert (=> b!1385481 m!1270831))

(declare-fun m!1270833 () Bool)

(assert (=> start!118536 m!1270833))

(declare-fun m!1270835 () Bool)

(assert (=> start!118536 m!1270835))

(declare-fun m!1270837 () Bool)

(assert (=> b!1385480 m!1270837))

(assert (=> b!1385480 m!1270837))

(declare-fun m!1270839 () Bool)

(assert (=> b!1385480 m!1270839))

(check-sat (not b!1385480) (not start!118536) (not b!1385481) (not b!1385482))
