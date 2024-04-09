; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118506 () Bool)

(assert start!118506)

(declare-fun b!1385300 () Bool)

(declare-fun res!926660 () Bool)

(declare-fun e!784945 () Bool)

(assert (=> b!1385300 (=> (not res!926660) (not e!784945))))

(declare-datatypes ((array!94700 0))(
  ( (array!94701 (arr!45722 (Array (_ BitVec 32) (_ BitVec 64))) (size!46273 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94700)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385300 (= res!926660 (validKeyInArray!0 (select (arr!45722 a!2938) i!1065)))))

(declare-fun b!1385302 () Bool)

(assert (=> b!1385302 (= e!784945 false)))

(declare-fun lt!609169 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94700 (_ BitVec 32)) Bool)

(assert (=> b!1385302 (= lt!609169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385299 () Bool)

(declare-fun res!926658 () Bool)

(assert (=> b!1385299 (=> (not res!926658) (not e!784945))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385299 (= res!926658 (and (= (size!46273 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46273 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46273 a!2938))))))

(declare-fun b!1385301 () Bool)

(declare-fun res!926659 () Bool)

(assert (=> b!1385301 (=> (not res!926659) (not e!784945))))

(declare-datatypes ((List!32430 0))(
  ( (Nil!32427) (Cons!32426 (h!33635 (_ BitVec 64)) (t!47131 List!32430)) )
))
(declare-fun arrayNoDuplicates!0 (array!94700 (_ BitVec 32) List!32430) Bool)

(assert (=> b!1385301 (= res!926659 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32427))))

(declare-fun res!926661 () Bool)

(assert (=> start!118506 (=> (not res!926661) (not e!784945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118506 (= res!926661 (validMask!0 mask!2987))))

(assert (=> start!118506 e!784945))

(assert (=> start!118506 true))

(declare-fun array_inv!34667 (array!94700) Bool)

(assert (=> start!118506 (array_inv!34667 a!2938)))

(assert (= (and start!118506 res!926661) b!1385299))

(assert (= (and b!1385299 res!926658) b!1385300))

(assert (= (and b!1385300 res!926660) b!1385301))

(assert (= (and b!1385301 res!926659) b!1385302))

(declare-fun m!1270649 () Bool)

(assert (=> b!1385300 m!1270649))

(assert (=> b!1385300 m!1270649))

(declare-fun m!1270651 () Bool)

(assert (=> b!1385300 m!1270651))

(declare-fun m!1270653 () Bool)

(assert (=> b!1385302 m!1270653))

(declare-fun m!1270655 () Bool)

(assert (=> b!1385301 m!1270655))

(declare-fun m!1270657 () Bool)

(assert (=> start!118506 m!1270657))

(declare-fun m!1270659 () Bool)

(assert (=> start!118506 m!1270659))

(check-sat (not b!1385300) (not start!118506) (not b!1385301) (not b!1385302))
