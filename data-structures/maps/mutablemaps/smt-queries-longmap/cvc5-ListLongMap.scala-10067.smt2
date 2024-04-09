; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118576 () Bool)

(assert start!118576)

(declare-fun b!1385746 () Bool)

(declare-fun res!927108 () Bool)

(declare-fun e!785155 () Bool)

(assert (=> b!1385746 (=> (not res!927108) (not e!785155))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94770 0))(
  ( (array!94771 (arr!45757 (Array (_ BitVec 32) (_ BitVec 64))) (size!46308 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94770)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385746 (= res!927108 (and (= (size!46308 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46308 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46308 a!2938))))))

(declare-fun res!927105 () Bool)

(assert (=> start!118576 (=> (not res!927105) (not e!785155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118576 (= res!927105 (validMask!0 mask!2987))))

(assert (=> start!118576 e!785155))

(assert (=> start!118576 true))

(declare-fun array_inv!34702 (array!94770) Bool)

(assert (=> start!118576 (array_inv!34702 a!2938)))

(declare-fun b!1385747 () Bool)

(declare-fun res!927107 () Bool)

(assert (=> b!1385747 (=> (not res!927107) (not e!785155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385747 (= res!927107 (validKeyInArray!0 (select (arr!45757 a!2938) i!1065)))))

(declare-fun b!1385749 () Bool)

(assert (=> b!1385749 (= e!785155 false)))

(declare-fun lt!609265 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94770 (_ BitVec 32)) Bool)

(assert (=> b!1385749 (= lt!609265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385748 () Bool)

(declare-fun res!927106 () Bool)

(assert (=> b!1385748 (=> (not res!927106) (not e!785155))))

(declare-datatypes ((List!32465 0))(
  ( (Nil!32462) (Cons!32461 (h!33670 (_ BitVec 64)) (t!47166 List!32465)) )
))
(declare-fun arrayNoDuplicates!0 (array!94770 (_ BitVec 32) List!32465) Bool)

(assert (=> b!1385748 (= res!927106 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32462))))

(assert (= (and start!118576 res!927105) b!1385746))

(assert (= (and b!1385746 res!927108) b!1385747))

(assert (= (and b!1385747 res!927107) b!1385748))

(assert (= (and b!1385748 res!927106) b!1385749))

(declare-fun m!1271081 () Bool)

(assert (=> start!118576 m!1271081))

(declare-fun m!1271083 () Bool)

(assert (=> start!118576 m!1271083))

(declare-fun m!1271085 () Bool)

(assert (=> b!1385747 m!1271085))

(assert (=> b!1385747 m!1271085))

(declare-fun m!1271087 () Bool)

(assert (=> b!1385747 m!1271087))

(declare-fun m!1271089 () Bool)

(assert (=> b!1385749 m!1271089))

(declare-fun m!1271091 () Bool)

(assert (=> b!1385748 m!1271091))

(push 1)

(assert (not b!1385748))

(assert (not start!118576))

(assert (not b!1385747))

(assert (not b!1385749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

