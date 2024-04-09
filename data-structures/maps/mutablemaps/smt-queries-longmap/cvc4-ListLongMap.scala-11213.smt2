; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130946 () Bool)

(assert start!130946)

(declare-fun b!1535416 () Bool)

(declare-fun e!854781 () Bool)

(declare-fun e!854783 () Bool)

(assert (=> b!1535416 (= e!854781 e!854783)))

(declare-fun res!1052646 () Bool)

(assert (=> b!1535416 (=> (not res!1052646) (not e!854783))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101971 0))(
  ( (array!101972 (arr!49197 (Array (_ BitVec 32) (_ BitVec 64))) (size!49748 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101971)

(declare-fun lt!664002 () (_ BitVec 32))

(assert (=> b!1535416 (= res!1052646 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664002 #b00000000000000000000000000000000) (bvslt lt!664002 (size!49748 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535416 (= lt!664002 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535417 () Bool)

(declare-fun res!1052648 () Bool)

(assert (=> b!1535417 (=> (not res!1052648) (not e!854781))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1535417 (= res!1052648 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49748 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49748 a!2792)) (= (select (arr!49197 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535418 () Bool)

(declare-fun res!1052642 () Bool)

(assert (=> b!1535418 (=> (not res!1052642) (not e!854781))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535418 (= res!1052642 (and (= (size!49748 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49748 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49748 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535419 () Bool)

(declare-fun res!1052645 () Bool)

(assert (=> b!1535419 (=> (not res!1052645) (not e!854781))))

(assert (=> b!1535419 (= res!1052645 (not (= (select (arr!49197 a!2792) index!463) (select (arr!49197 a!2792) j!64))))))

(declare-fun b!1535420 () Bool)

(declare-fun res!1052644 () Bool)

(assert (=> b!1535420 (=> (not res!1052644) (not e!854781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535420 (= res!1052644 (validKeyInArray!0 (select (arr!49197 a!2792) j!64)))))

(declare-fun b!1535421 () Bool)

(declare-fun res!1052640 () Bool)

(assert (=> b!1535421 (=> (not res!1052640) (not e!854781))))

(declare-datatypes ((SeekEntryResult!13352 0))(
  ( (MissingZero!13352 (index!55802 (_ BitVec 32))) (Found!13352 (index!55803 (_ BitVec 32))) (Intermediate!13352 (undefined!14164 Bool) (index!55804 (_ BitVec 32)) (x!137549 (_ BitVec 32))) (Undefined!13352) (MissingVacant!13352 (index!55805 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101971 (_ BitVec 32)) SeekEntryResult!13352)

(assert (=> b!1535421 (= res!1052640 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49197 a!2792) j!64) a!2792 mask!2480) (Found!13352 j!64)))))

(declare-fun b!1535423 () Bool)

(declare-fun res!1052643 () Bool)

(assert (=> b!1535423 (=> (not res!1052643) (not e!854781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101971 (_ BitVec 32)) Bool)

(assert (=> b!1535423 (= res!1052643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535422 () Bool)

(declare-fun res!1052649 () Bool)

(assert (=> b!1535422 (=> (not res!1052649) (not e!854781))))

(assert (=> b!1535422 (= res!1052649 (validKeyInArray!0 (select (arr!49197 a!2792) i!951)))))

(declare-fun res!1052641 () Bool)

(assert (=> start!130946 (=> (not res!1052641) (not e!854781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130946 (= res!1052641 (validMask!0 mask!2480))))

(assert (=> start!130946 e!854781))

(assert (=> start!130946 true))

(declare-fun array_inv!38142 (array!101971) Bool)

(assert (=> start!130946 (array_inv!38142 a!2792)))

(declare-fun b!1535424 () Bool)

(assert (=> b!1535424 (= e!854783 false)))

(declare-fun lt!664003 () SeekEntryResult!13352)

(assert (=> b!1535424 (= lt!664003 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664002 vacantIndex!5 (select (arr!49197 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535425 () Bool)

(declare-fun res!1052647 () Bool)

(assert (=> b!1535425 (=> (not res!1052647) (not e!854781))))

(declare-datatypes ((List!35851 0))(
  ( (Nil!35848) (Cons!35847 (h!37293 (_ BitVec 64)) (t!50552 List!35851)) )
))
(declare-fun arrayNoDuplicates!0 (array!101971 (_ BitVec 32) List!35851) Bool)

(assert (=> b!1535425 (= res!1052647 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35848))))

(assert (= (and start!130946 res!1052641) b!1535418))

(assert (= (and b!1535418 res!1052642) b!1535422))

(assert (= (and b!1535422 res!1052649) b!1535420))

(assert (= (and b!1535420 res!1052644) b!1535423))

(assert (= (and b!1535423 res!1052643) b!1535425))

(assert (= (and b!1535425 res!1052647) b!1535417))

(assert (= (and b!1535417 res!1052648) b!1535421))

(assert (= (and b!1535421 res!1052640) b!1535419))

(assert (= (and b!1535419 res!1052645) b!1535416))

(assert (= (and b!1535416 res!1052646) b!1535424))

(declare-fun m!1417969 () Bool)

(assert (=> b!1535421 m!1417969))

(assert (=> b!1535421 m!1417969))

(declare-fun m!1417971 () Bool)

(assert (=> b!1535421 m!1417971))

(assert (=> b!1535420 m!1417969))

(assert (=> b!1535420 m!1417969))

(declare-fun m!1417973 () Bool)

(assert (=> b!1535420 m!1417973))

(assert (=> b!1535424 m!1417969))

(assert (=> b!1535424 m!1417969))

(declare-fun m!1417975 () Bool)

(assert (=> b!1535424 m!1417975))

(declare-fun m!1417977 () Bool)

(assert (=> b!1535425 m!1417977))

(declare-fun m!1417979 () Bool)

(assert (=> b!1535416 m!1417979))

(declare-fun m!1417981 () Bool)

(assert (=> start!130946 m!1417981))

(declare-fun m!1417983 () Bool)

(assert (=> start!130946 m!1417983))

(declare-fun m!1417985 () Bool)

(assert (=> b!1535422 m!1417985))

(assert (=> b!1535422 m!1417985))

(declare-fun m!1417987 () Bool)

(assert (=> b!1535422 m!1417987))

(declare-fun m!1417989 () Bool)

(assert (=> b!1535423 m!1417989))

(declare-fun m!1417991 () Bool)

(assert (=> b!1535419 m!1417991))

(assert (=> b!1535419 m!1417969))

(declare-fun m!1417993 () Bool)

(assert (=> b!1535417 m!1417993))

(push 1)

(assert (not b!1535422))

(assert (not b!1535423))

(assert (not start!130946))

(assert (not b!1535421))

