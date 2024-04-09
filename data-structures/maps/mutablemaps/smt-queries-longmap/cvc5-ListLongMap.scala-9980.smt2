; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117928 () Bool)

(assert start!117928)

(declare-fun res!923074 () Bool)

(declare-fun e!783052 () Bool)

(assert (=> start!117928 (=> (not res!923074) (not e!783052))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117928 (= res!923074 (validMask!0 mask!3034))))

(assert (=> start!117928 e!783052))

(assert (=> start!117928 true))

(declare-datatypes ((array!94235 0))(
  ( (array!94236 (arr!45496 (Array (_ BitVec 32) (_ BitVec 64))) (size!46047 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94235)

(declare-fun array_inv!34441 (array!94235) Bool)

(assert (=> start!117928 (array_inv!34441 a!2971)))

(declare-fun b!1381337 () Bool)

(declare-fun res!923076 () Bool)

(assert (=> b!1381337 (=> (not res!923076) (not e!783052))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381337 (= res!923076 (and (= (size!46047 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46047 a!2971))))))

(declare-fun b!1381338 () Bool)

(declare-fun res!923075 () Bool)

(assert (=> b!1381338 (=> (not res!923075) (not e!783052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381338 (= res!923075 (validKeyInArray!0 (select (arr!45496 a!2971) i!1094)))))

(declare-fun b!1381339 () Bool)

(assert (=> b!1381339 (= e!783052 false)))

(declare-fun lt!608137 () Bool)

(declare-datatypes ((List!32210 0))(
  ( (Nil!32207) (Cons!32206 (h!33415 (_ BitVec 64)) (t!46911 List!32210)) )
))
(declare-fun arrayNoDuplicates!0 (array!94235 (_ BitVec 32) List!32210) Bool)

(assert (=> b!1381339 (= lt!608137 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32207))))

(assert (= (and start!117928 res!923074) b!1381337))

(assert (= (and b!1381337 res!923076) b!1381338))

(assert (= (and b!1381338 res!923075) b!1381339))

(declare-fun m!1266579 () Bool)

(assert (=> start!117928 m!1266579))

(declare-fun m!1266581 () Bool)

(assert (=> start!117928 m!1266581))

(declare-fun m!1266583 () Bool)

(assert (=> b!1381338 m!1266583))

(assert (=> b!1381338 m!1266583))

(declare-fun m!1266585 () Bool)

(assert (=> b!1381338 m!1266585))

(declare-fun m!1266587 () Bool)

(assert (=> b!1381339 m!1266587))

(push 1)

(assert (not start!117928))

(assert (not b!1381339))

(assert (not b!1381338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

