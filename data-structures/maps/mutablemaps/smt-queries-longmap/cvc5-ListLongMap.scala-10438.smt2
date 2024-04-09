; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122830 () Bool)

(assert start!122830)

(declare-fun b!1423513 () Bool)

(declare-fun res!959057 () Bool)

(declare-fun e!804629 () Bool)

(assert (=> b!1423513 (=> (not res!959057) (not e!804629))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97113 0))(
  ( (array!97114 (arr!46870 (Array (_ BitVec 32) (_ BitVec 64))) (size!47421 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97113)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1423513 (= res!959057 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47421 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47421 a!2831))))))

(declare-fun b!1423514 () Bool)

(declare-fun res!959060 () Bool)

(assert (=> b!1423514 (=> (not res!959060) (not e!804629))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97113 (_ BitVec 32)) Bool)

(assert (=> b!1423514 (= res!959060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423515 () Bool)

(declare-fun res!959059 () Bool)

(assert (=> b!1423515 (=> (not res!959059) (not e!804629))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423515 (= res!959059 (validKeyInArray!0 (select (arr!46870 a!2831) j!81)))))

(declare-fun b!1423516 () Bool)

(declare-fun e!804632 () Bool)

(assert (=> b!1423516 (= e!804629 e!804632)))

(declare-fun res!959066 () Bool)

(assert (=> b!1423516 (=> (not res!959066) (not e!804632))))

(declare-datatypes ((SeekEntryResult!11177 0))(
  ( (MissingZero!11177 (index!47099 (_ BitVec 32))) (Found!11177 (index!47100 (_ BitVec 32))) (Intermediate!11177 (undefined!11989 Bool) (index!47101 (_ BitVec 32)) (x!128742 (_ BitVec 32))) (Undefined!11177) (MissingVacant!11177 (index!47102 (_ BitVec 32))) )
))
(declare-fun lt!627125 () SeekEntryResult!11177)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97113 (_ BitVec 32)) SeekEntryResult!11177)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423516 (= res!959066 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46870 a!2831) j!81) mask!2608) (select (arr!46870 a!2831) j!81) a!2831 mask!2608) lt!627125))))

(assert (=> b!1423516 (= lt!627125 (Intermediate!11177 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423517 () Bool)

(declare-fun res!959064 () Bool)

(declare-fun e!804633 () Bool)

(assert (=> b!1423517 (=> (not res!959064) (not e!804633))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423517 (= res!959064 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423518 () Bool)

(declare-fun e!804635 () Bool)

(assert (=> b!1423518 (= e!804633 (not e!804635))))

(declare-fun res!959067 () Bool)

(assert (=> b!1423518 (=> res!959067 e!804635)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423518 (= res!959067 (or (= (select (arr!46870 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46870 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46870 a!2831) index!585) (select (arr!46870 a!2831) j!81)) (= (select (store (arr!46870 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804631 () Bool)

(assert (=> b!1423518 e!804631))

(declare-fun res!959065 () Bool)

(assert (=> b!1423518 (=> (not res!959065) (not e!804631))))

(assert (=> b!1423518 (= res!959065 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48138 0))(
  ( (Unit!48139) )
))
(declare-fun lt!627122 () Unit!48138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48138)

(assert (=> b!1423518 (= lt!627122 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423519 () Bool)

(assert (=> b!1423519 (= e!804632 e!804633)))

(declare-fun res!959068 () Bool)

(assert (=> b!1423519 (=> (not res!959068) (not e!804633))))

(declare-fun lt!627127 () (_ BitVec 64))

(declare-fun lt!627126 () SeekEntryResult!11177)

(declare-fun lt!627123 () array!97113)

(assert (=> b!1423519 (= res!959068 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627127 mask!2608) lt!627127 lt!627123 mask!2608) lt!627126))))

(assert (=> b!1423519 (= lt!627126 (Intermediate!11177 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423519 (= lt!627127 (select (store (arr!46870 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423519 (= lt!627123 (array!97114 (store (arr!46870 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47421 a!2831)))))

(declare-fun b!1423520 () Bool)

(declare-fun e!804630 () Bool)

(assert (=> b!1423520 (= e!804635 e!804630)))

(declare-fun res!959055 () Bool)

(assert (=> b!1423520 (=> res!959055 e!804630)))

(declare-fun lt!627121 () (_ BitVec 32))

(assert (=> b!1423520 (= res!959055 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627121 #b00000000000000000000000000000000) (bvsge lt!627121 (size!47421 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423520 (= lt!627121 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423521 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97113 (_ BitVec 32)) SeekEntryResult!11177)

(assert (=> b!1423521 (= e!804631 (= (seekEntryOrOpen!0 (select (arr!46870 a!2831) j!81) a!2831 mask!2608) (Found!11177 j!81)))))

(declare-fun res!959056 () Bool)

(assert (=> start!122830 (=> (not res!959056) (not e!804629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122830 (= res!959056 (validMask!0 mask!2608))))

(assert (=> start!122830 e!804629))

(assert (=> start!122830 true))

(declare-fun array_inv!35815 (array!97113) Bool)

(assert (=> start!122830 (array_inv!35815 a!2831)))

(declare-fun b!1423522 () Bool)

(declare-fun res!959063 () Bool)

(assert (=> b!1423522 (=> (not res!959063) (not e!804633))))

(assert (=> b!1423522 (= res!959063 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627127 lt!627123 mask!2608) lt!627126))))

(declare-fun b!1423523 () Bool)

(declare-fun res!959058 () Bool)

(assert (=> b!1423523 (=> (not res!959058) (not e!804629))))

(assert (=> b!1423523 (= res!959058 (validKeyInArray!0 (select (arr!46870 a!2831) i!982)))))

(declare-fun b!1423524 () Bool)

(declare-fun res!959070 () Bool)

(assert (=> b!1423524 (=> (not res!959070) (not e!804633))))

(assert (=> b!1423524 (= res!959070 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46870 a!2831) j!81) a!2831 mask!2608) lt!627125))))

(declare-fun b!1423525 () Bool)

(declare-fun res!959069 () Bool)

(assert (=> b!1423525 (=> (not res!959069) (not e!804629))))

(declare-datatypes ((List!33560 0))(
  ( (Nil!33557) (Cons!33556 (h!34858 (_ BitVec 64)) (t!48261 List!33560)) )
))
(declare-fun arrayNoDuplicates!0 (array!97113 (_ BitVec 32) List!33560) Bool)

(assert (=> b!1423525 (= res!959069 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33557))))

(declare-fun b!1423526 () Bool)

(declare-fun res!959061 () Bool)

(assert (=> b!1423526 (=> res!959061 e!804630)))

(assert (=> b!1423526 (= res!959061 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627121 (select (arr!46870 a!2831) j!81) a!2831 mask!2608) lt!627125)))))

(declare-fun b!1423527 () Bool)

(declare-fun res!959062 () Bool)

(assert (=> b!1423527 (=> (not res!959062) (not e!804629))))

(assert (=> b!1423527 (= res!959062 (and (= (size!47421 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47421 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47421 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423528 () Bool)

(assert (=> b!1423528 (= e!804630 true)))

(declare-fun lt!627124 () SeekEntryResult!11177)

(assert (=> b!1423528 (= lt!627124 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627121 lt!627127 lt!627123 mask!2608))))

(assert (= (and start!122830 res!959056) b!1423527))

(assert (= (and b!1423527 res!959062) b!1423523))

(assert (= (and b!1423523 res!959058) b!1423515))

(assert (= (and b!1423515 res!959059) b!1423514))

(assert (= (and b!1423514 res!959060) b!1423525))

(assert (= (and b!1423525 res!959069) b!1423513))

(assert (= (and b!1423513 res!959057) b!1423516))

(assert (= (and b!1423516 res!959066) b!1423519))

(assert (= (and b!1423519 res!959068) b!1423524))

(assert (= (and b!1423524 res!959070) b!1423522))

(assert (= (and b!1423522 res!959063) b!1423517))

(assert (= (and b!1423517 res!959064) b!1423518))

(assert (= (and b!1423518 res!959065) b!1423521))

(assert (= (and b!1423518 (not res!959067)) b!1423520))

(assert (= (and b!1423520 (not res!959055)) b!1423526))

(assert (= (and b!1423526 (not res!959061)) b!1423528))

(declare-fun m!1314119 () Bool)

(assert (=> b!1423515 m!1314119))

(assert (=> b!1423515 m!1314119))

(declare-fun m!1314121 () Bool)

(assert (=> b!1423515 m!1314121))

(declare-fun m!1314123 () Bool)

(assert (=> b!1423518 m!1314123))

(declare-fun m!1314125 () Bool)

(assert (=> b!1423518 m!1314125))

(declare-fun m!1314127 () Bool)

(assert (=> b!1423518 m!1314127))

(declare-fun m!1314129 () Bool)

(assert (=> b!1423518 m!1314129))

(assert (=> b!1423518 m!1314119))

(declare-fun m!1314131 () Bool)

(assert (=> b!1423518 m!1314131))

(declare-fun m!1314133 () Bool)

(assert (=> b!1423514 m!1314133))

(declare-fun m!1314135 () Bool)

(assert (=> b!1423528 m!1314135))

(declare-fun m!1314137 () Bool)

(assert (=> start!122830 m!1314137))

(declare-fun m!1314139 () Bool)

(assert (=> start!122830 m!1314139))

(assert (=> b!1423526 m!1314119))

(assert (=> b!1423526 m!1314119))

(declare-fun m!1314141 () Bool)

(assert (=> b!1423526 m!1314141))

(declare-fun m!1314143 () Bool)

(assert (=> b!1423525 m!1314143))

(declare-fun m!1314145 () Bool)

(assert (=> b!1423520 m!1314145))

(assert (=> b!1423524 m!1314119))

(assert (=> b!1423524 m!1314119))

(declare-fun m!1314147 () Bool)

(assert (=> b!1423524 m!1314147))

(assert (=> b!1423521 m!1314119))

(assert (=> b!1423521 m!1314119))

(declare-fun m!1314149 () Bool)

(assert (=> b!1423521 m!1314149))

(declare-fun m!1314151 () Bool)

(assert (=> b!1423519 m!1314151))

(assert (=> b!1423519 m!1314151))

(declare-fun m!1314153 () Bool)

(assert (=> b!1423519 m!1314153))

(assert (=> b!1423519 m!1314123))

(declare-fun m!1314155 () Bool)

(assert (=> b!1423519 m!1314155))

(declare-fun m!1314157 () Bool)

(assert (=> b!1423522 m!1314157))

(assert (=> b!1423516 m!1314119))

(assert (=> b!1423516 m!1314119))

(declare-fun m!1314159 () Bool)

(assert (=> b!1423516 m!1314159))

(assert (=> b!1423516 m!1314159))

(assert (=> b!1423516 m!1314119))

(declare-fun m!1314161 () Bool)

(assert (=> b!1423516 m!1314161))

(declare-fun m!1314163 () Bool)

(assert (=> b!1423523 m!1314163))

(assert (=> b!1423523 m!1314163))

(declare-fun m!1314165 () Bool)

(assert (=> b!1423523 m!1314165))

(push 1)

