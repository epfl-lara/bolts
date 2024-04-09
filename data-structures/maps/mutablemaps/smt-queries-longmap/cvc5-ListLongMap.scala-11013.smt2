; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128956 () Bool)

(assert start!128956)

(declare-fun b!1510974 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100725 0))(
  ( (array!100726 (arr!48595 (Array (_ BitVec 32) (_ BitVec 64))) (size!49146 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100725)

(declare-fun e!843679 () Bool)

(declare-datatypes ((SeekEntryResult!12787 0))(
  ( (MissingZero!12787 (index!53542 (_ BitVec 32))) (Found!12787 (index!53543 (_ BitVec 32))) (Intermediate!12787 (undefined!13599 Bool) (index!53544 (_ BitVec 32)) (x!135294 (_ BitVec 32))) (Undefined!12787) (MissingVacant!12787 (index!53545 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100725 (_ BitVec 32)) SeekEntryResult!12787)

(assert (=> b!1510974 (= e!843679 (= (seekEntry!0 (select (arr!48595 a!2804) j!70) a!2804 mask!2512) (Found!12787 j!70)))))

(declare-fun b!1510975 () Bool)

(declare-fun res!1030950 () Bool)

(declare-fun e!843680 () Bool)

(assert (=> b!1510975 (=> (not res!1030950) (not e!843680))))

(declare-fun lt!655286 () SeekEntryResult!12787)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100725 (_ BitVec 32)) SeekEntryResult!12787)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510975 (= res!1030950 (= lt!655286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48595 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48595 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100726 (store (arr!48595 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49146 a!2804)) mask!2512)))))

(declare-fun b!1510976 () Bool)

(declare-fun res!1030957 () Bool)

(declare-fun e!843678 () Bool)

(assert (=> b!1510976 (=> (not res!1030957) (not e!843678))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510976 (= res!1030957 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49146 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49146 a!2804))))))

(declare-fun b!1510977 () Bool)

(assert (=> b!1510977 (= e!843678 e!843680)))

(declare-fun res!1030959 () Bool)

(assert (=> b!1510977 (=> (not res!1030959) (not e!843680))))

(declare-fun lt!655287 () SeekEntryResult!12787)

(assert (=> b!1510977 (= res!1030959 (= lt!655286 lt!655287))))

(assert (=> b!1510977 (= lt!655287 (Intermediate!12787 false resIndex!21 resX!21))))

(assert (=> b!1510977 (= lt!655286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48595 a!2804) j!70) mask!2512) (select (arr!48595 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510978 () Bool)

(declare-fun res!1030955 () Bool)

(assert (=> b!1510978 (=> (not res!1030955) (not e!843678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510978 (= res!1030955 (validKeyInArray!0 (select (arr!48595 a!2804) j!70)))))

(declare-fun b!1510979 () Bool)

(assert (=> b!1510979 (= e!843680 (not true))))

(assert (=> b!1510979 e!843679))

(declare-fun res!1030951 () Bool)

(assert (=> b!1510979 (=> (not res!1030951) (not e!843679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100725 (_ BitVec 32)) Bool)

(assert (=> b!1510979 (= res!1030951 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50398 0))(
  ( (Unit!50399) )
))
(declare-fun lt!655288 () Unit!50398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50398)

(assert (=> b!1510979 (= lt!655288 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510980 () Bool)

(declare-fun res!1030949 () Bool)

(assert (=> b!1510980 (=> (not res!1030949) (not e!843678))))

(assert (=> b!1510980 (= res!1030949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510981 () Bool)

(declare-fun res!1030952 () Bool)

(assert (=> b!1510981 (=> (not res!1030952) (not e!843678))))

(declare-datatypes ((List!35258 0))(
  ( (Nil!35255) (Cons!35254 (h!36667 (_ BitVec 64)) (t!49959 List!35258)) )
))
(declare-fun arrayNoDuplicates!0 (array!100725 (_ BitVec 32) List!35258) Bool)

(assert (=> b!1510981 (= res!1030952 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35255))))

(declare-fun res!1030954 () Bool)

(assert (=> start!128956 (=> (not res!1030954) (not e!843678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128956 (= res!1030954 (validMask!0 mask!2512))))

(assert (=> start!128956 e!843678))

(assert (=> start!128956 true))

(declare-fun array_inv!37540 (array!100725) Bool)

(assert (=> start!128956 (array_inv!37540 a!2804)))

(declare-fun b!1510982 () Bool)

(declare-fun res!1030958 () Bool)

(assert (=> b!1510982 (=> (not res!1030958) (not e!843678))))

(assert (=> b!1510982 (= res!1030958 (and (= (size!49146 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49146 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49146 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510983 () Bool)

(declare-fun res!1030953 () Bool)

(assert (=> b!1510983 (=> (not res!1030953) (not e!843678))))

(assert (=> b!1510983 (= res!1030953 (validKeyInArray!0 (select (arr!48595 a!2804) i!961)))))

(declare-fun b!1510984 () Bool)

(declare-fun res!1030956 () Bool)

(assert (=> b!1510984 (=> (not res!1030956) (not e!843680))))

(assert (=> b!1510984 (= res!1030956 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48595 a!2804) j!70) a!2804 mask!2512) lt!655287))))

(assert (= (and start!128956 res!1030954) b!1510982))

(assert (= (and b!1510982 res!1030958) b!1510983))

(assert (= (and b!1510983 res!1030953) b!1510978))

(assert (= (and b!1510978 res!1030955) b!1510980))

(assert (= (and b!1510980 res!1030949) b!1510981))

(assert (= (and b!1510981 res!1030952) b!1510976))

(assert (= (and b!1510976 res!1030957) b!1510977))

(assert (= (and b!1510977 res!1030959) b!1510984))

(assert (= (and b!1510984 res!1030956) b!1510975))

(assert (= (and b!1510975 res!1030950) b!1510979))

(assert (= (and b!1510979 res!1030951) b!1510974))

(declare-fun m!1393683 () Bool)

(assert (=> b!1510977 m!1393683))

(assert (=> b!1510977 m!1393683))

(declare-fun m!1393685 () Bool)

(assert (=> b!1510977 m!1393685))

(assert (=> b!1510977 m!1393685))

(assert (=> b!1510977 m!1393683))

(declare-fun m!1393687 () Bool)

(assert (=> b!1510977 m!1393687))

(assert (=> b!1510984 m!1393683))

(assert (=> b!1510984 m!1393683))

(declare-fun m!1393689 () Bool)

(assert (=> b!1510984 m!1393689))

(declare-fun m!1393691 () Bool)

(assert (=> b!1510981 m!1393691))

(declare-fun m!1393693 () Bool)

(assert (=> b!1510979 m!1393693))

(declare-fun m!1393695 () Bool)

(assert (=> b!1510979 m!1393695))

(assert (=> b!1510974 m!1393683))

(assert (=> b!1510974 m!1393683))

(declare-fun m!1393697 () Bool)

(assert (=> b!1510974 m!1393697))

(declare-fun m!1393699 () Bool)

(assert (=> b!1510975 m!1393699))

(declare-fun m!1393701 () Bool)

(assert (=> b!1510975 m!1393701))

(assert (=> b!1510975 m!1393701))

(declare-fun m!1393703 () Bool)

(assert (=> b!1510975 m!1393703))

(assert (=> b!1510975 m!1393703))

(assert (=> b!1510975 m!1393701))

(declare-fun m!1393705 () Bool)

(assert (=> b!1510975 m!1393705))

(declare-fun m!1393707 () Bool)

(assert (=> b!1510980 m!1393707))

(declare-fun m!1393709 () Bool)

(assert (=> start!128956 m!1393709))

(declare-fun m!1393711 () Bool)

(assert (=> start!128956 m!1393711))

(declare-fun m!1393713 () Bool)

(assert (=> b!1510983 m!1393713))

(assert (=> b!1510983 m!1393713))

(declare-fun m!1393715 () Bool)

(assert (=> b!1510983 m!1393715))

(assert (=> b!1510978 m!1393683))

(assert (=> b!1510978 m!1393683))

(declare-fun m!1393717 () Bool)

(assert (=> b!1510978 m!1393717))

(push 1)

