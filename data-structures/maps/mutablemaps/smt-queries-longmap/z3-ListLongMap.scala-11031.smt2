; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129066 () Bool)

(assert start!129066)

(declare-fun b!1513038 () Bool)

(declare-fun e!844499 () Bool)

(declare-fun e!844497 () Bool)

(assert (=> b!1513038 (= e!844499 e!844497)))

(declare-fun res!1033025 () Bool)

(assert (=> b!1513038 (=> (not res!1033025) (not e!844497))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100835 0))(
  ( (array!100836 (arr!48650 (Array (_ BitVec 32) (_ BitVec 64))) (size!49201 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100835)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12842 0))(
  ( (MissingZero!12842 (index!53762 (_ BitVec 32))) (Found!12842 (index!53763 (_ BitVec 32))) (Intermediate!12842 (undefined!13654 Bool) (index!53764 (_ BitVec 32)) (x!135493 (_ BitVec 32))) (Undefined!12842) (MissingVacant!12842 (index!53765 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100835 (_ BitVec 32)) SeekEntryResult!12842)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100835 (_ BitVec 32)) SeekEntryResult!12842)

(assert (=> b!1513038 (= res!1033025 (= (seekEntryOrOpen!0 (select (arr!48650 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48650 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun lt!655813 () (_ BitVec 64))

(declare-fun lt!655811 () array!100835)

(declare-fun b!1513039 () Bool)

(assert (=> b!1513039 (= e!844497 (= (seekEntryOrOpen!0 lt!655813 lt!655811 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655813 lt!655811 mask!2512)))))

(declare-fun b!1513040 () Bool)

(declare-fun res!1033020 () Bool)

(declare-fun e!844496 () Bool)

(assert (=> b!1513040 (=> (not res!1033020) (not e!844496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100835 (_ BitVec 32)) Bool)

(assert (=> b!1513040 (= res!1033020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513041 () Bool)

(declare-fun res!1033022 () Bool)

(declare-fun e!844500 () Bool)

(assert (=> b!1513041 (=> (not res!1033022) (not e!844500))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100835 (_ BitVec 32)) SeekEntryResult!12842)

(assert (=> b!1513041 (= res!1033022 (= (seekEntry!0 (select (arr!48650 a!2804) j!70) a!2804 mask!2512) (Found!12842 j!70)))))

(declare-fun res!1033015 () Bool)

(assert (=> start!129066 (=> (not res!1033015) (not e!844496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129066 (= res!1033015 (validMask!0 mask!2512))))

(assert (=> start!129066 e!844496))

(assert (=> start!129066 true))

(declare-fun array_inv!37595 (array!100835) Bool)

(assert (=> start!129066 (array_inv!37595 a!2804)))

(declare-fun b!1513042 () Bool)

(declare-fun e!844502 () Bool)

(declare-fun e!844498 () Bool)

(assert (=> b!1513042 (= e!844502 e!844498)))

(declare-fun res!1033014 () Bool)

(assert (=> b!1513042 (=> (not res!1033014) (not e!844498))))

(declare-fun lt!655812 () SeekEntryResult!12842)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100835 (_ BitVec 32)) SeekEntryResult!12842)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513042 (= res!1033014 (= lt!655812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655813 mask!2512) lt!655813 lt!655811 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513042 (= lt!655813 (select (store (arr!48650 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513042 (= lt!655811 (array!100836 (store (arr!48650 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49201 a!2804)))))

(declare-fun b!1513043 () Bool)

(declare-fun res!1033024 () Bool)

(assert (=> b!1513043 (=> (not res!1033024) (not e!844496))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513043 (= res!1033024 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49201 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49201 a!2804))))))

(declare-fun b!1513044 () Bool)

(declare-fun res!1033021 () Bool)

(assert (=> b!1513044 (=> (not res!1033021) (not e!844496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513044 (= res!1033021 (validKeyInArray!0 (select (arr!48650 a!2804) i!961)))))

(declare-fun b!1513045 () Bool)

(declare-fun res!1033017 () Bool)

(assert (=> b!1513045 (=> (not res!1033017) (not e!844502))))

(declare-fun lt!655809 () SeekEntryResult!12842)

(assert (=> b!1513045 (= res!1033017 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48650 a!2804) j!70) a!2804 mask!2512) lt!655809))))

(declare-fun b!1513046 () Bool)

(assert (=> b!1513046 (= e!844500 e!844499)))

(declare-fun res!1033023 () Bool)

(assert (=> b!1513046 (=> res!1033023 e!844499)))

(assert (=> b!1513046 (= res!1033023 (or (not (= (select (arr!48650 a!2804) j!70) lt!655813)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48650 a!2804) index!487) (select (arr!48650 a!2804) j!70)) (not (= (select (arr!48650 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513047 () Bool)

(declare-fun res!1033019 () Bool)

(assert (=> b!1513047 (=> (not res!1033019) (not e!844496))))

(assert (=> b!1513047 (= res!1033019 (validKeyInArray!0 (select (arr!48650 a!2804) j!70)))))

(declare-fun b!1513048 () Bool)

(declare-fun res!1033026 () Bool)

(assert (=> b!1513048 (=> (not res!1033026) (not e!844496))))

(assert (=> b!1513048 (= res!1033026 (and (= (size!49201 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49201 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49201 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513049 () Bool)

(assert (=> b!1513049 (= e!844496 e!844502)))

(declare-fun res!1033013 () Bool)

(assert (=> b!1513049 (=> (not res!1033013) (not e!844502))))

(assert (=> b!1513049 (= res!1033013 (= lt!655812 lt!655809))))

(assert (=> b!1513049 (= lt!655809 (Intermediate!12842 false resIndex!21 resX!21))))

(assert (=> b!1513049 (= lt!655812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48650 a!2804) j!70) mask!2512) (select (arr!48650 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513050 () Bool)

(declare-fun res!1033018 () Bool)

(assert (=> b!1513050 (=> (not res!1033018) (not e!844496))))

(declare-datatypes ((List!35313 0))(
  ( (Nil!35310) (Cons!35309 (h!36722 (_ BitVec 64)) (t!50014 List!35313)) )
))
(declare-fun arrayNoDuplicates!0 (array!100835 (_ BitVec 32) List!35313) Bool)

(assert (=> b!1513050 (= res!1033018 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35310))))

(declare-fun b!1513051 () Bool)

(assert (=> b!1513051 (= e!844498 (not true))))

(assert (=> b!1513051 e!844500))

(declare-fun res!1033016 () Bool)

(assert (=> b!1513051 (=> (not res!1033016) (not e!844500))))

(assert (=> b!1513051 (= res!1033016 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50508 0))(
  ( (Unit!50509) )
))
(declare-fun lt!655810 () Unit!50508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50508)

(assert (=> b!1513051 (= lt!655810 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129066 res!1033015) b!1513048))

(assert (= (and b!1513048 res!1033026) b!1513044))

(assert (= (and b!1513044 res!1033021) b!1513047))

(assert (= (and b!1513047 res!1033019) b!1513040))

(assert (= (and b!1513040 res!1033020) b!1513050))

(assert (= (and b!1513050 res!1033018) b!1513043))

(assert (= (and b!1513043 res!1033024) b!1513049))

(assert (= (and b!1513049 res!1033013) b!1513045))

(assert (= (and b!1513045 res!1033017) b!1513042))

(assert (= (and b!1513042 res!1033014) b!1513051))

(assert (= (and b!1513051 res!1033016) b!1513041))

(assert (= (and b!1513041 res!1033022) b!1513046))

(assert (= (and b!1513046 (not res!1033023)) b!1513038))

(assert (= (and b!1513038 res!1033025) b!1513039))

(declare-fun m!1395919 () Bool)

(assert (=> b!1513044 m!1395919))

(assert (=> b!1513044 m!1395919))

(declare-fun m!1395921 () Bool)

(assert (=> b!1513044 m!1395921))

(declare-fun m!1395923 () Bool)

(assert (=> b!1513049 m!1395923))

(assert (=> b!1513049 m!1395923))

(declare-fun m!1395925 () Bool)

(assert (=> b!1513049 m!1395925))

(assert (=> b!1513049 m!1395925))

(assert (=> b!1513049 m!1395923))

(declare-fun m!1395927 () Bool)

(assert (=> b!1513049 m!1395927))

(assert (=> b!1513047 m!1395923))

(assert (=> b!1513047 m!1395923))

(declare-fun m!1395929 () Bool)

(assert (=> b!1513047 m!1395929))

(declare-fun m!1395931 () Bool)

(assert (=> b!1513039 m!1395931))

(declare-fun m!1395933 () Bool)

(assert (=> b!1513039 m!1395933))

(assert (=> b!1513045 m!1395923))

(assert (=> b!1513045 m!1395923))

(declare-fun m!1395935 () Bool)

(assert (=> b!1513045 m!1395935))

(declare-fun m!1395937 () Bool)

(assert (=> b!1513042 m!1395937))

(assert (=> b!1513042 m!1395937))

(declare-fun m!1395939 () Bool)

(assert (=> b!1513042 m!1395939))

(declare-fun m!1395941 () Bool)

(assert (=> b!1513042 m!1395941))

(declare-fun m!1395943 () Bool)

(assert (=> b!1513042 m!1395943))

(assert (=> b!1513041 m!1395923))

(assert (=> b!1513041 m!1395923))

(declare-fun m!1395945 () Bool)

(assert (=> b!1513041 m!1395945))

(declare-fun m!1395947 () Bool)

(assert (=> b!1513040 m!1395947))

(declare-fun m!1395949 () Bool)

(assert (=> b!1513051 m!1395949))

(declare-fun m!1395951 () Bool)

(assert (=> b!1513051 m!1395951))

(declare-fun m!1395953 () Bool)

(assert (=> b!1513050 m!1395953))

(assert (=> b!1513038 m!1395923))

(assert (=> b!1513038 m!1395923))

(declare-fun m!1395955 () Bool)

(assert (=> b!1513038 m!1395955))

(assert (=> b!1513038 m!1395923))

(declare-fun m!1395957 () Bool)

(assert (=> b!1513038 m!1395957))

(assert (=> b!1513046 m!1395923))

(declare-fun m!1395959 () Bool)

(assert (=> b!1513046 m!1395959))

(declare-fun m!1395961 () Bool)

(assert (=> start!129066 m!1395961))

(declare-fun m!1395963 () Bool)

(assert (=> start!129066 m!1395963))

(check-sat (not b!1513049) (not b!1513045) (not b!1513038) (not b!1513047) (not b!1513042) (not b!1513041) (not b!1513039) (not start!129066) (not b!1513051) (not b!1513044) (not b!1513050) (not b!1513040))
(check-sat)
