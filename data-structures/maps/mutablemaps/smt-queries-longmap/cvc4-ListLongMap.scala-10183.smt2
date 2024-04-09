; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120068 () Bool)

(assert start!120068)

(declare-fun b!1397252 () Bool)

(declare-fun res!936276 () Bool)

(declare-fun e!791058 () Bool)

(assert (=> b!1397252 (=> (not res!936276) (not e!791058))))

(declare-datatypes ((array!95515 0))(
  ( (array!95516 (arr!46107 (Array (_ BitVec 32) (_ BitVec 64))) (size!46658 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95515)

(declare-datatypes ((List!32806 0))(
  ( (Nil!32803) (Cons!32802 (h!34044 (_ BitVec 64)) (t!47507 List!32806)) )
))
(declare-fun arrayNoDuplicates!0 (array!95515 (_ BitVec 32) List!32806) Bool)

(assert (=> b!1397252 (= res!936276 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32803))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1397253 () Bool)

(declare-fun e!791057 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10446 0))(
  ( (MissingZero!10446 (index!44154 (_ BitVec 32))) (Found!10446 (index!44155 (_ BitVec 32))) (Intermediate!10446 (undefined!11258 Bool) (index!44156 (_ BitVec 32)) (x!125815 (_ BitVec 32))) (Undefined!10446) (MissingVacant!10446 (index!44157 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95515 (_ BitVec 32)) SeekEntryResult!10446)

(assert (=> b!1397253 (= e!791057 (= (seekEntryOrOpen!0 (select (arr!46107 a!2901) j!112) a!2901 mask!2840) (Found!10446 j!112)))))

(declare-fun b!1397254 () Bool)

(declare-fun res!936277 () Bool)

(assert (=> b!1397254 (=> (not res!936277) (not e!791058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95515 (_ BitVec 32)) Bool)

(assert (=> b!1397254 (= res!936277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397255 () Bool)

(declare-fun e!791060 () Bool)

(assert (=> b!1397255 (= e!791058 (not e!791060))))

(declare-fun res!936282 () Bool)

(assert (=> b!1397255 (=> res!936282 e!791060)))

(declare-fun lt!614067 () SeekEntryResult!10446)

(assert (=> b!1397255 (= res!936282 (or (not (is-Intermediate!10446 lt!614067)) (undefined!11258 lt!614067)))))

(assert (=> b!1397255 e!791057))

(declare-fun res!936279 () Bool)

(assert (=> b!1397255 (=> (not res!936279) (not e!791057))))

(assert (=> b!1397255 (= res!936279 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46846 0))(
  ( (Unit!46847) )
))
(declare-fun lt!614062 () Unit!46846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46846)

(assert (=> b!1397255 (= lt!614062 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614064 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95515 (_ BitVec 32)) SeekEntryResult!10446)

(assert (=> b!1397255 (= lt!614067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614064 (select (arr!46107 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397255 (= lt!614064 (toIndex!0 (select (arr!46107 a!2901) j!112) mask!2840))))

(declare-fun b!1397256 () Bool)

(declare-fun res!936280 () Bool)

(assert (=> b!1397256 (=> (not res!936280) (not e!791058))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397256 (= res!936280 (and (= (size!46658 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46658 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46658 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397257 () Bool)

(declare-fun res!936274 () Bool)

(assert (=> b!1397257 (=> (not res!936274) (not e!791058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397257 (= res!936274 (validKeyInArray!0 (select (arr!46107 a!2901) i!1037)))))

(declare-fun b!1397258 () Bool)

(declare-fun e!791059 () Bool)

(assert (=> b!1397258 (= e!791059 true)))

(declare-fun lt!614065 () SeekEntryResult!10446)

(declare-fun lt!614066 () array!95515)

(declare-fun lt!614063 () (_ BitVec 64))

(assert (=> b!1397258 (= lt!614065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614064 lt!614063 lt!614066 mask!2840))))

(declare-fun b!1397259 () Bool)

(declare-fun res!936278 () Bool)

(assert (=> b!1397259 (=> (not res!936278) (not e!791058))))

(assert (=> b!1397259 (= res!936278 (validKeyInArray!0 (select (arr!46107 a!2901) j!112)))))

(declare-fun res!936275 () Bool)

(assert (=> start!120068 (=> (not res!936275) (not e!791058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120068 (= res!936275 (validMask!0 mask!2840))))

(assert (=> start!120068 e!791058))

(assert (=> start!120068 true))

(declare-fun array_inv!35052 (array!95515) Bool)

(assert (=> start!120068 (array_inv!35052 a!2901)))

(declare-fun b!1397260 () Bool)

(assert (=> b!1397260 (= e!791060 e!791059)))

(declare-fun res!936281 () Bool)

(assert (=> b!1397260 (=> res!936281 e!791059)))

(declare-fun lt!614068 () SeekEntryResult!10446)

(assert (=> b!1397260 (= res!936281 (or (= lt!614067 lt!614068) (not (is-Intermediate!10446 lt!614068)) (bvslt (x!125815 lt!614067) #b00000000000000000000000000000000) (bvsgt (x!125815 lt!614067) #b01111111111111111111111111111110) (bvslt lt!614064 #b00000000000000000000000000000000) (bvsge lt!614064 (size!46658 a!2901)) (bvslt (index!44156 lt!614067) #b00000000000000000000000000000000) (bvsge (index!44156 lt!614067) (size!46658 a!2901)) (not (= lt!614067 (Intermediate!10446 false (index!44156 lt!614067) (x!125815 lt!614067)))) (not (= lt!614068 (Intermediate!10446 (undefined!11258 lt!614068) (index!44156 lt!614068) (x!125815 lt!614068))))))))

(assert (=> b!1397260 (= lt!614068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614063 mask!2840) lt!614063 lt!614066 mask!2840))))

(assert (=> b!1397260 (= lt!614063 (select (store (arr!46107 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397260 (= lt!614066 (array!95516 (store (arr!46107 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46658 a!2901)))))

(assert (= (and start!120068 res!936275) b!1397256))

(assert (= (and b!1397256 res!936280) b!1397257))

(assert (= (and b!1397257 res!936274) b!1397259))

(assert (= (and b!1397259 res!936278) b!1397254))

(assert (= (and b!1397254 res!936277) b!1397252))

(assert (= (and b!1397252 res!936276) b!1397255))

(assert (= (and b!1397255 res!936279) b!1397253))

(assert (= (and b!1397255 (not res!936282)) b!1397260))

(assert (= (and b!1397260 (not res!936281)) b!1397258))

(declare-fun m!1284047 () Bool)

(assert (=> b!1397259 m!1284047))

(assert (=> b!1397259 m!1284047))

(declare-fun m!1284049 () Bool)

(assert (=> b!1397259 m!1284049))

(declare-fun m!1284051 () Bool)

(assert (=> b!1397260 m!1284051))

(assert (=> b!1397260 m!1284051))

(declare-fun m!1284053 () Bool)

(assert (=> b!1397260 m!1284053))

(declare-fun m!1284055 () Bool)

(assert (=> b!1397260 m!1284055))

(declare-fun m!1284057 () Bool)

(assert (=> b!1397260 m!1284057))

(declare-fun m!1284059 () Bool)

(assert (=> b!1397257 m!1284059))

(assert (=> b!1397257 m!1284059))

(declare-fun m!1284061 () Bool)

(assert (=> b!1397257 m!1284061))

(assert (=> b!1397253 m!1284047))

(assert (=> b!1397253 m!1284047))

(declare-fun m!1284063 () Bool)

(assert (=> b!1397253 m!1284063))

(declare-fun m!1284065 () Bool)

(assert (=> start!120068 m!1284065))

(declare-fun m!1284067 () Bool)

(assert (=> start!120068 m!1284067))

(declare-fun m!1284069 () Bool)

(assert (=> b!1397252 m!1284069))

(declare-fun m!1284071 () Bool)

(assert (=> b!1397258 m!1284071))

(declare-fun m!1284073 () Bool)

(assert (=> b!1397254 m!1284073))

(assert (=> b!1397255 m!1284047))

(declare-fun m!1284075 () Bool)

(assert (=> b!1397255 m!1284075))

(assert (=> b!1397255 m!1284047))

(declare-fun m!1284077 () Bool)

(assert (=> b!1397255 m!1284077))

(assert (=> b!1397255 m!1284047))

(declare-fun m!1284079 () Bool)

(assert (=> b!1397255 m!1284079))

(declare-fun m!1284081 () Bool)

(assert (=> b!1397255 m!1284081))

(push 1)

