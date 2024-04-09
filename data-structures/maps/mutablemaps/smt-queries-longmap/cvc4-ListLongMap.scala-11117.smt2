; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129902 () Bool)

(assert start!129902)

(declare-fun b!1524078 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun e!849665 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101368 0))(
  ( (array!101369 (arr!48909 (Array (_ BitVec 32) (_ BitVec 64))) (size!49460 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101368)

(declare-datatypes ((SeekEntryResult!13095 0))(
  ( (MissingZero!13095 (index!54774 (_ BitVec 32))) (Found!13095 (index!54775 (_ BitVec 32))) (Intermediate!13095 (undefined!13907 Bool) (index!54776 (_ BitVec 32)) (x!136470 (_ BitVec 32))) (Undefined!13095) (MissingVacant!13095 (index!54777 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101368 (_ BitVec 32)) SeekEntryResult!13095)

(assert (=> b!1524078 (= e!849665 (= (seekEntry!0 (select (arr!48909 a!2804) j!70) a!2804 mask!2512) (Found!13095 j!70)))))

(declare-fun b!1524079 () Bool)

(declare-fun res!1042875 () Bool)

(declare-fun e!849668 () Bool)

(assert (=> b!1524079 (=> (not res!1042875) (not e!849668))))

(declare-datatypes ((List!35572 0))(
  ( (Nil!35569) (Cons!35568 (h!36996 (_ BitVec 64)) (t!50273 List!35572)) )
))
(declare-fun arrayNoDuplicates!0 (array!101368 (_ BitVec 32) List!35572) Bool)

(assert (=> b!1524079 (= res!1042875 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35569))))

(declare-fun b!1524080 () Bool)

(declare-fun e!849666 () Bool)

(assert (=> b!1524080 (= e!849668 e!849666)))

(declare-fun res!1042878 () Bool)

(assert (=> b!1524080 (=> (not res!1042878) (not e!849666))))

(declare-fun lt!660175 () SeekEntryResult!13095)

(declare-fun lt!660174 () SeekEntryResult!13095)

(assert (=> b!1524080 (= res!1042878 (= lt!660175 lt!660174))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524080 (= lt!660174 (Intermediate!13095 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101368 (_ BitVec 32)) SeekEntryResult!13095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524080 (= lt!660175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48909 a!2804) j!70) mask!2512) (select (arr!48909 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524082 () Bool)

(declare-fun res!1042877 () Bool)

(assert (=> b!1524082 (=> (not res!1042877) (not e!849668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101368 (_ BitVec 32)) Bool)

(assert (=> b!1524082 (= res!1042877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524083 () Bool)

(declare-fun res!1042869 () Bool)

(assert (=> b!1524083 (=> (not res!1042869) (not e!849668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524083 (= res!1042869 (validKeyInArray!0 (select (arr!48909 a!2804) j!70)))))

(declare-fun b!1524084 () Bool)

(declare-fun res!1042873 () Bool)

(assert (=> b!1524084 (=> (not res!1042873) (not e!849668))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1524084 (= res!1042873 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49460 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49460 a!2804))))))

(declare-fun b!1524085 () Bool)

(declare-fun res!1042874 () Bool)

(assert (=> b!1524085 (=> (not res!1042874) (not e!849666))))

(assert (=> b!1524085 (= res!1042874 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48909 a!2804) j!70) a!2804 mask!2512) lt!660174))))

(declare-fun b!1524086 () Bool)

(declare-fun res!1042876 () Bool)

(assert (=> b!1524086 (=> (not res!1042876) (not e!849668))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1524086 (= res!1042876 (and (= (size!49460 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49460 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49460 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1042871 () Bool)

(assert (=> start!129902 (=> (not res!1042871) (not e!849668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129902 (= res!1042871 (validMask!0 mask!2512))))

(assert (=> start!129902 e!849668))

(assert (=> start!129902 true))

(declare-fun array_inv!37854 (array!101368) Bool)

(assert (=> start!129902 (array_inv!37854 a!2804)))

(declare-fun b!1524081 () Bool)

(assert (=> b!1524081 (= e!849666 (not true))))

(assert (=> b!1524081 e!849665))

(declare-fun res!1042868 () Bool)

(assert (=> b!1524081 (=> (not res!1042868) (not e!849665))))

(assert (=> b!1524081 (= res!1042868 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50930 0))(
  ( (Unit!50931) )
))
(declare-fun lt!660173 () Unit!50930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50930)

(assert (=> b!1524081 (= lt!660173 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524087 () Bool)

(declare-fun res!1042872 () Bool)

(assert (=> b!1524087 (=> (not res!1042872) (not e!849666))))

(assert (=> b!1524087 (= res!1042872 (= lt!660175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48909 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48909 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101369 (store (arr!48909 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49460 a!2804)) mask!2512)))))

(declare-fun b!1524088 () Bool)

(declare-fun res!1042870 () Bool)

(assert (=> b!1524088 (=> (not res!1042870) (not e!849668))))

(assert (=> b!1524088 (= res!1042870 (validKeyInArray!0 (select (arr!48909 a!2804) i!961)))))

(assert (= (and start!129902 res!1042871) b!1524086))

(assert (= (and b!1524086 res!1042876) b!1524088))

(assert (= (and b!1524088 res!1042870) b!1524083))

(assert (= (and b!1524083 res!1042869) b!1524082))

(assert (= (and b!1524082 res!1042877) b!1524079))

(assert (= (and b!1524079 res!1042875) b!1524084))

(assert (= (and b!1524084 res!1042873) b!1524080))

(assert (= (and b!1524080 res!1042878) b!1524085))

(assert (= (and b!1524085 res!1042874) b!1524087))

(assert (= (and b!1524087 res!1042872) b!1524081))

(assert (= (and b!1524081 res!1042868) b!1524078))

(declare-fun m!1407153 () Bool)

(assert (=> b!1524083 m!1407153))

(assert (=> b!1524083 m!1407153))

(declare-fun m!1407155 () Bool)

(assert (=> b!1524083 m!1407155))

(assert (=> b!1524078 m!1407153))

(assert (=> b!1524078 m!1407153))

(declare-fun m!1407157 () Bool)

(assert (=> b!1524078 m!1407157))

(declare-fun m!1407159 () Bool)

(assert (=> b!1524081 m!1407159))

(declare-fun m!1407161 () Bool)

(assert (=> b!1524081 m!1407161))

(declare-fun m!1407163 () Bool)

(assert (=> b!1524087 m!1407163))

(declare-fun m!1407165 () Bool)

(assert (=> b!1524087 m!1407165))

(assert (=> b!1524087 m!1407165))

(declare-fun m!1407167 () Bool)

(assert (=> b!1524087 m!1407167))

(assert (=> b!1524087 m!1407167))

(assert (=> b!1524087 m!1407165))

(declare-fun m!1407169 () Bool)

(assert (=> b!1524087 m!1407169))

(declare-fun m!1407171 () Bool)

(assert (=> b!1524082 m!1407171))

(declare-fun m!1407173 () Bool)

(assert (=> b!1524088 m!1407173))

(assert (=> b!1524088 m!1407173))

(declare-fun m!1407175 () Bool)

(assert (=> b!1524088 m!1407175))

(declare-fun m!1407177 () Bool)

(assert (=> start!129902 m!1407177))

(declare-fun m!1407179 () Bool)

(assert (=> start!129902 m!1407179))

(declare-fun m!1407181 () Bool)

(assert (=> b!1524079 m!1407181))

(assert (=> b!1524080 m!1407153))

(assert (=> b!1524080 m!1407153))

(declare-fun m!1407183 () Bool)

(assert (=> b!1524080 m!1407183))

(assert (=> b!1524080 m!1407183))

(assert (=> b!1524080 m!1407153))

(declare-fun m!1407185 () Bool)

(assert (=> b!1524080 m!1407185))

(assert (=> b!1524085 m!1407153))

(assert (=> b!1524085 m!1407153))

(declare-fun m!1407187 () Bool)

(assert (=> b!1524085 m!1407187))

(push 1)

(assert (not b!1524083))

(assert (not b!1524080))

