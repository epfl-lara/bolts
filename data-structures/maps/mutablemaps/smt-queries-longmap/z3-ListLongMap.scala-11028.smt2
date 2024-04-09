; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129048 () Bool)

(assert start!129048)

(declare-fun b!1512673 () Bool)

(declare-fun e!844325 () Bool)

(declare-fun e!844324 () Bool)

(assert (=> b!1512673 (= e!844325 e!844324)))

(declare-fun res!1032659 () Bool)

(assert (=> b!1512673 (=> (not res!1032659) (not e!844324))))

(declare-datatypes ((SeekEntryResult!12833 0))(
  ( (MissingZero!12833 (index!53726 (_ BitVec 32))) (Found!12833 (index!53727 (_ BitVec 32))) (Intermediate!12833 (undefined!13645 Bool) (index!53728 (_ BitVec 32)) (x!135460 (_ BitVec 32))) (Undefined!12833) (MissingVacant!12833 (index!53729 (_ BitVec 32))) )
))
(declare-fun lt!655701 () SeekEntryResult!12833)

(declare-fun lt!655700 () SeekEntryResult!12833)

(assert (=> b!1512673 (= res!1032659 (= lt!655701 lt!655700))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512673 (= lt!655700 (Intermediate!12833 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100817 0))(
  ( (array!100818 (arr!48641 (Array (_ BitVec 32) (_ BitVec 64))) (size!49192 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100817)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100817 (_ BitVec 32)) SeekEntryResult!12833)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512673 (= lt!655701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48641 a!2804) j!70) mask!2512) (select (arr!48641 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512674 () Bool)

(declare-fun res!1032657 () Bool)

(assert (=> b!1512674 (=> (not res!1032657) (not e!844325))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512674 (= res!1032657 (validKeyInArray!0 (select (arr!48641 a!2804) i!961)))))

(declare-fun b!1512675 () Bool)

(declare-fun res!1032648 () Bool)

(assert (=> b!1512675 (=> (not res!1032648) (not e!844324))))

(assert (=> b!1512675 (= res!1032648 (= lt!655701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48641 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48641 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100818 (store (arr!48641 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49192 a!2804)) mask!2512)))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun b!1512676 () Bool)

(declare-fun e!844327 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100817 (_ BitVec 32)) SeekEntryResult!12833)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100817 (_ BitVec 32)) SeekEntryResult!12833)

(assert (=> b!1512676 (= e!844327 (= (seekEntryOrOpen!0 (select (arr!48641 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48641 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512677 () Bool)

(declare-fun res!1032656 () Bool)

(assert (=> b!1512677 (=> (not res!1032656) (not e!844325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100817 (_ BitVec 32)) Bool)

(assert (=> b!1512677 (= res!1032656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512678 () Bool)

(assert (=> b!1512678 (= e!844324 (not true))))

(declare-fun e!844328 () Bool)

(assert (=> b!1512678 e!844328))

(declare-fun res!1032652 () Bool)

(assert (=> b!1512678 (=> (not res!1032652) (not e!844328))))

(assert (=> b!1512678 (= res!1032652 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50490 0))(
  ( (Unit!50491) )
))
(declare-fun lt!655702 () Unit!50490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50490)

(assert (=> b!1512678 (= lt!655702 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512679 () Bool)

(assert (=> b!1512679 (= e!844328 e!844327)))

(declare-fun res!1032658 () Bool)

(assert (=> b!1512679 (=> res!1032658 e!844327)))

(assert (=> b!1512679 (= res!1032658 (or (not (= (select (arr!48641 a!2804) j!70) (select (store (arr!48641 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48641 a!2804) index!487) (select (arr!48641 a!2804) j!70)) (not (= (select (arr!48641 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512681 () Bool)

(declare-fun res!1032653 () Bool)

(assert (=> b!1512681 (=> (not res!1032653) (not e!844324))))

(assert (=> b!1512681 (= res!1032653 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48641 a!2804) j!70) a!2804 mask!2512) lt!655700))))

(declare-fun b!1512682 () Bool)

(declare-fun res!1032649 () Bool)

(assert (=> b!1512682 (=> (not res!1032649) (not e!844328))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100817 (_ BitVec 32)) SeekEntryResult!12833)

(assert (=> b!1512682 (= res!1032649 (= (seekEntry!0 (select (arr!48641 a!2804) j!70) a!2804 mask!2512) (Found!12833 j!70)))))

(declare-fun b!1512683 () Bool)

(declare-fun res!1032651 () Bool)

(assert (=> b!1512683 (=> (not res!1032651) (not e!844325))))

(declare-datatypes ((List!35304 0))(
  ( (Nil!35301) (Cons!35300 (h!36713 (_ BitVec 64)) (t!50005 List!35304)) )
))
(declare-fun arrayNoDuplicates!0 (array!100817 (_ BitVec 32) List!35304) Bool)

(assert (=> b!1512683 (= res!1032651 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35301))))

(declare-fun b!1512684 () Bool)

(declare-fun res!1032660 () Bool)

(assert (=> b!1512684 (=> (not res!1032660) (not e!844325))))

(assert (=> b!1512684 (= res!1032660 (validKeyInArray!0 (select (arr!48641 a!2804) j!70)))))

(declare-fun b!1512685 () Bool)

(declare-fun res!1032654 () Bool)

(assert (=> b!1512685 (=> (not res!1032654) (not e!844325))))

(assert (=> b!1512685 (= res!1032654 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49192 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49192 a!2804))))))

(declare-fun res!1032655 () Bool)

(assert (=> start!129048 (=> (not res!1032655) (not e!844325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129048 (= res!1032655 (validMask!0 mask!2512))))

(assert (=> start!129048 e!844325))

(assert (=> start!129048 true))

(declare-fun array_inv!37586 (array!100817) Bool)

(assert (=> start!129048 (array_inv!37586 a!2804)))

(declare-fun b!1512680 () Bool)

(declare-fun res!1032650 () Bool)

(assert (=> b!1512680 (=> (not res!1032650) (not e!844325))))

(assert (=> b!1512680 (= res!1032650 (and (= (size!49192 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49192 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49192 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129048 res!1032655) b!1512680))

(assert (= (and b!1512680 res!1032650) b!1512674))

(assert (= (and b!1512674 res!1032657) b!1512684))

(assert (= (and b!1512684 res!1032660) b!1512677))

(assert (= (and b!1512677 res!1032656) b!1512683))

(assert (= (and b!1512683 res!1032651) b!1512685))

(assert (= (and b!1512685 res!1032654) b!1512673))

(assert (= (and b!1512673 res!1032659) b!1512681))

(assert (= (and b!1512681 res!1032653) b!1512675))

(assert (= (and b!1512675 res!1032648) b!1512678))

(assert (= (and b!1512678 res!1032652) b!1512682))

(assert (= (and b!1512682 res!1032649) b!1512679))

(assert (= (and b!1512679 (not res!1032658)) b!1512676))

(declare-fun m!1395519 () Bool)

(assert (=> b!1512675 m!1395519))

(declare-fun m!1395521 () Bool)

(assert (=> b!1512675 m!1395521))

(assert (=> b!1512675 m!1395521))

(declare-fun m!1395523 () Bool)

(assert (=> b!1512675 m!1395523))

(assert (=> b!1512675 m!1395523))

(assert (=> b!1512675 m!1395521))

(declare-fun m!1395525 () Bool)

(assert (=> b!1512675 m!1395525))

(declare-fun m!1395527 () Bool)

(assert (=> b!1512682 m!1395527))

(assert (=> b!1512682 m!1395527))

(declare-fun m!1395529 () Bool)

(assert (=> b!1512682 m!1395529))

(assert (=> b!1512684 m!1395527))

(assert (=> b!1512684 m!1395527))

(declare-fun m!1395531 () Bool)

(assert (=> b!1512684 m!1395531))

(assert (=> b!1512673 m!1395527))

(assert (=> b!1512673 m!1395527))

(declare-fun m!1395533 () Bool)

(assert (=> b!1512673 m!1395533))

(assert (=> b!1512673 m!1395533))

(assert (=> b!1512673 m!1395527))

(declare-fun m!1395535 () Bool)

(assert (=> b!1512673 m!1395535))

(declare-fun m!1395537 () Bool)

(assert (=> start!129048 m!1395537))

(declare-fun m!1395539 () Bool)

(assert (=> start!129048 m!1395539))

(assert (=> b!1512679 m!1395527))

(assert (=> b!1512679 m!1395519))

(assert (=> b!1512679 m!1395521))

(declare-fun m!1395541 () Bool)

(assert (=> b!1512679 m!1395541))

(declare-fun m!1395543 () Bool)

(assert (=> b!1512678 m!1395543))

(declare-fun m!1395545 () Bool)

(assert (=> b!1512678 m!1395545))

(assert (=> b!1512676 m!1395527))

(assert (=> b!1512676 m!1395527))

(declare-fun m!1395547 () Bool)

(assert (=> b!1512676 m!1395547))

(assert (=> b!1512676 m!1395527))

(declare-fun m!1395549 () Bool)

(assert (=> b!1512676 m!1395549))

(declare-fun m!1395551 () Bool)

(assert (=> b!1512677 m!1395551))

(assert (=> b!1512681 m!1395527))

(assert (=> b!1512681 m!1395527))

(declare-fun m!1395553 () Bool)

(assert (=> b!1512681 m!1395553))

(declare-fun m!1395555 () Bool)

(assert (=> b!1512683 m!1395555))

(declare-fun m!1395557 () Bool)

(assert (=> b!1512674 m!1395557))

(assert (=> b!1512674 m!1395557))

(declare-fun m!1395559 () Bool)

(assert (=> b!1512674 m!1395559))

(check-sat (not b!1512678) (not start!129048) (not b!1512677) (not b!1512682) (not b!1512684) (not b!1512675) (not b!1512673) (not b!1512674) (not b!1512683) (not b!1512681) (not b!1512676))
(check-sat)
