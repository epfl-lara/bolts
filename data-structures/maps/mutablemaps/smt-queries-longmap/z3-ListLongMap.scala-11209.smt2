; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130920 () Bool)

(assert start!130920)

(declare-fun b!1535026 () Bool)

(declare-fun res!1052258 () Bool)

(declare-fun e!854664 () Bool)

(assert (=> b!1535026 (=> (not res!1052258) (not e!854664))))

(declare-datatypes ((array!101945 0))(
  ( (array!101946 (arr!49184 (Array (_ BitVec 32) (_ BitVec 64))) (size!49735 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101945)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535026 (= res!1052258 (validKeyInArray!0 (select (arr!49184 a!2792) j!64)))))

(declare-fun b!1535027 () Bool)

(declare-fun res!1052251 () Bool)

(assert (=> b!1535027 (=> (not res!1052251) (not e!854664))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13339 0))(
  ( (MissingZero!13339 (index!55750 (_ BitVec 32))) (Found!13339 (index!55751 (_ BitVec 32))) (Intermediate!13339 (undefined!14151 Bool) (index!55752 (_ BitVec 32)) (x!137504 (_ BitVec 32))) (Undefined!13339) (MissingVacant!13339 (index!55753 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101945 (_ BitVec 32)) SeekEntryResult!13339)

(assert (=> b!1535027 (= res!1052251 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49184 a!2792) j!64) a!2792 mask!2480) (Found!13339 j!64)))))

(declare-fun b!1535028 () Bool)

(declare-fun res!1052253 () Bool)

(assert (=> b!1535028 (=> (not res!1052253) (not e!854664))))

(assert (=> b!1535028 (= res!1052253 (not (= (select (arr!49184 a!2792) index!463) (select (arr!49184 a!2792) j!64))))))

(declare-fun b!1535029 () Bool)

(declare-fun res!1052255 () Bool)

(assert (=> b!1535029 (=> (not res!1052255) (not e!854664))))

(assert (=> b!1535029 (= res!1052255 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49735 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49735 a!2792)) (= (select (arr!49184 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535030 () Bool)

(declare-fun res!1052252 () Bool)

(assert (=> b!1535030 (=> (not res!1052252) (not e!854664))))

(declare-datatypes ((List!35838 0))(
  ( (Nil!35835) (Cons!35834 (h!37280 (_ BitVec 64)) (t!50539 List!35838)) )
))
(declare-fun arrayNoDuplicates!0 (array!101945 (_ BitVec 32) List!35838) Bool)

(assert (=> b!1535030 (= res!1052252 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35835))))

(declare-fun b!1535031 () Bool)

(declare-fun res!1052254 () Bool)

(assert (=> b!1535031 (=> (not res!1052254) (not e!854664))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535031 (= res!1052254 (and (= (size!49735 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49735 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49735 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535032 () Bool)

(declare-fun res!1052256 () Bool)

(assert (=> b!1535032 (=> (not res!1052256) (not e!854664))))

(assert (=> b!1535032 (= res!1052256 (validKeyInArray!0 (select (arr!49184 a!2792) i!951)))))

(declare-fun b!1535033 () Bool)

(declare-fun e!854665 () Bool)

(assert (=> b!1535033 (= e!854665 false)))

(declare-fun lt!663924 () (_ BitVec 32))

(declare-fun lt!663925 () SeekEntryResult!13339)

(assert (=> b!1535033 (= lt!663925 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663924 vacantIndex!5 (select (arr!49184 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1052250 () Bool)

(assert (=> start!130920 (=> (not res!1052250) (not e!854664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130920 (= res!1052250 (validMask!0 mask!2480))))

(assert (=> start!130920 e!854664))

(assert (=> start!130920 true))

(declare-fun array_inv!38129 (array!101945) Bool)

(assert (=> start!130920 (array_inv!38129 a!2792)))

(declare-fun b!1535034 () Bool)

(assert (=> b!1535034 (= e!854664 e!854665)))

(declare-fun res!1052259 () Bool)

(assert (=> b!1535034 (=> (not res!1052259) (not e!854665))))

(assert (=> b!1535034 (= res!1052259 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663924 #b00000000000000000000000000000000) (bvslt lt!663924 (size!49735 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535034 (= lt!663924 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535035 () Bool)

(declare-fun res!1052257 () Bool)

(assert (=> b!1535035 (=> (not res!1052257) (not e!854664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101945 (_ BitVec 32)) Bool)

(assert (=> b!1535035 (= res!1052257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130920 res!1052250) b!1535031))

(assert (= (and b!1535031 res!1052254) b!1535032))

(assert (= (and b!1535032 res!1052256) b!1535026))

(assert (= (and b!1535026 res!1052258) b!1535035))

(assert (= (and b!1535035 res!1052257) b!1535030))

(assert (= (and b!1535030 res!1052252) b!1535029))

(assert (= (and b!1535029 res!1052255) b!1535027))

(assert (= (and b!1535027 res!1052251) b!1535028))

(assert (= (and b!1535028 res!1052253) b!1535034))

(assert (= (and b!1535034 res!1052259) b!1535033))

(declare-fun m!1417631 () Bool)

(assert (=> b!1535027 m!1417631))

(assert (=> b!1535027 m!1417631))

(declare-fun m!1417633 () Bool)

(assert (=> b!1535027 m!1417633))

(declare-fun m!1417635 () Bool)

(assert (=> start!130920 m!1417635))

(declare-fun m!1417637 () Bool)

(assert (=> start!130920 m!1417637))

(assert (=> b!1535026 m!1417631))

(assert (=> b!1535026 m!1417631))

(declare-fun m!1417639 () Bool)

(assert (=> b!1535026 m!1417639))

(declare-fun m!1417641 () Bool)

(assert (=> b!1535028 m!1417641))

(assert (=> b!1535028 m!1417631))

(declare-fun m!1417643 () Bool)

(assert (=> b!1535030 m!1417643))

(declare-fun m!1417645 () Bool)

(assert (=> b!1535035 m!1417645))

(declare-fun m!1417647 () Bool)

(assert (=> b!1535032 m!1417647))

(assert (=> b!1535032 m!1417647))

(declare-fun m!1417649 () Bool)

(assert (=> b!1535032 m!1417649))

(assert (=> b!1535033 m!1417631))

(assert (=> b!1535033 m!1417631))

(declare-fun m!1417651 () Bool)

(assert (=> b!1535033 m!1417651))

(declare-fun m!1417653 () Bool)

(assert (=> b!1535034 m!1417653))

(declare-fun m!1417655 () Bool)

(assert (=> b!1535029 m!1417655))

(check-sat (not b!1535033) (not b!1535035) (not b!1535032) (not b!1535027) (not b!1535030) (not b!1535026) (not b!1535034) (not start!130920))
(check-sat)
