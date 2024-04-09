; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128826 () Bool)

(assert start!128826)

(declare-fun b!1508927 () Bool)

(declare-fun res!1028908 () Bool)

(declare-fun e!842956 () Bool)

(assert (=> b!1508927 (=> (not res!1028908) (not e!842956))))

(declare-datatypes ((array!100595 0))(
  ( (array!100596 (arr!48530 (Array (_ BitVec 32) (_ BitVec 64))) (size!49081 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100595)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100595 (_ BitVec 32)) Bool)

(assert (=> b!1508927 (= res!1028908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508928 () Bool)

(declare-fun res!1028906 () Bool)

(assert (=> b!1508928 (=> (not res!1028906) (not e!842956))))

(declare-datatypes ((List!35193 0))(
  ( (Nil!35190) (Cons!35189 (h!36602 (_ BitVec 64)) (t!49894 List!35193)) )
))
(declare-fun arrayNoDuplicates!0 (array!100595 (_ BitVec 32) List!35193) Bool)

(assert (=> b!1508928 (= res!1028906 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35190))))

(declare-fun res!1028903 () Bool)

(assert (=> start!128826 (=> (not res!1028903) (not e!842956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128826 (= res!1028903 (validMask!0 mask!2512))))

(assert (=> start!128826 e!842956))

(assert (=> start!128826 true))

(declare-fun array_inv!37475 (array!100595) Bool)

(assert (=> start!128826 (array_inv!37475 a!2804)))

(declare-fun b!1508929 () Bool)

(declare-fun res!1028902 () Bool)

(assert (=> b!1508929 (=> (not res!1028902) (not e!842956))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508929 (= res!1028902 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49081 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49081 a!2804))))))

(declare-fun b!1508930 () Bool)

(declare-fun res!1028907 () Bool)

(assert (=> b!1508930 (=> (not res!1028907) (not e!842956))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508930 (= res!1028907 (validKeyInArray!0 (select (arr!48530 a!2804) j!70)))))

(declare-fun b!1508931 () Bool)

(declare-fun res!1028904 () Bool)

(declare-fun e!842955 () Bool)

(assert (=> b!1508931 (=> (not res!1028904) (not e!842955))))

(declare-datatypes ((SeekEntryResult!12722 0))(
  ( (MissingZero!12722 (index!53282 (_ BitVec 32))) (Found!12722 (index!53283 (_ BitVec 32))) (Intermediate!12722 (undefined!13534 Bool) (index!53284 (_ BitVec 32)) (x!135053 (_ BitVec 32))) (Undefined!12722) (MissingVacant!12722 (index!53285 (_ BitVec 32))) )
))
(declare-fun lt!654742 () SeekEntryResult!12722)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100595 (_ BitVec 32)) SeekEntryResult!12722)

(assert (=> b!1508931 (= res!1028904 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48530 a!2804) j!70) a!2804 mask!2512) lt!654742))))

(declare-fun b!1508932 () Bool)

(declare-fun res!1028909 () Bool)

(assert (=> b!1508932 (=> (not res!1028909) (not e!842956))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508932 (= res!1028909 (validKeyInArray!0 (select (arr!48530 a!2804) i!961)))))

(declare-fun b!1508933 () Bool)

(assert (=> b!1508933 (= e!842955 false)))

(declare-fun lt!654741 () SeekEntryResult!12722)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508933 (= lt!654741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48530 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48530 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100596 (store (arr!48530 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49081 a!2804)) mask!2512))))

(declare-fun b!1508934 () Bool)

(declare-fun res!1028905 () Bool)

(assert (=> b!1508934 (=> (not res!1028905) (not e!842956))))

(assert (=> b!1508934 (= res!1028905 (and (= (size!49081 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49081 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49081 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508935 () Bool)

(assert (=> b!1508935 (= e!842956 e!842955)))

(declare-fun res!1028910 () Bool)

(assert (=> b!1508935 (=> (not res!1028910) (not e!842955))))

(assert (=> b!1508935 (= res!1028910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48530 a!2804) j!70) mask!2512) (select (arr!48530 a!2804) j!70) a!2804 mask!2512) lt!654742))))

(assert (=> b!1508935 (= lt!654742 (Intermediate!12722 false resIndex!21 resX!21))))

(assert (= (and start!128826 res!1028903) b!1508934))

(assert (= (and b!1508934 res!1028905) b!1508932))

(assert (= (and b!1508932 res!1028909) b!1508930))

(assert (= (and b!1508930 res!1028907) b!1508927))

(assert (= (and b!1508927 res!1028908) b!1508928))

(assert (= (and b!1508928 res!1028906) b!1508929))

(assert (= (and b!1508929 res!1028902) b!1508935))

(assert (= (and b!1508935 res!1028910) b!1508931))

(assert (= (and b!1508931 res!1028904) b!1508933))

(declare-fun m!1391409 () Bool)

(assert (=> start!128826 m!1391409))

(declare-fun m!1391411 () Bool)

(assert (=> start!128826 m!1391411))

(declare-fun m!1391413 () Bool)

(assert (=> b!1508932 m!1391413))

(assert (=> b!1508932 m!1391413))

(declare-fun m!1391415 () Bool)

(assert (=> b!1508932 m!1391415))

(declare-fun m!1391417 () Bool)

(assert (=> b!1508927 m!1391417))

(declare-fun m!1391419 () Bool)

(assert (=> b!1508930 m!1391419))

(assert (=> b!1508930 m!1391419))

(declare-fun m!1391421 () Bool)

(assert (=> b!1508930 m!1391421))

(declare-fun m!1391423 () Bool)

(assert (=> b!1508928 m!1391423))

(assert (=> b!1508935 m!1391419))

(assert (=> b!1508935 m!1391419))

(declare-fun m!1391425 () Bool)

(assert (=> b!1508935 m!1391425))

(assert (=> b!1508935 m!1391425))

(assert (=> b!1508935 m!1391419))

(declare-fun m!1391427 () Bool)

(assert (=> b!1508935 m!1391427))

(assert (=> b!1508931 m!1391419))

(assert (=> b!1508931 m!1391419))

(declare-fun m!1391429 () Bool)

(assert (=> b!1508931 m!1391429))

(declare-fun m!1391431 () Bool)

(assert (=> b!1508933 m!1391431))

(declare-fun m!1391433 () Bool)

(assert (=> b!1508933 m!1391433))

(assert (=> b!1508933 m!1391433))

(declare-fun m!1391435 () Bool)

(assert (=> b!1508933 m!1391435))

(assert (=> b!1508933 m!1391435))

(assert (=> b!1508933 m!1391433))

(declare-fun m!1391437 () Bool)

(assert (=> b!1508933 m!1391437))

(check-sat (not b!1508933) (not start!128826) (not b!1508927) (not b!1508931) (not b!1508932) (not b!1508928) (not b!1508935) (not b!1508930))
(check-sat)
