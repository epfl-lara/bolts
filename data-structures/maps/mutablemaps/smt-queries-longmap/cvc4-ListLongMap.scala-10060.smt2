; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118538 () Bool)

(assert start!118538)

(declare-fun b!1385493 () Bool)

(declare-fun res!926850 () Bool)

(declare-fun e!785041 () Bool)

(assert (=> b!1385493 (=> (not res!926850) (not e!785041))))

(declare-datatypes ((array!94732 0))(
  ( (array!94733 (arr!45738 (Array (_ BitVec 32) (_ BitVec 64))) (size!46289 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94732)

(declare-datatypes ((List!32446 0))(
  ( (Nil!32443) (Cons!32442 (h!33651 (_ BitVec 64)) (t!47147 List!32446)) )
))
(declare-fun arrayNoDuplicates!0 (array!94732 (_ BitVec 32) List!32446) Bool)

(assert (=> b!1385493 (= res!926850 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32443))))

(declare-fun b!1385492 () Bool)

(declare-fun res!926853 () Bool)

(assert (=> b!1385492 (=> (not res!926853) (not e!785041))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385492 (= res!926853 (validKeyInArray!0 (select (arr!45738 a!2938) i!1065)))))

(declare-fun b!1385491 () Bool)

(declare-fun res!926852 () Bool)

(assert (=> b!1385491 (=> (not res!926852) (not e!785041))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385491 (= res!926852 (and (= (size!46289 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46289 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46289 a!2938))))))

(declare-fun res!926851 () Bool)

(assert (=> start!118538 (=> (not res!926851) (not e!785041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118538 (= res!926851 (validMask!0 mask!2987))))

(assert (=> start!118538 e!785041))

(assert (=> start!118538 true))

(declare-fun array_inv!34683 (array!94732) Bool)

(assert (=> start!118538 (array_inv!34683 a!2938)))

(declare-fun b!1385494 () Bool)

(assert (=> b!1385494 (= e!785041 false)))

(declare-fun lt!609217 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94732 (_ BitVec 32)) Bool)

(assert (=> b!1385494 (= lt!609217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118538 res!926851) b!1385491))

(assert (= (and b!1385491 res!926852) b!1385492))

(assert (= (and b!1385492 res!926853) b!1385493))

(assert (= (and b!1385493 res!926850) b!1385494))

(declare-fun m!1270841 () Bool)

(assert (=> b!1385493 m!1270841))

(declare-fun m!1270843 () Bool)

(assert (=> b!1385492 m!1270843))

(assert (=> b!1385492 m!1270843))

(declare-fun m!1270845 () Bool)

(assert (=> b!1385492 m!1270845))

(declare-fun m!1270847 () Bool)

(assert (=> start!118538 m!1270847))

(declare-fun m!1270849 () Bool)

(assert (=> start!118538 m!1270849))

(declare-fun m!1270851 () Bool)

(assert (=> b!1385494 m!1270851))

(push 1)

(assert (not b!1385494))

(assert (not b!1385492))

(assert (not start!118538))

(assert (not b!1385493))

