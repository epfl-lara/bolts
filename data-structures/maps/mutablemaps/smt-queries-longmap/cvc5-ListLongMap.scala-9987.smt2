; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117970 () Bool)

(assert start!117970)

(declare-fun b!1381564 () Bool)

(declare-fun res!923302 () Bool)

(declare-fun e!783179 () Bool)

(assert (=> b!1381564 (=> (not res!923302) (not e!783179))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94277 0))(
  ( (array!94278 (arr!45517 (Array (_ BitVec 32) (_ BitVec 64))) (size!46068 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94277)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381564 (= res!923302 (and (= (size!46068 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46068 a!2971))))))

(declare-fun res!923303 () Bool)

(assert (=> start!117970 (=> (not res!923303) (not e!783179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117970 (= res!923303 (validMask!0 mask!3034))))

(assert (=> start!117970 e!783179))

(assert (=> start!117970 true))

(declare-fun array_inv!34462 (array!94277) Bool)

(assert (=> start!117970 (array_inv!34462 a!2971)))

(declare-fun b!1381565 () Bool)

(declare-fun res!923301 () Bool)

(assert (=> b!1381565 (=> (not res!923301) (not e!783179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381565 (= res!923301 (validKeyInArray!0 (select (arr!45517 a!2971) i!1094)))))

(declare-fun b!1381567 () Bool)

(assert (=> b!1381567 (= e!783179 false)))

(declare-fun lt!608191 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94277 (_ BitVec 32)) Bool)

(assert (=> b!1381567 (= lt!608191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381566 () Bool)

(declare-fun res!923304 () Bool)

(assert (=> b!1381566 (=> (not res!923304) (not e!783179))))

(declare-datatypes ((List!32231 0))(
  ( (Nil!32228) (Cons!32227 (h!33436 (_ BitVec 64)) (t!46932 List!32231)) )
))
(declare-fun arrayNoDuplicates!0 (array!94277 (_ BitVec 32) List!32231) Bool)

(assert (=> b!1381566 (= res!923304 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32228))))

(assert (= (and start!117970 res!923303) b!1381564))

(assert (= (and b!1381564 res!923302) b!1381565))

(assert (= (and b!1381565 res!923301) b!1381566))

(assert (= (and b!1381566 res!923304) b!1381567))

(declare-fun m!1266807 () Bool)

(assert (=> start!117970 m!1266807))

(declare-fun m!1266809 () Bool)

(assert (=> start!117970 m!1266809))

(declare-fun m!1266811 () Bool)

(assert (=> b!1381565 m!1266811))

(assert (=> b!1381565 m!1266811))

(declare-fun m!1266813 () Bool)

(assert (=> b!1381565 m!1266813))

(declare-fun m!1266815 () Bool)

(assert (=> b!1381567 m!1266815))

(declare-fun m!1266817 () Bool)

(assert (=> b!1381566 m!1266817))

(push 1)

(assert (not b!1381566))

(assert (not start!117970))

(assert (not b!1381565))

(assert (not b!1381567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

