; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118282 () Bool)

(assert start!118282)

(declare-fun b!1383102 () Bool)

(declare-fun res!924801 () Bool)

(declare-fun e!783959 () Bool)

(assert (=> b!1383102 (=> (not res!924801) (not e!783959))))

(declare-datatypes ((array!94503 0))(
  ( (array!94504 (arr!45625 (Array (_ BitVec 32) (_ BitVec 64))) (size!46176 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94503)

(declare-datatypes ((List!32333 0))(
  ( (Nil!32330) (Cons!32329 (h!33538 (_ BitVec 64)) (t!47034 List!32333)) )
))
(declare-fun arrayNoDuplicates!0 (array!94503 (_ BitVec 32) List!32333) Bool)

(assert (=> b!1383102 (= res!924801 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32330))))

(declare-fun b!1383100 () Bool)

(declare-fun res!924802 () Bool)

(assert (=> b!1383100 (=> (not res!924802) (not e!783959))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383100 (= res!924802 (and (= (size!46176 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46176 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46176 a!2938))))))

(declare-fun b!1383103 () Bool)

(assert (=> b!1383103 (= e!783959 false)))

(declare-fun lt!608491 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94503 (_ BitVec 32)) Bool)

(assert (=> b!1383103 (= lt!608491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383101 () Bool)

(declare-fun res!924803 () Bool)

(assert (=> b!1383101 (=> (not res!924803) (not e!783959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383101 (= res!924803 (validKeyInArray!0 (select (arr!45625 a!2938) i!1065)))))

(declare-fun res!924804 () Bool)

(assert (=> start!118282 (=> (not res!924804) (not e!783959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118282 (= res!924804 (validMask!0 mask!2987))))

(assert (=> start!118282 e!783959))

(assert (=> start!118282 true))

(declare-fun array_inv!34570 (array!94503) Bool)

(assert (=> start!118282 (array_inv!34570 a!2938)))

(assert (= (and start!118282 res!924804) b!1383100))

(assert (= (and b!1383100 res!924802) b!1383101))

(assert (= (and b!1383101 res!924803) b!1383102))

(assert (= (and b!1383102 res!924801) b!1383103))

(declare-fun m!1268261 () Bool)

(assert (=> b!1383102 m!1268261))

(declare-fun m!1268263 () Bool)

(assert (=> b!1383103 m!1268263))

(declare-fun m!1268265 () Bool)

(assert (=> b!1383101 m!1268265))

(assert (=> b!1383101 m!1268265))

(declare-fun m!1268267 () Bool)

(assert (=> b!1383101 m!1268267))

(declare-fun m!1268269 () Bool)

(assert (=> start!118282 m!1268269))

(declare-fun m!1268271 () Bool)

(assert (=> start!118282 m!1268271))

(push 1)

(assert (not b!1383101))

(assert (not start!118282))

(assert (not b!1383102))

(assert (not b!1383103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

