; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119702 () Bool)

(assert start!119702)

(declare-fun b!1393797 () Bool)

(declare-fun res!933315 () Bool)

(declare-fun e!789222 () Bool)

(assert (=> b!1393797 (=> (not res!933315) (not e!789222))))

(declare-datatypes ((array!95302 0))(
  ( (array!95303 (arr!46005 (Array (_ BitVec 32) (_ BitVec 64))) (size!46556 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95302)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393797 (= res!933315 (validKeyInArray!0 (select (arr!46005 a!2901) i!1037)))))

(declare-fun b!1393798 () Bool)

(declare-fun res!933317 () Bool)

(assert (=> b!1393798 (=> (not res!933317) (not e!789222))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393798 (= res!933317 (and (= (size!46556 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46556 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46556 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393799 () Bool)

(declare-fun res!933318 () Bool)

(assert (=> b!1393799 (=> (not res!933318) (not e!789222))))

(assert (=> b!1393799 (= res!933318 (validKeyInArray!0 (select (arr!46005 a!2901) j!112)))))

(declare-fun b!1393800 () Bool)

(declare-fun res!933319 () Bool)

(assert (=> b!1393800 (=> (not res!933319) (not e!789222))))

(declare-datatypes ((List!32704 0))(
  ( (Nil!32701) (Cons!32700 (h!33933 (_ BitVec 64)) (t!47405 List!32704)) )
))
(declare-fun arrayNoDuplicates!0 (array!95302 (_ BitVec 32) List!32704) Bool)

(assert (=> b!1393800 (= res!933319 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32701))))

(declare-fun res!933321 () Bool)

(assert (=> start!119702 (=> (not res!933321) (not e!789222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119702 (= res!933321 (validMask!0 mask!2840))))

(assert (=> start!119702 e!789222))

(assert (=> start!119702 true))

(declare-fun array_inv!34950 (array!95302) Bool)

(assert (=> start!119702 (array_inv!34950 a!2901)))

(declare-fun b!1393801 () Bool)

(declare-fun e!789221 () Bool)

(assert (=> b!1393801 (= e!789221 true)))

(declare-datatypes ((SeekEntryResult!10344 0))(
  ( (MissingZero!10344 (index!43746 (_ BitVec 32))) (Found!10344 (index!43747 (_ BitVec 32))) (Intermediate!10344 (undefined!11156 Bool) (index!43748 (_ BitVec 32)) (x!125423 (_ BitVec 32))) (Undefined!10344) (MissingVacant!10344 (index!43749 (_ BitVec 32))) )
))
(declare-fun lt!612097 () SeekEntryResult!10344)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95302 (_ BitVec 32)) SeekEntryResult!10344)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393801 (= lt!612097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46005 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46005 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95303 (store (arr!46005 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46556 a!2901)) mask!2840))))

(declare-fun b!1393802 () Bool)

(declare-fun e!789224 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95302 (_ BitVec 32)) SeekEntryResult!10344)

(assert (=> b!1393802 (= e!789224 (= (seekEntryOrOpen!0 (select (arr!46005 a!2901) j!112) a!2901 mask!2840) (Found!10344 j!112)))))

(declare-fun b!1393803 () Bool)

(assert (=> b!1393803 (= e!789222 (not e!789221))))

(declare-fun res!933316 () Bool)

(assert (=> b!1393803 (=> res!933316 e!789221)))

(declare-fun lt!612095 () SeekEntryResult!10344)

(assert (=> b!1393803 (= res!933316 (or (not (is-Intermediate!10344 lt!612095)) (undefined!11156 lt!612095)))))

(assert (=> b!1393803 e!789224))

(declare-fun res!933320 () Bool)

(assert (=> b!1393803 (=> (not res!933320) (not e!789224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95302 (_ BitVec 32)) Bool)

(assert (=> b!1393803 (= res!933320 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46642 0))(
  ( (Unit!46643) )
))
(declare-fun lt!612096 () Unit!46642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46642)

(assert (=> b!1393803 (= lt!612096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393803 (= lt!612095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46005 a!2901) j!112) mask!2840) (select (arr!46005 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393804 () Bool)

(declare-fun res!933314 () Bool)

(assert (=> b!1393804 (=> (not res!933314) (not e!789222))))

(assert (=> b!1393804 (= res!933314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119702 res!933321) b!1393798))

(assert (= (and b!1393798 res!933317) b!1393797))

(assert (= (and b!1393797 res!933315) b!1393799))

(assert (= (and b!1393799 res!933318) b!1393804))

(assert (= (and b!1393804 res!933314) b!1393800))

(assert (= (and b!1393800 res!933319) b!1393803))

(assert (= (and b!1393803 res!933320) b!1393802))

(assert (= (and b!1393803 (not res!933316)) b!1393801))

(declare-fun m!1279951 () Bool)

(assert (=> b!1393802 m!1279951))

(assert (=> b!1393802 m!1279951))

(declare-fun m!1279953 () Bool)

(assert (=> b!1393802 m!1279953))

(declare-fun m!1279955 () Bool)

(assert (=> b!1393801 m!1279955))

(declare-fun m!1279957 () Bool)

(assert (=> b!1393801 m!1279957))

(assert (=> b!1393801 m!1279957))

(declare-fun m!1279959 () Bool)

(assert (=> b!1393801 m!1279959))

(assert (=> b!1393801 m!1279959))

(assert (=> b!1393801 m!1279957))

(declare-fun m!1279961 () Bool)

(assert (=> b!1393801 m!1279961))

(assert (=> b!1393799 m!1279951))

(assert (=> b!1393799 m!1279951))

(declare-fun m!1279963 () Bool)

(assert (=> b!1393799 m!1279963))

(declare-fun m!1279965 () Bool)

(assert (=> start!119702 m!1279965))

(declare-fun m!1279967 () Bool)

(assert (=> start!119702 m!1279967))

(declare-fun m!1279969 () Bool)

(assert (=> b!1393804 m!1279969))

(assert (=> b!1393803 m!1279951))

(declare-fun m!1279971 () Bool)

(assert (=> b!1393803 m!1279971))

(assert (=> b!1393803 m!1279951))

(declare-fun m!1279973 () Bool)

(assert (=> b!1393803 m!1279973))

(assert (=> b!1393803 m!1279971))

(assert (=> b!1393803 m!1279951))

(declare-fun m!1279975 () Bool)

(assert (=> b!1393803 m!1279975))

(declare-fun m!1279977 () Bool)

(assert (=> b!1393803 m!1279977))

(declare-fun m!1279979 () Bool)

(assert (=> b!1393800 m!1279979))

(declare-fun m!1279981 () Bool)

(assert (=> b!1393797 m!1279981))

(assert (=> b!1393797 m!1279981))

(declare-fun m!1279983 () Bool)

(assert (=> b!1393797 m!1279983))

(push 1)

(assert (not start!119702))

(assert (not b!1393797))

(assert (not b!1393800))

(assert (not b!1393803))

(assert (not b!1393802))

(assert (not b!1393799))

(assert (not b!1393804))

(assert (not b!1393801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

