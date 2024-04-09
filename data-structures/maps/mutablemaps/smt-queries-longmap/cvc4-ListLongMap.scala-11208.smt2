; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130916 () Bool)

(assert start!130916)

(declare-fun b!1534966 () Bool)

(declare-fun res!1052193 () Bool)

(declare-fun e!854647 () Bool)

(assert (=> b!1534966 (=> (not res!1052193) (not e!854647))))

(declare-datatypes ((array!101941 0))(
  ( (array!101942 (arr!49182 (Array (_ BitVec 32) (_ BitVec 64))) (size!49733 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101941)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534966 (= res!1052193 (not (= (select (arr!49182 a!2792) index!463) (select (arr!49182 a!2792) j!64))))))

(declare-fun b!1534967 () Bool)

(declare-fun e!854646 () Bool)

(assert (=> b!1534967 (= e!854646 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13337 0))(
  ( (MissingZero!13337 (index!55742 (_ BitVec 32))) (Found!13337 (index!55743 (_ BitVec 32))) (Intermediate!13337 (undefined!14149 Bool) (index!55744 (_ BitVec 32)) (x!137494 (_ BitVec 32))) (Undefined!13337) (MissingVacant!13337 (index!55745 (_ BitVec 32))) )
))
(declare-fun lt!663913 () SeekEntryResult!13337)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!663912 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101941 (_ BitVec 32)) SeekEntryResult!13337)

(assert (=> b!1534967 (= lt!663913 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663912 vacantIndex!5 (select (arr!49182 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534968 () Bool)

(declare-fun res!1052192 () Bool)

(assert (=> b!1534968 (=> (not res!1052192) (not e!854647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534968 (= res!1052192 (validKeyInArray!0 (select (arr!49182 a!2792) j!64)))))

(declare-fun b!1534969 () Bool)

(declare-fun res!1052190 () Bool)

(assert (=> b!1534969 (=> (not res!1052190) (not e!854647))))

(assert (=> b!1534969 (= res!1052190 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49733 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49733 a!2792)) (= (select (arr!49182 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1052191 () Bool)

(assert (=> start!130916 (=> (not res!1052191) (not e!854647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130916 (= res!1052191 (validMask!0 mask!2480))))

(assert (=> start!130916 e!854647))

(assert (=> start!130916 true))

(declare-fun array_inv!38127 (array!101941) Bool)

(assert (=> start!130916 (array_inv!38127 a!2792)))

(declare-fun b!1534970 () Bool)

(declare-fun res!1052195 () Bool)

(assert (=> b!1534970 (=> (not res!1052195) (not e!854647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101941 (_ BitVec 32)) Bool)

(assert (=> b!1534970 (= res!1052195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534971 () Bool)

(declare-fun res!1052197 () Bool)

(assert (=> b!1534971 (=> (not res!1052197) (not e!854647))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534971 (= res!1052197 (validKeyInArray!0 (select (arr!49182 a!2792) i!951)))))

(declare-fun b!1534972 () Bool)

(declare-fun res!1052198 () Bool)

(assert (=> b!1534972 (=> (not res!1052198) (not e!854647))))

(assert (=> b!1534972 (= res!1052198 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49182 a!2792) j!64) a!2792 mask!2480) (Found!13337 j!64)))))

(declare-fun b!1534973 () Bool)

(declare-fun res!1052199 () Bool)

(assert (=> b!1534973 (=> (not res!1052199) (not e!854647))))

(assert (=> b!1534973 (= res!1052199 (and (= (size!49733 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49733 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49733 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534974 () Bool)

(declare-fun res!1052196 () Bool)

(assert (=> b!1534974 (=> (not res!1052196) (not e!854647))))

(declare-datatypes ((List!35836 0))(
  ( (Nil!35833) (Cons!35832 (h!37278 (_ BitVec 64)) (t!50537 List!35836)) )
))
(declare-fun arrayNoDuplicates!0 (array!101941 (_ BitVec 32) List!35836) Bool)

(assert (=> b!1534974 (= res!1052196 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35833))))

(declare-fun b!1534975 () Bool)

(assert (=> b!1534975 (= e!854647 e!854646)))

(declare-fun res!1052194 () Bool)

(assert (=> b!1534975 (=> (not res!1052194) (not e!854646))))

(assert (=> b!1534975 (= res!1052194 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663912 #b00000000000000000000000000000000) (bvslt lt!663912 (size!49733 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534975 (= lt!663912 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!130916 res!1052191) b!1534973))

(assert (= (and b!1534973 res!1052199) b!1534971))

(assert (= (and b!1534971 res!1052197) b!1534968))

(assert (= (and b!1534968 res!1052192) b!1534970))

(assert (= (and b!1534970 res!1052195) b!1534974))

(assert (= (and b!1534974 res!1052196) b!1534969))

(assert (= (and b!1534969 res!1052190) b!1534972))

(assert (= (and b!1534972 res!1052198) b!1534966))

(assert (= (and b!1534966 res!1052193) b!1534975))

(assert (= (and b!1534975 res!1052194) b!1534967))

(declare-fun m!1417579 () Bool)

(assert (=> b!1534967 m!1417579))

(assert (=> b!1534967 m!1417579))

(declare-fun m!1417581 () Bool)

(assert (=> b!1534967 m!1417581))

(declare-fun m!1417583 () Bool)

(assert (=> start!130916 m!1417583))

(declare-fun m!1417585 () Bool)

(assert (=> start!130916 m!1417585))

(assert (=> b!1534968 m!1417579))

(assert (=> b!1534968 m!1417579))

(declare-fun m!1417587 () Bool)

(assert (=> b!1534968 m!1417587))

(declare-fun m!1417589 () Bool)

(assert (=> b!1534974 m!1417589))

(declare-fun m!1417591 () Bool)

(assert (=> b!1534971 m!1417591))

(assert (=> b!1534971 m!1417591))

(declare-fun m!1417593 () Bool)

(assert (=> b!1534971 m!1417593))

(declare-fun m!1417595 () Bool)

(assert (=> b!1534966 m!1417595))

(assert (=> b!1534966 m!1417579))

(assert (=> b!1534972 m!1417579))

(assert (=> b!1534972 m!1417579))

(declare-fun m!1417597 () Bool)

(assert (=> b!1534972 m!1417597))

(declare-fun m!1417599 () Bool)

(assert (=> b!1534969 m!1417599))

(declare-fun m!1417601 () Bool)

(assert (=> b!1534975 m!1417601))

(declare-fun m!1417603 () Bool)

(assert (=> b!1534970 m!1417603))

(push 1)

(assert (not start!130916))

(assert (not b!1534971))

(assert (not b!1534970))

(assert (not b!1534968))

(assert (not b!1534975))

(assert (not b!1534972))

(assert (not b!1534967))

(assert (not b!1534974))

(check-sat)

