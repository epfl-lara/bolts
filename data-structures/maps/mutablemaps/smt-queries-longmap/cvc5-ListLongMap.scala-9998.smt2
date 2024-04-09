; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118066 () Bool)

(assert start!118066)

(declare-fun b!1382122 () Bool)

(declare-fun res!923823 () Bool)

(declare-fun e!783440 () Bool)

(assert (=> b!1382122 (=> (not res!923823) (not e!783440))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94346 0))(
  ( (array!94347 (arr!45550 (Array (_ BitVec 32) (_ BitVec 64))) (size!46101 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94346)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382122 (= res!923823 (and (= (size!46101 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46101 a!2971))))))

(declare-fun res!923825 () Bool)

(assert (=> start!118066 (=> (not res!923825) (not e!783440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118066 (= res!923825 (validMask!0 mask!3034))))

(assert (=> start!118066 e!783440))

(assert (=> start!118066 true))

(declare-fun array_inv!34495 (array!94346) Bool)

(assert (=> start!118066 (array_inv!34495 a!2971)))

(declare-fun b!1382124 () Bool)

(declare-fun res!923824 () Bool)

(assert (=> b!1382124 (=> (not res!923824) (not e!783440))))

(declare-datatypes ((List!32264 0))(
  ( (Nil!32261) (Cons!32260 (h!33469 (_ BitVec 64)) (t!46965 List!32264)) )
))
(declare-fun arrayNoDuplicates!0 (array!94346 (_ BitVec 32) List!32264) Bool)

(assert (=> b!1382124 (= res!923824 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32261))))

(declare-fun b!1382123 () Bool)

(declare-fun res!923826 () Bool)

(assert (=> b!1382123 (=> (not res!923826) (not e!783440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382123 (= res!923826 (validKeyInArray!0 (select (arr!45550 a!2971) i!1094)))))

(declare-fun b!1382125 () Bool)

(assert (=> b!1382125 (= e!783440 false)))

(declare-fun lt!608308 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94346 (_ BitVec 32)) Bool)

(assert (=> b!1382125 (= lt!608308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118066 res!923825) b!1382122))

(assert (= (and b!1382122 res!923823) b!1382123))

(assert (= (and b!1382123 res!923826) b!1382124))

(assert (= (and b!1382124 res!923824) b!1382125))

(declare-fun m!1267323 () Bool)

(assert (=> start!118066 m!1267323))

(declare-fun m!1267325 () Bool)

(assert (=> start!118066 m!1267325))

(declare-fun m!1267327 () Bool)

(assert (=> b!1382124 m!1267327))

(declare-fun m!1267329 () Bool)

(assert (=> b!1382123 m!1267329))

(assert (=> b!1382123 m!1267329))

(declare-fun m!1267331 () Bool)

(assert (=> b!1382123 m!1267331))

(declare-fun m!1267333 () Bool)

(assert (=> b!1382125 m!1267333))

(push 1)

(assert (not b!1382125))

(assert (not b!1382123))

(assert (not start!118066))

(assert (not b!1382124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

