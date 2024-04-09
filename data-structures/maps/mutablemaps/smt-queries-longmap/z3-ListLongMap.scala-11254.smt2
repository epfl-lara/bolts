; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131226 () Bool)

(assert start!131226)

(declare-fun b!1538990 () Bool)

(declare-fun res!1056112 () Bool)

(declare-fun e!856100 () Bool)

(assert (=> b!1538990 (=> (not res!1056112) (not e!856100))))

(declare-datatypes ((array!102218 0))(
  ( (array!102219 (arr!49319 (Array (_ BitVec 32) (_ BitVec 64))) (size!49870 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102218)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538990 (= res!1056112 (validKeyInArray!0 (select (arr!49319 a!2792) j!64)))))

(declare-fun b!1538991 () Bool)

(declare-fun res!1056109 () Bool)

(assert (=> b!1538991 (=> (not res!1056109) (not e!856100))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538991 (= res!1056109 (and (= (size!49870 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49870 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49870 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538992 () Bool)

(declare-fun res!1056114 () Bool)

(assert (=> b!1538992 (=> (not res!1056114) (not e!856100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102218 (_ BitVec 32)) Bool)

(assert (=> b!1538992 (= res!1056114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538993 () Bool)

(assert (=> b!1538993 (= e!856100 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664897 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538993 (= lt!664897 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538994 () Bool)

(declare-fun res!1056106 () Bool)

(assert (=> b!1538994 (=> (not res!1056106) (not e!856100))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538994 (= res!1056106 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49870 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49870 a!2792)) (= (select (arr!49319 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538995 () Bool)

(declare-fun res!1056110 () Bool)

(assert (=> b!1538995 (=> (not res!1056110) (not e!856100))))

(declare-datatypes ((SeekEntryResult!13468 0))(
  ( (MissingZero!13468 (index!56266 (_ BitVec 32))) (Found!13468 (index!56267 (_ BitVec 32))) (Intermediate!13468 (undefined!14280 Bool) (index!56268 (_ BitVec 32)) (x!137996 (_ BitVec 32))) (Undefined!13468) (MissingVacant!13468 (index!56269 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102218 (_ BitVec 32)) SeekEntryResult!13468)

(assert (=> b!1538995 (= res!1056110 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49319 a!2792) j!64) a!2792 mask!2480) (Found!13468 j!64)))))

(declare-fun b!1538996 () Bool)

(declare-fun res!1056113 () Bool)

(assert (=> b!1538996 (=> (not res!1056113) (not e!856100))))

(assert (=> b!1538996 (= res!1056113 (not (= (select (arr!49319 a!2792) index!463) (select (arr!49319 a!2792) j!64))))))

(declare-fun res!1056111 () Bool)

(assert (=> start!131226 (=> (not res!1056111) (not e!856100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131226 (= res!1056111 (validMask!0 mask!2480))))

(assert (=> start!131226 e!856100))

(assert (=> start!131226 true))

(declare-fun array_inv!38264 (array!102218) Bool)

(assert (=> start!131226 (array_inv!38264 a!2792)))

(declare-fun b!1538997 () Bool)

(declare-fun res!1056108 () Bool)

(assert (=> b!1538997 (=> (not res!1056108) (not e!856100))))

(assert (=> b!1538997 (= res!1056108 (validKeyInArray!0 (select (arr!49319 a!2792) i!951)))))

(declare-fun b!1538998 () Bool)

(declare-fun res!1056107 () Bool)

(assert (=> b!1538998 (=> (not res!1056107) (not e!856100))))

(declare-datatypes ((List!35973 0))(
  ( (Nil!35970) (Cons!35969 (h!37415 (_ BitVec 64)) (t!50674 List!35973)) )
))
(declare-fun arrayNoDuplicates!0 (array!102218 (_ BitVec 32) List!35973) Bool)

(assert (=> b!1538998 (= res!1056107 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35970))))

(assert (= (and start!131226 res!1056111) b!1538991))

(assert (= (and b!1538991 res!1056109) b!1538997))

(assert (= (and b!1538997 res!1056108) b!1538990))

(assert (= (and b!1538990 res!1056112) b!1538992))

(assert (= (and b!1538992 res!1056114) b!1538998))

(assert (= (and b!1538998 res!1056107) b!1538994))

(assert (= (and b!1538994 res!1056106) b!1538995))

(assert (= (and b!1538995 res!1056110) b!1538996))

(assert (= (and b!1538996 res!1056113) b!1538993))

(declare-fun m!1421397 () Bool)

(assert (=> b!1538990 m!1421397))

(assert (=> b!1538990 m!1421397))

(declare-fun m!1421399 () Bool)

(assert (=> b!1538990 m!1421399))

(declare-fun m!1421401 () Bool)

(assert (=> b!1538993 m!1421401))

(declare-fun m!1421403 () Bool)

(assert (=> b!1538994 m!1421403))

(declare-fun m!1421405 () Bool)

(assert (=> b!1538997 m!1421405))

(assert (=> b!1538997 m!1421405))

(declare-fun m!1421407 () Bool)

(assert (=> b!1538997 m!1421407))

(declare-fun m!1421409 () Bool)

(assert (=> b!1538996 m!1421409))

(assert (=> b!1538996 m!1421397))

(declare-fun m!1421411 () Bool)

(assert (=> b!1538998 m!1421411))

(assert (=> b!1538995 m!1421397))

(assert (=> b!1538995 m!1421397))

(declare-fun m!1421413 () Bool)

(assert (=> b!1538995 m!1421413))

(declare-fun m!1421415 () Bool)

(assert (=> start!131226 m!1421415))

(declare-fun m!1421417 () Bool)

(assert (=> start!131226 m!1421417))

(declare-fun m!1421419 () Bool)

(assert (=> b!1538992 m!1421419))

(check-sat (not b!1538992) (not b!1538990) (not b!1538998) (not b!1538993) (not start!131226) (not b!1538997) (not b!1538995))
