; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118070 () Bool)

(assert start!118070)

(declare-fun res!923850 () Bool)

(declare-fun e!783451 () Bool)

(assert (=> start!118070 (=> (not res!923850) (not e!783451))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118070 (= res!923850 (validMask!0 mask!3034))))

(assert (=> start!118070 e!783451))

(assert (=> start!118070 true))

(declare-datatypes ((array!94350 0))(
  ( (array!94351 (arr!45552 (Array (_ BitVec 32) (_ BitVec 64))) (size!46103 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94350)

(declare-fun array_inv!34497 (array!94350) Bool)

(assert (=> start!118070 (array_inv!34497 a!2971)))

(declare-fun b!1382148 () Bool)

(declare-fun res!923847 () Bool)

(assert (=> b!1382148 (=> (not res!923847) (not e!783451))))

(declare-datatypes ((List!32266 0))(
  ( (Nil!32263) (Cons!32262 (h!33471 (_ BitVec 64)) (t!46967 List!32266)) )
))
(declare-fun arrayNoDuplicates!0 (array!94350 (_ BitVec 32) List!32266) Bool)

(assert (=> b!1382148 (= res!923847 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32263))))

(declare-fun b!1382146 () Bool)

(declare-fun res!923849 () Bool)

(assert (=> b!1382146 (=> (not res!923849) (not e!783451))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382146 (= res!923849 (and (= (size!46103 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46103 a!2971))))))

(declare-fun b!1382147 () Bool)

(declare-fun res!923848 () Bool)

(assert (=> b!1382147 (=> (not res!923848) (not e!783451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382147 (= res!923848 (validKeyInArray!0 (select (arr!45552 a!2971) i!1094)))))

(declare-fun b!1382149 () Bool)

(assert (=> b!1382149 (= e!783451 false)))

(declare-fun lt!608314 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94350 (_ BitVec 32)) Bool)

(assert (=> b!1382149 (= lt!608314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118070 res!923850) b!1382146))

(assert (= (and b!1382146 res!923849) b!1382147))

(assert (= (and b!1382147 res!923848) b!1382148))

(assert (= (and b!1382148 res!923847) b!1382149))

(declare-fun m!1267347 () Bool)

(assert (=> start!118070 m!1267347))

(declare-fun m!1267349 () Bool)

(assert (=> start!118070 m!1267349))

(declare-fun m!1267351 () Bool)

(assert (=> b!1382148 m!1267351))

(declare-fun m!1267353 () Bool)

(assert (=> b!1382147 m!1267353))

(assert (=> b!1382147 m!1267353))

(declare-fun m!1267355 () Bool)

(assert (=> b!1382147 m!1267355))

(declare-fun m!1267357 () Bool)

(assert (=> b!1382149 m!1267357))

(push 1)

(assert (not b!1382147))

(assert (not start!118070))

(assert (not b!1382148))

(assert (not b!1382149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

