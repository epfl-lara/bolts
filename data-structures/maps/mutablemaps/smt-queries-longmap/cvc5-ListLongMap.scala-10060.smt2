; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118534 () Bool)

(assert start!118534)

(declare-fun res!926828 () Bool)

(declare-fun e!785030 () Bool)

(assert (=> start!118534 (=> (not res!926828) (not e!785030))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118534 (= res!926828 (validMask!0 mask!2987))))

(assert (=> start!118534 e!785030))

(assert (=> start!118534 true))

(declare-datatypes ((array!94728 0))(
  ( (array!94729 (arr!45736 (Array (_ BitVec 32) (_ BitVec 64))) (size!46287 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94728)

(declare-fun array_inv!34681 (array!94728) Bool)

(assert (=> start!118534 (array_inv!34681 a!2938)))

(declare-fun b!1385469 () Bool)

(declare-fun res!926827 () Bool)

(assert (=> b!1385469 (=> (not res!926827) (not e!785030))))

(declare-datatypes ((List!32444 0))(
  ( (Nil!32441) (Cons!32440 (h!33649 (_ BitVec 64)) (t!47145 List!32444)) )
))
(declare-fun arrayNoDuplicates!0 (array!94728 (_ BitVec 32) List!32444) Bool)

(assert (=> b!1385469 (= res!926827 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32441))))

(declare-fun b!1385470 () Bool)

(assert (=> b!1385470 (= e!785030 false)))

(declare-fun lt!609211 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94728 (_ BitVec 32)) Bool)

(assert (=> b!1385470 (= lt!609211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385468 () Bool)

(declare-fun res!926826 () Bool)

(assert (=> b!1385468 (=> (not res!926826) (not e!785030))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385468 (= res!926826 (validKeyInArray!0 (select (arr!45736 a!2938) i!1065)))))

(declare-fun b!1385467 () Bool)

(declare-fun res!926829 () Bool)

(assert (=> b!1385467 (=> (not res!926829) (not e!785030))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385467 (= res!926829 (and (= (size!46287 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46287 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46287 a!2938))))))

(assert (= (and start!118534 res!926828) b!1385467))

(assert (= (and b!1385467 res!926829) b!1385468))

(assert (= (and b!1385468 res!926826) b!1385469))

(assert (= (and b!1385469 res!926827) b!1385470))

(declare-fun m!1270817 () Bool)

(assert (=> start!118534 m!1270817))

(declare-fun m!1270819 () Bool)

(assert (=> start!118534 m!1270819))

(declare-fun m!1270821 () Bool)

(assert (=> b!1385469 m!1270821))

(declare-fun m!1270823 () Bool)

(assert (=> b!1385470 m!1270823))

(declare-fun m!1270825 () Bool)

(assert (=> b!1385468 m!1270825))

(assert (=> b!1385468 m!1270825))

(declare-fun m!1270827 () Bool)

(assert (=> b!1385468 m!1270827))

(push 1)

(assert (not b!1385468))

(assert (not start!118534))

(assert (not b!1385469))

(assert (not b!1385470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

