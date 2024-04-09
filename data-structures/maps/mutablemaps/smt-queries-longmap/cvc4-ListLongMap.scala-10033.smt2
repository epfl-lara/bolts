; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118346 () Bool)

(assert start!118346)

(declare-fun b!1383589 () Bool)

(declare-fun res!925291 () Bool)

(declare-fun e!784150 () Bool)

(assert (=> b!1383589 (=> (not res!925291) (not e!784150))))

(declare-datatypes ((array!94567 0))(
  ( (array!94568 (arr!45657 (Array (_ BitVec 32) (_ BitVec 64))) (size!46208 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94567)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383589 (= res!925291 (validKeyInArray!0 (select (arr!45657 a!2938) i!1065)))))

(declare-fun b!1383590 () Bool)

(declare-fun res!925293 () Bool)

(assert (=> b!1383590 (=> (not res!925293) (not e!784150))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383590 (= res!925293 (and (= (size!46208 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46208 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46208 a!2938))))))

(declare-fun b!1383591 () Bool)

(declare-fun res!925296 () Bool)

(assert (=> b!1383591 (=> (not res!925296) (not e!784150))))

(assert (=> b!1383591 (= res!925296 (validKeyInArray!0 (select (arr!45657 a!2938) startIndex!16)))))

(declare-fun b!1383592 () Bool)

(assert (=> b!1383592 (= e!784150 (not true))))

(declare-datatypes ((SeekEntryResult!10071 0))(
  ( (MissingZero!10071 (index!42654 (_ BitVec 32))) (Found!10071 (index!42655 (_ BitVec 32))) (Intermediate!10071 (undefined!10883 Bool) (index!42656 (_ BitVec 32)) (x!124171 (_ BitVec 32))) (Undefined!10071) (MissingVacant!10071 (index!42657 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94567 (_ BitVec 32)) SeekEntryResult!10071)

(assert (=> b!1383592 (= (seekEntryOrOpen!0 (select (arr!45657 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45657 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94568 (store (arr!45657 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46208 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46033 0))(
  ( (Unit!46034) )
))
(declare-fun lt!608587 () Unit!46033)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94567 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46033)

(assert (=> b!1383592 (= lt!608587 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383593 () Bool)

(declare-fun res!925295 () Bool)

(assert (=> b!1383593 (=> (not res!925295) (not e!784150))))

(declare-datatypes ((List!32365 0))(
  ( (Nil!32362) (Cons!32361 (h!33570 (_ BitVec 64)) (t!47066 List!32365)) )
))
(declare-fun arrayNoDuplicates!0 (array!94567 (_ BitVec 32) List!32365) Bool)

(assert (=> b!1383593 (= res!925295 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32362))))

(declare-fun b!1383594 () Bool)

(declare-fun res!925294 () Bool)

(assert (=> b!1383594 (=> (not res!925294) (not e!784150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94567 (_ BitVec 32)) Bool)

(assert (=> b!1383594 (= res!925294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383595 () Bool)

(declare-fun res!925290 () Bool)

(assert (=> b!1383595 (=> (not res!925290) (not e!784150))))

(assert (=> b!1383595 (= res!925290 (and (not (= (select (arr!45657 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45657 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun res!925292 () Bool)

(assert (=> start!118346 (=> (not res!925292) (not e!784150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118346 (= res!925292 (validMask!0 mask!2987))))

(assert (=> start!118346 e!784150))

(assert (=> start!118346 true))

(declare-fun array_inv!34602 (array!94567) Bool)

(assert (=> start!118346 (array_inv!34602 a!2938)))

(assert (= (and start!118346 res!925292) b!1383590))

(assert (= (and b!1383590 res!925293) b!1383589))

(assert (= (and b!1383589 res!925291) b!1383593))

(assert (= (and b!1383593 res!925295) b!1383594))

(assert (= (and b!1383594 res!925294) b!1383595))

(assert (= (and b!1383595 res!925290) b!1383591))

(assert (= (and b!1383591 res!925296) b!1383592))

(declare-fun m!1268799 () Bool)

(assert (=> b!1383595 m!1268799))

(declare-fun m!1268801 () Bool)

(assert (=> start!118346 m!1268801))

(declare-fun m!1268803 () Bool)

(assert (=> start!118346 m!1268803))

(assert (=> b!1383589 m!1268799))

(assert (=> b!1383589 m!1268799))

(declare-fun m!1268805 () Bool)

(assert (=> b!1383589 m!1268805))

(declare-fun m!1268807 () Bool)

(assert (=> b!1383591 m!1268807))

(assert (=> b!1383591 m!1268807))

(declare-fun m!1268809 () Bool)

(assert (=> b!1383591 m!1268809))

(declare-fun m!1268811 () Bool)

(assert (=> b!1383592 m!1268811))

(assert (=> b!1383592 m!1268811))

(declare-fun m!1268813 () Bool)

(assert (=> b!1383592 m!1268813))

(declare-fun m!1268815 () Bool)

(assert (=> b!1383592 m!1268815))

(declare-fun m!1268817 () Bool)

(assert (=> b!1383592 m!1268817))

(assert (=> b!1383592 m!1268807))

(assert (=> b!1383592 m!1268807))

(declare-fun m!1268819 () Bool)

(assert (=> b!1383592 m!1268819))

(declare-fun m!1268821 () Bool)

(assert (=> b!1383593 m!1268821))

(declare-fun m!1268823 () Bool)

(assert (=> b!1383594 m!1268823))

(push 1)

(assert (not start!118346))

(assert (not b!1383592))

(assert (not b!1383591))

(assert (not b!1383594))

(assert (not b!1383593))

(assert (not b!1383589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

