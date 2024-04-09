; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118502 () Bool)

(assert start!118502)

(declare-fun res!926634 () Bool)

(declare-fun e!784933 () Bool)

(assert (=> start!118502 (=> (not res!926634) (not e!784933))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118502 (= res!926634 (validMask!0 mask!2987))))

(assert (=> start!118502 e!784933))

(assert (=> start!118502 true))

(declare-datatypes ((array!94696 0))(
  ( (array!94697 (arr!45720 (Array (_ BitVec 32) (_ BitVec 64))) (size!46271 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94696)

(declare-fun array_inv!34665 (array!94696) Bool)

(assert (=> start!118502 (array_inv!34665 a!2938)))

(declare-fun b!1385277 () Bool)

(declare-fun res!926637 () Bool)

(assert (=> b!1385277 (=> (not res!926637) (not e!784933))))

(declare-datatypes ((List!32428 0))(
  ( (Nil!32425) (Cons!32424 (h!33633 (_ BitVec 64)) (t!47129 List!32428)) )
))
(declare-fun arrayNoDuplicates!0 (array!94696 (_ BitVec 32) List!32428) Bool)

(assert (=> b!1385277 (= res!926637 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32425))))

(declare-fun b!1385276 () Bool)

(declare-fun res!926635 () Bool)

(assert (=> b!1385276 (=> (not res!926635) (not e!784933))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385276 (= res!926635 (validKeyInArray!0 (select (arr!45720 a!2938) i!1065)))))

(declare-fun b!1385275 () Bool)

(declare-fun res!926636 () Bool)

(assert (=> b!1385275 (=> (not res!926636) (not e!784933))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385275 (= res!926636 (and (= (size!46271 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46271 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46271 a!2938))))))

(declare-fun b!1385278 () Bool)

(assert (=> b!1385278 (= e!784933 false)))

(declare-fun lt!609163 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94696 (_ BitVec 32)) Bool)

(assert (=> b!1385278 (= lt!609163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118502 res!926634) b!1385275))

(assert (= (and b!1385275 res!926636) b!1385276))

(assert (= (and b!1385276 res!926635) b!1385277))

(assert (= (and b!1385277 res!926637) b!1385278))

(declare-fun m!1270625 () Bool)

(assert (=> start!118502 m!1270625))

(declare-fun m!1270627 () Bool)

(assert (=> start!118502 m!1270627))

(declare-fun m!1270629 () Bool)

(assert (=> b!1385277 m!1270629))

(declare-fun m!1270631 () Bool)

(assert (=> b!1385276 m!1270631))

(assert (=> b!1385276 m!1270631))

(declare-fun m!1270633 () Bool)

(assert (=> b!1385276 m!1270633))

(declare-fun m!1270635 () Bool)

(assert (=> b!1385278 m!1270635))

(push 1)

(assert (not start!118502))

(assert (not b!1385277))

(assert (not b!1385278))

(assert (not b!1385276))

(check-sat)

