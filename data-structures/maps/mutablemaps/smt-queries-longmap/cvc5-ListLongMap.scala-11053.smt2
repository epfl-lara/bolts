; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129196 () Bool)

(assert start!129196)

(declare-fun b!1515712 () Bool)

(declare-fun res!1035689 () Bool)

(declare-fun e!845867 () Bool)

(assert (=> b!1515712 (=> (not res!1035689) (not e!845867))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100965 0))(
  ( (array!100966 (arr!48715 (Array (_ BitVec 32) (_ BitVec 64))) (size!49266 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100965)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515712 (= res!1035689 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49266 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49266 a!2804))))))

(declare-fun b!1515713 () Bool)

(declare-fun res!1035688 () Bool)

(assert (=> b!1515713 (=> (not res!1035688) (not e!845867))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100965 (_ BitVec 32)) Bool)

(assert (=> b!1515713 (= res!1035688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515714 () Bool)

(declare-fun e!845866 () Bool)

(assert (=> b!1515714 (= e!845866 true)))

(declare-datatypes ((SeekEntryResult!12907 0))(
  ( (MissingZero!12907 (index!54022 (_ BitVec 32))) (Found!12907 (index!54023 (_ BitVec 32))) (Intermediate!12907 (undefined!13719 Bool) (index!54024 (_ BitVec 32)) (x!135734 (_ BitVec 32))) (Undefined!12907) (MissingVacant!12907 (index!54025 (_ BitVec 32))) )
))
(declare-fun lt!657070 () SeekEntryResult!12907)

(declare-fun lt!657069 () SeekEntryResult!12907)

(assert (=> b!1515714 (= lt!657070 lt!657069)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((Unit!50638 0))(
  ( (Unit!50639) )
))
(declare-fun lt!657067 () Unit!50638)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50638)

(assert (=> b!1515714 (= lt!657067 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun res!1035696 () Bool)

(assert (=> start!129196 (=> (not res!1035696) (not e!845867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129196 (= res!1035696 (validMask!0 mask!2512))))

(assert (=> start!129196 e!845867))

(assert (=> start!129196 true))

(declare-fun array_inv!37660 (array!100965) Bool)

(assert (=> start!129196 (array_inv!37660 a!2804)))

(declare-fun b!1515715 () Bool)

(declare-fun res!1035698 () Bool)

(declare-fun e!845863 () Bool)

(assert (=> b!1515715 (=> (not res!1035698) (not e!845863))))

(declare-fun lt!657072 () SeekEntryResult!12907)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100965 (_ BitVec 32)) SeekEntryResult!12907)

(assert (=> b!1515715 (= res!1035698 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48715 a!2804) j!70) a!2804 mask!2512) lt!657072))))

(declare-fun b!1515716 () Bool)

(declare-fun e!845861 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100965 (_ BitVec 32)) SeekEntryResult!12907)

(assert (=> b!1515716 (= e!845861 (= (seekEntry!0 (select (arr!48715 a!2804) j!70) a!2804 mask!2512) (Found!12907 j!70)))))

(declare-fun b!1515717 () Bool)

(assert (=> b!1515717 (= e!845867 e!845863)))

(declare-fun res!1035691 () Bool)

(assert (=> b!1515717 (=> (not res!1035691) (not e!845863))))

(declare-fun lt!657071 () SeekEntryResult!12907)

(assert (=> b!1515717 (= res!1035691 (= lt!657071 lt!657072))))

(assert (=> b!1515717 (= lt!657072 (Intermediate!12907 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515717 (= lt!657071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48715 a!2804) j!70) mask!2512) (select (arr!48715 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515718 () Bool)

(declare-fun res!1035693 () Bool)

(assert (=> b!1515718 (=> (not res!1035693) (not e!845867))))

(declare-datatypes ((List!35378 0))(
  ( (Nil!35375) (Cons!35374 (h!36787 (_ BitVec 64)) (t!50079 List!35378)) )
))
(declare-fun arrayNoDuplicates!0 (array!100965 (_ BitVec 32) List!35378) Bool)

(assert (=> b!1515718 (= res!1035693 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35375))))

(declare-fun b!1515719 () Bool)

(declare-fun res!1035692 () Bool)

(assert (=> b!1515719 (=> (not res!1035692) (not e!845867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515719 (= res!1035692 (validKeyInArray!0 (select (arr!48715 a!2804) i!961)))))

(declare-fun b!1515720 () Bool)

(declare-fun e!845862 () Bool)

(declare-fun e!845865 () Bool)

(assert (=> b!1515720 (= e!845862 (not e!845865))))

(declare-fun res!1035690 () Bool)

(assert (=> b!1515720 (=> res!1035690 e!845865)))

(declare-fun lt!657064 () (_ BitVec 64))

(assert (=> b!1515720 (= res!1035690 (or (not (= (select (arr!48715 a!2804) j!70) lt!657064)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48715 a!2804) index!487) (select (arr!48715 a!2804) j!70)) (not (= (select (arr!48715 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515720 e!845861))

(declare-fun res!1035695 () Bool)

(assert (=> b!1515720 (=> (not res!1035695) (not e!845861))))

(assert (=> b!1515720 (= res!1035695 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!657073 () Unit!50638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50638)

(assert (=> b!1515720 (= lt!657073 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515721 () Bool)

(declare-fun res!1035687 () Bool)

(assert (=> b!1515721 (=> (not res!1035687) (not e!845867))))

(assert (=> b!1515721 (= res!1035687 (and (= (size!49266 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49266 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49266 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515722 () Bool)

(assert (=> b!1515722 (= e!845865 e!845866)))

(declare-fun res!1035699 () Bool)

(assert (=> b!1515722 (=> res!1035699 e!845866)))

(assert (=> b!1515722 (= res!1035699 (not (= lt!657069 (Found!12907 j!70))))))

(declare-fun lt!657068 () SeekEntryResult!12907)

(assert (=> b!1515722 (= lt!657068 lt!657070)))

(declare-fun lt!657066 () array!100965)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100965 (_ BitVec 32)) SeekEntryResult!12907)

(assert (=> b!1515722 (= lt!657070 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657064 lt!657066 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100965 (_ BitVec 32)) SeekEntryResult!12907)

(assert (=> b!1515722 (= lt!657068 (seekEntryOrOpen!0 lt!657064 lt!657066 mask!2512))))

(declare-fun lt!657065 () SeekEntryResult!12907)

(assert (=> b!1515722 (= lt!657065 lt!657069)))

(assert (=> b!1515722 (= lt!657069 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48715 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515722 (= lt!657065 (seekEntryOrOpen!0 (select (arr!48715 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515723 () Bool)

(assert (=> b!1515723 (= e!845863 e!845862)))

(declare-fun res!1035697 () Bool)

(assert (=> b!1515723 (=> (not res!1035697) (not e!845862))))

(assert (=> b!1515723 (= res!1035697 (= lt!657071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657064 mask!2512) lt!657064 lt!657066 mask!2512)))))

(assert (=> b!1515723 (= lt!657064 (select (store (arr!48715 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515723 (= lt!657066 (array!100966 (store (arr!48715 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49266 a!2804)))))

(declare-fun b!1515724 () Bool)

(declare-fun res!1035694 () Bool)

(assert (=> b!1515724 (=> (not res!1035694) (not e!845867))))

(assert (=> b!1515724 (= res!1035694 (validKeyInArray!0 (select (arr!48715 a!2804) j!70)))))

(assert (= (and start!129196 res!1035696) b!1515721))

(assert (= (and b!1515721 res!1035687) b!1515719))

(assert (= (and b!1515719 res!1035692) b!1515724))

(assert (= (and b!1515724 res!1035694) b!1515713))

(assert (= (and b!1515713 res!1035688) b!1515718))

(assert (= (and b!1515718 res!1035693) b!1515712))

(assert (= (and b!1515712 res!1035689) b!1515717))

(assert (= (and b!1515717 res!1035691) b!1515715))

(assert (= (and b!1515715 res!1035698) b!1515723))

(assert (= (and b!1515723 res!1035697) b!1515720))

(assert (= (and b!1515720 res!1035695) b!1515716))

(assert (= (and b!1515720 (not res!1035690)) b!1515722))

(assert (= (and b!1515722 (not res!1035699)) b!1515714))

(declare-fun m!1398945 () Bool)

(assert (=> b!1515716 m!1398945))

(assert (=> b!1515716 m!1398945))

(declare-fun m!1398947 () Bool)

(assert (=> b!1515716 m!1398947))

(declare-fun m!1398949 () Bool)

(assert (=> start!129196 m!1398949))

(declare-fun m!1398951 () Bool)

(assert (=> start!129196 m!1398951))

(assert (=> b!1515717 m!1398945))

(assert (=> b!1515717 m!1398945))

(declare-fun m!1398953 () Bool)

(assert (=> b!1515717 m!1398953))

(assert (=> b!1515717 m!1398953))

(assert (=> b!1515717 m!1398945))

(declare-fun m!1398955 () Bool)

(assert (=> b!1515717 m!1398955))

(assert (=> b!1515722 m!1398945))

(declare-fun m!1398957 () Bool)

(assert (=> b!1515722 m!1398957))

(assert (=> b!1515722 m!1398945))

(declare-fun m!1398959 () Bool)

(assert (=> b!1515722 m!1398959))

(declare-fun m!1398961 () Bool)

(assert (=> b!1515722 m!1398961))

(assert (=> b!1515722 m!1398945))

(declare-fun m!1398963 () Bool)

(assert (=> b!1515722 m!1398963))

(declare-fun m!1398965 () Bool)

(assert (=> b!1515713 m!1398965))

(assert (=> b!1515715 m!1398945))

(assert (=> b!1515715 m!1398945))

(declare-fun m!1398967 () Bool)

(assert (=> b!1515715 m!1398967))

(declare-fun m!1398969 () Bool)

(assert (=> b!1515723 m!1398969))

(assert (=> b!1515723 m!1398969))

(declare-fun m!1398971 () Bool)

(assert (=> b!1515723 m!1398971))

(declare-fun m!1398973 () Bool)

(assert (=> b!1515723 m!1398973))

(declare-fun m!1398975 () Bool)

(assert (=> b!1515723 m!1398975))

(assert (=> b!1515724 m!1398945))

(assert (=> b!1515724 m!1398945))

(declare-fun m!1398977 () Bool)

(assert (=> b!1515724 m!1398977))

(declare-fun m!1398979 () Bool)

(assert (=> b!1515719 m!1398979))

(assert (=> b!1515719 m!1398979))

(declare-fun m!1398981 () Bool)

(assert (=> b!1515719 m!1398981))

(declare-fun m!1398983 () Bool)

(assert (=> b!1515718 m!1398983))

(declare-fun m!1398985 () Bool)

(assert (=> b!1515714 m!1398985))

(assert (=> b!1515720 m!1398945))

(declare-fun m!1398987 () Bool)

(assert (=> b!1515720 m!1398987))

(declare-fun m!1398989 () Bool)

(assert (=> b!1515720 m!1398989))

(declare-fun m!1398991 () Bool)

(assert (=> b!1515720 m!1398991))

(push 1)

