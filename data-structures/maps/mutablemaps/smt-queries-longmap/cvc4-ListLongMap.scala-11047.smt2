; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129164 () Bool)

(assert start!129164)

(declare-fun b!1515088 () Bool)

(declare-fun e!845531 () Bool)

(declare-fun e!845526 () Bool)

(assert (=> b!1515088 (= e!845531 e!845526)))

(declare-fun res!1035074 () Bool)

(assert (=> b!1515088 (=> (not res!1035074) (not e!845526))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!656590 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12891 0))(
  ( (MissingZero!12891 (index!53958 (_ BitVec 32))) (Found!12891 (index!53959 (_ BitVec 32))) (Intermediate!12891 (undefined!13703 Bool) (index!53960 (_ BitVec 32)) (x!135670 (_ BitVec 32))) (Undefined!12891) (MissingVacant!12891 (index!53961 (_ BitVec 32))) )
))
(declare-fun lt!656593 () SeekEntryResult!12891)

(declare-datatypes ((array!100933 0))(
  ( (array!100934 (arr!48699 (Array (_ BitVec 32) (_ BitVec 64))) (size!49250 (_ BitVec 32))) )
))
(declare-fun lt!656584 () array!100933)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100933 (_ BitVec 32)) SeekEntryResult!12891)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515088 (= res!1035074 (= lt!656593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656590 mask!2512) lt!656590 lt!656584 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100933)

(assert (=> b!1515088 (= lt!656590 (select (store (arr!48699 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515088 (= lt!656584 (array!100934 (store (arr!48699 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49250 a!2804)))))

(declare-fun b!1515089 () Bool)

(declare-fun res!1035065 () Bool)

(declare-fun e!845525 () Bool)

(assert (=> b!1515089 (=> (not res!1035065) (not e!845525))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515089 (= res!1035065 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49250 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49250 a!2804))))))

(declare-fun res!1035070 () Bool)

(assert (=> start!129164 (=> (not res!1035070) (not e!845525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129164 (= res!1035070 (validMask!0 mask!2512))))

(assert (=> start!129164 e!845525))

(assert (=> start!129164 true))

(declare-fun array_inv!37644 (array!100933) Bool)

(assert (=> start!129164 (array_inv!37644 a!2804)))

(declare-fun b!1515090 () Bool)

(declare-fun res!1035075 () Bool)

(assert (=> b!1515090 (=> (not res!1035075) (not e!845531))))

(declare-fun lt!656585 () SeekEntryResult!12891)

(assert (=> b!1515090 (= res!1035075 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48699 a!2804) j!70) a!2804 mask!2512) lt!656585))))

(declare-fun b!1515091 () Bool)

(declare-fun e!845527 () Bool)

(declare-fun e!845530 () Bool)

(assert (=> b!1515091 (= e!845527 e!845530)))

(declare-fun res!1035063 () Bool)

(assert (=> b!1515091 (=> res!1035063 e!845530)))

(declare-fun lt!656587 () SeekEntryResult!12891)

(assert (=> b!1515091 (= res!1035063 (not (= lt!656587 (Found!12891 j!70))))))

(declare-fun lt!656591 () SeekEntryResult!12891)

(declare-fun lt!656592 () SeekEntryResult!12891)

(assert (=> b!1515091 (= lt!656591 lt!656592)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100933 (_ BitVec 32)) SeekEntryResult!12891)

(assert (=> b!1515091 (= lt!656592 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656590 lt!656584 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100933 (_ BitVec 32)) SeekEntryResult!12891)

(assert (=> b!1515091 (= lt!656591 (seekEntryOrOpen!0 lt!656590 lt!656584 mask!2512))))

(declare-fun lt!656588 () SeekEntryResult!12891)

(assert (=> b!1515091 (= lt!656588 lt!656587)))

(assert (=> b!1515091 (= lt!656587 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48699 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515091 (= lt!656588 (seekEntryOrOpen!0 (select (arr!48699 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515092 () Bool)

(declare-fun res!1035064 () Bool)

(assert (=> b!1515092 (=> (not res!1035064) (not e!845525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515092 (= res!1035064 (validKeyInArray!0 (select (arr!48699 a!2804) j!70)))))

(declare-fun b!1515093 () Bool)

(declare-fun res!1035071 () Bool)

(assert (=> b!1515093 (=> (not res!1035071) (not e!845525))))

(declare-datatypes ((List!35362 0))(
  ( (Nil!35359) (Cons!35358 (h!36771 (_ BitVec 64)) (t!50063 List!35362)) )
))
(declare-fun arrayNoDuplicates!0 (array!100933 (_ BitVec 32) List!35362) Bool)

(assert (=> b!1515093 (= res!1035071 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35359))))

(declare-fun b!1515094 () Bool)

(declare-fun res!1035068 () Bool)

(assert (=> b!1515094 (=> (not res!1035068) (not e!845525))))

(assert (=> b!1515094 (= res!1035068 (validKeyInArray!0 (select (arr!48699 a!2804) i!961)))))

(declare-fun b!1515095 () Bool)

(declare-fun e!845529 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100933 (_ BitVec 32)) SeekEntryResult!12891)

(assert (=> b!1515095 (= e!845529 (= (seekEntry!0 (select (arr!48699 a!2804) j!70) a!2804 mask!2512) (Found!12891 j!70)))))

(declare-fun b!1515096 () Bool)

(assert (=> b!1515096 (= e!845525 e!845531)))

(declare-fun res!1035067 () Bool)

(assert (=> b!1515096 (=> (not res!1035067) (not e!845531))))

(assert (=> b!1515096 (= res!1035067 (= lt!656593 lt!656585))))

(assert (=> b!1515096 (= lt!656585 (Intermediate!12891 false resIndex!21 resX!21))))

(assert (=> b!1515096 (= lt!656593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48699 a!2804) j!70) mask!2512) (select (arr!48699 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515097 () Bool)

(assert (=> b!1515097 (= e!845530 true)))

(assert (=> b!1515097 (= lt!656592 lt!656587)))

(declare-datatypes ((Unit!50606 0))(
  ( (Unit!50607) )
))
(declare-fun lt!656589 () Unit!50606)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50606)

(assert (=> b!1515097 (= lt!656589 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515098 () Bool)

(assert (=> b!1515098 (= e!845526 (not e!845527))))

(declare-fun res!1035069 () Bool)

(assert (=> b!1515098 (=> res!1035069 e!845527)))

(assert (=> b!1515098 (= res!1035069 (or (not (= (select (arr!48699 a!2804) j!70) lt!656590)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48699 a!2804) index!487) (select (arr!48699 a!2804) j!70)) (not (= (select (arr!48699 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515098 e!845529))

(declare-fun res!1035072 () Bool)

(assert (=> b!1515098 (=> (not res!1035072) (not e!845529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100933 (_ BitVec 32)) Bool)

(assert (=> b!1515098 (= res!1035072 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656586 () Unit!50606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50606)

(assert (=> b!1515098 (= lt!656586 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515099 () Bool)

(declare-fun res!1035073 () Bool)

(assert (=> b!1515099 (=> (not res!1035073) (not e!845525))))

(assert (=> b!1515099 (= res!1035073 (and (= (size!49250 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49250 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49250 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515100 () Bool)

(declare-fun res!1035066 () Bool)

(assert (=> b!1515100 (=> (not res!1035066) (not e!845525))))

(assert (=> b!1515100 (= res!1035066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129164 res!1035070) b!1515099))

(assert (= (and b!1515099 res!1035073) b!1515094))

(assert (= (and b!1515094 res!1035068) b!1515092))

(assert (= (and b!1515092 res!1035064) b!1515100))

(assert (= (and b!1515100 res!1035066) b!1515093))

(assert (= (and b!1515093 res!1035071) b!1515089))

(assert (= (and b!1515089 res!1035065) b!1515096))

(assert (= (and b!1515096 res!1035067) b!1515090))

(assert (= (and b!1515090 res!1035075) b!1515088))

(assert (= (and b!1515088 res!1035074) b!1515098))

(assert (= (and b!1515098 res!1035072) b!1515095))

(assert (= (and b!1515098 (not res!1035069)) b!1515091))

(assert (= (and b!1515091 (not res!1035063)) b!1515097))

(declare-fun m!1398177 () Bool)

(assert (=> b!1515095 m!1398177))

(assert (=> b!1515095 m!1398177))

(declare-fun m!1398179 () Bool)

(assert (=> b!1515095 m!1398179))

(declare-fun m!1398181 () Bool)

(assert (=> start!129164 m!1398181))

(declare-fun m!1398183 () Bool)

(assert (=> start!129164 m!1398183))

(assert (=> b!1515092 m!1398177))

(assert (=> b!1515092 m!1398177))

(declare-fun m!1398185 () Bool)

(assert (=> b!1515092 m!1398185))

(declare-fun m!1398187 () Bool)

(assert (=> b!1515094 m!1398187))

(assert (=> b!1515094 m!1398187))

(declare-fun m!1398189 () Bool)

(assert (=> b!1515094 m!1398189))

(declare-fun m!1398191 () Bool)

(assert (=> b!1515100 m!1398191))

(declare-fun m!1398193 () Bool)

(assert (=> b!1515088 m!1398193))

(assert (=> b!1515088 m!1398193))

(declare-fun m!1398195 () Bool)

(assert (=> b!1515088 m!1398195))

(declare-fun m!1398197 () Bool)

(assert (=> b!1515088 m!1398197))

(declare-fun m!1398199 () Bool)

(assert (=> b!1515088 m!1398199))

(declare-fun m!1398201 () Bool)

(assert (=> b!1515097 m!1398201))

(declare-fun m!1398203 () Bool)

(assert (=> b!1515093 m!1398203))

(assert (=> b!1515090 m!1398177))

(assert (=> b!1515090 m!1398177))

(declare-fun m!1398205 () Bool)

(assert (=> b!1515090 m!1398205))

(assert (=> b!1515098 m!1398177))

(declare-fun m!1398207 () Bool)

(assert (=> b!1515098 m!1398207))

(declare-fun m!1398209 () Bool)

(assert (=> b!1515098 m!1398209))

(declare-fun m!1398211 () Bool)

(assert (=> b!1515098 m!1398211))

(assert (=> b!1515091 m!1398177))

(declare-fun m!1398213 () Bool)

(assert (=> b!1515091 m!1398213))

(assert (=> b!1515091 m!1398177))

(assert (=> b!1515091 m!1398177))

(declare-fun m!1398215 () Bool)

(assert (=> b!1515091 m!1398215))

(declare-fun m!1398217 () Bool)

(assert (=> b!1515091 m!1398217))

(declare-fun m!1398219 () Bool)

(assert (=> b!1515091 m!1398219))

(assert (=> b!1515096 m!1398177))

(assert (=> b!1515096 m!1398177))

(declare-fun m!1398221 () Bool)

(assert (=> b!1515096 m!1398221))

(assert (=> b!1515096 m!1398221))

(assert (=> b!1515096 m!1398177))

(declare-fun m!1398223 () Bool)

(assert (=> b!1515096 m!1398223))

(push 1)

(assert (not b!1515095))

(assert (not start!129164))

(assert (not b!1515094))

(assert (not b!1515096))

(assert (not b!1515093))

(assert (not b!1515100))

(assert (not b!1515090))

(assert (not b!1515088))

(assert (not b!1515098))

(assert (not b!1515092))

(assert (not b!1515097))

(assert (not b!1515091))

(check-sat)

(pop 1)

