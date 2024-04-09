; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130870 () Bool)

(assert start!130870)

(declare-fun b!1534297 () Bool)

(declare-fun res!1051524 () Bool)

(declare-fun e!854446 () Bool)

(assert (=> b!1534297 (=> (not res!1051524) (not e!854446))))

(declare-datatypes ((array!101895 0))(
  ( (array!101896 (arr!49159 (Array (_ BitVec 32) (_ BitVec 64))) (size!49710 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101895)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534297 (= res!1051524 (and (= (size!49710 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49710 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49710 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534298 () Bool)

(declare-fun res!1051527 () Bool)

(assert (=> b!1534298 (=> (not res!1051527) (not e!854446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534298 (= res!1051527 (validKeyInArray!0 (select (arr!49159 a!2792) i!951)))))

(declare-fun b!1534299 () Bool)

(declare-fun res!1051522 () Bool)

(assert (=> b!1534299 (=> (not res!1051522) (not e!854446))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534299 (= res!1051522 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49710 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49710 a!2792)) (= (select (arr!49159 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534300 () Bool)

(declare-fun res!1051525 () Bool)

(assert (=> b!1534300 (=> (not res!1051525) (not e!854446))))

(declare-datatypes ((List!35813 0))(
  ( (Nil!35810) (Cons!35809 (h!37255 (_ BitVec 64)) (t!50514 List!35813)) )
))
(declare-fun arrayNoDuplicates!0 (array!101895 (_ BitVec 32) List!35813) Bool)

(assert (=> b!1534300 (= res!1051525 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35810))))

(declare-fun b!1534301 () Bool)

(declare-fun res!1051521 () Bool)

(assert (=> b!1534301 (=> (not res!1051521) (not e!854446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101895 (_ BitVec 32)) Bool)

(assert (=> b!1534301 (= res!1051521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534302 () Bool)

(assert (=> b!1534302 (= e!854446 false)))

(declare-datatypes ((SeekEntryResult!13314 0))(
  ( (MissingZero!13314 (index!55650 (_ BitVec 32))) (Found!13314 (index!55651 (_ BitVec 32))) (Intermediate!13314 (undefined!14126 Bool) (index!55652 (_ BitVec 32)) (x!137415 (_ BitVec 32))) (Undefined!13314) (MissingVacant!13314 (index!55653 (_ BitVec 32))) )
))
(declare-fun lt!663781 () SeekEntryResult!13314)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101895 (_ BitVec 32)) SeekEntryResult!13314)

(assert (=> b!1534302 (= lt!663781 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49159 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534303 () Bool)

(declare-fun res!1051523 () Bool)

(assert (=> b!1534303 (=> (not res!1051523) (not e!854446))))

(assert (=> b!1534303 (= res!1051523 (validKeyInArray!0 (select (arr!49159 a!2792) j!64)))))

(declare-fun res!1051526 () Bool)

(assert (=> start!130870 (=> (not res!1051526) (not e!854446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130870 (= res!1051526 (validMask!0 mask!2480))))

(assert (=> start!130870 e!854446))

(assert (=> start!130870 true))

(declare-fun array_inv!38104 (array!101895) Bool)

(assert (=> start!130870 (array_inv!38104 a!2792)))

(assert (= (and start!130870 res!1051526) b!1534297))

(assert (= (and b!1534297 res!1051524) b!1534298))

(assert (= (and b!1534298 res!1051527) b!1534303))

(assert (= (and b!1534303 res!1051523) b!1534301))

(assert (= (and b!1534301 res!1051521) b!1534300))

(assert (= (and b!1534300 res!1051525) b!1534299))

(assert (= (and b!1534299 res!1051522) b!1534302))

(declare-fun m!1416999 () Bool)

(assert (=> b!1534303 m!1416999))

(assert (=> b!1534303 m!1416999))

(declare-fun m!1417001 () Bool)

(assert (=> b!1534303 m!1417001))

(assert (=> b!1534302 m!1416999))

(assert (=> b!1534302 m!1416999))

(declare-fun m!1417003 () Bool)

(assert (=> b!1534302 m!1417003))

(declare-fun m!1417005 () Bool)

(assert (=> start!130870 m!1417005))

(declare-fun m!1417007 () Bool)

(assert (=> start!130870 m!1417007))

(declare-fun m!1417009 () Bool)

(assert (=> b!1534298 m!1417009))

(assert (=> b!1534298 m!1417009))

(declare-fun m!1417011 () Bool)

(assert (=> b!1534298 m!1417011))

(declare-fun m!1417013 () Bool)

(assert (=> b!1534301 m!1417013))

(declare-fun m!1417015 () Bool)

(assert (=> b!1534299 m!1417015))

(declare-fun m!1417017 () Bool)

(assert (=> b!1534300 m!1417017))

(push 1)

(assert (not b!1534301))

(assert (not start!130870))

(assert (not b!1534300))

(assert (not b!1534303))

(assert (not b!1534298))

(assert (not b!1534302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

