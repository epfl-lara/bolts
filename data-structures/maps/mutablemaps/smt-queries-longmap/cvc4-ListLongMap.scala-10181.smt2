; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120056 () Bool)

(assert start!120056)

(declare-fun res!936117 () Bool)

(declare-fun e!790968 () Bool)

(assert (=> start!120056 (=> (not res!936117) (not e!790968))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120056 (= res!936117 (validMask!0 mask!2840))))

(assert (=> start!120056 e!790968))

(assert (=> start!120056 true))

(declare-datatypes ((array!95503 0))(
  ( (array!95504 (arr!46101 (Array (_ BitVec 32) (_ BitVec 64))) (size!46652 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95503)

(declare-fun array_inv!35046 (array!95503) Bool)

(assert (=> start!120056 (array_inv!35046 a!2901)))

(declare-fun b!1397090 () Bool)

(declare-fun e!790969 () Bool)

(declare-fun e!790967 () Bool)

(assert (=> b!1397090 (= e!790969 e!790967)))

(declare-fun res!936114 () Bool)

(assert (=> b!1397090 (=> res!936114 e!790967)))

(declare-datatypes ((SeekEntryResult!10440 0))(
  ( (MissingZero!10440 (index!44130 (_ BitVec 32))) (Found!10440 (index!44131 (_ BitVec 32))) (Intermediate!10440 (undefined!11252 Bool) (index!44132 (_ BitVec 32)) (x!125793 (_ BitVec 32))) (Undefined!10440) (MissingVacant!10440 (index!44133 (_ BitVec 32))) )
))
(declare-fun lt!613941 () SeekEntryResult!10440)

(declare-fun lt!613937 () (_ BitVec 32))

(declare-fun lt!613938 () SeekEntryResult!10440)

(assert (=> b!1397090 (= res!936114 (or (= lt!613938 lt!613941) (not (is-Intermediate!10440 lt!613941)) (bvslt (x!125793 lt!613938) #b00000000000000000000000000000000) (bvsgt (x!125793 lt!613938) #b01111111111111111111111111111110) (bvslt lt!613937 #b00000000000000000000000000000000) (bvsge lt!613937 (size!46652 a!2901)) (bvslt (index!44132 lt!613938) #b00000000000000000000000000000000) (bvsge (index!44132 lt!613938) (size!46652 a!2901)) (not (= lt!613938 (Intermediate!10440 false (index!44132 lt!613938) (x!125793 lt!613938)))) (not (= lt!613941 (Intermediate!10440 (undefined!11252 lt!613941) (index!44132 lt!613941) (x!125793 lt!613941))))))))

(declare-fun lt!613939 () (_ BitVec 64))

(declare-fun lt!613942 () array!95503)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95503 (_ BitVec 32)) SeekEntryResult!10440)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397090 (= lt!613941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613939 mask!2840) lt!613939 lt!613942 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397090 (= lt!613939 (select (store (arr!46101 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397090 (= lt!613942 (array!95504 (store (arr!46101 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46652 a!2901)))))

(declare-fun b!1397091 () Bool)

(declare-fun res!936113 () Bool)

(assert (=> b!1397091 (=> (not res!936113) (not e!790968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95503 (_ BitVec 32)) Bool)

(assert (=> b!1397091 (= res!936113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397092 () Bool)

(declare-fun res!936118 () Bool)

(assert (=> b!1397092 (=> (not res!936118) (not e!790968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397092 (= res!936118 (validKeyInArray!0 (select (arr!46101 a!2901) j!112)))))

(declare-fun b!1397093 () Bool)

(assert (=> b!1397093 (= e!790967 true)))

(declare-fun lt!613940 () SeekEntryResult!10440)

(assert (=> b!1397093 (= lt!613940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613937 lt!613939 lt!613942 mask!2840))))

(declare-fun b!1397094 () Bool)

(assert (=> b!1397094 (= e!790968 (not e!790969))))

(declare-fun res!936120 () Bool)

(assert (=> b!1397094 (=> res!936120 e!790969)))

(assert (=> b!1397094 (= res!936120 (or (not (is-Intermediate!10440 lt!613938)) (undefined!11252 lt!613938)))))

(declare-fun e!790970 () Bool)

(assert (=> b!1397094 e!790970))

(declare-fun res!936116 () Bool)

(assert (=> b!1397094 (=> (not res!936116) (not e!790970))))

(assert (=> b!1397094 (= res!936116 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46834 0))(
  ( (Unit!46835) )
))
(declare-fun lt!613936 () Unit!46834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95503 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46834)

(assert (=> b!1397094 (= lt!613936 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397094 (= lt!613938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613937 (select (arr!46101 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397094 (= lt!613937 (toIndex!0 (select (arr!46101 a!2901) j!112) mask!2840))))

(declare-fun b!1397095 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95503 (_ BitVec 32)) SeekEntryResult!10440)

(assert (=> b!1397095 (= e!790970 (= (seekEntryOrOpen!0 (select (arr!46101 a!2901) j!112) a!2901 mask!2840) (Found!10440 j!112)))))

(declare-fun b!1397096 () Bool)

(declare-fun res!936119 () Bool)

(assert (=> b!1397096 (=> (not res!936119) (not e!790968))))

(assert (=> b!1397096 (= res!936119 (validKeyInArray!0 (select (arr!46101 a!2901) i!1037)))))

(declare-fun b!1397097 () Bool)

(declare-fun res!936115 () Bool)

(assert (=> b!1397097 (=> (not res!936115) (not e!790968))))

(assert (=> b!1397097 (= res!936115 (and (= (size!46652 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46652 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46652 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397098 () Bool)

(declare-fun res!936112 () Bool)

(assert (=> b!1397098 (=> (not res!936112) (not e!790968))))

(declare-datatypes ((List!32800 0))(
  ( (Nil!32797) (Cons!32796 (h!34038 (_ BitVec 64)) (t!47501 List!32800)) )
))
(declare-fun arrayNoDuplicates!0 (array!95503 (_ BitVec 32) List!32800) Bool)

(assert (=> b!1397098 (= res!936112 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32797))))

(assert (= (and start!120056 res!936117) b!1397097))

(assert (= (and b!1397097 res!936115) b!1397096))

(assert (= (and b!1397096 res!936119) b!1397092))

(assert (= (and b!1397092 res!936118) b!1397091))

(assert (= (and b!1397091 res!936113) b!1397098))

(assert (= (and b!1397098 res!936112) b!1397094))

(assert (= (and b!1397094 res!936116) b!1397095))

(assert (= (and b!1397094 (not res!936120)) b!1397090))

(assert (= (and b!1397090 (not res!936114)) b!1397093))

(declare-fun m!1283831 () Bool)

(assert (=> b!1397090 m!1283831))

(assert (=> b!1397090 m!1283831))

(declare-fun m!1283833 () Bool)

(assert (=> b!1397090 m!1283833))

(declare-fun m!1283835 () Bool)

(assert (=> b!1397090 m!1283835))

(declare-fun m!1283837 () Bool)

(assert (=> b!1397090 m!1283837))

(declare-fun m!1283839 () Bool)

(assert (=> b!1397098 m!1283839))

(declare-fun m!1283841 () Bool)

(assert (=> b!1397095 m!1283841))

(assert (=> b!1397095 m!1283841))

(declare-fun m!1283843 () Bool)

(assert (=> b!1397095 m!1283843))

(assert (=> b!1397092 m!1283841))

(assert (=> b!1397092 m!1283841))

(declare-fun m!1283845 () Bool)

(assert (=> b!1397092 m!1283845))

(declare-fun m!1283847 () Bool)

(assert (=> b!1397091 m!1283847))

(declare-fun m!1283849 () Bool)

(assert (=> b!1397096 m!1283849))

(assert (=> b!1397096 m!1283849))

(declare-fun m!1283851 () Bool)

(assert (=> b!1397096 m!1283851))

(assert (=> b!1397094 m!1283841))

(declare-fun m!1283853 () Bool)

(assert (=> b!1397094 m!1283853))

(assert (=> b!1397094 m!1283841))

(declare-fun m!1283855 () Bool)

(assert (=> b!1397094 m!1283855))

(assert (=> b!1397094 m!1283841))

(declare-fun m!1283857 () Bool)

(assert (=> b!1397094 m!1283857))

(declare-fun m!1283859 () Bool)

(assert (=> b!1397094 m!1283859))

(declare-fun m!1283861 () Bool)

(assert (=> start!120056 m!1283861))

(declare-fun m!1283863 () Bool)

(assert (=> start!120056 m!1283863))

(declare-fun m!1283865 () Bool)

(assert (=> b!1397093 m!1283865))

(push 1)

