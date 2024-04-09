; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117938 () Bool)

(assert start!117938)

(declare-fun res!923121 () Bool)

(declare-fun e!783082 () Bool)

(assert (=> start!117938 (=> (not res!923121) (not e!783082))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117938 (= res!923121 (validMask!0 mask!3034))))

(assert (=> start!117938 e!783082))

(assert (=> start!117938 true))

(declare-datatypes ((array!94245 0))(
  ( (array!94246 (arr!45501 (Array (_ BitVec 32) (_ BitVec 64))) (size!46052 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94245)

(declare-fun array_inv!34446 (array!94245) Bool)

(assert (=> start!117938 (array_inv!34446 a!2971)))

(declare-fun b!1381382 () Bool)

(declare-fun res!923119 () Bool)

(assert (=> b!1381382 (=> (not res!923119) (not e!783082))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381382 (= res!923119 (and (= (size!46052 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46052 a!2971))))))

(declare-fun b!1381383 () Bool)

(declare-fun res!923120 () Bool)

(assert (=> b!1381383 (=> (not res!923120) (not e!783082))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381383 (= res!923120 (validKeyInArray!0 (select (arr!45501 a!2971) i!1094)))))

(declare-fun b!1381384 () Bool)

(assert (=> b!1381384 (= e!783082 false)))

(declare-fun lt!608152 () Bool)

(declare-datatypes ((List!32215 0))(
  ( (Nil!32212) (Cons!32211 (h!33420 (_ BitVec 64)) (t!46916 List!32215)) )
))
(declare-fun arrayNoDuplicates!0 (array!94245 (_ BitVec 32) List!32215) Bool)

(assert (=> b!1381384 (= lt!608152 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32212))))

(assert (= (and start!117938 res!923121) b!1381382))

(assert (= (and b!1381382 res!923119) b!1381383))

(assert (= (and b!1381383 res!923120) b!1381384))

(declare-fun m!1266629 () Bool)

(assert (=> start!117938 m!1266629))

(declare-fun m!1266631 () Bool)

(assert (=> start!117938 m!1266631))

(declare-fun m!1266633 () Bool)

(assert (=> b!1381383 m!1266633))

(assert (=> b!1381383 m!1266633))

(declare-fun m!1266635 () Bool)

(assert (=> b!1381383 m!1266635))

(declare-fun m!1266637 () Bool)

(assert (=> b!1381384 m!1266637))

(push 1)

(assert (not b!1381384))

(assert (not start!117938))

(assert (not b!1381383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

