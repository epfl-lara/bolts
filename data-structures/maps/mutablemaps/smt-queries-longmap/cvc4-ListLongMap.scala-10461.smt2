; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122972 () Bool)

(assert start!122972)

(declare-fun b!1425891 () Bool)

(declare-fun res!961437 () Bool)

(declare-fun e!805523 () Bool)

(assert (=> b!1425891 (=> (not res!961437) (not e!805523))))

(declare-datatypes ((SeekEntryResult!11242 0))(
  ( (MissingZero!11242 (index!47359 (_ BitVec 32))) (Found!11242 (index!47360 (_ BitVec 32))) (Intermediate!11242 (undefined!12054 Bool) (index!47361 (_ BitVec 32)) (x!128991 (_ BitVec 32))) (Undefined!11242) (MissingVacant!11242 (index!47362 (_ BitVec 32))) )
))
(declare-fun lt!627916 () SeekEntryResult!11242)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97255 0))(
  ( (array!97256 (arr!46941 (Array (_ BitVec 32) (_ BitVec 64))) (size!47492 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97255)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97255 (_ BitVec 32)) SeekEntryResult!11242)

(assert (=> b!1425891 (= res!961437 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46941 a!2831) j!81) a!2831 mask!2608) lt!627916))))

(declare-fun b!1425892 () Bool)

(declare-fun res!961436 () Bool)

(declare-fun e!805522 () Bool)

(assert (=> b!1425892 (=> (not res!961436) (not e!805522))))

(declare-datatypes ((List!33631 0))(
  ( (Nil!33628) (Cons!33627 (h!34929 (_ BitVec 64)) (t!48332 List!33631)) )
))
(declare-fun arrayNoDuplicates!0 (array!97255 (_ BitVec 32) List!33631) Bool)

(assert (=> b!1425892 (= res!961436 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33628))))

(declare-fun b!1425893 () Bool)

(declare-fun res!961435 () Bool)

(assert (=> b!1425893 (=> (not res!961435) (not e!805522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97255 (_ BitVec 32)) Bool)

(assert (=> b!1425893 (= res!961435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425894 () Bool)

(declare-fun res!961442 () Bool)

(assert (=> b!1425894 (=> (not res!961442) (not e!805523))))

(declare-fun lt!627913 () array!97255)

(declare-fun lt!627914 () SeekEntryResult!11242)

(declare-fun lt!627915 () (_ BitVec 64))

(assert (=> b!1425894 (= res!961442 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627915 lt!627913 mask!2608) lt!627914))))

(declare-fun b!1425895 () Bool)

(declare-fun res!961439 () Bool)

(assert (=> b!1425895 (=> (not res!961439) (not e!805522))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425895 (= res!961439 (and (= (size!47492 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47492 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47492 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425896 () Bool)

(declare-fun e!805521 () Bool)

(assert (=> b!1425896 (= e!805521 e!805523)))

(declare-fun res!961440 () Bool)

(assert (=> b!1425896 (=> (not res!961440) (not e!805523))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425896 (= res!961440 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627915 mask!2608) lt!627915 lt!627913 mask!2608) lt!627914))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1425896 (= lt!627914 (Intermediate!11242 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1425896 (= lt!627915 (select (store (arr!46941 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425896 (= lt!627913 (array!97256 (store (arr!46941 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47492 a!2831)))))

(declare-fun res!961434 () Bool)

(assert (=> start!122972 (=> (not res!961434) (not e!805522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122972 (= res!961434 (validMask!0 mask!2608))))

(assert (=> start!122972 e!805522))

(assert (=> start!122972 true))

(declare-fun array_inv!35886 (array!97255) Bool)

(assert (=> start!122972 (array_inv!35886 a!2831)))

(declare-fun b!1425897 () Bool)

(declare-fun res!961433 () Bool)

(assert (=> b!1425897 (=> (not res!961433) (not e!805522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425897 (= res!961433 (validKeyInArray!0 (select (arr!46941 a!2831) j!81)))))

(declare-fun b!1425898 () Bool)

(declare-fun res!961438 () Bool)

(assert (=> b!1425898 (=> (not res!961438) (not e!805522))))

(assert (=> b!1425898 (= res!961438 (validKeyInArray!0 (select (arr!46941 a!2831) i!982)))))

(declare-fun b!1425899 () Bool)

(assert (=> b!1425899 (= e!805522 e!805521)))

(declare-fun res!961443 () Bool)

(assert (=> b!1425899 (=> (not res!961443) (not e!805521))))

(assert (=> b!1425899 (= res!961443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46941 a!2831) j!81) mask!2608) (select (arr!46941 a!2831) j!81) a!2831 mask!2608) lt!627916))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425899 (= lt!627916 (Intermediate!11242 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425900 () Bool)

(assert (=> b!1425900 (= e!805523 (and (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))) (bvsgt #b00000000000000000000000000000000 (size!47492 a!2831))))))

(declare-fun b!1425901 () Bool)

(declare-fun res!961441 () Bool)

(assert (=> b!1425901 (=> (not res!961441) (not e!805522))))

(assert (=> b!1425901 (= res!961441 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47492 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47492 a!2831))))))

(assert (= (and start!122972 res!961434) b!1425895))

(assert (= (and b!1425895 res!961439) b!1425898))

(assert (= (and b!1425898 res!961438) b!1425897))

(assert (= (and b!1425897 res!961433) b!1425893))

(assert (= (and b!1425893 res!961435) b!1425892))

(assert (= (and b!1425892 res!961436) b!1425901))

(assert (= (and b!1425901 res!961441) b!1425899))

(assert (= (and b!1425899 res!961443) b!1425896))

(assert (= (and b!1425896 res!961440) b!1425891))

(assert (= (and b!1425891 res!961437) b!1425894))

(assert (= (and b!1425894 res!961442) b!1425900))

(declare-fun m!1316559 () Bool)

(assert (=> b!1425894 m!1316559))

(declare-fun m!1316561 () Bool)

(assert (=> start!122972 m!1316561))

(declare-fun m!1316563 () Bool)

(assert (=> start!122972 m!1316563))

(declare-fun m!1316565 () Bool)

(assert (=> b!1425893 m!1316565))

(declare-fun m!1316567 () Bool)

(assert (=> b!1425891 m!1316567))

(assert (=> b!1425891 m!1316567))

(declare-fun m!1316569 () Bool)

(assert (=> b!1425891 m!1316569))

(declare-fun m!1316571 () Bool)

(assert (=> b!1425892 m!1316571))

(assert (=> b!1425897 m!1316567))

(assert (=> b!1425897 m!1316567))

(declare-fun m!1316573 () Bool)

(assert (=> b!1425897 m!1316573))

(declare-fun m!1316575 () Bool)

(assert (=> b!1425898 m!1316575))

(assert (=> b!1425898 m!1316575))

(declare-fun m!1316577 () Bool)

(assert (=> b!1425898 m!1316577))

(assert (=> b!1425899 m!1316567))

(assert (=> b!1425899 m!1316567))

(declare-fun m!1316579 () Bool)

(assert (=> b!1425899 m!1316579))

(assert (=> b!1425899 m!1316579))

(assert (=> b!1425899 m!1316567))

(declare-fun m!1316581 () Bool)

(assert (=> b!1425899 m!1316581))

(declare-fun m!1316583 () Bool)

(assert (=> b!1425896 m!1316583))

(assert (=> b!1425896 m!1316583))

(declare-fun m!1316585 () Bool)

(assert (=> b!1425896 m!1316585))

(declare-fun m!1316587 () Bool)

(assert (=> b!1425896 m!1316587))

(declare-fun m!1316589 () Bool)

(assert (=> b!1425896 m!1316589))

(push 1)

(assert (not b!1425898))

(assert (not b!1425894))

