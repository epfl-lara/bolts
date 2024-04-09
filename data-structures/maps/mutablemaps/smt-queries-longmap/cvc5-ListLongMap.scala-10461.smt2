; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122968 () Bool)

(assert start!122968)

(declare-fun b!1425825 () Bool)

(declare-fun e!805496 () Bool)

(declare-fun e!805499 () Bool)

(assert (=> b!1425825 (= e!805496 e!805499)))

(declare-fun res!961373 () Bool)

(assert (=> b!1425825 (=> (not res!961373) (not e!805499))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97251 0))(
  ( (array!97252 (arr!46939 (Array (_ BitVec 32) (_ BitVec 64))) (size!47490 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97251)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11240 0))(
  ( (MissingZero!11240 (index!47351 (_ BitVec 32))) (Found!11240 (index!47352 (_ BitVec 32))) (Intermediate!11240 (undefined!12052 Bool) (index!47353 (_ BitVec 32)) (x!128989 (_ BitVec 32))) (Undefined!11240) (MissingVacant!11240 (index!47354 (_ BitVec 32))) )
))
(declare-fun lt!627891 () SeekEntryResult!11240)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97251 (_ BitVec 32)) SeekEntryResult!11240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425825 (= res!961373 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46939 a!2831) j!81) mask!2608) (select (arr!46939 a!2831) j!81) a!2831 mask!2608) lt!627891))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425825 (= lt!627891 (Intermediate!11240 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425826 () Bool)

(declare-fun e!805498 () Bool)

(assert (=> b!1425826 (= e!805499 e!805498)))

(declare-fun res!961374 () Bool)

(assert (=> b!1425826 (=> (not res!961374) (not e!805498))))

(declare-fun lt!627892 () array!97251)

(declare-fun lt!627890 () SeekEntryResult!11240)

(declare-fun lt!627889 () (_ BitVec 64))

(assert (=> b!1425826 (= res!961374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627889 mask!2608) lt!627889 lt!627892 mask!2608) lt!627890))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1425826 (= lt!627890 (Intermediate!11240 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425826 (= lt!627889 (select (store (arr!46939 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425826 (= lt!627892 (array!97252 (store (arr!46939 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47490 a!2831)))))

(declare-fun b!1425827 () Bool)

(declare-fun res!961375 () Bool)

(assert (=> b!1425827 (=> (not res!961375) (not e!805496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425827 (= res!961375 (validKeyInArray!0 (select (arr!46939 a!2831) i!982)))))

(declare-fun res!961370 () Bool)

(assert (=> start!122968 (=> (not res!961370) (not e!805496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122968 (= res!961370 (validMask!0 mask!2608))))

(assert (=> start!122968 e!805496))

(assert (=> start!122968 true))

(declare-fun array_inv!35884 (array!97251) Bool)

(assert (=> start!122968 (array_inv!35884 a!2831)))

(declare-fun b!1425828 () Bool)

(declare-fun res!961369 () Bool)

(assert (=> b!1425828 (=> (not res!961369) (not e!805498))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425828 (= res!961369 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46939 a!2831) j!81) a!2831 mask!2608) lt!627891))))

(declare-fun b!1425829 () Bool)

(declare-fun res!961371 () Bool)

(assert (=> b!1425829 (=> (not res!961371) (not e!805496))))

(assert (=> b!1425829 (= res!961371 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47490 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47490 a!2831))))))

(declare-fun b!1425830 () Bool)

(declare-fun res!961368 () Bool)

(assert (=> b!1425830 (=> (not res!961368) (not e!805496))))

(declare-datatypes ((List!33629 0))(
  ( (Nil!33626) (Cons!33625 (h!34927 (_ BitVec 64)) (t!48330 List!33629)) )
))
(declare-fun arrayNoDuplicates!0 (array!97251 (_ BitVec 32) List!33629) Bool)

(assert (=> b!1425830 (= res!961368 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33626))))

(declare-fun b!1425831 () Bool)

(declare-fun res!961377 () Bool)

(assert (=> b!1425831 (=> (not res!961377) (not e!805496))))

(assert (=> b!1425831 (= res!961377 (and (= (size!47490 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47490 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47490 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425832 () Bool)

(declare-fun res!961372 () Bool)

(assert (=> b!1425832 (=> (not res!961372) (not e!805496))))

(assert (=> b!1425832 (= res!961372 (validKeyInArray!0 (select (arr!46939 a!2831) j!81)))))

(declare-fun b!1425833 () Bool)

(declare-fun res!961376 () Bool)

(assert (=> b!1425833 (=> (not res!961376) (not e!805498))))

(assert (=> b!1425833 (= res!961376 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627889 lt!627892 mask!2608) lt!627890))))

(declare-fun b!1425834 () Bool)

(assert (=> b!1425834 (= e!805498 (and (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))) (bvsgt #b00000000000000000000000000000000 (size!47490 a!2831))))))

(declare-fun b!1425835 () Bool)

(declare-fun res!961367 () Bool)

(assert (=> b!1425835 (=> (not res!961367) (not e!805496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97251 (_ BitVec 32)) Bool)

(assert (=> b!1425835 (= res!961367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122968 res!961370) b!1425831))

(assert (= (and b!1425831 res!961377) b!1425827))

(assert (= (and b!1425827 res!961375) b!1425832))

(assert (= (and b!1425832 res!961372) b!1425835))

(assert (= (and b!1425835 res!961367) b!1425830))

(assert (= (and b!1425830 res!961368) b!1425829))

(assert (= (and b!1425829 res!961371) b!1425825))

(assert (= (and b!1425825 res!961373) b!1425826))

(assert (= (and b!1425826 res!961374) b!1425828))

(assert (= (and b!1425828 res!961369) b!1425833))

(assert (= (and b!1425833 res!961376) b!1425834))

(declare-fun m!1316495 () Bool)

(assert (=> b!1425826 m!1316495))

(assert (=> b!1425826 m!1316495))

(declare-fun m!1316497 () Bool)

(assert (=> b!1425826 m!1316497))

(declare-fun m!1316499 () Bool)

(assert (=> b!1425826 m!1316499))

(declare-fun m!1316501 () Bool)

(assert (=> b!1425826 m!1316501))

(declare-fun m!1316503 () Bool)

(assert (=> b!1425827 m!1316503))

(assert (=> b!1425827 m!1316503))

(declare-fun m!1316505 () Bool)

(assert (=> b!1425827 m!1316505))

(declare-fun m!1316507 () Bool)

(assert (=> b!1425825 m!1316507))

(assert (=> b!1425825 m!1316507))

(declare-fun m!1316509 () Bool)

(assert (=> b!1425825 m!1316509))

(assert (=> b!1425825 m!1316509))

(assert (=> b!1425825 m!1316507))

(declare-fun m!1316511 () Bool)

(assert (=> b!1425825 m!1316511))

(assert (=> b!1425828 m!1316507))

(assert (=> b!1425828 m!1316507))

(declare-fun m!1316513 () Bool)

(assert (=> b!1425828 m!1316513))

(declare-fun m!1316515 () Bool)

(assert (=> b!1425830 m!1316515))

(declare-fun m!1316517 () Bool)

(assert (=> b!1425833 m!1316517))

(declare-fun m!1316519 () Bool)

(assert (=> start!122968 m!1316519))

(declare-fun m!1316521 () Bool)

(assert (=> start!122968 m!1316521))

(declare-fun m!1316523 () Bool)

(assert (=> b!1425835 m!1316523))

(assert (=> b!1425832 m!1316507))

(assert (=> b!1425832 m!1316507))

(declare-fun m!1316525 () Bool)

(assert (=> b!1425832 m!1316525))

(push 1)

