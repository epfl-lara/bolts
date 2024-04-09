; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131082 () Bool)

(assert start!131082)

(declare-fun res!1054731 () Bool)

(declare-fun e!855667 () Bool)

(assert (=> start!131082 (=> (not res!1054731) (not e!855667))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131082 (= res!1054731 (validMask!0 mask!2480))))

(assert (=> start!131082 e!855667))

(assert (=> start!131082 true))

(declare-datatypes ((array!102107 0))(
  ( (array!102108 (arr!49265 (Array (_ BitVec 32) (_ BitVec 64))) (size!49816 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102107)

(declare-fun array_inv!38210 (array!102107) Bool)

(assert (=> start!131082 (array_inv!38210 a!2792)))

(declare-fun b!1537504 () Bool)

(declare-fun res!1054734 () Bool)

(assert (=> b!1537504 (=> (not res!1054734) (not e!855667))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537504 (= res!1054734 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49816 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49816 a!2792)) (= (select (arr!49265 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537505 () Bool)

(declare-fun res!1054728 () Bool)

(assert (=> b!1537505 (=> (not res!1054728) (not e!855667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102107 (_ BitVec 32)) Bool)

(assert (=> b!1537505 (= res!1054728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537506 () Bool)

(declare-fun res!1054732 () Bool)

(assert (=> b!1537506 (=> (not res!1054732) (not e!855667))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537506 (= res!1054732 (and (= (size!49816 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49816 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49816 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537507 () Bool)

(declare-fun res!1054729 () Bool)

(assert (=> b!1537507 (=> (not res!1054729) (not e!855667))))

(declare-datatypes ((List!35919 0))(
  ( (Nil!35916) (Cons!35915 (h!37361 (_ BitVec 64)) (t!50620 List!35919)) )
))
(declare-fun arrayNoDuplicates!0 (array!102107 (_ BitVec 32) List!35919) Bool)

(assert (=> b!1537507 (= res!1054729 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35916))))

(declare-fun b!1537508 () Bool)

(declare-fun res!1054730 () Bool)

(assert (=> b!1537508 (=> (not res!1054730) (not e!855667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537508 (= res!1054730 (validKeyInArray!0 (select (arr!49265 a!2792) j!64)))))

(declare-fun b!1537509 () Bool)

(declare-fun res!1054733 () Bool)

(assert (=> b!1537509 (=> (not res!1054733) (not e!855667))))

(assert (=> b!1537509 (= res!1054733 (validKeyInArray!0 (select (arr!49265 a!2792) i!951)))))

(declare-fun b!1537510 () Bool)

(assert (=> b!1537510 (= e!855667 false)))

(declare-datatypes ((SeekEntryResult!13414 0))(
  ( (MissingZero!13414 (index!56050 (_ BitVec 32))) (Found!13414 (index!56051 (_ BitVec 32))) (Intermediate!13414 (undefined!14226 Bool) (index!56052 (_ BitVec 32)) (x!137795 (_ BitVec 32))) (Undefined!13414) (MissingVacant!13414 (index!56053 (_ BitVec 32))) )
))
(declare-fun lt!664684 () SeekEntryResult!13414)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102107 (_ BitVec 32)) SeekEntryResult!13414)

(assert (=> b!1537510 (= lt!664684 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49265 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131082 res!1054731) b!1537506))

(assert (= (and b!1537506 res!1054732) b!1537509))

(assert (= (and b!1537509 res!1054733) b!1537508))

(assert (= (and b!1537508 res!1054730) b!1537505))

(assert (= (and b!1537505 res!1054728) b!1537507))

(assert (= (and b!1537507 res!1054729) b!1537504))

(assert (= (and b!1537504 res!1054734) b!1537510))

(declare-fun m!1420073 () Bool)

(assert (=> b!1537507 m!1420073))

(declare-fun m!1420075 () Bool)

(assert (=> b!1537510 m!1420075))

(assert (=> b!1537510 m!1420075))

(declare-fun m!1420077 () Bool)

(assert (=> b!1537510 m!1420077))

(declare-fun m!1420079 () Bool)

(assert (=> b!1537504 m!1420079))

(declare-fun m!1420081 () Bool)

(assert (=> b!1537505 m!1420081))

(declare-fun m!1420083 () Bool)

(assert (=> start!131082 m!1420083))

(declare-fun m!1420085 () Bool)

(assert (=> start!131082 m!1420085))

(declare-fun m!1420087 () Bool)

(assert (=> b!1537509 m!1420087))

(assert (=> b!1537509 m!1420087))

(declare-fun m!1420089 () Bool)

(assert (=> b!1537509 m!1420089))

(assert (=> b!1537508 m!1420075))

(assert (=> b!1537508 m!1420075))

(declare-fun m!1420091 () Bool)

(assert (=> b!1537508 m!1420091))

(check-sat (not b!1537509) (not b!1537507) (not start!131082) (not b!1537505) (not b!1537508) (not b!1537510))
