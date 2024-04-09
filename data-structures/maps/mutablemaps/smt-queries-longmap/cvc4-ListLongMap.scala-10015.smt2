; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118238 () Bool)

(assert start!118238)

(declare-fun res!924557 () Bool)

(declare-fun e!783826 () Bool)

(assert (=> start!118238 (=> (not res!924557) (not e!783826))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118238 (= res!924557 (validMask!0 mask!2987))))

(assert (=> start!118238 e!783826))

(assert (=> start!118238 true))

(declare-datatypes ((array!94459 0))(
  ( (array!94460 (arr!45603 (Array (_ BitVec 32) (_ BitVec 64))) (size!46154 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94459)

(declare-fun array_inv!34548 (array!94459) Bool)

(assert (=> start!118238 (array_inv!34548 a!2938)))

(declare-fun b!1382855 () Bool)

(declare-fun res!924556 () Bool)

(assert (=> b!1382855 (=> (not res!924556) (not e!783826))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382855 (= res!924556 (and (= (size!46154 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46154 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46154 a!2938))))))

(declare-fun b!1382856 () Bool)

(declare-fun res!924558 () Bool)

(assert (=> b!1382856 (=> (not res!924558) (not e!783826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382856 (= res!924558 (validKeyInArray!0 (select (arr!45603 a!2938) i!1065)))))

(declare-fun b!1382857 () Bool)

(assert (=> b!1382857 (= e!783826 false)))

(declare-fun lt!608434 () Bool)

(declare-datatypes ((List!32311 0))(
  ( (Nil!32308) (Cons!32307 (h!33516 (_ BitVec 64)) (t!47012 List!32311)) )
))
(declare-fun arrayNoDuplicates!0 (array!94459 (_ BitVec 32) List!32311) Bool)

(assert (=> b!1382857 (= lt!608434 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32308))))

(assert (= (and start!118238 res!924557) b!1382855))

(assert (= (and b!1382855 res!924556) b!1382856))

(assert (= (and b!1382856 res!924558) b!1382857))

(declare-fun m!1268017 () Bool)

(assert (=> start!118238 m!1268017))

(declare-fun m!1268019 () Bool)

(assert (=> start!118238 m!1268019))

(declare-fun m!1268021 () Bool)

(assert (=> b!1382856 m!1268021))

(assert (=> b!1382856 m!1268021))

(declare-fun m!1268023 () Bool)

(assert (=> b!1382856 m!1268023))

(declare-fun m!1268025 () Bool)

(assert (=> b!1382857 m!1268025))

(push 1)

(assert (not b!1382857))

(assert (not start!118238))

(assert (not b!1382856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

