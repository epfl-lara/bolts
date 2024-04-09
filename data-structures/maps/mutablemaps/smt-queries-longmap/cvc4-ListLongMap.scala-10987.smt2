; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128762 () Bool)

(assert start!128762)

(declare-fun res!1028516 () Bool)

(declare-fun e!842725 () Bool)

(assert (=> start!128762 (=> (not res!1028516) (not e!842725))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128762 (= res!1028516 (validMask!0 mask!2512))))

(assert (=> start!128762 e!842725))

(assert (=> start!128762 true))

(declare-datatypes ((array!100570 0))(
  ( (array!100571 (arr!48519 (Array (_ BitVec 32) (_ BitVec 64))) (size!49070 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100570)

(declare-fun array_inv!37464 (array!100570) Bool)

(assert (=> start!128762 (array_inv!37464 a!2804)))

(declare-fun b!1508432 () Bool)

(declare-fun res!1028512 () Bool)

(assert (=> b!1508432 (=> (not res!1028512) (not e!842725))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1508432 (= res!1028512 (and (= (size!49070 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49070 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49070 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508433 () Bool)

(declare-fun res!1028515 () Bool)

(assert (=> b!1508433 (=> (not res!1028515) (not e!842725))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508433 (= res!1028515 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49070 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49070 a!2804))))))

(declare-fun b!1508434 () Bool)

(declare-fun e!842726 () Bool)

(assert (=> b!1508434 (= e!842725 e!842726)))

(declare-fun res!1028519 () Bool)

(assert (=> b!1508434 (=> (not res!1028519) (not e!842726))))

(declare-datatypes ((SeekEntryResult!12711 0))(
  ( (MissingZero!12711 (index!53238 (_ BitVec 32))) (Found!12711 (index!53239 (_ BitVec 32))) (Intermediate!12711 (undefined!13523 Bool) (index!53240 (_ BitVec 32)) (x!135004 (_ BitVec 32))) (Undefined!12711) (MissingVacant!12711 (index!53241 (_ BitVec 32))) )
))
(declare-fun lt!654601 () SeekEntryResult!12711)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100570 (_ BitVec 32)) SeekEntryResult!12711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508434 (= res!1028519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48519 a!2804) j!70) mask!2512) (select (arr!48519 a!2804) j!70) a!2804 mask!2512) lt!654601))))

(assert (=> b!1508434 (= lt!654601 (Intermediate!12711 false resIndex!21 resX!21))))

(declare-fun b!1508435 () Bool)

(declare-fun res!1028514 () Bool)

(assert (=> b!1508435 (=> (not res!1028514) (not e!842725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508435 (= res!1028514 (validKeyInArray!0 (select (arr!48519 a!2804) j!70)))))

(declare-fun b!1508436 () Bool)

(declare-fun res!1028513 () Bool)

(assert (=> b!1508436 (=> (not res!1028513) (not e!842725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100570 (_ BitVec 32)) Bool)

(assert (=> b!1508436 (= res!1028513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508437 () Bool)

(declare-fun res!1028520 () Bool)

(assert (=> b!1508437 (=> (not res!1028520) (not e!842725))))

(assert (=> b!1508437 (= res!1028520 (validKeyInArray!0 (select (arr!48519 a!2804) i!961)))))

(declare-fun b!1508438 () Bool)

(declare-fun res!1028517 () Bool)

(assert (=> b!1508438 (=> (not res!1028517) (not e!842726))))

(assert (=> b!1508438 (= res!1028517 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48519 a!2804) j!70) a!2804 mask!2512) lt!654601))))

(declare-fun b!1508439 () Bool)

(assert (=> b!1508439 (= e!842726 false)))

(declare-fun lt!654600 () (_ BitVec 32))

(assert (=> b!1508439 (= lt!654600 (toIndex!0 (select (store (arr!48519 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508440 () Bool)

(declare-fun res!1028518 () Bool)

(assert (=> b!1508440 (=> (not res!1028518) (not e!842725))))

(declare-datatypes ((List!35182 0))(
  ( (Nil!35179) (Cons!35178 (h!36588 (_ BitVec 64)) (t!49883 List!35182)) )
))
(declare-fun arrayNoDuplicates!0 (array!100570 (_ BitVec 32) List!35182) Bool)

(assert (=> b!1508440 (= res!1028518 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35179))))

(assert (= (and start!128762 res!1028516) b!1508432))

(assert (= (and b!1508432 res!1028512) b!1508437))

(assert (= (and b!1508437 res!1028520) b!1508435))

(assert (= (and b!1508435 res!1028514) b!1508436))

(assert (= (and b!1508436 res!1028513) b!1508440))

(assert (= (and b!1508440 res!1028518) b!1508433))

(assert (= (and b!1508433 res!1028515) b!1508434))

(assert (= (and b!1508434 res!1028519) b!1508438))

(assert (= (and b!1508438 res!1028517) b!1508439))

(declare-fun m!1390997 () Bool)

(assert (=> b!1508440 m!1390997))

(declare-fun m!1390999 () Bool)

(assert (=> b!1508435 m!1390999))

(assert (=> b!1508435 m!1390999))

(declare-fun m!1391001 () Bool)

(assert (=> b!1508435 m!1391001))

(declare-fun m!1391003 () Bool)

(assert (=> b!1508437 m!1391003))

(assert (=> b!1508437 m!1391003))

(declare-fun m!1391005 () Bool)

(assert (=> b!1508437 m!1391005))

(declare-fun m!1391007 () Bool)

(assert (=> b!1508436 m!1391007))

(declare-fun m!1391009 () Bool)

(assert (=> b!1508439 m!1391009))

(declare-fun m!1391011 () Bool)

(assert (=> b!1508439 m!1391011))

(assert (=> b!1508439 m!1391011))

(declare-fun m!1391013 () Bool)

(assert (=> b!1508439 m!1391013))

(assert (=> b!1508434 m!1390999))

(assert (=> b!1508434 m!1390999))

(declare-fun m!1391015 () Bool)

(assert (=> b!1508434 m!1391015))

(assert (=> b!1508434 m!1391015))

(assert (=> b!1508434 m!1390999))

(declare-fun m!1391017 () Bool)

(assert (=> b!1508434 m!1391017))

(assert (=> b!1508438 m!1390999))

(assert (=> b!1508438 m!1390999))

(declare-fun m!1391019 () Bool)

(assert (=> b!1508438 m!1391019))

(declare-fun m!1391021 () Bool)

(assert (=> start!128762 m!1391021))

(declare-fun m!1391023 () Bool)

(assert (=> start!128762 m!1391023))

(push 1)

(assert (not b!1508437))

(assert (not b!1508434))

(assert (not b!1508440))

(assert (not b!1508435))

(assert (not b!1508439))

(assert (not b!1508438))

(assert (not b!1508436))

(assert (not start!128762))

(check-sat)

