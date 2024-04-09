; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128964 () Bool)

(assert start!128964)

(declare-fun res!1031090 () Bool)

(declare-fun e!843727 () Bool)

(assert (=> start!128964 (=> (not res!1031090) (not e!843727))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128964 (= res!1031090 (validMask!0 mask!2512))))

(assert (=> start!128964 e!843727))

(assert (=> start!128964 true))

(declare-datatypes ((array!100733 0))(
  ( (array!100734 (arr!48599 (Array (_ BitVec 32) (_ BitVec 64))) (size!49150 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100733)

(declare-fun array_inv!37544 (array!100733) Bool)

(assert (=> start!128964 (array_inv!37544 a!2804)))

(declare-fun b!1511106 () Bool)

(declare-fun e!843726 () Bool)

(assert (=> b!1511106 (= e!843727 e!843726)))

(declare-fun res!1031086 () Bool)

(assert (=> b!1511106 (=> (not res!1031086) (not e!843726))))

(declare-datatypes ((SeekEntryResult!12791 0))(
  ( (MissingZero!12791 (index!53558 (_ BitVec 32))) (Found!12791 (index!53559 (_ BitVec 32))) (Intermediate!12791 (undefined!13603 Bool) (index!53560 (_ BitVec 32)) (x!135306 (_ BitVec 32))) (Undefined!12791) (MissingVacant!12791 (index!53561 (_ BitVec 32))) )
))
(declare-fun lt!655322 () SeekEntryResult!12791)

(declare-fun lt!655323 () SeekEntryResult!12791)

(assert (=> b!1511106 (= res!1031086 (= lt!655322 lt!655323))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511106 (= lt!655323 (Intermediate!12791 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100733 (_ BitVec 32)) SeekEntryResult!12791)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511106 (= lt!655322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48599 a!2804) j!70) mask!2512) (select (arr!48599 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511107 () Bool)

(declare-fun res!1031089 () Bool)

(assert (=> b!1511107 (=> (not res!1031089) (not e!843726))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511107 (= res!1031089 (= lt!655322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48599 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48599 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100734 (store (arr!48599 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49150 a!2804)) mask!2512)))))

(declare-fun b!1511108 () Bool)

(declare-fun res!1031082 () Bool)

(assert (=> b!1511108 (=> (not res!1031082) (not e!843726))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511108 (= res!1031082 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48599 a!2804) j!70) a!2804 mask!2512) lt!655323))))

(declare-fun b!1511109 () Bool)

(declare-fun res!1031081 () Bool)

(assert (=> b!1511109 (=> (not res!1031081) (not e!843727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511109 (= res!1031081 (validKeyInArray!0 (select (arr!48599 a!2804) j!70)))))

(declare-fun b!1511110 () Bool)

(declare-fun res!1031091 () Bool)

(assert (=> b!1511110 (=> (not res!1031091) (not e!843727))))

(declare-datatypes ((List!35262 0))(
  ( (Nil!35259) (Cons!35258 (h!36671 (_ BitVec 64)) (t!49963 List!35262)) )
))
(declare-fun arrayNoDuplicates!0 (array!100733 (_ BitVec 32) List!35262) Bool)

(assert (=> b!1511110 (= res!1031091 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35259))))

(declare-fun b!1511111 () Bool)

(declare-fun res!1031083 () Bool)

(assert (=> b!1511111 (=> (not res!1031083) (not e!843727))))

(assert (=> b!1511111 (= res!1031083 (validKeyInArray!0 (select (arr!48599 a!2804) i!961)))))

(declare-fun b!1511112 () Bool)

(declare-fun res!1031084 () Bool)

(assert (=> b!1511112 (=> (not res!1031084) (not e!843727))))

(assert (=> b!1511112 (= res!1031084 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49150 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49150 a!2804))))))

(declare-fun e!843728 () Bool)

(declare-fun b!1511113 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100733 (_ BitVec 32)) SeekEntryResult!12791)

(assert (=> b!1511113 (= e!843728 (= (seekEntry!0 (select (arr!48599 a!2804) j!70) a!2804 mask!2512) (Found!12791 j!70)))))

(declare-fun b!1511114 () Bool)

(assert (=> b!1511114 (= e!843726 (not (or (not (= (select (arr!48599 a!2804) j!70) (select (store (arr!48599 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48599 a!2804) index!487) (select (arr!48599 a!2804) j!70)) (not (= (select (arr!48599 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1511114 e!843728))

(declare-fun res!1031085 () Bool)

(assert (=> b!1511114 (=> (not res!1031085) (not e!843728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100733 (_ BitVec 32)) Bool)

(assert (=> b!1511114 (= res!1031085 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50406 0))(
  ( (Unit!50407) )
))
(declare-fun lt!655324 () Unit!50406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50406)

(assert (=> b!1511114 (= lt!655324 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511115 () Bool)

(declare-fun res!1031087 () Bool)

(assert (=> b!1511115 (=> (not res!1031087) (not e!843727))))

(assert (=> b!1511115 (= res!1031087 (and (= (size!49150 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49150 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49150 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511116 () Bool)

(declare-fun res!1031088 () Bool)

(assert (=> b!1511116 (=> (not res!1031088) (not e!843727))))

(assert (=> b!1511116 (= res!1031088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128964 res!1031090) b!1511115))

(assert (= (and b!1511115 res!1031087) b!1511111))

(assert (= (and b!1511111 res!1031083) b!1511109))

(assert (= (and b!1511109 res!1031081) b!1511116))

(assert (= (and b!1511116 res!1031088) b!1511110))

(assert (= (and b!1511110 res!1031091) b!1511112))

(assert (= (and b!1511112 res!1031084) b!1511106))

(assert (= (and b!1511106 res!1031086) b!1511108))

(assert (= (and b!1511108 res!1031082) b!1511107))

(assert (= (and b!1511107 res!1031089) b!1511114))

(assert (= (and b!1511114 res!1031085) b!1511113))

(declare-fun m!1393829 () Bool)

(assert (=> start!128964 m!1393829))

(declare-fun m!1393831 () Bool)

(assert (=> start!128964 m!1393831))

(declare-fun m!1393833 () Bool)

(assert (=> b!1511106 m!1393833))

(assert (=> b!1511106 m!1393833))

(declare-fun m!1393835 () Bool)

(assert (=> b!1511106 m!1393835))

(assert (=> b!1511106 m!1393835))

(assert (=> b!1511106 m!1393833))

(declare-fun m!1393837 () Bool)

(assert (=> b!1511106 m!1393837))

(assert (=> b!1511108 m!1393833))

(assert (=> b!1511108 m!1393833))

(declare-fun m!1393839 () Bool)

(assert (=> b!1511108 m!1393839))

(assert (=> b!1511113 m!1393833))

(assert (=> b!1511113 m!1393833))

(declare-fun m!1393841 () Bool)

(assert (=> b!1511113 m!1393841))

(declare-fun m!1393843 () Bool)

(assert (=> b!1511110 m!1393843))

(declare-fun m!1393845 () Bool)

(assert (=> b!1511111 m!1393845))

(assert (=> b!1511111 m!1393845))

(declare-fun m!1393847 () Bool)

(assert (=> b!1511111 m!1393847))

(assert (=> b!1511114 m!1393833))

(declare-fun m!1393849 () Bool)

(assert (=> b!1511114 m!1393849))

(declare-fun m!1393851 () Bool)

(assert (=> b!1511114 m!1393851))

(declare-fun m!1393853 () Bool)

(assert (=> b!1511114 m!1393853))

(declare-fun m!1393855 () Bool)

(assert (=> b!1511114 m!1393855))

(declare-fun m!1393857 () Bool)

(assert (=> b!1511114 m!1393857))

(declare-fun m!1393859 () Bool)

(assert (=> b!1511116 m!1393859))

(assert (=> b!1511107 m!1393851))

(assert (=> b!1511107 m!1393855))

(assert (=> b!1511107 m!1393855))

(declare-fun m!1393861 () Bool)

(assert (=> b!1511107 m!1393861))

(assert (=> b!1511107 m!1393861))

(assert (=> b!1511107 m!1393855))

(declare-fun m!1393863 () Bool)

(assert (=> b!1511107 m!1393863))

(assert (=> b!1511109 m!1393833))

(assert (=> b!1511109 m!1393833))

(declare-fun m!1393865 () Bool)

(assert (=> b!1511109 m!1393865))

(check-sat (not b!1511114) (not b!1511110) (not b!1511113) (not b!1511107) (not start!128964) (not b!1511116) (not b!1511106) (not b!1511109) (not b!1511111) (not b!1511108))
(check-sat)
