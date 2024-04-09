; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118076 () Bool)

(assert start!118076)

(declare-fun b!1382183 () Bool)

(declare-fun res!923885 () Bool)

(declare-fun e!783470 () Bool)

(assert (=> b!1382183 (=> (not res!923885) (not e!783470))))

(declare-datatypes ((array!94356 0))(
  ( (array!94357 (arr!45555 (Array (_ BitVec 32) (_ BitVec 64))) (size!46106 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94356)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382183 (= res!923885 (validKeyInArray!0 (select (arr!45555 a!2971) i!1094)))))

(declare-fun res!923883 () Bool)

(assert (=> start!118076 (=> (not res!923883) (not e!783470))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118076 (= res!923883 (validMask!0 mask!3034))))

(assert (=> start!118076 e!783470))

(assert (=> start!118076 true))

(declare-fun array_inv!34500 (array!94356) Bool)

(assert (=> start!118076 (array_inv!34500 a!2971)))

(declare-fun b!1382184 () Bool)

(declare-fun res!923884 () Bool)

(assert (=> b!1382184 (=> (not res!923884) (not e!783470))))

(declare-datatypes ((List!32269 0))(
  ( (Nil!32266) (Cons!32265 (h!33474 (_ BitVec 64)) (t!46970 List!32269)) )
))
(declare-fun arrayNoDuplicates!0 (array!94356 (_ BitVec 32) List!32269) Bool)

(assert (=> b!1382184 (= res!923884 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32266))))

(declare-fun b!1382182 () Bool)

(declare-fun res!923886 () Bool)

(assert (=> b!1382182 (=> (not res!923886) (not e!783470))))

(assert (=> b!1382182 (= res!923886 (and (= (size!46106 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46106 a!2971))))))

(declare-fun b!1382185 () Bool)

(assert (=> b!1382185 (= e!783470 false)))

(declare-fun lt!608323 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94356 (_ BitVec 32)) Bool)

(assert (=> b!1382185 (= lt!608323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118076 res!923883) b!1382182))

(assert (= (and b!1382182 res!923886) b!1382183))

(assert (= (and b!1382183 res!923885) b!1382184))

(assert (= (and b!1382184 res!923884) b!1382185))

(declare-fun m!1267383 () Bool)

(assert (=> b!1382183 m!1267383))

(assert (=> b!1382183 m!1267383))

(declare-fun m!1267385 () Bool)

(assert (=> b!1382183 m!1267385))

(declare-fun m!1267387 () Bool)

(assert (=> start!118076 m!1267387))

(declare-fun m!1267389 () Bool)

(assert (=> start!118076 m!1267389))

(declare-fun m!1267391 () Bool)

(assert (=> b!1382184 m!1267391))

(declare-fun m!1267393 () Bool)

(assert (=> b!1382185 m!1267393))

(push 1)

(assert (not b!1382183))

(assert (not start!118076))

(assert (not b!1382184))

(assert (not b!1382185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

