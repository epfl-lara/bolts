; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130954 () Bool)

(assert start!130954)

(declare-fun res!1052766 () Bool)

(declare-fun e!854817 () Bool)

(assert (=> start!130954 (=> (not res!1052766) (not e!854817))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130954 (= res!1052766 (validMask!0 mask!2480))))

(assert (=> start!130954 e!854817))

(assert (=> start!130954 true))

(declare-datatypes ((array!101979 0))(
  ( (array!101980 (arr!49201 (Array (_ BitVec 32) (_ BitVec 64))) (size!49752 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101979)

(declare-fun array_inv!38146 (array!101979) Bool)

(assert (=> start!130954 (array_inv!38146 a!2792)))

(declare-fun b!1535536 () Bool)

(declare-fun res!1052769 () Bool)

(assert (=> b!1535536 (=> (not res!1052769) (not e!854817))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535536 (= res!1052769 (and (= (size!49752 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49752 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49752 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535537 () Bool)

(declare-fun res!1052767 () Bool)

(assert (=> b!1535537 (=> (not res!1052767) (not e!854817))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535537 (= res!1052767 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49752 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49752 a!2792)) (= (select (arr!49201 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535538 () Bool)

(declare-fun e!854819 () Bool)

(assert (=> b!1535538 (= e!854817 e!854819)))

(declare-fun res!1052761 () Bool)

(assert (=> b!1535538 (=> (not res!1052761) (not e!854819))))

(declare-fun lt!664026 () (_ BitVec 32))

(assert (=> b!1535538 (= res!1052761 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664026 #b00000000000000000000000000000000) (bvslt lt!664026 (size!49752 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535538 (= lt!664026 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535539 () Bool)

(assert (=> b!1535539 (= e!854819 false)))

(declare-datatypes ((SeekEntryResult!13356 0))(
  ( (MissingZero!13356 (index!55818 (_ BitVec 32))) (Found!13356 (index!55819 (_ BitVec 32))) (Intermediate!13356 (undefined!14168 Bool) (index!55820 (_ BitVec 32)) (x!137569 (_ BitVec 32))) (Undefined!13356) (MissingVacant!13356 (index!55821 (_ BitVec 32))) )
))
(declare-fun lt!664027 () SeekEntryResult!13356)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101979 (_ BitVec 32)) SeekEntryResult!13356)

(assert (=> b!1535539 (= lt!664027 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664026 vacantIndex!5 (select (arr!49201 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535540 () Bool)

(declare-fun res!1052764 () Bool)

(assert (=> b!1535540 (=> (not res!1052764) (not e!854817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101979 (_ BitVec 32)) Bool)

(assert (=> b!1535540 (= res!1052764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535541 () Bool)

(declare-fun res!1052760 () Bool)

(assert (=> b!1535541 (=> (not res!1052760) (not e!854817))))

(assert (=> b!1535541 (= res!1052760 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49201 a!2792) j!64) a!2792 mask!2480) (Found!13356 j!64)))))

(declare-fun b!1535542 () Bool)

(declare-fun res!1052768 () Bool)

(assert (=> b!1535542 (=> (not res!1052768) (not e!854817))))

(assert (=> b!1535542 (= res!1052768 (not (= (select (arr!49201 a!2792) index!463) (select (arr!49201 a!2792) j!64))))))

(declare-fun b!1535543 () Bool)

(declare-fun res!1052765 () Bool)

(assert (=> b!1535543 (=> (not res!1052765) (not e!854817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535543 (= res!1052765 (validKeyInArray!0 (select (arr!49201 a!2792) j!64)))))

(declare-fun b!1535544 () Bool)

(declare-fun res!1052763 () Bool)

(assert (=> b!1535544 (=> (not res!1052763) (not e!854817))))

(declare-datatypes ((List!35855 0))(
  ( (Nil!35852) (Cons!35851 (h!37297 (_ BitVec 64)) (t!50556 List!35855)) )
))
(declare-fun arrayNoDuplicates!0 (array!101979 (_ BitVec 32) List!35855) Bool)

(assert (=> b!1535544 (= res!1052763 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35852))))

(declare-fun b!1535545 () Bool)

(declare-fun res!1052762 () Bool)

(assert (=> b!1535545 (=> (not res!1052762) (not e!854817))))

(assert (=> b!1535545 (= res!1052762 (validKeyInArray!0 (select (arr!49201 a!2792) i!951)))))

(assert (= (and start!130954 res!1052766) b!1535536))

(assert (= (and b!1535536 res!1052769) b!1535545))

(assert (= (and b!1535545 res!1052762) b!1535543))

(assert (= (and b!1535543 res!1052765) b!1535540))

(assert (= (and b!1535540 res!1052764) b!1535544))

(assert (= (and b!1535544 res!1052763) b!1535537))

(assert (= (and b!1535537 res!1052767) b!1535541))

(assert (= (and b!1535541 res!1052760) b!1535542))

(assert (= (and b!1535542 res!1052768) b!1535538))

(assert (= (and b!1535538 res!1052761) b!1535539))

(declare-fun m!1418073 () Bool)

(assert (=> b!1535537 m!1418073))

(declare-fun m!1418075 () Bool)

(assert (=> b!1535542 m!1418075))

(declare-fun m!1418077 () Bool)

(assert (=> b!1535542 m!1418077))

(declare-fun m!1418079 () Bool)

(assert (=> b!1535538 m!1418079))

(assert (=> b!1535539 m!1418077))

(assert (=> b!1535539 m!1418077))

(declare-fun m!1418081 () Bool)

(assert (=> b!1535539 m!1418081))

(declare-fun m!1418083 () Bool)

(assert (=> b!1535540 m!1418083))

(declare-fun m!1418085 () Bool)

(assert (=> b!1535545 m!1418085))

(assert (=> b!1535545 m!1418085))

(declare-fun m!1418087 () Bool)

(assert (=> b!1535545 m!1418087))

(assert (=> b!1535541 m!1418077))

(assert (=> b!1535541 m!1418077))

(declare-fun m!1418089 () Bool)

(assert (=> b!1535541 m!1418089))

(declare-fun m!1418091 () Bool)

(assert (=> b!1535544 m!1418091))

(declare-fun m!1418093 () Bool)

(assert (=> start!130954 m!1418093))

(declare-fun m!1418095 () Bool)

(assert (=> start!130954 m!1418095))

(assert (=> b!1535543 m!1418077))

(assert (=> b!1535543 m!1418077))

(declare-fun m!1418097 () Bool)

(assert (=> b!1535543 m!1418097))

(push 1)

