; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129302 () Bool)

(assert start!129302)

(declare-fun b!1517716 () Bool)

(declare-fun e!846768 () Bool)

(assert (=> b!1517716 (= e!846768 true)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101071 0))(
  ( (array!101072 (arr!48768 (Array (_ BitVec 32) (_ BitVec 64))) (size!49319 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101071)

(declare-fun lt!657871 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12960 0))(
  ( (MissingZero!12960 (index!54234 (_ BitVec 32))) (Found!12960 (index!54235 (_ BitVec 32))) (Intermediate!12960 (undefined!13772 Bool) (index!54236 (_ BitVec 32)) (x!135923 (_ BitVec 32))) (Undefined!12960) (MissingVacant!12960 (index!54237 (_ BitVec 32))) )
))
(declare-fun lt!657870 () SeekEntryResult!12960)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101071 (_ BitVec 32)) SeekEntryResult!12960)

(assert (=> b!1517716 (= lt!657870 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657871 (select (arr!48768 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!846772 () Bool)

(declare-fun b!1517717 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101071 (_ BitVec 32)) SeekEntryResult!12960)

(assert (=> b!1517717 (= e!846772 (= (seekEntry!0 (select (arr!48768 a!2804) j!70) a!2804 mask!2512) (Found!12960 j!70)))))

(declare-fun b!1517718 () Bool)

(declare-fun e!846773 () Bool)

(declare-fun e!846771 () Bool)

(assert (=> b!1517718 (= e!846773 e!846771)))

(declare-fun res!1037694 () Bool)

(assert (=> b!1517718 (=> (not res!1037694) (not e!846771))))

(declare-fun lt!657868 () SeekEntryResult!12960)

(declare-fun lt!657869 () SeekEntryResult!12960)

(assert (=> b!1517718 (= res!1037694 (= lt!657868 lt!657869))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517718 (= lt!657869 (Intermediate!12960 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517718 (= lt!657868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48768 a!2804) j!70) mask!2512) (select (arr!48768 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517719 () Bool)

(declare-fun res!1037691 () Bool)

(assert (=> b!1517719 (=> (not res!1037691) (not e!846773))))

(declare-datatypes ((List!35431 0))(
  ( (Nil!35428) (Cons!35427 (h!36840 (_ BitVec 64)) (t!50132 List!35431)) )
))
(declare-fun arrayNoDuplicates!0 (array!101071 (_ BitVec 32) List!35431) Bool)

(assert (=> b!1517719 (= res!1037691 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35428))))

(declare-fun b!1517720 () Bool)

(declare-fun res!1037696 () Bool)

(assert (=> b!1517720 (=> (not res!1037696) (not e!846773))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517720 (= res!1037696 (and (= (size!49319 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49319 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49319 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517721 () Bool)

(declare-fun e!846769 () Bool)

(assert (=> b!1517721 (= e!846769 e!846768)))

(declare-fun res!1037703 () Bool)

(assert (=> b!1517721 (=> res!1037703 e!846768)))

(assert (=> b!1517721 (= res!1037703 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657871 #b00000000000000000000000000000000) (bvsge lt!657871 (size!49319 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517721 (= lt!657871 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517722 () Bool)

(declare-fun res!1037698 () Bool)

(assert (=> b!1517722 (=> (not res!1037698) (not e!846771))))

(assert (=> b!1517722 (= res!1037698 (= lt!657868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48768 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48768 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101072 (store (arr!48768 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49319 a!2804)) mask!2512)))))

(declare-fun b!1517723 () Bool)

(declare-fun res!1037700 () Bool)

(assert (=> b!1517723 (=> (not res!1037700) (not e!846773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517723 (= res!1037700 (validKeyInArray!0 (select (arr!48768 a!2804) i!961)))))

(declare-fun b!1517724 () Bool)

(declare-fun res!1037692 () Bool)

(assert (=> b!1517724 (=> (not res!1037692) (not e!846773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101071 (_ BitVec 32)) Bool)

(assert (=> b!1517724 (= res!1037692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517725 () Bool)

(declare-fun res!1037693 () Bool)

(assert (=> b!1517725 (=> (not res!1037693) (not e!846773))))

(assert (=> b!1517725 (= res!1037693 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49319 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49319 a!2804))))))

(declare-fun b!1517726 () Bool)

(declare-fun res!1037701 () Bool)

(assert (=> b!1517726 (=> (not res!1037701) (not e!846773))))

(assert (=> b!1517726 (= res!1037701 (validKeyInArray!0 (select (arr!48768 a!2804) j!70)))))

(declare-fun b!1517727 () Bool)

(declare-fun res!1037695 () Bool)

(assert (=> b!1517727 (=> (not res!1037695) (not e!846771))))

(assert (=> b!1517727 (= res!1037695 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48768 a!2804) j!70) a!2804 mask!2512) lt!657869))))

(declare-fun b!1517728 () Bool)

(assert (=> b!1517728 (= e!846771 (not e!846769))))

(declare-fun res!1037699 () Bool)

(assert (=> b!1517728 (=> res!1037699 e!846769)))

(assert (=> b!1517728 (= res!1037699 (or (not (= (select (arr!48768 a!2804) j!70) (select (store (arr!48768 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517728 e!846772))

(declare-fun res!1037697 () Bool)

(assert (=> b!1517728 (=> (not res!1037697) (not e!846772))))

(assert (=> b!1517728 (= res!1037697 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50744 0))(
  ( (Unit!50745) )
))
(declare-fun lt!657867 () Unit!50744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50744)

(assert (=> b!1517728 (= lt!657867 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1037702 () Bool)

(assert (=> start!129302 (=> (not res!1037702) (not e!846773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129302 (= res!1037702 (validMask!0 mask!2512))))

(assert (=> start!129302 e!846773))

(assert (=> start!129302 true))

(declare-fun array_inv!37713 (array!101071) Bool)

(assert (=> start!129302 (array_inv!37713 a!2804)))

(assert (= (and start!129302 res!1037702) b!1517720))

(assert (= (and b!1517720 res!1037696) b!1517723))

(assert (= (and b!1517723 res!1037700) b!1517726))

(assert (= (and b!1517726 res!1037701) b!1517724))

(assert (= (and b!1517724 res!1037692) b!1517719))

(assert (= (and b!1517719 res!1037691) b!1517725))

(assert (= (and b!1517725 res!1037693) b!1517718))

(assert (= (and b!1517718 res!1037694) b!1517727))

(assert (= (and b!1517727 res!1037695) b!1517722))

(assert (= (and b!1517722 res!1037698) b!1517728))

(assert (= (and b!1517728 res!1037697) b!1517717))

(assert (= (and b!1517728 (not res!1037699)) b!1517721))

(assert (= (and b!1517721 (not res!1037703)) b!1517716))

(declare-fun m!1401071 () Bool)

(assert (=> b!1517719 m!1401071))

(declare-fun m!1401073 () Bool)

(assert (=> b!1517723 m!1401073))

(assert (=> b!1517723 m!1401073))

(declare-fun m!1401075 () Bool)

(assert (=> b!1517723 m!1401075))

(declare-fun m!1401077 () Bool)

(assert (=> b!1517722 m!1401077))

(declare-fun m!1401079 () Bool)

(assert (=> b!1517722 m!1401079))

(assert (=> b!1517722 m!1401079))

(declare-fun m!1401081 () Bool)

(assert (=> b!1517722 m!1401081))

(assert (=> b!1517722 m!1401081))

(assert (=> b!1517722 m!1401079))

(declare-fun m!1401083 () Bool)

(assert (=> b!1517722 m!1401083))

(declare-fun m!1401085 () Bool)

(assert (=> b!1517718 m!1401085))

(assert (=> b!1517718 m!1401085))

(declare-fun m!1401087 () Bool)

(assert (=> b!1517718 m!1401087))

(assert (=> b!1517718 m!1401087))

(assert (=> b!1517718 m!1401085))

(declare-fun m!1401089 () Bool)

(assert (=> b!1517718 m!1401089))

(assert (=> b!1517727 m!1401085))

(assert (=> b!1517727 m!1401085))

(declare-fun m!1401091 () Bool)

(assert (=> b!1517727 m!1401091))

(assert (=> b!1517726 m!1401085))

(assert (=> b!1517726 m!1401085))

(declare-fun m!1401093 () Bool)

(assert (=> b!1517726 m!1401093))

(declare-fun m!1401095 () Bool)

(assert (=> start!129302 m!1401095))

(declare-fun m!1401097 () Bool)

(assert (=> start!129302 m!1401097))

(assert (=> b!1517728 m!1401085))

(declare-fun m!1401099 () Bool)

(assert (=> b!1517728 m!1401099))

(assert (=> b!1517728 m!1401077))

(assert (=> b!1517728 m!1401079))

(declare-fun m!1401101 () Bool)

(assert (=> b!1517728 m!1401101))

(assert (=> b!1517717 m!1401085))

(assert (=> b!1517717 m!1401085))

(declare-fun m!1401103 () Bool)

(assert (=> b!1517717 m!1401103))

(declare-fun m!1401105 () Bool)

(assert (=> b!1517721 m!1401105))

(declare-fun m!1401107 () Bool)

(assert (=> b!1517724 m!1401107))

(assert (=> b!1517716 m!1401085))

(assert (=> b!1517716 m!1401085))

(declare-fun m!1401109 () Bool)

(assert (=> b!1517716 m!1401109))

(push 1)

(assert (not b!1517722))

(assert (not start!129302))

