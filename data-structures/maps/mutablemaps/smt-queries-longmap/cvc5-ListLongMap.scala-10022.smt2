; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118276 () Bool)

(assert start!118276)

(declare-fun b!1383067 () Bool)

(declare-fun e!783941 () Bool)

(assert (=> b!1383067 (= e!783941 false)))

(declare-fun lt!608482 () Bool)

(declare-datatypes ((array!94497 0))(
  ( (array!94498 (arr!45622 (Array (_ BitVec 32) (_ BitVec 64))) (size!46173 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94497)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94497 (_ BitVec 32)) Bool)

(assert (=> b!1383067 (= lt!608482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383064 () Bool)

(declare-fun res!924765 () Bool)

(assert (=> b!1383064 (=> (not res!924765) (not e!783941))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383064 (= res!924765 (and (= (size!46173 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46173 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46173 a!2938))))))

(declare-fun b!1383066 () Bool)

(declare-fun res!924767 () Bool)

(assert (=> b!1383066 (=> (not res!924767) (not e!783941))))

(declare-datatypes ((List!32330 0))(
  ( (Nil!32327) (Cons!32326 (h!33535 (_ BitVec 64)) (t!47031 List!32330)) )
))
(declare-fun arrayNoDuplicates!0 (array!94497 (_ BitVec 32) List!32330) Bool)

(assert (=> b!1383066 (= res!924767 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32327))))

(declare-fun res!924766 () Bool)

(assert (=> start!118276 (=> (not res!924766) (not e!783941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118276 (= res!924766 (validMask!0 mask!2987))))

(assert (=> start!118276 e!783941))

(assert (=> start!118276 true))

(declare-fun array_inv!34567 (array!94497) Bool)

(assert (=> start!118276 (array_inv!34567 a!2938)))

(declare-fun b!1383065 () Bool)

(declare-fun res!924768 () Bool)

(assert (=> b!1383065 (=> (not res!924768) (not e!783941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383065 (= res!924768 (validKeyInArray!0 (select (arr!45622 a!2938) i!1065)))))

(assert (= (and start!118276 res!924766) b!1383064))

(assert (= (and b!1383064 res!924765) b!1383065))

(assert (= (and b!1383065 res!924768) b!1383066))

(assert (= (and b!1383066 res!924767) b!1383067))

(declare-fun m!1268225 () Bool)

(assert (=> b!1383067 m!1268225))

(declare-fun m!1268227 () Bool)

(assert (=> b!1383066 m!1268227))

(declare-fun m!1268229 () Bool)

(assert (=> start!118276 m!1268229))

(declare-fun m!1268231 () Bool)

(assert (=> start!118276 m!1268231))

(declare-fun m!1268233 () Bool)

(assert (=> b!1383065 m!1268233))

(assert (=> b!1383065 m!1268233))

(declare-fun m!1268235 () Bool)

(assert (=> b!1383065 m!1268235))

(push 1)

(assert (not start!118276))

(assert (not b!1383066))

(assert (not b!1383067))

(assert (not b!1383065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

