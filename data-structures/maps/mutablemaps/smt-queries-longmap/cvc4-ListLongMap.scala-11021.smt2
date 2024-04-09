; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129008 () Bool)

(assert start!129008)

(declare-fun b!1511884 () Bool)

(declare-fun res!1031864 () Bool)

(declare-fun e!844019 () Bool)

(assert (=> b!1511884 (=> (not res!1031864) (not e!844019))))

(declare-datatypes ((array!100777 0))(
  ( (array!100778 (arr!48621 (Array (_ BitVec 32) (_ BitVec 64))) (size!49172 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100777)

(declare-datatypes ((List!35284 0))(
  ( (Nil!35281) (Cons!35280 (h!36693 (_ BitVec 64)) (t!49985 List!35284)) )
))
(declare-fun arrayNoDuplicates!0 (array!100777 (_ BitVec 32) List!35284) Bool)

(assert (=> b!1511884 (= res!1031864 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35281))))

(declare-fun b!1511885 () Bool)

(declare-fun res!1031870 () Bool)

(assert (=> b!1511885 (=> (not res!1031870) (not e!844019))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100777 (_ BitVec 32)) Bool)

(assert (=> b!1511885 (= res!1031870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511886 () Bool)

(declare-fun res!1031863 () Bool)

(assert (=> b!1511886 (=> (not res!1031863) (not e!844019))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511886 (= res!1031863 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49172 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49172 a!2804))))))

(declare-fun b!1511887 () Bool)

(declare-fun res!1031861 () Bool)

(assert (=> b!1511887 (=> (not res!1031861) (not e!844019))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511887 (= res!1031861 (validKeyInArray!0 (select (arr!48621 a!2804) j!70)))))

(declare-fun b!1511888 () Bool)

(declare-fun res!1031865 () Bool)

(declare-fun e!844017 () Bool)

(assert (=> b!1511888 (=> (not res!1031865) (not e!844017))))

(declare-datatypes ((SeekEntryResult!12813 0))(
  ( (MissingZero!12813 (index!53646 (_ BitVec 32))) (Found!12813 (index!53647 (_ BitVec 32))) (Intermediate!12813 (undefined!13625 Bool) (index!53648 (_ BitVec 32)) (x!135384 (_ BitVec 32))) (Undefined!12813) (MissingVacant!12813 (index!53649 (_ BitVec 32))) )
))
(declare-fun lt!655522 () SeekEntryResult!12813)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100777 (_ BitVec 32)) SeekEntryResult!12813)

(assert (=> b!1511888 (= res!1031865 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48621 a!2804) j!70) a!2804 mask!2512) lt!655522))))

(declare-fun b!1511889 () Bool)

(assert (=> b!1511889 (= e!844019 e!844017)))

(declare-fun res!1031862 () Bool)

(assert (=> b!1511889 (=> (not res!1031862) (not e!844017))))

(declare-fun lt!655520 () SeekEntryResult!12813)

(assert (=> b!1511889 (= res!1031862 (= lt!655520 lt!655522))))

(assert (=> b!1511889 (= lt!655522 (Intermediate!12813 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511889 (= lt!655520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48621 a!2804) j!70) mask!2512) (select (arr!48621 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511890 () Bool)

(declare-fun res!1031860 () Bool)

(assert (=> b!1511890 (=> (not res!1031860) (not e!844019))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511890 (= res!1031860 (validKeyInArray!0 (select (arr!48621 a!2804) i!961)))))

(declare-fun b!1511891 () Bool)

(assert (=> b!1511891 (= e!844017 (not true))))

(declare-fun e!844018 () Bool)

(assert (=> b!1511891 e!844018))

(declare-fun res!1031871 () Bool)

(assert (=> b!1511891 (=> (not res!1031871) (not e!844018))))

(assert (=> b!1511891 (= res!1031871 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50450 0))(
  ( (Unit!50451) )
))
(declare-fun lt!655521 () Unit!50450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50450)

(assert (=> b!1511891 (= lt!655521 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511892 () Bool)

(declare-fun res!1031866 () Bool)

(assert (=> b!1511892 (=> (not res!1031866) (not e!844017))))

(assert (=> b!1511892 (= res!1031866 (= lt!655520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48621 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48621 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100778 (store (arr!48621 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49172 a!2804)) mask!2512)))))

(declare-fun res!1031859 () Bool)

(assert (=> start!129008 (=> (not res!1031859) (not e!844019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129008 (= res!1031859 (validMask!0 mask!2512))))

(assert (=> start!129008 e!844019))

(assert (=> start!129008 true))

(declare-fun array_inv!37566 (array!100777) Bool)

(assert (=> start!129008 (array_inv!37566 a!2804)))

(declare-fun b!1511893 () Bool)

(declare-fun e!844016 () Bool)

(assert (=> b!1511893 (= e!844018 e!844016)))

(declare-fun res!1031869 () Bool)

(assert (=> b!1511893 (=> res!1031869 e!844016)))

(assert (=> b!1511893 (= res!1031869 (or (not (= (select (arr!48621 a!2804) j!70) (select (store (arr!48621 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48621 a!2804) index!487) (select (arr!48621 a!2804) j!70)) (not (= (select (arr!48621 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511894 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100777 (_ BitVec 32)) SeekEntryResult!12813)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100777 (_ BitVec 32)) SeekEntryResult!12813)

(assert (=> b!1511894 (= e!844016 (= (seekEntryOrOpen!0 (select (arr!48621 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48621 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511895 () Bool)

(declare-fun res!1031867 () Bool)

(assert (=> b!1511895 (=> (not res!1031867) (not e!844019))))

(assert (=> b!1511895 (= res!1031867 (and (= (size!49172 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49172 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49172 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511896 () Bool)

(declare-fun res!1031868 () Bool)

(assert (=> b!1511896 (=> (not res!1031868) (not e!844018))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100777 (_ BitVec 32)) SeekEntryResult!12813)

(assert (=> b!1511896 (= res!1031868 (= (seekEntry!0 (select (arr!48621 a!2804) j!70) a!2804 mask!2512) (Found!12813 j!70)))))

(assert (= (and start!129008 res!1031859) b!1511895))

(assert (= (and b!1511895 res!1031867) b!1511890))

(assert (= (and b!1511890 res!1031860) b!1511887))

(assert (= (and b!1511887 res!1031861) b!1511885))

(assert (= (and b!1511885 res!1031870) b!1511884))

(assert (= (and b!1511884 res!1031864) b!1511886))

(assert (= (and b!1511886 res!1031863) b!1511889))

(assert (= (and b!1511889 res!1031862) b!1511888))

(assert (= (and b!1511888 res!1031865) b!1511892))

(assert (= (and b!1511892 res!1031866) b!1511891))

(assert (= (and b!1511891 res!1031871) b!1511896))

(assert (= (and b!1511896 res!1031868) b!1511893))

(assert (= (and b!1511893 (not res!1031869)) b!1511894))

(declare-fun m!1394673 () Bool)

(assert (=> b!1511889 m!1394673))

(assert (=> b!1511889 m!1394673))

(declare-fun m!1394675 () Bool)

(assert (=> b!1511889 m!1394675))

(assert (=> b!1511889 m!1394675))

(assert (=> b!1511889 m!1394673))

(declare-fun m!1394677 () Bool)

(assert (=> b!1511889 m!1394677))

(declare-fun m!1394679 () Bool)

(assert (=> start!129008 m!1394679))

(declare-fun m!1394681 () Bool)

(assert (=> start!129008 m!1394681))

(assert (=> b!1511896 m!1394673))

(assert (=> b!1511896 m!1394673))

(declare-fun m!1394683 () Bool)

(assert (=> b!1511896 m!1394683))

(assert (=> b!1511894 m!1394673))

(assert (=> b!1511894 m!1394673))

(declare-fun m!1394685 () Bool)

(assert (=> b!1511894 m!1394685))

(assert (=> b!1511894 m!1394673))

(declare-fun m!1394687 () Bool)

(assert (=> b!1511894 m!1394687))

(declare-fun m!1394689 () Bool)

(assert (=> b!1511892 m!1394689))

(declare-fun m!1394691 () Bool)

(assert (=> b!1511892 m!1394691))

(assert (=> b!1511892 m!1394691))

(declare-fun m!1394693 () Bool)

(assert (=> b!1511892 m!1394693))

(assert (=> b!1511892 m!1394693))

(assert (=> b!1511892 m!1394691))

(declare-fun m!1394695 () Bool)

(assert (=> b!1511892 m!1394695))

(assert (=> b!1511888 m!1394673))

(assert (=> b!1511888 m!1394673))

(declare-fun m!1394697 () Bool)

(assert (=> b!1511888 m!1394697))

(declare-fun m!1394699 () Bool)

(assert (=> b!1511884 m!1394699))

(assert (=> b!1511887 m!1394673))

(assert (=> b!1511887 m!1394673))

(declare-fun m!1394701 () Bool)

(assert (=> b!1511887 m!1394701))

(declare-fun m!1394703 () Bool)

(assert (=> b!1511885 m!1394703))

(declare-fun m!1394705 () Bool)

(assert (=> b!1511891 m!1394705))

(declare-fun m!1394707 () Bool)

(assert (=> b!1511891 m!1394707))

(assert (=> b!1511893 m!1394673))

(assert (=> b!1511893 m!1394689))

(assert (=> b!1511893 m!1394691))

(declare-fun m!1394709 () Bool)

(assert (=> b!1511893 m!1394709))

(declare-fun m!1394711 () Bool)

(assert (=> b!1511890 m!1394711))

(assert (=> b!1511890 m!1394711))

(declare-fun m!1394713 () Bool)

(assert (=> b!1511890 m!1394713))

(push 1)

