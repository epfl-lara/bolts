; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118112 () Bool)

(assert start!118112)

(declare-fun b!1382406 () Bool)

(declare-fun e!783578 () Bool)

(declare-datatypes ((array!94392 0))(
  ( (array!94393 (arr!45573 (Array (_ BitVec 32) (_ BitVec 64))) (size!46124 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94392)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382406 (= e!783578 (and (not (= (select (arr!45573 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45573 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!46124 a!2971))))))

(declare-fun b!1382407 () Bool)

(declare-fun res!924110 () Bool)

(assert (=> b!1382407 (=> (not res!924110) (not e!783578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382407 (= res!924110 (validKeyInArray!0 (select (arr!45573 a!2971) i!1094)))))

(declare-fun b!1382408 () Bool)

(declare-fun res!924109 () Bool)

(assert (=> b!1382408 (=> (not res!924109) (not e!783578))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1382408 (= res!924109 (and (= (size!46124 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46124 a!2971))))))

(declare-fun b!1382409 () Bool)

(declare-fun res!924107 () Bool)

(assert (=> b!1382409 (=> (not res!924107) (not e!783578))))

(declare-datatypes ((List!32287 0))(
  ( (Nil!32284) (Cons!32283 (h!33492 (_ BitVec 64)) (t!46988 List!32287)) )
))
(declare-fun arrayNoDuplicates!0 (array!94392 (_ BitVec 32) List!32287) Bool)

(assert (=> b!1382409 (= res!924107 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32284))))

(declare-fun b!1382410 () Bool)

(declare-fun res!924111 () Bool)

(assert (=> b!1382410 (=> (not res!924111) (not e!783578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94392 (_ BitVec 32)) Bool)

(assert (=> b!1382410 (= res!924111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!924108 () Bool)

(assert (=> start!118112 (=> (not res!924108) (not e!783578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118112 (= res!924108 (validMask!0 mask!3034))))

(assert (=> start!118112 e!783578))

(assert (=> start!118112 true))

(declare-fun array_inv!34518 (array!94392) Bool)

(assert (=> start!118112 (array_inv!34518 a!2971)))

(assert (= (and start!118112 res!924108) b!1382408))

(assert (= (and b!1382408 res!924109) b!1382407))

(assert (= (and b!1382407 res!924110) b!1382409))

(assert (= (and b!1382409 res!924107) b!1382410))

(assert (= (and b!1382410 res!924111) b!1382406))

(declare-fun m!1267599 () Bool)

(assert (=> start!118112 m!1267599))

(declare-fun m!1267601 () Bool)

(assert (=> start!118112 m!1267601))

(declare-fun m!1267603 () Bool)

(assert (=> b!1382406 m!1267603))

(declare-fun m!1267605 () Bool)

(assert (=> b!1382410 m!1267605))

(declare-fun m!1267607 () Bool)

(assert (=> b!1382409 m!1267607))

(assert (=> b!1382407 m!1267603))

(assert (=> b!1382407 m!1267603))

(declare-fun m!1267609 () Bool)

(assert (=> b!1382407 m!1267609))

(push 1)

(assert (not b!1382410))

(assert (not b!1382409))

(assert (not b!1382407))

(assert (not start!118112))

(check-sat)

