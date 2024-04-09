; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130864 () Bool)

(assert start!130864)

(declare-fun res!1051451 () Bool)

(declare-fun e!854428 () Bool)

(assert (=> start!130864 (=> (not res!1051451) (not e!854428))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130864 (= res!1051451 (validMask!0 mask!2480))))

(assert (=> start!130864 e!854428))

(assert (=> start!130864 true))

(declare-datatypes ((array!101889 0))(
  ( (array!101890 (arr!49156 (Array (_ BitVec 32) (_ BitVec 64))) (size!49707 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101889)

(declare-fun array_inv!38101 (array!101889) Bool)

(assert (=> start!130864 (array_inv!38101 a!2792)))

(declare-fun b!1534227 () Bool)

(declare-fun res!1051454 () Bool)

(assert (=> b!1534227 (=> (not res!1051454) (not e!854428))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534227 (= res!1051454 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49707 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49707 a!2792)) (= (select (arr!49156 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534228 () Bool)

(declare-fun res!1051455 () Bool)

(assert (=> b!1534228 (=> (not res!1051455) (not e!854428))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534228 (= res!1051455 (validKeyInArray!0 (select (arr!49156 a!2792) i!951)))))

(declare-fun b!1534229 () Bool)

(declare-fun res!1051452 () Bool)

(assert (=> b!1534229 (=> (not res!1051452) (not e!854428))))

(declare-datatypes ((List!35810 0))(
  ( (Nil!35807) (Cons!35806 (h!37252 (_ BitVec 64)) (t!50511 List!35810)) )
))
(declare-fun arrayNoDuplicates!0 (array!101889 (_ BitVec 32) List!35810) Bool)

(assert (=> b!1534229 (= res!1051452 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35807))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun b!1534230 () Bool)

(assert (=> b!1534230 (= e!854428 (and (not (= (select (arr!49156 a!2792) index!463) (select (arr!49156 a!2792) j!64))) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1534231 () Bool)

(declare-fun res!1051457 () Bool)

(assert (=> b!1534231 (=> (not res!1051457) (not e!854428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101889 (_ BitVec 32)) Bool)

(assert (=> b!1534231 (= res!1051457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534232 () Bool)

(declare-fun res!1051458 () Bool)

(assert (=> b!1534232 (=> (not res!1051458) (not e!854428))))

(assert (=> b!1534232 (= res!1051458 (validKeyInArray!0 (select (arr!49156 a!2792) j!64)))))

(declare-fun b!1534233 () Bool)

(declare-fun res!1051456 () Bool)

(assert (=> b!1534233 (=> (not res!1051456) (not e!854428))))

(declare-datatypes ((SeekEntryResult!13311 0))(
  ( (MissingZero!13311 (index!55638 (_ BitVec 32))) (Found!13311 (index!55639 (_ BitVec 32))) (Intermediate!13311 (undefined!14123 Bool) (index!55640 (_ BitVec 32)) (x!137404 (_ BitVec 32))) (Undefined!13311) (MissingVacant!13311 (index!55641 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101889 (_ BitVec 32)) SeekEntryResult!13311)

(assert (=> b!1534233 (= res!1051456 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49156 a!2792) j!64) a!2792 mask!2480) (Found!13311 j!64)))))

(declare-fun b!1534234 () Bool)

(declare-fun res!1051453 () Bool)

(assert (=> b!1534234 (=> (not res!1051453) (not e!854428))))

(assert (=> b!1534234 (= res!1051453 (and (= (size!49707 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49707 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49707 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130864 res!1051451) b!1534234))

(assert (= (and b!1534234 res!1051453) b!1534228))

(assert (= (and b!1534228 res!1051455) b!1534232))

(assert (= (and b!1534232 res!1051458) b!1534231))

(assert (= (and b!1534231 res!1051457) b!1534229))

(assert (= (and b!1534229 res!1051452) b!1534227))

(assert (= (and b!1534227 res!1051454) b!1534233))

(assert (= (and b!1534233 res!1051456) b!1534230))

(declare-fun m!1416933 () Bool)

(assert (=> b!1534229 m!1416933))

(declare-fun m!1416935 () Bool)

(assert (=> b!1534230 m!1416935))

(declare-fun m!1416937 () Bool)

(assert (=> b!1534230 m!1416937))

(declare-fun m!1416939 () Bool)

(assert (=> b!1534228 m!1416939))

(assert (=> b!1534228 m!1416939))

(declare-fun m!1416941 () Bool)

(assert (=> b!1534228 m!1416941))

(declare-fun m!1416943 () Bool)

(assert (=> b!1534231 m!1416943))

(assert (=> b!1534233 m!1416937))

(assert (=> b!1534233 m!1416937))

(declare-fun m!1416945 () Bool)

(assert (=> b!1534233 m!1416945))

(declare-fun m!1416947 () Bool)

(assert (=> start!130864 m!1416947))

(declare-fun m!1416949 () Bool)

(assert (=> start!130864 m!1416949))

(declare-fun m!1416951 () Bool)

(assert (=> b!1534227 m!1416951))

(assert (=> b!1534232 m!1416937))

(assert (=> b!1534232 m!1416937))

(declare-fun m!1416953 () Bool)

(assert (=> b!1534232 m!1416953))

(push 1)

(assert (not b!1534232))

(assert (not start!130864))

(assert (not b!1534233))

(assert (not b!1534231))

(assert (not b!1534228))

(assert (not b!1534229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

