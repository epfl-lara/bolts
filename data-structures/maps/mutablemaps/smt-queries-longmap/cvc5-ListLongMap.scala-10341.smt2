; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121636 () Bool)

(assert start!121636)

(declare-fun b!1412470 () Bool)

(declare-fun res!949576 () Bool)

(declare-fun e!799353 () Bool)

(assert (=> b!1412470 (=> (not res!949576) (not e!799353))))

(declare-datatypes ((array!96492 0))(
  ( (array!96493 (arr!46579 (Array (_ BitVec 32) (_ BitVec 64))) (size!47130 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96492)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412470 (= res!949576 (validKeyInArray!0 (select (arr!46579 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!799355 () Bool)

(declare-fun b!1412471 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10912 0))(
  ( (MissingZero!10912 (index!46027 (_ BitVec 32))) (Found!10912 (index!46028 (_ BitVec 32))) (Intermediate!10912 (undefined!11724 Bool) (index!46029 (_ BitVec 32)) (x!127626 (_ BitVec 32))) (Undefined!10912) (MissingVacant!10912 (index!46030 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96492 (_ BitVec 32)) SeekEntryResult!10912)

(assert (=> b!1412471 (= e!799355 (= (seekEntryOrOpen!0 (select (arr!46579 a!2901) j!112) a!2901 mask!2840) (Found!10912 j!112)))))

(declare-fun b!1412472 () Bool)

(declare-fun res!949575 () Bool)

(assert (=> b!1412472 (=> (not res!949575) (not e!799353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96492 (_ BitVec 32)) Bool)

(assert (=> b!1412472 (= res!949575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412473 () Bool)

(declare-fun res!949578 () Bool)

(assert (=> b!1412473 (=> (not res!949578) (not e!799353))))

(declare-datatypes ((List!33278 0))(
  ( (Nil!33275) (Cons!33274 (h!34549 (_ BitVec 64)) (t!47979 List!33278)) )
))
(declare-fun arrayNoDuplicates!0 (array!96492 (_ BitVec 32) List!33278) Bool)

(assert (=> b!1412473 (= res!949578 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33275))))

(declare-fun res!949577 () Bool)

(assert (=> start!121636 (=> (not res!949577) (not e!799353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121636 (= res!949577 (validMask!0 mask!2840))))

(assert (=> start!121636 e!799353))

(assert (=> start!121636 true))

(declare-fun array_inv!35524 (array!96492) Bool)

(assert (=> start!121636 (array_inv!35524 a!2901)))

(declare-fun lt!622359 () SeekEntryResult!10912)

(declare-fun e!799354 () Bool)

(declare-fun b!1412474 () Bool)

(declare-fun lt!622358 () (_ BitVec 64))

(declare-fun lt!622354 () array!96492)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96492 (_ BitVec 32)) SeekEntryResult!10912)

(assert (=> b!1412474 (= e!799354 (= (seekEntryOrOpen!0 lt!622358 lt!622354 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127626 lt!622359) (index!46029 lt!622359) (index!46029 lt!622359) (select (arr!46579 a!2901) j!112) lt!622354 mask!2840)))))

(declare-fun b!1412475 () Bool)

(declare-fun res!949571 () Bool)

(assert (=> b!1412475 (=> (not res!949571) (not e!799353))))

(assert (=> b!1412475 (= res!949571 (and (= (size!47130 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47130 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47130 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412476 () Bool)

(declare-fun e!799357 () Bool)

(assert (=> b!1412476 (= e!799357 true)))

(assert (=> b!1412476 e!799354))

(declare-fun res!949569 () Bool)

(assert (=> b!1412476 (=> (not res!949569) (not e!799354))))

(declare-fun lt!622355 () SeekEntryResult!10912)

(assert (=> b!1412476 (= res!949569 (and (not (undefined!11724 lt!622359)) (= (index!46029 lt!622359) i!1037) (bvslt (x!127626 lt!622359) (x!127626 lt!622355)) (= (select (store (arr!46579 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46029 lt!622359)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622356 () (_ BitVec 32))

(declare-datatypes ((Unit!47748 0))(
  ( (Unit!47749) )
))
(declare-fun lt!622357 () Unit!47748)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47748)

(assert (=> b!1412476 (= lt!622357 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622356 (x!127626 lt!622355) (index!46029 lt!622355) (x!127626 lt!622359) (index!46029 lt!622359) (undefined!11724 lt!622359) mask!2840))))

(declare-fun b!1412477 () Bool)

(declare-fun res!949573 () Bool)

(assert (=> b!1412477 (=> (not res!949573) (not e!799353))))

(assert (=> b!1412477 (= res!949573 (validKeyInArray!0 (select (arr!46579 a!2901) j!112)))))

(declare-fun b!1412478 () Bool)

(declare-fun e!799358 () Bool)

(assert (=> b!1412478 (= e!799353 (not e!799358))))

(declare-fun res!949570 () Bool)

(assert (=> b!1412478 (=> res!949570 e!799358)))

(assert (=> b!1412478 (= res!949570 (or (not (is-Intermediate!10912 lt!622355)) (undefined!11724 lt!622355)))))

(assert (=> b!1412478 e!799355))

(declare-fun res!949572 () Bool)

(assert (=> b!1412478 (=> (not res!949572) (not e!799355))))

(assert (=> b!1412478 (= res!949572 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622360 () Unit!47748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47748)

(assert (=> b!1412478 (= lt!622360 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96492 (_ BitVec 32)) SeekEntryResult!10912)

(assert (=> b!1412478 (= lt!622355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622356 (select (arr!46579 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412478 (= lt!622356 (toIndex!0 (select (arr!46579 a!2901) j!112) mask!2840))))

(declare-fun b!1412479 () Bool)

(assert (=> b!1412479 (= e!799358 e!799357)))

(declare-fun res!949574 () Bool)

(assert (=> b!1412479 (=> res!949574 e!799357)))

(assert (=> b!1412479 (= res!949574 (or (= lt!622355 lt!622359) (not (is-Intermediate!10912 lt!622359))))))

(assert (=> b!1412479 (= lt!622359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622358 mask!2840) lt!622358 lt!622354 mask!2840))))

(assert (=> b!1412479 (= lt!622358 (select (store (arr!46579 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412479 (= lt!622354 (array!96493 (store (arr!46579 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47130 a!2901)))))

(assert (= (and start!121636 res!949577) b!1412475))

(assert (= (and b!1412475 res!949571) b!1412470))

(assert (= (and b!1412470 res!949576) b!1412477))

(assert (= (and b!1412477 res!949573) b!1412472))

(assert (= (and b!1412472 res!949575) b!1412473))

(assert (= (and b!1412473 res!949578) b!1412478))

(assert (= (and b!1412478 res!949572) b!1412471))

(assert (= (and b!1412478 (not res!949570)) b!1412479))

(assert (= (and b!1412479 (not res!949574)) b!1412476))

(assert (= (and b!1412476 res!949569) b!1412474))

(declare-fun m!1302599 () Bool)

(assert (=> b!1412474 m!1302599))

(declare-fun m!1302601 () Bool)

(assert (=> b!1412474 m!1302601))

(assert (=> b!1412474 m!1302601))

(declare-fun m!1302603 () Bool)

(assert (=> b!1412474 m!1302603))

(declare-fun m!1302605 () Bool)

(assert (=> b!1412470 m!1302605))

(assert (=> b!1412470 m!1302605))

(declare-fun m!1302607 () Bool)

(assert (=> b!1412470 m!1302607))

(declare-fun m!1302609 () Bool)

(assert (=> b!1412472 m!1302609))

(declare-fun m!1302611 () Bool)

(assert (=> start!121636 m!1302611))

(declare-fun m!1302613 () Bool)

(assert (=> start!121636 m!1302613))

(assert (=> b!1412478 m!1302601))

(declare-fun m!1302615 () Bool)

(assert (=> b!1412478 m!1302615))

(assert (=> b!1412478 m!1302601))

(declare-fun m!1302617 () Bool)

(assert (=> b!1412478 m!1302617))

(assert (=> b!1412478 m!1302601))

(declare-fun m!1302619 () Bool)

(assert (=> b!1412478 m!1302619))

(declare-fun m!1302621 () Bool)

(assert (=> b!1412478 m!1302621))

(declare-fun m!1302623 () Bool)

(assert (=> b!1412479 m!1302623))

(assert (=> b!1412479 m!1302623))

(declare-fun m!1302625 () Bool)

(assert (=> b!1412479 m!1302625))

(declare-fun m!1302627 () Bool)

(assert (=> b!1412479 m!1302627))

(declare-fun m!1302629 () Bool)

(assert (=> b!1412479 m!1302629))

(assert (=> b!1412476 m!1302627))

(declare-fun m!1302631 () Bool)

(assert (=> b!1412476 m!1302631))

(declare-fun m!1302633 () Bool)

(assert (=> b!1412476 m!1302633))

(declare-fun m!1302635 () Bool)

(assert (=> b!1412473 m!1302635))

(assert (=> b!1412477 m!1302601))

(assert (=> b!1412477 m!1302601))

(declare-fun m!1302637 () Bool)

(assert (=> b!1412477 m!1302637))

(assert (=> b!1412471 m!1302601))

(assert (=> b!1412471 m!1302601))

(declare-fun m!1302639 () Bool)

(assert (=> b!1412471 m!1302639))

(push 1)

