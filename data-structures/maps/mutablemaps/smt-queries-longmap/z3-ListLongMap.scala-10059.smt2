; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118530 () Bool)

(assert start!118530)

(declare-fun b!1385445 () Bool)

(declare-fun res!926804 () Bool)

(declare-fun e!785017 () Bool)

(assert (=> b!1385445 (=> (not res!926804) (not e!785017))))

(declare-datatypes ((array!94724 0))(
  ( (array!94725 (arr!45734 (Array (_ BitVec 32) (_ BitVec 64))) (size!46285 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94724)

(declare-datatypes ((List!32442 0))(
  ( (Nil!32439) (Cons!32438 (h!33647 (_ BitVec 64)) (t!47143 List!32442)) )
))
(declare-fun arrayNoDuplicates!0 (array!94724 (_ BitVec 32) List!32442) Bool)

(assert (=> b!1385445 (= res!926804 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32439))))

(declare-fun res!926805 () Bool)

(assert (=> start!118530 (=> (not res!926805) (not e!785017))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118530 (= res!926805 (validMask!0 mask!2987))))

(assert (=> start!118530 e!785017))

(assert (=> start!118530 true))

(declare-fun array_inv!34679 (array!94724) Bool)

(assert (=> start!118530 (array_inv!34679 a!2938)))

(declare-fun b!1385446 () Bool)

(assert (=> b!1385446 (= e!785017 false)))

(declare-fun lt!609205 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94724 (_ BitVec 32)) Bool)

(assert (=> b!1385446 (= lt!609205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385443 () Bool)

(declare-fun res!926803 () Bool)

(assert (=> b!1385443 (=> (not res!926803) (not e!785017))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385443 (= res!926803 (and (= (size!46285 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46285 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46285 a!2938))))))

(declare-fun b!1385444 () Bool)

(declare-fun res!926802 () Bool)

(assert (=> b!1385444 (=> (not res!926802) (not e!785017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385444 (= res!926802 (validKeyInArray!0 (select (arr!45734 a!2938) i!1065)))))

(assert (= (and start!118530 res!926805) b!1385443))

(assert (= (and b!1385443 res!926803) b!1385444))

(assert (= (and b!1385444 res!926802) b!1385445))

(assert (= (and b!1385445 res!926804) b!1385446))

(declare-fun m!1270793 () Bool)

(assert (=> b!1385445 m!1270793))

(declare-fun m!1270795 () Bool)

(assert (=> start!118530 m!1270795))

(declare-fun m!1270797 () Bool)

(assert (=> start!118530 m!1270797))

(declare-fun m!1270799 () Bool)

(assert (=> b!1385446 m!1270799))

(declare-fun m!1270801 () Bool)

(assert (=> b!1385444 m!1270801))

(assert (=> b!1385444 m!1270801))

(declare-fun m!1270803 () Bool)

(assert (=> b!1385444 m!1270803))

(check-sat (not b!1385445) (not start!118530) (not b!1385446) (not b!1385444))
