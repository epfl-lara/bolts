; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122974 () Bool)

(assert start!122974)

(declare-fun b!1425924 () Bool)

(declare-fun res!961468 () Bool)

(declare-fun e!805532 () Bool)

(assert (=> b!1425924 (=> (not res!961468) (not e!805532))))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97257 0))(
  ( (array!97258 (arr!46942 (Array (_ BitVec 32) (_ BitVec 64))) (size!47493 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97257)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425924 (= res!961468 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47493 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47493 a!2831))))))

(declare-fun b!1425925 () Bool)

(declare-fun res!961475 () Bool)

(assert (=> b!1425925 (=> (not res!961475) (not e!805532))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425925 (= res!961475 (validKeyInArray!0 (select (arr!46942 a!2831) i!982)))))

(declare-fun b!1425926 () Bool)

(declare-fun res!961467 () Bool)

(declare-fun e!805534 () Bool)

(assert (=> b!1425926 (=> (not res!961467) (not e!805534))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627928 () (_ BitVec 64))

(declare-fun lt!627926 () array!97257)

(declare-datatypes ((SeekEntryResult!11243 0))(
  ( (MissingZero!11243 (index!47363 (_ BitVec 32))) (Found!11243 (index!47364 (_ BitVec 32))) (Intermediate!11243 (undefined!12055 Bool) (index!47365 (_ BitVec 32)) (x!129000 (_ BitVec 32))) (Undefined!11243) (MissingVacant!11243 (index!47366 (_ BitVec 32))) )
))
(declare-fun lt!627927 () SeekEntryResult!11243)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97257 (_ BitVec 32)) SeekEntryResult!11243)

(assert (=> b!1425926 (= res!961467 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627928 lt!627926 mask!2608) lt!627927))))

(declare-fun b!1425927 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425927 (= e!805534 (and (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))) (bvsle #b00000000000000000000000000000000 (size!47493 a!2831)) (bvsgt j!81 (size!47493 a!2831))))))

(declare-fun res!961474 () Bool)

(assert (=> start!122974 (=> (not res!961474) (not e!805532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122974 (= res!961474 (validMask!0 mask!2608))))

(assert (=> start!122974 e!805532))

(assert (=> start!122974 true))

(declare-fun array_inv!35887 (array!97257) Bool)

(assert (=> start!122974 (array_inv!35887 a!2831)))

(declare-fun b!1425928 () Bool)

(declare-fun e!805533 () Bool)

(assert (=> b!1425928 (= e!805532 e!805533)))

(declare-fun res!961472 () Bool)

(assert (=> b!1425928 (=> (not res!961472) (not e!805533))))

(declare-fun lt!627925 () SeekEntryResult!11243)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425928 (= res!961472 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46942 a!2831) j!81) mask!2608) (select (arr!46942 a!2831) j!81) a!2831 mask!2608) lt!627925))))

(assert (=> b!1425928 (= lt!627925 (Intermediate!11243 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425929 () Bool)

(declare-fun res!961470 () Bool)

(assert (=> b!1425929 (=> (not res!961470) (not e!805532))))

(assert (=> b!1425929 (= res!961470 (and (= (size!47493 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47493 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47493 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425930 () Bool)

(declare-fun res!961473 () Bool)

(assert (=> b!1425930 (=> (not res!961473) (not e!805532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97257 (_ BitVec 32)) Bool)

(assert (=> b!1425930 (= res!961473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425931 () Bool)

(declare-fun res!961469 () Bool)

(assert (=> b!1425931 (=> (not res!961469) (not e!805532))))

(assert (=> b!1425931 (= res!961469 (validKeyInArray!0 (select (arr!46942 a!2831) j!81)))))

(declare-fun b!1425932 () Bool)

(assert (=> b!1425932 (= e!805533 e!805534)))

(declare-fun res!961476 () Bool)

(assert (=> b!1425932 (=> (not res!961476) (not e!805534))))

(assert (=> b!1425932 (= res!961476 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627928 mask!2608) lt!627928 lt!627926 mask!2608) lt!627927))))

(assert (=> b!1425932 (= lt!627927 (Intermediate!11243 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1425932 (= lt!627928 (select (store (arr!46942 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425932 (= lt!627926 (array!97258 (store (arr!46942 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47493 a!2831)))))

(declare-fun b!1425933 () Bool)

(declare-fun res!961471 () Bool)

(assert (=> b!1425933 (=> (not res!961471) (not e!805534))))

(assert (=> b!1425933 (= res!961471 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46942 a!2831) j!81) a!2831 mask!2608) lt!627925))))

(declare-fun b!1425934 () Bool)

(declare-fun res!961466 () Bool)

(assert (=> b!1425934 (=> (not res!961466) (not e!805532))))

(declare-datatypes ((List!33632 0))(
  ( (Nil!33629) (Cons!33628 (h!34930 (_ BitVec 64)) (t!48333 List!33632)) )
))
(declare-fun arrayNoDuplicates!0 (array!97257 (_ BitVec 32) List!33632) Bool)

(assert (=> b!1425934 (= res!961466 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33629))))

(assert (= (and start!122974 res!961474) b!1425929))

(assert (= (and b!1425929 res!961470) b!1425925))

(assert (= (and b!1425925 res!961475) b!1425931))

(assert (= (and b!1425931 res!961469) b!1425930))

(assert (= (and b!1425930 res!961473) b!1425934))

(assert (= (and b!1425934 res!961466) b!1425924))

(assert (= (and b!1425924 res!961468) b!1425928))

(assert (= (and b!1425928 res!961472) b!1425932))

(assert (= (and b!1425932 res!961476) b!1425933))

(assert (= (and b!1425933 res!961471) b!1425926))

(assert (= (and b!1425926 res!961467) b!1425927))

(declare-fun m!1316591 () Bool)

(assert (=> b!1425930 m!1316591))

(declare-fun m!1316593 () Bool)

(assert (=> b!1425925 m!1316593))

(assert (=> b!1425925 m!1316593))

(declare-fun m!1316595 () Bool)

(assert (=> b!1425925 m!1316595))

(declare-fun m!1316597 () Bool)

(assert (=> b!1425933 m!1316597))

(assert (=> b!1425933 m!1316597))

(declare-fun m!1316599 () Bool)

(assert (=> b!1425933 m!1316599))

(declare-fun m!1316601 () Bool)

(assert (=> b!1425932 m!1316601))

(assert (=> b!1425932 m!1316601))

(declare-fun m!1316603 () Bool)

(assert (=> b!1425932 m!1316603))

(declare-fun m!1316605 () Bool)

(assert (=> b!1425932 m!1316605))

(declare-fun m!1316607 () Bool)

(assert (=> b!1425932 m!1316607))

(assert (=> b!1425931 m!1316597))

(assert (=> b!1425931 m!1316597))

(declare-fun m!1316609 () Bool)

(assert (=> b!1425931 m!1316609))

(declare-fun m!1316611 () Bool)

(assert (=> start!122974 m!1316611))

(declare-fun m!1316613 () Bool)

(assert (=> start!122974 m!1316613))

(declare-fun m!1316615 () Bool)

(assert (=> b!1425934 m!1316615))

(assert (=> b!1425928 m!1316597))

(assert (=> b!1425928 m!1316597))

(declare-fun m!1316617 () Bool)

(assert (=> b!1425928 m!1316617))

(assert (=> b!1425928 m!1316617))

(assert (=> b!1425928 m!1316597))

(declare-fun m!1316619 () Bool)

(assert (=> b!1425928 m!1316619))

(declare-fun m!1316621 () Bool)

(assert (=> b!1425926 m!1316621))

(push 1)

(assert (not b!1425930))

(assert (not start!122974))

(assert (not b!1425931))

(assert (not b!1425928))

(assert (not b!1425932))

(assert (not b!1425925))

(assert (not b!1425933))

(assert (not b!1425926))

(assert (not b!1425934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

