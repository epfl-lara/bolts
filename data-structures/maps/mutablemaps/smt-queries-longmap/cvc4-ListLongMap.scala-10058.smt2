; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118526 () Bool)

(assert start!118526)

(declare-fun b!1385422 () Bool)

(declare-fun e!785006 () Bool)

(assert (=> b!1385422 (= e!785006 false)))

(declare-fun lt!609199 () Bool)

(declare-datatypes ((array!94720 0))(
  ( (array!94721 (arr!45732 (Array (_ BitVec 32) (_ BitVec 64))) (size!46283 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94720)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94720 (_ BitVec 32)) Bool)

(assert (=> b!1385422 (= lt!609199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!926778 () Bool)

(assert (=> start!118526 (=> (not res!926778) (not e!785006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118526 (= res!926778 (validMask!0 mask!2987))))

(assert (=> start!118526 e!785006))

(assert (=> start!118526 true))

(declare-fun array_inv!34677 (array!94720) Bool)

(assert (=> start!118526 (array_inv!34677 a!2938)))

(declare-fun b!1385419 () Bool)

(declare-fun res!926779 () Bool)

(assert (=> b!1385419 (=> (not res!926779) (not e!785006))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385419 (= res!926779 (and (= (size!46283 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46283 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46283 a!2938))))))

(declare-fun b!1385421 () Bool)

(declare-fun res!926781 () Bool)

(assert (=> b!1385421 (=> (not res!926781) (not e!785006))))

(declare-datatypes ((List!32440 0))(
  ( (Nil!32437) (Cons!32436 (h!33645 (_ BitVec 64)) (t!47141 List!32440)) )
))
(declare-fun arrayNoDuplicates!0 (array!94720 (_ BitVec 32) List!32440) Bool)

(assert (=> b!1385421 (= res!926781 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32437))))

(declare-fun b!1385420 () Bool)

(declare-fun res!926780 () Bool)

(assert (=> b!1385420 (=> (not res!926780) (not e!785006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385420 (= res!926780 (validKeyInArray!0 (select (arr!45732 a!2938) i!1065)))))

(assert (= (and start!118526 res!926778) b!1385419))

(assert (= (and b!1385419 res!926779) b!1385420))

(assert (= (and b!1385420 res!926780) b!1385421))

(assert (= (and b!1385421 res!926781) b!1385422))

(declare-fun m!1270769 () Bool)

(assert (=> b!1385422 m!1270769))

(declare-fun m!1270771 () Bool)

(assert (=> start!118526 m!1270771))

(declare-fun m!1270773 () Bool)

(assert (=> start!118526 m!1270773))

(declare-fun m!1270775 () Bool)

(assert (=> b!1385421 m!1270775))

(declare-fun m!1270777 () Bool)

(assert (=> b!1385420 m!1270777))

(assert (=> b!1385420 m!1270777))

(declare-fun m!1270779 () Bool)

(assert (=> b!1385420 m!1270779))

(push 1)

(assert (not b!1385420))

(assert (not b!1385421))

(assert (not start!118526))

(assert (not b!1385422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

