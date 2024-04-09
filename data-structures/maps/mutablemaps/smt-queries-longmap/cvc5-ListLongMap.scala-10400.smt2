; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122602 () Bool)

(assert start!122602)

(declare-fun b!1419438 () Bool)

(declare-fun res!954986 () Bool)

(declare-fun e!803134 () Bool)

(assert (=> b!1419438 (=> (not res!954986) (not e!803134))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96885 0))(
  ( (array!96886 (arr!46756 (Array (_ BitVec 32) (_ BitVec 64))) (size!47307 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96885)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419438 (= res!954986 (and (= (size!47307 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47307 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47307 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419439 () Bool)

(declare-fun res!954987 () Bool)

(assert (=> b!1419439 (=> (not res!954987) (not e!803134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96885 (_ BitVec 32)) Bool)

(assert (=> b!1419439 (= res!954987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!954985 () Bool)

(assert (=> start!122602 (=> (not res!954985) (not e!803134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122602 (= res!954985 (validMask!0 mask!2608))))

(assert (=> start!122602 e!803134))

(assert (=> start!122602 true))

(declare-fun array_inv!35701 (array!96885) Bool)

(assert (=> start!122602 (array_inv!35701 a!2831)))

(declare-fun b!1419440 () Bool)

(declare-fun res!954980 () Bool)

(assert (=> b!1419440 (=> (not res!954980) (not e!803134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419440 (= res!954980 (validKeyInArray!0 (select (arr!46756 a!2831) i!982)))))

(declare-fun b!1419441 () Bool)

(assert (=> b!1419441 (= e!803134 false)))

(declare-fun lt!625768 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419441 (= lt!625768 (toIndex!0 (select (store (arr!46756 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419442 () Bool)

(declare-fun res!954984 () Bool)

(assert (=> b!1419442 (=> (not res!954984) (not e!803134))))

(declare-datatypes ((List!33446 0))(
  ( (Nil!33443) (Cons!33442 (h!34744 (_ BitVec 64)) (t!48147 List!33446)) )
))
(declare-fun arrayNoDuplicates!0 (array!96885 (_ BitVec 32) List!33446) Bool)

(assert (=> b!1419442 (= res!954984 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33443))))

(declare-fun b!1419443 () Bool)

(declare-fun res!954982 () Bool)

(assert (=> b!1419443 (=> (not res!954982) (not e!803134))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419443 (= res!954982 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47307 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47307 a!2831))))))

(declare-fun b!1419444 () Bool)

(declare-fun res!954983 () Bool)

(assert (=> b!1419444 (=> (not res!954983) (not e!803134))))

(declare-datatypes ((SeekEntryResult!11063 0))(
  ( (MissingZero!11063 (index!46643 (_ BitVec 32))) (Found!11063 (index!46644 (_ BitVec 32))) (Intermediate!11063 (undefined!11875 Bool) (index!46645 (_ BitVec 32)) (x!128324 (_ BitVec 32))) (Undefined!11063) (MissingVacant!11063 (index!46646 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96885 (_ BitVec 32)) SeekEntryResult!11063)

(assert (=> b!1419444 (= res!954983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46756 a!2831) j!81) mask!2608) (select (arr!46756 a!2831) j!81) a!2831 mask!2608) (Intermediate!11063 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419445 () Bool)

(declare-fun res!954981 () Bool)

(assert (=> b!1419445 (=> (not res!954981) (not e!803134))))

(assert (=> b!1419445 (= res!954981 (validKeyInArray!0 (select (arr!46756 a!2831) j!81)))))

(assert (= (and start!122602 res!954985) b!1419438))

(assert (= (and b!1419438 res!954986) b!1419440))

(assert (= (and b!1419440 res!954980) b!1419445))

(assert (= (and b!1419445 res!954981) b!1419439))

(assert (= (and b!1419439 res!954987) b!1419442))

(assert (= (and b!1419442 res!954984) b!1419443))

(assert (= (and b!1419443 res!954982) b!1419444))

(assert (= (and b!1419444 res!954983) b!1419441))

(declare-fun m!1309931 () Bool)

(assert (=> b!1419439 m!1309931))

(declare-fun m!1309933 () Bool)

(assert (=> b!1419444 m!1309933))

(assert (=> b!1419444 m!1309933))

(declare-fun m!1309935 () Bool)

(assert (=> b!1419444 m!1309935))

(assert (=> b!1419444 m!1309935))

(assert (=> b!1419444 m!1309933))

(declare-fun m!1309937 () Bool)

(assert (=> b!1419444 m!1309937))

(declare-fun m!1309939 () Bool)

(assert (=> b!1419442 m!1309939))

(declare-fun m!1309941 () Bool)

(assert (=> b!1419440 m!1309941))

(assert (=> b!1419440 m!1309941))

(declare-fun m!1309943 () Bool)

(assert (=> b!1419440 m!1309943))

(assert (=> b!1419445 m!1309933))

(assert (=> b!1419445 m!1309933))

(declare-fun m!1309945 () Bool)

(assert (=> b!1419445 m!1309945))

(declare-fun m!1309947 () Bool)

(assert (=> start!122602 m!1309947))

(declare-fun m!1309949 () Bool)

(assert (=> start!122602 m!1309949))

(declare-fun m!1309951 () Bool)

(assert (=> b!1419441 m!1309951))

(declare-fun m!1309953 () Bool)

(assert (=> b!1419441 m!1309953))

(assert (=> b!1419441 m!1309953))

(declare-fun m!1309955 () Bool)

(assert (=> b!1419441 m!1309955))

(push 1)

(assert (not b!1419441))

(assert (not b!1419442))

(assert (not start!122602))

(assert (not b!1419444))

(assert (not b!1419439))

(assert (not b!1419440))

(assert (not b!1419445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

