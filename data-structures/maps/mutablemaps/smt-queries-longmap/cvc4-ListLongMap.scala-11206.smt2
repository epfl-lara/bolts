; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130904 () Bool)

(assert start!130904)

(declare-fun res!1052016 () Bool)

(declare-fun e!854594 () Bool)

(assert (=> start!130904 (=> (not res!1052016) (not e!854594))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130904 (= res!1052016 (validMask!0 mask!2480))))

(assert (=> start!130904 e!854594))

(assert (=> start!130904 true))

(declare-datatypes ((array!101929 0))(
  ( (array!101930 (arr!49176 (Array (_ BitVec 32) (_ BitVec 64))) (size!49727 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101929)

(declare-fun array_inv!38121 (array!101929) Bool)

(assert (=> start!130904 (array_inv!38121 a!2792)))

(declare-fun b!1534786 () Bool)

(declare-fun res!1052013 () Bool)

(assert (=> b!1534786 (=> (not res!1052013) (not e!854594))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534786 (= res!1052013 (and (= (size!49727 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49727 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49727 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534787 () Bool)

(declare-fun res!1052019 () Bool)

(assert (=> b!1534787 (=> (not res!1052019) (not e!854594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101929 (_ BitVec 32)) Bool)

(assert (=> b!1534787 (= res!1052019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534788 () Bool)

(declare-fun res!1052018 () Bool)

(assert (=> b!1534788 (=> (not res!1052018) (not e!854594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534788 (= res!1052018 (validKeyInArray!0 (select (arr!49176 a!2792) i!951)))))

(declare-fun b!1534789 () Bool)

(declare-fun res!1052012 () Bool)

(assert (=> b!1534789 (=> (not res!1052012) (not e!854594))))

(assert (=> b!1534789 (= res!1052012 (validKeyInArray!0 (select (arr!49176 a!2792) j!64)))))

(declare-fun b!1534790 () Bool)

(declare-fun res!1052015 () Bool)

(assert (=> b!1534790 (=> (not res!1052015) (not e!854594))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534790 (= res!1052015 (not (= (select (arr!49176 a!2792) index!463) (select (arr!49176 a!2792) j!64))))))

(declare-fun b!1534791 () Bool)

(declare-fun res!1052010 () Bool)

(assert (=> b!1534791 (=> (not res!1052010) (not e!854594))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13331 0))(
  ( (MissingZero!13331 (index!55718 (_ BitVec 32))) (Found!13331 (index!55719 (_ BitVec 32))) (Intermediate!13331 (undefined!14143 Bool) (index!55720 (_ BitVec 32)) (x!137472 (_ BitVec 32))) (Undefined!13331) (MissingVacant!13331 (index!55721 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101929 (_ BitVec 32)) SeekEntryResult!13331)

(assert (=> b!1534791 (= res!1052010 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49176 a!2792) j!64) a!2792 mask!2480) (Found!13331 j!64)))))

(declare-fun b!1534792 () Bool)

(declare-fun res!1052014 () Bool)

(assert (=> b!1534792 (=> (not res!1052014) (not e!854594))))

(declare-datatypes ((List!35830 0))(
  ( (Nil!35827) (Cons!35826 (h!37272 (_ BitVec 64)) (t!50531 List!35830)) )
))
(declare-fun arrayNoDuplicates!0 (array!101929 (_ BitVec 32) List!35830) Bool)

(assert (=> b!1534792 (= res!1052014 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35827))))

(declare-fun b!1534793 () Bool)

(declare-fun res!1052011 () Bool)

(assert (=> b!1534793 (=> (not res!1052011) (not e!854594))))

(assert (=> b!1534793 (= res!1052011 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49727 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49727 a!2792)) (= (select (arr!49176 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534794 () Bool)

(declare-fun e!854592 () Bool)

(assert (=> b!1534794 (= e!854594 e!854592)))

(declare-fun res!1052017 () Bool)

(assert (=> b!1534794 (=> (not res!1052017) (not e!854592))))

(declare-fun lt!663876 () (_ BitVec 32))

(assert (=> b!1534794 (= res!1052017 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663876 #b00000000000000000000000000000000) (bvslt lt!663876 (size!49727 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534794 (= lt!663876 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534795 () Bool)

(assert (=> b!1534795 (= e!854592 false)))

(declare-fun lt!663877 () SeekEntryResult!13331)

(assert (=> b!1534795 (= lt!663877 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663876 vacantIndex!5 (select (arr!49176 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130904 res!1052016) b!1534786))

(assert (= (and b!1534786 res!1052013) b!1534788))

(assert (= (and b!1534788 res!1052018) b!1534789))

(assert (= (and b!1534789 res!1052012) b!1534787))

(assert (= (and b!1534787 res!1052019) b!1534792))

(assert (= (and b!1534792 res!1052014) b!1534793))

(assert (= (and b!1534793 res!1052011) b!1534791))

(assert (= (and b!1534791 res!1052010) b!1534790))

(assert (= (and b!1534790 res!1052015) b!1534794))

(assert (= (and b!1534794 res!1052017) b!1534795))

(declare-fun m!1417423 () Bool)

(assert (=> b!1534794 m!1417423))

(declare-fun m!1417425 () Bool)

(assert (=> b!1534795 m!1417425))

(assert (=> b!1534795 m!1417425))

(declare-fun m!1417427 () Bool)

(assert (=> b!1534795 m!1417427))

(assert (=> b!1534789 m!1417425))

(assert (=> b!1534789 m!1417425))

(declare-fun m!1417429 () Bool)

(assert (=> b!1534789 m!1417429))

(declare-fun m!1417431 () Bool)

(assert (=> b!1534793 m!1417431))

(declare-fun m!1417433 () Bool)

(assert (=> b!1534788 m!1417433))

(assert (=> b!1534788 m!1417433))

(declare-fun m!1417435 () Bool)

(assert (=> b!1534788 m!1417435))

(declare-fun m!1417437 () Bool)

(assert (=> b!1534787 m!1417437))

(declare-fun m!1417439 () Bool)

(assert (=> start!130904 m!1417439))

(declare-fun m!1417441 () Bool)

(assert (=> start!130904 m!1417441))

(declare-fun m!1417443 () Bool)

(assert (=> b!1534790 m!1417443))

(assert (=> b!1534790 m!1417425))

(declare-fun m!1417445 () Bool)

(assert (=> b!1534792 m!1417445))

(assert (=> b!1534791 m!1417425))

(assert (=> b!1534791 m!1417425))

(declare-fun m!1417447 () Bool)

(assert (=> b!1534791 m!1417447))

(push 1)

(assert (not b!1534789))

(assert (not b!1534788))

(assert (not b!1534794))

(assert (not b!1534792))

(assert (not start!130904))

(assert (not b!1534791))

(assert (not b!1534795))

(assert (not b!1534787))

(check-sat)

