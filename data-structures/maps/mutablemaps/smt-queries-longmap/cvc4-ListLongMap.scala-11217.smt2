; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130970 () Bool)

(assert start!130970)

(declare-fun b!1535776 () Bool)

(declare-fun res!1053002 () Bool)

(declare-fun e!854890 () Bool)

(assert (=> b!1535776 (=> (not res!1053002) (not e!854890))))

(declare-datatypes ((array!101995 0))(
  ( (array!101996 (arr!49209 (Array (_ BitVec 32) (_ BitVec 64))) (size!49760 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101995)

(declare-datatypes ((List!35863 0))(
  ( (Nil!35860) (Cons!35859 (h!37305 (_ BitVec 64)) (t!50564 List!35863)) )
))
(declare-fun arrayNoDuplicates!0 (array!101995 (_ BitVec 32) List!35863) Bool)

(assert (=> b!1535776 (= res!1053002 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35860))))

(declare-fun b!1535777 () Bool)

(declare-fun e!854889 () Bool)

(assert (=> b!1535777 (= e!854889 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13364 0))(
  ( (MissingZero!13364 (index!55850 (_ BitVec 32))) (Found!13364 (index!55851 (_ BitVec 32))) (Intermediate!13364 (undefined!14176 Bool) (index!55852 (_ BitVec 32)) (x!137593 (_ BitVec 32))) (Undefined!13364) (MissingVacant!13364 (index!55853 (_ BitVec 32))) )
))
(declare-fun lt!664075 () SeekEntryResult!13364)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!664074 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101995 (_ BitVec 32)) SeekEntryResult!13364)

(assert (=> b!1535777 (= lt!664075 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664074 vacantIndex!5 (select (arr!49209 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535778 () Bool)

(assert (=> b!1535778 (= e!854890 e!854889)))

(declare-fun res!1053008 () Bool)

(assert (=> b!1535778 (=> (not res!1053008) (not e!854889))))

(assert (=> b!1535778 (= res!1053008 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664074 #b00000000000000000000000000000000) (bvslt lt!664074 (size!49760 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535778 (= lt!664074 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535779 () Bool)

(declare-fun res!1053005 () Bool)

(assert (=> b!1535779 (=> (not res!1053005) (not e!854890))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535779 (= res!1053005 (and (= (size!49760 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49760 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49760 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535780 () Bool)

(declare-fun res!1053007 () Bool)

(assert (=> b!1535780 (=> (not res!1053007) (not e!854890))))

(assert (=> b!1535780 (= res!1053007 (not (= (select (arr!49209 a!2792) index!463) (select (arr!49209 a!2792) j!64))))))

(declare-fun b!1535782 () Bool)

(declare-fun res!1053003 () Bool)

(assert (=> b!1535782 (=> (not res!1053003) (not e!854890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101995 (_ BitVec 32)) Bool)

(assert (=> b!1535782 (= res!1053003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535783 () Bool)

(declare-fun res!1053000 () Bool)

(assert (=> b!1535783 (=> (not res!1053000) (not e!854890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535783 (= res!1053000 (validKeyInArray!0 (select (arr!49209 a!2792) j!64)))))

(declare-fun b!1535784 () Bool)

(declare-fun res!1053001 () Bool)

(assert (=> b!1535784 (=> (not res!1053001) (not e!854890))))

(assert (=> b!1535784 (= res!1053001 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49760 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49760 a!2792)) (= (select (arr!49209 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535785 () Bool)

(declare-fun res!1053004 () Bool)

(assert (=> b!1535785 (=> (not res!1053004) (not e!854890))))

(assert (=> b!1535785 (= res!1053004 (validKeyInArray!0 (select (arr!49209 a!2792) i!951)))))

(declare-fun res!1053006 () Bool)

(assert (=> start!130970 (=> (not res!1053006) (not e!854890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130970 (= res!1053006 (validMask!0 mask!2480))))

(assert (=> start!130970 e!854890))

(assert (=> start!130970 true))

(declare-fun array_inv!38154 (array!101995) Bool)

(assert (=> start!130970 (array_inv!38154 a!2792)))

(declare-fun b!1535781 () Bool)

(declare-fun res!1053009 () Bool)

(assert (=> b!1535781 (=> (not res!1053009) (not e!854890))))

(assert (=> b!1535781 (= res!1053009 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49209 a!2792) j!64) a!2792 mask!2480) (Found!13364 j!64)))))

(assert (= (and start!130970 res!1053006) b!1535779))

(assert (= (and b!1535779 res!1053005) b!1535785))

(assert (= (and b!1535785 res!1053004) b!1535783))

(assert (= (and b!1535783 res!1053000) b!1535782))

(assert (= (and b!1535782 res!1053003) b!1535776))

(assert (= (and b!1535776 res!1053002) b!1535784))

(assert (= (and b!1535784 res!1053001) b!1535781))

(assert (= (and b!1535781 res!1053009) b!1535780))

(assert (= (and b!1535780 res!1053007) b!1535778))

(assert (= (and b!1535778 res!1053008) b!1535777))

(declare-fun m!1418281 () Bool)

(assert (=> b!1535785 m!1418281))

(assert (=> b!1535785 m!1418281))

(declare-fun m!1418283 () Bool)

(assert (=> b!1535785 m!1418283))

(declare-fun m!1418285 () Bool)

(assert (=> b!1535780 m!1418285))

(declare-fun m!1418287 () Bool)

(assert (=> b!1535780 m!1418287))

(declare-fun m!1418289 () Bool)

(assert (=> b!1535778 m!1418289))

(declare-fun m!1418291 () Bool)

(assert (=> b!1535776 m!1418291))

(declare-fun m!1418293 () Bool)

(assert (=> b!1535782 m!1418293))

(assert (=> b!1535777 m!1418287))

(assert (=> b!1535777 m!1418287))

(declare-fun m!1418295 () Bool)

(assert (=> b!1535777 m!1418295))

(declare-fun m!1418297 () Bool)

(assert (=> b!1535784 m!1418297))

(declare-fun m!1418299 () Bool)

(assert (=> start!130970 m!1418299))

(declare-fun m!1418301 () Bool)

(assert (=> start!130970 m!1418301))

(assert (=> b!1535781 m!1418287))

(assert (=> b!1535781 m!1418287))

(declare-fun m!1418303 () Bool)

(assert (=> b!1535781 m!1418303))

(assert (=> b!1535783 m!1418287))

(assert (=> b!1535783 m!1418287))

(declare-fun m!1418305 () Bool)

(assert (=> b!1535783 m!1418305))

(push 1)

(assert (not b!1535781))

(assert (not start!130970))

(assert (not b!1535777))

(assert (not b!1535778))

(assert (not b!1535783))

(assert (not b!1535776))

(assert (not b!1535782))

(assert (not b!1535785))

