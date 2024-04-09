; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128970 () Bool)

(assert start!128970)

(declare-fun b!1511205 () Bool)

(declare-fun res!1031180 () Bool)

(declare-fun e!843764 () Bool)

(assert (=> b!1511205 (=> (not res!1031180) (not e!843764))))

(declare-datatypes ((array!100739 0))(
  ( (array!100740 (arr!48602 (Array (_ BitVec 32) (_ BitVec 64))) (size!49153 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100739)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511205 (= res!1031180 (validKeyInArray!0 (select (arr!48602 a!2804) i!961)))))

(declare-fun res!1031183 () Bool)

(assert (=> start!128970 (=> (not res!1031183) (not e!843764))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128970 (= res!1031183 (validMask!0 mask!2512))))

(assert (=> start!128970 e!843764))

(assert (=> start!128970 true))

(declare-fun array_inv!37547 (array!100739) Bool)

(assert (=> start!128970 (array_inv!37547 a!2804)))

(declare-fun b!1511206 () Bool)

(declare-fun res!1031186 () Bool)

(assert (=> b!1511206 (=> (not res!1031186) (not e!843764))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1511206 (= res!1031186 (and (= (size!49153 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49153 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49153 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511207 () Bool)

(declare-fun res!1031187 () Bool)

(assert (=> b!1511207 (=> (not res!1031187) (not e!843764))))

(assert (=> b!1511207 (= res!1031187 (validKeyInArray!0 (select (arr!48602 a!2804) j!70)))))

(declare-fun b!1511208 () Bool)

(declare-fun e!843763 () Bool)

(assert (=> b!1511208 (= e!843764 e!843763)))

(declare-fun res!1031184 () Bool)

(assert (=> b!1511208 (=> (not res!1031184) (not e!843763))))

(declare-datatypes ((SeekEntryResult!12794 0))(
  ( (MissingZero!12794 (index!53570 (_ BitVec 32))) (Found!12794 (index!53571 (_ BitVec 32))) (Intermediate!12794 (undefined!13606 Bool) (index!53572 (_ BitVec 32)) (x!135317 (_ BitVec 32))) (Undefined!12794) (MissingVacant!12794 (index!53573 (_ BitVec 32))) )
))
(declare-fun lt!655351 () SeekEntryResult!12794)

(declare-fun lt!655350 () SeekEntryResult!12794)

(assert (=> b!1511208 (= res!1031184 (= lt!655351 lt!655350))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511208 (= lt!655350 (Intermediate!12794 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100739 (_ BitVec 32)) SeekEntryResult!12794)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511208 (= lt!655351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48602 a!2804) j!70) mask!2512) (select (arr!48602 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511209 () Bool)

(declare-fun e!843761 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100739 (_ BitVec 32)) SeekEntryResult!12794)

(assert (=> b!1511209 (= e!843761 (= (seekEntry!0 (select (arr!48602 a!2804) j!70) a!2804 mask!2512) (Found!12794 j!70)))))

(declare-fun b!1511210 () Bool)

(declare-fun res!1031182 () Bool)

(assert (=> b!1511210 (=> (not res!1031182) (not e!843763))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511210 (= res!1031182 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48602 a!2804) j!70) a!2804 mask!2512) lt!655350))))

(declare-fun b!1511211 () Bool)

(declare-fun res!1031181 () Bool)

(assert (=> b!1511211 (=> (not res!1031181) (not e!843764))))

(assert (=> b!1511211 (= res!1031181 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49153 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49153 a!2804))))))

(declare-fun b!1511212 () Bool)

(declare-fun res!1031190 () Bool)

(assert (=> b!1511212 (=> (not res!1031190) (not e!843764))))

(declare-datatypes ((List!35265 0))(
  ( (Nil!35262) (Cons!35261 (h!36674 (_ BitVec 64)) (t!49966 List!35265)) )
))
(declare-fun arrayNoDuplicates!0 (array!100739 (_ BitVec 32) List!35265) Bool)

(assert (=> b!1511212 (= res!1031190 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35262))))

(declare-fun b!1511213 () Bool)

(assert (=> b!1511213 (= e!843763 (not true))))

(assert (=> b!1511213 e!843761))

(declare-fun res!1031188 () Bool)

(assert (=> b!1511213 (=> (not res!1031188) (not e!843761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100739 (_ BitVec 32)) Bool)

(assert (=> b!1511213 (= res!1031188 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50412 0))(
  ( (Unit!50413) )
))
(declare-fun lt!655349 () Unit!50412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50412)

(assert (=> b!1511213 (= lt!655349 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511214 () Bool)

(declare-fun res!1031185 () Bool)

(assert (=> b!1511214 (=> (not res!1031185) (not e!843763))))

(assert (=> b!1511214 (= res!1031185 (= lt!655351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48602 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48602 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100740 (store (arr!48602 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49153 a!2804)) mask!2512)))))

(declare-fun b!1511215 () Bool)

(declare-fun res!1031189 () Bool)

(assert (=> b!1511215 (=> (not res!1031189) (not e!843764))))

(assert (=> b!1511215 (= res!1031189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128970 res!1031183) b!1511206))

(assert (= (and b!1511206 res!1031186) b!1511205))

(assert (= (and b!1511205 res!1031180) b!1511207))

(assert (= (and b!1511207 res!1031187) b!1511215))

(assert (= (and b!1511215 res!1031189) b!1511212))

(assert (= (and b!1511212 res!1031190) b!1511211))

(assert (= (and b!1511211 res!1031181) b!1511208))

(assert (= (and b!1511208 res!1031184) b!1511210))

(assert (= (and b!1511210 res!1031182) b!1511214))

(assert (= (and b!1511214 res!1031185) b!1511213))

(assert (= (and b!1511213 res!1031188) b!1511209))

(declare-fun m!1393941 () Bool)

(assert (=> b!1511214 m!1393941))

(declare-fun m!1393943 () Bool)

(assert (=> b!1511214 m!1393943))

(assert (=> b!1511214 m!1393943))

(declare-fun m!1393945 () Bool)

(assert (=> b!1511214 m!1393945))

(assert (=> b!1511214 m!1393945))

(assert (=> b!1511214 m!1393943))

(declare-fun m!1393947 () Bool)

(assert (=> b!1511214 m!1393947))

(declare-fun m!1393949 () Bool)

(assert (=> start!128970 m!1393949))

(declare-fun m!1393951 () Bool)

(assert (=> start!128970 m!1393951))

(declare-fun m!1393953 () Bool)

(assert (=> b!1511207 m!1393953))

(assert (=> b!1511207 m!1393953))

(declare-fun m!1393955 () Bool)

(assert (=> b!1511207 m!1393955))

(assert (=> b!1511210 m!1393953))

(assert (=> b!1511210 m!1393953))

(declare-fun m!1393957 () Bool)

(assert (=> b!1511210 m!1393957))

(assert (=> b!1511209 m!1393953))

(assert (=> b!1511209 m!1393953))

(declare-fun m!1393959 () Bool)

(assert (=> b!1511209 m!1393959))

(declare-fun m!1393961 () Bool)

(assert (=> b!1511213 m!1393961))

(declare-fun m!1393963 () Bool)

(assert (=> b!1511213 m!1393963))

(declare-fun m!1393965 () Bool)

(assert (=> b!1511212 m!1393965))

(assert (=> b!1511208 m!1393953))

(assert (=> b!1511208 m!1393953))

(declare-fun m!1393967 () Bool)

(assert (=> b!1511208 m!1393967))

(assert (=> b!1511208 m!1393967))

(assert (=> b!1511208 m!1393953))

(declare-fun m!1393969 () Bool)

(assert (=> b!1511208 m!1393969))

(declare-fun m!1393971 () Bool)

(assert (=> b!1511215 m!1393971))

(declare-fun m!1393973 () Bool)

(assert (=> b!1511205 m!1393973))

(assert (=> b!1511205 m!1393973))

(declare-fun m!1393975 () Bool)

(assert (=> b!1511205 m!1393975))

(check-sat (not b!1511213) (not start!128970) (not b!1511212) (not b!1511205) (not b!1511207) (not b!1511208) (not b!1511214) (not b!1511209) (not b!1511215) (not b!1511210))
(check-sat)
