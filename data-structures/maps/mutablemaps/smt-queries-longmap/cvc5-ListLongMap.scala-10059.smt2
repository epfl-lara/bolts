; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118528 () Bool)

(assert start!118528)

(declare-fun res!926793 () Bool)

(declare-fun e!785011 () Bool)

(assert (=> start!118528 (=> (not res!926793) (not e!785011))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118528 (= res!926793 (validMask!0 mask!2987))))

(assert (=> start!118528 e!785011))

(assert (=> start!118528 true))

(declare-datatypes ((array!94722 0))(
  ( (array!94723 (arr!45733 (Array (_ BitVec 32) (_ BitVec 64))) (size!46284 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94722)

(declare-fun array_inv!34678 (array!94722) Bool)

(assert (=> start!118528 (array_inv!34678 a!2938)))

(declare-fun b!1385432 () Bool)

(declare-fun res!926792 () Bool)

(assert (=> b!1385432 (=> (not res!926792) (not e!785011))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385432 (= res!926792 (validKeyInArray!0 (select (arr!45733 a!2938) i!1065)))))

(declare-fun b!1385434 () Bool)

(assert (=> b!1385434 (= e!785011 false)))

(declare-fun lt!609202 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94722 (_ BitVec 32)) Bool)

(assert (=> b!1385434 (= lt!609202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385433 () Bool)

(declare-fun res!926790 () Bool)

(assert (=> b!1385433 (=> (not res!926790) (not e!785011))))

(declare-datatypes ((List!32441 0))(
  ( (Nil!32438) (Cons!32437 (h!33646 (_ BitVec 64)) (t!47142 List!32441)) )
))
(declare-fun arrayNoDuplicates!0 (array!94722 (_ BitVec 32) List!32441) Bool)

(assert (=> b!1385433 (= res!926790 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32438))))

(declare-fun b!1385431 () Bool)

(declare-fun res!926791 () Bool)

(assert (=> b!1385431 (=> (not res!926791) (not e!785011))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385431 (= res!926791 (and (= (size!46284 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46284 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46284 a!2938))))))

(assert (= (and start!118528 res!926793) b!1385431))

(assert (= (and b!1385431 res!926791) b!1385432))

(assert (= (and b!1385432 res!926792) b!1385433))

(assert (= (and b!1385433 res!926790) b!1385434))

(declare-fun m!1270781 () Bool)

(assert (=> start!118528 m!1270781))

(declare-fun m!1270783 () Bool)

(assert (=> start!118528 m!1270783))

(declare-fun m!1270785 () Bool)

(assert (=> b!1385432 m!1270785))

(assert (=> b!1385432 m!1270785))

(declare-fun m!1270787 () Bool)

(assert (=> b!1385432 m!1270787))

(declare-fun m!1270789 () Bool)

(assert (=> b!1385434 m!1270789))

(declare-fun m!1270791 () Bool)

(assert (=> b!1385433 m!1270791))

(push 1)

(assert (not b!1385432))

(assert (not b!1385433))

(assert (not start!118528))

(assert (not b!1385434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

