; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122872 () Bool)

(assert start!122872)

(declare-fun b!1424521 () Bool)

(declare-fun res!960075 () Bool)

(declare-fun e!805073 () Bool)

(assert (=> b!1424521 (=> (not res!960075) (not e!805073))))

(declare-datatypes ((SeekEntryResult!11198 0))(
  ( (MissingZero!11198 (index!47183 (_ BitVec 32))) (Found!11198 (index!47184 (_ BitVec 32))) (Intermediate!11198 (undefined!12010 Bool) (index!47185 (_ BitVec 32)) (x!128819 (_ BitVec 32))) (Undefined!11198) (MissingVacant!11198 (index!47186 (_ BitVec 32))) )
))
(declare-fun lt!627567 () SeekEntryResult!11198)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97155 0))(
  ( (array!97156 (arr!46891 (Array (_ BitVec 32) (_ BitVec 64))) (size!47442 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97155)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97155 (_ BitVec 32)) SeekEntryResult!11198)

(assert (=> b!1424521 (= res!960075 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46891 a!2831) j!81) a!2831 mask!2608) lt!627567))))

(declare-fun b!1424522 () Bool)

(declare-fun res!960071 () Bool)

(assert (=> b!1424522 (=> (not res!960071) (not e!805073))))

(declare-fun lt!627568 () SeekEntryResult!11198)

(declare-fun lt!627565 () (_ BitVec 64))

(declare-fun lt!627566 () array!97155)

(assert (=> b!1424522 (= res!960071 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627565 lt!627566 mask!2608) lt!627568))))

(declare-fun b!1424523 () Bool)

(declare-fun res!960072 () Bool)

(declare-fun e!805071 () Bool)

(assert (=> b!1424523 (=> (not res!960072) (not e!805071))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424523 (= res!960072 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47442 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47442 a!2831))))))

(declare-fun b!1424524 () Bool)

(declare-fun res!960067 () Bool)

(assert (=> b!1424524 (=> (not res!960067) (not e!805071))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424524 (= res!960067 (validKeyInArray!0 (select (arr!46891 a!2831) i!982)))))

(declare-fun b!1424525 () Bool)

(declare-fun e!805070 () Bool)

(assert (=> b!1424525 (= e!805070 true)))

(declare-fun lt!627562 () (_ BitVec 32))

(declare-fun lt!627563 () SeekEntryResult!11198)

(assert (=> b!1424525 (= lt!627563 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627562 lt!627565 lt!627566 mask!2608))))

(declare-fun b!1424526 () Bool)

(declare-fun res!960076 () Bool)

(assert (=> b!1424526 (=> (not res!960076) (not e!805073))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424526 (= res!960076 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424527 () Bool)

(declare-fun res!960063 () Bool)

(assert (=> b!1424527 (=> (not res!960063) (not e!805071))))

(declare-datatypes ((List!33581 0))(
  ( (Nil!33578) (Cons!33577 (h!34879 (_ BitVec 64)) (t!48282 List!33581)) )
))
(declare-fun arrayNoDuplicates!0 (array!97155 (_ BitVec 32) List!33581) Bool)

(assert (=> b!1424527 (= res!960063 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33578))))

(declare-fun b!1424528 () Bool)

(declare-fun e!805076 () Bool)

(assert (=> b!1424528 (= e!805073 (not e!805076))))

(declare-fun res!960064 () Bool)

(assert (=> b!1424528 (=> res!960064 e!805076)))

(assert (=> b!1424528 (= res!960064 (or (= (select (arr!46891 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46891 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46891 a!2831) index!585) (select (arr!46891 a!2831) j!81)) (= (select (store (arr!46891 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!805072 () Bool)

(assert (=> b!1424528 e!805072))

(declare-fun res!960074 () Bool)

(assert (=> b!1424528 (=> (not res!960074) (not e!805072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97155 (_ BitVec 32)) Bool)

(assert (=> b!1424528 (= res!960074 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48180 0))(
  ( (Unit!48181) )
))
(declare-fun lt!627564 () Unit!48180)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48180)

(assert (=> b!1424528 (= lt!627564 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424529 () Bool)

(declare-fun e!805074 () Bool)

(assert (=> b!1424529 (= e!805071 e!805074)))

(declare-fun res!960066 () Bool)

(assert (=> b!1424529 (=> (not res!960066) (not e!805074))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424529 (= res!960066 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46891 a!2831) j!81) mask!2608) (select (arr!46891 a!2831) j!81) a!2831 mask!2608) lt!627567))))

(assert (=> b!1424529 (= lt!627567 (Intermediate!11198 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424530 () Bool)

(declare-fun res!960069 () Bool)

(assert (=> b!1424530 (=> (not res!960069) (not e!805071))))

(assert (=> b!1424530 (= res!960069 (validKeyInArray!0 (select (arr!46891 a!2831) j!81)))))

(declare-fun res!960078 () Bool)

(assert (=> start!122872 (=> (not res!960078) (not e!805071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122872 (= res!960078 (validMask!0 mask!2608))))

(assert (=> start!122872 e!805071))

(assert (=> start!122872 true))

(declare-fun array_inv!35836 (array!97155) Bool)

(assert (=> start!122872 (array_inv!35836 a!2831)))

(declare-fun b!1424531 () Bool)

(declare-fun res!960065 () Bool)

(assert (=> b!1424531 (=> res!960065 e!805070)))

(assert (=> b!1424531 (= res!960065 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627562 (select (arr!46891 a!2831) j!81) a!2831 mask!2608) lt!627567)))))

(declare-fun b!1424532 () Bool)

(declare-fun res!960068 () Bool)

(assert (=> b!1424532 (=> (not res!960068) (not e!805071))))

(assert (=> b!1424532 (= res!960068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424533 () Bool)

(declare-fun res!960073 () Bool)

(assert (=> b!1424533 (=> (not res!960073) (not e!805071))))

(assert (=> b!1424533 (= res!960073 (and (= (size!47442 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47442 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47442 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424534 () Bool)

(assert (=> b!1424534 (= e!805074 e!805073)))

(declare-fun res!960077 () Bool)

(assert (=> b!1424534 (=> (not res!960077) (not e!805073))))

(assert (=> b!1424534 (= res!960077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627565 mask!2608) lt!627565 lt!627566 mask!2608) lt!627568))))

(assert (=> b!1424534 (= lt!627568 (Intermediate!11198 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424534 (= lt!627565 (select (store (arr!46891 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424534 (= lt!627566 (array!97156 (store (arr!46891 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47442 a!2831)))))

(declare-fun b!1424535 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97155 (_ BitVec 32)) SeekEntryResult!11198)

(assert (=> b!1424535 (= e!805072 (= (seekEntryOrOpen!0 (select (arr!46891 a!2831) j!81) a!2831 mask!2608) (Found!11198 j!81)))))

(declare-fun b!1424536 () Bool)

(assert (=> b!1424536 (= e!805076 e!805070)))

(declare-fun res!960070 () Bool)

(assert (=> b!1424536 (=> res!960070 e!805070)))

(assert (=> b!1424536 (= res!960070 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627562 #b00000000000000000000000000000000) (bvsge lt!627562 (size!47442 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424536 (= lt!627562 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!122872 res!960078) b!1424533))

(assert (= (and b!1424533 res!960073) b!1424524))

(assert (= (and b!1424524 res!960067) b!1424530))

(assert (= (and b!1424530 res!960069) b!1424532))

(assert (= (and b!1424532 res!960068) b!1424527))

(assert (= (and b!1424527 res!960063) b!1424523))

(assert (= (and b!1424523 res!960072) b!1424529))

(assert (= (and b!1424529 res!960066) b!1424534))

(assert (= (and b!1424534 res!960077) b!1424521))

(assert (= (and b!1424521 res!960075) b!1424522))

(assert (= (and b!1424522 res!960071) b!1424526))

(assert (= (and b!1424526 res!960076) b!1424528))

(assert (= (and b!1424528 res!960074) b!1424535))

(assert (= (and b!1424528 (not res!960064)) b!1424536))

(assert (= (and b!1424536 (not res!960070)) b!1424531))

(assert (= (and b!1424531 (not res!960065)) b!1424525))

(declare-fun m!1315127 () Bool)

(assert (=> start!122872 m!1315127))

(declare-fun m!1315129 () Bool)

(assert (=> start!122872 m!1315129))

(declare-fun m!1315131 () Bool)

(assert (=> b!1424521 m!1315131))

(assert (=> b!1424521 m!1315131))

(declare-fun m!1315133 () Bool)

(assert (=> b!1424521 m!1315133))

(declare-fun m!1315135 () Bool)

(assert (=> b!1424527 m!1315135))

(assert (=> b!1424535 m!1315131))

(assert (=> b!1424535 m!1315131))

(declare-fun m!1315137 () Bool)

(assert (=> b!1424535 m!1315137))

(declare-fun m!1315139 () Bool)

(assert (=> b!1424524 m!1315139))

(assert (=> b!1424524 m!1315139))

(declare-fun m!1315141 () Bool)

(assert (=> b!1424524 m!1315141))

(declare-fun m!1315143 () Bool)

(assert (=> b!1424522 m!1315143))

(declare-fun m!1315145 () Bool)

(assert (=> b!1424525 m!1315145))

(declare-fun m!1315147 () Bool)

(assert (=> b!1424528 m!1315147))

(declare-fun m!1315149 () Bool)

(assert (=> b!1424528 m!1315149))

(declare-fun m!1315151 () Bool)

(assert (=> b!1424528 m!1315151))

(declare-fun m!1315153 () Bool)

(assert (=> b!1424528 m!1315153))

(assert (=> b!1424528 m!1315131))

(declare-fun m!1315155 () Bool)

(assert (=> b!1424528 m!1315155))

(assert (=> b!1424531 m!1315131))

(assert (=> b!1424531 m!1315131))

(declare-fun m!1315157 () Bool)

(assert (=> b!1424531 m!1315157))

(assert (=> b!1424530 m!1315131))

(assert (=> b!1424530 m!1315131))

(declare-fun m!1315159 () Bool)

(assert (=> b!1424530 m!1315159))

(declare-fun m!1315161 () Bool)

(assert (=> b!1424534 m!1315161))

(assert (=> b!1424534 m!1315161))

(declare-fun m!1315163 () Bool)

(assert (=> b!1424534 m!1315163))

(assert (=> b!1424534 m!1315147))

(declare-fun m!1315165 () Bool)

(assert (=> b!1424534 m!1315165))

(declare-fun m!1315167 () Bool)

(assert (=> b!1424532 m!1315167))

(assert (=> b!1424529 m!1315131))

(assert (=> b!1424529 m!1315131))

(declare-fun m!1315169 () Bool)

(assert (=> b!1424529 m!1315169))

(assert (=> b!1424529 m!1315169))

(assert (=> b!1424529 m!1315131))

(declare-fun m!1315171 () Bool)

(assert (=> b!1424529 m!1315171))

(declare-fun m!1315173 () Bool)

(assert (=> b!1424536 m!1315173))

(push 1)

