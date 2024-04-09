; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130878 () Bool)

(assert start!130878)

(declare-fun b!1534396 () Bool)

(declare-fun e!854477 () Bool)

(declare-fun e!854476 () Bool)

(assert (=> b!1534396 (= e!854477 e!854476)))

(declare-fun res!1051626 () Bool)

(assert (=> b!1534396 (=> (not res!1051626) (not e!854476))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101903 0))(
  ( (array!101904 (arr!49163 (Array (_ BitVec 32) (_ BitVec 64))) (size!49714 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101903)

(declare-fun lt!663799 () (_ BitVec 32))

(assert (=> b!1534396 (= res!1051626 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663799 #b00000000000000000000000000000000) (bvslt lt!663799 (size!49714 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534396 (= lt!663799 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534397 () Bool)

(declare-fun res!1051622 () Bool)

(assert (=> b!1534397 (=> (not res!1051622) (not e!854477))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13318 0))(
  ( (MissingZero!13318 (index!55666 (_ BitVec 32))) (Found!13318 (index!55667 (_ BitVec 32))) (Intermediate!13318 (undefined!14130 Bool) (index!55668 (_ BitVec 32)) (x!137427 (_ BitVec 32))) (Undefined!13318) (MissingVacant!13318 (index!55669 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101903 (_ BitVec 32)) SeekEntryResult!13318)

(assert (=> b!1534397 (= res!1051622 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49163 a!2792) j!64) a!2792 mask!2480) (Found!13318 j!64)))))

(declare-fun b!1534398 () Bool)

(declare-fun res!1051625 () Bool)

(assert (=> b!1534398 (=> (not res!1051625) (not e!854477))))

(assert (=> b!1534398 (= res!1051625 (not (= (select (arr!49163 a!2792) index!463) (select (arr!49163 a!2792) j!64))))))

(declare-fun b!1534399 () Bool)

(declare-fun res!1051620 () Bool)

(assert (=> b!1534399 (=> (not res!1051620) (not e!854477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534399 (= res!1051620 (validKeyInArray!0 (select (arr!49163 a!2792) j!64)))))

(declare-fun b!1534400 () Bool)

(declare-fun res!1051629 () Bool)

(assert (=> b!1534400 (=> (not res!1051629) (not e!854477))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534400 (= res!1051629 (validKeyInArray!0 (select (arr!49163 a!2792) i!951)))))

(declare-fun b!1534401 () Bool)

(declare-fun res!1051624 () Bool)

(assert (=> b!1534401 (=> (not res!1051624) (not e!854477))))

(declare-datatypes ((List!35817 0))(
  ( (Nil!35814) (Cons!35813 (h!37259 (_ BitVec 64)) (t!50518 List!35817)) )
))
(declare-fun arrayNoDuplicates!0 (array!101903 (_ BitVec 32) List!35817) Bool)

(assert (=> b!1534401 (= res!1051624 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35814))))

(declare-fun res!1051621 () Bool)

(assert (=> start!130878 (=> (not res!1051621) (not e!854477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130878 (= res!1051621 (validMask!0 mask!2480))))

(assert (=> start!130878 e!854477))

(assert (=> start!130878 true))

(declare-fun array_inv!38108 (array!101903) Bool)

(assert (=> start!130878 (array_inv!38108 a!2792)))

(declare-fun b!1534402 () Bool)

(declare-fun res!1051627 () Bool)

(assert (=> b!1534402 (=> (not res!1051627) (not e!854477))))

(assert (=> b!1534402 (= res!1051627 (and (= (size!49714 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49714 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49714 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534403 () Bool)

(declare-fun res!1051623 () Bool)

(assert (=> b!1534403 (=> (not res!1051623) (not e!854477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101903 (_ BitVec 32)) Bool)

(assert (=> b!1534403 (= res!1051623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534404 () Bool)

(assert (=> b!1534404 (= e!854476 false)))

(declare-fun lt!663798 () SeekEntryResult!13318)

(assert (=> b!1534404 (= lt!663798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663799 vacantIndex!5 (select (arr!49163 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534405 () Bool)

(declare-fun res!1051628 () Bool)

(assert (=> b!1534405 (=> (not res!1051628) (not e!854477))))

(assert (=> b!1534405 (= res!1051628 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49714 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49714 a!2792)) (= (select (arr!49163 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130878 res!1051621) b!1534402))

(assert (= (and b!1534402 res!1051627) b!1534400))

(assert (= (and b!1534400 res!1051629) b!1534399))

(assert (= (and b!1534399 res!1051620) b!1534403))

(assert (= (and b!1534403 res!1051623) b!1534401))

(assert (= (and b!1534401 res!1051624) b!1534405))

(assert (= (and b!1534405 res!1051628) b!1534397))

(assert (= (and b!1534397 res!1051622) b!1534398))

(assert (= (and b!1534398 res!1051625) b!1534396))

(assert (= (and b!1534396 res!1051626) b!1534404))

(declare-fun m!1417085 () Bool)

(assert (=> b!1534400 m!1417085))

(assert (=> b!1534400 m!1417085))

(declare-fun m!1417087 () Bool)

(assert (=> b!1534400 m!1417087))

(declare-fun m!1417089 () Bool)

(assert (=> b!1534399 m!1417089))

(assert (=> b!1534399 m!1417089))

(declare-fun m!1417091 () Bool)

(assert (=> b!1534399 m!1417091))

(declare-fun m!1417093 () Bool)

(assert (=> b!1534403 m!1417093))

(declare-fun m!1417095 () Bool)

(assert (=> b!1534405 m!1417095))

(declare-fun m!1417097 () Bool)

(assert (=> start!130878 m!1417097))

(declare-fun m!1417099 () Bool)

(assert (=> start!130878 m!1417099))

(declare-fun m!1417101 () Bool)

(assert (=> b!1534401 m!1417101))

(declare-fun m!1417103 () Bool)

(assert (=> b!1534396 m!1417103))

(declare-fun m!1417105 () Bool)

(assert (=> b!1534398 m!1417105))

(assert (=> b!1534398 m!1417089))

(assert (=> b!1534397 m!1417089))

(assert (=> b!1534397 m!1417089))

(declare-fun m!1417107 () Bool)

(assert (=> b!1534397 m!1417107))

(assert (=> b!1534404 m!1417089))

(assert (=> b!1534404 m!1417089))

(declare-fun m!1417109 () Bool)

(assert (=> b!1534404 m!1417109))

(check-sat (not b!1534401) (not b!1534403) (not b!1534399) (not b!1534404) (not b!1534397) (not start!130878) (not b!1534396) (not b!1534400))
(check-sat)
