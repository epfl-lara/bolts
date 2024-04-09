; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117982 () Bool)

(assert start!117982)

(declare-fun b!1381637 () Bool)

(declare-fun res!923374 () Bool)

(declare-fun e!783215 () Bool)

(assert (=> b!1381637 (=> (not res!923374) (not e!783215))))

(declare-datatypes ((array!94289 0))(
  ( (array!94290 (arr!45523 (Array (_ BitVec 32) (_ BitVec 64))) (size!46074 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94289)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381637 (= res!923374 (validKeyInArray!0 (select (arr!45523 a!2971) i!1094)))))

(declare-fun b!1381638 () Bool)

(declare-fun res!923373 () Bool)

(assert (=> b!1381638 (=> (not res!923373) (not e!783215))))

(declare-datatypes ((List!32237 0))(
  ( (Nil!32234) (Cons!32233 (h!33442 (_ BitVec 64)) (t!46938 List!32237)) )
))
(declare-fun arrayNoDuplicates!0 (array!94289 (_ BitVec 32) List!32237) Bool)

(assert (=> b!1381638 (= res!923373 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32234))))

(declare-fun res!923376 () Bool)

(assert (=> start!117982 (=> (not res!923376) (not e!783215))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117982 (= res!923376 (validMask!0 mask!3034))))

(assert (=> start!117982 e!783215))

(assert (=> start!117982 true))

(declare-fun array_inv!34468 (array!94289) Bool)

(assert (=> start!117982 (array_inv!34468 a!2971)))

(declare-fun b!1381639 () Bool)

(assert (=> b!1381639 (= e!783215 false)))

(declare-fun lt!608209 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94289 (_ BitVec 32)) Bool)

(assert (=> b!1381639 (= lt!608209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381636 () Bool)

(declare-fun res!923375 () Bool)

(assert (=> b!1381636 (=> (not res!923375) (not e!783215))))

(assert (=> b!1381636 (= res!923375 (and (= (size!46074 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46074 a!2971))))))

(assert (= (and start!117982 res!923376) b!1381636))

(assert (= (and b!1381636 res!923375) b!1381637))

(assert (= (and b!1381637 res!923374) b!1381638))

(assert (= (and b!1381638 res!923373) b!1381639))

(declare-fun m!1266879 () Bool)

(assert (=> b!1381637 m!1266879))

(assert (=> b!1381637 m!1266879))

(declare-fun m!1266881 () Bool)

(assert (=> b!1381637 m!1266881))

(declare-fun m!1266883 () Bool)

(assert (=> b!1381638 m!1266883))

(declare-fun m!1266885 () Bool)

(assert (=> start!117982 m!1266885))

(declare-fun m!1266887 () Bool)

(assert (=> start!117982 m!1266887))

(declare-fun m!1266889 () Bool)

(assert (=> b!1381639 m!1266889))

(push 1)

(assert (not b!1381637))

(assert (not start!117982))

(assert (not b!1381638))

(assert (not b!1381639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

