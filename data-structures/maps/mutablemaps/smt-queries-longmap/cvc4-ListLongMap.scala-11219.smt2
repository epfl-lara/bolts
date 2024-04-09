; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130982 () Bool)

(assert start!130982)

(declare-fun b!1535973 () Bool)

(declare-fun res!1053204 () Bool)

(declare-fun e!854981 () Bool)

(assert (=> b!1535973 (=> (not res!1053204) (not e!854981))))

(declare-datatypes ((array!102007 0))(
  ( (array!102008 (arr!49215 (Array (_ BitVec 32) (_ BitVec 64))) (size!49766 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102007)

(declare-datatypes ((List!35869 0))(
  ( (Nil!35866) (Cons!35865 (h!37311 (_ BitVec 64)) (t!50570 List!35869)) )
))
(declare-fun arrayNoDuplicates!0 (array!102007 (_ BitVec 32) List!35869) Bool)

(assert (=> b!1535973 (= res!1053204 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35866))))

(declare-fun b!1535974 () Bool)

(declare-fun e!854980 () Bool)

(declare-fun e!854978 () Bool)

(assert (=> b!1535974 (= e!854980 e!854978)))

(declare-fun res!1053202 () Bool)

(assert (=> b!1535974 (=> (not res!1053202) (not e!854978))))

(declare-datatypes ((SeekEntryResult!13370 0))(
  ( (MissingZero!13370 (index!55874 (_ BitVec 32))) (Found!13370 (index!55875 (_ BitVec 32))) (Intermediate!13370 (undefined!14182 Bool) (index!55876 (_ BitVec 32)) (x!137615 (_ BitVec 32))) (Undefined!13370) (MissingVacant!13370 (index!55877 (_ BitVec 32))) )
))
(declare-fun lt!664146 () SeekEntryResult!13370)

(declare-fun lt!664144 () SeekEntryResult!13370)

(assert (=> b!1535974 (= res!1053202 (= lt!664146 lt!664144))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun lt!664147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102007 (_ BitVec 32)) SeekEntryResult!13370)

(assert (=> b!1535974 (= lt!664146 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664147 vacantIndex!5 (select (arr!49215 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535975 () Bool)

(declare-fun res!1053206 () Bool)

(assert (=> b!1535975 (=> (not res!1053206) (not e!854981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102007 (_ BitVec 32)) Bool)

(assert (=> b!1535975 (= res!1053206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535976 () Bool)

(declare-fun e!854979 () Bool)

(assert (=> b!1535976 (= e!854981 e!854979)))

(declare-fun res!1053207 () Bool)

(assert (=> b!1535976 (=> (not res!1053207) (not e!854979))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535976 (= res!1053207 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49215 a!2792) j!64) a!2792 mask!2480) lt!664144))))

(assert (=> b!1535976 (= lt!664144 (Found!13370 j!64))))

(declare-fun res!1053201 () Bool)

(assert (=> start!130982 (=> (not res!1053201) (not e!854981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130982 (= res!1053201 (validMask!0 mask!2480))))

(assert (=> start!130982 e!854981))

(assert (=> start!130982 true))

(declare-fun array_inv!38160 (array!102007) Bool)

(assert (=> start!130982 (array_inv!38160 a!2792)))

(declare-fun b!1535977 () Bool)

(declare-fun res!1053200 () Bool)

(assert (=> b!1535977 (=> (not res!1053200) (not e!854981))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535977 (= res!1053200 (validKeyInArray!0 (select (arr!49215 a!2792) i!951)))))

(declare-fun b!1535978 () Bool)

(declare-fun res!1053197 () Bool)

(assert (=> b!1535978 (=> (not res!1053197) (not e!854981))))

(assert (=> b!1535978 (= res!1053197 (and (= (size!49766 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49766 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49766 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535979 () Bool)

(declare-fun res!1053203 () Bool)

(assert (=> b!1535979 (=> (not res!1053203) (not e!854981))))

(assert (=> b!1535979 (= res!1053203 (validKeyInArray!0 (select (arr!49215 a!2792) j!64)))))

(declare-fun b!1535980 () Bool)

(declare-fun res!1053198 () Bool)

(assert (=> b!1535980 (=> (not res!1053198) (not e!854979))))

(assert (=> b!1535980 (= res!1053198 (not (= (select (arr!49215 a!2792) index!463) (select (arr!49215 a!2792) j!64))))))

(declare-fun b!1535981 () Bool)

(declare-fun res!1053199 () Bool)

(assert (=> b!1535981 (=> (not res!1053199) (not e!854981))))

(assert (=> b!1535981 (= res!1053199 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49766 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49766 a!2792)) (= (select (arr!49215 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535982 () Bool)

(assert (=> b!1535982 (= e!854979 e!854980)))

(declare-fun res!1053205 () Bool)

(assert (=> b!1535982 (=> (not res!1053205) (not e!854980))))

(assert (=> b!1535982 (= res!1053205 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664147 #b00000000000000000000000000000000) (bvslt lt!664147 (size!49766 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535982 (= lt!664147 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535983 () Bool)

(assert (=> b!1535983 (= e!854978 (not (bvsge mask!2480 #b00000000000000000000000000000000)))))

(assert (=> b!1535983 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664147 vacantIndex!5 (select (store (arr!49215 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102008 (store (arr!49215 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49766 a!2792)) mask!2480) lt!664146)))

(declare-datatypes ((Unit!51264 0))(
  ( (Unit!51265) )
))
(declare-fun lt!664145 () Unit!51264)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51264)

(assert (=> b!1535983 (= lt!664145 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664147 vacantIndex!5 mask!2480))))

(assert (= (and start!130982 res!1053201) b!1535978))

(assert (= (and b!1535978 res!1053197) b!1535977))

(assert (= (and b!1535977 res!1053200) b!1535979))

(assert (= (and b!1535979 res!1053203) b!1535975))

(assert (= (and b!1535975 res!1053206) b!1535973))

(assert (= (and b!1535973 res!1053204) b!1535981))

(assert (= (and b!1535981 res!1053199) b!1535976))

(assert (= (and b!1535976 res!1053207) b!1535980))

(assert (= (and b!1535980 res!1053198) b!1535982))

(assert (= (and b!1535982 res!1053205) b!1535974))

(assert (= (and b!1535974 res!1053202) b!1535983))

(declare-fun m!1418477 () Bool)

(assert (=> b!1535980 m!1418477))

(declare-fun m!1418479 () Bool)

(assert (=> b!1535980 m!1418479))

(assert (=> b!1535979 m!1418479))

(assert (=> b!1535979 m!1418479))

(declare-fun m!1418481 () Bool)

(assert (=> b!1535979 m!1418481))

(declare-fun m!1418483 () Bool)

(assert (=> b!1535977 m!1418483))

(assert (=> b!1535977 m!1418483))

(declare-fun m!1418485 () Bool)

(assert (=> b!1535977 m!1418485))

(declare-fun m!1418487 () Bool)

(assert (=> b!1535981 m!1418487))

(declare-fun m!1418489 () Bool)

(assert (=> b!1535983 m!1418489))

(declare-fun m!1418491 () Bool)

(assert (=> b!1535983 m!1418491))

(assert (=> b!1535983 m!1418491))

(declare-fun m!1418493 () Bool)

(assert (=> b!1535983 m!1418493))

(declare-fun m!1418495 () Bool)

(assert (=> b!1535983 m!1418495))

(assert (=> b!1535974 m!1418479))

(assert (=> b!1535974 m!1418479))

(declare-fun m!1418497 () Bool)

(assert (=> b!1535974 m!1418497))

(declare-fun m!1418499 () Bool)

(assert (=> start!130982 m!1418499))

(declare-fun m!1418501 () Bool)

(assert (=> start!130982 m!1418501))

(declare-fun m!1418503 () Bool)

(assert (=> b!1535982 m!1418503))

(declare-fun m!1418505 () Bool)

(assert (=> b!1535973 m!1418505))

(assert (=> b!1535976 m!1418479))

(assert (=> b!1535976 m!1418479))

(declare-fun m!1418507 () Bool)

(assert (=> b!1535976 m!1418507))

(declare-fun m!1418509 () Bool)

(assert (=> b!1535975 m!1418509))

(push 1)

(assert (not b!1535975))

(assert (not b!1535976))

(assert (not b!1535974))

(assert (not b!1535979))

(assert (not b!1535973))

(assert (not start!130982))

(assert (not b!1535977))

(assert (not b!1535982))

(assert (not b!1535983))

(check-sat)

