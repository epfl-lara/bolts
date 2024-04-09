; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118546 () Bool)

(assert start!118546)

(declare-fun res!926900 () Bool)

(declare-fun e!785065 () Bool)

(assert (=> start!118546 (=> (not res!926900) (not e!785065))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118546 (= res!926900 (validMask!0 mask!2987))))

(assert (=> start!118546 e!785065))

(assert (=> start!118546 true))

(declare-datatypes ((array!94740 0))(
  ( (array!94741 (arr!45742 (Array (_ BitVec 32) (_ BitVec 64))) (size!46293 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94740)

(declare-fun array_inv!34687 (array!94740) Bool)

(assert (=> start!118546 (array_inv!34687 a!2938)))

(declare-fun b!1385542 () Bool)

(assert (=> b!1385542 (= e!785065 false)))

(declare-fun lt!609229 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94740 (_ BitVec 32)) Bool)

(assert (=> b!1385542 (= lt!609229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385539 () Bool)

(declare-fun res!926901 () Bool)

(assert (=> b!1385539 (=> (not res!926901) (not e!785065))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385539 (= res!926901 (and (= (size!46293 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46293 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46293 a!2938))))))

(declare-fun b!1385540 () Bool)

(declare-fun res!926898 () Bool)

(assert (=> b!1385540 (=> (not res!926898) (not e!785065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385540 (= res!926898 (validKeyInArray!0 (select (arr!45742 a!2938) i!1065)))))

(declare-fun b!1385541 () Bool)

(declare-fun res!926899 () Bool)

(assert (=> b!1385541 (=> (not res!926899) (not e!785065))))

(declare-datatypes ((List!32450 0))(
  ( (Nil!32447) (Cons!32446 (h!33655 (_ BitVec 64)) (t!47151 List!32450)) )
))
(declare-fun arrayNoDuplicates!0 (array!94740 (_ BitVec 32) List!32450) Bool)

(assert (=> b!1385541 (= res!926899 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32447))))

(assert (= (and start!118546 res!926900) b!1385539))

(assert (= (and b!1385539 res!926901) b!1385540))

(assert (= (and b!1385540 res!926898) b!1385541))

(assert (= (and b!1385541 res!926899) b!1385542))

(declare-fun m!1270889 () Bool)

(assert (=> start!118546 m!1270889))

(declare-fun m!1270891 () Bool)

(assert (=> start!118546 m!1270891))

(declare-fun m!1270893 () Bool)

(assert (=> b!1385542 m!1270893))

(declare-fun m!1270895 () Bool)

(assert (=> b!1385540 m!1270895))

(assert (=> b!1385540 m!1270895))

(declare-fun m!1270897 () Bool)

(assert (=> b!1385540 m!1270897))

(declare-fun m!1270899 () Bool)

(assert (=> b!1385541 m!1270899))

(push 1)

(assert (not b!1385540))

(assert (not b!1385541))

(assert (not start!118546))

(assert (not b!1385542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

