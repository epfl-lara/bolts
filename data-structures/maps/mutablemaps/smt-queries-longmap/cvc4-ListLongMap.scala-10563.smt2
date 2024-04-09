; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124562 () Bool)

(assert start!124562)

(declare-fun b!1440825 () Bool)

(declare-fun res!973362 () Bool)

(declare-fun e!812311 () Bool)

(assert (=> b!1440825 (=> (not res!973362) (not e!812311))))

(declare-datatypes ((array!97927 0))(
  ( (array!97928 (arr!47247 (Array (_ BitVec 32) (_ BitVec 64))) (size!47798 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97927)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440825 (= res!973362 (validKeyInArray!0 (select (arr!47247 a!2862) i!1006)))))

(declare-fun b!1440826 () Bool)

(declare-fun res!973369 () Bool)

(declare-fun e!812312 () Bool)

(assert (=> b!1440826 (=> (not res!973369) (not e!812312))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1440826 (= res!973369 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000)))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1440827 () Bool)

(assert (=> b!1440827 (= e!812312 (not (validKeyInArray!0 (select (store (arr!47247 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1440828 () Bool)

(declare-fun res!973366 () Bool)

(assert (=> b!1440828 (=> (not res!973366) (not e!812311))))

(assert (=> b!1440828 (= res!973366 (validKeyInArray!0 (select (arr!47247 a!2862) j!93)))))

(declare-fun b!1440829 () Bool)

(declare-fun res!973361 () Bool)

(assert (=> b!1440829 (=> (not res!973361) (not e!812311))))

(assert (=> b!1440829 (= res!973361 (and (= (size!47798 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47798 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47798 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440830 () Bool)

(declare-fun res!973367 () Bool)

(assert (=> b!1440830 (=> (not res!973367) (not e!812311))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440830 (= res!973367 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47798 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47798 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47798 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47247 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440831 () Bool)

(declare-fun res!973371 () Bool)

(assert (=> b!1440831 (=> (not res!973371) (not e!812311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97927 (_ BitVec 32)) Bool)

(assert (=> b!1440831 (= res!973371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!973370 () Bool)

(assert (=> start!124562 (=> (not res!973370) (not e!812311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124562 (= res!973370 (validMask!0 mask!2687))))

(assert (=> start!124562 e!812311))

(assert (=> start!124562 true))

(declare-fun array_inv!36192 (array!97927) Bool)

(assert (=> start!124562 (array_inv!36192 a!2862)))

(declare-fun b!1440832 () Bool)

(declare-fun res!973363 () Bool)

(assert (=> b!1440832 (=> (not res!973363) (not e!812311))))

(declare-datatypes ((List!33928 0))(
  ( (Nil!33925) (Cons!33924 (h!35274 (_ BitVec 64)) (t!48629 List!33928)) )
))
(declare-fun arrayNoDuplicates!0 (array!97927 (_ BitVec 32) List!33928) Bool)

(assert (=> b!1440832 (= res!973363 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33925))))

(declare-fun b!1440833 () Bool)

(declare-fun res!973368 () Bool)

(assert (=> b!1440833 (=> (not res!973368) (not e!812312))))

(declare-datatypes ((SeekEntryResult!11522 0))(
  ( (MissingZero!11522 (index!48479 (_ BitVec 32))) (Found!11522 (index!48480 (_ BitVec 32))) (Intermediate!11522 (undefined!12334 Bool) (index!48481 (_ BitVec 32)) (x!130198 (_ BitVec 32))) (Undefined!11522) (MissingVacant!11522 (index!48482 (_ BitVec 32))) )
))
(declare-fun lt!632977 () SeekEntryResult!11522)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97927 (_ BitVec 32)) SeekEntryResult!11522)

(assert (=> b!1440833 (= res!973368 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47247 a!2862) j!93) a!2862 mask!2687) lt!632977))))

(declare-fun b!1440834 () Bool)

(declare-fun res!973365 () Bool)

(assert (=> b!1440834 (=> (not res!973365) (not e!812312))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440834 (= res!973365 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47247 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47247 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97928 (store (arr!47247 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47798 a!2862)) mask!2687) (Intermediate!11522 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440835 () Bool)

(assert (=> b!1440835 (= e!812311 e!812312)))

(declare-fun res!973364 () Bool)

(assert (=> b!1440835 (=> (not res!973364) (not e!812312))))

(assert (=> b!1440835 (= res!973364 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47247 a!2862) j!93) mask!2687) (select (arr!47247 a!2862) j!93) a!2862 mask!2687) lt!632977))))

(assert (=> b!1440835 (= lt!632977 (Intermediate!11522 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124562 res!973370) b!1440829))

(assert (= (and b!1440829 res!973361) b!1440825))

(assert (= (and b!1440825 res!973362) b!1440828))

(assert (= (and b!1440828 res!973366) b!1440831))

(assert (= (and b!1440831 res!973371) b!1440832))

(assert (= (and b!1440832 res!973363) b!1440830))

(assert (= (and b!1440830 res!973367) b!1440835))

(assert (= (and b!1440835 res!973364) b!1440833))

(assert (= (and b!1440833 res!973368) b!1440834))

(assert (= (and b!1440834 res!973365) b!1440826))

(assert (= (and b!1440826 res!973369) b!1440827))

(declare-fun m!1330121 () Bool)

(assert (=> start!124562 m!1330121))

(declare-fun m!1330123 () Bool)

(assert (=> start!124562 m!1330123))

(declare-fun m!1330125 () Bool)

(assert (=> b!1440832 m!1330125))

(declare-fun m!1330127 () Bool)

(assert (=> b!1440827 m!1330127))

(declare-fun m!1330129 () Bool)

(assert (=> b!1440827 m!1330129))

(assert (=> b!1440827 m!1330129))

(declare-fun m!1330131 () Bool)

(assert (=> b!1440827 m!1330131))

(assert (=> b!1440830 m!1330127))

(declare-fun m!1330133 () Bool)

(assert (=> b!1440830 m!1330133))

(declare-fun m!1330135 () Bool)

(assert (=> b!1440828 m!1330135))

(assert (=> b!1440828 m!1330135))

(declare-fun m!1330137 () Bool)

(assert (=> b!1440828 m!1330137))

(assert (=> b!1440834 m!1330127))

(assert (=> b!1440834 m!1330129))

(assert (=> b!1440834 m!1330129))

(declare-fun m!1330139 () Bool)

(assert (=> b!1440834 m!1330139))

(assert (=> b!1440834 m!1330139))

(assert (=> b!1440834 m!1330129))

(declare-fun m!1330141 () Bool)

(assert (=> b!1440834 m!1330141))

(declare-fun m!1330143 () Bool)

(assert (=> b!1440825 m!1330143))

(assert (=> b!1440825 m!1330143))

(declare-fun m!1330145 () Bool)

(assert (=> b!1440825 m!1330145))

(assert (=> b!1440835 m!1330135))

(assert (=> b!1440835 m!1330135))

(declare-fun m!1330147 () Bool)

(assert (=> b!1440835 m!1330147))

(assert (=> b!1440835 m!1330147))

(assert (=> b!1440835 m!1330135))

(declare-fun m!1330149 () Bool)

(assert (=> b!1440835 m!1330149))

(assert (=> b!1440833 m!1330135))

(assert (=> b!1440833 m!1330135))

(declare-fun m!1330151 () Bool)

(assert (=> b!1440833 m!1330151))

(declare-fun m!1330153 () Bool)

(assert (=> b!1440831 m!1330153))

(push 1)

(assert (not b!1440833))

(assert (not b!1440832))

(assert (not start!124562))

