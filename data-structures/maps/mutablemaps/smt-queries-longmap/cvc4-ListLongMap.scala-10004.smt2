; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118106 () Bool)

(assert start!118106)

(declare-fun res!924066 () Bool)

(declare-fun e!783560 () Bool)

(assert (=> start!118106 (=> (not res!924066) (not e!783560))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118106 (= res!924066 (validMask!0 mask!3034))))

(assert (=> start!118106 e!783560))

(assert (=> start!118106 true))

(declare-datatypes ((array!94386 0))(
  ( (array!94387 (arr!45570 (Array (_ BitVec 32) (_ BitVec 64))) (size!46121 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94386)

(declare-fun array_inv!34515 (array!94386) Bool)

(assert (=> start!118106 (array_inv!34515 a!2971)))

(declare-fun b!1382363 () Bool)

(declare-fun res!924064 () Bool)

(assert (=> b!1382363 (=> (not res!924064) (not e!783560))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382363 (= res!924064 (validKeyInArray!0 (select (arr!45570 a!2971) i!1094)))))

(declare-fun b!1382364 () Bool)

(declare-fun res!924065 () Bool)

(assert (=> b!1382364 (=> (not res!924065) (not e!783560))))

(declare-datatypes ((List!32284 0))(
  ( (Nil!32281) (Cons!32280 (h!33489 (_ BitVec 64)) (t!46985 List!32284)) )
))
(declare-fun arrayNoDuplicates!0 (array!94386 (_ BitVec 32) List!32284) Bool)

(assert (=> b!1382364 (= res!924065 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32281))))

(declare-fun b!1382362 () Bool)

(declare-fun res!924063 () Bool)

(assert (=> b!1382362 (=> (not res!924063) (not e!783560))))

(assert (=> b!1382362 (= res!924063 (and (= (size!46121 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46121 a!2971))))))

(declare-fun b!1382365 () Bool)

(assert (=> b!1382365 (= e!783560 false)))

(declare-fun lt!608368 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94386 (_ BitVec 32)) Bool)

(assert (=> b!1382365 (= lt!608368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118106 res!924066) b!1382362))

(assert (= (and b!1382362 res!924063) b!1382363))

(assert (= (and b!1382363 res!924064) b!1382364))

(assert (= (and b!1382364 res!924065) b!1382365))

(declare-fun m!1267563 () Bool)

(assert (=> start!118106 m!1267563))

(declare-fun m!1267565 () Bool)

(assert (=> start!118106 m!1267565))

(declare-fun m!1267567 () Bool)

(assert (=> b!1382363 m!1267567))

(assert (=> b!1382363 m!1267567))

(declare-fun m!1267569 () Bool)

(assert (=> b!1382363 m!1267569))

(declare-fun m!1267571 () Bool)

(assert (=> b!1382364 m!1267571))

(declare-fun m!1267573 () Bool)

(assert (=> b!1382365 m!1267573))

(push 1)

(assert (not start!118106))

(assert (not b!1382364))

(assert (not b!1382363))

(assert (not b!1382365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

