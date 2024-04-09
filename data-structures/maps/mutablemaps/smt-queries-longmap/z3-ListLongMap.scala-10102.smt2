; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119148 () Bool)

(assert start!119148)

(declare-fun b!1389491 () Bool)

(declare-fun e!787070 () Bool)

(assert (=> b!1389491 (= e!787070 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95003 0))(
  ( (array!95004 (arr!45863 (Array (_ BitVec 32) (_ BitVec 64))) (size!46414 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95003)

(declare-datatypes ((SeekEntryResult!10202 0))(
  ( (MissingZero!10202 (index!43178 (_ BitVec 32))) (Found!10202 (index!43179 (_ BitVec 32))) (Intermediate!10202 (undefined!11014 Bool) (index!43180 (_ BitVec 32)) (x!124875 (_ BitVec 32))) (Undefined!10202) (MissingVacant!10202 (index!43181 (_ BitVec 32))) )
))
(declare-fun lt!610528 () SeekEntryResult!10202)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95003 (_ BitVec 32)) SeekEntryResult!10202)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389491 (= lt!610528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45863 a!2901) j!112) mask!2840) (select (arr!45863 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389492 () Bool)

(declare-fun res!929761 () Bool)

(assert (=> b!1389492 (=> (not res!929761) (not e!787070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95003 (_ BitVec 32)) Bool)

(assert (=> b!1389492 (= res!929761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929764 () Bool)

(assert (=> start!119148 (=> (not res!929764) (not e!787070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119148 (= res!929764 (validMask!0 mask!2840))))

(assert (=> start!119148 e!787070))

(assert (=> start!119148 true))

(declare-fun array_inv!34808 (array!95003) Bool)

(assert (=> start!119148 (array_inv!34808 a!2901)))

(declare-fun b!1389493 () Bool)

(declare-fun res!929762 () Bool)

(assert (=> b!1389493 (=> (not res!929762) (not e!787070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389493 (= res!929762 (validKeyInArray!0 (select (arr!45863 a!2901) j!112)))))

(declare-fun b!1389494 () Bool)

(declare-fun res!929766 () Bool)

(assert (=> b!1389494 (=> (not res!929766) (not e!787070))))

(declare-datatypes ((List!32562 0))(
  ( (Nil!32559) (Cons!32558 (h!33776 (_ BitVec 64)) (t!47263 List!32562)) )
))
(declare-fun arrayNoDuplicates!0 (array!95003 (_ BitVec 32) List!32562) Bool)

(assert (=> b!1389494 (= res!929766 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32559))))

(declare-fun b!1389495 () Bool)

(declare-fun res!929763 () Bool)

(assert (=> b!1389495 (=> (not res!929763) (not e!787070))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389495 (= res!929763 (validKeyInArray!0 (select (arr!45863 a!2901) i!1037)))))

(declare-fun b!1389496 () Bool)

(declare-fun res!929765 () Bool)

(assert (=> b!1389496 (=> (not res!929765) (not e!787070))))

(assert (=> b!1389496 (= res!929765 (and (= (size!46414 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46414 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46414 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119148 res!929764) b!1389496))

(assert (= (and b!1389496 res!929765) b!1389495))

(assert (= (and b!1389495 res!929763) b!1389493))

(assert (= (and b!1389493 res!929762) b!1389492))

(assert (= (and b!1389492 res!929761) b!1389494))

(assert (= (and b!1389494 res!929766) b!1389491))

(declare-fun m!1275199 () Bool)

(assert (=> b!1389492 m!1275199))

(declare-fun m!1275201 () Bool)

(assert (=> b!1389495 m!1275201))

(assert (=> b!1389495 m!1275201))

(declare-fun m!1275203 () Bool)

(assert (=> b!1389495 m!1275203))

(declare-fun m!1275205 () Bool)

(assert (=> b!1389491 m!1275205))

(assert (=> b!1389491 m!1275205))

(declare-fun m!1275207 () Bool)

(assert (=> b!1389491 m!1275207))

(assert (=> b!1389491 m!1275207))

(assert (=> b!1389491 m!1275205))

(declare-fun m!1275209 () Bool)

(assert (=> b!1389491 m!1275209))

(declare-fun m!1275211 () Bool)

(assert (=> b!1389494 m!1275211))

(assert (=> b!1389493 m!1275205))

(assert (=> b!1389493 m!1275205))

(declare-fun m!1275213 () Bool)

(assert (=> b!1389493 m!1275213))

(declare-fun m!1275215 () Bool)

(assert (=> start!119148 m!1275215))

(declare-fun m!1275217 () Bool)

(assert (=> start!119148 m!1275217))

(check-sat (not start!119148) (not b!1389493) (not b!1389495) (not b!1389492) (not b!1389494) (not b!1389491))
