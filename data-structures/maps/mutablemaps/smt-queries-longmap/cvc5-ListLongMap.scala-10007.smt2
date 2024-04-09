; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118120 () Bool)

(assert start!118120)

(declare-fun b!1382455 () Bool)

(declare-fun res!924158 () Bool)

(declare-fun e!783601 () Bool)

(assert (=> b!1382455 (=> (not res!924158) (not e!783601))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94400 0))(
  ( (array!94401 (arr!45577 (Array (_ BitVec 32) (_ BitVec 64))) (size!46128 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94400)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382455 (= res!924158 (and (= (size!46128 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46128 a!2971))))))

(declare-fun b!1382456 () Bool)

(declare-fun res!924157 () Bool)

(assert (=> b!1382456 (=> (not res!924157) (not e!783601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382456 (= res!924157 (validKeyInArray!0 (select (arr!45577 a!2971) i!1094)))))

(declare-fun b!1382458 () Bool)

(assert (=> b!1382458 (= e!783601 false)))

(declare-fun lt!608380 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94400 (_ BitVec 32)) Bool)

(assert (=> b!1382458 (= lt!608380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382457 () Bool)

(declare-fun res!924159 () Bool)

(assert (=> b!1382457 (=> (not res!924159) (not e!783601))))

(declare-datatypes ((List!32291 0))(
  ( (Nil!32288) (Cons!32287 (h!33496 (_ BitVec 64)) (t!46992 List!32291)) )
))
(declare-fun arrayNoDuplicates!0 (array!94400 (_ BitVec 32) List!32291) Bool)

(assert (=> b!1382457 (= res!924159 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32288))))

(declare-fun res!924156 () Bool)

(assert (=> start!118120 (=> (not res!924156) (not e!783601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118120 (= res!924156 (validMask!0 mask!3034))))

(assert (=> start!118120 e!783601))

(assert (=> start!118120 true))

(declare-fun array_inv!34522 (array!94400) Bool)

(assert (=> start!118120 (array_inv!34522 a!2971)))

(assert (= (and start!118120 res!924156) b!1382455))

(assert (= (and b!1382455 res!924158) b!1382456))

(assert (= (and b!1382456 res!924157) b!1382457))

(assert (= (and b!1382457 res!924159) b!1382458))

(declare-fun m!1267647 () Bool)

(assert (=> b!1382456 m!1267647))

(assert (=> b!1382456 m!1267647))

(declare-fun m!1267649 () Bool)

(assert (=> b!1382456 m!1267649))

(declare-fun m!1267651 () Bool)

(assert (=> b!1382458 m!1267651))

(declare-fun m!1267653 () Bool)

(assert (=> b!1382457 m!1267653))

(declare-fun m!1267655 () Bool)

(assert (=> start!118120 m!1267655))

(declare-fun m!1267657 () Bool)

(assert (=> start!118120 m!1267657))

(push 1)

(assert (not b!1382458))

(assert (not start!118120))

(assert (not b!1382456))

(assert (not b!1382457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

