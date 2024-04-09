; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118114 () Bool)

(assert start!118114)

(declare-fun res!924121 () Bool)

(declare-fun e!783584 () Bool)

(assert (=> start!118114 (=> (not res!924121) (not e!783584))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118114 (= res!924121 (validMask!0 mask!3034))))

(assert (=> start!118114 e!783584))

(assert (=> start!118114 true))

(declare-datatypes ((array!94394 0))(
  ( (array!94395 (arr!45574 (Array (_ BitVec 32) (_ BitVec 64))) (size!46125 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94394)

(declare-fun array_inv!34519 (array!94394) Bool)

(assert (=> start!118114 (array_inv!34519 a!2971)))

(declare-fun b!1382420 () Bool)

(declare-fun res!924123 () Bool)

(assert (=> b!1382420 (=> (not res!924123) (not e!783584))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382420 (= res!924123 (validKeyInArray!0 (select (arr!45574 a!2971) i!1094)))))

(declare-fun b!1382421 () Bool)

(declare-fun res!924120 () Bool)

(assert (=> b!1382421 (=> (not res!924120) (not e!783584))))

(declare-datatypes ((List!32288 0))(
  ( (Nil!32285) (Cons!32284 (h!33493 (_ BitVec 64)) (t!46989 List!32288)) )
))
(declare-fun arrayNoDuplicates!0 (array!94394 (_ BitVec 32) List!32288) Bool)

(assert (=> b!1382421 (= res!924120 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32285))))

(declare-fun b!1382419 () Bool)

(declare-fun res!924122 () Bool)

(assert (=> b!1382419 (=> (not res!924122) (not e!783584))))

(assert (=> b!1382419 (= res!924122 (and (= (size!46125 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46125 a!2971))))))

(declare-fun b!1382422 () Bool)

(assert (=> b!1382422 (= e!783584 false)))

(declare-fun lt!608371 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94394 (_ BitVec 32)) Bool)

(assert (=> b!1382422 (= lt!608371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118114 res!924121) b!1382419))

(assert (= (and b!1382419 res!924122) b!1382420))

(assert (= (and b!1382420 res!924123) b!1382421))

(assert (= (and b!1382421 res!924120) b!1382422))

(declare-fun m!1267611 () Bool)

(assert (=> start!118114 m!1267611))

(declare-fun m!1267613 () Bool)

(assert (=> start!118114 m!1267613))

(declare-fun m!1267615 () Bool)

(assert (=> b!1382420 m!1267615))

(assert (=> b!1382420 m!1267615))

(declare-fun m!1267617 () Bool)

(assert (=> b!1382420 m!1267617))

(declare-fun m!1267619 () Bool)

(assert (=> b!1382421 m!1267619))

(declare-fun m!1267621 () Bool)

(assert (=> b!1382422 m!1267621))

(push 1)

(assert (not b!1382422))

(assert (not start!118114))

(assert (not b!1382421))

(assert (not b!1382420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

