; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122688 () Bool)

(assert start!122688)

(declare-fun b!1420597 () Bool)

(declare-fun res!956144 () Bool)

(declare-fun e!803440 () Bool)

(assert (=> b!1420597 (=> (not res!956144) (not e!803440))))

(declare-datatypes ((array!96971 0))(
  ( (array!96972 (arr!46799 (Array (_ BitVec 32) (_ BitVec 64))) (size!47350 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96971)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420597 (= res!956144 (validKeyInArray!0 (select (arr!46799 a!2831) j!81)))))

(declare-fun b!1420598 () Bool)

(declare-fun res!956142 () Bool)

(assert (=> b!1420598 (=> (not res!956142) (not e!803440))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420598 (= res!956142 (validKeyInArray!0 (select (arr!46799 a!2831) i!982)))))

(declare-fun b!1420599 () Bool)

(declare-fun res!956147 () Bool)

(declare-fun e!803439 () Bool)

(assert (=> b!1420599 (=> (not res!956147) (not e!803439))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11106 0))(
  ( (MissingZero!11106 (index!46815 (_ BitVec 32))) (Found!11106 (index!46816 (_ BitVec 32))) (Intermediate!11106 (undefined!11918 Bool) (index!46817 (_ BitVec 32)) (x!128479 (_ BitVec 32))) (Undefined!11106) (MissingVacant!11106 (index!46818 (_ BitVec 32))) )
))
(declare-fun lt!625896 () SeekEntryResult!11106)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96971 (_ BitVec 32)) SeekEntryResult!11106)

(assert (=> b!1420599 (= res!956147 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46799 a!2831) j!81) a!2831 mask!2608) lt!625896))))

(declare-fun b!1420601 () Bool)

(declare-fun res!956143 () Bool)

(assert (=> b!1420601 (=> (not res!956143) (not e!803440))))

(declare-datatypes ((List!33489 0))(
  ( (Nil!33486) (Cons!33485 (h!34787 (_ BitVec 64)) (t!48190 List!33489)) )
))
(declare-fun arrayNoDuplicates!0 (array!96971 (_ BitVec 32) List!33489) Bool)

(assert (=> b!1420601 (= res!956143 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33486))))

(declare-fun b!1420602 () Bool)

(declare-fun res!956148 () Bool)

(assert (=> b!1420602 (=> (not res!956148) (not e!803440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96971 (_ BitVec 32)) Bool)

(assert (=> b!1420602 (= res!956148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420603 () Bool)

(declare-fun e!803441 () Bool)

(assert (=> b!1420603 (= e!803440 e!803441)))

(declare-fun res!956140 () Bool)

(assert (=> b!1420603 (=> (not res!956140) (not e!803441))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420603 (= res!956140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46799 a!2831) j!81) mask!2608) (select (arr!46799 a!2831) j!81) a!2831 mask!2608) lt!625896))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420603 (= lt!625896 (Intermediate!11106 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420604 () Bool)

(assert (=> b!1420604 (= e!803441 e!803439)))

(declare-fun res!956139 () Bool)

(assert (=> b!1420604 (=> (not res!956139) (not e!803439))))

(declare-fun lt!625894 () array!96971)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!625895 () (_ BitVec 64))

(assert (=> b!1420604 (= res!956139 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625895 mask!2608) lt!625895 lt!625894 mask!2608) (Intermediate!11106 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420604 (= lt!625895 (select (store (arr!46799 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420604 (= lt!625894 (array!96972 (store (arr!46799 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47350 a!2831)))))

(declare-fun b!1420605 () Bool)

(assert (=> b!1420605 (= e!803439 false)))

(declare-fun lt!625897 () SeekEntryResult!11106)

(assert (=> b!1420605 (= lt!625897 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625895 lt!625894 mask!2608))))

(declare-fun b!1420606 () Bool)

(declare-fun res!956145 () Bool)

(assert (=> b!1420606 (=> (not res!956145) (not e!803440))))

(assert (=> b!1420606 (= res!956145 (and (= (size!47350 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47350 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47350 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!956146 () Bool)

(assert (=> start!122688 (=> (not res!956146) (not e!803440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122688 (= res!956146 (validMask!0 mask!2608))))

(assert (=> start!122688 e!803440))

(assert (=> start!122688 true))

(declare-fun array_inv!35744 (array!96971) Bool)

(assert (=> start!122688 (array_inv!35744 a!2831)))

(declare-fun b!1420600 () Bool)

(declare-fun res!956141 () Bool)

(assert (=> b!1420600 (=> (not res!956141) (not e!803440))))

(assert (=> b!1420600 (= res!956141 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47350 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47350 a!2831))))))

(assert (= (and start!122688 res!956146) b!1420606))

(assert (= (and b!1420606 res!956145) b!1420598))

(assert (= (and b!1420598 res!956142) b!1420597))

(assert (= (and b!1420597 res!956144) b!1420602))

(assert (= (and b!1420602 res!956148) b!1420601))

(assert (= (and b!1420601 res!956143) b!1420600))

(assert (= (and b!1420600 res!956141) b!1420603))

(assert (= (and b!1420603 res!956140) b!1420604))

(assert (= (and b!1420604 res!956139) b!1420599))

(assert (= (and b!1420599 res!956147) b!1420605))

(declare-fun m!1311175 () Bool)

(assert (=> b!1420605 m!1311175))

(declare-fun m!1311177 () Bool)

(assert (=> b!1420601 m!1311177))

(declare-fun m!1311179 () Bool)

(assert (=> b!1420597 m!1311179))

(assert (=> b!1420597 m!1311179))

(declare-fun m!1311181 () Bool)

(assert (=> b!1420597 m!1311181))

(declare-fun m!1311183 () Bool)

(assert (=> b!1420598 m!1311183))

(assert (=> b!1420598 m!1311183))

(declare-fun m!1311185 () Bool)

(assert (=> b!1420598 m!1311185))

(declare-fun m!1311187 () Bool)

(assert (=> b!1420602 m!1311187))

(assert (=> b!1420603 m!1311179))

(assert (=> b!1420603 m!1311179))

(declare-fun m!1311189 () Bool)

(assert (=> b!1420603 m!1311189))

(assert (=> b!1420603 m!1311189))

(assert (=> b!1420603 m!1311179))

(declare-fun m!1311191 () Bool)

(assert (=> b!1420603 m!1311191))

(assert (=> b!1420599 m!1311179))

(assert (=> b!1420599 m!1311179))

(declare-fun m!1311193 () Bool)

(assert (=> b!1420599 m!1311193))

(declare-fun m!1311195 () Bool)

(assert (=> start!122688 m!1311195))

(declare-fun m!1311197 () Bool)

(assert (=> start!122688 m!1311197))

(declare-fun m!1311199 () Bool)

(assert (=> b!1420604 m!1311199))

(assert (=> b!1420604 m!1311199))

(declare-fun m!1311201 () Bool)

(assert (=> b!1420604 m!1311201))

(declare-fun m!1311203 () Bool)

(assert (=> b!1420604 m!1311203))

(declare-fun m!1311205 () Bool)

(assert (=> b!1420604 m!1311205))

(check-sat (not start!122688) (not b!1420601) (not b!1420602) (not b!1420605) (not b!1420604) (not b!1420603) (not b!1420599) (not b!1420597) (not b!1420598))
(check-sat)
