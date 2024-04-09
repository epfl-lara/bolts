; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118134 () Bool)

(assert start!118134)

(declare-fun b!1382549 () Bool)

(declare-fun res!924252 () Bool)

(declare-fun e!783644 () Bool)

(assert (=> b!1382549 (=> (not res!924252) (not e!783644))))

(declare-datatypes ((array!94414 0))(
  ( (array!94415 (arr!45584 (Array (_ BitVec 32) (_ BitVec 64))) (size!46135 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94414)

(declare-datatypes ((List!32298 0))(
  ( (Nil!32295) (Cons!32294 (h!33503 (_ BitVec 64)) (t!46999 List!32298)) )
))
(declare-fun arrayNoDuplicates!0 (array!94414 (_ BitVec 32) List!32298) Bool)

(assert (=> b!1382549 (= res!924252 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32295))))

(declare-fun b!1382550 () Bool)

(assert (=> b!1382550 (= e!783644 (not true))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94414 (_ BitVec 32)) Bool)

(assert (=> b!1382550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94415 (store (arr!45584 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46135 a!2971)) mask!3034)))

(declare-datatypes ((Unit!46001 0))(
  ( (Unit!46002) )
))
(declare-fun lt!608401 () Unit!46001)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94414 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46001)

(assert (=> b!1382550 (= lt!608401 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1382551 () Bool)

(declare-fun res!924255 () Bool)

(assert (=> b!1382551 (=> (not res!924255) (not e!783644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382551 (= res!924255 (validKeyInArray!0 (select (arr!45584 a!2971) i!1094)))))

(declare-fun b!1382552 () Bool)

(declare-fun res!924251 () Bool)

(assert (=> b!1382552 (=> (not res!924251) (not e!783644))))

(assert (=> b!1382552 (= res!924251 (and (not (= (select (arr!45584 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45584 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46135 a!2971))))))

(declare-fun b!1382553 () Bool)

(declare-fun res!924253 () Bool)

(assert (=> b!1382553 (=> (not res!924253) (not e!783644))))

(assert (=> b!1382553 (= res!924253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382554 () Bool)

(declare-fun res!924254 () Bool)

(assert (=> b!1382554 (=> (not res!924254) (not e!783644))))

(assert (=> b!1382554 (= res!924254 (and (= (size!46135 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46135 a!2971))))))

(declare-fun res!924250 () Bool)

(assert (=> start!118134 (=> (not res!924250) (not e!783644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118134 (= res!924250 (validMask!0 mask!3034))))

(assert (=> start!118134 e!783644))

(assert (=> start!118134 true))

(declare-fun array_inv!34529 (array!94414) Bool)

(assert (=> start!118134 (array_inv!34529 a!2971)))

(assert (= (and start!118134 res!924250) b!1382554))

(assert (= (and b!1382554 res!924254) b!1382551))

(assert (= (and b!1382551 res!924255) b!1382549))

(assert (= (and b!1382549 res!924252) b!1382553))

(assert (= (and b!1382553 res!924253) b!1382552))

(assert (= (and b!1382552 res!924251) b!1382550))

(declare-fun m!1267737 () Bool)

(assert (=> start!118134 m!1267737))

(declare-fun m!1267739 () Bool)

(assert (=> start!118134 m!1267739))

(declare-fun m!1267741 () Bool)

(assert (=> b!1382551 m!1267741))

(assert (=> b!1382551 m!1267741))

(declare-fun m!1267743 () Bool)

(assert (=> b!1382551 m!1267743))

(declare-fun m!1267745 () Bool)

(assert (=> b!1382550 m!1267745))

(declare-fun m!1267747 () Bool)

(assert (=> b!1382550 m!1267747))

(declare-fun m!1267749 () Bool)

(assert (=> b!1382550 m!1267749))

(declare-fun m!1267751 () Bool)

(assert (=> b!1382549 m!1267751))

(declare-fun m!1267753 () Bool)

(assert (=> b!1382553 m!1267753))

(assert (=> b!1382552 m!1267741))

(check-sat (not start!118134) (not b!1382551) (not b!1382553) (not b!1382550) (not b!1382549))
