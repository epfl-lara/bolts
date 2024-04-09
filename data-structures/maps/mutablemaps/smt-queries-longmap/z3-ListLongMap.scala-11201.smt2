; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130872 () Bool)

(assert start!130872)

(declare-fun b!1534318 () Bool)

(declare-fun res!1051545 () Bool)

(declare-fun e!854452 () Bool)

(assert (=> b!1534318 (=> (not res!1051545) (not e!854452))))

(declare-datatypes ((array!101897 0))(
  ( (array!101898 (arr!49160 (Array (_ BitVec 32) (_ BitVec 64))) (size!49711 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101897)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534318 (= res!1051545 (validKeyInArray!0 (select (arr!49160 a!2792) i!951)))))

(declare-fun b!1534319 () Bool)

(declare-fun res!1051543 () Bool)

(assert (=> b!1534319 (=> (not res!1051543) (not e!854452))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101897 (_ BitVec 32)) Bool)

(assert (=> b!1534319 (= res!1051543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534320 () Bool)

(declare-fun res!1051544 () Bool)

(assert (=> b!1534320 (=> (not res!1051544) (not e!854452))))

(declare-datatypes ((List!35814 0))(
  ( (Nil!35811) (Cons!35810 (h!37256 (_ BitVec 64)) (t!50515 List!35814)) )
))
(declare-fun arrayNoDuplicates!0 (array!101897 (_ BitVec 32) List!35814) Bool)

(assert (=> b!1534320 (= res!1051544 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35811))))

(declare-fun b!1534321 () Bool)

(assert (=> b!1534321 (= e!854452 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13315 0))(
  ( (MissingZero!13315 (index!55654 (_ BitVec 32))) (Found!13315 (index!55655 (_ BitVec 32))) (Intermediate!13315 (undefined!14127 Bool) (index!55656 (_ BitVec 32)) (x!137416 (_ BitVec 32))) (Undefined!13315) (MissingVacant!13315 (index!55657 (_ BitVec 32))) )
))
(declare-fun lt!663784 () SeekEntryResult!13315)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101897 (_ BitVec 32)) SeekEntryResult!13315)

(assert (=> b!1534321 (= lt!663784 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49160 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534322 () Bool)

(declare-fun res!1051546 () Bool)

(assert (=> b!1534322 (=> (not res!1051546) (not e!854452))))

(assert (=> b!1534322 (= res!1051546 (and (= (size!49711 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49711 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49711 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1051548 () Bool)

(assert (=> start!130872 (=> (not res!1051548) (not e!854452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130872 (= res!1051548 (validMask!0 mask!2480))))

(assert (=> start!130872 e!854452))

(assert (=> start!130872 true))

(declare-fun array_inv!38105 (array!101897) Bool)

(assert (=> start!130872 (array_inv!38105 a!2792)))

(declare-fun b!1534323 () Bool)

(declare-fun res!1051542 () Bool)

(assert (=> b!1534323 (=> (not res!1051542) (not e!854452))))

(assert (=> b!1534323 (= res!1051542 (validKeyInArray!0 (select (arr!49160 a!2792) j!64)))))

(declare-fun b!1534324 () Bool)

(declare-fun res!1051547 () Bool)

(assert (=> b!1534324 (=> (not res!1051547) (not e!854452))))

(assert (=> b!1534324 (= res!1051547 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49711 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49711 a!2792)) (= (select (arr!49160 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130872 res!1051548) b!1534322))

(assert (= (and b!1534322 res!1051546) b!1534318))

(assert (= (and b!1534318 res!1051545) b!1534323))

(assert (= (and b!1534323 res!1051542) b!1534319))

(assert (= (and b!1534319 res!1051543) b!1534320))

(assert (= (and b!1534320 res!1051544) b!1534324))

(assert (= (and b!1534324 res!1051547) b!1534321))

(declare-fun m!1417019 () Bool)

(assert (=> start!130872 m!1417019))

(declare-fun m!1417021 () Bool)

(assert (=> start!130872 m!1417021))

(declare-fun m!1417023 () Bool)

(assert (=> b!1534324 m!1417023))

(declare-fun m!1417025 () Bool)

(assert (=> b!1534323 m!1417025))

(assert (=> b!1534323 m!1417025))

(declare-fun m!1417027 () Bool)

(assert (=> b!1534323 m!1417027))

(declare-fun m!1417029 () Bool)

(assert (=> b!1534320 m!1417029))

(declare-fun m!1417031 () Bool)

(assert (=> b!1534318 m!1417031))

(assert (=> b!1534318 m!1417031))

(declare-fun m!1417033 () Bool)

(assert (=> b!1534318 m!1417033))

(assert (=> b!1534321 m!1417025))

(assert (=> b!1534321 m!1417025))

(declare-fun m!1417035 () Bool)

(assert (=> b!1534321 m!1417035))

(declare-fun m!1417037 () Bool)

(assert (=> b!1534319 m!1417037))

(check-sat (not b!1534320) (not b!1534323) (not b!1534321) (not start!130872) (not b!1534319) (not b!1534318))
