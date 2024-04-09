; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118110 () Bool)

(assert start!118110)

(declare-fun b!1382391 () Bool)

(declare-fun res!924092 () Bool)

(declare-fun e!783572 () Bool)

(assert (=> b!1382391 (=> (not res!924092) (not e!783572))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94390 0))(
  ( (array!94391 (arr!45572 (Array (_ BitVec 32) (_ BitVec 64))) (size!46123 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94390)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382391 (= res!924092 (and (= (size!46123 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46123 a!2971))))))

(declare-fun b!1382392 () Bool)

(assert (=> b!1382392 (= e!783572 (and (not (= (select (arr!45572 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45572 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!46123 a!2971))))))

(declare-fun b!1382393 () Bool)

(declare-fun res!924094 () Bool)

(assert (=> b!1382393 (=> (not res!924094) (not e!783572))))

(declare-datatypes ((List!32286 0))(
  ( (Nil!32283) (Cons!32282 (h!33491 (_ BitVec 64)) (t!46987 List!32286)) )
))
(declare-fun arrayNoDuplicates!0 (array!94390 (_ BitVec 32) List!32286) Bool)

(assert (=> b!1382393 (= res!924094 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32283))))

(declare-fun res!924096 () Bool)

(assert (=> start!118110 (=> (not res!924096) (not e!783572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118110 (= res!924096 (validMask!0 mask!3034))))

(assert (=> start!118110 e!783572))

(assert (=> start!118110 true))

(declare-fun array_inv!34517 (array!94390) Bool)

(assert (=> start!118110 (array_inv!34517 a!2971)))

(declare-fun b!1382394 () Bool)

(declare-fun res!924093 () Bool)

(assert (=> b!1382394 (=> (not res!924093) (not e!783572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382394 (= res!924093 (validKeyInArray!0 (select (arr!45572 a!2971) i!1094)))))

(declare-fun b!1382395 () Bool)

(declare-fun res!924095 () Bool)

(assert (=> b!1382395 (=> (not res!924095) (not e!783572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94390 (_ BitVec 32)) Bool)

(assert (=> b!1382395 (= res!924095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118110 res!924096) b!1382391))

(assert (= (and b!1382391 res!924092) b!1382394))

(assert (= (and b!1382394 res!924093) b!1382393))

(assert (= (and b!1382393 res!924094) b!1382395))

(assert (= (and b!1382395 res!924095) b!1382392))

(declare-fun m!1267587 () Bool)

(assert (=> b!1382394 m!1267587))

(assert (=> b!1382394 m!1267587))

(declare-fun m!1267589 () Bool)

(assert (=> b!1382394 m!1267589))

(declare-fun m!1267591 () Bool)

(assert (=> start!118110 m!1267591))

(declare-fun m!1267593 () Bool)

(assert (=> start!118110 m!1267593))

(declare-fun m!1267595 () Bool)

(assert (=> b!1382393 m!1267595))

(assert (=> b!1382392 m!1267587))

(declare-fun m!1267597 () Bool)

(assert (=> b!1382395 m!1267597))

(check-sat (not start!118110) (not b!1382395) (not b!1382394) (not b!1382393))
(check-sat)
