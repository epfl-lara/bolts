; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122024 () Bool)

(assert start!122024)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96628 0))(
  ( (array!96629 (arr!46641 (Array (_ BitVec 32) (_ BitVec 64))) (size!47192 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96628)

(declare-fun e!801258 () Bool)

(declare-fun b!1415646 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10974 0))(
  ( (MissingZero!10974 (index!46287 (_ BitVec 32))) (Found!10974 (index!46288 (_ BitVec 32))) (Intermediate!10974 (undefined!11786 Bool) (index!46289 (_ BitVec 32)) (x!127896 (_ BitVec 32))) (Undefined!10974) (MissingVacant!10974 (index!46290 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96628 (_ BitVec 32)) SeekEntryResult!10974)

(assert (=> b!1415646 (= e!801258 (= (seekEntryOrOpen!0 (select (arr!46641 a!2901) j!112) a!2901 mask!2840) (Found!10974 j!112)))))

(declare-fun b!1415647 () Bool)

(declare-fun res!951802 () Bool)

(declare-fun e!801257 () Bool)

(assert (=> b!1415647 (=> (not res!951802) (not e!801257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96628 (_ BitVec 32)) Bool)

(assert (=> b!1415647 (= res!951802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415648 () Bool)

(declare-fun res!951804 () Bool)

(assert (=> b!1415648 (=> (not res!951804) (not e!801257))))

(declare-datatypes ((List!33340 0))(
  ( (Nil!33337) (Cons!33336 (h!34623 (_ BitVec 64)) (t!48041 List!33340)) )
))
(declare-fun arrayNoDuplicates!0 (array!96628 (_ BitVec 32) List!33340) Bool)

(assert (=> b!1415648 (= res!951804 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33337))))

(declare-fun b!1415649 () Bool)

(declare-fun e!801260 () Bool)

(assert (=> b!1415649 (= e!801257 (not e!801260))))

(declare-fun res!951800 () Bool)

(assert (=> b!1415649 (=> res!951800 e!801260)))

(declare-fun lt!624285 () SeekEntryResult!10974)

(assert (=> b!1415649 (= res!951800 (or (not (is-Intermediate!10974 lt!624285)) (undefined!11786 lt!624285)))))

(assert (=> b!1415649 e!801258))

(declare-fun res!951797 () Bool)

(assert (=> b!1415649 (=> (not res!951797) (not e!801258))))

(assert (=> b!1415649 (= res!951797 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47872 0))(
  ( (Unit!47873) )
))
(declare-fun lt!624283 () Unit!47872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47872)

(assert (=> b!1415649 (= lt!624283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624282 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96628 (_ BitVec 32)) SeekEntryResult!10974)

(assert (=> b!1415649 (= lt!624285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624282 (select (arr!46641 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415649 (= lt!624282 (toIndex!0 (select (arr!46641 a!2901) j!112) mask!2840))))

(declare-fun b!1415650 () Bool)

(declare-fun res!951803 () Bool)

(assert (=> b!1415650 (=> (not res!951803) (not e!801257))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415650 (= res!951803 (and (= (size!47192 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47192 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47192 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415651 () Bool)

(declare-fun res!951799 () Bool)

(assert (=> b!1415651 (=> (not res!951799) (not e!801257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415651 (= res!951799 (validKeyInArray!0 (select (arr!46641 a!2901) i!1037)))))

(declare-fun lt!624284 () SeekEntryResult!10974)

(declare-fun lt!624286 () array!96628)

(declare-fun e!801261 () Bool)

(declare-fun lt!624281 () (_ BitVec 64))

(declare-fun b!1415652 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96628 (_ BitVec 32)) SeekEntryResult!10974)

(assert (=> b!1415652 (= e!801261 (= (seekEntryOrOpen!0 lt!624281 lt!624286 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127896 lt!624284) (index!46289 lt!624284) (index!46289 lt!624284) (select (arr!46641 a!2901) j!112) lt!624286 mask!2840)))))

(declare-fun b!1415654 () Bool)

(declare-fun res!951807 () Bool)

(assert (=> b!1415654 (=> (not res!951807) (not e!801257))))

(assert (=> b!1415654 (= res!951807 (validKeyInArray!0 (select (arr!46641 a!2901) j!112)))))

(declare-fun b!1415655 () Bool)

(declare-fun e!801262 () Bool)

(assert (=> b!1415655 (= e!801260 e!801262)))

(declare-fun res!951806 () Bool)

(assert (=> b!1415655 (=> res!951806 e!801262)))

(assert (=> b!1415655 (= res!951806 (or (= lt!624285 lt!624284) (not (is-Intermediate!10974 lt!624284))))))

(assert (=> b!1415655 (= lt!624284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624281 mask!2840) lt!624281 lt!624286 mask!2840))))

(assert (=> b!1415655 (= lt!624281 (select (store (arr!46641 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415655 (= lt!624286 (array!96629 (store (arr!46641 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47192 a!2901)))))

(declare-fun b!1415656 () Bool)

(declare-fun e!801259 () Bool)

(assert (=> b!1415656 (= e!801262 e!801259)))

(declare-fun res!951798 () Bool)

(assert (=> b!1415656 (=> res!951798 e!801259)))

(assert (=> b!1415656 (= res!951798 (or (bvslt (x!127896 lt!624285) #b00000000000000000000000000000000) (bvsgt (x!127896 lt!624285) #b01111111111111111111111111111110) (bvslt (x!127896 lt!624284) #b00000000000000000000000000000000) (bvsgt (x!127896 lt!624284) #b01111111111111111111111111111110) (bvslt lt!624282 #b00000000000000000000000000000000) (bvsge lt!624282 (size!47192 a!2901)) (bvslt (index!46289 lt!624285) #b00000000000000000000000000000000) (bvsge (index!46289 lt!624285) (size!47192 a!2901)) (bvslt (index!46289 lt!624284) #b00000000000000000000000000000000) (bvsge (index!46289 lt!624284) (size!47192 a!2901)) (not (= lt!624285 (Intermediate!10974 false (index!46289 lt!624285) (x!127896 lt!624285)))) (not (= lt!624284 (Intermediate!10974 false (index!46289 lt!624284) (x!127896 lt!624284))))))))

(assert (=> b!1415656 e!801261))

(declare-fun res!951805 () Bool)

(assert (=> b!1415656 (=> (not res!951805) (not e!801261))))

(assert (=> b!1415656 (= res!951805 (and (not (undefined!11786 lt!624284)) (= (index!46289 lt!624284) i!1037) (bvslt (x!127896 lt!624284) (x!127896 lt!624285)) (= (select (store (arr!46641 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46289 lt!624284)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624280 () Unit!47872)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47872)

(assert (=> b!1415656 (= lt!624280 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624282 (x!127896 lt!624285) (index!46289 lt!624285) (x!127896 lt!624284) (index!46289 lt!624284) (undefined!11786 lt!624284) mask!2840))))

(declare-fun b!1415653 () Bool)

(assert (=> b!1415653 (= e!801259 (= lt!624284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624282 lt!624281 lt!624286 mask!2840)))))

(declare-fun res!951801 () Bool)

(assert (=> start!122024 (=> (not res!951801) (not e!801257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122024 (= res!951801 (validMask!0 mask!2840))))

(assert (=> start!122024 e!801257))

(assert (=> start!122024 true))

(declare-fun array_inv!35586 (array!96628) Bool)

(assert (=> start!122024 (array_inv!35586 a!2901)))

(assert (= (and start!122024 res!951801) b!1415650))

(assert (= (and b!1415650 res!951803) b!1415651))

(assert (= (and b!1415651 res!951799) b!1415654))

(assert (= (and b!1415654 res!951807) b!1415647))

(assert (= (and b!1415647 res!951802) b!1415648))

(assert (= (and b!1415648 res!951804) b!1415649))

(assert (= (and b!1415649 res!951797) b!1415646))

(assert (= (and b!1415649 (not res!951800)) b!1415655))

(assert (= (and b!1415655 (not res!951806)) b!1415656))

(assert (= (and b!1415656 res!951805) b!1415652))

(assert (= (and b!1415656 (not res!951798)) b!1415653))

(declare-fun m!1306095 () Bool)

(assert (=> b!1415647 m!1306095))

(declare-fun m!1306097 () Bool)

(assert (=> b!1415646 m!1306097))

(assert (=> b!1415646 m!1306097))

(declare-fun m!1306099 () Bool)

(assert (=> b!1415646 m!1306099))

(declare-fun m!1306101 () Bool)

(assert (=> b!1415652 m!1306101))

(assert (=> b!1415652 m!1306097))

(assert (=> b!1415652 m!1306097))

(declare-fun m!1306103 () Bool)

(assert (=> b!1415652 m!1306103))

(assert (=> b!1415649 m!1306097))

(declare-fun m!1306105 () Bool)

(assert (=> b!1415649 m!1306105))

(assert (=> b!1415649 m!1306097))

(declare-fun m!1306107 () Bool)

(assert (=> b!1415649 m!1306107))

(assert (=> b!1415649 m!1306097))

(declare-fun m!1306109 () Bool)

(assert (=> b!1415649 m!1306109))

(declare-fun m!1306111 () Bool)

(assert (=> b!1415649 m!1306111))

(assert (=> b!1415654 m!1306097))

(assert (=> b!1415654 m!1306097))

(declare-fun m!1306113 () Bool)

(assert (=> b!1415654 m!1306113))

(declare-fun m!1306115 () Bool)

(assert (=> b!1415648 m!1306115))

(declare-fun m!1306117 () Bool)

(assert (=> b!1415656 m!1306117))

(declare-fun m!1306119 () Bool)

(assert (=> b!1415656 m!1306119))

(declare-fun m!1306121 () Bool)

(assert (=> b!1415656 m!1306121))

(declare-fun m!1306123 () Bool)

(assert (=> b!1415651 m!1306123))

(assert (=> b!1415651 m!1306123))

(declare-fun m!1306125 () Bool)

(assert (=> b!1415651 m!1306125))

(declare-fun m!1306127 () Bool)

(assert (=> b!1415655 m!1306127))

(assert (=> b!1415655 m!1306127))

(declare-fun m!1306129 () Bool)

(assert (=> b!1415655 m!1306129))

(assert (=> b!1415655 m!1306117))

(declare-fun m!1306131 () Bool)

(assert (=> b!1415655 m!1306131))

(declare-fun m!1306133 () Bool)

(assert (=> b!1415653 m!1306133))

(declare-fun m!1306135 () Bool)

(assert (=> start!122024 m!1306135))

(declare-fun m!1306137 () Bool)

(assert (=> start!122024 m!1306137))

(push 1)

(assert (not b!1415656))

(assert (not b!1415652))

(assert (not b!1415655))

(assert (not b!1415647))

(assert (not b!1415646))

(assert (not b!1415654))

(assert (not start!122024))

(assert (not b!1415653))

(assert (not b!1415648))

(assert (not b!1415649))

(assert (not b!1415651))

(check-sat)

(pop 1)

(push 1)

(check-sat)

