; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130834 () Bool)

(assert start!130834)

(declare-fun b!1533894 () Bool)

(declare-fun res!1051124 () Bool)

(declare-fun e!854338 () Bool)

(assert (=> b!1533894 (=> (not res!1051124) (not e!854338))))

(declare-datatypes ((array!101859 0))(
  ( (array!101860 (arr!49141 (Array (_ BitVec 32) (_ BitVec 64))) (size!49692 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101859)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533894 (= res!1051124 (validKeyInArray!0 (select (arr!49141 a!2792) i!951)))))

(declare-fun b!1533895 () Bool)

(declare-fun res!1051120 () Bool)

(assert (=> b!1533895 (=> (not res!1051120) (not e!854338))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101859 (_ BitVec 32)) Bool)

(assert (=> b!1533895 (= res!1051120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533896 () Bool)

(declare-fun res!1051121 () Bool)

(assert (=> b!1533896 (=> (not res!1051121) (not e!854338))))

(declare-datatypes ((List!35795 0))(
  ( (Nil!35792) (Cons!35791 (h!37237 (_ BitVec 64)) (t!50496 List!35795)) )
))
(declare-fun arrayNoDuplicates!0 (array!101859 (_ BitVec 32) List!35795) Bool)

(assert (=> b!1533896 (= res!1051121 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35792))))

(declare-fun b!1533897 () Bool)

(declare-fun res!1051119 () Bool)

(assert (=> b!1533897 (=> (not res!1051119) (not e!854338))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533897 (= res!1051119 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49692 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49692 a!2792)) (= (select (arr!49141 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533898 () Bool)

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1533898 (= e!854338 (and (= (select (arr!49141 a!2792) index!463) (select (arr!49141 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun res!1051122 () Bool)

(assert (=> start!130834 (=> (not res!1051122) (not e!854338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130834 (= res!1051122 (validMask!0 mask!2480))))

(assert (=> start!130834 e!854338))

(assert (=> start!130834 true))

(declare-fun array_inv!38086 (array!101859) Bool)

(assert (=> start!130834 (array_inv!38086 a!2792)))

(declare-fun b!1533899 () Bool)

(declare-fun res!1051125 () Bool)

(assert (=> b!1533899 (=> (not res!1051125) (not e!854338))))

(assert (=> b!1533899 (= res!1051125 (validKeyInArray!0 (select (arr!49141 a!2792) j!64)))))

(declare-fun b!1533900 () Bool)

(declare-fun res!1051123 () Bool)

(assert (=> b!1533900 (=> (not res!1051123) (not e!854338))))

(assert (=> b!1533900 (= res!1051123 (and (= (size!49692 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49692 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49692 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533901 () Bool)

(declare-fun res!1051118 () Bool)

(assert (=> b!1533901 (=> (not res!1051118) (not e!854338))))

(declare-datatypes ((SeekEntryResult!13296 0))(
  ( (MissingZero!13296 (index!55578 (_ BitVec 32))) (Found!13296 (index!55579 (_ BitVec 32))) (Intermediate!13296 (undefined!14108 Bool) (index!55580 (_ BitVec 32)) (x!137349 (_ BitVec 32))) (Undefined!13296) (MissingVacant!13296 (index!55581 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101859 (_ BitVec 32)) SeekEntryResult!13296)

(assert (=> b!1533901 (= res!1051118 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49141 a!2792) j!64) a!2792 mask!2480) (Found!13296 j!64)))))

(assert (= (and start!130834 res!1051122) b!1533900))

(assert (= (and b!1533900 res!1051123) b!1533894))

(assert (= (and b!1533894 res!1051124) b!1533899))

(assert (= (and b!1533899 res!1051125) b!1533895))

(assert (= (and b!1533895 res!1051120) b!1533896))

(assert (= (and b!1533896 res!1051121) b!1533897))

(assert (= (and b!1533897 res!1051119) b!1533901))

(assert (= (and b!1533901 res!1051118) b!1533898))

(declare-fun m!1416621 () Bool)

(assert (=> b!1533899 m!1416621))

(assert (=> b!1533899 m!1416621))

(declare-fun m!1416623 () Bool)

(assert (=> b!1533899 m!1416623))

(declare-fun m!1416625 () Bool)

(assert (=> b!1533898 m!1416625))

(assert (=> b!1533898 m!1416621))

(declare-fun m!1416627 () Bool)

(assert (=> b!1533894 m!1416627))

(assert (=> b!1533894 m!1416627))

(declare-fun m!1416629 () Bool)

(assert (=> b!1533894 m!1416629))

(declare-fun m!1416631 () Bool)

(assert (=> b!1533897 m!1416631))

(declare-fun m!1416633 () Bool)

(assert (=> b!1533896 m!1416633))

(declare-fun m!1416635 () Bool)

(assert (=> b!1533895 m!1416635))

(declare-fun m!1416637 () Bool)

(assert (=> start!130834 m!1416637))

(declare-fun m!1416639 () Bool)

(assert (=> start!130834 m!1416639))

(assert (=> b!1533901 m!1416621))

(assert (=> b!1533901 m!1416621))

(declare-fun m!1416641 () Bool)

(assert (=> b!1533901 m!1416641))

(push 1)

(assert (not b!1533895))

(assert (not b!1533899))

(assert (not b!1533894))

(assert (not start!130834))

(assert (not b!1533896))

(assert (not b!1533901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

