; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130952 () Bool)

(assert start!130952)

(declare-fun b!1535506 () Bool)

(declare-fun res!1052739 () Bool)

(declare-fun e!854809 () Bool)

(assert (=> b!1535506 (=> (not res!1052739) (not e!854809))))

(declare-datatypes ((array!101977 0))(
  ( (array!101978 (arr!49200 (Array (_ BitVec 32) (_ BitVec 64))) (size!49751 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101977)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535506 (= res!1052739 (validKeyInArray!0 (select (arr!49200 a!2792) i!951)))))

(declare-fun b!1535507 () Bool)

(declare-fun res!1052738 () Bool)

(assert (=> b!1535507 (=> (not res!1052738) (not e!854809))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101977 (_ BitVec 32)) Bool)

(assert (=> b!1535507 (= res!1052738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535508 () Bool)

(declare-fun res!1052737 () Bool)

(assert (=> b!1535508 (=> (not res!1052737) (not e!854809))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535508 (= res!1052737 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49751 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49751 a!2792)) (= (select (arr!49200 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1052735 () Bool)

(assert (=> start!130952 (=> (not res!1052735) (not e!854809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130952 (= res!1052735 (validMask!0 mask!2480))))

(assert (=> start!130952 e!854809))

(assert (=> start!130952 true))

(declare-fun array_inv!38145 (array!101977) Bool)

(assert (=> start!130952 (array_inv!38145 a!2792)))

(declare-fun b!1535509 () Bool)

(declare-fun res!1052731 () Bool)

(assert (=> b!1535509 (=> (not res!1052731) (not e!854809))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1535509 (= res!1052731 (not (= (select (arr!49200 a!2792) index!463) (select (arr!49200 a!2792) j!64))))))

(declare-fun b!1535510 () Bool)

(declare-fun res!1052733 () Bool)

(assert (=> b!1535510 (=> (not res!1052733) (not e!854809))))

(declare-datatypes ((SeekEntryResult!13355 0))(
  ( (MissingZero!13355 (index!55814 (_ BitVec 32))) (Found!13355 (index!55815 (_ BitVec 32))) (Intermediate!13355 (undefined!14167 Bool) (index!55816 (_ BitVec 32)) (x!137560 (_ BitVec 32))) (Undefined!13355) (MissingVacant!13355 (index!55817 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101977 (_ BitVec 32)) SeekEntryResult!13355)

(assert (=> b!1535510 (= res!1052733 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49200 a!2792) j!64) a!2792 mask!2480) (Found!13355 j!64)))))

(declare-fun b!1535511 () Bool)

(declare-fun res!1052736 () Bool)

(assert (=> b!1535511 (=> (not res!1052736) (not e!854809))))

(declare-datatypes ((List!35854 0))(
  ( (Nil!35851) (Cons!35850 (h!37296 (_ BitVec 64)) (t!50555 List!35854)) )
))
(declare-fun arrayNoDuplicates!0 (array!101977 (_ BitVec 32) List!35854) Bool)

(assert (=> b!1535511 (= res!1052736 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35851))))

(declare-fun b!1535512 () Bool)

(declare-fun e!854808 () Bool)

(assert (=> b!1535512 (= e!854809 e!854808)))

(declare-fun res!1052730 () Bool)

(assert (=> b!1535512 (=> (not res!1052730) (not e!854808))))

(declare-fun lt!664020 () (_ BitVec 32))

(assert (=> b!1535512 (= res!1052730 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664020 #b00000000000000000000000000000000) (bvslt lt!664020 (size!49751 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535512 (= lt!664020 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535513 () Bool)

(declare-fun res!1052734 () Bool)

(assert (=> b!1535513 (=> (not res!1052734) (not e!854809))))

(assert (=> b!1535513 (= res!1052734 (and (= (size!49751 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49751 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49751 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535514 () Bool)

(assert (=> b!1535514 (= e!854808 false)))

(declare-fun lt!664021 () SeekEntryResult!13355)

(assert (=> b!1535514 (= lt!664021 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664020 vacantIndex!5 (select (arr!49200 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535515 () Bool)

(declare-fun res!1052732 () Bool)

(assert (=> b!1535515 (=> (not res!1052732) (not e!854809))))

(assert (=> b!1535515 (= res!1052732 (validKeyInArray!0 (select (arr!49200 a!2792) j!64)))))

(assert (= (and start!130952 res!1052735) b!1535513))

(assert (= (and b!1535513 res!1052734) b!1535506))

(assert (= (and b!1535506 res!1052739) b!1535515))

(assert (= (and b!1535515 res!1052732) b!1535507))

(assert (= (and b!1535507 res!1052738) b!1535511))

(assert (= (and b!1535511 res!1052736) b!1535508))

(assert (= (and b!1535508 res!1052737) b!1535510))

(assert (= (and b!1535510 res!1052733) b!1535509))

(assert (= (and b!1535509 res!1052731) b!1535512))

(assert (= (and b!1535512 res!1052730) b!1535514))

(declare-fun m!1418047 () Bool)

(assert (=> b!1535507 m!1418047))

(declare-fun m!1418049 () Bool)

(assert (=> start!130952 m!1418049))

(declare-fun m!1418051 () Bool)

(assert (=> start!130952 m!1418051))

(declare-fun m!1418053 () Bool)

(assert (=> b!1535506 m!1418053))

(assert (=> b!1535506 m!1418053))

(declare-fun m!1418055 () Bool)

(assert (=> b!1535506 m!1418055))

(declare-fun m!1418057 () Bool)

(assert (=> b!1535508 m!1418057))

(declare-fun m!1418059 () Bool)

(assert (=> b!1535512 m!1418059))

(declare-fun m!1418061 () Bool)

(assert (=> b!1535515 m!1418061))

(assert (=> b!1535515 m!1418061))

(declare-fun m!1418063 () Bool)

(assert (=> b!1535515 m!1418063))

(declare-fun m!1418065 () Bool)

(assert (=> b!1535511 m!1418065))

(assert (=> b!1535510 m!1418061))

(assert (=> b!1535510 m!1418061))

(declare-fun m!1418067 () Bool)

(assert (=> b!1535510 m!1418067))

(assert (=> b!1535514 m!1418061))

(assert (=> b!1535514 m!1418061))

(declare-fun m!1418069 () Bool)

(assert (=> b!1535514 m!1418069))

(declare-fun m!1418071 () Bool)

(assert (=> b!1535509 m!1418071))

(assert (=> b!1535509 m!1418061))

(push 1)

(assert (not b!1535507))

(assert (not b!1535506))

(assert (not b!1535511))

(assert (not b!1535514))

(assert (not b!1535515))

(assert (not b!1535512))

(assert (not start!130952))

(assert (not b!1535510))

(check-sat)

