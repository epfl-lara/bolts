; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129904 () Bool)

(assert start!129904)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun e!849677 () Bool)

(declare-datatypes ((array!101370 0))(
  ( (array!101371 (arr!48910 (Array (_ BitVec 32) (_ BitVec 64))) (size!49461 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101370)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun b!1524111 () Bool)

(declare-datatypes ((SeekEntryResult!13096 0))(
  ( (MissingZero!13096 (index!54778 (_ BitVec 32))) (Found!13096 (index!54779 (_ BitVec 32))) (Intermediate!13096 (undefined!13908 Bool) (index!54780 (_ BitVec 32)) (x!136479 (_ BitVec 32))) (Undefined!13096) (MissingVacant!13096 (index!54781 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101370 (_ BitVec 32)) SeekEntryResult!13096)

(assert (=> b!1524111 (= e!849677 (= (seekEntry!0 (select (arr!48910 a!2804) j!70) a!2804 mask!2512) (Found!13096 j!70)))))

(declare-fun b!1524112 () Bool)

(declare-fun res!1042911 () Bool)

(declare-fun e!849680 () Bool)

(assert (=> b!1524112 (=> (not res!1042911) (not e!849680))))

(declare-datatypes ((List!35573 0))(
  ( (Nil!35570) (Cons!35569 (h!36997 (_ BitVec 64)) (t!50274 List!35573)) )
))
(declare-fun arrayNoDuplicates!0 (array!101370 (_ BitVec 32) List!35573) Bool)

(assert (=> b!1524112 (= res!1042911 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35570))))

(declare-fun b!1524113 () Bool)

(declare-fun res!1042910 () Bool)

(declare-fun e!849678 () Bool)

(assert (=> b!1524113 (=> (not res!1042910) (not e!849678))))

(declare-fun lt!660182 () SeekEntryResult!13096)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101370 (_ BitVec 32)) SeekEntryResult!13096)

(assert (=> b!1524113 (= res!1042910 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48910 a!2804) j!70) a!2804 mask!2512) lt!660182))))

(declare-fun res!1042903 () Bool)

(assert (=> start!129904 (=> (not res!1042903) (not e!849680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129904 (= res!1042903 (validMask!0 mask!2512))))

(assert (=> start!129904 e!849680))

(assert (=> start!129904 true))

(declare-fun array_inv!37855 (array!101370) Bool)

(assert (=> start!129904 (array_inv!37855 a!2804)))

(declare-fun b!1524114 () Bool)

(declare-fun res!1042905 () Bool)

(assert (=> b!1524114 (=> (not res!1042905) (not e!849680))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524114 (= res!1042905 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49461 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49461 a!2804))))))

(declare-fun b!1524115 () Bool)

(declare-fun res!1042906 () Bool)

(assert (=> b!1524115 (=> (not res!1042906) (not e!849680))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1524115 (= res!1042906 (and (= (size!49461 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49461 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49461 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524116 () Bool)

(assert (=> b!1524116 (= e!849680 e!849678)))

(declare-fun res!1042902 () Bool)

(assert (=> b!1524116 (=> (not res!1042902) (not e!849678))))

(declare-fun lt!660183 () SeekEntryResult!13096)

(assert (=> b!1524116 (= res!1042902 (= lt!660183 lt!660182))))

(assert (=> b!1524116 (= lt!660182 (Intermediate!13096 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524116 (= lt!660183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48910 a!2804) j!70) mask!2512) (select (arr!48910 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524117 () Bool)

(declare-fun res!1042909 () Bool)

(assert (=> b!1524117 (=> (not res!1042909) (not e!849680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524117 (= res!1042909 (validKeyInArray!0 (select (arr!48910 a!2804) i!961)))))

(declare-fun b!1524118 () Bool)

(declare-fun res!1042904 () Bool)

(assert (=> b!1524118 (=> (not res!1042904) (not e!849680))))

(assert (=> b!1524118 (= res!1042904 (validKeyInArray!0 (select (arr!48910 a!2804) j!70)))))

(declare-fun b!1524119 () Bool)

(declare-fun res!1042901 () Bool)

(assert (=> b!1524119 (=> (not res!1042901) (not e!849680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101370 (_ BitVec 32)) Bool)

(assert (=> b!1524119 (= res!1042901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524120 () Bool)

(declare-fun res!1042907 () Bool)

(assert (=> b!1524120 (=> (not res!1042907) (not e!849678))))

(assert (=> b!1524120 (= res!1042907 (= lt!660183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48910 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48910 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101371 (store (arr!48910 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49461 a!2804)) mask!2512)))))

(declare-fun b!1524121 () Bool)

(assert (=> b!1524121 (= e!849678 (not true))))

(assert (=> b!1524121 e!849677))

(declare-fun res!1042908 () Bool)

(assert (=> b!1524121 (=> (not res!1042908) (not e!849677))))

(assert (=> b!1524121 (= res!1042908 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50932 0))(
  ( (Unit!50933) )
))
(declare-fun lt!660184 () Unit!50932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50932)

(assert (=> b!1524121 (= lt!660184 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129904 res!1042903) b!1524115))

(assert (= (and b!1524115 res!1042906) b!1524117))

(assert (= (and b!1524117 res!1042909) b!1524118))

(assert (= (and b!1524118 res!1042904) b!1524119))

(assert (= (and b!1524119 res!1042901) b!1524112))

(assert (= (and b!1524112 res!1042911) b!1524114))

(assert (= (and b!1524114 res!1042905) b!1524116))

(assert (= (and b!1524116 res!1042902) b!1524113))

(assert (= (and b!1524113 res!1042910) b!1524120))

(assert (= (and b!1524120 res!1042907) b!1524121))

(assert (= (and b!1524121 res!1042908) b!1524111))

(declare-fun m!1407189 () Bool)

(assert (=> b!1524119 m!1407189))

(declare-fun m!1407191 () Bool)

(assert (=> b!1524118 m!1407191))

(assert (=> b!1524118 m!1407191))

(declare-fun m!1407193 () Bool)

(assert (=> b!1524118 m!1407193))

(declare-fun m!1407195 () Bool)

(assert (=> b!1524121 m!1407195))

(declare-fun m!1407197 () Bool)

(assert (=> b!1524121 m!1407197))

(declare-fun m!1407199 () Bool)

(assert (=> start!129904 m!1407199))

(declare-fun m!1407201 () Bool)

(assert (=> start!129904 m!1407201))

(declare-fun m!1407203 () Bool)

(assert (=> b!1524117 m!1407203))

(assert (=> b!1524117 m!1407203))

(declare-fun m!1407205 () Bool)

(assert (=> b!1524117 m!1407205))

(declare-fun m!1407207 () Bool)

(assert (=> b!1524120 m!1407207))

(declare-fun m!1407209 () Bool)

(assert (=> b!1524120 m!1407209))

(assert (=> b!1524120 m!1407209))

(declare-fun m!1407211 () Bool)

(assert (=> b!1524120 m!1407211))

(assert (=> b!1524120 m!1407211))

(assert (=> b!1524120 m!1407209))

(declare-fun m!1407213 () Bool)

(assert (=> b!1524120 m!1407213))

(assert (=> b!1524116 m!1407191))

(assert (=> b!1524116 m!1407191))

(declare-fun m!1407215 () Bool)

(assert (=> b!1524116 m!1407215))

(assert (=> b!1524116 m!1407215))

(assert (=> b!1524116 m!1407191))

(declare-fun m!1407217 () Bool)

(assert (=> b!1524116 m!1407217))

(assert (=> b!1524113 m!1407191))

(assert (=> b!1524113 m!1407191))

(declare-fun m!1407219 () Bool)

(assert (=> b!1524113 m!1407219))

(declare-fun m!1407221 () Bool)

(assert (=> b!1524112 m!1407221))

(assert (=> b!1524111 m!1407191))

(assert (=> b!1524111 m!1407191))

(declare-fun m!1407223 () Bool)

(assert (=> b!1524111 m!1407223))

(push 1)

