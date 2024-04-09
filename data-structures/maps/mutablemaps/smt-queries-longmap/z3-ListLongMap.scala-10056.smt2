; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118512 () Bool)

(assert start!118512)

(declare-fun b!1385338 () Bool)

(declare-fun e!784963 () Bool)

(assert (=> b!1385338 (= e!784963 false)))

(declare-fun lt!609178 () Bool)

(declare-datatypes ((array!94706 0))(
  ( (array!94707 (arr!45725 (Array (_ BitVec 32) (_ BitVec 64))) (size!46276 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94706)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94706 (_ BitVec 32)) Bool)

(assert (=> b!1385338 (= lt!609178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385337 () Bool)

(declare-fun res!926695 () Bool)

(assert (=> b!1385337 (=> (not res!926695) (not e!784963))))

(declare-datatypes ((List!32433 0))(
  ( (Nil!32430) (Cons!32429 (h!33638 (_ BitVec 64)) (t!47134 List!32433)) )
))
(declare-fun arrayNoDuplicates!0 (array!94706 (_ BitVec 32) List!32433) Bool)

(assert (=> b!1385337 (= res!926695 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32430))))

(declare-fun b!1385335 () Bool)

(declare-fun res!926696 () Bool)

(assert (=> b!1385335 (=> (not res!926696) (not e!784963))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385335 (= res!926696 (and (= (size!46276 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46276 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46276 a!2938))))))

(declare-fun res!926697 () Bool)

(assert (=> start!118512 (=> (not res!926697) (not e!784963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118512 (= res!926697 (validMask!0 mask!2987))))

(assert (=> start!118512 e!784963))

(assert (=> start!118512 true))

(declare-fun array_inv!34670 (array!94706) Bool)

(assert (=> start!118512 (array_inv!34670 a!2938)))

(declare-fun b!1385336 () Bool)

(declare-fun res!926694 () Bool)

(assert (=> b!1385336 (=> (not res!926694) (not e!784963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385336 (= res!926694 (validKeyInArray!0 (select (arr!45725 a!2938) i!1065)))))

(assert (= (and start!118512 res!926697) b!1385335))

(assert (= (and b!1385335 res!926696) b!1385336))

(assert (= (and b!1385336 res!926694) b!1385337))

(assert (= (and b!1385337 res!926695) b!1385338))

(declare-fun m!1270685 () Bool)

(assert (=> b!1385338 m!1270685))

(declare-fun m!1270687 () Bool)

(assert (=> b!1385337 m!1270687))

(declare-fun m!1270689 () Bool)

(assert (=> start!118512 m!1270689))

(declare-fun m!1270691 () Bool)

(assert (=> start!118512 m!1270691))

(declare-fun m!1270693 () Bool)

(assert (=> b!1385336 m!1270693))

(assert (=> b!1385336 m!1270693))

(declare-fun m!1270695 () Bool)

(assert (=> b!1385336 m!1270695))

(check-sat (not b!1385337) (not start!118512) (not b!1385336) (not b!1385338))
