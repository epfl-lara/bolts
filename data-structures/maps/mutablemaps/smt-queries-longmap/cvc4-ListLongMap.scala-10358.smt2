; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122006 () Bool)

(assert start!122006)

(declare-datatypes ((array!96610 0))(
  ( (array!96611 (arr!46632 (Array (_ BitVec 32) (_ BitVec 64))) (size!47183 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96610)

(declare-datatypes ((SeekEntryResult!10965 0))(
  ( (MissingZero!10965 (index!46251 (_ BitVec 32))) (Found!10965 (index!46252 (_ BitVec 32))) (Intermediate!10965 (undefined!11777 Bool) (index!46253 (_ BitVec 32)) (x!127863 (_ BitVec 32))) (Undefined!10965) (MissingVacant!10965 (index!46254 (_ BitVec 32))) )
))
(declare-fun lt!624092 () SeekEntryResult!10965)

(declare-fun lt!624091 () (_ BitVec 32))

(declare-fun b!1415368 () Bool)

(declare-fun e!801089 () Bool)

(declare-fun lt!624097 () SeekEntryResult!10965)

(assert (=> b!1415368 (= e!801089 (or (bvslt (x!127863 lt!624092) #b00000000000000000000000000000000) (bvsgt (x!127863 lt!624092) #b01111111111111111111111111111110) (bvslt (x!127863 lt!624097) #b00000000000000000000000000000000) (bvsgt (x!127863 lt!624097) #b01111111111111111111111111111110) (bvslt lt!624091 #b00000000000000000000000000000000) (bvsge lt!624091 (size!47183 a!2901)) (bvslt (index!46253 lt!624092) #b00000000000000000000000000000000) (bvsge (index!46253 lt!624092) (size!47183 a!2901)) (bvslt (index!46253 lt!624097) #b00000000000000000000000000000000) (bvsge (index!46253 lt!624097) (size!47183 a!2901)) (= lt!624092 (Intermediate!10965 false (index!46253 lt!624092) (x!127863 lt!624092)))))))

(declare-fun e!801091 () Bool)

(assert (=> b!1415368 e!801091))

(declare-fun res!951528 () Bool)

(assert (=> b!1415368 (=> (not res!951528) (not e!801091))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415368 (= res!951528 (and (not (undefined!11777 lt!624097)) (= (index!46253 lt!624097) i!1037) (bvslt (x!127863 lt!624097) (x!127863 lt!624092)) (= (select (store (arr!46632 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46253 lt!624097)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47854 0))(
  ( (Unit!47855) )
))
(declare-fun lt!624094 () Unit!47854)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47854)

(assert (=> b!1415368 (= lt!624094 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624091 (x!127863 lt!624092) (index!46253 lt!624092) (x!127863 lt!624097) (index!46253 lt!624097) (undefined!11777 lt!624097) mask!2840))))

(declare-fun b!1415369 () Bool)

(declare-fun res!951526 () Bool)

(declare-fun e!801088 () Bool)

(assert (=> b!1415369 (=> (not res!951526) (not e!801088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415369 (= res!951526 (validKeyInArray!0 (select (arr!46632 a!2901) j!112)))))

(declare-fun b!1415370 () Bool)

(declare-fun e!801090 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96610 (_ BitVec 32)) SeekEntryResult!10965)

(assert (=> b!1415370 (= e!801090 (= (seekEntryOrOpen!0 (select (arr!46632 a!2901) j!112) a!2901 mask!2840) (Found!10965 j!112)))))

(declare-fun res!951520 () Bool)

(assert (=> start!122006 (=> (not res!951520) (not e!801088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122006 (= res!951520 (validMask!0 mask!2840))))

(assert (=> start!122006 e!801088))

(assert (=> start!122006 true))

(declare-fun array_inv!35577 (array!96610) Bool)

(assert (=> start!122006 (array_inv!35577 a!2901)))

(declare-fun b!1415371 () Bool)

(declare-fun res!951522 () Bool)

(assert (=> b!1415371 (=> (not res!951522) (not e!801088))))

(assert (=> b!1415371 (= res!951522 (and (= (size!47183 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47183 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47183 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415372 () Bool)

(declare-fun res!951524 () Bool)

(assert (=> b!1415372 (=> (not res!951524) (not e!801088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96610 (_ BitVec 32)) Bool)

(assert (=> b!1415372 (= res!951524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415373 () Bool)

(declare-fun res!951527 () Bool)

(assert (=> b!1415373 (=> (not res!951527) (not e!801088))))

(declare-datatypes ((List!33331 0))(
  ( (Nil!33328) (Cons!33327 (h!34614 (_ BitVec 64)) (t!48032 List!33331)) )
))
(declare-fun arrayNoDuplicates!0 (array!96610 (_ BitVec 32) List!33331) Bool)

(assert (=> b!1415373 (= res!951527 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33328))))

(declare-fun b!1415374 () Bool)

(declare-fun e!801092 () Bool)

(assert (=> b!1415374 (= e!801088 (not e!801092))))

(declare-fun res!951523 () Bool)

(assert (=> b!1415374 (=> res!951523 e!801092)))

(assert (=> b!1415374 (= res!951523 (or (not (is-Intermediate!10965 lt!624092)) (undefined!11777 lt!624092)))))

(assert (=> b!1415374 e!801090))

(declare-fun res!951519 () Bool)

(assert (=> b!1415374 (=> (not res!951519) (not e!801090))))

(assert (=> b!1415374 (= res!951519 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624096 () Unit!47854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47854)

(assert (=> b!1415374 (= lt!624096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96610 (_ BitVec 32)) SeekEntryResult!10965)

(assert (=> b!1415374 (= lt!624092 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624091 (select (arr!46632 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415374 (= lt!624091 (toIndex!0 (select (arr!46632 a!2901) j!112) mask!2840))))

(declare-fun lt!624093 () (_ BitVec 64))

(declare-fun b!1415375 () Bool)

(declare-fun lt!624095 () array!96610)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96610 (_ BitVec 32)) SeekEntryResult!10965)

(assert (=> b!1415375 (= e!801091 (= (seekEntryOrOpen!0 lt!624093 lt!624095 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127863 lt!624097) (index!46253 lt!624097) (index!46253 lt!624097) (select (arr!46632 a!2901) j!112) lt!624095 mask!2840)))))

(declare-fun b!1415376 () Bool)

(assert (=> b!1415376 (= e!801092 e!801089)))

(declare-fun res!951525 () Bool)

(assert (=> b!1415376 (=> res!951525 e!801089)))

(assert (=> b!1415376 (= res!951525 (or (= lt!624092 lt!624097) (not (is-Intermediate!10965 lt!624097))))))

(assert (=> b!1415376 (= lt!624097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624093 mask!2840) lt!624093 lt!624095 mask!2840))))

(assert (=> b!1415376 (= lt!624093 (select (store (arr!46632 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415376 (= lt!624095 (array!96611 (store (arr!46632 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47183 a!2901)))))

(declare-fun b!1415377 () Bool)

(declare-fun res!951521 () Bool)

(assert (=> b!1415377 (=> (not res!951521) (not e!801088))))

(assert (=> b!1415377 (= res!951521 (validKeyInArray!0 (select (arr!46632 a!2901) i!1037)))))

(assert (= (and start!122006 res!951520) b!1415371))

(assert (= (and b!1415371 res!951522) b!1415377))

(assert (= (and b!1415377 res!951521) b!1415369))

(assert (= (and b!1415369 res!951526) b!1415372))

(assert (= (and b!1415372 res!951524) b!1415373))

(assert (= (and b!1415373 res!951527) b!1415374))

(assert (= (and b!1415374 res!951519) b!1415370))

(assert (= (and b!1415374 (not res!951523)) b!1415376))

(assert (= (and b!1415376 (not res!951525)) b!1415368))

(assert (= (and b!1415368 res!951528) b!1415375))

(declare-fun m!1305713 () Bool)

(assert (=> b!1415373 m!1305713))

(declare-fun m!1305715 () Bool)

(assert (=> b!1415369 m!1305715))

(assert (=> b!1415369 m!1305715))

(declare-fun m!1305717 () Bool)

(assert (=> b!1415369 m!1305717))

(declare-fun m!1305719 () Bool)

(assert (=> start!122006 m!1305719))

(declare-fun m!1305721 () Bool)

(assert (=> start!122006 m!1305721))

(declare-fun m!1305723 () Bool)

(assert (=> b!1415372 m!1305723))

(assert (=> b!1415374 m!1305715))

(declare-fun m!1305725 () Bool)

(assert (=> b!1415374 m!1305725))

(assert (=> b!1415374 m!1305715))

(declare-fun m!1305727 () Bool)

(assert (=> b!1415374 m!1305727))

(assert (=> b!1415374 m!1305715))

(declare-fun m!1305729 () Bool)

(assert (=> b!1415374 m!1305729))

(declare-fun m!1305731 () Bool)

(assert (=> b!1415374 m!1305731))

(declare-fun m!1305733 () Bool)

(assert (=> b!1415375 m!1305733))

(assert (=> b!1415375 m!1305715))

(assert (=> b!1415375 m!1305715))

(declare-fun m!1305735 () Bool)

(assert (=> b!1415375 m!1305735))

(declare-fun m!1305737 () Bool)

(assert (=> b!1415376 m!1305737))

(assert (=> b!1415376 m!1305737))

(declare-fun m!1305739 () Bool)

(assert (=> b!1415376 m!1305739))

(declare-fun m!1305741 () Bool)

(assert (=> b!1415376 m!1305741))

(declare-fun m!1305743 () Bool)

(assert (=> b!1415376 m!1305743))

(declare-fun m!1305745 () Bool)

(assert (=> b!1415377 m!1305745))

(assert (=> b!1415377 m!1305745))

(declare-fun m!1305747 () Bool)

(assert (=> b!1415377 m!1305747))

(assert (=> b!1415370 m!1305715))

(assert (=> b!1415370 m!1305715))

(declare-fun m!1305749 () Bool)

(assert (=> b!1415370 m!1305749))

(assert (=> b!1415368 m!1305741))

(declare-fun m!1305751 () Bool)

(assert (=> b!1415368 m!1305751))

(declare-fun m!1305753 () Bool)

(assert (=> b!1415368 m!1305753))

(push 1)

