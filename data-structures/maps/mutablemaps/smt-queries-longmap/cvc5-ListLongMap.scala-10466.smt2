; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123052 () Bool)

(assert start!123052)

(declare-fun b!1426642 () Bool)

(declare-fun e!805867 () Bool)

(declare-fun e!805870 () Bool)

(assert (=> b!1426642 (= e!805867 e!805870)))

(declare-fun res!961984 () Bool)

(assert (=> b!1426642 (=> (not res!961984) (not e!805870))))

(declare-datatypes ((SeekEntryResult!11255 0))(
  ( (MissingZero!11255 (index!47411 (_ BitVec 32))) (Found!11255 (index!47412 (_ BitVec 32))) (Intermediate!11255 (undefined!12067 Bool) (index!47413 (_ BitVec 32)) (x!129050 (_ BitVec 32))) (Undefined!11255) (MissingVacant!11255 (index!47414 (_ BitVec 32))) )
))
(declare-fun lt!628221 () SeekEntryResult!11255)

(declare-datatypes ((array!97284 0))(
  ( (array!97285 (arr!46954 (Array (_ BitVec 32) (_ BitVec 64))) (size!47505 (_ BitVec 32))) )
))
(declare-fun lt!628222 () array!97284)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!628224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97284 (_ BitVec 32)) SeekEntryResult!11255)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426642 (= res!961984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628224 mask!2608) lt!628224 lt!628222 mask!2608) lt!628221))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426642 (= lt!628221 (Intermediate!11255 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97284)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426642 (= lt!628224 (select (store (arr!46954 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426642 (= lt!628222 (array!97285 (store (arr!46954 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47505 a!2831)))))

(declare-fun b!1426643 () Bool)

(declare-fun res!961986 () Bool)

(declare-fun e!805871 () Bool)

(assert (=> b!1426643 (=> (not res!961986) (not e!805871))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426643 (= res!961986 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47505 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47505 a!2831))))))

(declare-fun b!1426644 () Bool)

(declare-fun res!961987 () Bool)

(assert (=> b!1426644 (=> (not res!961987) (not e!805870))))

(assert (=> b!1426644 (= res!961987 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628224 lt!628222 mask!2608) lt!628221))))

(declare-fun b!1426645 () Bool)

(declare-fun e!805869 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97284 (_ BitVec 32)) SeekEntryResult!11255)

(assert (=> b!1426645 (= e!805869 (= (seekEntryOrOpen!0 (select (arr!46954 a!2831) j!81) a!2831 mask!2608) (Found!11255 j!81)))))

(declare-fun b!1426646 () Bool)

(declare-fun res!961993 () Bool)

(assert (=> b!1426646 (=> (not res!961993) (not e!805871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97284 (_ BitVec 32)) Bool)

(assert (=> b!1426646 (= res!961993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426647 () Bool)

(declare-fun res!961983 () Bool)

(assert (=> b!1426647 (=> (not res!961983) (not e!805870))))

(assert (=> b!1426647 (= res!961983 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426648 () Bool)

(declare-fun res!961994 () Bool)

(assert (=> b!1426648 (=> (not res!961994) (not e!805870))))

(declare-fun lt!628223 () SeekEntryResult!11255)

(assert (=> b!1426648 (= res!961994 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46954 a!2831) j!81) a!2831 mask!2608) lt!628223))))

(declare-fun b!1426649 () Bool)

(assert (=> b!1426649 (= e!805871 e!805867)))

(declare-fun res!961990 () Bool)

(assert (=> b!1426649 (=> (not res!961990) (not e!805867))))

(assert (=> b!1426649 (= res!961990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46954 a!2831) j!81) mask!2608) (select (arr!46954 a!2831) j!81) a!2831 mask!2608) lt!628223))))

(assert (=> b!1426649 (= lt!628223 (Intermediate!11255 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!961989 () Bool)

(assert (=> start!123052 (=> (not res!961989) (not e!805871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123052 (= res!961989 (validMask!0 mask!2608))))

(assert (=> start!123052 e!805871))

(assert (=> start!123052 true))

(declare-fun array_inv!35899 (array!97284) Bool)

(assert (=> start!123052 (array_inv!35899 a!2831)))

(declare-fun b!1426650 () Bool)

(declare-fun res!961991 () Bool)

(assert (=> b!1426650 (=> (not res!961991) (not e!805871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426650 (= res!961991 (validKeyInArray!0 (select (arr!46954 a!2831) i!982)))))

(declare-fun b!1426651 () Bool)

(declare-fun res!961995 () Bool)

(assert (=> b!1426651 (=> (not res!961995) (not e!805871))))

(declare-datatypes ((List!33644 0))(
  ( (Nil!33641) (Cons!33640 (h!34945 (_ BitVec 64)) (t!48345 List!33644)) )
))
(declare-fun arrayNoDuplicates!0 (array!97284 (_ BitVec 32) List!33644) Bool)

(assert (=> b!1426651 (= res!961995 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33641))))

(declare-fun b!1426652 () Bool)

(assert (=> b!1426652 (= e!805870 (not true))))

(assert (=> b!1426652 e!805869))

(declare-fun res!961988 () Bool)

(assert (=> b!1426652 (=> (not res!961988) (not e!805869))))

(assert (=> b!1426652 (= res!961988 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48204 0))(
  ( (Unit!48205) )
))
(declare-fun lt!628225 () Unit!48204)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48204)

(assert (=> b!1426652 (= lt!628225 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426653 () Bool)

(declare-fun res!961992 () Bool)

(assert (=> b!1426653 (=> (not res!961992) (not e!805871))))

(assert (=> b!1426653 (= res!961992 (validKeyInArray!0 (select (arr!46954 a!2831) j!81)))))

(declare-fun b!1426654 () Bool)

(declare-fun res!961985 () Bool)

(assert (=> b!1426654 (=> (not res!961985) (not e!805871))))

(assert (=> b!1426654 (= res!961985 (and (= (size!47505 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47505 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47505 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123052 res!961989) b!1426654))

(assert (= (and b!1426654 res!961985) b!1426650))

(assert (= (and b!1426650 res!961991) b!1426653))

(assert (= (and b!1426653 res!961992) b!1426646))

(assert (= (and b!1426646 res!961993) b!1426651))

(assert (= (and b!1426651 res!961995) b!1426643))

(assert (= (and b!1426643 res!961986) b!1426649))

(assert (= (and b!1426649 res!961990) b!1426642))

(assert (= (and b!1426642 res!961984) b!1426648))

(assert (= (and b!1426648 res!961994) b!1426644))

(assert (= (and b!1426644 res!961987) b!1426647))

(assert (= (and b!1426647 res!961983) b!1426652))

(assert (= (and b!1426652 res!961988) b!1426645))

(declare-fun m!1317197 () Bool)

(assert (=> b!1426649 m!1317197))

(assert (=> b!1426649 m!1317197))

(declare-fun m!1317199 () Bool)

(assert (=> b!1426649 m!1317199))

(assert (=> b!1426649 m!1317199))

(assert (=> b!1426649 m!1317197))

(declare-fun m!1317201 () Bool)

(assert (=> b!1426649 m!1317201))

(declare-fun m!1317203 () Bool)

(assert (=> b!1426651 m!1317203))

(declare-fun m!1317205 () Bool)

(assert (=> b!1426650 m!1317205))

(assert (=> b!1426650 m!1317205))

(declare-fun m!1317207 () Bool)

(assert (=> b!1426650 m!1317207))

(declare-fun m!1317209 () Bool)

(assert (=> start!123052 m!1317209))

(declare-fun m!1317211 () Bool)

(assert (=> start!123052 m!1317211))

(assert (=> b!1426653 m!1317197))

(assert (=> b!1426653 m!1317197))

(declare-fun m!1317213 () Bool)

(assert (=> b!1426653 m!1317213))

(declare-fun m!1317215 () Bool)

(assert (=> b!1426644 m!1317215))

(declare-fun m!1317217 () Bool)

(assert (=> b!1426642 m!1317217))

(assert (=> b!1426642 m!1317217))

(declare-fun m!1317219 () Bool)

(assert (=> b!1426642 m!1317219))

(declare-fun m!1317221 () Bool)

(assert (=> b!1426642 m!1317221))

(declare-fun m!1317223 () Bool)

(assert (=> b!1426642 m!1317223))

(assert (=> b!1426645 m!1317197))

(assert (=> b!1426645 m!1317197))

(declare-fun m!1317225 () Bool)

(assert (=> b!1426645 m!1317225))

(declare-fun m!1317227 () Bool)

(assert (=> b!1426652 m!1317227))

(declare-fun m!1317229 () Bool)

(assert (=> b!1426652 m!1317229))

(assert (=> b!1426648 m!1317197))

(assert (=> b!1426648 m!1317197))

(declare-fun m!1317231 () Bool)

(assert (=> b!1426648 m!1317231))

(declare-fun m!1317233 () Bool)

(assert (=> b!1426646 m!1317233))

(push 1)

