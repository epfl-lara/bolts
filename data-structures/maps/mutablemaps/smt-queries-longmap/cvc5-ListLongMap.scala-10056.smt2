; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118510 () Bool)

(assert start!118510)

(declare-fun b!1385324 () Bool)

(declare-fun res!926685 () Bool)

(declare-fun e!784958 () Bool)

(assert (=> b!1385324 (=> (not res!926685) (not e!784958))))

(declare-datatypes ((array!94704 0))(
  ( (array!94705 (arr!45724 (Array (_ BitVec 32) (_ BitVec 64))) (size!46275 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94704)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385324 (= res!926685 (validKeyInArray!0 (select (arr!45724 a!2938) i!1065)))))

(declare-fun b!1385323 () Bool)

(declare-fun res!926683 () Bool)

(assert (=> b!1385323 (=> (not res!926683) (not e!784958))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385323 (= res!926683 (and (= (size!46275 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46275 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46275 a!2938))))))

(declare-fun res!926682 () Bool)

(assert (=> start!118510 (=> (not res!926682) (not e!784958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118510 (= res!926682 (validMask!0 mask!2987))))

(assert (=> start!118510 e!784958))

(assert (=> start!118510 true))

(declare-fun array_inv!34669 (array!94704) Bool)

(assert (=> start!118510 (array_inv!34669 a!2938)))

(declare-fun b!1385326 () Bool)

(assert (=> b!1385326 (= e!784958 false)))

(declare-fun lt!609175 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94704 (_ BitVec 32)) Bool)

(assert (=> b!1385326 (= lt!609175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385325 () Bool)

(declare-fun res!926684 () Bool)

(assert (=> b!1385325 (=> (not res!926684) (not e!784958))))

(declare-datatypes ((List!32432 0))(
  ( (Nil!32429) (Cons!32428 (h!33637 (_ BitVec 64)) (t!47133 List!32432)) )
))
(declare-fun arrayNoDuplicates!0 (array!94704 (_ BitVec 32) List!32432) Bool)

(assert (=> b!1385325 (= res!926684 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32429))))

(assert (= (and start!118510 res!926682) b!1385323))

(assert (= (and b!1385323 res!926683) b!1385324))

(assert (= (and b!1385324 res!926685) b!1385325))

(assert (= (and b!1385325 res!926684) b!1385326))

(declare-fun m!1270673 () Bool)

(assert (=> b!1385324 m!1270673))

(assert (=> b!1385324 m!1270673))

(declare-fun m!1270675 () Bool)

(assert (=> b!1385324 m!1270675))

(declare-fun m!1270677 () Bool)

(assert (=> start!118510 m!1270677))

(declare-fun m!1270679 () Bool)

(assert (=> start!118510 m!1270679))

(declare-fun m!1270681 () Bool)

(assert (=> b!1385326 m!1270681))

(declare-fun m!1270683 () Bool)

(assert (=> b!1385325 m!1270683))

(push 1)

(assert (not b!1385326))

(assert (not b!1385325))

(assert (not start!118510))

(assert (not b!1385324))

(check-sat)

(pop 1)

