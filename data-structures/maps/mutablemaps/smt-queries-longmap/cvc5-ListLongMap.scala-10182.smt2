; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120058 () Bool)

(assert start!120058)

(declare-fun b!1397117 () Bool)

(declare-fun res!936146 () Bool)

(declare-fun e!790982 () Bool)

(assert (=> b!1397117 (=> (not res!936146) (not e!790982))))

(declare-datatypes ((array!95505 0))(
  ( (array!95506 (arr!46102 (Array (_ BitVec 32) (_ BitVec 64))) (size!46653 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95505)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397117 (= res!936146 (validKeyInArray!0 (select (arr!46102 a!2901) i!1037)))))

(declare-fun b!1397118 () Bool)

(declare-fun res!936145 () Bool)

(assert (=> b!1397118 (=> (not res!936145) (not e!790982))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95505 (_ BitVec 32)) Bool)

(assert (=> b!1397118 (= res!936145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397119 () Bool)

(declare-fun e!790981 () Bool)

(assert (=> b!1397119 (= e!790982 (not e!790981))))

(declare-fun res!936143 () Bool)

(assert (=> b!1397119 (=> res!936143 e!790981)))

(declare-datatypes ((SeekEntryResult!10441 0))(
  ( (MissingZero!10441 (index!44134 (_ BitVec 32))) (Found!10441 (index!44135 (_ BitVec 32))) (Intermediate!10441 (undefined!11253 Bool) (index!44136 (_ BitVec 32)) (x!125802 (_ BitVec 32))) (Undefined!10441) (MissingVacant!10441 (index!44137 (_ BitVec 32))) )
))
(declare-fun lt!613958 () SeekEntryResult!10441)

(assert (=> b!1397119 (= res!936143 (or (not (is-Intermediate!10441 lt!613958)) (undefined!11253 lt!613958)))))

(declare-fun e!790983 () Bool)

(assert (=> b!1397119 e!790983))

(declare-fun res!936141 () Bool)

(assert (=> b!1397119 (=> (not res!936141) (not e!790983))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397119 (= res!936141 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46836 0))(
  ( (Unit!46837) )
))
(declare-fun lt!613959 () Unit!46836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95505 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46836)

(assert (=> b!1397119 (= lt!613959 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613963 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95505 (_ BitVec 32)) SeekEntryResult!10441)

(assert (=> b!1397119 (= lt!613958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613963 (select (arr!46102 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397119 (= lt!613963 (toIndex!0 (select (arr!46102 a!2901) j!112) mask!2840))))

(declare-fun b!1397120 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95505 (_ BitVec 32)) SeekEntryResult!10441)

(assert (=> b!1397120 (= e!790983 (= (seekEntryOrOpen!0 (select (arr!46102 a!2901) j!112) a!2901 mask!2840) (Found!10441 j!112)))))

(declare-fun b!1397121 () Bool)

(declare-fun res!936140 () Bool)

(assert (=> b!1397121 (=> (not res!936140) (not e!790982))))

(assert (=> b!1397121 (= res!936140 (validKeyInArray!0 (select (arr!46102 a!2901) j!112)))))

(declare-fun b!1397122 () Bool)

(declare-fun e!790985 () Bool)

(assert (=> b!1397122 (= e!790985 true)))

(declare-fun lt!613961 () array!95505)

(declare-fun lt!613960 () SeekEntryResult!10441)

(declare-fun lt!613957 () (_ BitVec 64))

(assert (=> b!1397122 (= lt!613960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613963 lt!613957 lt!613961 mask!2840))))

(declare-fun b!1397123 () Bool)

(declare-fun res!936144 () Bool)

(assert (=> b!1397123 (=> (not res!936144) (not e!790982))))

(assert (=> b!1397123 (= res!936144 (and (= (size!46653 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46653 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46653 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397124 () Bool)

(assert (=> b!1397124 (= e!790981 e!790985)))

(declare-fun res!936139 () Bool)

(assert (=> b!1397124 (=> res!936139 e!790985)))

(declare-fun lt!613962 () SeekEntryResult!10441)

(assert (=> b!1397124 (= res!936139 (or (= lt!613958 lt!613962) (not (is-Intermediate!10441 lt!613962)) (bvslt (x!125802 lt!613958) #b00000000000000000000000000000000) (bvsgt (x!125802 lt!613958) #b01111111111111111111111111111110) (bvslt lt!613963 #b00000000000000000000000000000000) (bvsge lt!613963 (size!46653 a!2901)) (bvslt (index!44136 lt!613958) #b00000000000000000000000000000000) (bvsge (index!44136 lt!613958) (size!46653 a!2901)) (not (= lt!613958 (Intermediate!10441 false (index!44136 lt!613958) (x!125802 lt!613958)))) (not (= lt!613962 (Intermediate!10441 (undefined!11253 lt!613962) (index!44136 lt!613962) (x!125802 lt!613962))))))))

(assert (=> b!1397124 (= lt!613962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613957 mask!2840) lt!613957 lt!613961 mask!2840))))

(assert (=> b!1397124 (= lt!613957 (select (store (arr!46102 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397124 (= lt!613961 (array!95506 (store (arr!46102 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46653 a!2901)))))

(declare-fun b!1397125 () Bool)

(declare-fun res!936142 () Bool)

(assert (=> b!1397125 (=> (not res!936142) (not e!790982))))

(declare-datatypes ((List!32801 0))(
  ( (Nil!32798) (Cons!32797 (h!34039 (_ BitVec 64)) (t!47502 List!32801)) )
))
(declare-fun arrayNoDuplicates!0 (array!95505 (_ BitVec 32) List!32801) Bool)

(assert (=> b!1397125 (= res!936142 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32798))))

(declare-fun res!936147 () Bool)

(assert (=> start!120058 (=> (not res!936147) (not e!790982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120058 (= res!936147 (validMask!0 mask!2840))))

(assert (=> start!120058 e!790982))

(assert (=> start!120058 true))

(declare-fun array_inv!35047 (array!95505) Bool)

(assert (=> start!120058 (array_inv!35047 a!2901)))

(assert (= (and start!120058 res!936147) b!1397123))

(assert (= (and b!1397123 res!936144) b!1397117))

(assert (= (and b!1397117 res!936146) b!1397121))

(assert (= (and b!1397121 res!936140) b!1397118))

(assert (= (and b!1397118 res!936145) b!1397125))

(assert (= (and b!1397125 res!936142) b!1397119))

(assert (= (and b!1397119 res!936141) b!1397120))

(assert (= (and b!1397119 (not res!936143)) b!1397124))

(assert (= (and b!1397124 (not res!936139)) b!1397122))

(declare-fun m!1283867 () Bool)

(assert (=> b!1397125 m!1283867))

(declare-fun m!1283869 () Bool)

(assert (=> b!1397118 m!1283869))

(declare-fun m!1283871 () Bool)

(assert (=> start!120058 m!1283871))

(declare-fun m!1283873 () Bool)

(assert (=> start!120058 m!1283873))

(declare-fun m!1283875 () Bool)

(assert (=> b!1397120 m!1283875))

(assert (=> b!1397120 m!1283875))

(declare-fun m!1283877 () Bool)

(assert (=> b!1397120 m!1283877))

(declare-fun m!1283879 () Bool)

(assert (=> b!1397124 m!1283879))

(assert (=> b!1397124 m!1283879))

(declare-fun m!1283881 () Bool)

(assert (=> b!1397124 m!1283881))

(declare-fun m!1283883 () Bool)

(assert (=> b!1397124 m!1283883))

(declare-fun m!1283885 () Bool)

(assert (=> b!1397124 m!1283885))

(assert (=> b!1397121 m!1283875))

(assert (=> b!1397121 m!1283875))

(declare-fun m!1283887 () Bool)

(assert (=> b!1397121 m!1283887))

(assert (=> b!1397119 m!1283875))

(declare-fun m!1283889 () Bool)

(assert (=> b!1397119 m!1283889))

(assert (=> b!1397119 m!1283875))

(assert (=> b!1397119 m!1283875))

(declare-fun m!1283891 () Bool)

(assert (=> b!1397119 m!1283891))

(declare-fun m!1283893 () Bool)

(assert (=> b!1397119 m!1283893))

(declare-fun m!1283895 () Bool)

(assert (=> b!1397119 m!1283895))

(declare-fun m!1283897 () Bool)

(assert (=> b!1397117 m!1283897))

(assert (=> b!1397117 m!1283897))

(declare-fun m!1283899 () Bool)

(assert (=> b!1397117 m!1283899))

(declare-fun m!1283901 () Bool)

(assert (=> b!1397122 m!1283901))

(push 1)

