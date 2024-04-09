; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118090 () Bool)

(assert start!118090)

(declare-fun b!1382267 () Bool)

(declare-fun res!923970 () Bool)

(declare-fun e!783512 () Bool)

(assert (=> b!1382267 (=> (not res!923970) (not e!783512))))

(declare-datatypes ((array!94370 0))(
  ( (array!94371 (arr!45562 (Array (_ BitVec 32) (_ BitVec 64))) (size!46113 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94370)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382267 (= res!923970 (validKeyInArray!0 (select (arr!45562 a!2971) i!1094)))))

(declare-fun b!1382269 () Bool)

(assert (=> b!1382269 (= e!783512 false)))

(declare-fun lt!608344 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94370 (_ BitVec 32)) Bool)

(assert (=> b!1382269 (= lt!608344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382268 () Bool)

(declare-fun res!923967 () Bool)

(assert (=> b!1382268 (=> (not res!923967) (not e!783512))))

(declare-datatypes ((List!32276 0))(
  ( (Nil!32273) (Cons!32272 (h!33481 (_ BitVec 64)) (t!46977 List!32276)) )
))
(declare-fun arrayNoDuplicates!0 (array!94370 (_ BitVec 32) List!32276) Bool)

(assert (=> b!1382268 (= res!923967 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32273))))

(declare-fun res!923968 () Bool)

(assert (=> start!118090 (=> (not res!923968) (not e!783512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118090 (= res!923968 (validMask!0 mask!3034))))

(assert (=> start!118090 e!783512))

(assert (=> start!118090 true))

(declare-fun array_inv!34507 (array!94370) Bool)

(assert (=> start!118090 (array_inv!34507 a!2971)))

(declare-fun b!1382266 () Bool)

(declare-fun res!923969 () Bool)

(assert (=> b!1382266 (=> (not res!923969) (not e!783512))))

(assert (=> b!1382266 (= res!923969 (and (= (size!46113 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46113 a!2971))))))

(assert (= (and start!118090 res!923968) b!1382266))

(assert (= (and b!1382266 res!923969) b!1382267))

(assert (= (and b!1382267 res!923970) b!1382268))

(assert (= (and b!1382268 res!923967) b!1382269))

(declare-fun m!1267467 () Bool)

(assert (=> b!1382267 m!1267467))

(assert (=> b!1382267 m!1267467))

(declare-fun m!1267469 () Bool)

(assert (=> b!1382267 m!1267469))

(declare-fun m!1267471 () Bool)

(assert (=> b!1382269 m!1267471))

(declare-fun m!1267473 () Bool)

(assert (=> b!1382268 m!1267473))

(declare-fun m!1267475 () Bool)

(assert (=> start!118090 m!1267475))

(declare-fun m!1267477 () Bool)

(assert (=> start!118090 m!1267477))

(push 1)

(assert (not b!1382269))

(assert (not start!118090))

(assert (not b!1382268))

(assert (not b!1382267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

