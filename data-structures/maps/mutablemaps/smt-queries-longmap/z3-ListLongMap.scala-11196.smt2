; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130842 () Bool)

(assert start!130842)

(declare-fun b!1533985 () Bool)

(declare-fun res!1051214 () Bool)

(declare-fun e!854363 () Bool)

(assert (=> b!1533985 (=> (not res!1051214) (not e!854363))))

(declare-datatypes ((array!101867 0))(
  ( (array!101868 (arr!49145 (Array (_ BitVec 32) (_ BitVec 64))) (size!49696 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101867)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533985 (= res!1051214 (validKeyInArray!0 (select (arr!49145 a!2792) j!64)))))

(declare-fun b!1533986 () Bool)

(declare-fun res!1051212 () Bool)

(assert (=> b!1533986 (=> (not res!1051212) (not e!854363))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533986 (= res!1051212 (and (= (size!49696 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49696 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49696 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533987 () Bool)

(assert (=> b!1533987 (= e!854363 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13300 0))(
  ( (MissingZero!13300 (index!55594 (_ BitVec 32))) (Found!13300 (index!55595 (_ BitVec 32))) (Intermediate!13300 (undefined!14112 Bool) (index!55596 (_ BitVec 32)) (x!137361 (_ BitVec 32))) (Undefined!13300) (MissingVacant!13300 (index!55597 (_ BitVec 32))) )
))
(declare-fun lt!663757 () SeekEntryResult!13300)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101867 (_ BitVec 32)) SeekEntryResult!13300)

(assert (=> b!1533987 (= lt!663757 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49145 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533988 () Bool)

(declare-fun res!1051210 () Bool)

(assert (=> b!1533988 (=> (not res!1051210) (not e!854363))))

(declare-datatypes ((List!35799 0))(
  ( (Nil!35796) (Cons!35795 (h!37241 (_ BitVec 64)) (t!50500 List!35799)) )
))
(declare-fun arrayNoDuplicates!0 (array!101867 (_ BitVec 32) List!35799) Bool)

(assert (=> b!1533988 (= res!1051210 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35796))))

(declare-fun b!1533989 () Bool)

(declare-fun res!1051211 () Bool)

(assert (=> b!1533989 (=> (not res!1051211) (not e!854363))))

(assert (=> b!1533989 (= res!1051211 (validKeyInArray!0 (select (arr!49145 a!2792) i!951)))))

(declare-fun b!1533990 () Bool)

(declare-fun res!1051209 () Bool)

(assert (=> b!1533990 (=> (not res!1051209) (not e!854363))))

(assert (=> b!1533990 (= res!1051209 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49696 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49696 a!2792)) (= (select (arr!49145 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533991 () Bool)

(declare-fun res!1051213 () Bool)

(assert (=> b!1533991 (=> (not res!1051213) (not e!854363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101867 (_ BitVec 32)) Bool)

(assert (=> b!1533991 (= res!1051213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1051215 () Bool)

(assert (=> start!130842 (=> (not res!1051215) (not e!854363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130842 (= res!1051215 (validMask!0 mask!2480))))

(assert (=> start!130842 e!854363))

(assert (=> start!130842 true))

(declare-fun array_inv!38090 (array!101867) Bool)

(assert (=> start!130842 (array_inv!38090 a!2792)))

(assert (= (and start!130842 res!1051215) b!1533986))

(assert (= (and b!1533986 res!1051212) b!1533989))

(assert (= (and b!1533989 res!1051211) b!1533985))

(assert (= (and b!1533985 res!1051214) b!1533991))

(assert (= (and b!1533991 res!1051213) b!1533988))

(assert (= (and b!1533988 res!1051210) b!1533990))

(assert (= (and b!1533990 res!1051209) b!1533987))

(declare-fun m!1416707 () Bool)

(assert (=> start!130842 m!1416707))

(declare-fun m!1416709 () Bool)

(assert (=> start!130842 m!1416709))

(declare-fun m!1416711 () Bool)

(assert (=> b!1533990 m!1416711))

(declare-fun m!1416713 () Bool)

(assert (=> b!1533989 m!1416713))

(assert (=> b!1533989 m!1416713))

(declare-fun m!1416715 () Bool)

(assert (=> b!1533989 m!1416715))

(declare-fun m!1416717 () Bool)

(assert (=> b!1533987 m!1416717))

(assert (=> b!1533987 m!1416717))

(declare-fun m!1416719 () Bool)

(assert (=> b!1533987 m!1416719))

(assert (=> b!1533985 m!1416717))

(assert (=> b!1533985 m!1416717))

(declare-fun m!1416721 () Bool)

(assert (=> b!1533985 m!1416721))

(declare-fun m!1416723 () Bool)

(assert (=> b!1533991 m!1416723))

(declare-fun m!1416725 () Bool)

(assert (=> b!1533988 m!1416725))

(check-sat (not b!1533989) (not start!130842) (not b!1533987) (not b!1533988) (not b!1533991) (not b!1533985))
