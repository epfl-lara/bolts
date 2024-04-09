; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122806 () Bool)

(assert start!122806)

(declare-fun e!804378 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97089 0))(
  ( (array!97090 (arr!46858 (Array (_ BitVec 32) (_ BitVec 64))) (size!47409 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97089)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun b!1422937 () Bool)

(declare-datatypes ((SeekEntryResult!11165 0))(
  ( (MissingZero!11165 (index!47051 (_ BitVec 32))) (Found!11165 (index!47052 (_ BitVec 32))) (Intermediate!11165 (undefined!11977 Bool) (index!47053 (_ BitVec 32)) (x!128698 (_ BitVec 32))) (Undefined!11165) (MissingVacant!11165 (index!47054 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97089 (_ BitVec 32)) SeekEntryResult!11165)

(assert (=> b!1422937 (= e!804378 (= (seekEntryOrOpen!0 (select (arr!46858 a!2831) j!81) a!2831 mask!2608) (Found!11165 j!81)))))

(declare-fun b!1422938 () Bool)

(declare-fun e!804380 () Bool)

(assert (=> b!1422938 (= e!804380 true)))

(declare-fun lt!626874 () (_ BitVec 64))

(declare-fun lt!626873 () SeekEntryResult!11165)

(declare-fun lt!626869 () array!97089)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626871 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97089 (_ BitVec 32)) SeekEntryResult!11165)

(assert (=> b!1422938 (= lt!626873 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626871 lt!626874 lt!626869 mask!2608))))

(declare-fun b!1422939 () Bool)

(declare-fun e!804383 () Bool)

(declare-fun e!804382 () Bool)

(assert (=> b!1422939 (= e!804383 (not e!804382))))

(declare-fun res!958480 () Bool)

(assert (=> b!1422939 (=> res!958480 e!804382)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422939 (= res!958480 (or (= (select (arr!46858 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46858 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46858 a!2831) index!585) (select (arr!46858 a!2831) j!81)) (= (select (store (arr!46858 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422939 e!804378))

(declare-fun res!958491 () Bool)

(assert (=> b!1422939 (=> (not res!958491) (not e!804378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97089 (_ BitVec 32)) Bool)

(assert (=> b!1422939 (= res!958491 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48114 0))(
  ( (Unit!48115) )
))
(declare-fun lt!626870 () Unit!48114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48114)

(assert (=> b!1422939 (= lt!626870 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422940 () Bool)

(assert (=> b!1422940 (= e!804382 e!804380)))

(declare-fun res!958493 () Bool)

(assert (=> b!1422940 (=> res!958493 e!804380)))

(assert (=> b!1422940 (= res!958493 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626871 #b00000000000000000000000000000000) (bvsge lt!626871 (size!47409 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422940 (= lt!626871 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!958486 () Bool)

(declare-fun e!804377 () Bool)

(assert (=> start!122806 (=> (not res!958486) (not e!804377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122806 (= res!958486 (validMask!0 mask!2608))))

(assert (=> start!122806 e!804377))

(assert (=> start!122806 true))

(declare-fun array_inv!35803 (array!97089) Bool)

(assert (=> start!122806 (array_inv!35803 a!2831)))

(declare-fun b!1422941 () Bool)

(declare-fun res!958485 () Bool)

(assert (=> b!1422941 (=> (not res!958485) (not e!804377))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422941 (= res!958485 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47409 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47409 a!2831))))))

(declare-fun b!1422942 () Bool)

(declare-fun res!958489 () Bool)

(assert (=> b!1422942 (=> (not res!958489) (not e!804383))))

(declare-fun lt!626875 () SeekEntryResult!11165)

(assert (=> b!1422942 (= res!958489 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626874 lt!626869 mask!2608) lt!626875))))

(declare-fun b!1422943 () Bool)

(declare-fun res!958488 () Bool)

(assert (=> b!1422943 (=> res!958488 e!804380)))

(declare-fun lt!626872 () SeekEntryResult!11165)

(assert (=> b!1422943 (= res!958488 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626871 (select (arr!46858 a!2831) j!81) a!2831 mask!2608) lt!626872)))))

(declare-fun b!1422944 () Bool)

(declare-fun res!958487 () Bool)

(assert (=> b!1422944 (=> (not res!958487) (not e!804377))))

(declare-datatypes ((List!33548 0))(
  ( (Nil!33545) (Cons!33544 (h!34846 (_ BitVec 64)) (t!48249 List!33548)) )
))
(declare-fun arrayNoDuplicates!0 (array!97089 (_ BitVec 32) List!33548) Bool)

(assert (=> b!1422944 (= res!958487 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33545))))

(declare-fun b!1422945 () Bool)

(declare-fun res!958494 () Bool)

(assert (=> b!1422945 (=> (not res!958494) (not e!804383))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422945 (= res!958494 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422946 () Bool)

(declare-fun e!804379 () Bool)

(assert (=> b!1422946 (= e!804377 e!804379)))

(declare-fun res!958484 () Bool)

(assert (=> b!1422946 (=> (not res!958484) (not e!804379))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422946 (= res!958484 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46858 a!2831) j!81) mask!2608) (select (arr!46858 a!2831) j!81) a!2831 mask!2608) lt!626872))))

(assert (=> b!1422946 (= lt!626872 (Intermediate!11165 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422947 () Bool)

(assert (=> b!1422947 (= e!804379 e!804383)))

(declare-fun res!958490 () Bool)

(assert (=> b!1422947 (=> (not res!958490) (not e!804383))))

(assert (=> b!1422947 (= res!958490 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626874 mask!2608) lt!626874 lt!626869 mask!2608) lt!626875))))

(assert (=> b!1422947 (= lt!626875 (Intermediate!11165 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422947 (= lt!626874 (select (store (arr!46858 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422947 (= lt!626869 (array!97090 (store (arr!46858 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47409 a!2831)))))

(declare-fun b!1422948 () Bool)

(declare-fun res!958481 () Bool)

(assert (=> b!1422948 (=> (not res!958481) (not e!804377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422948 (= res!958481 (validKeyInArray!0 (select (arr!46858 a!2831) j!81)))))

(declare-fun b!1422949 () Bool)

(declare-fun res!958483 () Bool)

(assert (=> b!1422949 (=> (not res!958483) (not e!804377))))

(assert (=> b!1422949 (= res!958483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422950 () Bool)

(declare-fun res!958479 () Bool)

(assert (=> b!1422950 (=> (not res!958479) (not e!804377))))

(assert (=> b!1422950 (= res!958479 (and (= (size!47409 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47409 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47409 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422951 () Bool)

(declare-fun res!958482 () Bool)

(assert (=> b!1422951 (=> (not res!958482) (not e!804383))))

(assert (=> b!1422951 (= res!958482 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46858 a!2831) j!81) a!2831 mask!2608) lt!626872))))

(declare-fun b!1422952 () Bool)

(declare-fun res!958492 () Bool)

(assert (=> b!1422952 (=> (not res!958492) (not e!804377))))

(assert (=> b!1422952 (= res!958492 (validKeyInArray!0 (select (arr!46858 a!2831) i!982)))))

(assert (= (and start!122806 res!958486) b!1422950))

(assert (= (and b!1422950 res!958479) b!1422952))

(assert (= (and b!1422952 res!958492) b!1422948))

(assert (= (and b!1422948 res!958481) b!1422949))

(assert (= (and b!1422949 res!958483) b!1422944))

(assert (= (and b!1422944 res!958487) b!1422941))

(assert (= (and b!1422941 res!958485) b!1422946))

(assert (= (and b!1422946 res!958484) b!1422947))

(assert (= (and b!1422947 res!958490) b!1422951))

(assert (= (and b!1422951 res!958482) b!1422942))

(assert (= (and b!1422942 res!958489) b!1422945))

(assert (= (and b!1422945 res!958494) b!1422939))

(assert (= (and b!1422939 res!958491) b!1422937))

(assert (= (and b!1422939 (not res!958480)) b!1422940))

(assert (= (and b!1422940 (not res!958493)) b!1422943))

(assert (= (and b!1422943 (not res!958488)) b!1422938))

(declare-fun m!1313543 () Bool)

(assert (=> b!1422940 m!1313543))

(declare-fun m!1313545 () Bool)

(assert (=> b!1422948 m!1313545))

(assert (=> b!1422948 m!1313545))

(declare-fun m!1313547 () Bool)

(assert (=> b!1422948 m!1313547))

(assert (=> b!1422943 m!1313545))

(assert (=> b!1422943 m!1313545))

(declare-fun m!1313549 () Bool)

(assert (=> b!1422943 m!1313549))

(declare-fun m!1313551 () Bool)

(assert (=> b!1422944 m!1313551))

(declare-fun m!1313553 () Bool)

(assert (=> b!1422949 m!1313553))

(assert (=> b!1422946 m!1313545))

(assert (=> b!1422946 m!1313545))

(declare-fun m!1313555 () Bool)

(assert (=> b!1422946 m!1313555))

(assert (=> b!1422946 m!1313555))

(assert (=> b!1422946 m!1313545))

(declare-fun m!1313557 () Bool)

(assert (=> b!1422946 m!1313557))

(declare-fun m!1313559 () Bool)

(assert (=> b!1422942 m!1313559))

(assert (=> b!1422937 m!1313545))

(assert (=> b!1422937 m!1313545))

(declare-fun m!1313561 () Bool)

(assert (=> b!1422937 m!1313561))

(declare-fun m!1313563 () Bool)

(assert (=> start!122806 m!1313563))

(declare-fun m!1313565 () Bool)

(assert (=> start!122806 m!1313565))

(declare-fun m!1313567 () Bool)

(assert (=> b!1422947 m!1313567))

(assert (=> b!1422947 m!1313567))

(declare-fun m!1313569 () Bool)

(assert (=> b!1422947 m!1313569))

(declare-fun m!1313571 () Bool)

(assert (=> b!1422947 m!1313571))

(declare-fun m!1313573 () Bool)

(assert (=> b!1422947 m!1313573))

(declare-fun m!1313575 () Bool)

(assert (=> b!1422938 m!1313575))

(assert (=> b!1422939 m!1313571))

(declare-fun m!1313577 () Bool)

(assert (=> b!1422939 m!1313577))

(declare-fun m!1313579 () Bool)

(assert (=> b!1422939 m!1313579))

(declare-fun m!1313581 () Bool)

(assert (=> b!1422939 m!1313581))

(assert (=> b!1422939 m!1313545))

(declare-fun m!1313583 () Bool)

(assert (=> b!1422939 m!1313583))

(declare-fun m!1313585 () Bool)

(assert (=> b!1422952 m!1313585))

(assert (=> b!1422952 m!1313585))

(declare-fun m!1313587 () Bool)

(assert (=> b!1422952 m!1313587))

(assert (=> b!1422951 m!1313545))

(assert (=> b!1422951 m!1313545))

(declare-fun m!1313589 () Bool)

(assert (=> b!1422951 m!1313589))

(push 1)

