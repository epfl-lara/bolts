; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118318 () Bool)

(assert start!118318)

(declare-fun b!1383319 () Bool)

(declare-fun e!784067 () Bool)

(assert (=> b!1383319 (= e!784067 false)))

(declare-fun lt!608545 () Bool)

(declare-datatypes ((array!94539 0))(
  ( (array!94540 (arr!45643 (Array (_ BitVec 32) (_ BitVec 64))) (size!46194 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94539)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94539 (_ BitVec 32)) Bool)

(assert (=> b!1383319 (= lt!608545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383316 () Bool)

(declare-fun res!925019 () Bool)

(assert (=> b!1383316 (=> (not res!925019) (not e!784067))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383316 (= res!925019 (and (= (size!46194 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46194 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46194 a!2938))))))

(declare-fun b!1383317 () Bool)

(declare-fun res!925018 () Bool)

(assert (=> b!1383317 (=> (not res!925018) (not e!784067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383317 (= res!925018 (validKeyInArray!0 (select (arr!45643 a!2938) i!1065)))))

(declare-fun b!1383318 () Bool)

(declare-fun res!925017 () Bool)

(assert (=> b!1383318 (=> (not res!925017) (not e!784067))))

(declare-datatypes ((List!32351 0))(
  ( (Nil!32348) (Cons!32347 (h!33556 (_ BitVec 64)) (t!47052 List!32351)) )
))
(declare-fun arrayNoDuplicates!0 (array!94539 (_ BitVec 32) List!32351) Bool)

(assert (=> b!1383318 (= res!925017 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32348))))

(declare-fun res!925020 () Bool)

(assert (=> start!118318 (=> (not res!925020) (not e!784067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118318 (= res!925020 (validMask!0 mask!2987))))

(assert (=> start!118318 e!784067))

(assert (=> start!118318 true))

(declare-fun array_inv!34588 (array!94539) Bool)

(assert (=> start!118318 (array_inv!34588 a!2938)))

(assert (= (and start!118318 res!925020) b!1383316))

(assert (= (and b!1383316 res!925019) b!1383317))

(assert (= (and b!1383317 res!925018) b!1383318))

(assert (= (and b!1383318 res!925017) b!1383319))

(declare-fun m!1268477 () Bool)

(assert (=> b!1383319 m!1268477))

(declare-fun m!1268479 () Bool)

(assert (=> b!1383317 m!1268479))

(assert (=> b!1383317 m!1268479))

(declare-fun m!1268481 () Bool)

(assert (=> b!1383317 m!1268481))

(declare-fun m!1268483 () Bool)

(assert (=> b!1383318 m!1268483))

(declare-fun m!1268485 () Bool)

(assert (=> start!118318 m!1268485))

(declare-fun m!1268487 () Bool)

(assert (=> start!118318 m!1268487))

(push 1)

(assert (not b!1383317))

(assert (not b!1383319))

(assert (not start!118318))

(assert (not b!1383318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

