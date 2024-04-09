; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131118 () Bool)

(assert start!131118)

(declare-fun b!1537882 () Bool)

(declare-fun res!1055112 () Bool)

(declare-fun e!855776 () Bool)

(assert (=> b!1537882 (=> (not res!1055112) (not e!855776))))

(declare-datatypes ((array!102143 0))(
  ( (array!102144 (arr!49283 (Array (_ BitVec 32) (_ BitVec 64))) (size!49834 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102143)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537882 (= res!1055112 (validKeyInArray!0 (select (arr!49283 a!2792) j!64)))))

(declare-fun b!1537883 () Bool)

(declare-fun res!1055106 () Bool)

(assert (=> b!1537883 (=> (not res!1055106) (not e!855776))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102143 (_ BitVec 32)) Bool)

(assert (=> b!1537883 (= res!1055106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537884 () Bool)

(declare-fun res!1055108 () Bool)

(assert (=> b!1537884 (=> (not res!1055108) (not e!855776))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537884 (= res!1055108 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49834 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49834 a!2792)) (= (select (arr!49283 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055107 () Bool)

(assert (=> start!131118 (=> (not res!1055107) (not e!855776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131118 (= res!1055107 (validMask!0 mask!2480))))

(assert (=> start!131118 e!855776))

(assert (=> start!131118 true))

(declare-fun array_inv!38228 (array!102143) Bool)

(assert (=> start!131118 (array_inv!38228 a!2792)))

(declare-fun b!1537885 () Bool)

(declare-fun res!1055110 () Bool)

(assert (=> b!1537885 (=> (not res!1055110) (not e!855776))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537885 (= res!1055110 (validKeyInArray!0 (select (arr!49283 a!2792) i!951)))))

(declare-fun b!1537886 () Bool)

(declare-fun res!1055111 () Bool)

(assert (=> b!1537886 (=> (not res!1055111) (not e!855776))))

(assert (=> b!1537886 (= res!1055111 (and (= (size!49834 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49834 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49834 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537887 () Bool)

(assert (=> b!1537887 (= e!855776 false)))

(declare-datatypes ((SeekEntryResult!13432 0))(
  ( (MissingZero!13432 (index!56122 (_ BitVec 32))) (Found!13432 (index!56123 (_ BitVec 32))) (Intermediate!13432 (undefined!14244 Bool) (index!56124 (_ BitVec 32)) (x!137861 (_ BitVec 32))) (Undefined!13432) (MissingVacant!13432 (index!56125 (_ BitVec 32))) )
))
(declare-fun lt!664738 () SeekEntryResult!13432)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102143 (_ BitVec 32)) SeekEntryResult!13432)

(assert (=> b!1537887 (= lt!664738 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49283 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537888 () Bool)

(declare-fun res!1055109 () Bool)

(assert (=> b!1537888 (=> (not res!1055109) (not e!855776))))

(declare-datatypes ((List!35937 0))(
  ( (Nil!35934) (Cons!35933 (h!37379 (_ BitVec 64)) (t!50638 List!35937)) )
))
(declare-fun arrayNoDuplicates!0 (array!102143 (_ BitVec 32) List!35937) Bool)

(assert (=> b!1537888 (= res!1055109 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35934))))

(assert (= (and start!131118 res!1055107) b!1537886))

(assert (= (and b!1537886 res!1055111) b!1537885))

(assert (= (and b!1537885 res!1055110) b!1537882))

(assert (= (and b!1537882 res!1055112) b!1537883))

(assert (= (and b!1537883 res!1055106) b!1537888))

(assert (= (and b!1537888 res!1055109) b!1537884))

(assert (= (and b!1537884 res!1055108) b!1537887))

(declare-fun m!1420433 () Bool)

(assert (=> b!1537883 m!1420433))

(declare-fun m!1420435 () Bool)

(assert (=> b!1537882 m!1420435))

(assert (=> b!1537882 m!1420435))

(declare-fun m!1420437 () Bool)

(assert (=> b!1537882 m!1420437))

(assert (=> b!1537887 m!1420435))

(assert (=> b!1537887 m!1420435))

(declare-fun m!1420439 () Bool)

(assert (=> b!1537887 m!1420439))

(declare-fun m!1420441 () Bool)

(assert (=> b!1537884 m!1420441))

(declare-fun m!1420443 () Bool)

(assert (=> start!131118 m!1420443))

(declare-fun m!1420445 () Bool)

(assert (=> start!131118 m!1420445))

(declare-fun m!1420447 () Bool)

(assert (=> b!1537888 m!1420447))

(declare-fun m!1420449 () Bool)

(assert (=> b!1537885 m!1420449))

(assert (=> b!1537885 m!1420449))

(declare-fun m!1420451 () Bool)

(assert (=> b!1537885 m!1420451))

(check-sat (not b!1537882) (not b!1537887) (not b!1537888) (not b!1537883) (not b!1537885) (not start!131118))
