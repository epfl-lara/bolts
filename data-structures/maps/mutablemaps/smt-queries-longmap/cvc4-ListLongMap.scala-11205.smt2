; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130898 () Bool)

(assert start!130898)

(declare-fun b!1534696 () Bool)

(declare-fun res!1051929 () Bool)

(declare-fun e!854566 () Bool)

(assert (=> b!1534696 (=> (not res!1051929) (not e!854566))))

(declare-datatypes ((array!101923 0))(
  ( (array!101924 (arr!49173 (Array (_ BitVec 32) (_ BitVec 64))) (size!49724 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101923)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534696 (= res!1051929 (validKeyInArray!0 (select (arr!49173 a!2792) i!951)))))

(declare-fun b!1534698 () Bool)

(declare-fun res!1051922 () Bool)

(assert (=> b!1534698 (=> (not res!1051922) (not e!854566))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534698 (= res!1051922 (not (= (select (arr!49173 a!2792) index!463) (select (arr!49173 a!2792) j!64))))))

(declare-fun b!1534699 () Bool)

(declare-fun e!854565 () Bool)

(assert (=> b!1534699 (= e!854566 e!854565)))

(declare-fun res!1051927 () Bool)

(assert (=> b!1534699 (=> (not res!1051927) (not e!854565))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663858 () (_ BitVec 32))

(assert (=> b!1534699 (= res!1051927 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663858 #b00000000000000000000000000000000) (bvslt lt!663858 (size!49724 a!2792))))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534699 (= lt!663858 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534700 () Bool)

(declare-fun res!1051923 () Bool)

(assert (=> b!1534700 (=> (not res!1051923) (not e!854566))))

(assert (=> b!1534700 (= res!1051923 (and (= (size!49724 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49724 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49724 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534701 () Bool)

(assert (=> b!1534701 (= e!854565 false)))

(declare-datatypes ((SeekEntryResult!13328 0))(
  ( (MissingZero!13328 (index!55706 (_ BitVec 32))) (Found!13328 (index!55707 (_ BitVec 32))) (Intermediate!13328 (undefined!14140 Bool) (index!55708 (_ BitVec 32)) (x!137461 (_ BitVec 32))) (Undefined!13328) (MissingVacant!13328 (index!55709 (_ BitVec 32))) )
))
(declare-fun lt!663859 () SeekEntryResult!13328)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101923 (_ BitVec 32)) SeekEntryResult!13328)

(assert (=> b!1534701 (= lt!663859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663858 vacantIndex!5 (select (arr!49173 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534702 () Bool)

(declare-fun res!1051926 () Bool)

(assert (=> b!1534702 (=> (not res!1051926) (not e!854566))))

(assert (=> b!1534702 (= res!1051926 (validKeyInArray!0 (select (arr!49173 a!2792) j!64)))))

(declare-fun b!1534703 () Bool)

(declare-fun res!1051925 () Bool)

(assert (=> b!1534703 (=> (not res!1051925) (not e!854566))))

(assert (=> b!1534703 (= res!1051925 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49724 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49724 a!2792)) (= (select (arr!49173 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534697 () Bool)

(declare-fun res!1051928 () Bool)

(assert (=> b!1534697 (=> (not res!1051928) (not e!854566))))

(declare-datatypes ((List!35827 0))(
  ( (Nil!35824) (Cons!35823 (h!37269 (_ BitVec 64)) (t!50528 List!35827)) )
))
(declare-fun arrayNoDuplicates!0 (array!101923 (_ BitVec 32) List!35827) Bool)

(assert (=> b!1534697 (= res!1051928 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35824))))

(declare-fun res!1051921 () Bool)

(assert (=> start!130898 (=> (not res!1051921) (not e!854566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130898 (= res!1051921 (validMask!0 mask!2480))))

(assert (=> start!130898 e!854566))

(assert (=> start!130898 true))

(declare-fun array_inv!38118 (array!101923) Bool)

(assert (=> start!130898 (array_inv!38118 a!2792)))

(declare-fun b!1534704 () Bool)

(declare-fun res!1051924 () Bool)

(assert (=> b!1534704 (=> (not res!1051924) (not e!854566))))

(assert (=> b!1534704 (= res!1051924 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49173 a!2792) j!64) a!2792 mask!2480) (Found!13328 j!64)))))

(declare-fun b!1534705 () Bool)

(declare-fun res!1051920 () Bool)

(assert (=> b!1534705 (=> (not res!1051920) (not e!854566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101923 (_ BitVec 32)) Bool)

(assert (=> b!1534705 (= res!1051920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130898 res!1051921) b!1534700))

(assert (= (and b!1534700 res!1051923) b!1534696))

(assert (= (and b!1534696 res!1051929) b!1534702))

(assert (= (and b!1534702 res!1051926) b!1534705))

(assert (= (and b!1534705 res!1051920) b!1534697))

(assert (= (and b!1534697 res!1051928) b!1534703))

(assert (= (and b!1534703 res!1051925) b!1534704))

(assert (= (and b!1534704 res!1051924) b!1534698))

(assert (= (and b!1534698 res!1051922) b!1534699))

(assert (= (and b!1534699 res!1051927) b!1534701))

(declare-fun m!1417345 () Bool)

(assert (=> b!1534698 m!1417345))

(declare-fun m!1417347 () Bool)

(assert (=> b!1534698 m!1417347))

(declare-fun m!1417349 () Bool)

(assert (=> b!1534696 m!1417349))

(assert (=> b!1534696 m!1417349))

(declare-fun m!1417351 () Bool)

(assert (=> b!1534696 m!1417351))

(assert (=> b!1534704 m!1417347))

(assert (=> b!1534704 m!1417347))

(declare-fun m!1417353 () Bool)

(assert (=> b!1534704 m!1417353))

(declare-fun m!1417355 () Bool)

(assert (=> b!1534703 m!1417355))

(assert (=> b!1534702 m!1417347))

(assert (=> b!1534702 m!1417347))

(declare-fun m!1417357 () Bool)

(assert (=> b!1534702 m!1417357))

(declare-fun m!1417359 () Bool)

(assert (=> start!130898 m!1417359))

(declare-fun m!1417361 () Bool)

(assert (=> start!130898 m!1417361))

(declare-fun m!1417363 () Bool)

(assert (=> b!1534699 m!1417363))

(assert (=> b!1534701 m!1417347))

(assert (=> b!1534701 m!1417347))

(declare-fun m!1417365 () Bool)

(assert (=> b!1534701 m!1417365))

(declare-fun m!1417367 () Bool)

(assert (=> b!1534705 m!1417367))

(declare-fun m!1417369 () Bool)

(assert (=> b!1534697 m!1417369))

(push 1)

(assert (not b!1534701))

(assert (not b!1534699))

(assert (not b!1534704))

(assert (not b!1534696))

(assert (not b!1534702))

(assert (not start!130898))

(assert (not b!1534705))

(assert (not b!1534697))

