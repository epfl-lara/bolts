; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130722 () Bool)

(assert start!130722)

(declare-fun b!1532724 () Bool)

(declare-fun e!854003 () Bool)

(assert (=> b!1532724 (= e!854003 false)))

(declare-fun lt!663667 () Bool)

(declare-datatypes ((array!101747 0))(
  ( (array!101748 (arr!49085 (Array (_ BitVec 32) (_ BitVec 64))) (size!49636 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101747)

(declare-datatypes ((List!35739 0))(
  ( (Nil!35736) (Cons!35735 (h!37181 (_ BitVec 64)) (t!50440 List!35739)) )
))
(declare-fun arrayNoDuplicates!0 (array!101747 (_ BitVec 32) List!35739) Bool)

(assert (=> b!1532724 (= lt!663667 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35736))))

(declare-fun b!1532725 () Bool)

(declare-fun res!1049950 () Bool)

(assert (=> b!1532725 (=> (not res!1049950) (not e!854003))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532725 (= res!1049950 (and (= (size!49636 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49636 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49636 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049949 () Bool)

(assert (=> start!130722 (=> (not res!1049949) (not e!854003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130722 (= res!1049949 (validMask!0 mask!2480))))

(assert (=> start!130722 e!854003))

(assert (=> start!130722 true))

(declare-fun array_inv!38030 (array!101747) Bool)

(assert (=> start!130722 (array_inv!38030 a!2792)))

(declare-fun b!1532726 () Bool)

(declare-fun res!1049948 () Bool)

(assert (=> b!1532726 (=> (not res!1049948) (not e!854003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532726 (= res!1049948 (validKeyInArray!0 (select (arr!49085 a!2792) i!951)))))

(declare-fun b!1532727 () Bool)

(declare-fun res!1049951 () Bool)

(assert (=> b!1532727 (=> (not res!1049951) (not e!854003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101747 (_ BitVec 32)) Bool)

(assert (=> b!1532727 (= res!1049951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532728 () Bool)

(declare-fun res!1049952 () Bool)

(assert (=> b!1532728 (=> (not res!1049952) (not e!854003))))

(assert (=> b!1532728 (= res!1049952 (validKeyInArray!0 (select (arr!49085 a!2792) j!64)))))

(assert (= (and start!130722 res!1049949) b!1532725))

(assert (= (and b!1532725 res!1049950) b!1532726))

(assert (= (and b!1532726 res!1049948) b!1532728))

(assert (= (and b!1532728 res!1049952) b!1532727))

(assert (= (and b!1532727 res!1049951) b!1532724))

(declare-fun m!1415479 () Bool)

(assert (=> b!1532728 m!1415479))

(assert (=> b!1532728 m!1415479))

(declare-fun m!1415481 () Bool)

(assert (=> b!1532728 m!1415481))

(declare-fun m!1415483 () Bool)

(assert (=> b!1532726 m!1415483))

(assert (=> b!1532726 m!1415483))

(declare-fun m!1415485 () Bool)

(assert (=> b!1532726 m!1415485))

(declare-fun m!1415487 () Bool)

(assert (=> start!130722 m!1415487))

(declare-fun m!1415489 () Bool)

(assert (=> start!130722 m!1415489))

(declare-fun m!1415491 () Bool)

(assert (=> b!1532724 m!1415491))

(declare-fun m!1415493 () Bool)

(assert (=> b!1532727 m!1415493))

(check-sat (not b!1532727) (not b!1532726) (not b!1532724) (not start!130722) (not b!1532728))
