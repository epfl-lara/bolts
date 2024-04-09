; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128896 () Bool)

(assert start!128896)

(declare-fun res!1029956 () Bool)

(declare-fun e!843311 () Bool)

(assert (=> start!128896 (=> (not res!1029956) (not e!843311))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128896 (= res!1029956 (validMask!0 mask!2512))))

(assert (=> start!128896 e!843311))

(assert (=> start!128896 true))

(declare-datatypes ((array!100665 0))(
  ( (array!100666 (arr!48565 (Array (_ BitVec 32) (_ BitVec 64))) (size!49116 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100665)

(declare-fun array_inv!37510 (array!100665) Bool)

(assert (=> start!128896 (array_inv!37510 a!2804)))

(declare-fun b!1509975 () Bool)

(declare-fun res!1029951 () Bool)

(assert (=> b!1509975 (=> (not res!1029951) (not e!843311))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509975 (= res!1029951 (validKeyInArray!0 (select (arr!48565 a!2804) i!961)))))

(declare-fun b!1509976 () Bool)

(declare-fun e!843309 () Bool)

(assert (=> b!1509976 (= e!843309 (not true))))

(declare-fun e!843310 () Bool)

(assert (=> b!1509976 e!843310))

(declare-fun res!1029954 () Bool)

(assert (=> b!1509976 (=> (not res!1029954) (not e!843310))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100665 (_ BitVec 32)) Bool)

(assert (=> b!1509976 (= res!1029954 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50338 0))(
  ( (Unit!50339) )
))
(declare-fun lt!655016 () Unit!50338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50338)

(assert (=> b!1509976 (= lt!655016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509977 () Bool)

(declare-fun res!1029953 () Bool)

(assert (=> b!1509977 (=> (not res!1029953) (not e!843311))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1509977 (= res!1029953 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49116 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49116 a!2804))))))

(declare-fun b!1509978 () Bool)

(declare-fun res!1029958 () Bool)

(assert (=> b!1509978 (=> (not res!1029958) (not e!843309))))

(declare-datatypes ((SeekEntryResult!12757 0))(
  ( (MissingZero!12757 (index!53422 (_ BitVec 32))) (Found!12757 (index!53423 (_ BitVec 32))) (Intermediate!12757 (undefined!13569 Bool) (index!53424 (_ BitVec 32)) (x!135184 (_ BitVec 32))) (Undefined!12757) (MissingVacant!12757 (index!53425 (_ BitVec 32))) )
))
(declare-fun lt!655017 () SeekEntryResult!12757)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100665 (_ BitVec 32)) SeekEntryResult!12757)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509978 (= res!1029958 (= lt!655017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48565 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48565 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100666 (store (arr!48565 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49116 a!2804)) mask!2512)))))

(declare-fun b!1509979 () Bool)

(declare-fun res!1029957 () Bool)

(assert (=> b!1509979 (=> (not res!1029957) (not e!843311))))

(assert (=> b!1509979 (= res!1029957 (validKeyInArray!0 (select (arr!48565 a!2804) j!70)))))

(declare-fun b!1509980 () Bool)

(assert (=> b!1509980 (= e!843311 e!843309)))

(declare-fun res!1029959 () Bool)

(assert (=> b!1509980 (=> (not res!1029959) (not e!843309))))

(declare-fun lt!655018 () SeekEntryResult!12757)

(assert (=> b!1509980 (= res!1029959 (= lt!655017 lt!655018))))

(assert (=> b!1509980 (= lt!655018 (Intermediate!12757 false resIndex!21 resX!21))))

(assert (=> b!1509980 (= lt!655017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48565 a!2804) j!70) mask!2512) (select (arr!48565 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509981 () Bool)

(declare-fun res!1029955 () Bool)

(assert (=> b!1509981 (=> (not res!1029955) (not e!843311))))

(assert (=> b!1509981 (= res!1029955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509982 () Bool)

(declare-fun res!1029952 () Bool)

(assert (=> b!1509982 (=> (not res!1029952) (not e!843311))))

(assert (=> b!1509982 (= res!1029952 (and (= (size!49116 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49116 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49116 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509983 () Bool)

(declare-fun res!1029950 () Bool)

(assert (=> b!1509983 (=> (not res!1029950) (not e!843309))))

(assert (=> b!1509983 (= res!1029950 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48565 a!2804) j!70) a!2804 mask!2512) lt!655018))))

(declare-fun b!1509984 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100665 (_ BitVec 32)) SeekEntryResult!12757)

(assert (=> b!1509984 (= e!843310 (= (seekEntry!0 (select (arr!48565 a!2804) j!70) a!2804 mask!2512) (Found!12757 j!70)))))

(declare-fun b!1509985 () Bool)

(declare-fun res!1029960 () Bool)

(assert (=> b!1509985 (=> (not res!1029960) (not e!843311))))

(declare-datatypes ((List!35228 0))(
  ( (Nil!35225) (Cons!35224 (h!36637 (_ BitVec 64)) (t!49929 List!35228)) )
))
(declare-fun arrayNoDuplicates!0 (array!100665 (_ BitVec 32) List!35228) Bool)

(assert (=> b!1509985 (= res!1029960 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35225))))

(assert (= (and start!128896 res!1029956) b!1509982))

(assert (= (and b!1509982 res!1029952) b!1509975))

(assert (= (and b!1509975 res!1029951) b!1509979))

(assert (= (and b!1509979 res!1029957) b!1509981))

(assert (= (and b!1509981 res!1029955) b!1509985))

(assert (= (and b!1509985 res!1029960) b!1509977))

(assert (= (and b!1509977 res!1029953) b!1509980))

(assert (= (and b!1509980 res!1029959) b!1509983))

(assert (= (and b!1509983 res!1029950) b!1509978))

(assert (= (and b!1509978 res!1029958) b!1509976))

(assert (= (and b!1509976 res!1029954) b!1509984))

(declare-fun m!1392573 () Bool)

(assert (=> b!1509980 m!1392573))

(assert (=> b!1509980 m!1392573))

(declare-fun m!1392575 () Bool)

(assert (=> b!1509980 m!1392575))

(assert (=> b!1509980 m!1392575))

(assert (=> b!1509980 m!1392573))

(declare-fun m!1392577 () Bool)

(assert (=> b!1509980 m!1392577))

(declare-fun m!1392579 () Bool)

(assert (=> b!1509981 m!1392579))

(declare-fun m!1392581 () Bool)

(assert (=> b!1509978 m!1392581))

(declare-fun m!1392583 () Bool)

(assert (=> b!1509978 m!1392583))

(assert (=> b!1509978 m!1392583))

(declare-fun m!1392585 () Bool)

(assert (=> b!1509978 m!1392585))

(assert (=> b!1509978 m!1392585))

(assert (=> b!1509978 m!1392583))

(declare-fun m!1392587 () Bool)

(assert (=> b!1509978 m!1392587))

(declare-fun m!1392589 () Bool)

(assert (=> b!1509975 m!1392589))

(assert (=> b!1509975 m!1392589))

(declare-fun m!1392591 () Bool)

(assert (=> b!1509975 m!1392591))

(declare-fun m!1392593 () Bool)

(assert (=> b!1509976 m!1392593))

(declare-fun m!1392595 () Bool)

(assert (=> b!1509976 m!1392595))

(assert (=> b!1509979 m!1392573))

(assert (=> b!1509979 m!1392573))

(declare-fun m!1392597 () Bool)

(assert (=> b!1509979 m!1392597))

(declare-fun m!1392599 () Bool)

(assert (=> b!1509985 m!1392599))

(assert (=> b!1509983 m!1392573))

(assert (=> b!1509983 m!1392573))

(declare-fun m!1392601 () Bool)

(assert (=> b!1509983 m!1392601))

(assert (=> b!1509984 m!1392573))

(assert (=> b!1509984 m!1392573))

(declare-fun m!1392603 () Bool)

(assert (=> b!1509984 m!1392603))

(declare-fun m!1392605 () Bool)

(assert (=> start!128896 m!1392605))

(declare-fun m!1392607 () Bool)

(assert (=> start!128896 m!1392607))

(push 1)

