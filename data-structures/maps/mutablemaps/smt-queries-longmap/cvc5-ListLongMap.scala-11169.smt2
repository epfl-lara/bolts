; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130588 () Bool)

(assert start!130588)

(declare-fun b!1532190 () Bool)

(declare-fun res!1049468 () Bool)

(declare-fun e!853720 () Bool)

(assert (=> b!1532190 (=> (not res!1049468) (not e!853720))))

(declare-datatypes ((array!101694 0))(
  ( (array!101695 (arr!49063 (Array (_ BitVec 32) (_ BitVec 64))) (size!49614 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101694)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532190 (= res!1049468 (validKeyInArray!0 (select (arr!49063 a!2792) j!64)))))

(declare-fun res!1049466 () Bool)

(assert (=> start!130588 (=> (not res!1049466) (not e!853720))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130588 (= res!1049466 (validMask!0 mask!2480))))

(assert (=> start!130588 e!853720))

(assert (=> start!130588 true))

(declare-fun array_inv!38008 (array!101694) Bool)

(assert (=> start!130588 (array_inv!38008 a!2792)))

(declare-fun b!1532191 () Bool)

(assert (=> b!1532191 (= e!853720 (bvsgt #b00000000000000000000000000000000 (size!49614 a!2792)))))

(declare-fun b!1532189 () Bool)

(declare-fun res!1049467 () Bool)

(assert (=> b!1532189 (=> (not res!1049467) (not e!853720))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532189 (= res!1049467 (validKeyInArray!0 (select (arr!49063 a!2792) i!951)))))

(declare-fun b!1532188 () Bool)

(declare-fun res!1049469 () Bool)

(assert (=> b!1532188 (=> (not res!1049469) (not e!853720))))

(assert (=> b!1532188 (= res!1049469 (and (= (size!49614 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49614 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49614 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130588 res!1049466) b!1532188))

(assert (= (and b!1532188 res!1049469) b!1532189))

(assert (= (and b!1532189 res!1049467) b!1532190))

(assert (= (and b!1532190 res!1049468) b!1532191))

(declare-fun m!1414971 () Bool)

(assert (=> b!1532190 m!1414971))

(assert (=> b!1532190 m!1414971))

(declare-fun m!1414973 () Bool)

(assert (=> b!1532190 m!1414973))

(declare-fun m!1414975 () Bool)

(assert (=> start!130588 m!1414975))

(declare-fun m!1414977 () Bool)

(assert (=> start!130588 m!1414977))

(declare-fun m!1414979 () Bool)

(assert (=> b!1532189 m!1414979))

(assert (=> b!1532189 m!1414979))

(declare-fun m!1414981 () Bool)

(assert (=> b!1532189 m!1414981))

(push 1)

(assert (not b!1532190))

(assert (not start!130588))

(assert (not b!1532189))

(check-sat)

