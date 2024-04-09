; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130900 () Bool)

(assert start!130900)

(declare-fun b!1534726 () Bool)

(declare-fun e!854574 () Bool)

(declare-fun e!854576 () Bool)

(assert (=> b!1534726 (= e!854574 e!854576)))

(declare-fun res!1051956 () Bool)

(assert (=> b!1534726 (=> (not res!1051956) (not e!854576))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663864 () (_ BitVec 32))

(declare-datatypes ((array!101925 0))(
  ( (array!101926 (arr!49174 (Array (_ BitVec 32) (_ BitVec 64))) (size!49725 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101925)

(assert (=> b!1534726 (= res!1051956 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663864 #b00000000000000000000000000000000) (bvslt lt!663864 (size!49725 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534726 (= lt!663864 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534727 () Bool)

(declare-fun res!1051952 () Bool)

(assert (=> b!1534727 (=> (not res!1051952) (not e!854574))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534727 (= res!1051952 (and (= (size!49725 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49725 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49725 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534728 () Bool)

(declare-fun res!1051957 () Bool)

(assert (=> b!1534728 (=> (not res!1051957) (not e!854574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534728 (= res!1051957 (validKeyInArray!0 (select (arr!49174 a!2792) i!951)))))

(declare-fun b!1534729 () Bool)

(declare-fun res!1051955 () Bool)

(assert (=> b!1534729 (=> (not res!1051955) (not e!854574))))

(declare-datatypes ((List!35828 0))(
  ( (Nil!35825) (Cons!35824 (h!37270 (_ BitVec 64)) (t!50529 List!35828)) )
))
(declare-fun arrayNoDuplicates!0 (array!101925 (_ BitVec 32) List!35828) Bool)

(assert (=> b!1534729 (= res!1051955 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35825))))

(declare-fun b!1534730 () Bool)

(declare-fun res!1051958 () Bool)

(assert (=> b!1534730 (=> (not res!1051958) (not e!854574))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1534730 (= res!1051958 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49725 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49725 a!2792)) (= (select (arr!49174 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534731 () Bool)

(assert (=> b!1534731 (= e!854576 false)))

(declare-datatypes ((SeekEntryResult!13329 0))(
  ( (MissingZero!13329 (index!55710 (_ BitVec 32))) (Found!13329 (index!55711 (_ BitVec 32))) (Intermediate!13329 (undefined!14141 Bool) (index!55712 (_ BitVec 32)) (x!137470 (_ BitVec 32))) (Undefined!13329) (MissingVacant!13329 (index!55713 (_ BitVec 32))) )
))
(declare-fun lt!663865 () SeekEntryResult!13329)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101925 (_ BitVec 32)) SeekEntryResult!13329)

(assert (=> b!1534731 (= lt!663865 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663864 vacantIndex!5 (select (arr!49174 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534732 () Bool)

(declare-fun res!1051953 () Bool)

(assert (=> b!1534732 (=> (not res!1051953) (not e!854574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101925 (_ BitVec 32)) Bool)

(assert (=> b!1534732 (= res!1051953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1051959 () Bool)

(assert (=> start!130900 (=> (not res!1051959) (not e!854574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130900 (= res!1051959 (validMask!0 mask!2480))))

(assert (=> start!130900 e!854574))

(assert (=> start!130900 true))

(declare-fun array_inv!38119 (array!101925) Bool)

(assert (=> start!130900 (array_inv!38119 a!2792)))

(declare-fun b!1534733 () Bool)

(declare-fun res!1051950 () Bool)

(assert (=> b!1534733 (=> (not res!1051950) (not e!854574))))

(assert (=> b!1534733 (= res!1051950 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49174 a!2792) j!64) a!2792 mask!2480) (Found!13329 j!64)))))

(declare-fun b!1534734 () Bool)

(declare-fun res!1051954 () Bool)

(assert (=> b!1534734 (=> (not res!1051954) (not e!854574))))

(assert (=> b!1534734 (= res!1051954 (validKeyInArray!0 (select (arr!49174 a!2792) j!64)))))

(declare-fun b!1534735 () Bool)

(declare-fun res!1051951 () Bool)

(assert (=> b!1534735 (=> (not res!1051951) (not e!854574))))

(assert (=> b!1534735 (= res!1051951 (not (= (select (arr!49174 a!2792) index!463) (select (arr!49174 a!2792) j!64))))))

(assert (= (and start!130900 res!1051959) b!1534727))

(assert (= (and b!1534727 res!1051952) b!1534728))

(assert (= (and b!1534728 res!1051957) b!1534734))

(assert (= (and b!1534734 res!1051954) b!1534732))

(assert (= (and b!1534732 res!1051953) b!1534729))

(assert (= (and b!1534729 res!1051955) b!1534730))

(assert (= (and b!1534730 res!1051958) b!1534733))

(assert (= (and b!1534733 res!1051950) b!1534735))

(assert (= (and b!1534735 res!1051951) b!1534726))

(assert (= (and b!1534726 res!1051956) b!1534731))

(declare-fun m!1417371 () Bool)

(assert (=> b!1534728 m!1417371))

(assert (=> b!1534728 m!1417371))

(declare-fun m!1417373 () Bool)

(assert (=> b!1534728 m!1417373))

(declare-fun m!1417375 () Bool)

(assert (=> b!1534726 m!1417375))

(declare-fun m!1417377 () Bool)

(assert (=> b!1534734 m!1417377))

(assert (=> b!1534734 m!1417377))

(declare-fun m!1417379 () Bool)

(assert (=> b!1534734 m!1417379))

(declare-fun m!1417381 () Bool)

(assert (=> b!1534729 m!1417381))

(declare-fun m!1417383 () Bool)

(assert (=> b!1534732 m!1417383))

(declare-fun m!1417385 () Bool)

(assert (=> start!130900 m!1417385))

(declare-fun m!1417387 () Bool)

(assert (=> start!130900 m!1417387))

(declare-fun m!1417389 () Bool)

(assert (=> b!1534735 m!1417389))

(assert (=> b!1534735 m!1417377))

(assert (=> b!1534733 m!1417377))

(assert (=> b!1534733 m!1417377))

(declare-fun m!1417391 () Bool)

(assert (=> b!1534733 m!1417391))

(declare-fun m!1417393 () Bool)

(assert (=> b!1534730 m!1417393))

(assert (=> b!1534731 m!1417377))

(assert (=> b!1534731 m!1417377))

(declare-fun m!1417395 () Bool)

(assert (=> b!1534731 m!1417395))

(push 1)

