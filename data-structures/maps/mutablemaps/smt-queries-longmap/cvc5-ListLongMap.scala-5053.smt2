; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68848 () Bool)

(assert start!68848)

(declare-fun b!802180 () Bool)

(declare-fun e!444607 () Bool)

(declare-fun e!444602 () Bool)

(assert (=> b!802180 (= e!444607 e!444602)))

(declare-fun res!546880 () Bool)

(assert (=> b!802180 (=> (not res!546880) (not e!444602))))

(declare-datatypes ((SeekEntryResult!8469 0))(
  ( (MissingZero!8469 (index!36243 (_ BitVec 32))) (Found!8469 (index!36244 (_ BitVec 32))) (Intermediate!8469 (undefined!9281 Bool) (index!36245 (_ BitVec 32)) (x!67124 (_ BitVec 32))) (Undefined!8469) (MissingVacant!8469 (index!36246 (_ BitVec 32))) )
))
(declare-fun lt!358744 () SeekEntryResult!8469)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802180 (= res!546880 (or (= lt!358744 (MissingZero!8469 i!1163)) (= lt!358744 (MissingVacant!8469 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43589 0))(
  ( (array!43590 (arr!20871 (Array (_ BitVec 32) (_ BitVec 64))) (size!21292 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43589)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43589 (_ BitVec 32)) SeekEntryResult!8469)

(assert (=> b!802180 (= lt!358744 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802181 () Bool)

(declare-fun res!546869 () Bool)

(assert (=> b!802181 (=> (not res!546869) (not e!444602))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802181 (= res!546869 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21292 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20871 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21292 a!3170)) (= (select (arr!20871 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802182 () Bool)

(declare-fun res!546871 () Bool)

(assert (=> b!802182 (=> (not res!546871) (not e!444607))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802182 (= res!546871 (and (= (size!21292 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21292 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21292 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802183 () Bool)

(declare-fun e!444605 () Bool)

(declare-fun e!444603 () Bool)

(assert (=> b!802183 (= e!444605 e!444603)))

(declare-fun res!546873 () Bool)

(assert (=> b!802183 (=> (not res!546873) (not e!444603))))

(declare-fun lt!358740 () SeekEntryResult!8469)

(declare-fun lt!358743 () SeekEntryResult!8469)

(assert (=> b!802183 (= res!546873 (and (= lt!358743 lt!358740) (= lt!358740 (Found!8469 j!153)) (not (= (select (arr!20871 a!3170) index!1236) (select (arr!20871 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43589 (_ BitVec 32)) SeekEntryResult!8469)

(assert (=> b!802183 (= lt!358740 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20871 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802183 (= lt!358743 (seekEntryOrOpen!0 (select (arr!20871 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802184 () Bool)

(declare-fun res!546876 () Bool)

(assert (=> b!802184 (=> (not res!546876) (not e!444607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802184 (= res!546876 (validKeyInArray!0 (select (arr!20871 a!3170) j!153)))))

(declare-fun b!802185 () Bool)

(declare-fun e!444606 () Bool)

(assert (=> b!802185 (= e!444603 (not e!444606))))

(declare-fun res!546878 () Bool)

(assert (=> b!802185 (=> res!546878 e!444606)))

(assert (=> b!802185 (= res!546878 (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20871 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!358742 () (_ BitVec 32))

(declare-fun lt!358738 () (_ BitVec 64))

(declare-fun lt!358741 () array!43589)

(assert (=> b!802185 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358742 vacantAfter!23 lt!358738 lt!358741 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358742 vacantBefore!23 (select (arr!20871 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27480 0))(
  ( (Unit!27481) )
))
(declare-fun lt!358739 () Unit!27480)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43589 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27480)

(assert (=> b!802185 (= lt!358739 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358742 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802185 (= lt!358742 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802187 () Bool)

(declare-fun res!546874 () Bool)

(assert (=> b!802187 (=> (not res!546874) (not e!444607))))

(assert (=> b!802187 (= res!546874 (validKeyInArray!0 k!2044))))

(declare-fun b!802188 () Bool)

(declare-fun res!546879 () Bool)

(assert (=> b!802188 (=> (not res!546879) (not e!444602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43589 (_ BitVec 32)) Bool)

(assert (=> b!802188 (= res!546879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802189 () Bool)

(declare-fun res!546872 () Bool)

(assert (=> b!802189 (=> (not res!546872) (not e!444607))))

(declare-fun arrayContainsKey!0 (array!43589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802189 (= res!546872 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802190 () Bool)

(assert (=> b!802190 (= e!444606 (validKeyInArray!0 lt!358738))))

(declare-fun b!802191 () Bool)

(assert (=> b!802191 (= e!444602 e!444605)))

(declare-fun res!546875 () Bool)

(assert (=> b!802191 (=> (not res!546875) (not e!444605))))

(assert (=> b!802191 (= res!546875 (= (seekEntryOrOpen!0 lt!358738 lt!358741 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358738 lt!358741 mask!3266)))))

(assert (=> b!802191 (= lt!358738 (select (store (arr!20871 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802191 (= lt!358741 (array!43590 (store (arr!20871 a!3170) i!1163 k!2044) (size!21292 a!3170)))))

(declare-fun b!802186 () Bool)

(declare-fun res!546877 () Bool)

(assert (=> b!802186 (=> (not res!546877) (not e!444602))))

(declare-datatypes ((List!14887 0))(
  ( (Nil!14884) (Cons!14883 (h!16012 (_ BitVec 64)) (t!21210 List!14887)) )
))
(declare-fun arrayNoDuplicates!0 (array!43589 (_ BitVec 32) List!14887) Bool)

(assert (=> b!802186 (= res!546877 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14884))))

(declare-fun res!546870 () Bool)

(assert (=> start!68848 (=> (not res!546870) (not e!444607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68848 (= res!546870 (validMask!0 mask!3266))))

(assert (=> start!68848 e!444607))

(assert (=> start!68848 true))

(declare-fun array_inv!16645 (array!43589) Bool)

(assert (=> start!68848 (array_inv!16645 a!3170)))

(assert (= (and start!68848 res!546870) b!802182))

(assert (= (and b!802182 res!546871) b!802184))

(assert (= (and b!802184 res!546876) b!802187))

(assert (= (and b!802187 res!546874) b!802189))

(assert (= (and b!802189 res!546872) b!802180))

(assert (= (and b!802180 res!546880) b!802188))

(assert (= (and b!802188 res!546879) b!802186))

(assert (= (and b!802186 res!546877) b!802181))

(assert (= (and b!802181 res!546869) b!802191))

(assert (= (and b!802191 res!546875) b!802183))

(assert (= (and b!802183 res!546873) b!802185))

(assert (= (and b!802185 (not res!546878)) b!802190))

(declare-fun m!743695 () Bool)

(assert (=> b!802184 m!743695))

(assert (=> b!802184 m!743695))

(declare-fun m!743697 () Bool)

(assert (=> b!802184 m!743697))

(declare-fun m!743699 () Bool)

(assert (=> start!68848 m!743699))

(declare-fun m!743701 () Bool)

(assert (=> start!68848 m!743701))

(declare-fun m!743703 () Bool)

(assert (=> b!802186 m!743703))

(declare-fun m!743705 () Bool)

(assert (=> b!802190 m!743705))

(declare-fun m!743707 () Bool)

(assert (=> b!802188 m!743707))

(declare-fun m!743709 () Bool)

(assert (=> b!802181 m!743709))

(declare-fun m!743711 () Bool)

(assert (=> b!802181 m!743711))

(declare-fun m!743713 () Bool)

(assert (=> b!802183 m!743713))

(assert (=> b!802183 m!743695))

(assert (=> b!802183 m!743695))

(declare-fun m!743715 () Bool)

(assert (=> b!802183 m!743715))

(assert (=> b!802183 m!743695))

(declare-fun m!743717 () Bool)

(assert (=> b!802183 m!743717))

(assert (=> b!802185 m!743695))

(declare-fun m!743719 () Bool)

(assert (=> b!802185 m!743719))

(assert (=> b!802185 m!743695))

(declare-fun m!743721 () Bool)

(assert (=> b!802185 m!743721))

(declare-fun m!743723 () Bool)

(assert (=> b!802185 m!743723))

(declare-fun m!743725 () Bool)

(assert (=> b!802185 m!743725))

(declare-fun m!743727 () Bool)

(assert (=> b!802185 m!743727))

(declare-fun m!743729 () Bool)

(assert (=> b!802185 m!743729))

(declare-fun m!743731 () Bool)

(assert (=> b!802189 m!743731))

(declare-fun m!743733 () Bool)

(assert (=> b!802191 m!743733))

(declare-fun m!743735 () Bool)

(assert (=> b!802191 m!743735))

(assert (=> b!802191 m!743725))

(declare-fun m!743737 () Bool)

(assert (=> b!802191 m!743737))

(declare-fun m!743739 () Bool)

(assert (=> b!802180 m!743739))

(declare-fun m!743741 () Bool)

(assert (=> b!802187 m!743741))

(push 1)

