; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129194 () Bool)

(assert start!129194)

(declare-fun b!1515673 () Bool)

(declare-fun e!845842 () Bool)

(declare-fun e!845845 () Bool)

(assert (=> b!1515673 (= e!845842 e!845845)))

(declare-fun res!1035658 () Bool)

(assert (=> b!1515673 (=> (not res!1035658) (not e!845845))))

(declare-datatypes ((SeekEntryResult!12906 0))(
  ( (MissingZero!12906 (index!54018 (_ BitVec 32))) (Found!12906 (index!54019 (_ BitVec 32))) (Intermediate!12906 (undefined!13718 Bool) (index!54020 (_ BitVec 32)) (x!135725 (_ BitVec 32))) (Undefined!12906) (MissingVacant!12906 (index!54021 (_ BitVec 32))) )
))
(declare-fun lt!657035 () SeekEntryResult!12906)

(declare-fun lt!657041 () SeekEntryResult!12906)

(assert (=> b!1515673 (= res!1035658 (= lt!657035 lt!657041))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515673 (= lt!657041 (Intermediate!12906 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100963 0))(
  ( (array!100964 (arr!48714 (Array (_ BitVec 32) (_ BitVec 64))) (size!49265 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100963)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100963 (_ BitVec 32)) SeekEntryResult!12906)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515673 (= lt!657035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48714 a!2804) j!70) mask!2512) (select (arr!48714 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!845846 () Bool)

(declare-fun b!1515674 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100963 (_ BitVec 32)) SeekEntryResult!12906)

(assert (=> b!1515674 (= e!845846 (= (seekEntry!0 (select (arr!48714 a!2804) j!70) a!2804 mask!2512) (Found!12906 j!70)))))

(declare-fun b!1515675 () Bool)

(declare-fun e!845840 () Bool)

(declare-fun e!845843 () Bool)

(assert (=> b!1515675 (= e!845840 (not e!845843))))

(declare-fun res!1035651 () Bool)

(assert (=> b!1515675 (=> res!1035651 e!845843)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657037 () (_ BitVec 64))

(assert (=> b!1515675 (= res!1035651 (or (not (= (select (arr!48714 a!2804) j!70) lt!657037)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48714 a!2804) index!487) (select (arr!48714 a!2804) j!70)) (not (= (select (arr!48714 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515675 e!845846))

(declare-fun res!1035654 () Bool)

(assert (=> b!1515675 (=> (not res!1035654) (not e!845846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100963 (_ BitVec 32)) Bool)

(assert (=> b!1515675 (= res!1035654 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50636 0))(
  ( (Unit!50637) )
))
(declare-fun lt!657039 () Unit!50636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50636)

(assert (=> b!1515675 (= lt!657039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515676 () Bool)

(declare-fun res!1035660 () Bool)

(assert (=> b!1515676 (=> (not res!1035660) (not e!845842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515676 (= res!1035660 (validKeyInArray!0 (select (arr!48714 a!2804) j!70)))))

(declare-fun b!1515677 () Bool)

(declare-fun res!1035650 () Bool)

(assert (=> b!1515677 (=> (not res!1035650) (not e!845842))))

(assert (=> b!1515677 (= res!1035650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515678 () Bool)

(declare-fun res!1035659 () Bool)

(assert (=> b!1515678 (=> (not res!1035659) (not e!845842))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515678 (= res!1035659 (validKeyInArray!0 (select (arr!48714 a!2804) i!961)))))

(declare-fun b!1515679 () Bool)

(assert (=> b!1515679 (= e!845845 e!845840)))

(declare-fun res!1035653 () Bool)

(assert (=> b!1515679 (=> (not res!1035653) (not e!845840))))

(declare-fun lt!657043 () array!100963)

(assert (=> b!1515679 (= res!1035653 (= lt!657035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657037 mask!2512) lt!657037 lt!657043 mask!2512)))))

(assert (=> b!1515679 (= lt!657037 (select (store (arr!48714 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515679 (= lt!657043 (array!100964 (store (arr!48714 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49265 a!2804)))))

(declare-fun b!1515680 () Bool)

(declare-fun e!845844 () Bool)

(assert (=> b!1515680 (= e!845843 e!845844)))

(declare-fun res!1035648 () Bool)

(assert (=> b!1515680 (=> res!1035648 e!845844)))

(declare-fun lt!657034 () SeekEntryResult!12906)

(assert (=> b!1515680 (= res!1035648 (not (= lt!657034 (Found!12906 j!70))))))

(declare-fun lt!657040 () SeekEntryResult!12906)

(declare-fun lt!657042 () SeekEntryResult!12906)

(assert (=> b!1515680 (= lt!657040 lt!657042)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100963 (_ BitVec 32)) SeekEntryResult!12906)

(assert (=> b!1515680 (= lt!657042 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657037 lt!657043 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100963 (_ BitVec 32)) SeekEntryResult!12906)

(assert (=> b!1515680 (= lt!657040 (seekEntryOrOpen!0 lt!657037 lt!657043 mask!2512))))

(declare-fun lt!657036 () SeekEntryResult!12906)

(assert (=> b!1515680 (= lt!657036 lt!657034)))

(assert (=> b!1515680 (= lt!657034 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48714 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515680 (= lt!657036 (seekEntryOrOpen!0 (select (arr!48714 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515681 () Bool)

(declare-fun res!1035657 () Bool)

(assert (=> b!1515681 (=> (not res!1035657) (not e!845842))))

(declare-datatypes ((List!35377 0))(
  ( (Nil!35374) (Cons!35373 (h!36786 (_ BitVec 64)) (t!50078 List!35377)) )
))
(declare-fun arrayNoDuplicates!0 (array!100963 (_ BitVec 32) List!35377) Bool)

(assert (=> b!1515681 (= res!1035657 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35374))))

(declare-fun b!1515683 () Bool)

(declare-fun res!1035652 () Bool)

(assert (=> b!1515683 (=> (not res!1035652) (not e!845842))))

(assert (=> b!1515683 (= res!1035652 (and (= (size!49265 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49265 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49265 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1035656 () Bool)

(assert (=> start!129194 (=> (not res!1035656) (not e!845842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129194 (= res!1035656 (validMask!0 mask!2512))))

(assert (=> start!129194 e!845842))

(assert (=> start!129194 true))

(declare-fun array_inv!37659 (array!100963) Bool)

(assert (=> start!129194 (array_inv!37659 a!2804)))

(declare-fun b!1515682 () Bool)

(assert (=> b!1515682 (= e!845844 (bvsge mask!2512 #b00000000000000000000000000000000))))

(assert (=> b!1515682 (= lt!657042 lt!657034)))

(declare-fun lt!657038 () Unit!50636)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50636)

(assert (=> b!1515682 (= lt!657038 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515684 () Bool)

(declare-fun res!1035655 () Bool)

(assert (=> b!1515684 (=> (not res!1035655) (not e!845845))))

(assert (=> b!1515684 (= res!1035655 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48714 a!2804) j!70) a!2804 mask!2512) lt!657041))))

(declare-fun b!1515685 () Bool)

(declare-fun res!1035649 () Bool)

(assert (=> b!1515685 (=> (not res!1035649) (not e!845842))))

(assert (=> b!1515685 (= res!1035649 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49265 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49265 a!2804))))))

(assert (= (and start!129194 res!1035656) b!1515683))

(assert (= (and b!1515683 res!1035652) b!1515678))

(assert (= (and b!1515678 res!1035659) b!1515676))

(assert (= (and b!1515676 res!1035660) b!1515677))

(assert (= (and b!1515677 res!1035650) b!1515681))

(assert (= (and b!1515681 res!1035657) b!1515685))

(assert (= (and b!1515685 res!1035649) b!1515673))

(assert (= (and b!1515673 res!1035658) b!1515684))

(assert (= (and b!1515684 res!1035655) b!1515679))

(assert (= (and b!1515679 res!1035653) b!1515675))

(assert (= (and b!1515675 res!1035654) b!1515674))

(assert (= (and b!1515675 (not res!1035651)) b!1515680))

(assert (= (and b!1515680 (not res!1035648)) b!1515682))

(declare-fun m!1398897 () Bool)

(assert (=> b!1515676 m!1398897))

(assert (=> b!1515676 m!1398897))

(declare-fun m!1398899 () Bool)

(assert (=> b!1515676 m!1398899))

(assert (=> b!1515675 m!1398897))

(declare-fun m!1398901 () Bool)

(assert (=> b!1515675 m!1398901))

(declare-fun m!1398903 () Bool)

(assert (=> b!1515675 m!1398903))

(declare-fun m!1398905 () Bool)

(assert (=> b!1515675 m!1398905))

(assert (=> b!1515680 m!1398897))

(declare-fun m!1398907 () Bool)

(assert (=> b!1515680 m!1398907))

(assert (=> b!1515680 m!1398897))

(declare-fun m!1398909 () Bool)

(assert (=> b!1515680 m!1398909))

(declare-fun m!1398911 () Bool)

(assert (=> b!1515680 m!1398911))

(assert (=> b!1515680 m!1398897))

(declare-fun m!1398913 () Bool)

(assert (=> b!1515680 m!1398913))

(declare-fun m!1398915 () Bool)

(assert (=> b!1515678 m!1398915))

(assert (=> b!1515678 m!1398915))

(declare-fun m!1398917 () Bool)

(assert (=> b!1515678 m!1398917))

(declare-fun m!1398919 () Bool)

(assert (=> b!1515679 m!1398919))

(assert (=> b!1515679 m!1398919))

(declare-fun m!1398921 () Bool)

(assert (=> b!1515679 m!1398921))

(declare-fun m!1398923 () Bool)

(assert (=> b!1515679 m!1398923))

(declare-fun m!1398925 () Bool)

(assert (=> b!1515679 m!1398925))

(declare-fun m!1398927 () Bool)

(assert (=> b!1515681 m!1398927))

(declare-fun m!1398929 () Bool)

(assert (=> start!129194 m!1398929))

(declare-fun m!1398931 () Bool)

(assert (=> start!129194 m!1398931))

(declare-fun m!1398933 () Bool)

(assert (=> b!1515682 m!1398933))

(assert (=> b!1515674 m!1398897))

(assert (=> b!1515674 m!1398897))

(declare-fun m!1398935 () Bool)

(assert (=> b!1515674 m!1398935))

(declare-fun m!1398937 () Bool)

(assert (=> b!1515677 m!1398937))

(assert (=> b!1515684 m!1398897))

(assert (=> b!1515684 m!1398897))

(declare-fun m!1398939 () Bool)

(assert (=> b!1515684 m!1398939))

(assert (=> b!1515673 m!1398897))

(assert (=> b!1515673 m!1398897))

(declare-fun m!1398941 () Bool)

(assert (=> b!1515673 m!1398941))

(assert (=> b!1515673 m!1398941))

(assert (=> b!1515673 m!1398897))

(declare-fun m!1398943 () Bool)

(assert (=> b!1515673 m!1398943))

(push 1)

