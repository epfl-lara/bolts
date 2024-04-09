; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123588 () Bool)

(assert start!123588)

(declare-fun b!1432275 () Bool)

(declare-fun res!966257 () Bool)

(declare-fun e!808549 () Bool)

(assert (=> b!1432275 (=> (not res!966257) (not e!808549))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97478 0))(
  ( (array!97479 (arr!47042 (Array (_ BitVec 32) (_ BitVec 64))) (size!47593 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97478)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432275 (= res!966257 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47593 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47593 a!2831))))))

(declare-fun b!1432276 () Bool)

(declare-fun e!808548 () Bool)

(assert (=> b!1432276 (= e!808548 true)))

(declare-fun lt!630497 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432276 (= lt!630497 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432277 () Bool)

(declare-fun res!966252 () Bool)

(declare-fun e!808551 () Bool)

(assert (=> b!1432277 (=> (not res!966252) (not e!808551))))

(declare-fun lt!630499 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11343 0))(
  ( (MissingZero!11343 (index!47763 (_ BitVec 32))) (Found!11343 (index!47764 (_ BitVec 32))) (Intermediate!11343 (undefined!12155 Bool) (index!47765 (_ BitVec 32)) (x!129412 (_ BitVec 32))) (Undefined!11343) (MissingVacant!11343 (index!47766 (_ BitVec 32))) )
))
(declare-fun lt!630498 () SeekEntryResult!11343)

(declare-fun lt!630500 () array!97478)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97478 (_ BitVec 32)) SeekEntryResult!11343)

(assert (=> b!1432277 (= res!966252 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630499 lt!630500 mask!2608) lt!630498))))

(declare-fun res!966261 () Bool)

(assert (=> start!123588 (=> (not res!966261) (not e!808549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123588 (= res!966261 (validMask!0 mask!2608))))

(assert (=> start!123588 e!808549))

(assert (=> start!123588 true))

(declare-fun array_inv!35987 (array!97478) Bool)

(assert (=> start!123588 (array_inv!35987 a!2831)))

(declare-fun b!1432278 () Bool)

(declare-fun res!966256 () Bool)

(assert (=> b!1432278 (=> (not res!966256) (not e!808549))))

(declare-datatypes ((List!33732 0))(
  ( (Nil!33729) (Cons!33728 (h!35051 (_ BitVec 64)) (t!48433 List!33732)) )
))
(declare-fun arrayNoDuplicates!0 (array!97478 (_ BitVec 32) List!33732) Bool)

(assert (=> b!1432278 (= res!966256 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33729))))

(declare-fun b!1432279 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun e!808550 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97478 (_ BitVec 32)) SeekEntryResult!11343)

(assert (=> b!1432279 (= e!808550 (= (seekEntryOrOpen!0 (select (arr!47042 a!2831) j!81) a!2831 mask!2608) (Found!11343 j!81)))))

(declare-fun b!1432280 () Bool)

(declare-fun res!966253 () Bool)

(assert (=> b!1432280 (=> (not res!966253) (not e!808549))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432280 (= res!966253 (validKeyInArray!0 (select (arr!47042 a!2831) i!982)))))

(declare-fun b!1432281 () Bool)

(declare-fun res!966260 () Bool)

(assert (=> b!1432281 (=> (not res!966260) (not e!808549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97478 (_ BitVec 32)) Bool)

(assert (=> b!1432281 (= res!966260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432282 () Bool)

(assert (=> b!1432282 (= e!808551 (not e!808548))))

(declare-fun res!966259 () Bool)

(assert (=> b!1432282 (=> res!966259 e!808548)))

(assert (=> b!1432282 (= res!966259 (or (= (select (arr!47042 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47042 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47042 a!2831) index!585) (select (arr!47042 a!2831) j!81)) (= (select (store (arr!47042 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432282 e!808550))

(declare-fun res!966248 () Bool)

(assert (=> b!1432282 (=> (not res!966248) (not e!808550))))

(assert (=> b!1432282 (= res!966248 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48380 0))(
  ( (Unit!48381) )
))
(declare-fun lt!630501 () Unit!48380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48380)

(assert (=> b!1432282 (= lt!630501 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432283 () Bool)

(declare-fun e!808553 () Bool)

(assert (=> b!1432283 (= e!808549 e!808553)))

(declare-fun res!966250 () Bool)

(assert (=> b!1432283 (=> (not res!966250) (not e!808553))))

(declare-fun lt!630502 () SeekEntryResult!11343)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432283 (= res!966250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47042 a!2831) j!81) mask!2608) (select (arr!47042 a!2831) j!81) a!2831 mask!2608) lt!630502))))

(assert (=> b!1432283 (= lt!630502 (Intermediate!11343 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432284 () Bool)

(declare-fun res!966249 () Bool)

(assert (=> b!1432284 (=> (not res!966249) (not e!808551))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432284 (= res!966249 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432285 () Bool)

(assert (=> b!1432285 (= e!808553 e!808551)))

(declare-fun res!966255 () Bool)

(assert (=> b!1432285 (=> (not res!966255) (not e!808551))))

(assert (=> b!1432285 (= res!966255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630499 mask!2608) lt!630499 lt!630500 mask!2608) lt!630498))))

(assert (=> b!1432285 (= lt!630498 (Intermediate!11343 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432285 (= lt!630499 (select (store (arr!47042 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432285 (= lt!630500 (array!97479 (store (arr!47042 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47593 a!2831)))))

(declare-fun b!1432286 () Bool)

(declare-fun res!966254 () Bool)

(assert (=> b!1432286 (=> (not res!966254) (not e!808549))))

(assert (=> b!1432286 (= res!966254 (validKeyInArray!0 (select (arr!47042 a!2831) j!81)))))

(declare-fun b!1432287 () Bool)

(declare-fun res!966251 () Bool)

(assert (=> b!1432287 (=> (not res!966251) (not e!808549))))

(assert (=> b!1432287 (= res!966251 (and (= (size!47593 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47593 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47593 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432288 () Bool)

(declare-fun res!966258 () Bool)

(assert (=> b!1432288 (=> (not res!966258) (not e!808551))))

(assert (=> b!1432288 (= res!966258 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47042 a!2831) j!81) a!2831 mask!2608) lt!630502))))

(assert (= (and start!123588 res!966261) b!1432287))

(assert (= (and b!1432287 res!966251) b!1432280))

(assert (= (and b!1432280 res!966253) b!1432286))

(assert (= (and b!1432286 res!966254) b!1432281))

(assert (= (and b!1432281 res!966260) b!1432278))

(assert (= (and b!1432278 res!966256) b!1432275))

(assert (= (and b!1432275 res!966257) b!1432283))

(assert (= (and b!1432283 res!966250) b!1432285))

(assert (= (and b!1432285 res!966255) b!1432288))

(assert (= (and b!1432288 res!966258) b!1432277))

(assert (= (and b!1432277 res!966252) b!1432284))

(assert (= (and b!1432284 res!966249) b!1432282))

(assert (= (and b!1432282 res!966248) b!1432279))

(assert (= (and b!1432282 (not res!966259)) b!1432276))

(declare-fun m!1322137 () Bool)

(assert (=> start!123588 m!1322137))

(declare-fun m!1322139 () Bool)

(assert (=> start!123588 m!1322139))

(declare-fun m!1322141 () Bool)

(assert (=> b!1432286 m!1322141))

(assert (=> b!1432286 m!1322141))

(declare-fun m!1322143 () Bool)

(assert (=> b!1432286 m!1322143))

(declare-fun m!1322145 () Bool)

(assert (=> b!1432280 m!1322145))

(assert (=> b!1432280 m!1322145))

(declare-fun m!1322147 () Bool)

(assert (=> b!1432280 m!1322147))

(assert (=> b!1432279 m!1322141))

(assert (=> b!1432279 m!1322141))

(declare-fun m!1322149 () Bool)

(assert (=> b!1432279 m!1322149))

(assert (=> b!1432283 m!1322141))

(assert (=> b!1432283 m!1322141))

(declare-fun m!1322151 () Bool)

(assert (=> b!1432283 m!1322151))

(assert (=> b!1432283 m!1322151))

(assert (=> b!1432283 m!1322141))

(declare-fun m!1322153 () Bool)

(assert (=> b!1432283 m!1322153))

(assert (=> b!1432288 m!1322141))

(assert (=> b!1432288 m!1322141))

(declare-fun m!1322155 () Bool)

(assert (=> b!1432288 m!1322155))

(declare-fun m!1322157 () Bool)

(assert (=> b!1432285 m!1322157))

(assert (=> b!1432285 m!1322157))

(declare-fun m!1322159 () Bool)

(assert (=> b!1432285 m!1322159))

(declare-fun m!1322161 () Bool)

(assert (=> b!1432285 m!1322161))

(declare-fun m!1322163 () Bool)

(assert (=> b!1432285 m!1322163))

(assert (=> b!1432282 m!1322161))

(declare-fun m!1322165 () Bool)

(assert (=> b!1432282 m!1322165))

(declare-fun m!1322167 () Bool)

(assert (=> b!1432282 m!1322167))

(declare-fun m!1322169 () Bool)

(assert (=> b!1432282 m!1322169))

(assert (=> b!1432282 m!1322141))

(declare-fun m!1322171 () Bool)

(assert (=> b!1432282 m!1322171))

(declare-fun m!1322173 () Bool)

(assert (=> b!1432277 m!1322173))

(declare-fun m!1322175 () Bool)

(assert (=> b!1432281 m!1322175))

(declare-fun m!1322177 () Bool)

(assert (=> b!1432276 m!1322177))

(declare-fun m!1322179 () Bool)

(assert (=> b!1432278 m!1322179))

(check-sat (not b!1432282) (not b!1432280) (not b!1432277) (not b!1432278) (not b!1432283) (not b!1432288) (not b!1432281) (not b!1432279) (not b!1432286) (not start!123588) (not b!1432285) (not b!1432276))
(check-sat)
