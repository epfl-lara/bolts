; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120398 () Bool)

(assert start!120398)

(declare-fun b!1400829 () Bool)

(declare-fun res!939450 () Bool)

(declare-fun e!793183 () Bool)

(assert (=> b!1400829 (=> (not res!939450) (not e!793183))))

(declare-datatypes ((array!95725 0))(
  ( (array!95726 (arr!46209 (Array (_ BitVec 32) (_ BitVec 64))) (size!46760 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95725)

(declare-datatypes ((List!32908 0))(
  ( (Nil!32905) (Cons!32904 (h!34152 (_ BitVec 64)) (t!47609 List!32908)) )
))
(declare-fun arrayNoDuplicates!0 (array!95725 (_ BitVec 32) List!32908) Bool)

(assert (=> b!1400829 (= res!939450 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32905))))

(declare-fun res!939454 () Bool)

(assert (=> start!120398 (=> (not res!939454) (not e!793183))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120398 (= res!939454 (validMask!0 mask!2840))))

(assert (=> start!120398 e!793183))

(assert (=> start!120398 true))

(declare-fun array_inv!35154 (array!95725) Bool)

(assert (=> start!120398 (array_inv!35154 a!2901)))

(declare-fun b!1400830 () Bool)

(declare-fun res!939458 () Bool)

(assert (=> b!1400830 (=> (not res!939458) (not e!793183))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400830 (= res!939458 (validKeyInArray!0 (select (arr!46209 a!2901) i!1037)))))

(declare-fun b!1400831 () Bool)

(declare-fun res!939457 () Bool)

(assert (=> b!1400831 (=> (not res!939457) (not e!793183))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400831 (= res!939457 (validKeyInArray!0 (select (arr!46209 a!2901) j!112)))))

(declare-fun b!1400832 () Bool)

(declare-fun e!793186 () Bool)

(assert (=> b!1400832 (= e!793183 (not e!793186))))

(declare-fun res!939452 () Bool)

(assert (=> b!1400832 (=> res!939452 e!793186)))

(declare-datatypes ((SeekEntryResult!10548 0))(
  ( (MissingZero!10548 (index!44568 (_ BitVec 32))) (Found!10548 (index!44569 (_ BitVec 32))) (Intermediate!10548 (undefined!11360 Bool) (index!44570 (_ BitVec 32)) (x!126210 (_ BitVec 32))) (Undefined!10548) (MissingVacant!10548 (index!44571 (_ BitVec 32))) )
))
(declare-fun lt!616492 () SeekEntryResult!10548)

(assert (=> b!1400832 (= res!939452 (or (not (is-Intermediate!10548 lt!616492)) (undefined!11360 lt!616492)))))

(declare-fun e!793184 () Bool)

(assert (=> b!1400832 e!793184))

(declare-fun res!939453 () Bool)

(assert (=> b!1400832 (=> (not res!939453) (not e!793184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95725 (_ BitVec 32)) Bool)

(assert (=> b!1400832 (= res!939453 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47050 0))(
  ( (Unit!47051) )
))
(declare-fun lt!616490 () Unit!47050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47050)

(assert (=> b!1400832 (= lt!616490 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616489 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95725 (_ BitVec 32)) SeekEntryResult!10548)

(assert (=> b!1400832 (= lt!616492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616489 (select (arr!46209 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400832 (= lt!616489 (toIndex!0 (select (arr!46209 a!2901) j!112) mask!2840))))

(declare-fun b!1400833 () Bool)

(declare-fun e!793181 () Bool)

(assert (=> b!1400833 (= e!793181 true)))

(declare-fun lt!616495 () array!95725)

(declare-fun lt!616493 () (_ BitVec 64))

(declare-fun lt!616494 () SeekEntryResult!10548)

(assert (=> b!1400833 (= lt!616494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616489 lt!616493 lt!616495 mask!2840))))

(declare-fun b!1400834 () Bool)

(declare-fun e!793182 () Bool)

(assert (=> b!1400834 (= e!793182 e!793181)))

(declare-fun res!939456 () Bool)

(assert (=> b!1400834 (=> res!939456 e!793181)))

(declare-fun lt!616488 () SeekEntryResult!10548)

(assert (=> b!1400834 (= res!939456 (or (bvslt (x!126210 lt!616492) #b00000000000000000000000000000000) (bvsgt (x!126210 lt!616492) #b01111111111111111111111111111110) (bvslt (x!126210 lt!616488) #b00000000000000000000000000000000) (bvsgt (x!126210 lt!616488) #b01111111111111111111111111111110) (bvslt lt!616489 #b00000000000000000000000000000000) (bvsge lt!616489 (size!46760 a!2901)) (bvslt (index!44570 lt!616492) #b00000000000000000000000000000000) (bvsge (index!44570 lt!616492) (size!46760 a!2901)) (bvslt (index!44570 lt!616488) #b00000000000000000000000000000000) (bvsge (index!44570 lt!616488) (size!46760 a!2901)) (not (= lt!616492 (Intermediate!10548 false (index!44570 lt!616492) (x!126210 lt!616492)))) (not (= lt!616488 (Intermediate!10548 false (index!44570 lt!616488) (x!126210 lt!616488))))))))

(declare-fun e!793185 () Bool)

(assert (=> b!1400834 e!793185))

(declare-fun res!939449 () Bool)

(assert (=> b!1400834 (=> (not res!939449) (not e!793185))))

(assert (=> b!1400834 (= res!939449 (and (not (undefined!11360 lt!616488)) (= (index!44570 lt!616488) i!1037) (bvslt (x!126210 lt!616488) (x!126210 lt!616492)) (= (select (store (arr!46209 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44570 lt!616488)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616491 () Unit!47050)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47050)

(assert (=> b!1400834 (= lt!616491 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616489 (x!126210 lt!616492) (index!44570 lt!616492) (x!126210 lt!616488) (index!44570 lt!616488) (undefined!11360 lt!616488) mask!2840))))

(declare-fun b!1400835 () Bool)

(assert (=> b!1400835 (= e!793186 e!793182)))

(declare-fun res!939455 () Bool)

(assert (=> b!1400835 (=> res!939455 e!793182)))

(assert (=> b!1400835 (= res!939455 (or (= lt!616492 lt!616488) (not (is-Intermediate!10548 lt!616488))))))

(assert (=> b!1400835 (= lt!616488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616493 mask!2840) lt!616493 lt!616495 mask!2840))))

(assert (=> b!1400835 (= lt!616493 (select (store (arr!46209 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400835 (= lt!616495 (array!95726 (store (arr!46209 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46760 a!2901)))))

(declare-fun b!1400836 () Bool)

(declare-fun res!939451 () Bool)

(assert (=> b!1400836 (=> (not res!939451) (not e!793183))))

(assert (=> b!1400836 (= res!939451 (and (= (size!46760 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46760 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46760 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400837 () Bool)

(declare-fun res!939459 () Bool)

(assert (=> b!1400837 (=> (not res!939459) (not e!793183))))

(assert (=> b!1400837 (= res!939459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400838 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95725 (_ BitVec 32)) SeekEntryResult!10548)

(assert (=> b!1400838 (= e!793184 (= (seekEntryOrOpen!0 (select (arr!46209 a!2901) j!112) a!2901 mask!2840) (Found!10548 j!112)))))

(declare-fun b!1400839 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95725 (_ BitVec 32)) SeekEntryResult!10548)

(assert (=> b!1400839 (= e!793185 (= (seekEntryOrOpen!0 lt!616493 lt!616495 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126210 lt!616488) (index!44570 lt!616488) (index!44570 lt!616488) (select (arr!46209 a!2901) j!112) lt!616495 mask!2840)))))

(assert (= (and start!120398 res!939454) b!1400836))

(assert (= (and b!1400836 res!939451) b!1400830))

(assert (= (and b!1400830 res!939458) b!1400831))

(assert (= (and b!1400831 res!939457) b!1400837))

(assert (= (and b!1400837 res!939459) b!1400829))

(assert (= (and b!1400829 res!939450) b!1400832))

(assert (= (and b!1400832 res!939453) b!1400838))

(assert (= (and b!1400832 (not res!939452)) b!1400835))

(assert (= (and b!1400835 (not res!939455)) b!1400834))

(assert (= (and b!1400834 res!939449) b!1400839))

(assert (= (and b!1400834 (not res!939456)) b!1400833))

(declare-fun m!1288497 () Bool)

(assert (=> b!1400839 m!1288497))

(declare-fun m!1288499 () Bool)

(assert (=> b!1400839 m!1288499))

(assert (=> b!1400839 m!1288499))

(declare-fun m!1288501 () Bool)

(assert (=> b!1400839 m!1288501))

(assert (=> b!1400832 m!1288499))

(declare-fun m!1288503 () Bool)

(assert (=> b!1400832 m!1288503))

(assert (=> b!1400832 m!1288499))

(declare-fun m!1288505 () Bool)

(assert (=> b!1400832 m!1288505))

(declare-fun m!1288507 () Bool)

(assert (=> b!1400832 m!1288507))

(assert (=> b!1400832 m!1288499))

(declare-fun m!1288509 () Bool)

(assert (=> b!1400832 m!1288509))

(declare-fun m!1288511 () Bool)

(assert (=> start!120398 m!1288511))

(declare-fun m!1288513 () Bool)

(assert (=> start!120398 m!1288513))

(declare-fun m!1288515 () Bool)

(assert (=> b!1400833 m!1288515))

(declare-fun m!1288517 () Bool)

(assert (=> b!1400837 m!1288517))

(declare-fun m!1288519 () Bool)

(assert (=> b!1400829 m!1288519))

(assert (=> b!1400838 m!1288499))

(assert (=> b!1400838 m!1288499))

(declare-fun m!1288521 () Bool)

(assert (=> b!1400838 m!1288521))

(declare-fun m!1288523 () Bool)

(assert (=> b!1400834 m!1288523))

(declare-fun m!1288525 () Bool)

(assert (=> b!1400834 m!1288525))

(declare-fun m!1288527 () Bool)

(assert (=> b!1400834 m!1288527))

(declare-fun m!1288529 () Bool)

(assert (=> b!1400830 m!1288529))

(assert (=> b!1400830 m!1288529))

(declare-fun m!1288531 () Bool)

(assert (=> b!1400830 m!1288531))

(assert (=> b!1400831 m!1288499))

(assert (=> b!1400831 m!1288499))

(declare-fun m!1288533 () Bool)

(assert (=> b!1400831 m!1288533))

(declare-fun m!1288535 () Bool)

(assert (=> b!1400835 m!1288535))

(assert (=> b!1400835 m!1288535))

(declare-fun m!1288537 () Bool)

(assert (=> b!1400835 m!1288537))

(assert (=> b!1400835 m!1288523))

(declare-fun m!1288539 () Bool)

(assert (=> b!1400835 m!1288539))

(push 1)

