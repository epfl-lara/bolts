; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122010 () Bool)

(assert start!122010)

(declare-fun b!1415428 () Bool)

(declare-fun e!801127 () Bool)

(declare-fun e!801125 () Bool)

(assert (=> b!1415428 (= e!801127 e!801125)))

(declare-fun res!951579 () Bool)

(assert (=> b!1415428 (=> res!951579 e!801125)))

(declare-datatypes ((SeekEntryResult!10967 0))(
  ( (MissingZero!10967 (index!46259 (_ BitVec 32))) (Found!10967 (index!46260 (_ BitVec 32))) (Intermediate!10967 (undefined!11779 Bool) (index!46261 (_ BitVec 32)) (x!127873 (_ BitVec 32))) (Undefined!10967) (MissingVacant!10967 (index!46262 (_ BitVec 32))) )
))
(declare-fun lt!624135 () SeekEntryResult!10967)

(declare-fun lt!624137 () SeekEntryResult!10967)

(get-info :version)

(assert (=> b!1415428 (= res!951579 (or (= lt!624135 lt!624137) (not ((_ is Intermediate!10967) lt!624137))))))

(declare-fun lt!624134 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96614 0))(
  ( (array!96615 (arr!46634 (Array (_ BitVec 32) (_ BitVec 64))) (size!47185 (_ BitVec 32))) )
))
(declare-fun lt!624136 () array!96614)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96614 (_ BitVec 32)) SeekEntryResult!10967)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415428 (= lt!624137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624134 mask!2840) lt!624134 lt!624136 mask!2840))))

(declare-fun a!2901 () array!96614)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415428 (= lt!624134 (select (store (arr!46634 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415428 (= lt!624136 (array!96615 (store (arr!46634 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47185 a!2901)))))

(declare-fun e!801126 () Bool)

(declare-fun b!1415429 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96614 (_ BitVec 32)) SeekEntryResult!10967)

(assert (=> b!1415429 (= e!801126 (= (seekEntryOrOpen!0 (select (arr!46634 a!2901) j!112) a!2901 mask!2840) (Found!10967 j!112)))))

(declare-fun b!1415430 () Bool)

(declare-fun res!951582 () Bool)

(declare-fun e!801124 () Bool)

(assert (=> b!1415430 (=> (not res!951582) (not e!801124))))

(assert (=> b!1415430 (= res!951582 (and (= (size!47185 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47185 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47185 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415431 () Bool)

(declare-fun res!951581 () Bool)

(assert (=> b!1415431 (=> (not res!951581) (not e!801124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96614 (_ BitVec 32)) Bool)

(assert (=> b!1415431 (= res!951581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415432 () Bool)

(declare-fun res!951583 () Bool)

(assert (=> b!1415432 (=> (not res!951583) (not e!801124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415432 (= res!951583 (validKeyInArray!0 (select (arr!46634 a!2901) i!1037)))))

(declare-fun b!1415433 () Bool)

(declare-fun res!951585 () Bool)

(assert (=> b!1415433 (=> (not res!951585) (not e!801124))))

(assert (=> b!1415433 (= res!951585 (validKeyInArray!0 (select (arr!46634 a!2901) j!112)))))

(declare-fun res!951588 () Bool)

(assert (=> start!122010 (=> (not res!951588) (not e!801124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122010 (= res!951588 (validMask!0 mask!2840))))

(assert (=> start!122010 e!801124))

(assert (=> start!122010 true))

(declare-fun array_inv!35579 (array!96614) Bool)

(assert (=> start!122010 (array_inv!35579 a!2901)))

(declare-fun e!801128 () Bool)

(declare-fun b!1415434 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96614 (_ BitVec 32)) SeekEntryResult!10967)

(assert (=> b!1415434 (= e!801128 (= (seekEntryOrOpen!0 lt!624134 lt!624136 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127873 lt!624137) (index!46261 lt!624137) (index!46261 lt!624137) (select (arr!46634 a!2901) j!112) lt!624136 mask!2840)))))

(declare-fun b!1415435 () Bool)

(assert (=> b!1415435 (= e!801124 (not e!801127))))

(declare-fun res!951580 () Bool)

(assert (=> b!1415435 (=> res!951580 e!801127)))

(assert (=> b!1415435 (= res!951580 (or (not ((_ is Intermediate!10967) lt!624135)) (undefined!11779 lt!624135)))))

(assert (=> b!1415435 e!801126))

(declare-fun res!951584 () Bool)

(assert (=> b!1415435 (=> (not res!951584) (not e!801126))))

(assert (=> b!1415435 (= res!951584 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47858 0))(
  ( (Unit!47859) )
))
(declare-fun lt!624138 () Unit!47858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47858)

(assert (=> b!1415435 (= lt!624138 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624139 () (_ BitVec 32))

(assert (=> b!1415435 (= lt!624135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624139 (select (arr!46634 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415435 (= lt!624139 (toIndex!0 (select (arr!46634 a!2901) j!112) mask!2840))))

(declare-fun b!1415436 () Bool)

(assert (=> b!1415436 (= e!801125 true)))

(assert (=> b!1415436 e!801128))

(declare-fun res!951586 () Bool)

(assert (=> b!1415436 (=> (not res!951586) (not e!801128))))

(assert (=> b!1415436 (= res!951586 (and (not (undefined!11779 lt!624137)) (= (index!46261 lt!624137) i!1037) (bvslt (x!127873 lt!624137) (x!127873 lt!624135)) (= (select (store (arr!46634 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46261 lt!624137)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624133 () Unit!47858)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47858)

(assert (=> b!1415436 (= lt!624133 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624139 (x!127873 lt!624135) (index!46261 lt!624135) (x!127873 lt!624137) (index!46261 lt!624137) (undefined!11779 lt!624137) mask!2840))))

(declare-fun b!1415437 () Bool)

(declare-fun res!951587 () Bool)

(assert (=> b!1415437 (=> (not res!951587) (not e!801124))))

(declare-datatypes ((List!33333 0))(
  ( (Nil!33330) (Cons!33329 (h!34616 (_ BitVec 64)) (t!48034 List!33333)) )
))
(declare-fun arrayNoDuplicates!0 (array!96614 (_ BitVec 32) List!33333) Bool)

(assert (=> b!1415437 (= res!951587 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33330))))

(assert (= (and start!122010 res!951588) b!1415430))

(assert (= (and b!1415430 res!951582) b!1415432))

(assert (= (and b!1415432 res!951583) b!1415433))

(assert (= (and b!1415433 res!951585) b!1415431))

(assert (= (and b!1415431 res!951581) b!1415437))

(assert (= (and b!1415437 res!951587) b!1415435))

(assert (= (and b!1415435 res!951584) b!1415429))

(assert (= (and b!1415435 (not res!951580)) b!1415428))

(assert (= (and b!1415428 (not res!951579)) b!1415436))

(assert (= (and b!1415436 res!951586) b!1415434))

(declare-fun m!1305797 () Bool)

(assert (=> b!1415434 m!1305797))

(declare-fun m!1305799 () Bool)

(assert (=> b!1415434 m!1305799))

(assert (=> b!1415434 m!1305799))

(declare-fun m!1305801 () Bool)

(assert (=> b!1415434 m!1305801))

(declare-fun m!1305803 () Bool)

(assert (=> b!1415431 m!1305803))

(declare-fun m!1305805 () Bool)

(assert (=> start!122010 m!1305805))

(declare-fun m!1305807 () Bool)

(assert (=> start!122010 m!1305807))

(assert (=> b!1415435 m!1305799))

(declare-fun m!1305809 () Bool)

(assert (=> b!1415435 m!1305809))

(assert (=> b!1415435 m!1305799))

(declare-fun m!1305811 () Bool)

(assert (=> b!1415435 m!1305811))

(assert (=> b!1415435 m!1305799))

(declare-fun m!1305813 () Bool)

(assert (=> b!1415435 m!1305813))

(declare-fun m!1305815 () Bool)

(assert (=> b!1415435 m!1305815))

(declare-fun m!1305817 () Bool)

(assert (=> b!1415428 m!1305817))

(assert (=> b!1415428 m!1305817))

(declare-fun m!1305819 () Bool)

(assert (=> b!1415428 m!1305819))

(declare-fun m!1305821 () Bool)

(assert (=> b!1415428 m!1305821))

(declare-fun m!1305823 () Bool)

(assert (=> b!1415428 m!1305823))

(declare-fun m!1305825 () Bool)

(assert (=> b!1415437 m!1305825))

(assert (=> b!1415436 m!1305821))

(declare-fun m!1305827 () Bool)

(assert (=> b!1415436 m!1305827))

(declare-fun m!1305829 () Bool)

(assert (=> b!1415436 m!1305829))

(declare-fun m!1305831 () Bool)

(assert (=> b!1415432 m!1305831))

(assert (=> b!1415432 m!1305831))

(declare-fun m!1305833 () Bool)

(assert (=> b!1415432 m!1305833))

(assert (=> b!1415433 m!1305799))

(assert (=> b!1415433 m!1305799))

(declare-fun m!1305835 () Bool)

(assert (=> b!1415433 m!1305835))

(assert (=> b!1415429 m!1305799))

(assert (=> b!1415429 m!1305799))

(declare-fun m!1305837 () Bool)

(assert (=> b!1415429 m!1305837))

(check-sat (not b!1415429) (not b!1415431) (not b!1415428) (not start!122010) (not b!1415435) (not b!1415432) (not b!1415434) (not b!1415437) (not b!1415433) (not b!1415436))
(check-sat)
