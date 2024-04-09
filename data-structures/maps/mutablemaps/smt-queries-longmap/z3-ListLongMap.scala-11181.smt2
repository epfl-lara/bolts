; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130752 () Bool)

(assert start!130752)

(declare-fun b!1532967 () Bool)

(declare-fun e!854092 () Bool)

(assert (=> b!1532967 (= e!854092 false)))

(declare-fun lt!663694 () Bool)

(declare-datatypes ((array!101777 0))(
  ( (array!101778 (arr!49100 (Array (_ BitVec 32) (_ BitVec 64))) (size!49651 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101777)

(declare-datatypes ((List!35754 0))(
  ( (Nil!35751) (Cons!35750 (h!37196 (_ BitVec 64)) (t!50455 List!35754)) )
))
(declare-fun arrayNoDuplicates!0 (array!101777 (_ BitVec 32) List!35754) Bool)

(assert (=> b!1532967 (= lt!663694 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35751))))

(declare-fun b!1532968 () Bool)

(declare-fun res!1050195 () Bool)

(assert (=> b!1532968 (=> (not res!1050195) (not e!854092))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532968 (= res!1050195 (validKeyInArray!0 (select (arr!49100 a!2792) j!64)))))

(declare-fun b!1532969 () Bool)

(declare-fun res!1050191 () Bool)

(assert (=> b!1532969 (=> (not res!1050191) (not e!854092))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532969 (= res!1050191 (and (= (size!49651 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49651 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49651 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532970 () Bool)

(declare-fun res!1050192 () Bool)

(assert (=> b!1532970 (=> (not res!1050192) (not e!854092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101777 (_ BitVec 32)) Bool)

(assert (=> b!1532970 (= res!1050192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532971 () Bool)

(declare-fun res!1050194 () Bool)

(assert (=> b!1532971 (=> (not res!1050194) (not e!854092))))

(assert (=> b!1532971 (= res!1050194 (validKeyInArray!0 (select (arr!49100 a!2792) i!951)))))

(declare-fun res!1050193 () Bool)

(assert (=> start!130752 (=> (not res!1050193) (not e!854092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130752 (= res!1050193 (validMask!0 mask!2480))))

(assert (=> start!130752 e!854092))

(assert (=> start!130752 true))

(declare-fun array_inv!38045 (array!101777) Bool)

(assert (=> start!130752 (array_inv!38045 a!2792)))

(assert (= (and start!130752 res!1050193) b!1532969))

(assert (= (and b!1532969 res!1050191) b!1532971))

(assert (= (and b!1532971 res!1050194) b!1532968))

(assert (= (and b!1532968 res!1050195) b!1532970))

(assert (= (and b!1532970 res!1050192) b!1532967))

(declare-fun m!1415731 () Bool)

(assert (=> b!1532968 m!1415731))

(assert (=> b!1532968 m!1415731))

(declare-fun m!1415733 () Bool)

(assert (=> b!1532968 m!1415733))

(declare-fun m!1415735 () Bool)

(assert (=> b!1532971 m!1415735))

(assert (=> b!1532971 m!1415735))

(declare-fun m!1415737 () Bool)

(assert (=> b!1532971 m!1415737))

(declare-fun m!1415739 () Bool)

(assert (=> b!1532970 m!1415739))

(declare-fun m!1415741 () Bool)

(assert (=> start!130752 m!1415741))

(declare-fun m!1415743 () Bool)

(assert (=> start!130752 m!1415743))

(declare-fun m!1415745 () Bool)

(assert (=> b!1532967 m!1415745))

(check-sat (not start!130752) (not b!1532967) (not b!1532970) (not b!1532971) (not b!1532968))
