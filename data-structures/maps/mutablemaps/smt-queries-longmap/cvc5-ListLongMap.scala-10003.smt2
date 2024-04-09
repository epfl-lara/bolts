; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118096 () Bool)

(assert start!118096)

(declare-fun b!1382304 () Bool)

(declare-fun res!924005 () Bool)

(declare-fun e!783529 () Bool)

(assert (=> b!1382304 (=> (not res!924005) (not e!783529))))

(declare-datatypes ((array!94376 0))(
  ( (array!94377 (arr!45565 (Array (_ BitVec 32) (_ BitVec 64))) (size!46116 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94376)

(declare-datatypes ((List!32279 0))(
  ( (Nil!32276) (Cons!32275 (h!33484 (_ BitVec 64)) (t!46980 List!32279)) )
))
(declare-fun arrayNoDuplicates!0 (array!94376 (_ BitVec 32) List!32279) Bool)

(assert (=> b!1382304 (= res!924005 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32276))))

(declare-fun res!924003 () Bool)

(assert (=> start!118096 (=> (not res!924003) (not e!783529))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118096 (= res!924003 (validMask!0 mask!3034))))

(assert (=> start!118096 e!783529))

(assert (=> start!118096 true))

(declare-fun array_inv!34510 (array!94376) Bool)

(assert (=> start!118096 (array_inv!34510 a!2971)))

(declare-fun b!1382302 () Bool)

(declare-fun res!924004 () Bool)

(assert (=> b!1382302 (=> (not res!924004) (not e!783529))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382302 (= res!924004 (and (= (size!46116 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46116 a!2971))))))

(declare-fun b!1382305 () Bool)

(assert (=> b!1382305 (= e!783529 false)))

(declare-fun lt!608353 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94376 (_ BitVec 32)) Bool)

(assert (=> b!1382305 (= lt!608353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382303 () Bool)

(declare-fun res!924006 () Bool)

(assert (=> b!1382303 (=> (not res!924006) (not e!783529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382303 (= res!924006 (validKeyInArray!0 (select (arr!45565 a!2971) i!1094)))))

(assert (= (and start!118096 res!924003) b!1382302))

(assert (= (and b!1382302 res!924004) b!1382303))

(assert (= (and b!1382303 res!924006) b!1382304))

(assert (= (and b!1382304 res!924005) b!1382305))

(declare-fun m!1267503 () Bool)

(assert (=> b!1382304 m!1267503))

(declare-fun m!1267505 () Bool)

(assert (=> start!118096 m!1267505))

(declare-fun m!1267507 () Bool)

(assert (=> start!118096 m!1267507))

(declare-fun m!1267509 () Bool)

(assert (=> b!1382305 m!1267509))

(declare-fun m!1267511 () Bool)

(assert (=> b!1382303 m!1267511))

(assert (=> b!1382303 m!1267511))

(declare-fun m!1267513 () Bool)

(assert (=> b!1382303 m!1267513))

(push 1)

(assert (not b!1382305))

(assert (not start!118096))

(assert (not b!1382304))

(assert (not b!1382303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

