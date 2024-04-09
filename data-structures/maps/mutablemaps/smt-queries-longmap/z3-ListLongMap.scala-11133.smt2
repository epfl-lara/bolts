; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130128 () Bool)

(assert start!130128)

(declare-fun b!1526775 () Bool)

(declare-fun res!1044950 () Bool)

(declare-fun e!851021 () Bool)

(assert (=> b!1526775 (=> (not res!1044950) (not e!851021))))

(declare-datatypes ((array!101468 0))(
  ( (array!101469 (arr!48956 (Array (_ BitVec 32) (_ BitVec 64))) (size!49507 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101468)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526775 (= res!1044950 (validKeyInArray!0 (select (arr!48956 a!2804) i!961)))))

(declare-fun b!1526776 () Bool)

(declare-fun res!1044953 () Bool)

(assert (=> b!1526776 (=> (not res!1044953) (not e!851021))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1526776 (= res!1044953 (validKeyInArray!0 (select (arr!48956 a!2804) j!70)))))

(declare-fun b!1526777 () Bool)

(declare-fun res!1044952 () Bool)

(assert (=> b!1526777 (=> (not res!1044952) (not e!851021))))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1526777 (= res!1044952 (and (= (size!49507 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49507 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49507 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526778 () Bool)

(declare-fun e!851018 () Bool)

(declare-fun e!851016 () Bool)

(assert (=> b!1526778 (= e!851018 e!851016)))

(declare-fun res!1044955 () Bool)

(assert (=> b!1526778 (=> (not res!1044955) (not e!851016))))

(declare-datatypes ((SeekEntryResult!13142 0))(
  ( (MissingZero!13142 (index!54962 (_ BitVec 32))) (Found!13142 (index!54963 (_ BitVec 32))) (Intermediate!13142 (undefined!13954 Bool) (index!54964 (_ BitVec 32)) (x!136663 (_ BitVec 32))) (Undefined!13142) (MissingVacant!13142 (index!54965 (_ BitVec 32))) )
))
(declare-fun lt!661161 () SeekEntryResult!13142)

(declare-fun lt!661163 () array!101468)

(declare-fun lt!661164 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101468 (_ BitVec 32)) SeekEntryResult!13142)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526778 (= res!1044955 (= lt!661161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661164 mask!2512) lt!661164 lt!661163 mask!2512)))))

(assert (=> b!1526778 (= lt!661164 (select (store (arr!48956 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526778 (= lt!661163 (array!101469 (store (arr!48956 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49507 a!2804)))))

(declare-fun b!1526779 () Bool)

(declare-fun res!1044957 () Bool)

(assert (=> b!1526779 (=> (not res!1044957) (not e!851021))))

(declare-datatypes ((List!35619 0))(
  ( (Nil!35616) (Cons!35615 (h!37049 (_ BitVec 64)) (t!50320 List!35619)) )
))
(declare-fun arrayNoDuplicates!0 (array!101468 (_ BitVec 32) List!35619) Bool)

(assert (=> b!1526779 (= res!1044957 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35616))))

(declare-fun b!1526780 () Bool)

(declare-fun res!1044954 () Bool)

(assert (=> b!1526780 (=> (not res!1044954) (not e!851021))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526780 (= res!1044954 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49507 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49507 a!2804))))))

(declare-fun b!1526781 () Bool)

(declare-fun res!1044949 () Bool)

(assert (=> b!1526781 (=> (not res!1044949) (not e!851018))))

(declare-fun lt!661165 () SeekEntryResult!13142)

(assert (=> b!1526781 (= res!1044949 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48956 a!2804) j!70) a!2804 mask!2512) lt!661165))))

(declare-fun res!1044951 () Bool)

(assert (=> start!130128 (=> (not res!1044951) (not e!851021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130128 (= res!1044951 (validMask!0 mask!2512))))

(assert (=> start!130128 e!851021))

(assert (=> start!130128 true))

(declare-fun array_inv!37901 (array!101468) Bool)

(assert (=> start!130128 (array_inv!37901 a!2804)))

(declare-fun e!851020 () Bool)

(declare-fun b!1526782 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101468 (_ BitVec 32)) SeekEntryResult!13142)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101468 (_ BitVec 32)) SeekEntryResult!13142)

(assert (=> b!1526782 (= e!851020 (= (seekEntryOrOpen!0 lt!661164 lt!661163 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661164 lt!661163 mask!2512)))))

(declare-fun b!1526783 () Bool)

(declare-fun res!1044958 () Bool)

(assert (=> b!1526783 (=> (not res!1044958) (not e!851021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101468 (_ BitVec 32)) Bool)

(assert (=> b!1526783 (= res!1044958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526784 () Bool)

(assert (=> b!1526784 (= e!851021 e!851018)))

(declare-fun res!1044959 () Bool)

(assert (=> b!1526784 (=> (not res!1044959) (not e!851018))))

(assert (=> b!1526784 (= res!1044959 (= lt!661161 lt!661165))))

(assert (=> b!1526784 (= lt!661165 (Intermediate!13142 false resIndex!21 resX!21))))

(assert (=> b!1526784 (= lt!661161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48956 a!2804) j!70) mask!2512) (select (arr!48956 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526785 () Bool)

(declare-fun e!851015 () Bool)

(declare-fun e!851019 () Bool)

(assert (=> b!1526785 (= e!851015 e!851019)))

(declare-fun res!1044960 () Bool)

(assert (=> b!1526785 (=> res!1044960 e!851019)))

(assert (=> b!1526785 (= res!1044960 (or (not (= (select (arr!48956 a!2804) j!70) lt!661164)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48956 a!2804) index!487) (select (arr!48956 a!2804) j!70)) (not (= (select (arr!48956 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526786 () Bool)

(assert (=> b!1526786 (= e!851016 (not true))))

(assert (=> b!1526786 e!851015))

(declare-fun res!1044956 () Bool)

(assert (=> b!1526786 (=> (not res!1044956) (not e!851015))))

(assert (=> b!1526786 (= res!1044956 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51024 0))(
  ( (Unit!51025) )
))
(declare-fun lt!661162 () Unit!51024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51024)

(assert (=> b!1526786 (= lt!661162 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526787 () Bool)

(assert (=> b!1526787 (= e!851019 e!851020)))

(declare-fun res!1044948 () Bool)

(assert (=> b!1526787 (=> (not res!1044948) (not e!851020))))

(assert (=> b!1526787 (= res!1044948 (= (seekEntryOrOpen!0 (select (arr!48956 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48956 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526788 () Bool)

(declare-fun res!1044947 () Bool)

(assert (=> b!1526788 (=> (not res!1044947) (not e!851015))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101468 (_ BitVec 32)) SeekEntryResult!13142)

(assert (=> b!1526788 (= res!1044947 (= (seekEntry!0 (select (arr!48956 a!2804) j!70) a!2804 mask!2512) (Found!13142 j!70)))))

(assert (= (and start!130128 res!1044951) b!1526777))

(assert (= (and b!1526777 res!1044952) b!1526775))

(assert (= (and b!1526775 res!1044950) b!1526776))

(assert (= (and b!1526776 res!1044953) b!1526783))

(assert (= (and b!1526783 res!1044958) b!1526779))

(assert (= (and b!1526779 res!1044957) b!1526780))

(assert (= (and b!1526780 res!1044954) b!1526784))

(assert (= (and b!1526784 res!1044959) b!1526781))

(assert (= (and b!1526781 res!1044949) b!1526778))

(assert (= (and b!1526778 res!1044955) b!1526786))

(assert (= (and b!1526786 res!1044956) b!1526788))

(assert (= (and b!1526788 res!1044947) b!1526785))

(assert (= (and b!1526785 (not res!1044960)) b!1526787))

(assert (= (and b!1526787 res!1044948) b!1526782))

(declare-fun m!1409671 () Bool)

(assert (=> b!1526787 m!1409671))

(assert (=> b!1526787 m!1409671))

(declare-fun m!1409673 () Bool)

(assert (=> b!1526787 m!1409673))

(assert (=> b!1526787 m!1409671))

(declare-fun m!1409675 () Bool)

(assert (=> b!1526787 m!1409675))

(declare-fun m!1409677 () Bool)

(assert (=> b!1526779 m!1409677))

(declare-fun m!1409679 () Bool)

(assert (=> b!1526778 m!1409679))

(assert (=> b!1526778 m!1409679))

(declare-fun m!1409681 () Bool)

(assert (=> b!1526778 m!1409681))

(declare-fun m!1409683 () Bool)

(assert (=> b!1526778 m!1409683))

(declare-fun m!1409685 () Bool)

(assert (=> b!1526778 m!1409685))

(assert (=> b!1526784 m!1409671))

(assert (=> b!1526784 m!1409671))

(declare-fun m!1409687 () Bool)

(assert (=> b!1526784 m!1409687))

(assert (=> b!1526784 m!1409687))

(assert (=> b!1526784 m!1409671))

(declare-fun m!1409689 () Bool)

(assert (=> b!1526784 m!1409689))

(assert (=> b!1526776 m!1409671))

(assert (=> b!1526776 m!1409671))

(declare-fun m!1409691 () Bool)

(assert (=> b!1526776 m!1409691))

(declare-fun m!1409693 () Bool)

(assert (=> b!1526782 m!1409693))

(declare-fun m!1409695 () Bool)

(assert (=> b!1526782 m!1409695))

(declare-fun m!1409697 () Bool)

(assert (=> start!130128 m!1409697))

(declare-fun m!1409699 () Bool)

(assert (=> start!130128 m!1409699))

(assert (=> b!1526785 m!1409671))

(declare-fun m!1409701 () Bool)

(assert (=> b!1526785 m!1409701))

(declare-fun m!1409703 () Bool)

(assert (=> b!1526786 m!1409703))

(declare-fun m!1409705 () Bool)

(assert (=> b!1526786 m!1409705))

(declare-fun m!1409707 () Bool)

(assert (=> b!1526775 m!1409707))

(assert (=> b!1526775 m!1409707))

(declare-fun m!1409709 () Bool)

(assert (=> b!1526775 m!1409709))

(assert (=> b!1526788 m!1409671))

(assert (=> b!1526788 m!1409671))

(declare-fun m!1409711 () Bool)

(assert (=> b!1526788 m!1409711))

(assert (=> b!1526781 m!1409671))

(assert (=> b!1526781 m!1409671))

(declare-fun m!1409713 () Bool)

(assert (=> b!1526781 m!1409713))

(declare-fun m!1409715 () Bool)

(assert (=> b!1526783 m!1409715))

(check-sat (not b!1526779) (not start!130128) (not b!1526786) (not b!1526778) (not b!1526782) (not b!1526783) (not b!1526784) (not b!1526775) (not b!1526776) (not b!1526781) (not b!1526787) (not b!1526788))
(check-sat)
