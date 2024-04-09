; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118082 () Bool)

(assert start!118082)

(declare-fun res!923919 () Bool)

(declare-fun e!783488 () Bool)

(assert (=> start!118082 (=> (not res!923919) (not e!783488))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118082 (= res!923919 (validMask!0 mask!3034))))

(assert (=> start!118082 e!783488))

(assert (=> start!118082 true))

(declare-datatypes ((array!94362 0))(
  ( (array!94363 (arr!45558 (Array (_ BitVec 32) (_ BitVec 64))) (size!46109 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94362)

(declare-fun array_inv!34503 (array!94362) Bool)

(assert (=> start!118082 (array_inv!34503 a!2971)))

(declare-fun b!1382219 () Bool)

(declare-fun res!923920 () Bool)

(assert (=> b!1382219 (=> (not res!923920) (not e!783488))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382219 (= res!923920 (validKeyInArray!0 (select (arr!45558 a!2971) i!1094)))))

(declare-fun b!1382221 () Bool)

(assert (=> b!1382221 (= e!783488 false)))

(declare-fun lt!608332 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94362 (_ BitVec 32)) Bool)

(assert (=> b!1382221 (= lt!608332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382220 () Bool)

(declare-fun res!923922 () Bool)

(assert (=> b!1382220 (=> (not res!923922) (not e!783488))))

(declare-datatypes ((List!32272 0))(
  ( (Nil!32269) (Cons!32268 (h!33477 (_ BitVec 64)) (t!46973 List!32272)) )
))
(declare-fun arrayNoDuplicates!0 (array!94362 (_ BitVec 32) List!32272) Bool)

(assert (=> b!1382220 (= res!923922 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32269))))

(declare-fun b!1382218 () Bool)

(declare-fun res!923921 () Bool)

(assert (=> b!1382218 (=> (not res!923921) (not e!783488))))

(assert (=> b!1382218 (= res!923921 (and (= (size!46109 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46109 a!2971))))))

(assert (= (and start!118082 res!923919) b!1382218))

(assert (= (and b!1382218 res!923921) b!1382219))

(assert (= (and b!1382219 res!923920) b!1382220))

(assert (= (and b!1382220 res!923922) b!1382221))

(declare-fun m!1267419 () Bool)

(assert (=> start!118082 m!1267419))

(declare-fun m!1267421 () Bool)

(assert (=> start!118082 m!1267421))

(declare-fun m!1267423 () Bool)

(assert (=> b!1382219 m!1267423))

(assert (=> b!1382219 m!1267423))

(declare-fun m!1267425 () Bool)

(assert (=> b!1382219 m!1267425))

(declare-fun m!1267427 () Bool)

(assert (=> b!1382221 m!1267427))

(declare-fun m!1267429 () Bool)

(assert (=> b!1382220 m!1267429))

(push 1)

(assert (not b!1382221))

(assert (not start!118082))

(assert (not b!1382220))

(assert (not b!1382219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

