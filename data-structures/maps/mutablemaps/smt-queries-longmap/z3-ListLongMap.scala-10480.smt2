; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123300 () Bool)

(assert start!123300)

(declare-fun b!1429246 () Bool)

(declare-fun res!963993 () Bool)

(declare-fun e!807083 () Bool)

(assert (=> b!1429246 (=> (not res!963993) (not e!807083))))

(declare-datatypes ((array!97379 0))(
  ( (array!97380 (arr!46997 (Array (_ BitVec 32) (_ BitVec 64))) (size!47548 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97379)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429246 (= res!963993 (validKeyInArray!0 (select (arr!46997 a!2831) i!982)))))

(declare-fun b!1429247 () Bool)

(declare-fun res!963995 () Bool)

(declare-fun e!807082 () Bool)

(assert (=> b!1429247 (=> (not res!963995) (not e!807082))))

(declare-datatypes ((SeekEntryResult!11298 0))(
  ( (MissingZero!11298 (index!47583 (_ BitVec 32))) (Found!11298 (index!47584 (_ BitVec 32))) (Intermediate!11298 (undefined!12110 Bool) (index!47585 (_ BitVec 32)) (x!129223 (_ BitVec 32))) (Undefined!11298) (MissingVacant!11298 (index!47586 (_ BitVec 32))) )
))
(declare-fun lt!629264 () SeekEntryResult!11298)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97379 (_ BitVec 32)) SeekEntryResult!11298)

(assert (=> b!1429247 (= res!963995 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46997 a!2831) j!81) a!2831 mask!2608) lt!629264))))

(declare-fun b!1429248 () Bool)

(declare-fun res!963994 () Bool)

(assert (=> b!1429248 (=> (not res!963994) (not e!807083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97379 (_ BitVec 32)) Bool)

(assert (=> b!1429248 (= res!963994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429249 () Bool)

(declare-fun e!807081 () Bool)

(assert (=> b!1429249 (= e!807083 e!807081)))

(declare-fun res!963986 () Bool)

(assert (=> b!1429249 (=> (not res!963986) (not e!807081))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429249 (= res!963986 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46997 a!2831) j!81) mask!2608) (select (arr!46997 a!2831) j!81) a!2831 mask!2608) lt!629264))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1429249 (= lt!629264 (Intermediate!11298 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429250 () Bool)

(declare-fun res!963984 () Bool)

(assert (=> b!1429250 (=> (not res!963984) (not e!807082))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429250 (= res!963984 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429251 () Bool)

(declare-fun e!807080 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97379 (_ BitVec 32)) SeekEntryResult!11298)

(assert (=> b!1429251 (= e!807080 (= (seekEntryOrOpen!0 (select (arr!46997 a!2831) j!81) a!2831 mask!2608) (Found!11298 j!81)))))

(declare-fun b!1429252 () Bool)

(declare-fun res!963992 () Bool)

(assert (=> b!1429252 (=> (not res!963992) (not e!807082))))

(declare-fun lt!629263 () array!97379)

(declare-fun lt!629265 () (_ BitVec 64))

(declare-fun lt!629262 () SeekEntryResult!11298)

(assert (=> b!1429252 (= res!963992 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629265 lt!629263 mask!2608) lt!629262))))

(declare-fun res!963985 () Bool)

(assert (=> start!123300 (=> (not res!963985) (not e!807083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123300 (= res!963985 (validMask!0 mask!2608))))

(assert (=> start!123300 e!807083))

(assert (=> start!123300 true))

(declare-fun array_inv!35942 (array!97379) Bool)

(assert (=> start!123300 (array_inv!35942 a!2831)))

(declare-fun b!1429253 () Bool)

(declare-fun res!963989 () Bool)

(assert (=> b!1429253 (=> (not res!963989) (not e!807083))))

(assert (=> b!1429253 (= res!963989 (and (= (size!47548 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47548 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47548 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429254 () Bool)

(declare-fun res!963988 () Bool)

(assert (=> b!1429254 (=> (not res!963988) (not e!807083))))

(assert (=> b!1429254 (= res!963988 (validKeyInArray!0 (select (arr!46997 a!2831) j!81)))))

(declare-fun b!1429255 () Bool)

(assert (=> b!1429255 (= e!807081 e!807082)))

(declare-fun res!963991 () Bool)

(assert (=> b!1429255 (=> (not res!963991) (not e!807082))))

(assert (=> b!1429255 (= res!963991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629265 mask!2608) lt!629265 lt!629263 mask!2608) lt!629262))))

(assert (=> b!1429255 (= lt!629262 (Intermediate!11298 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429255 (= lt!629265 (select (store (arr!46997 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429255 (= lt!629263 (array!97380 (store (arr!46997 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47548 a!2831)))))

(declare-fun b!1429256 () Bool)

(declare-fun res!963996 () Bool)

(assert (=> b!1429256 (=> (not res!963996) (not e!807083))))

(declare-datatypes ((List!33687 0))(
  ( (Nil!33684) (Cons!33683 (h!34997 (_ BitVec 64)) (t!48388 List!33687)) )
))
(declare-fun arrayNoDuplicates!0 (array!97379 (_ BitVec 32) List!33687) Bool)

(assert (=> b!1429256 (= res!963996 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33684))))

(declare-fun b!1429257 () Bool)

(assert (=> b!1429257 (= e!807082 (not true))))

(assert (=> b!1429257 e!807080))

(declare-fun res!963990 () Bool)

(assert (=> b!1429257 (=> (not res!963990) (not e!807080))))

(assert (=> b!1429257 (= res!963990 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48290 0))(
  ( (Unit!48291) )
))
(declare-fun lt!629266 () Unit!48290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97379 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48290)

(assert (=> b!1429257 (= lt!629266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429258 () Bool)

(declare-fun res!963987 () Bool)

(assert (=> b!1429258 (=> (not res!963987) (not e!807083))))

(assert (=> b!1429258 (= res!963987 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47548 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47548 a!2831))))))

(assert (= (and start!123300 res!963985) b!1429253))

(assert (= (and b!1429253 res!963989) b!1429246))

(assert (= (and b!1429246 res!963993) b!1429254))

(assert (= (and b!1429254 res!963988) b!1429248))

(assert (= (and b!1429248 res!963994) b!1429256))

(assert (= (and b!1429256 res!963996) b!1429258))

(assert (= (and b!1429258 res!963987) b!1429249))

(assert (= (and b!1429249 res!963986) b!1429255))

(assert (= (and b!1429255 res!963991) b!1429247))

(assert (= (and b!1429247 res!963995) b!1429252))

(assert (= (and b!1429252 res!963992) b!1429250))

(assert (= (and b!1429250 res!963984) b!1429257))

(assert (= (and b!1429257 res!963990) b!1429251))

(declare-fun m!1319407 () Bool)

(assert (=> b!1429249 m!1319407))

(assert (=> b!1429249 m!1319407))

(declare-fun m!1319409 () Bool)

(assert (=> b!1429249 m!1319409))

(assert (=> b!1429249 m!1319409))

(assert (=> b!1429249 m!1319407))

(declare-fun m!1319411 () Bool)

(assert (=> b!1429249 m!1319411))

(assert (=> b!1429247 m!1319407))

(assert (=> b!1429247 m!1319407))

(declare-fun m!1319413 () Bool)

(assert (=> b!1429247 m!1319413))

(assert (=> b!1429251 m!1319407))

(assert (=> b!1429251 m!1319407))

(declare-fun m!1319415 () Bool)

(assert (=> b!1429251 m!1319415))

(declare-fun m!1319417 () Bool)

(assert (=> start!123300 m!1319417))

(declare-fun m!1319419 () Bool)

(assert (=> start!123300 m!1319419))

(declare-fun m!1319421 () Bool)

(assert (=> b!1429246 m!1319421))

(assert (=> b!1429246 m!1319421))

(declare-fun m!1319423 () Bool)

(assert (=> b!1429246 m!1319423))

(declare-fun m!1319425 () Bool)

(assert (=> b!1429256 m!1319425))

(declare-fun m!1319427 () Bool)

(assert (=> b!1429255 m!1319427))

(assert (=> b!1429255 m!1319427))

(declare-fun m!1319429 () Bool)

(assert (=> b!1429255 m!1319429))

(declare-fun m!1319431 () Bool)

(assert (=> b!1429255 m!1319431))

(declare-fun m!1319433 () Bool)

(assert (=> b!1429255 m!1319433))

(declare-fun m!1319435 () Bool)

(assert (=> b!1429257 m!1319435))

(declare-fun m!1319437 () Bool)

(assert (=> b!1429257 m!1319437))

(assert (=> b!1429254 m!1319407))

(assert (=> b!1429254 m!1319407))

(declare-fun m!1319439 () Bool)

(assert (=> b!1429254 m!1319439))

(declare-fun m!1319441 () Bool)

(assert (=> b!1429248 m!1319441))

(declare-fun m!1319443 () Bool)

(assert (=> b!1429252 m!1319443))

(check-sat (not b!1429248) (not b!1429256) (not b!1429246) (not start!123300) (not b!1429249) (not b!1429252) (not b!1429254) (not b!1429251) (not b!1429257) (not b!1429255) (not b!1429247))
(check-sat)
