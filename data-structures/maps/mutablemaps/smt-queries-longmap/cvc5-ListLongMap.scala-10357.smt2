; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121996 () Bool)

(assert start!121996)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96600 0))(
  ( (array!96601 (arr!46627 (Array (_ BitVec 32) (_ BitVec 64))) (size!47178 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96600)

(declare-fun b!1415218 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!801002 () Bool)

(declare-datatypes ((SeekEntryResult!10960 0))(
  ( (MissingZero!10960 (index!46231 (_ BitVec 32))) (Found!10960 (index!46232 (_ BitVec 32))) (Intermediate!10960 (undefined!11772 Bool) (index!46233 (_ BitVec 32)) (x!127850 (_ BitVec 32))) (Undefined!10960) (MissingVacant!10960 (index!46234 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96600 (_ BitVec 32)) SeekEntryResult!10960)

(assert (=> b!1415218 (= e!801002 (= (seekEntryOrOpen!0 (select (arr!46627 a!2901) j!112) a!2901 mask!2840) (Found!10960 j!112)))))

(declare-fun b!1415219 () Bool)

(declare-fun res!951375 () Bool)

(declare-fun e!801000 () Bool)

(assert (=> b!1415219 (=> (not res!951375) (not e!801000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96600 (_ BitVec 32)) Bool)

(assert (=> b!1415219 (= res!951375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415220 () Bool)

(declare-fun e!801001 () Bool)

(assert (=> b!1415220 (= e!801001 true)))

(declare-fun e!800998 () Bool)

(assert (=> b!1415220 e!800998))

(declare-fun res!951377 () Bool)

(assert (=> b!1415220 (=> (not res!951377) (not e!800998))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!623989 () SeekEntryResult!10960)

(declare-fun lt!623988 () SeekEntryResult!10960)

(assert (=> b!1415220 (= res!951377 (and (not (undefined!11772 lt!623989)) (= (index!46233 lt!623989) i!1037) (bvslt (x!127850 lt!623989) (x!127850 lt!623988)) (= (select (store (arr!46627 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46233 lt!623989)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47844 0))(
  ( (Unit!47845) )
))
(declare-fun lt!623990 () Unit!47844)

(declare-fun lt!623991 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47844)

(assert (=> b!1415220 (= lt!623990 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623991 (x!127850 lt!623988) (index!46233 lt!623988) (x!127850 lt!623989) (index!46233 lt!623989) (undefined!11772 lt!623989) mask!2840))))

(declare-fun res!951373 () Bool)

(assert (=> start!121996 (=> (not res!951373) (not e!801000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121996 (= res!951373 (validMask!0 mask!2840))))

(assert (=> start!121996 e!801000))

(assert (=> start!121996 true))

(declare-fun array_inv!35572 (array!96600) Bool)

(assert (=> start!121996 (array_inv!35572 a!2901)))

(declare-fun b!1415221 () Bool)

(declare-fun e!800999 () Bool)

(assert (=> b!1415221 (= e!800999 e!801001)))

(declare-fun res!951372 () Bool)

(assert (=> b!1415221 (=> res!951372 e!801001)))

(assert (=> b!1415221 (= res!951372 (or (= lt!623988 lt!623989) (not (is-Intermediate!10960 lt!623989))))))

(declare-fun lt!623992 () (_ BitVec 64))

(declare-fun lt!623987 () array!96600)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96600 (_ BitVec 32)) SeekEntryResult!10960)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415221 (= lt!623989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623992 mask!2840) lt!623992 lt!623987 mask!2840))))

(assert (=> b!1415221 (= lt!623992 (select (store (arr!46627 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415221 (= lt!623987 (array!96601 (store (arr!46627 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47178 a!2901)))))

(declare-fun b!1415222 () Bool)

(declare-fun res!951371 () Bool)

(assert (=> b!1415222 (=> (not res!951371) (not e!801000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415222 (= res!951371 (validKeyInArray!0 (select (arr!46627 a!2901) j!112)))))

(declare-fun b!1415223 () Bool)

(declare-fun res!951374 () Bool)

(assert (=> b!1415223 (=> (not res!951374) (not e!801000))))

(assert (=> b!1415223 (= res!951374 (validKeyInArray!0 (select (arr!46627 a!2901) i!1037)))))

(declare-fun b!1415224 () Bool)

(declare-fun res!951378 () Bool)

(assert (=> b!1415224 (=> (not res!951378) (not e!801000))))

(assert (=> b!1415224 (= res!951378 (and (= (size!47178 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47178 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47178 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415225 () Bool)

(declare-fun res!951376 () Bool)

(assert (=> b!1415225 (=> (not res!951376) (not e!801000))))

(declare-datatypes ((List!33326 0))(
  ( (Nil!33323) (Cons!33322 (h!34609 (_ BitVec 64)) (t!48027 List!33326)) )
))
(declare-fun arrayNoDuplicates!0 (array!96600 (_ BitVec 32) List!33326) Bool)

(assert (=> b!1415225 (= res!951376 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33323))))

(declare-fun b!1415226 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96600 (_ BitVec 32)) SeekEntryResult!10960)

(assert (=> b!1415226 (= e!800998 (= (seekEntryOrOpen!0 lt!623992 lt!623987 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127850 lt!623989) (index!46233 lt!623989) (index!46233 lt!623989) (select (arr!46627 a!2901) j!112) lt!623987 mask!2840)))))

(declare-fun b!1415227 () Bool)

(assert (=> b!1415227 (= e!801000 (not e!800999))))

(declare-fun res!951370 () Bool)

(assert (=> b!1415227 (=> res!951370 e!800999)))

(assert (=> b!1415227 (= res!951370 (or (not (is-Intermediate!10960 lt!623988)) (undefined!11772 lt!623988)))))

(assert (=> b!1415227 e!801002))

(declare-fun res!951369 () Bool)

(assert (=> b!1415227 (=> (not res!951369) (not e!801002))))

(assert (=> b!1415227 (= res!951369 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623986 () Unit!47844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47844)

(assert (=> b!1415227 (= lt!623986 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415227 (= lt!623988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623991 (select (arr!46627 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415227 (= lt!623991 (toIndex!0 (select (arr!46627 a!2901) j!112) mask!2840))))

(assert (= (and start!121996 res!951373) b!1415224))

(assert (= (and b!1415224 res!951378) b!1415223))

(assert (= (and b!1415223 res!951374) b!1415222))

(assert (= (and b!1415222 res!951371) b!1415219))

(assert (= (and b!1415219 res!951375) b!1415225))

(assert (= (and b!1415225 res!951376) b!1415227))

(assert (= (and b!1415227 res!951369) b!1415218))

(assert (= (and b!1415227 (not res!951370)) b!1415221))

(assert (= (and b!1415221 (not res!951372)) b!1415220))

(assert (= (and b!1415220 res!951377) b!1415226))

(declare-fun m!1305503 () Bool)

(assert (=> b!1415225 m!1305503))

(declare-fun m!1305505 () Bool)

(assert (=> b!1415223 m!1305505))

(assert (=> b!1415223 m!1305505))

(declare-fun m!1305507 () Bool)

(assert (=> b!1415223 m!1305507))

(declare-fun m!1305509 () Bool)

(assert (=> b!1415227 m!1305509))

(declare-fun m!1305511 () Bool)

(assert (=> b!1415227 m!1305511))

(assert (=> b!1415227 m!1305509))

(declare-fun m!1305513 () Bool)

(assert (=> b!1415227 m!1305513))

(assert (=> b!1415227 m!1305509))

(declare-fun m!1305515 () Bool)

(assert (=> b!1415227 m!1305515))

(declare-fun m!1305517 () Bool)

(assert (=> b!1415227 m!1305517))

(assert (=> b!1415218 m!1305509))

(assert (=> b!1415218 m!1305509))

(declare-fun m!1305519 () Bool)

(assert (=> b!1415218 m!1305519))

(declare-fun m!1305521 () Bool)

(assert (=> b!1415221 m!1305521))

(assert (=> b!1415221 m!1305521))

(declare-fun m!1305523 () Bool)

(assert (=> b!1415221 m!1305523))

(declare-fun m!1305525 () Bool)

(assert (=> b!1415221 m!1305525))

(declare-fun m!1305527 () Bool)

(assert (=> b!1415221 m!1305527))

(assert (=> b!1415220 m!1305525))

(declare-fun m!1305529 () Bool)

(assert (=> b!1415220 m!1305529))

(declare-fun m!1305531 () Bool)

(assert (=> b!1415220 m!1305531))

(assert (=> b!1415222 m!1305509))

(assert (=> b!1415222 m!1305509))

(declare-fun m!1305533 () Bool)

(assert (=> b!1415222 m!1305533))

(declare-fun m!1305535 () Bool)

(assert (=> b!1415226 m!1305535))

(assert (=> b!1415226 m!1305509))

(assert (=> b!1415226 m!1305509))

(declare-fun m!1305537 () Bool)

(assert (=> b!1415226 m!1305537))

(declare-fun m!1305539 () Bool)

(assert (=> start!121996 m!1305539))

(declare-fun m!1305541 () Bool)

(assert (=> start!121996 m!1305541))

(declare-fun m!1305543 () Bool)

(assert (=> b!1415219 m!1305543))

(push 1)

