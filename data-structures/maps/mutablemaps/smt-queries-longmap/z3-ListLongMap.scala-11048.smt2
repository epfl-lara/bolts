; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129168 () Bool)

(assert start!129168)

(declare-fun e!845573 () Bool)

(declare-fun b!1515166 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100937 0))(
  ( (array!100938 (arr!48701 (Array (_ BitVec 32) (_ BitVec 64))) (size!49252 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100937)

(declare-datatypes ((SeekEntryResult!12893 0))(
  ( (MissingZero!12893 (index!53966 (_ BitVec 32))) (Found!12893 (index!53967 (_ BitVec 32))) (Intermediate!12893 (undefined!13705 Bool) (index!53968 (_ BitVec 32)) (x!135680 (_ BitVec 32))) (Undefined!12893) (MissingVacant!12893 (index!53969 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100937 (_ BitVec 32)) SeekEntryResult!12893)

(assert (=> b!1515166 (= e!845573 (= (seekEntry!0 (select (arr!48701 a!2804) j!70) a!2804 mask!2512) (Found!12893 j!70)))))

(declare-fun b!1515167 () Bool)

(declare-fun res!1035152 () Bool)

(declare-fun e!845571 () Bool)

(assert (=> b!1515167 (=> (not res!1035152) (not e!845571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100937 (_ BitVec 32)) Bool)

(assert (=> b!1515167 (= res!1035152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515168 () Bool)

(declare-fun res!1035150 () Bool)

(assert (=> b!1515168 (=> (not res!1035150) (not e!845571))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515168 (= res!1035150 (and (= (size!49252 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49252 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49252 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515169 () Bool)

(declare-fun e!845569 () Bool)

(declare-fun e!845568 () Bool)

(assert (=> b!1515169 (= e!845569 (not e!845568))))

(declare-fun res!1035145 () Bool)

(assert (=> b!1515169 (=> res!1035145 e!845568)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!656649 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1515169 (= res!1035145 (or (not (= (select (arr!48701 a!2804) j!70) lt!656649)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48701 a!2804) index!487) (select (arr!48701 a!2804) j!70)) (not (= (select (arr!48701 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515169 e!845573))

(declare-fun res!1035144 () Bool)

(assert (=> b!1515169 (=> (not res!1035144) (not e!845573))))

(assert (=> b!1515169 (= res!1035144 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50610 0))(
  ( (Unit!50611) )
))
(declare-fun lt!656651 () Unit!50610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50610)

(assert (=> b!1515169 (= lt!656651 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515170 () Bool)

(declare-fun e!845567 () Bool)

(assert (=> b!1515170 (= e!845568 e!845567)))

(declare-fun res!1035151 () Bool)

(assert (=> b!1515170 (=> res!1035151 e!845567)))

(declare-fun lt!656648 () SeekEntryResult!12893)

(assert (=> b!1515170 (= res!1035151 (not (= lt!656648 (Found!12893 j!70))))))

(declare-fun lt!656653 () SeekEntryResult!12893)

(declare-fun lt!656646 () SeekEntryResult!12893)

(assert (=> b!1515170 (= lt!656653 lt!656646)))

(declare-fun lt!656647 () array!100937)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100937 (_ BitVec 32)) SeekEntryResult!12893)

(assert (=> b!1515170 (= lt!656646 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656649 lt!656647 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100937 (_ BitVec 32)) SeekEntryResult!12893)

(assert (=> b!1515170 (= lt!656653 (seekEntryOrOpen!0 lt!656649 lt!656647 mask!2512))))

(declare-fun lt!656645 () SeekEntryResult!12893)

(assert (=> b!1515170 (= lt!656645 lt!656648)))

(assert (=> b!1515170 (= lt!656648 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48701 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515170 (= lt!656645 (seekEntryOrOpen!0 (select (arr!48701 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1035146 () Bool)

(assert (=> start!129168 (=> (not res!1035146) (not e!845571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129168 (= res!1035146 (validMask!0 mask!2512))))

(assert (=> start!129168 e!845571))

(assert (=> start!129168 true))

(declare-fun array_inv!37646 (array!100937) Bool)

(assert (=> start!129168 (array_inv!37646 a!2804)))

(declare-fun b!1515171 () Bool)

(declare-fun res!1035149 () Bool)

(declare-fun e!845570 () Bool)

(assert (=> b!1515171 (=> (not res!1035149) (not e!845570))))

(declare-fun lt!656652 () SeekEntryResult!12893)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100937 (_ BitVec 32)) SeekEntryResult!12893)

(assert (=> b!1515171 (= res!1035149 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48701 a!2804) j!70) a!2804 mask!2512) lt!656652))))

(declare-fun b!1515172 () Bool)

(assert (=> b!1515172 (= e!845567 (bvsge mask!2512 #b00000000000000000000000000000000))))

(assert (=> b!1515172 (= lt!656646 lt!656648)))

(declare-fun lt!656644 () Unit!50610)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50610)

(assert (=> b!1515172 (= lt!656644 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515173 () Bool)

(declare-fun res!1035148 () Bool)

(assert (=> b!1515173 (=> (not res!1035148) (not e!845571))))

(declare-datatypes ((List!35364 0))(
  ( (Nil!35361) (Cons!35360 (h!36773 (_ BitVec 64)) (t!50065 List!35364)) )
))
(declare-fun arrayNoDuplicates!0 (array!100937 (_ BitVec 32) List!35364) Bool)

(assert (=> b!1515173 (= res!1035148 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35361))))

(declare-fun b!1515174 () Bool)

(assert (=> b!1515174 (= e!845570 e!845569)))

(declare-fun res!1035147 () Bool)

(assert (=> b!1515174 (=> (not res!1035147) (not e!845569))))

(declare-fun lt!656650 () SeekEntryResult!12893)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515174 (= res!1035147 (= lt!656650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656649 mask!2512) lt!656649 lt!656647 mask!2512)))))

(assert (=> b!1515174 (= lt!656649 (select (store (arr!48701 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515174 (= lt!656647 (array!100938 (store (arr!48701 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49252 a!2804)))))

(declare-fun b!1515175 () Bool)

(declare-fun res!1035153 () Bool)

(assert (=> b!1515175 (=> (not res!1035153) (not e!845571))))

(assert (=> b!1515175 (= res!1035153 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49252 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49252 a!2804))))))

(declare-fun b!1515176 () Bool)

(declare-fun res!1035142 () Bool)

(assert (=> b!1515176 (=> (not res!1035142) (not e!845571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515176 (= res!1035142 (validKeyInArray!0 (select (arr!48701 a!2804) i!961)))))

(declare-fun b!1515177 () Bool)

(declare-fun res!1035141 () Bool)

(assert (=> b!1515177 (=> (not res!1035141) (not e!845571))))

(assert (=> b!1515177 (= res!1035141 (validKeyInArray!0 (select (arr!48701 a!2804) j!70)))))

(declare-fun b!1515178 () Bool)

(assert (=> b!1515178 (= e!845571 e!845570)))

(declare-fun res!1035143 () Bool)

(assert (=> b!1515178 (=> (not res!1035143) (not e!845570))))

(assert (=> b!1515178 (= res!1035143 (= lt!656650 lt!656652))))

(assert (=> b!1515178 (= lt!656652 (Intermediate!12893 false resIndex!21 resX!21))))

(assert (=> b!1515178 (= lt!656650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48701 a!2804) j!70) mask!2512) (select (arr!48701 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129168 res!1035146) b!1515168))

(assert (= (and b!1515168 res!1035150) b!1515176))

(assert (= (and b!1515176 res!1035142) b!1515177))

(assert (= (and b!1515177 res!1035141) b!1515167))

(assert (= (and b!1515167 res!1035152) b!1515173))

(assert (= (and b!1515173 res!1035148) b!1515175))

(assert (= (and b!1515175 res!1035153) b!1515178))

(assert (= (and b!1515178 res!1035143) b!1515171))

(assert (= (and b!1515171 res!1035149) b!1515174))

(assert (= (and b!1515174 res!1035147) b!1515169))

(assert (= (and b!1515169 res!1035144) b!1515166))

(assert (= (and b!1515169 (not res!1035145)) b!1515170))

(assert (= (and b!1515170 (not res!1035151)) b!1515172))

(declare-fun m!1398273 () Bool)

(assert (=> b!1515172 m!1398273))

(declare-fun m!1398275 () Bool)

(assert (=> b!1515178 m!1398275))

(assert (=> b!1515178 m!1398275))

(declare-fun m!1398277 () Bool)

(assert (=> b!1515178 m!1398277))

(assert (=> b!1515178 m!1398277))

(assert (=> b!1515178 m!1398275))

(declare-fun m!1398279 () Bool)

(assert (=> b!1515178 m!1398279))

(assert (=> b!1515166 m!1398275))

(assert (=> b!1515166 m!1398275))

(declare-fun m!1398281 () Bool)

(assert (=> b!1515166 m!1398281))

(declare-fun m!1398283 () Bool)

(assert (=> b!1515176 m!1398283))

(assert (=> b!1515176 m!1398283))

(declare-fun m!1398285 () Bool)

(assert (=> b!1515176 m!1398285))

(declare-fun m!1398287 () Bool)

(assert (=> start!129168 m!1398287))

(declare-fun m!1398289 () Bool)

(assert (=> start!129168 m!1398289))

(declare-fun m!1398291 () Bool)

(assert (=> b!1515174 m!1398291))

(assert (=> b!1515174 m!1398291))

(declare-fun m!1398293 () Bool)

(assert (=> b!1515174 m!1398293))

(declare-fun m!1398295 () Bool)

(assert (=> b!1515174 m!1398295))

(declare-fun m!1398297 () Bool)

(assert (=> b!1515174 m!1398297))

(declare-fun m!1398299 () Bool)

(assert (=> b!1515167 m!1398299))

(assert (=> b!1515170 m!1398275))

(declare-fun m!1398301 () Bool)

(assert (=> b!1515170 m!1398301))

(assert (=> b!1515170 m!1398275))

(assert (=> b!1515170 m!1398275))

(declare-fun m!1398303 () Bool)

(assert (=> b!1515170 m!1398303))

(declare-fun m!1398305 () Bool)

(assert (=> b!1515170 m!1398305))

(declare-fun m!1398307 () Bool)

(assert (=> b!1515170 m!1398307))

(assert (=> b!1515177 m!1398275))

(assert (=> b!1515177 m!1398275))

(declare-fun m!1398309 () Bool)

(assert (=> b!1515177 m!1398309))

(assert (=> b!1515171 m!1398275))

(assert (=> b!1515171 m!1398275))

(declare-fun m!1398311 () Bool)

(assert (=> b!1515171 m!1398311))

(assert (=> b!1515169 m!1398275))

(declare-fun m!1398313 () Bool)

(assert (=> b!1515169 m!1398313))

(declare-fun m!1398315 () Bool)

(assert (=> b!1515169 m!1398315))

(declare-fun m!1398317 () Bool)

(assert (=> b!1515169 m!1398317))

(declare-fun m!1398319 () Bool)

(assert (=> b!1515173 m!1398319))

(check-sat (not b!1515170) (not b!1515178) (not b!1515174) (not b!1515167) (not b!1515172) (not b!1515171) (not start!129168) (not b!1515169) (not b!1515166) (not b!1515176) (not b!1515177) (not b!1515173))
(check-sat)
