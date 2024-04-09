; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118548 () Bool)

(assert start!118548)

(declare-fun b!1385551 () Bool)

(declare-fun res!926912 () Bool)

(declare-fun e!785072 () Bool)

(assert (=> b!1385551 (=> (not res!926912) (not e!785072))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94742 0))(
  ( (array!94743 (arr!45743 (Array (_ BitVec 32) (_ BitVec 64))) (size!46294 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94742)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385551 (= res!926912 (and (= (size!46294 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46294 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46294 a!2938))))))

(declare-fun b!1385552 () Bool)

(declare-fun res!926910 () Bool)

(assert (=> b!1385552 (=> (not res!926910) (not e!785072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385552 (= res!926910 (validKeyInArray!0 (select (arr!45743 a!2938) i!1065)))))

(declare-fun res!926913 () Bool)

(assert (=> start!118548 (=> (not res!926913) (not e!785072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118548 (= res!926913 (validMask!0 mask!2987))))

(assert (=> start!118548 e!785072))

(assert (=> start!118548 true))

(declare-fun array_inv!34688 (array!94742) Bool)

(assert (=> start!118548 (array_inv!34688 a!2938)))

(declare-fun b!1385553 () Bool)

(declare-fun res!926911 () Bool)

(assert (=> b!1385553 (=> (not res!926911) (not e!785072))))

(declare-datatypes ((List!32451 0))(
  ( (Nil!32448) (Cons!32447 (h!33656 (_ BitVec 64)) (t!47152 List!32451)) )
))
(declare-fun arrayNoDuplicates!0 (array!94742 (_ BitVec 32) List!32451) Bool)

(assert (=> b!1385553 (= res!926911 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32448))))

(declare-fun b!1385554 () Bool)

(assert (=> b!1385554 (= e!785072 false)))

(declare-fun lt!609232 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94742 (_ BitVec 32)) Bool)

(assert (=> b!1385554 (= lt!609232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118548 res!926913) b!1385551))

(assert (= (and b!1385551 res!926912) b!1385552))

(assert (= (and b!1385552 res!926910) b!1385553))

(assert (= (and b!1385553 res!926911) b!1385554))

(declare-fun m!1270901 () Bool)

(assert (=> b!1385552 m!1270901))

(assert (=> b!1385552 m!1270901))

(declare-fun m!1270903 () Bool)

(assert (=> b!1385552 m!1270903))

(declare-fun m!1270905 () Bool)

(assert (=> start!118548 m!1270905))

(declare-fun m!1270907 () Bool)

(assert (=> start!118548 m!1270907))

(declare-fun m!1270909 () Bool)

(assert (=> b!1385553 m!1270909))

(declare-fun m!1270911 () Bool)

(assert (=> b!1385554 m!1270911))

(check-sat (not b!1385552) (not start!118548) (not b!1385553) (not b!1385554))
