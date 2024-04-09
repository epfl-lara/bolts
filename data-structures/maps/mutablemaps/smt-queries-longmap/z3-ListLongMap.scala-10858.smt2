; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127236 () Bool)

(assert start!127236)

(declare-fun b!1494802 () Bool)

(declare-fun res!1017003 () Bool)

(declare-fun e!837320 () Bool)

(assert (=> b!1494802 (=> (not res!1017003) (not e!837320))))

(declare-datatypes ((array!99737 0))(
  ( (array!99738 (arr!48131 (Array (_ BitVec 32) (_ BitVec 64))) (size!48682 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99737)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99737 (_ BitVec 32)) Bool)

(assert (=> b!1494802 (= res!1017003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494803 () Bool)

(declare-fun e!837324 () Bool)

(declare-fun e!837319 () Bool)

(assert (=> b!1494803 (= e!837324 (not e!837319))))

(declare-fun res!1016997 () Bool)

(assert (=> b!1494803 (=> res!1016997 e!837319)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1494803 (= res!1016997 (or (and (= (select (arr!48131 a!2862) index!646) (select (store (arr!48131 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48131 a!2862) index!646) (select (arr!48131 a!2862) j!93))) (= (select (arr!48131 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!837326 () Bool)

(assert (=> b!1494803 e!837326))

(declare-fun res!1017002 () Bool)

(assert (=> b!1494803 (=> (not res!1017002) (not e!837326))))

(assert (=> b!1494803 (= res!1017002 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50076 0))(
  ( (Unit!50077) )
))
(declare-fun lt!651484 () Unit!50076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50076)

(assert (=> b!1494803 (= lt!651484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494804 () Bool)

(declare-fun e!837323 () Bool)

(assert (=> b!1494804 (= e!837323 true)))

(declare-fun lt!651489 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12394 0))(
  ( (MissingZero!12394 (index!51967 (_ BitVec 32))) (Found!12394 (index!51968 (_ BitVec 32))) (Intermediate!12394 (undefined!13206 Bool) (index!51969 (_ BitVec 32)) (x!133577 (_ BitVec 32))) (Undefined!12394) (MissingVacant!12394 (index!51970 (_ BitVec 32))) )
))
(declare-fun lt!651487 () SeekEntryResult!12394)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99737 (_ BitVec 32)) SeekEntryResult!12394)

(assert (=> b!1494804 (= lt!651487 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651489 (select (arr!48131 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!1016994 () Bool)

(assert (=> start!127236 (=> (not res!1016994) (not e!837320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127236 (= res!1016994 (validMask!0 mask!2687))))

(assert (=> start!127236 e!837320))

(assert (=> start!127236 true))

(declare-fun array_inv!37076 (array!99737) Bool)

(assert (=> start!127236 (array_inv!37076 a!2862)))

(declare-fun b!1494805 () Bool)

(declare-fun res!1017001 () Bool)

(assert (=> b!1494805 (=> (not res!1017001) (not e!837320))))

(declare-datatypes ((List!34812 0))(
  ( (Nil!34809) (Cons!34808 (h!36200 (_ BitVec 64)) (t!49513 List!34812)) )
))
(declare-fun arrayNoDuplicates!0 (array!99737 (_ BitVec 32) List!34812) Bool)

(assert (=> b!1494805 (= res!1017001 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34809))))

(declare-fun b!1494806 () Bool)

(declare-fun res!1017006 () Bool)

(assert (=> b!1494806 (=> (not res!1017006) (not e!837324))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494806 (= res!1017006 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1494807 () Bool)

(declare-fun res!1016995 () Bool)

(declare-fun e!837325 () Bool)

(assert (=> b!1494807 (=> (not res!1016995) (not e!837325))))

(declare-fun lt!651490 () SeekEntryResult!12394)

(assert (=> b!1494807 (= res!1016995 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48131 a!2862) j!93) a!2862 mask!2687) lt!651490))))

(declare-fun b!1494808 () Bool)

(declare-fun res!1016996 () Bool)

(assert (=> b!1494808 (=> (not res!1016996) (not e!837320))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1494808 (= res!1016996 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48682 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48682 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48682 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494809 () Bool)

(declare-fun e!837321 () Bool)

(assert (=> b!1494809 (= e!837321 e!837325)))

(declare-fun res!1017000 () Bool)

(assert (=> b!1494809 (=> (not res!1017000) (not e!837325))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494809 (= res!1017000 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48131 a!2862) j!93) mask!2687) (select (arr!48131 a!2862) j!93) a!2862 mask!2687) lt!651490))))

(assert (=> b!1494809 (= lt!651490 (Intermediate!12394 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494810 () Bool)

(assert (=> b!1494810 (= e!837326 (or (= (select (arr!48131 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48131 a!2862) intermediateBeforeIndex!19) (select (arr!48131 a!2862) j!93))))))

(declare-fun b!1494811 () Bool)

(declare-fun res!1016993 () Bool)

(assert (=> b!1494811 (=> (not res!1016993) (not e!837324))))

(declare-fun e!837318 () Bool)

(assert (=> b!1494811 (= res!1016993 e!837318)))

(declare-fun c!138440 () Bool)

(assert (=> b!1494811 (= c!138440 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494812 () Bool)

(declare-fun res!1017004 () Bool)

(assert (=> b!1494812 (=> (not res!1017004) (not e!837320))))

(assert (=> b!1494812 (= res!1017004 (and (= (size!48682 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48682 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48682 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!651485 () (_ BitVec 64))

(declare-fun lt!651486 () array!99737)

(declare-fun lt!651488 () SeekEntryResult!12394)

(declare-fun b!1494813 () Bool)

(assert (=> b!1494813 (= e!837318 (= lt!651488 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651485 lt!651486 mask!2687)))))

(declare-fun b!1494814 () Bool)

(declare-fun res!1017005 () Bool)

(assert (=> b!1494814 (=> (not res!1017005) (not e!837326))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99737 (_ BitVec 32)) SeekEntryResult!12394)

(assert (=> b!1494814 (= res!1017005 (= (seekEntryOrOpen!0 (select (arr!48131 a!2862) j!93) a!2862 mask!2687) (Found!12394 j!93)))))

(declare-fun b!1494815 () Bool)

(declare-fun res!1016999 () Bool)

(assert (=> b!1494815 (=> (not res!1016999) (not e!837320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494815 (= res!1016999 (validKeyInArray!0 (select (arr!48131 a!2862) j!93)))))

(declare-fun b!1494816 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99737 (_ BitVec 32)) SeekEntryResult!12394)

(assert (=> b!1494816 (= e!837318 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651485 lt!651486 mask!2687) (seekEntryOrOpen!0 lt!651485 lt!651486 mask!2687)))))

(declare-fun b!1494817 () Bool)

(declare-fun res!1016998 () Bool)

(assert (=> b!1494817 (=> (not res!1016998) (not e!837320))))

(assert (=> b!1494817 (= res!1016998 (validKeyInArray!0 (select (arr!48131 a!2862) i!1006)))))

(declare-fun b!1494818 () Bool)

(assert (=> b!1494818 (= e!837320 e!837321)))

(declare-fun res!1016990 () Bool)

(assert (=> b!1494818 (=> (not res!1016990) (not e!837321))))

(assert (=> b!1494818 (= res!1016990 (= (select (store (arr!48131 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494818 (= lt!651486 (array!99738 (store (arr!48131 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48682 a!2862)))))

(declare-fun b!1494819 () Bool)

(assert (=> b!1494819 (= e!837325 e!837324)))

(declare-fun res!1016992 () Bool)

(assert (=> b!1494819 (=> (not res!1016992) (not e!837324))))

(assert (=> b!1494819 (= res!1016992 (= lt!651488 (Intermediate!12394 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1494819 (= lt!651488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651485 mask!2687) lt!651485 lt!651486 mask!2687))))

(assert (=> b!1494819 (= lt!651485 (select (store (arr!48131 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494820 () Bool)

(assert (=> b!1494820 (= e!837319 e!837323)))

(declare-fun res!1016991 () Bool)

(assert (=> b!1494820 (=> res!1016991 e!837323)))

(assert (=> b!1494820 (= res!1016991 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651489 #b00000000000000000000000000000000) (bvsge lt!651489 (size!48682 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494820 (= lt!651489 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!127236 res!1016994) b!1494812))

(assert (= (and b!1494812 res!1017004) b!1494817))

(assert (= (and b!1494817 res!1016998) b!1494815))

(assert (= (and b!1494815 res!1016999) b!1494802))

(assert (= (and b!1494802 res!1017003) b!1494805))

(assert (= (and b!1494805 res!1017001) b!1494808))

(assert (= (and b!1494808 res!1016996) b!1494818))

(assert (= (and b!1494818 res!1016990) b!1494809))

(assert (= (and b!1494809 res!1017000) b!1494807))

(assert (= (and b!1494807 res!1016995) b!1494819))

(assert (= (and b!1494819 res!1016992) b!1494811))

(assert (= (and b!1494811 c!138440) b!1494813))

(assert (= (and b!1494811 (not c!138440)) b!1494816))

(assert (= (and b!1494811 res!1016993) b!1494806))

(assert (= (and b!1494806 res!1017006) b!1494803))

(assert (= (and b!1494803 res!1017002) b!1494814))

(assert (= (and b!1494814 res!1017005) b!1494810))

(assert (= (and b!1494803 (not res!1016997)) b!1494820))

(assert (= (and b!1494820 (not res!1016991)) b!1494804))

(declare-fun m!1378449 () Bool)

(assert (=> b!1494802 m!1378449))

(declare-fun m!1378451 () Bool)

(assert (=> b!1494819 m!1378451))

(assert (=> b!1494819 m!1378451))

(declare-fun m!1378453 () Bool)

(assert (=> b!1494819 m!1378453))

(declare-fun m!1378455 () Bool)

(assert (=> b!1494819 m!1378455))

(declare-fun m!1378457 () Bool)

(assert (=> b!1494819 m!1378457))

(declare-fun m!1378459 () Bool)

(assert (=> b!1494803 m!1378459))

(assert (=> b!1494803 m!1378455))

(declare-fun m!1378461 () Bool)

(assert (=> b!1494803 m!1378461))

(declare-fun m!1378463 () Bool)

(assert (=> b!1494803 m!1378463))

(declare-fun m!1378465 () Bool)

(assert (=> b!1494803 m!1378465))

(declare-fun m!1378467 () Bool)

(assert (=> b!1494803 m!1378467))

(declare-fun m!1378469 () Bool)

(assert (=> b!1494816 m!1378469))

(declare-fun m!1378471 () Bool)

(assert (=> b!1494816 m!1378471))

(assert (=> b!1494807 m!1378467))

(assert (=> b!1494807 m!1378467))

(declare-fun m!1378473 () Bool)

(assert (=> b!1494807 m!1378473))

(declare-fun m!1378475 () Bool)

(assert (=> b!1494817 m!1378475))

(assert (=> b!1494817 m!1378475))

(declare-fun m!1378477 () Bool)

(assert (=> b!1494817 m!1378477))

(assert (=> b!1494804 m!1378467))

(assert (=> b!1494804 m!1378467))

(declare-fun m!1378479 () Bool)

(assert (=> b!1494804 m!1378479))

(declare-fun m!1378481 () Bool)

(assert (=> b!1494805 m!1378481))

(declare-fun m!1378483 () Bool)

(assert (=> start!127236 m!1378483))

(declare-fun m!1378485 () Bool)

(assert (=> start!127236 m!1378485))

(assert (=> b!1494814 m!1378467))

(assert (=> b!1494814 m!1378467))

(declare-fun m!1378487 () Bool)

(assert (=> b!1494814 m!1378487))

(assert (=> b!1494809 m!1378467))

(assert (=> b!1494809 m!1378467))

(declare-fun m!1378489 () Bool)

(assert (=> b!1494809 m!1378489))

(assert (=> b!1494809 m!1378489))

(assert (=> b!1494809 m!1378467))

(declare-fun m!1378491 () Bool)

(assert (=> b!1494809 m!1378491))

(declare-fun m!1378493 () Bool)

(assert (=> b!1494810 m!1378493))

(assert (=> b!1494810 m!1378467))

(assert (=> b!1494815 m!1378467))

(assert (=> b!1494815 m!1378467))

(declare-fun m!1378495 () Bool)

(assert (=> b!1494815 m!1378495))

(assert (=> b!1494818 m!1378455))

(declare-fun m!1378497 () Bool)

(assert (=> b!1494818 m!1378497))

(declare-fun m!1378499 () Bool)

(assert (=> b!1494813 m!1378499))

(declare-fun m!1378501 () Bool)

(assert (=> b!1494820 m!1378501))

(check-sat (not b!1494820) (not b!1494802) (not b!1494813) (not b!1494815) (not b!1494804) (not b!1494803) (not b!1494809) (not b!1494814) (not b!1494819) (not b!1494817) (not b!1494805) (not b!1494807) (not start!127236) (not b!1494816))
(check-sat)
