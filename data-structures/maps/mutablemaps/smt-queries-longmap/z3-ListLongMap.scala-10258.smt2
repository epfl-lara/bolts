; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120642 () Bool)

(assert start!120642)

(declare-fun b!1404119 () Bool)

(declare-fun res!942741 () Bool)

(declare-fun e!794944 () Bool)

(assert (=> b!1404119 (=> (not res!942741) (not e!794944))))

(declare-datatypes ((array!95969 0))(
  ( (array!95970 (arr!46331 (Array (_ BitVec 32) (_ BitVec 64))) (size!46882 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95969)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404119 (= res!942741 (validKeyInArray!0 (select (arr!46331 a!2901) i!1037)))))

(declare-fun b!1404120 () Bool)

(assert (=> b!1404120 (= e!794944 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10664 0))(
  ( (MissingZero!10664 (index!45032 (_ BitVec 32))) (Found!10664 (index!45033 (_ BitVec 32))) (Intermediate!10664 (undefined!11476 Bool) (index!45034 (_ BitVec 32)) (x!126654 (_ BitVec 32))) (Undefined!10664) (MissingVacant!10664 (index!45035 (_ BitVec 32))) )
))
(declare-fun lt!618544 () SeekEntryResult!10664)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95969 (_ BitVec 32)) SeekEntryResult!10664)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404120 (= lt!618544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46331 a!2901) j!112) mask!2840) (select (arr!46331 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404121 () Bool)

(declare-fun res!942740 () Bool)

(assert (=> b!1404121 (=> (not res!942740) (not e!794944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95969 (_ BitVec 32)) Bool)

(assert (=> b!1404121 (= res!942740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942744 () Bool)

(assert (=> start!120642 (=> (not res!942744) (not e!794944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120642 (= res!942744 (validMask!0 mask!2840))))

(assert (=> start!120642 e!794944))

(assert (=> start!120642 true))

(declare-fun array_inv!35276 (array!95969) Bool)

(assert (=> start!120642 (array_inv!35276 a!2901)))

(declare-fun b!1404122 () Bool)

(declare-fun res!942739 () Bool)

(assert (=> b!1404122 (=> (not res!942739) (not e!794944))))

(declare-datatypes ((List!33030 0))(
  ( (Nil!33027) (Cons!33026 (h!34274 (_ BitVec 64)) (t!47731 List!33030)) )
))
(declare-fun arrayNoDuplicates!0 (array!95969 (_ BitVec 32) List!33030) Bool)

(assert (=> b!1404122 (= res!942739 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33027))))

(declare-fun b!1404123 () Bool)

(declare-fun res!942743 () Bool)

(assert (=> b!1404123 (=> (not res!942743) (not e!794944))))

(assert (=> b!1404123 (= res!942743 (and (= (size!46882 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46882 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46882 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404124 () Bool)

(declare-fun res!942742 () Bool)

(assert (=> b!1404124 (=> (not res!942742) (not e!794944))))

(assert (=> b!1404124 (= res!942742 (validKeyInArray!0 (select (arr!46331 a!2901) j!112)))))

(assert (= (and start!120642 res!942744) b!1404123))

(assert (= (and b!1404123 res!942743) b!1404119))

(assert (= (and b!1404119 res!942741) b!1404124))

(assert (= (and b!1404124 res!942742) b!1404121))

(assert (= (and b!1404121 res!942740) b!1404122))

(assert (= (and b!1404122 res!942739) b!1404120))

(declare-fun m!1292989 () Bool)

(assert (=> b!1404121 m!1292989))

(declare-fun m!1292991 () Bool)

(assert (=> start!120642 m!1292991))

(declare-fun m!1292993 () Bool)

(assert (=> start!120642 m!1292993))

(declare-fun m!1292995 () Bool)

(assert (=> b!1404119 m!1292995))

(assert (=> b!1404119 m!1292995))

(declare-fun m!1292997 () Bool)

(assert (=> b!1404119 m!1292997))

(declare-fun m!1292999 () Bool)

(assert (=> b!1404120 m!1292999))

(assert (=> b!1404120 m!1292999))

(declare-fun m!1293001 () Bool)

(assert (=> b!1404120 m!1293001))

(assert (=> b!1404120 m!1293001))

(assert (=> b!1404120 m!1292999))

(declare-fun m!1293003 () Bool)

(assert (=> b!1404120 m!1293003))

(assert (=> b!1404124 m!1292999))

(assert (=> b!1404124 m!1292999))

(declare-fun m!1293005 () Bool)

(assert (=> b!1404124 m!1293005))

(declare-fun m!1293007 () Bool)

(assert (=> b!1404122 m!1293007))

(check-sat (not b!1404119) (not b!1404121) (not b!1404122) (not b!1404120) (not b!1404124) (not start!120642))
