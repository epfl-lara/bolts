; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131208 () Bool)

(assert start!131208)

(declare-fun b!1538747 () Bool)

(declare-fun res!1055865 () Bool)

(declare-fun e!856046 () Bool)

(assert (=> b!1538747 (=> (not res!1055865) (not e!856046))))

(declare-datatypes ((array!102200 0))(
  ( (array!102201 (arr!49310 (Array (_ BitVec 32) (_ BitVec 64))) (size!49861 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102200)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538747 (= res!1055865 (not (= (select (arr!49310 a!2792) index!463) (select (arr!49310 a!2792) j!64))))))

(declare-fun b!1538748 () Bool)

(declare-fun res!1055867 () Bool)

(assert (=> b!1538748 (=> (not res!1055867) (not e!856046))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13459 0))(
  ( (MissingZero!13459 (index!56230 (_ BitVec 32))) (Found!13459 (index!56231 (_ BitVec 32))) (Intermediate!13459 (undefined!14271 Bool) (index!56232 (_ BitVec 32)) (x!137963 (_ BitVec 32))) (Undefined!13459) (MissingVacant!13459 (index!56233 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102200 (_ BitVec 32)) SeekEntryResult!13459)

(assert (=> b!1538748 (= res!1055867 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49310 a!2792) j!64) a!2792 mask!2480) (Found!13459 j!64)))))

(declare-fun b!1538749 () Bool)

(declare-fun res!1055868 () Bool)

(assert (=> b!1538749 (=> (not res!1055868) (not e!856046))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538749 (= res!1055868 (validKeyInArray!0 (select (arr!49310 a!2792) i!951)))))

(declare-fun res!1055864 () Bool)

(assert (=> start!131208 (=> (not res!1055864) (not e!856046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131208 (= res!1055864 (validMask!0 mask!2480))))

(assert (=> start!131208 e!856046))

(assert (=> start!131208 true))

(declare-fun array_inv!38255 (array!102200) Bool)

(assert (=> start!131208 (array_inv!38255 a!2792)))

(declare-fun b!1538750 () Bool)

(assert (=> b!1538750 (= e!856046 false)))

(declare-fun lt!664870 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538750 (= lt!664870 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538751 () Bool)

(declare-fun res!1055870 () Bool)

(assert (=> b!1538751 (=> (not res!1055870) (not e!856046))))

(assert (=> b!1538751 (= res!1055870 (validKeyInArray!0 (select (arr!49310 a!2792) j!64)))))

(declare-fun b!1538752 () Bool)

(declare-fun res!1055863 () Bool)

(assert (=> b!1538752 (=> (not res!1055863) (not e!856046))))

(assert (=> b!1538752 (= res!1055863 (and (= (size!49861 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49861 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49861 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538753 () Bool)

(declare-fun res!1055869 () Bool)

(assert (=> b!1538753 (=> (not res!1055869) (not e!856046))))

(assert (=> b!1538753 (= res!1055869 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49861 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49861 a!2792)) (= (select (arr!49310 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538754 () Bool)

(declare-fun res!1055871 () Bool)

(assert (=> b!1538754 (=> (not res!1055871) (not e!856046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102200 (_ BitVec 32)) Bool)

(assert (=> b!1538754 (= res!1055871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538755 () Bool)

(declare-fun res!1055866 () Bool)

(assert (=> b!1538755 (=> (not res!1055866) (not e!856046))))

(declare-datatypes ((List!35964 0))(
  ( (Nil!35961) (Cons!35960 (h!37406 (_ BitVec 64)) (t!50665 List!35964)) )
))
(declare-fun arrayNoDuplicates!0 (array!102200 (_ BitVec 32) List!35964) Bool)

(assert (=> b!1538755 (= res!1055866 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35961))))

(assert (= (and start!131208 res!1055864) b!1538752))

(assert (= (and b!1538752 res!1055863) b!1538749))

(assert (= (and b!1538749 res!1055868) b!1538751))

(assert (= (and b!1538751 res!1055870) b!1538754))

(assert (= (and b!1538754 res!1055871) b!1538755))

(assert (= (and b!1538755 res!1055866) b!1538753))

(assert (= (and b!1538753 res!1055869) b!1538748))

(assert (= (and b!1538748 res!1055867) b!1538747))

(assert (= (and b!1538747 res!1055865) b!1538750))

(declare-fun m!1421181 () Bool)

(assert (=> start!131208 m!1421181))

(declare-fun m!1421183 () Bool)

(assert (=> start!131208 m!1421183))

(declare-fun m!1421185 () Bool)

(assert (=> b!1538751 m!1421185))

(assert (=> b!1538751 m!1421185))

(declare-fun m!1421187 () Bool)

(assert (=> b!1538751 m!1421187))

(assert (=> b!1538748 m!1421185))

(assert (=> b!1538748 m!1421185))

(declare-fun m!1421189 () Bool)

(assert (=> b!1538748 m!1421189))

(declare-fun m!1421191 () Bool)

(assert (=> b!1538750 m!1421191))

(declare-fun m!1421193 () Bool)

(assert (=> b!1538753 m!1421193))

(declare-fun m!1421195 () Bool)

(assert (=> b!1538754 m!1421195))

(declare-fun m!1421197 () Bool)

(assert (=> b!1538755 m!1421197))

(declare-fun m!1421199 () Bool)

(assert (=> b!1538749 m!1421199))

(assert (=> b!1538749 m!1421199))

(declare-fun m!1421201 () Bool)

(assert (=> b!1538749 m!1421201))

(declare-fun m!1421203 () Bool)

(assert (=> b!1538747 m!1421203))

(assert (=> b!1538747 m!1421185))

(check-sat (not b!1538750) (not start!131208) (not b!1538755) (not b!1538754) (not b!1538748) (not b!1538749) (not b!1538751))
