; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130978 () Bool)

(assert start!130978)

(declare-fun b!1535907 () Bool)

(declare-fun res!1053141 () Bool)

(declare-fun e!854951 () Bool)

(assert (=> b!1535907 (=> (not res!1053141) (not e!854951))))

(declare-datatypes ((array!102003 0))(
  ( (array!102004 (arr!49213 (Array (_ BitVec 32) (_ BitVec 64))) (size!49764 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102003)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535907 (= res!1053141 (validKeyInArray!0 (select (arr!49213 a!2792) j!64)))))

(declare-fun b!1535908 () Bool)

(declare-fun res!1053136 () Bool)

(assert (=> b!1535908 (=> (not res!1053136) (not e!854951))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535908 (= res!1053136 (validKeyInArray!0 (select (arr!49213 a!2792) i!951)))))

(declare-fun b!1535909 () Bool)

(declare-fun res!1053131 () Bool)

(assert (=> b!1535909 (=> (not res!1053131) (not e!854951))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102003 (_ BitVec 32)) Bool)

(assert (=> b!1535909 (= res!1053131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535910 () Bool)

(declare-fun e!854948 () Bool)

(declare-fun e!854950 () Bool)

(assert (=> b!1535910 (= e!854948 e!854950)))

(declare-fun res!1053139 () Bool)

(assert (=> b!1535910 (=> (not res!1053139) (not e!854950))))

(declare-datatypes ((SeekEntryResult!13368 0))(
  ( (MissingZero!13368 (index!55866 (_ BitVec 32))) (Found!13368 (index!55867 (_ BitVec 32))) (Intermediate!13368 (undefined!14180 Bool) (index!55868 (_ BitVec 32)) (x!137613 (_ BitVec 32))) (Undefined!13368) (MissingVacant!13368 (index!55869 (_ BitVec 32))) )
))
(declare-fun lt!664121 () SeekEntryResult!13368)

(declare-fun lt!664123 () SeekEntryResult!13368)

(assert (=> b!1535910 (= res!1053139 (= lt!664121 lt!664123))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664120 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102003 (_ BitVec 32)) SeekEntryResult!13368)

(assert (=> b!1535910 (= lt!664121 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664120 vacantIndex!5 (select (arr!49213 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1053140 () Bool)

(assert (=> start!130978 (=> (not res!1053140) (not e!854951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130978 (= res!1053140 (validMask!0 mask!2480))))

(assert (=> start!130978 e!854951))

(assert (=> start!130978 true))

(declare-fun array_inv!38158 (array!102003) Bool)

(assert (=> start!130978 (array_inv!38158 a!2792)))

(declare-fun b!1535911 () Bool)

(declare-fun res!1053137 () Bool)

(assert (=> b!1535911 (=> (not res!1053137) (not e!854951))))

(declare-datatypes ((List!35867 0))(
  ( (Nil!35864) (Cons!35863 (h!37309 (_ BitVec 64)) (t!50568 List!35867)) )
))
(declare-fun arrayNoDuplicates!0 (array!102003 (_ BitVec 32) List!35867) Bool)

(assert (=> b!1535911 (= res!1053137 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35864))))

(declare-fun b!1535912 () Bool)

(declare-fun e!854947 () Bool)

(assert (=> b!1535912 (= e!854951 e!854947)))

(declare-fun res!1053132 () Bool)

(assert (=> b!1535912 (=> (not res!1053132) (not e!854947))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535912 (= res!1053132 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49213 a!2792) j!64) a!2792 mask!2480) lt!664123))))

(assert (=> b!1535912 (= lt!664123 (Found!13368 j!64))))

(declare-fun b!1535913 () Bool)

(assert (=> b!1535913 (= e!854950 (not (bvsge mask!2480 #b00000000000000000000000000000000)))))

(assert (=> b!1535913 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664120 vacantIndex!5 (select (store (arr!49213 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102004 (store (arr!49213 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49764 a!2792)) mask!2480) lt!664121)))

(declare-datatypes ((Unit!51260 0))(
  ( (Unit!51261) )
))
(declare-fun lt!664122 () Unit!51260)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51260)

(assert (=> b!1535913 (= lt!664122 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664120 vacantIndex!5 mask!2480))))

(declare-fun b!1535914 () Bool)

(declare-fun res!1053134 () Bool)

(assert (=> b!1535914 (=> (not res!1053134) (not e!854951))))

(assert (=> b!1535914 (= res!1053134 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49764 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49764 a!2792)) (= (select (arr!49213 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535915 () Bool)

(declare-fun res!1053135 () Bool)

(assert (=> b!1535915 (=> (not res!1053135) (not e!854947))))

(assert (=> b!1535915 (= res!1053135 (not (= (select (arr!49213 a!2792) index!463) (select (arr!49213 a!2792) j!64))))))

(declare-fun b!1535916 () Bool)

(assert (=> b!1535916 (= e!854947 e!854948)))

(declare-fun res!1053133 () Bool)

(assert (=> b!1535916 (=> (not res!1053133) (not e!854948))))

(assert (=> b!1535916 (= res!1053133 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664120 #b00000000000000000000000000000000) (bvslt lt!664120 (size!49764 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535916 (= lt!664120 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535917 () Bool)

(declare-fun res!1053138 () Bool)

(assert (=> b!1535917 (=> (not res!1053138) (not e!854951))))

(assert (=> b!1535917 (= res!1053138 (and (= (size!49764 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49764 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49764 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130978 res!1053140) b!1535917))

(assert (= (and b!1535917 res!1053138) b!1535908))

(assert (= (and b!1535908 res!1053136) b!1535907))

(assert (= (and b!1535907 res!1053141) b!1535909))

(assert (= (and b!1535909 res!1053131) b!1535911))

(assert (= (and b!1535911 res!1053137) b!1535914))

(assert (= (and b!1535914 res!1053134) b!1535912))

(assert (= (and b!1535912 res!1053132) b!1535915))

(assert (= (and b!1535915 res!1053135) b!1535916))

(assert (= (and b!1535916 res!1053133) b!1535910))

(assert (= (and b!1535910 res!1053139) b!1535913))

(declare-fun m!1418409 () Bool)

(assert (=> b!1535915 m!1418409))

(declare-fun m!1418411 () Bool)

(assert (=> b!1535915 m!1418411))

(declare-fun m!1418413 () Bool)

(assert (=> b!1535914 m!1418413))

(declare-fun m!1418415 () Bool)

(assert (=> b!1535913 m!1418415))

(declare-fun m!1418417 () Bool)

(assert (=> b!1535913 m!1418417))

(assert (=> b!1535913 m!1418417))

(declare-fun m!1418419 () Bool)

(assert (=> b!1535913 m!1418419))

(declare-fun m!1418421 () Bool)

(assert (=> b!1535913 m!1418421))

(declare-fun m!1418423 () Bool)

(assert (=> b!1535916 m!1418423))

(assert (=> b!1535912 m!1418411))

(assert (=> b!1535912 m!1418411))

(declare-fun m!1418425 () Bool)

(assert (=> b!1535912 m!1418425))

(declare-fun m!1418427 () Bool)

(assert (=> b!1535909 m!1418427))

(assert (=> b!1535907 m!1418411))

(assert (=> b!1535907 m!1418411))

(declare-fun m!1418429 () Bool)

(assert (=> b!1535907 m!1418429))

(declare-fun m!1418431 () Bool)

(assert (=> b!1535908 m!1418431))

(assert (=> b!1535908 m!1418431))

(declare-fun m!1418433 () Bool)

(assert (=> b!1535908 m!1418433))

(declare-fun m!1418435 () Bool)

(assert (=> b!1535911 m!1418435))

(assert (=> b!1535910 m!1418411))

(assert (=> b!1535910 m!1418411))

(declare-fun m!1418437 () Bool)

(assert (=> b!1535910 m!1418437))

(declare-fun m!1418439 () Bool)

(assert (=> start!130978 m!1418439))

(declare-fun m!1418441 () Bool)

(assert (=> start!130978 m!1418441))

(push 1)

