; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129188 () Bool)

(assert start!129188)

(declare-fun b!1515556 () Bool)

(declare-fun res!1035533 () Bool)

(declare-fun e!845779 () Bool)

(assert (=> b!1515556 (=> (not res!1035533) (not e!845779))))

(declare-datatypes ((array!100957 0))(
  ( (array!100958 (arr!48711 (Array (_ BitVec 32) (_ BitVec 64))) (size!49262 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100957)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515556 (= res!1035533 (validKeyInArray!0 (select (arr!48711 a!2804) i!961)))))

(declare-fun b!1515557 () Bool)

(declare-fun res!1035538 () Bool)

(declare-fun e!845780 () Bool)

(assert (=> b!1515557 (=> (not res!1035538) (not e!845780))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12903 0))(
  ( (MissingZero!12903 (index!54006 (_ BitVec 32))) (Found!12903 (index!54007 (_ BitVec 32))) (Intermediate!12903 (undefined!13715 Bool) (index!54008 (_ BitVec 32)) (x!135714 (_ BitVec 32))) (Undefined!12903) (MissingVacant!12903 (index!54009 (_ BitVec 32))) )
))
(declare-fun lt!656951 () SeekEntryResult!12903)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100957 (_ BitVec 32)) SeekEntryResult!12903)

(assert (=> b!1515557 (= res!1035538 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48711 a!2804) j!70) a!2804 mask!2512) lt!656951))))

(declare-fun b!1515558 () Bool)

(declare-fun e!845783 () Bool)

(assert (=> b!1515558 (= e!845783 true)))

(declare-fun lt!656949 () SeekEntryResult!12903)

(declare-fun lt!656945 () SeekEntryResult!12903)

(assert (=> b!1515558 (= lt!656949 lt!656945)))

(declare-datatypes ((Unit!50630 0))(
  ( (Unit!50631) )
))
(declare-fun lt!656944 () Unit!50630)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50630)

(assert (=> b!1515558 (= lt!656944 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515559 () Bool)

(declare-fun res!1035536 () Bool)

(assert (=> b!1515559 (=> (not res!1035536) (not e!845779))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515559 (= res!1035536 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49262 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49262 a!2804))))))

(declare-fun b!1515560 () Bool)

(declare-fun res!1035543 () Bool)

(assert (=> b!1515560 (=> (not res!1035543) (not e!845779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100957 (_ BitVec 32)) Bool)

(assert (=> b!1515560 (= res!1035543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515561 () Bool)

(declare-fun res!1035535 () Bool)

(assert (=> b!1515561 (=> (not res!1035535) (not e!845779))))

(assert (=> b!1515561 (= res!1035535 (validKeyInArray!0 (select (arr!48711 a!2804) j!70)))))

(declare-fun b!1515562 () Bool)

(assert (=> b!1515562 (= e!845779 e!845780)))

(declare-fun res!1035539 () Bool)

(assert (=> b!1515562 (=> (not res!1035539) (not e!845780))))

(declare-fun lt!656950 () SeekEntryResult!12903)

(assert (=> b!1515562 (= res!1035539 (= lt!656950 lt!656951))))

(assert (=> b!1515562 (= lt!656951 (Intermediate!12903 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515562 (= lt!656950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48711 a!2804) j!70) mask!2512) (select (arr!48711 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515563 () Bool)

(declare-fun e!845782 () Bool)

(assert (=> b!1515563 (= e!845780 e!845782)))

(declare-fun res!1035534 () Bool)

(assert (=> b!1515563 (=> (not res!1035534) (not e!845782))))

(declare-fun lt!656946 () array!100957)

(declare-fun lt!656952 () (_ BitVec 64))

(assert (=> b!1515563 (= res!1035534 (= lt!656950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656952 mask!2512) lt!656952 lt!656946 mask!2512)))))

(assert (=> b!1515563 (= lt!656952 (select (store (arr!48711 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515563 (= lt!656946 (array!100958 (store (arr!48711 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49262 a!2804)))))

(declare-fun b!1515564 () Bool)

(declare-fun e!845777 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100957 (_ BitVec 32)) SeekEntryResult!12903)

(assert (=> b!1515564 (= e!845777 (= (seekEntry!0 (select (arr!48711 a!2804) j!70) a!2804 mask!2512) (Found!12903 j!70)))))

(declare-fun b!1515565 () Bool)

(declare-fun res!1035541 () Bool)

(assert (=> b!1515565 (=> (not res!1035541) (not e!845779))))

(declare-datatypes ((List!35374 0))(
  ( (Nil!35371) (Cons!35370 (h!36783 (_ BitVec 64)) (t!50075 List!35374)) )
))
(declare-fun arrayNoDuplicates!0 (array!100957 (_ BitVec 32) List!35374) Bool)

(assert (=> b!1515565 (= res!1035541 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35371))))

(declare-fun b!1515566 () Bool)

(declare-fun e!845781 () Bool)

(assert (=> b!1515566 (= e!845782 (not e!845781))))

(declare-fun res!1035537 () Bool)

(assert (=> b!1515566 (=> res!1035537 e!845781)))

(assert (=> b!1515566 (= res!1035537 (or (not (= (select (arr!48711 a!2804) j!70) lt!656952)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48711 a!2804) index!487) (select (arr!48711 a!2804) j!70)) (not (= (select (arr!48711 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515566 e!845777))

(declare-fun res!1035531 () Bool)

(assert (=> b!1515566 (=> (not res!1035531) (not e!845777))))

(assert (=> b!1515566 (= res!1035531 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656947 () Unit!50630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50630)

(assert (=> b!1515566 (= lt!656947 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515567 () Bool)

(assert (=> b!1515567 (= e!845781 e!845783)))

(declare-fun res!1035532 () Bool)

(assert (=> b!1515567 (=> res!1035532 e!845783)))

(assert (=> b!1515567 (= res!1035532 (not (= lt!656945 (Found!12903 j!70))))))

(declare-fun lt!656953 () SeekEntryResult!12903)

(assert (=> b!1515567 (= lt!656953 lt!656949)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100957 (_ BitVec 32)) SeekEntryResult!12903)

(assert (=> b!1515567 (= lt!656949 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656952 lt!656946 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100957 (_ BitVec 32)) SeekEntryResult!12903)

(assert (=> b!1515567 (= lt!656953 (seekEntryOrOpen!0 lt!656952 lt!656946 mask!2512))))

(declare-fun lt!656948 () SeekEntryResult!12903)

(assert (=> b!1515567 (= lt!656948 lt!656945)))

(assert (=> b!1515567 (= lt!656945 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48711 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515567 (= lt!656948 (seekEntryOrOpen!0 (select (arr!48711 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515568 () Bool)

(declare-fun res!1035542 () Bool)

(assert (=> b!1515568 (=> (not res!1035542) (not e!845779))))

(assert (=> b!1515568 (= res!1035542 (and (= (size!49262 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49262 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49262 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1035540 () Bool)

(assert (=> start!129188 (=> (not res!1035540) (not e!845779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129188 (= res!1035540 (validMask!0 mask!2512))))

(assert (=> start!129188 e!845779))

(assert (=> start!129188 true))

(declare-fun array_inv!37656 (array!100957) Bool)

(assert (=> start!129188 (array_inv!37656 a!2804)))

(assert (= (and start!129188 res!1035540) b!1515568))

(assert (= (and b!1515568 res!1035542) b!1515556))

(assert (= (and b!1515556 res!1035533) b!1515561))

(assert (= (and b!1515561 res!1035535) b!1515560))

(assert (= (and b!1515560 res!1035543) b!1515565))

(assert (= (and b!1515565 res!1035541) b!1515559))

(assert (= (and b!1515559 res!1035536) b!1515562))

(assert (= (and b!1515562 res!1035539) b!1515557))

(assert (= (and b!1515557 res!1035538) b!1515563))

(assert (= (and b!1515563 res!1035534) b!1515566))

(assert (= (and b!1515566 res!1035531) b!1515564))

(assert (= (and b!1515566 (not res!1035537)) b!1515567))

(assert (= (and b!1515567 (not res!1035532)) b!1515558))

(declare-fun m!1398753 () Bool)

(assert (=> b!1515558 m!1398753))

(declare-fun m!1398755 () Bool)

(assert (=> b!1515562 m!1398755))

(assert (=> b!1515562 m!1398755))

(declare-fun m!1398757 () Bool)

(assert (=> b!1515562 m!1398757))

(assert (=> b!1515562 m!1398757))

(assert (=> b!1515562 m!1398755))

(declare-fun m!1398759 () Bool)

(assert (=> b!1515562 m!1398759))

(assert (=> b!1515567 m!1398755))

(declare-fun m!1398761 () Bool)

(assert (=> b!1515567 m!1398761))

(assert (=> b!1515567 m!1398755))

(declare-fun m!1398763 () Bool)

(assert (=> b!1515567 m!1398763))

(declare-fun m!1398765 () Bool)

(assert (=> b!1515567 m!1398765))

(assert (=> b!1515567 m!1398755))

(declare-fun m!1398767 () Bool)

(assert (=> b!1515567 m!1398767))

(assert (=> b!1515564 m!1398755))

(assert (=> b!1515564 m!1398755))

(declare-fun m!1398769 () Bool)

(assert (=> b!1515564 m!1398769))

(assert (=> b!1515557 m!1398755))

(assert (=> b!1515557 m!1398755))

(declare-fun m!1398771 () Bool)

(assert (=> b!1515557 m!1398771))

(assert (=> b!1515561 m!1398755))

(assert (=> b!1515561 m!1398755))

(declare-fun m!1398773 () Bool)

(assert (=> b!1515561 m!1398773))

(declare-fun m!1398775 () Bool)

(assert (=> b!1515565 m!1398775))

(declare-fun m!1398777 () Bool)

(assert (=> b!1515560 m!1398777))

(declare-fun m!1398779 () Bool)

(assert (=> b!1515556 m!1398779))

(assert (=> b!1515556 m!1398779))

(declare-fun m!1398781 () Bool)

(assert (=> b!1515556 m!1398781))

(declare-fun m!1398783 () Bool)

(assert (=> start!129188 m!1398783))

(declare-fun m!1398785 () Bool)

(assert (=> start!129188 m!1398785))

(declare-fun m!1398787 () Bool)

(assert (=> b!1515563 m!1398787))

(assert (=> b!1515563 m!1398787))

(declare-fun m!1398789 () Bool)

(assert (=> b!1515563 m!1398789))

(declare-fun m!1398791 () Bool)

(assert (=> b!1515563 m!1398791))

(declare-fun m!1398793 () Bool)

(assert (=> b!1515563 m!1398793))

(assert (=> b!1515566 m!1398755))

(declare-fun m!1398795 () Bool)

(assert (=> b!1515566 m!1398795))

(declare-fun m!1398797 () Bool)

(assert (=> b!1515566 m!1398797))

(declare-fun m!1398799 () Bool)

(assert (=> b!1515566 m!1398799))

(push 1)

