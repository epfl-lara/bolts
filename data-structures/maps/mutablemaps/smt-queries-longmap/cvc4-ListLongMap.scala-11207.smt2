; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130910 () Bool)

(assert start!130910)

(declare-fun b!1534876 () Bool)

(declare-fun e!854621 () Bool)

(declare-fun e!854619 () Bool)

(assert (=> b!1534876 (= e!854621 e!854619)))

(declare-fun res!1052107 () Bool)

(assert (=> b!1534876 (=> (not res!1052107) (not e!854619))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101935 0))(
  ( (array!101936 (arr!49179 (Array (_ BitVec 32) (_ BitVec 64))) (size!49730 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101935)

(declare-fun lt!663894 () (_ BitVec 32))

(assert (=> b!1534876 (= res!1052107 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663894 #b00000000000000000000000000000000) (bvslt lt!663894 (size!49730 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534876 (= lt!663894 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534877 () Bool)

(declare-fun res!1052105 () Bool)

(assert (=> b!1534877 (=> (not res!1052105) (not e!854621))))

(declare-datatypes ((List!35833 0))(
  ( (Nil!35830) (Cons!35829 (h!37275 (_ BitVec 64)) (t!50534 List!35833)) )
))
(declare-fun arrayNoDuplicates!0 (array!101935 (_ BitVec 32) List!35833) Bool)

(assert (=> b!1534877 (= res!1052105 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35830))))

(declare-fun b!1534878 () Bool)

(declare-fun res!1052102 () Bool)

(assert (=> b!1534878 (=> (not res!1052102) (not e!854621))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1534878 (= res!1052102 (not (= (select (arr!49179 a!2792) index!463) (select (arr!49179 a!2792) j!64))))))

(declare-fun b!1534879 () Bool)

(declare-fun res!1052106 () Bool)

(assert (=> b!1534879 (=> (not res!1052106) (not e!854621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101935 (_ BitVec 32)) Bool)

(assert (=> b!1534879 (= res!1052106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534881 () Bool)

(declare-fun res!1052104 () Bool)

(assert (=> b!1534881 (=> (not res!1052104) (not e!854621))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13334 0))(
  ( (MissingZero!13334 (index!55730 (_ BitVec 32))) (Found!13334 (index!55731 (_ BitVec 32))) (Intermediate!13334 (undefined!14146 Bool) (index!55732 (_ BitVec 32)) (x!137483 (_ BitVec 32))) (Undefined!13334) (MissingVacant!13334 (index!55733 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101935 (_ BitVec 32)) SeekEntryResult!13334)

(assert (=> b!1534881 (= res!1052104 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49179 a!2792) j!64) a!2792 mask!2480) (Found!13334 j!64)))))

(declare-fun b!1534882 () Bool)

(assert (=> b!1534882 (= e!854619 false)))

(declare-fun lt!663895 () SeekEntryResult!13334)

(assert (=> b!1534882 (= lt!663895 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663894 vacantIndex!5 (select (arr!49179 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534883 () Bool)

(declare-fun res!1052109 () Bool)

(assert (=> b!1534883 (=> (not res!1052109) (not e!854621))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534883 (= res!1052109 (and (= (size!49730 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49730 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49730 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534884 () Bool)

(declare-fun res!1052100 () Bool)

(assert (=> b!1534884 (=> (not res!1052100) (not e!854621))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534884 (= res!1052100 (validKeyInArray!0 (select (arr!49179 a!2792) i!951)))))

(declare-fun b!1534885 () Bool)

(declare-fun res!1052108 () Bool)

(assert (=> b!1534885 (=> (not res!1052108) (not e!854621))))

(assert (=> b!1534885 (= res!1052108 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49730 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49730 a!2792)) (= (select (arr!49179 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1052103 () Bool)

(assert (=> start!130910 (=> (not res!1052103) (not e!854621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130910 (= res!1052103 (validMask!0 mask!2480))))

(assert (=> start!130910 e!854621))

(assert (=> start!130910 true))

(declare-fun array_inv!38124 (array!101935) Bool)

(assert (=> start!130910 (array_inv!38124 a!2792)))

(declare-fun b!1534880 () Bool)

(declare-fun res!1052101 () Bool)

(assert (=> b!1534880 (=> (not res!1052101) (not e!854621))))

(assert (=> b!1534880 (= res!1052101 (validKeyInArray!0 (select (arr!49179 a!2792) j!64)))))

(assert (= (and start!130910 res!1052103) b!1534883))

(assert (= (and b!1534883 res!1052109) b!1534884))

(assert (= (and b!1534884 res!1052100) b!1534880))

(assert (= (and b!1534880 res!1052101) b!1534879))

(assert (= (and b!1534879 res!1052106) b!1534877))

(assert (= (and b!1534877 res!1052105) b!1534885))

(assert (= (and b!1534885 res!1052108) b!1534881))

(assert (= (and b!1534881 res!1052104) b!1534878))

(assert (= (and b!1534878 res!1052102) b!1534876))

(assert (= (and b!1534876 res!1052107) b!1534882))

(declare-fun m!1417501 () Bool)

(assert (=> b!1534877 m!1417501))

(declare-fun m!1417503 () Bool)

(assert (=> b!1534885 m!1417503))

(declare-fun m!1417505 () Bool)

(assert (=> b!1534880 m!1417505))

(assert (=> b!1534880 m!1417505))

(declare-fun m!1417507 () Bool)

(assert (=> b!1534880 m!1417507))

(declare-fun m!1417509 () Bool)

(assert (=> b!1534876 m!1417509))

(assert (=> b!1534882 m!1417505))

(assert (=> b!1534882 m!1417505))

(declare-fun m!1417511 () Bool)

(assert (=> b!1534882 m!1417511))

(assert (=> b!1534881 m!1417505))

(assert (=> b!1534881 m!1417505))

(declare-fun m!1417513 () Bool)

(assert (=> b!1534881 m!1417513))

(declare-fun m!1417515 () Bool)

(assert (=> b!1534878 m!1417515))

(assert (=> b!1534878 m!1417505))

(declare-fun m!1417517 () Bool)

(assert (=> start!130910 m!1417517))

(declare-fun m!1417519 () Bool)

(assert (=> start!130910 m!1417519))

(declare-fun m!1417521 () Bool)

(assert (=> b!1534879 m!1417521))

(declare-fun m!1417523 () Bool)

(assert (=> b!1534884 m!1417523))

(assert (=> b!1534884 m!1417523))

(declare-fun m!1417525 () Bool)

(assert (=> b!1534884 m!1417525))

(push 1)

(assert (not b!1534880))

(assert (not b!1534879))

(assert (not b!1534884))

(assert (not start!130910))

(assert (not b!1534882))

(assert (not b!1534881))

(assert (not b!1534877))

(assert (not b!1534876))

(check-sat)

