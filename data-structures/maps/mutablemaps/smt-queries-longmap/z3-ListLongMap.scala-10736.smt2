; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125598 () Bool)

(assert start!125598)

(declare-fun b!1468934 () Bool)

(declare-fun res!997587 () Bool)

(declare-fun e!824759 () Bool)

(assert (=> b!1468934 (=> (not res!997587) (not e!824759))))

(declare-datatypes ((array!98963 0))(
  ( (array!98964 (arr!47765 (Array (_ BitVec 32) (_ BitVec 64))) (size!48316 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98963)

(declare-datatypes ((List!34446 0))(
  ( (Nil!34443) (Cons!34442 (h!35792 (_ BitVec 64)) (t!49147 List!34446)) )
))
(declare-fun arrayNoDuplicates!0 (array!98963 (_ BitVec 32) List!34446) Bool)

(assert (=> b!1468934 (= res!997587 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34443))))

(declare-fun b!1468935 () Bool)

(declare-fun res!997586 () Bool)

(assert (=> b!1468935 (=> (not res!997586) (not e!824759))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1468935 (= res!997586 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48316 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48316 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48316 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47765 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468936 () Bool)

(declare-fun res!997583 () Bool)

(assert (=> b!1468936 (=> (not res!997583) (not e!824759))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468936 (= res!997583 (validKeyInArray!0 (select (arr!47765 a!2862) j!93)))))

(declare-fun res!997590 () Bool)

(assert (=> start!125598 (=> (not res!997590) (not e!824759))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125598 (= res!997590 (validMask!0 mask!2687))))

(assert (=> start!125598 e!824759))

(assert (=> start!125598 true))

(declare-fun array_inv!36710 (array!98963) Bool)

(assert (=> start!125598 (array_inv!36710 a!2862)))

(declare-fun b!1468937 () Bool)

(declare-fun res!997588 () Bool)

(assert (=> b!1468937 (=> (not res!997588) (not e!824759))))

(assert (=> b!1468937 (= res!997588 (validKeyInArray!0 (select (arr!47765 a!2862) i!1006)))))

(declare-fun b!1468938 () Bool)

(declare-fun e!824757 () Bool)

(assert (=> b!1468938 (= e!824759 e!824757)))

(declare-fun res!997582 () Bool)

(assert (=> b!1468938 (=> (not res!997582) (not e!824757))))

(declare-datatypes ((SeekEntryResult!12028 0))(
  ( (MissingZero!12028 (index!50503 (_ BitVec 32))) (Found!12028 (index!50504 (_ BitVec 32))) (Intermediate!12028 (undefined!12840 Bool) (index!50505 (_ BitVec 32)) (x!132088 (_ BitVec 32))) (Undefined!12028) (MissingVacant!12028 (index!50506 (_ BitVec 32))) )
))
(declare-fun lt!642358 () SeekEntryResult!12028)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98963 (_ BitVec 32)) SeekEntryResult!12028)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468938 (= res!997582 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47765 a!2862) j!93) mask!2687) (select (arr!47765 a!2862) j!93) a!2862 mask!2687) lt!642358))))

(assert (=> b!1468938 (= lt!642358 (Intermediate!12028 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468939 () Bool)

(declare-fun res!997584 () Bool)

(assert (=> b!1468939 (=> (not res!997584) (not e!824759))))

(assert (=> b!1468939 (= res!997584 (and (= (size!48316 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48316 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48316 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468940 () Bool)

(declare-fun res!997585 () Bool)

(assert (=> b!1468940 (=> (not res!997585) (not e!824759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98963 (_ BitVec 32)) Bool)

(assert (=> b!1468940 (= res!997585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468941 () Bool)

(assert (=> b!1468941 (= e!824757 false)))

(declare-fun lt!642357 () SeekEntryResult!12028)

(assert (=> b!1468941 (= lt!642357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47765 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47765 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98964 (store (arr!47765 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48316 a!2862)) mask!2687))))

(declare-fun b!1468942 () Bool)

(declare-fun res!997589 () Bool)

(assert (=> b!1468942 (=> (not res!997589) (not e!824757))))

(assert (=> b!1468942 (= res!997589 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47765 a!2862) j!93) a!2862 mask!2687) lt!642358))))

(assert (= (and start!125598 res!997590) b!1468939))

(assert (= (and b!1468939 res!997584) b!1468937))

(assert (= (and b!1468937 res!997588) b!1468936))

(assert (= (and b!1468936 res!997583) b!1468940))

(assert (= (and b!1468940 res!997585) b!1468934))

(assert (= (and b!1468934 res!997587) b!1468935))

(assert (= (and b!1468935 res!997586) b!1468938))

(assert (= (and b!1468938 res!997582) b!1468942))

(assert (= (and b!1468942 res!997589) b!1468941))

(declare-fun m!1356161 () Bool)

(assert (=> b!1468940 m!1356161))

(declare-fun m!1356163 () Bool)

(assert (=> b!1468938 m!1356163))

(assert (=> b!1468938 m!1356163))

(declare-fun m!1356165 () Bool)

(assert (=> b!1468938 m!1356165))

(assert (=> b!1468938 m!1356165))

(assert (=> b!1468938 m!1356163))

(declare-fun m!1356167 () Bool)

(assert (=> b!1468938 m!1356167))

(declare-fun m!1356169 () Bool)

(assert (=> b!1468935 m!1356169))

(declare-fun m!1356171 () Bool)

(assert (=> b!1468935 m!1356171))

(declare-fun m!1356173 () Bool)

(assert (=> start!125598 m!1356173))

(declare-fun m!1356175 () Bool)

(assert (=> start!125598 m!1356175))

(assert (=> b!1468941 m!1356169))

(declare-fun m!1356177 () Bool)

(assert (=> b!1468941 m!1356177))

(assert (=> b!1468941 m!1356177))

(declare-fun m!1356179 () Bool)

(assert (=> b!1468941 m!1356179))

(assert (=> b!1468941 m!1356179))

(assert (=> b!1468941 m!1356177))

(declare-fun m!1356181 () Bool)

(assert (=> b!1468941 m!1356181))

(assert (=> b!1468936 m!1356163))

(assert (=> b!1468936 m!1356163))

(declare-fun m!1356183 () Bool)

(assert (=> b!1468936 m!1356183))

(declare-fun m!1356185 () Bool)

(assert (=> b!1468937 m!1356185))

(assert (=> b!1468937 m!1356185))

(declare-fun m!1356187 () Bool)

(assert (=> b!1468937 m!1356187))

(declare-fun m!1356189 () Bool)

(assert (=> b!1468934 m!1356189))

(assert (=> b!1468942 m!1356163))

(assert (=> b!1468942 m!1356163))

(declare-fun m!1356191 () Bool)

(assert (=> b!1468942 m!1356191))

(check-sat (not b!1468938) (not b!1468937) (not b!1468941) (not b!1468936) (not b!1468934) (not b!1468940) (not start!125598) (not b!1468942))
(check-sat)
