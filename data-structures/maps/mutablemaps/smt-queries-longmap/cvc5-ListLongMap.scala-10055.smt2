; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118504 () Bool)

(assert start!118504)

(declare-fun b!1385289 () Bool)

(declare-fun res!926648 () Bool)

(declare-fun e!784939 () Bool)

(assert (=> b!1385289 (=> (not res!926648) (not e!784939))))

(declare-datatypes ((array!94698 0))(
  ( (array!94699 (arr!45721 (Array (_ BitVec 32) (_ BitVec 64))) (size!46272 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94698)

(declare-datatypes ((List!32429 0))(
  ( (Nil!32426) (Cons!32425 (h!33634 (_ BitVec 64)) (t!47130 List!32429)) )
))
(declare-fun arrayNoDuplicates!0 (array!94698 (_ BitVec 32) List!32429) Bool)

(assert (=> b!1385289 (= res!926648 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32426))))

(declare-fun b!1385288 () Bool)

(declare-fun res!926649 () Bool)

(assert (=> b!1385288 (=> (not res!926649) (not e!784939))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385288 (= res!926649 (validKeyInArray!0 (select (arr!45721 a!2938) i!1065)))))

(declare-fun b!1385287 () Bool)

(declare-fun res!926647 () Bool)

(assert (=> b!1385287 (=> (not res!926647) (not e!784939))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385287 (= res!926647 (and (= (size!46272 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46272 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46272 a!2938))))))

(declare-fun res!926646 () Bool)

(assert (=> start!118504 (=> (not res!926646) (not e!784939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118504 (= res!926646 (validMask!0 mask!2987))))

(assert (=> start!118504 e!784939))

(assert (=> start!118504 true))

(declare-fun array_inv!34666 (array!94698) Bool)

(assert (=> start!118504 (array_inv!34666 a!2938)))

(declare-fun b!1385290 () Bool)

(assert (=> b!1385290 (= e!784939 false)))

(declare-fun lt!609166 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94698 (_ BitVec 32)) Bool)

(assert (=> b!1385290 (= lt!609166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118504 res!926646) b!1385287))

(assert (= (and b!1385287 res!926647) b!1385288))

(assert (= (and b!1385288 res!926649) b!1385289))

(assert (= (and b!1385289 res!926648) b!1385290))

(declare-fun m!1270637 () Bool)

(assert (=> b!1385289 m!1270637))

(declare-fun m!1270639 () Bool)

(assert (=> b!1385288 m!1270639))

(assert (=> b!1385288 m!1270639))

(declare-fun m!1270641 () Bool)

(assert (=> b!1385288 m!1270641))

(declare-fun m!1270643 () Bool)

(assert (=> start!118504 m!1270643))

(declare-fun m!1270645 () Bool)

(assert (=> start!118504 m!1270645))

(declare-fun m!1270647 () Bool)

(assert (=> b!1385290 m!1270647))

(push 1)

(assert (not b!1385290))

(assert (not b!1385288))

(assert (not start!118504))

(assert (not b!1385289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

