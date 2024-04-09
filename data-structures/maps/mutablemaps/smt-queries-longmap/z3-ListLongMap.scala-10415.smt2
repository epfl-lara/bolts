; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122694 () Bool)

(assert start!122694)

(declare-fun b!1420687 () Bool)

(declare-fun res!956236 () Bool)

(declare-fun e!803474 () Bool)

(assert (=> b!1420687 (=> (not res!956236) (not e!803474))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96977 0))(
  ( (array!96978 (arr!46802 (Array (_ BitVec 32) (_ BitVec 64))) (size!47353 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96977)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11109 0))(
  ( (MissingZero!11109 (index!46827 (_ BitVec 32))) (Found!11109 (index!46828 (_ BitVec 32))) (Intermediate!11109 (undefined!11921 Bool) (index!46829 (_ BitVec 32)) (x!128490 (_ BitVec 32))) (Undefined!11109) (MissingVacant!11109 (index!46830 (_ BitVec 32))) )
))
(declare-fun lt!625931 () SeekEntryResult!11109)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96977 (_ BitVec 32)) SeekEntryResult!11109)

(assert (=> b!1420687 (= res!956236 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46802 a!2831) j!81) a!2831 mask!2608) lt!625931))))

(declare-fun b!1420688 () Bool)

(declare-fun res!956234 () Bool)

(declare-fun e!803477 () Bool)

(assert (=> b!1420688 (=> (not res!956234) (not e!803477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420688 (= res!956234 (validKeyInArray!0 (select (arr!46802 a!2831) j!81)))))

(declare-fun b!1420689 () Bool)

(declare-fun res!956230 () Bool)

(assert (=> b!1420689 (=> (not res!956230) (not e!803477))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420689 (= res!956230 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47353 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47353 a!2831))))))

(declare-fun b!1420690 () Bool)

(declare-fun res!956232 () Bool)

(assert (=> b!1420690 (=> (not res!956232) (not e!803477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96977 (_ BitVec 32)) Bool)

(assert (=> b!1420690 (= res!956232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420691 () Bool)

(declare-fun res!956231 () Bool)

(assert (=> b!1420691 (=> (not res!956231) (not e!803477))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420691 (= res!956231 (and (= (size!47353 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47353 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47353 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420692 () Bool)

(declare-fun e!803475 () Bool)

(assert (=> b!1420692 (= e!803477 e!803475)))

(declare-fun res!956238 () Bool)

(assert (=> b!1420692 (=> (not res!956238) (not e!803475))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420692 (= res!956238 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46802 a!2831) j!81) mask!2608) (select (arr!46802 a!2831) j!81) a!2831 mask!2608) lt!625931))))

(assert (=> b!1420692 (= lt!625931 (Intermediate!11109 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420693 () Bool)

(assert (=> b!1420693 (= e!803475 e!803474)))

(declare-fun res!956237 () Bool)

(assert (=> b!1420693 (=> (not res!956237) (not e!803474))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!625933 () (_ BitVec 64))

(declare-fun lt!625932 () array!96977)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1420693 (= res!956237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625933 mask!2608) lt!625933 lt!625932 mask!2608) (Intermediate!11109 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420693 (= lt!625933 (select (store (arr!46802 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420693 (= lt!625932 (array!96978 (store (arr!46802 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47353 a!2831)))))

(declare-fun b!1420694 () Bool)

(declare-fun res!956229 () Bool)

(assert (=> b!1420694 (=> (not res!956229) (not e!803477))))

(declare-datatypes ((List!33492 0))(
  ( (Nil!33489) (Cons!33488 (h!34790 (_ BitVec 64)) (t!48193 List!33492)) )
))
(declare-fun arrayNoDuplicates!0 (array!96977 (_ BitVec 32) List!33492) Bool)

(assert (=> b!1420694 (= res!956229 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33489))))

(declare-fun b!1420695 () Bool)

(assert (=> b!1420695 (= e!803474 false)))

(declare-fun lt!625930 () SeekEntryResult!11109)

(assert (=> b!1420695 (= lt!625930 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625933 lt!625932 mask!2608))))

(declare-fun res!956233 () Bool)

(assert (=> start!122694 (=> (not res!956233) (not e!803477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122694 (= res!956233 (validMask!0 mask!2608))))

(assert (=> start!122694 e!803477))

(assert (=> start!122694 true))

(declare-fun array_inv!35747 (array!96977) Bool)

(assert (=> start!122694 (array_inv!35747 a!2831)))

(declare-fun b!1420696 () Bool)

(declare-fun res!956235 () Bool)

(assert (=> b!1420696 (=> (not res!956235) (not e!803477))))

(assert (=> b!1420696 (= res!956235 (validKeyInArray!0 (select (arr!46802 a!2831) i!982)))))

(assert (= (and start!122694 res!956233) b!1420691))

(assert (= (and b!1420691 res!956231) b!1420696))

(assert (= (and b!1420696 res!956235) b!1420688))

(assert (= (and b!1420688 res!956234) b!1420690))

(assert (= (and b!1420690 res!956232) b!1420694))

(assert (= (and b!1420694 res!956229) b!1420689))

(assert (= (and b!1420689 res!956230) b!1420692))

(assert (= (and b!1420692 res!956238) b!1420693))

(assert (= (and b!1420693 res!956237) b!1420687))

(assert (= (and b!1420687 res!956236) b!1420695))

(declare-fun m!1311271 () Bool)

(assert (=> start!122694 m!1311271))

(declare-fun m!1311273 () Bool)

(assert (=> start!122694 m!1311273))

(declare-fun m!1311275 () Bool)

(assert (=> b!1420694 m!1311275))

(declare-fun m!1311277 () Bool)

(assert (=> b!1420695 m!1311277))

(declare-fun m!1311279 () Bool)

(assert (=> b!1420690 m!1311279))

(declare-fun m!1311281 () Bool)

(assert (=> b!1420696 m!1311281))

(assert (=> b!1420696 m!1311281))

(declare-fun m!1311283 () Bool)

(assert (=> b!1420696 m!1311283))

(declare-fun m!1311285 () Bool)

(assert (=> b!1420693 m!1311285))

(assert (=> b!1420693 m!1311285))

(declare-fun m!1311287 () Bool)

(assert (=> b!1420693 m!1311287))

(declare-fun m!1311289 () Bool)

(assert (=> b!1420693 m!1311289))

(declare-fun m!1311291 () Bool)

(assert (=> b!1420693 m!1311291))

(declare-fun m!1311293 () Bool)

(assert (=> b!1420688 m!1311293))

(assert (=> b!1420688 m!1311293))

(declare-fun m!1311295 () Bool)

(assert (=> b!1420688 m!1311295))

(assert (=> b!1420687 m!1311293))

(assert (=> b!1420687 m!1311293))

(declare-fun m!1311297 () Bool)

(assert (=> b!1420687 m!1311297))

(assert (=> b!1420692 m!1311293))

(assert (=> b!1420692 m!1311293))

(declare-fun m!1311299 () Bool)

(assert (=> b!1420692 m!1311299))

(assert (=> b!1420692 m!1311299))

(assert (=> b!1420692 m!1311293))

(declare-fun m!1311301 () Bool)

(assert (=> b!1420692 m!1311301))

(check-sat (not b!1420694) (not b!1420695) (not b!1420688) (not b!1420692) (not b!1420690) (not b!1420687) (not b!1420696) (not start!122694) (not b!1420693))
(check-sat)
