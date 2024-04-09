; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122846 () Bool)

(assert start!122846)

(declare-fun b!1423898 () Bool)

(declare-fun res!959453 () Bool)

(declare-fun e!804799 () Bool)

(assert (=> b!1423898 (=> (not res!959453) (not e!804799))))

(declare-datatypes ((array!97129 0))(
  ( (array!97130 (arr!46878 (Array (_ BitVec 32) (_ BitVec 64))) (size!47429 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97129)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423898 (= res!959453 (validKeyInArray!0 (select (arr!46878 a!2831) j!81)))))

(declare-fun b!1423899 () Bool)

(declare-fun res!959444 () Bool)

(declare-fun e!804797 () Bool)

(assert (=> b!1423899 (=> (not res!959444) (not e!804797))))

(declare-fun lt!627293 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11185 0))(
  ( (MissingZero!11185 (index!47131 (_ BitVec 32))) (Found!11185 (index!47132 (_ BitVec 32))) (Intermediate!11185 (undefined!11997 Bool) (index!47133 (_ BitVec 32)) (x!128766 (_ BitVec 32))) (Undefined!11185) (MissingVacant!11185 (index!47134 (_ BitVec 32))) )
))
(declare-fun lt!627294 () SeekEntryResult!11185)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!627295 () array!97129)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97129 (_ BitVec 32)) SeekEntryResult!11185)

(assert (=> b!1423899 (= res!959444 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627293 lt!627295 mask!2608) lt!627294))))

(declare-fun b!1423900 () Bool)

(declare-fun e!804803 () Bool)

(assert (=> b!1423900 (= e!804803 e!804797)))

(declare-fun res!959448 () Bool)

(assert (=> b!1423900 (=> (not res!959448) (not e!804797))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423900 (= res!959448 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627293 mask!2608) lt!627293 lt!627295 mask!2608) lt!627294))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423900 (= lt!627294 (Intermediate!11185 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423900 (= lt!627293 (select (store (arr!46878 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423900 (= lt!627295 (array!97130 (store (arr!46878 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47429 a!2831)))))

(declare-fun b!1423901 () Bool)

(declare-fun res!959450 () Bool)

(assert (=> b!1423901 (=> (not res!959450) (not e!804797))))

(declare-fun lt!627290 () SeekEntryResult!11185)

(assert (=> b!1423901 (= res!959450 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46878 a!2831) j!81) a!2831 mask!2608) lt!627290))))

(declare-fun b!1423902 () Bool)

(declare-fun res!959443 () Bool)

(assert (=> b!1423902 (=> (not res!959443) (not e!804797))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423902 (= res!959443 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423903 () Bool)

(declare-fun res!959454 () Bool)

(declare-fun e!804802 () Bool)

(assert (=> b!1423903 (=> res!959454 e!804802)))

(declare-fun lt!627291 () (_ BitVec 32))

(assert (=> b!1423903 (= res!959454 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627291 (select (arr!46878 a!2831) j!81) a!2831 mask!2608) lt!627290)))))

(declare-fun b!1423904 () Bool)

(declare-fun e!804801 () Bool)

(assert (=> b!1423904 (= e!804801 e!804802)))

(declare-fun res!959449 () Bool)

(assert (=> b!1423904 (=> res!959449 e!804802)))

(assert (=> b!1423904 (= res!959449 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627291 #b00000000000000000000000000000000) (bvsge lt!627291 (size!47429 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423904 (= lt!627291 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423905 () Bool)

(declare-fun res!959441 () Bool)

(assert (=> b!1423905 (=> (not res!959441) (not e!804799))))

(assert (=> b!1423905 (= res!959441 (and (= (size!47429 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47429 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47429 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423906 () Bool)

(declare-fun res!959440 () Bool)

(assert (=> b!1423906 (=> (not res!959440) (not e!804799))))

(assert (=> b!1423906 (= res!959440 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47429 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47429 a!2831))))))

(declare-fun res!959447 () Bool)

(assert (=> start!122846 (=> (not res!959447) (not e!804799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122846 (= res!959447 (validMask!0 mask!2608))))

(assert (=> start!122846 e!804799))

(assert (=> start!122846 true))

(declare-fun array_inv!35823 (array!97129) Bool)

(assert (=> start!122846 (array_inv!35823 a!2831)))

(declare-fun b!1423897 () Bool)

(assert (=> b!1423897 (= e!804797 (not e!804801))))

(declare-fun res!959445 () Bool)

(assert (=> b!1423897 (=> res!959445 e!804801)))

(assert (=> b!1423897 (= res!959445 (or (= (select (arr!46878 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46878 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46878 a!2831) index!585) (select (arr!46878 a!2831) j!81)) (= (select (store (arr!46878 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804800 () Bool)

(assert (=> b!1423897 e!804800))

(declare-fun res!959439 () Bool)

(assert (=> b!1423897 (=> (not res!959439) (not e!804800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97129 (_ BitVec 32)) Bool)

(assert (=> b!1423897 (= res!959439 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48154 0))(
  ( (Unit!48155) )
))
(declare-fun lt!627289 () Unit!48154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48154)

(assert (=> b!1423897 (= lt!627289 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423907 () Bool)

(declare-fun res!959452 () Bool)

(assert (=> b!1423907 (=> (not res!959452) (not e!804799))))

(declare-datatypes ((List!33568 0))(
  ( (Nil!33565) (Cons!33564 (h!34866 (_ BitVec 64)) (t!48269 List!33568)) )
))
(declare-fun arrayNoDuplicates!0 (array!97129 (_ BitVec 32) List!33568) Bool)

(assert (=> b!1423907 (= res!959452 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33565))))

(declare-fun b!1423908 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97129 (_ BitVec 32)) SeekEntryResult!11185)

(assert (=> b!1423908 (= e!804800 (= (seekEntryOrOpen!0 (select (arr!46878 a!2831) j!81) a!2831 mask!2608) (Found!11185 j!81)))))

(declare-fun b!1423909 () Bool)

(assert (=> b!1423909 (= e!804802 true)))

(declare-fun lt!627292 () SeekEntryResult!11185)

(assert (=> b!1423909 (= lt!627292 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627291 lt!627293 lt!627295 mask!2608))))

(declare-fun b!1423910 () Bool)

(declare-fun res!959442 () Bool)

(assert (=> b!1423910 (=> (not res!959442) (not e!804799))))

(assert (=> b!1423910 (= res!959442 (validKeyInArray!0 (select (arr!46878 a!2831) i!982)))))

(declare-fun b!1423911 () Bool)

(declare-fun res!959446 () Bool)

(assert (=> b!1423911 (=> (not res!959446) (not e!804799))))

(assert (=> b!1423911 (= res!959446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423912 () Bool)

(assert (=> b!1423912 (= e!804799 e!804803)))

(declare-fun res!959451 () Bool)

(assert (=> b!1423912 (=> (not res!959451) (not e!804803))))

(assert (=> b!1423912 (= res!959451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46878 a!2831) j!81) mask!2608) (select (arr!46878 a!2831) j!81) a!2831 mask!2608) lt!627290))))

(assert (=> b!1423912 (= lt!627290 (Intermediate!11185 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122846 res!959447) b!1423905))

(assert (= (and b!1423905 res!959441) b!1423910))

(assert (= (and b!1423910 res!959442) b!1423898))

(assert (= (and b!1423898 res!959453) b!1423911))

(assert (= (and b!1423911 res!959446) b!1423907))

(assert (= (and b!1423907 res!959452) b!1423906))

(assert (= (and b!1423906 res!959440) b!1423912))

(assert (= (and b!1423912 res!959451) b!1423900))

(assert (= (and b!1423900 res!959448) b!1423901))

(assert (= (and b!1423901 res!959450) b!1423899))

(assert (= (and b!1423899 res!959444) b!1423902))

(assert (= (and b!1423902 res!959443) b!1423897))

(assert (= (and b!1423897 res!959439) b!1423908))

(assert (= (and b!1423897 (not res!959445)) b!1423904))

(assert (= (and b!1423904 (not res!959449)) b!1423903))

(assert (= (and b!1423903 (not res!959454)) b!1423909))

(declare-fun m!1314503 () Bool)

(assert (=> b!1423904 m!1314503))

(declare-fun m!1314505 () Bool)

(assert (=> b!1423901 m!1314505))

(assert (=> b!1423901 m!1314505))

(declare-fun m!1314507 () Bool)

(assert (=> b!1423901 m!1314507))

(declare-fun m!1314509 () Bool)

(assert (=> b!1423910 m!1314509))

(assert (=> b!1423910 m!1314509))

(declare-fun m!1314511 () Bool)

(assert (=> b!1423910 m!1314511))

(declare-fun m!1314513 () Bool)

(assert (=> b!1423897 m!1314513))

(declare-fun m!1314515 () Bool)

(assert (=> b!1423897 m!1314515))

(declare-fun m!1314517 () Bool)

(assert (=> b!1423897 m!1314517))

(declare-fun m!1314519 () Bool)

(assert (=> b!1423897 m!1314519))

(assert (=> b!1423897 m!1314505))

(declare-fun m!1314521 () Bool)

(assert (=> b!1423897 m!1314521))

(assert (=> b!1423912 m!1314505))

(assert (=> b!1423912 m!1314505))

(declare-fun m!1314523 () Bool)

(assert (=> b!1423912 m!1314523))

(assert (=> b!1423912 m!1314523))

(assert (=> b!1423912 m!1314505))

(declare-fun m!1314525 () Bool)

(assert (=> b!1423912 m!1314525))

(declare-fun m!1314527 () Bool)

(assert (=> b!1423900 m!1314527))

(assert (=> b!1423900 m!1314527))

(declare-fun m!1314529 () Bool)

(assert (=> b!1423900 m!1314529))

(assert (=> b!1423900 m!1314513))

(declare-fun m!1314531 () Bool)

(assert (=> b!1423900 m!1314531))

(declare-fun m!1314533 () Bool)

(assert (=> b!1423907 m!1314533))

(assert (=> b!1423898 m!1314505))

(assert (=> b!1423898 m!1314505))

(declare-fun m!1314535 () Bool)

(assert (=> b!1423898 m!1314535))

(declare-fun m!1314537 () Bool)

(assert (=> b!1423909 m!1314537))

(declare-fun m!1314539 () Bool)

(assert (=> b!1423911 m!1314539))

(declare-fun m!1314541 () Bool)

(assert (=> start!122846 m!1314541))

(declare-fun m!1314543 () Bool)

(assert (=> start!122846 m!1314543))

(assert (=> b!1423903 m!1314505))

(assert (=> b!1423903 m!1314505))

(declare-fun m!1314545 () Bool)

(assert (=> b!1423903 m!1314545))

(declare-fun m!1314547 () Bool)

(assert (=> b!1423899 m!1314547))

(assert (=> b!1423908 m!1314505))

(assert (=> b!1423908 m!1314505))

(declare-fun m!1314549 () Bool)

(assert (=> b!1423908 m!1314549))

(push 1)

