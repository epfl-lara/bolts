; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118084 () Bool)

(assert start!118084)

(declare-fun b!1382233 () Bool)

(declare-fun e!783494 () Bool)

(assert (=> b!1382233 (= e!783494 false)))

(declare-fun lt!608335 () Bool)

(declare-datatypes ((array!94364 0))(
  ( (array!94365 (arr!45559 (Array (_ BitVec 32) (_ BitVec 64))) (size!46110 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94364)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94364 (_ BitVec 32)) Bool)

(assert (=> b!1382233 (= lt!608335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382231 () Bool)

(declare-fun res!923934 () Bool)

(assert (=> b!1382231 (=> (not res!923934) (not e!783494))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382231 (= res!923934 (validKeyInArray!0 (select (arr!45559 a!2971) i!1094)))))

(declare-fun res!923933 () Bool)

(assert (=> start!118084 (=> (not res!923933) (not e!783494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118084 (= res!923933 (validMask!0 mask!3034))))

(assert (=> start!118084 e!783494))

(assert (=> start!118084 true))

(declare-fun array_inv!34504 (array!94364) Bool)

(assert (=> start!118084 (array_inv!34504 a!2971)))

(declare-fun b!1382230 () Bool)

(declare-fun res!923931 () Bool)

(assert (=> b!1382230 (=> (not res!923931) (not e!783494))))

(assert (=> b!1382230 (= res!923931 (and (= (size!46110 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46110 a!2971))))))

(declare-fun b!1382232 () Bool)

(declare-fun res!923932 () Bool)

(assert (=> b!1382232 (=> (not res!923932) (not e!783494))))

(declare-datatypes ((List!32273 0))(
  ( (Nil!32270) (Cons!32269 (h!33478 (_ BitVec 64)) (t!46974 List!32273)) )
))
(declare-fun arrayNoDuplicates!0 (array!94364 (_ BitVec 32) List!32273) Bool)

(assert (=> b!1382232 (= res!923932 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32270))))

(assert (= (and start!118084 res!923933) b!1382230))

(assert (= (and b!1382230 res!923931) b!1382231))

(assert (= (and b!1382231 res!923934) b!1382232))

(assert (= (and b!1382232 res!923932) b!1382233))

(declare-fun m!1267431 () Bool)

(assert (=> b!1382233 m!1267431))

(declare-fun m!1267433 () Bool)

(assert (=> b!1382231 m!1267433))

(assert (=> b!1382231 m!1267433))

(declare-fun m!1267435 () Bool)

(assert (=> b!1382231 m!1267435))

(declare-fun m!1267437 () Bool)

(assert (=> start!118084 m!1267437))

(declare-fun m!1267439 () Bool)

(assert (=> start!118084 m!1267439))

(declare-fun m!1267441 () Bool)

(assert (=> b!1382232 m!1267441))

(push 1)

(assert (not b!1382233))

(assert (not start!118084))

(assert (not b!1382232))

(assert (not b!1382231))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

