; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120132 () Bool)

(assert start!120132)

(declare-fun b!1398116 () Bool)

(declare-fun res!937142 () Bool)

(declare-fun e!791536 () Bool)

(assert (=> b!1398116 (=> (not res!937142) (not e!791536))))

(declare-datatypes ((array!95579 0))(
  ( (array!95580 (arr!46139 (Array (_ BitVec 32) (_ BitVec 64))) (size!46690 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95579)

(declare-datatypes ((List!32838 0))(
  ( (Nil!32835) (Cons!32834 (h!34076 (_ BitVec 64)) (t!47539 List!32838)) )
))
(declare-fun arrayNoDuplicates!0 (array!95579 (_ BitVec 32) List!32838) Bool)

(assert (=> b!1398116 (= res!937142 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32835))))

(declare-fun b!1398117 () Bool)

(declare-fun res!937138 () Bool)

(assert (=> b!1398117 (=> (not res!937138) (not e!791536))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95579 (_ BitVec 32)) Bool)

(assert (=> b!1398117 (= res!937138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398118 () Bool)

(declare-fun e!791540 () Bool)

(assert (=> b!1398118 (= e!791536 (not e!791540))))

(declare-fun res!937145 () Bool)

(assert (=> b!1398118 (=> res!937145 e!791540)))

(declare-datatypes ((SeekEntryResult!10478 0))(
  ( (MissingZero!10478 (index!44282 (_ BitVec 32))) (Found!10478 (index!44283 (_ BitVec 32))) (Intermediate!10478 (undefined!11290 Bool) (index!44284 (_ BitVec 32)) (x!125935 (_ BitVec 32))) (Undefined!10478) (MissingVacant!10478 (index!44285 (_ BitVec 32))) )
))
(declare-fun lt!614716 () SeekEntryResult!10478)

(get-info :version)

(assert (=> b!1398118 (= res!937145 (or (not ((_ is Intermediate!10478) lt!614716)) (undefined!11290 lt!614716)))))

(declare-fun e!791537 () Bool)

(assert (=> b!1398118 e!791537))

(declare-fun res!937140 () Bool)

(assert (=> b!1398118 (=> (not res!937140) (not e!791537))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398118 (= res!937140 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46910 0))(
  ( (Unit!46911) )
))
(declare-fun lt!614712 () Unit!46910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46910)

(assert (=> b!1398118 (= lt!614712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614713 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95579 (_ BitVec 32)) SeekEntryResult!10478)

(assert (=> b!1398118 (= lt!614716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614713 (select (arr!46139 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398118 (= lt!614713 (toIndex!0 (select (arr!46139 a!2901) j!112) mask!2840))))

(declare-fun b!1398119 () Bool)

(declare-fun res!937139 () Bool)

(assert (=> b!1398119 (=> (not res!937139) (not e!791536))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398119 (= res!937139 (validKeyInArray!0 (select (arr!46139 a!2901) i!1037)))))

(declare-fun res!937141 () Bool)

(assert (=> start!120132 (=> (not res!937141) (not e!791536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120132 (= res!937141 (validMask!0 mask!2840))))

(assert (=> start!120132 e!791536))

(assert (=> start!120132 true))

(declare-fun array_inv!35084 (array!95579) Bool)

(assert (=> start!120132 (array_inv!35084 a!2901)))

(declare-fun b!1398120 () Bool)

(declare-fun res!937146 () Bool)

(assert (=> b!1398120 (=> (not res!937146) (not e!791536))))

(assert (=> b!1398120 (= res!937146 (validKeyInArray!0 (select (arr!46139 a!2901) j!112)))))

(declare-fun b!1398121 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95579 (_ BitVec 32)) SeekEntryResult!10478)

(assert (=> b!1398121 (= e!791537 (= (seekEntryOrOpen!0 (select (arr!46139 a!2901) j!112) a!2901 mask!2840) (Found!10478 j!112)))))

(declare-fun b!1398122 () Bool)

(declare-fun res!937143 () Bool)

(assert (=> b!1398122 (=> (not res!937143) (not e!791536))))

(assert (=> b!1398122 (= res!937143 (and (= (size!46690 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46690 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46690 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398123 () Bool)

(declare-fun e!791539 () Bool)

(assert (=> b!1398123 (= e!791539 true)))

(declare-fun lt!614714 () SeekEntryResult!10478)

(assert (=> b!1398123 (and (not (undefined!11290 lt!614714)) (= (index!44284 lt!614714) i!1037) (bvslt (x!125935 lt!614714) (x!125935 lt!614716)) (= (select (store (arr!46139 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44284 lt!614714)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614715 () Unit!46910)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46910)

(assert (=> b!1398123 (= lt!614715 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614713 (x!125935 lt!614716) (index!44284 lt!614716) (x!125935 lt!614714) (index!44284 lt!614714) (undefined!11290 lt!614714) mask!2840))))

(declare-fun b!1398124 () Bool)

(assert (=> b!1398124 (= e!791540 e!791539)))

(declare-fun res!937144 () Bool)

(assert (=> b!1398124 (=> res!937144 e!791539)))

(assert (=> b!1398124 (= res!937144 (or (= lt!614716 lt!614714) (not ((_ is Intermediate!10478) lt!614714))))))

(declare-fun lt!614711 () (_ BitVec 64))

(assert (=> b!1398124 (= lt!614714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614711 mask!2840) lt!614711 (array!95580 (store (arr!46139 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46690 a!2901)) mask!2840))))

(assert (=> b!1398124 (= lt!614711 (select (store (arr!46139 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (= (and start!120132 res!937141) b!1398122))

(assert (= (and b!1398122 res!937143) b!1398119))

(assert (= (and b!1398119 res!937139) b!1398120))

(assert (= (and b!1398120 res!937146) b!1398117))

(assert (= (and b!1398117 res!937138) b!1398116))

(assert (= (and b!1398116 res!937142) b!1398118))

(assert (= (and b!1398118 res!937140) b!1398121))

(assert (= (and b!1398118 (not res!937145)) b!1398124))

(assert (= (and b!1398124 (not res!937144)) b!1398123))

(declare-fun m!1285213 () Bool)

(assert (=> b!1398124 m!1285213))

(declare-fun m!1285215 () Bool)

(assert (=> b!1398124 m!1285215))

(assert (=> b!1398124 m!1285213))

(declare-fun m!1285217 () Bool)

(assert (=> b!1398124 m!1285217))

(declare-fun m!1285219 () Bool)

(assert (=> b!1398124 m!1285219))

(declare-fun m!1285221 () Bool)

(assert (=> start!120132 m!1285221))

(declare-fun m!1285223 () Bool)

(assert (=> start!120132 m!1285223))

(assert (=> b!1398123 m!1285215))

(declare-fun m!1285225 () Bool)

(assert (=> b!1398123 m!1285225))

(declare-fun m!1285227 () Bool)

(assert (=> b!1398123 m!1285227))

(declare-fun m!1285229 () Bool)

(assert (=> b!1398118 m!1285229))

(declare-fun m!1285231 () Bool)

(assert (=> b!1398118 m!1285231))

(assert (=> b!1398118 m!1285229))

(assert (=> b!1398118 m!1285229))

(declare-fun m!1285233 () Bool)

(assert (=> b!1398118 m!1285233))

(declare-fun m!1285235 () Bool)

(assert (=> b!1398118 m!1285235))

(declare-fun m!1285237 () Bool)

(assert (=> b!1398118 m!1285237))

(declare-fun m!1285239 () Bool)

(assert (=> b!1398119 m!1285239))

(assert (=> b!1398119 m!1285239))

(declare-fun m!1285241 () Bool)

(assert (=> b!1398119 m!1285241))

(declare-fun m!1285243 () Bool)

(assert (=> b!1398116 m!1285243))

(assert (=> b!1398120 m!1285229))

(assert (=> b!1398120 m!1285229))

(declare-fun m!1285245 () Bool)

(assert (=> b!1398120 m!1285245))

(assert (=> b!1398121 m!1285229))

(assert (=> b!1398121 m!1285229))

(declare-fun m!1285247 () Bool)

(assert (=> b!1398121 m!1285247))

(declare-fun m!1285249 () Bool)

(assert (=> b!1398117 m!1285249))

(check-sat (not b!1398118) (not start!120132) (not b!1398116) (not b!1398120) (not b!1398119) (not b!1398124) (not b!1398117) (not b!1398121) (not b!1398123))
(check-sat)
