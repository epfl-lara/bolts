; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118094 () Bool)

(assert start!118094)

(declare-fun b!1382293 () Bool)

(declare-fun e!783523 () Bool)

(assert (=> b!1382293 (= e!783523 false)))

(declare-fun lt!608350 () Bool)

(declare-datatypes ((array!94374 0))(
  ( (array!94375 (arr!45564 (Array (_ BitVec 32) (_ BitVec 64))) (size!46115 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94374)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94374 (_ BitVec 32)) Bool)

(assert (=> b!1382293 (= lt!608350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382291 () Bool)

(declare-fun res!923993 () Bool)

(assert (=> b!1382291 (=> (not res!923993) (not e!783523))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382291 (= res!923993 (validKeyInArray!0 (select (arr!45564 a!2971) i!1094)))))

(declare-fun b!1382292 () Bool)

(declare-fun res!923991 () Bool)

(assert (=> b!1382292 (=> (not res!923991) (not e!783523))))

(declare-datatypes ((List!32278 0))(
  ( (Nil!32275) (Cons!32274 (h!33483 (_ BitVec 64)) (t!46979 List!32278)) )
))
(declare-fun arrayNoDuplicates!0 (array!94374 (_ BitVec 32) List!32278) Bool)

(assert (=> b!1382292 (= res!923991 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32275))))

(declare-fun b!1382290 () Bool)

(declare-fun res!923992 () Bool)

(assert (=> b!1382290 (=> (not res!923992) (not e!783523))))

(assert (=> b!1382290 (= res!923992 (and (= (size!46115 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46115 a!2971))))))

(declare-fun res!923994 () Bool)

(assert (=> start!118094 (=> (not res!923994) (not e!783523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118094 (= res!923994 (validMask!0 mask!3034))))

(assert (=> start!118094 e!783523))

(assert (=> start!118094 true))

(declare-fun array_inv!34509 (array!94374) Bool)

(assert (=> start!118094 (array_inv!34509 a!2971)))

(assert (= (and start!118094 res!923994) b!1382290))

(assert (= (and b!1382290 res!923992) b!1382291))

(assert (= (and b!1382291 res!923993) b!1382292))

(assert (= (and b!1382292 res!923991) b!1382293))

(declare-fun m!1267491 () Bool)

(assert (=> b!1382293 m!1267491))

(declare-fun m!1267493 () Bool)

(assert (=> b!1382291 m!1267493))

(assert (=> b!1382291 m!1267493))

(declare-fun m!1267495 () Bool)

(assert (=> b!1382291 m!1267495))

(declare-fun m!1267497 () Bool)

(assert (=> b!1382292 m!1267497))

(declare-fun m!1267499 () Bool)

(assert (=> start!118094 m!1267499))

(declare-fun m!1267501 () Bool)

(assert (=> start!118094 m!1267501))

(push 1)

(assert (not b!1382293))

(assert (not start!118094))

(assert (not b!1382292))

(assert (not b!1382291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

