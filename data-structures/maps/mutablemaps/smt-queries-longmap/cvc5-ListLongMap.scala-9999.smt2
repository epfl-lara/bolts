; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118072 () Bool)

(assert start!118072)

(declare-fun b!1382160 () Bool)

(declare-fun res!923861 () Bool)

(declare-fun e!783458 () Bool)

(assert (=> b!1382160 (=> (not res!923861) (not e!783458))))

(declare-datatypes ((array!94352 0))(
  ( (array!94353 (arr!45553 (Array (_ BitVec 32) (_ BitVec 64))) (size!46104 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94352)

(declare-datatypes ((List!32267 0))(
  ( (Nil!32264) (Cons!32263 (h!33472 (_ BitVec 64)) (t!46968 List!32267)) )
))
(declare-fun arrayNoDuplicates!0 (array!94352 (_ BitVec 32) List!32267) Bool)

(assert (=> b!1382160 (= res!923861 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32264))))

(declare-fun b!1382161 () Bool)

(assert (=> b!1382161 (= e!783458 false)))

(declare-fun lt!608317 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94352 (_ BitVec 32)) Bool)

(assert (=> b!1382161 (= lt!608317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382158 () Bool)

(declare-fun res!923859 () Bool)

(assert (=> b!1382158 (=> (not res!923859) (not e!783458))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382158 (= res!923859 (and (= (size!46104 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46104 a!2971))))))

(declare-fun res!923862 () Bool)

(assert (=> start!118072 (=> (not res!923862) (not e!783458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118072 (= res!923862 (validMask!0 mask!3034))))

(assert (=> start!118072 e!783458))

(assert (=> start!118072 true))

(declare-fun array_inv!34498 (array!94352) Bool)

(assert (=> start!118072 (array_inv!34498 a!2971)))

(declare-fun b!1382159 () Bool)

(declare-fun res!923860 () Bool)

(assert (=> b!1382159 (=> (not res!923860) (not e!783458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382159 (= res!923860 (validKeyInArray!0 (select (arr!45553 a!2971) i!1094)))))

(assert (= (and start!118072 res!923862) b!1382158))

(assert (= (and b!1382158 res!923859) b!1382159))

(assert (= (and b!1382159 res!923860) b!1382160))

(assert (= (and b!1382160 res!923861) b!1382161))

(declare-fun m!1267359 () Bool)

(assert (=> b!1382160 m!1267359))

(declare-fun m!1267361 () Bool)

(assert (=> b!1382161 m!1267361))

(declare-fun m!1267363 () Bool)

(assert (=> start!118072 m!1267363))

(declare-fun m!1267365 () Bool)

(assert (=> start!118072 m!1267365))

(declare-fun m!1267367 () Bool)

(assert (=> b!1382159 m!1267367))

(assert (=> b!1382159 m!1267367))

(declare-fun m!1267369 () Bool)

(assert (=> b!1382159 m!1267369))

(push 1)

(assert (not b!1382161))

(assert (not b!1382159))

(assert (not start!118072))

(assert (not b!1382160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

