; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118498 () Bool)

(assert start!118498)

(declare-fun b!1385253 () Bool)

(declare-fun res!926610 () Bool)

(declare-fun e!784921 () Bool)

(assert (=> b!1385253 (=> (not res!926610) (not e!784921))))

(declare-datatypes ((array!94692 0))(
  ( (array!94693 (arr!45718 (Array (_ BitVec 32) (_ BitVec 64))) (size!46269 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94692)

(declare-datatypes ((List!32426 0))(
  ( (Nil!32423) (Cons!32422 (h!33631 (_ BitVec 64)) (t!47127 List!32426)) )
))
(declare-fun arrayNoDuplicates!0 (array!94692 (_ BitVec 32) List!32426) Bool)

(assert (=> b!1385253 (= res!926610 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32423))))

(declare-fun b!1385252 () Bool)

(declare-fun res!926612 () Bool)

(assert (=> b!1385252 (=> (not res!926612) (not e!784921))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385252 (= res!926612 (validKeyInArray!0 (select (arr!45718 a!2938) i!1065)))))

(declare-fun res!926611 () Bool)

(assert (=> start!118498 (=> (not res!926611) (not e!784921))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118498 (= res!926611 (validMask!0 mask!2987))))

(assert (=> start!118498 e!784921))

(assert (=> start!118498 true))

(declare-fun array_inv!34663 (array!94692) Bool)

(assert (=> start!118498 (array_inv!34663 a!2938)))

(declare-fun b!1385254 () Bool)

(assert (=> b!1385254 (= e!784921 false)))

(declare-fun lt!609157 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94692 (_ BitVec 32)) Bool)

(assert (=> b!1385254 (= lt!609157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385251 () Bool)

(declare-fun res!926613 () Bool)

(assert (=> b!1385251 (=> (not res!926613) (not e!784921))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385251 (= res!926613 (and (= (size!46269 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46269 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46269 a!2938))))))

(assert (= (and start!118498 res!926611) b!1385251))

(assert (= (and b!1385251 res!926613) b!1385252))

(assert (= (and b!1385252 res!926612) b!1385253))

(assert (= (and b!1385253 res!926610) b!1385254))

(declare-fun m!1270601 () Bool)

(assert (=> b!1385253 m!1270601))

(declare-fun m!1270603 () Bool)

(assert (=> b!1385252 m!1270603))

(assert (=> b!1385252 m!1270603))

(declare-fun m!1270605 () Bool)

(assert (=> b!1385252 m!1270605))

(declare-fun m!1270607 () Bool)

(assert (=> start!118498 m!1270607))

(declare-fun m!1270609 () Bool)

(assert (=> start!118498 m!1270609))

(declare-fun m!1270611 () Bool)

(assert (=> b!1385254 m!1270611))

(push 1)

(assert (not b!1385252))

(assert (not b!1385254))

(assert (not b!1385253))

(assert (not start!118498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

