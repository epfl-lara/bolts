; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68864 () Bool)

(assert start!68864)

(declare-fun b!802459 () Bool)

(declare-fun e!444738 () Bool)

(declare-fun e!444739 () Bool)

(assert (=> b!802459 (= e!444738 e!444739)))

(declare-fun res!547149 () Bool)

(assert (=> b!802459 (=> (not res!547149) (not e!444739))))

(declare-datatypes ((SeekEntryResult!8477 0))(
  ( (MissingZero!8477 (index!36275 (_ BitVec 32))) (Found!8477 (index!36276 (_ BitVec 32))) (Intermediate!8477 (undefined!9289 Bool) (index!36277 (_ BitVec 32)) (x!67148 (_ BitVec 32))) (Undefined!8477) (MissingVacant!8477 (index!36278 (_ BitVec 32))) )
))
(declare-fun lt!358937 () SeekEntryResult!8477)

(declare-fun lt!358936 () SeekEntryResult!8477)

(assert (=> b!802459 (= res!547149 (= lt!358937 lt!358936))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43605 0))(
  ( (array!43606 (arr!20879 (Array (_ BitVec 32) (_ BitVec 64))) (size!21300 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43605)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43605 (_ BitVec 32)) SeekEntryResult!8477)

(assert (=> b!802459 (= lt!358936 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20879 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43605 (_ BitVec 32)) SeekEntryResult!8477)

(assert (=> b!802459 (= lt!358937 (seekEntryOrOpen!0 (select (arr!20879 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802460 () Bool)

(declare-fun res!547158 () Bool)

(declare-fun e!444741 () Bool)

(assert (=> b!802460 (=> (not res!547158) (not e!444741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802460 (= res!547158 (validKeyInArray!0 (select (arr!20879 a!3170) j!153)))))

(declare-fun b!802461 () Bool)

(declare-fun res!547157 () Bool)

(assert (=> b!802461 (=> (not res!547157) (not e!444741))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!802461 (= res!547157 (validKeyInArray!0 k!2044))))

(declare-fun b!802462 () Bool)

(declare-fun res!547154 () Bool)

(declare-fun e!444737 () Bool)

(assert (=> b!802462 (=> (not res!547154) (not e!444737))))

(declare-datatypes ((List!14895 0))(
  ( (Nil!14892) (Cons!14891 (h!16020 (_ BitVec 64)) (t!21218 List!14895)) )
))
(declare-fun arrayNoDuplicates!0 (array!43605 (_ BitVec 32) List!14895) Bool)

(assert (=> b!802462 (= res!547154 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14892))))

(declare-fun b!802463 () Bool)

(declare-fun res!547151 () Bool)

(assert (=> b!802463 (=> (not res!547151) (not e!444737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43605 (_ BitVec 32)) Bool)

(assert (=> b!802463 (= res!547151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802464 () Bool)

(assert (=> b!802464 (= e!444741 e!444737)))

(declare-fun res!547155 () Bool)

(assert (=> b!802464 (=> (not res!547155) (not e!444737))))

(declare-fun lt!358931 () SeekEntryResult!8477)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802464 (= res!547155 (or (= lt!358931 (MissingZero!8477 i!1163)) (= lt!358931 (MissingVacant!8477 i!1163))))))

(assert (=> b!802464 (= lt!358931 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802465 () Bool)

(declare-fun e!444742 () Bool)

(assert (=> b!802465 (= e!444739 e!444742)))

(declare-fun res!547148 () Bool)

(assert (=> b!802465 (=> (not res!547148) (not e!444742))))

(declare-fun lt!358939 () SeekEntryResult!8477)

(assert (=> b!802465 (= res!547148 (and (= lt!358936 lt!358939) (not (= (select (arr!20879 a!3170) index!1236) (select (arr!20879 a!3170) j!153)))))))

(assert (=> b!802465 (= lt!358939 (Found!8477 j!153))))

(declare-fun b!802466 () Bool)

(declare-fun res!547156 () Bool)

(assert (=> b!802466 (=> (not res!547156) (not e!444741))))

(declare-fun arrayContainsKey!0 (array!43605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802466 (= res!547156 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802467 () Bool)

(declare-fun res!547152 () Bool)

(assert (=> b!802467 (=> (not res!547152) (not e!444741))))

(assert (=> b!802467 (= res!547152 (and (= (size!21300 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21300 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21300 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!547153 () Bool)

(assert (=> start!68864 (=> (not res!547153) (not e!444741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68864 (= res!547153 (validMask!0 mask!3266))))

(assert (=> start!68864 e!444741))

(assert (=> start!68864 true))

(declare-fun array_inv!16653 (array!43605) Bool)

(assert (=> start!68864 (array_inv!16653 a!3170)))

(declare-fun b!802468 () Bool)

(declare-fun res!547150 () Bool)

(assert (=> b!802468 (=> (not res!547150) (not e!444737))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!802468 (= res!547150 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21300 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20879 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21300 a!3170)) (= (select (arr!20879 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802469 () Bool)

(assert (=> b!802469 (= e!444737 e!444738)))

(declare-fun res!547159 () Bool)

(assert (=> b!802469 (=> (not res!547159) (not e!444738))))

(declare-fun lt!358934 () SeekEntryResult!8477)

(declare-fun lt!358938 () SeekEntryResult!8477)

(assert (=> b!802469 (= res!547159 (= lt!358934 lt!358938))))

(declare-fun lt!358932 () array!43605)

(declare-fun lt!358935 () (_ BitVec 64))

(assert (=> b!802469 (= lt!358938 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358935 lt!358932 mask!3266))))

(assert (=> b!802469 (= lt!358934 (seekEntryOrOpen!0 lt!358935 lt!358932 mask!3266))))

(assert (=> b!802469 (= lt!358935 (select (store (arr!20879 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802469 (= lt!358932 (array!43606 (store (arr!20879 a!3170) i!1163 k!2044) (size!21300 a!3170)))))

(declare-fun b!802470 () Bool)

(assert (=> b!802470 (= e!444742 (not (or (not (= lt!358938 lt!358939)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun lt!358930 () (_ BitVec 32))

(assert (=> b!802470 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358930 vacantAfter!23 lt!358935 lt!358932 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358930 vacantBefore!23 (select (arr!20879 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27496 0))(
  ( (Unit!27497) )
))
(declare-fun lt!358933 () Unit!27496)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43605 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27496)

(assert (=> b!802470 (= lt!358933 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358930 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802470 (= lt!358930 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68864 res!547153) b!802467))

(assert (= (and b!802467 res!547152) b!802460))

(assert (= (and b!802460 res!547158) b!802461))

(assert (= (and b!802461 res!547157) b!802466))

(assert (= (and b!802466 res!547156) b!802464))

(assert (= (and b!802464 res!547155) b!802463))

(assert (= (and b!802463 res!547151) b!802462))

(assert (= (and b!802462 res!547154) b!802468))

(assert (= (and b!802468 res!547150) b!802469))

(assert (= (and b!802469 res!547159) b!802459))

(assert (= (and b!802459 res!547149) b!802465))

(assert (= (and b!802465 res!547148) b!802470))

(declare-fun m!744059 () Bool)

(assert (=> start!68864 m!744059))

(declare-fun m!744061 () Bool)

(assert (=> start!68864 m!744061))

(declare-fun m!744063 () Bool)

(assert (=> b!802461 m!744063))

(declare-fun m!744065 () Bool)

(assert (=> b!802463 m!744065))

(declare-fun m!744067 () Bool)

(assert (=> b!802459 m!744067))

(assert (=> b!802459 m!744067))

(declare-fun m!744069 () Bool)

(assert (=> b!802459 m!744069))

(assert (=> b!802459 m!744067))

(declare-fun m!744071 () Bool)

(assert (=> b!802459 m!744071))

(assert (=> b!802460 m!744067))

(assert (=> b!802460 m!744067))

(declare-fun m!744073 () Bool)

(assert (=> b!802460 m!744073))

(assert (=> b!802470 m!744067))

(declare-fun m!744075 () Bool)

(assert (=> b!802470 m!744075))

(declare-fun m!744077 () Bool)

(assert (=> b!802470 m!744077))

(declare-fun m!744079 () Bool)

(assert (=> b!802470 m!744079))

(assert (=> b!802470 m!744067))

(declare-fun m!744081 () Bool)

(assert (=> b!802470 m!744081))

(declare-fun m!744083 () Bool)

(assert (=> b!802465 m!744083))

(assert (=> b!802465 m!744067))

(declare-fun m!744085 () Bool)

(assert (=> b!802468 m!744085))

(declare-fun m!744087 () Bool)

(assert (=> b!802468 m!744087))

(declare-fun m!744089 () Bool)

(assert (=> b!802469 m!744089))

(declare-fun m!744091 () Bool)

(assert (=> b!802469 m!744091))

(declare-fun m!744093 () Bool)

(assert (=> b!802469 m!744093))

(declare-fun m!744095 () Bool)

(assert (=> b!802469 m!744095))

(declare-fun m!744097 () Bool)

(assert (=> b!802466 m!744097))

(declare-fun m!744099 () Bool)

(assert (=> b!802462 m!744099))

(declare-fun m!744101 () Bool)

(assert (=> b!802464 m!744101))

(push 1)

(assert (not b!802459))

(assert (not b!802470))

(assert (not b!802466))

(assert (not b!802463))

(assert (not start!68864))

(assert (not b!802464))

(assert (not b!802460))

