; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118340 () Bool)

(assert start!118340)

(declare-fun b!1383526 () Bool)

(declare-fun res!925230 () Bool)

(declare-fun e!784132 () Bool)

(assert (=> b!1383526 (=> (not res!925230) (not e!784132))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94561 0))(
  ( (array!94562 (arr!45654 (Array (_ BitVec 32) (_ BitVec 64))) (size!46205 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94561)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383526 (= res!925230 (and (not (= (select (arr!45654 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45654 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383527 () Bool)

(declare-fun res!925231 () Bool)

(assert (=> b!1383527 (=> (not res!925231) (not e!784132))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94561 (_ BitVec 32)) Bool)

(assert (=> b!1383527 (= res!925231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!925232 () Bool)

(assert (=> start!118340 (=> (not res!925232) (not e!784132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118340 (= res!925232 (validMask!0 mask!2987))))

(assert (=> start!118340 e!784132))

(assert (=> start!118340 true))

(declare-fun array_inv!34599 (array!94561) Bool)

(assert (=> start!118340 (array_inv!34599 a!2938)))

(declare-fun b!1383528 () Bool)

(declare-fun res!925233 () Bool)

(assert (=> b!1383528 (=> (not res!925233) (not e!784132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383528 (= res!925233 (validKeyInArray!0 (select (arr!45654 a!2938) startIndex!16)))))

(declare-fun b!1383529 () Bool)

(assert (=> b!1383529 (= e!784132 (not true))))

(declare-datatypes ((SeekEntryResult!10068 0))(
  ( (MissingZero!10068 (index!42642 (_ BitVec 32))) (Found!10068 (index!42643 (_ BitVec 32))) (Intermediate!10068 (undefined!10880 Bool) (index!42644 (_ BitVec 32)) (x!124160 (_ BitVec 32))) (Undefined!10068) (MissingVacant!10068 (index!42645 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94561 (_ BitVec 32)) SeekEntryResult!10068)

(assert (=> b!1383529 (= (seekEntryOrOpen!0 (select (arr!45654 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45654 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94562 (store (arr!45654 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46205 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46027 0))(
  ( (Unit!46028) )
))
(declare-fun lt!608578 () Unit!46027)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46027)

(assert (=> b!1383529 (= lt!608578 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383530 () Bool)

(declare-fun res!925229 () Bool)

(assert (=> b!1383530 (=> (not res!925229) (not e!784132))))

(assert (=> b!1383530 (= res!925229 (and (= (size!46205 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46205 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46205 a!2938))))))

(declare-fun b!1383531 () Bool)

(declare-fun res!925227 () Bool)

(assert (=> b!1383531 (=> (not res!925227) (not e!784132))))

(declare-datatypes ((List!32362 0))(
  ( (Nil!32359) (Cons!32358 (h!33567 (_ BitVec 64)) (t!47063 List!32362)) )
))
(declare-fun arrayNoDuplicates!0 (array!94561 (_ BitVec 32) List!32362) Bool)

(assert (=> b!1383531 (= res!925227 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32359))))

(declare-fun b!1383532 () Bool)

(declare-fun res!925228 () Bool)

(assert (=> b!1383532 (=> (not res!925228) (not e!784132))))

(assert (=> b!1383532 (= res!925228 (validKeyInArray!0 (select (arr!45654 a!2938) i!1065)))))

(assert (= (and start!118340 res!925232) b!1383530))

(assert (= (and b!1383530 res!925229) b!1383532))

(assert (= (and b!1383532 res!925228) b!1383531))

(assert (= (and b!1383531 res!925227) b!1383527))

(assert (= (and b!1383527 res!925231) b!1383526))

(assert (= (and b!1383526 res!925230) b!1383528))

(assert (= (and b!1383528 res!925233) b!1383529))

(declare-fun m!1268721 () Bool)

(assert (=> b!1383532 m!1268721))

(assert (=> b!1383532 m!1268721))

(declare-fun m!1268723 () Bool)

(assert (=> b!1383532 m!1268723))

(declare-fun m!1268725 () Bool)

(assert (=> b!1383528 m!1268725))

(assert (=> b!1383528 m!1268725))

(declare-fun m!1268727 () Bool)

(assert (=> b!1383528 m!1268727))

(declare-fun m!1268729 () Bool)

(assert (=> start!118340 m!1268729))

(declare-fun m!1268731 () Bool)

(assert (=> start!118340 m!1268731))

(declare-fun m!1268733 () Bool)

(assert (=> b!1383527 m!1268733))

(assert (=> b!1383526 m!1268721))

(declare-fun m!1268735 () Bool)

(assert (=> b!1383531 m!1268735))

(declare-fun m!1268737 () Bool)

(assert (=> b!1383529 m!1268737))

(assert (=> b!1383529 m!1268737))

(declare-fun m!1268739 () Bool)

(assert (=> b!1383529 m!1268739))

(declare-fun m!1268741 () Bool)

(assert (=> b!1383529 m!1268741))

(declare-fun m!1268743 () Bool)

(assert (=> b!1383529 m!1268743))

(assert (=> b!1383529 m!1268725))

(assert (=> b!1383529 m!1268725))

(declare-fun m!1268745 () Bool)

(assert (=> b!1383529 m!1268745))

(push 1)

(assert (not start!118340))

(assert (not b!1383532))

(assert (not b!1383528))

(assert (not b!1383529))

(assert (not b!1383527))

(assert (not b!1383531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

