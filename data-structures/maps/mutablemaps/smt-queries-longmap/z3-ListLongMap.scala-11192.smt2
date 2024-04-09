; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130818 () Bool)

(assert start!130818)

(declare-fun b!1533715 () Bool)

(declare-fun res!1050941 () Bool)

(declare-fun e!854291 () Bool)

(assert (=> b!1533715 (=> (not res!1050941) (not e!854291))))

(declare-datatypes ((array!101843 0))(
  ( (array!101844 (arr!49133 (Array (_ BitVec 32) (_ BitVec 64))) (size!49684 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101843)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533715 (= res!1050941 (validKeyInArray!0 (select (arr!49133 a!2792) j!64)))))

(declare-fun b!1533716 () Bool)

(declare-fun res!1050940 () Bool)

(assert (=> b!1533716 (=> (not res!1050940) (not e!854291))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533716 (= res!1050940 (and (= (size!49684 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49684 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49684 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050943 () Bool)

(assert (=> start!130818 (=> (not res!1050943) (not e!854291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130818 (= res!1050943 (validMask!0 mask!2480))))

(assert (=> start!130818 e!854291))

(assert (=> start!130818 true))

(declare-fun array_inv!38078 (array!101843) Bool)

(assert (=> start!130818 (array_inv!38078 a!2792)))

(declare-fun b!1533717 () Bool)

(declare-fun res!1050939 () Bool)

(assert (=> b!1533717 (=> (not res!1050939) (not e!854291))))

(assert (=> b!1533717 (= res!1050939 (validKeyInArray!0 (select (arr!49133 a!2792) i!951)))))

(declare-fun b!1533718 () Bool)

(declare-fun res!1050942 () Bool)

(assert (=> b!1533718 (=> (not res!1050942) (not e!854291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101843 (_ BitVec 32)) Bool)

(assert (=> b!1533718 (= res!1050942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533719 () Bool)

(declare-fun res!1050944 () Bool)

(assert (=> b!1533719 (=> (not res!1050944) (not e!854291))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533719 (= res!1050944 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49684 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49684 a!2792)) (= (select (arr!49133 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533720 () Bool)

(assert (=> b!1533720 (= e!854291 false)))

(declare-datatypes ((SeekEntryResult!13288 0))(
  ( (MissingZero!13288 (index!55546 (_ BitVec 32))) (Found!13288 (index!55547 (_ BitVec 32))) (Intermediate!13288 (undefined!14100 Bool) (index!55548 (_ BitVec 32)) (x!137317 (_ BitVec 32))) (Undefined!13288) (MissingVacant!13288 (index!55549 (_ BitVec 32))) )
))
(declare-fun lt!663739 () SeekEntryResult!13288)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101843 (_ BitVec 32)) SeekEntryResult!13288)

(assert (=> b!1533720 (= lt!663739 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49133 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533721 () Bool)

(declare-fun res!1050945 () Bool)

(assert (=> b!1533721 (=> (not res!1050945) (not e!854291))))

(declare-datatypes ((List!35787 0))(
  ( (Nil!35784) (Cons!35783 (h!37229 (_ BitVec 64)) (t!50488 List!35787)) )
))
(declare-fun arrayNoDuplicates!0 (array!101843 (_ BitVec 32) List!35787) Bool)

(assert (=> b!1533721 (= res!1050945 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35784))))

(assert (= (and start!130818 res!1050943) b!1533716))

(assert (= (and b!1533716 res!1050940) b!1533717))

(assert (= (and b!1533717 res!1050939) b!1533715))

(assert (= (and b!1533715 res!1050941) b!1533718))

(assert (= (and b!1533718 res!1050942) b!1533721))

(assert (= (and b!1533721 res!1050945) b!1533719))

(assert (= (and b!1533719 res!1050944) b!1533720))

(declare-fun m!1416455 () Bool)

(assert (=> b!1533715 m!1416455))

(assert (=> b!1533715 m!1416455))

(declare-fun m!1416457 () Bool)

(assert (=> b!1533715 m!1416457))

(declare-fun m!1416459 () Bool)

(assert (=> start!130818 m!1416459))

(declare-fun m!1416461 () Bool)

(assert (=> start!130818 m!1416461))

(assert (=> b!1533720 m!1416455))

(assert (=> b!1533720 m!1416455))

(declare-fun m!1416463 () Bool)

(assert (=> b!1533720 m!1416463))

(declare-fun m!1416465 () Bool)

(assert (=> b!1533721 m!1416465))

(declare-fun m!1416467 () Bool)

(assert (=> b!1533718 m!1416467))

(declare-fun m!1416469 () Bool)

(assert (=> b!1533717 m!1416469))

(assert (=> b!1533717 m!1416469))

(declare-fun m!1416471 () Bool)

(assert (=> b!1533717 m!1416471))

(declare-fun m!1416473 () Bool)

(assert (=> b!1533719 m!1416473))

(check-sat (not b!1533718) (not b!1533715) (not b!1533717) (not start!130818) (not b!1533720) (not b!1533721))
