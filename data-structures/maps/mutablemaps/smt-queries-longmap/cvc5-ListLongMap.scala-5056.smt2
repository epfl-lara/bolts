; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68866 () Bool)

(assert start!68866)

(declare-fun b!802493 () Bool)

(declare-fun res!547183 () Bool)

(declare-fun e!444755 () Bool)

(assert (=> b!802493 (=> (not res!547183) (not e!444755))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43607 0))(
  ( (array!43608 (arr!20880 (Array (_ BitVec 32) (_ BitVec 64))) (size!21301 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43607)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802493 (= res!547183 (and (= (size!21301 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21301 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21301 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802494 () Bool)

(declare-fun res!547191 () Bool)

(assert (=> b!802494 (=> (not res!547191) (not e!444755))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802494 (= res!547191 (validKeyInArray!0 k!2044))))

(declare-fun b!802495 () Bool)

(declare-fun res!547188 () Bool)

(assert (=> b!802495 (=> (not res!547188) (not e!444755))))

(declare-fun arrayContainsKey!0 (array!43607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802495 (= res!547188 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802496 () Bool)

(declare-fun e!444754 () Bool)

(assert (=> b!802496 (= e!444755 e!444754)))

(declare-fun res!547185 () Bool)

(assert (=> b!802496 (=> (not res!547185) (not e!444754))))

(declare-datatypes ((SeekEntryResult!8478 0))(
  ( (MissingZero!8478 (index!36279 (_ BitVec 32))) (Found!8478 (index!36280 (_ BitVec 32))) (Intermediate!8478 (undefined!9290 Bool) (index!36281 (_ BitVec 32)) (x!67157 (_ BitVec 32))) (Undefined!8478) (MissingVacant!8478 (index!36282 (_ BitVec 32))) )
))
(declare-fun lt!358955 () SeekEntryResult!8478)

(assert (=> b!802496 (= res!547185 (or (= lt!358955 (MissingZero!8478 i!1163)) (= lt!358955 (MissingVacant!8478 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43607 (_ BitVec 32)) SeekEntryResult!8478)

(assert (=> b!802496 (= lt!358955 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802497 () Bool)

(declare-fun res!547190 () Bool)

(assert (=> b!802497 (=> (not res!547190) (not e!444754))))

(declare-datatypes ((List!14896 0))(
  ( (Nil!14893) (Cons!14892 (h!16021 (_ BitVec 64)) (t!21219 List!14896)) )
))
(declare-fun arrayNoDuplicates!0 (array!43607 (_ BitVec 32) List!14896) Bool)

(assert (=> b!802497 (= res!547190 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14893))))

(declare-fun b!802498 () Bool)

(declare-fun res!547184 () Bool)

(assert (=> b!802498 (=> (not res!547184) (not e!444754))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802498 (= res!547184 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21301 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20880 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21301 a!3170)) (= (select (arr!20880 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!547187 () Bool)

(assert (=> start!68866 (=> (not res!547187) (not e!444755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68866 (= res!547187 (validMask!0 mask!3266))))

(assert (=> start!68866 e!444755))

(assert (=> start!68866 true))

(declare-fun array_inv!16654 (array!43607) Bool)

(assert (=> start!68866 (array_inv!16654 a!3170)))

(declare-fun b!802499 () Bool)

(declare-fun e!444753 () Bool)

(assert (=> b!802499 (= e!444753 (not true))))

(declare-fun lt!358960 () (_ BitVec 32))

(declare-fun lt!358959 () (_ BitVec 64))

(declare-fun lt!358956 () array!43607)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43607 (_ BitVec 32)) SeekEntryResult!8478)

(assert (=> b!802499 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358960 vacantAfter!23 lt!358959 lt!358956 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358960 vacantBefore!23 (select (arr!20880 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27498 0))(
  ( (Unit!27499) )
))
(declare-fun lt!358954 () Unit!27498)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43607 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27498)

(assert (=> b!802499 (= lt!358954 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358960 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802499 (= lt!358960 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802500 () Bool)

(declare-fun e!444756 () Bool)

(assert (=> b!802500 (= e!444754 e!444756)))

(declare-fun res!547182 () Bool)

(assert (=> b!802500 (=> (not res!547182) (not e!444756))))

(assert (=> b!802500 (= res!547182 (= (seekEntryOrOpen!0 lt!358959 lt!358956 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358959 lt!358956 mask!3266)))))

(assert (=> b!802500 (= lt!358959 (select (store (arr!20880 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802500 (= lt!358956 (array!43608 (store (arr!20880 a!3170) i!1163 k!2044) (size!21301 a!3170)))))

(declare-fun b!802501 () Bool)

(declare-fun res!547189 () Bool)

(assert (=> b!802501 (=> (not res!547189) (not e!444754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43607 (_ BitVec 32)) Bool)

(assert (=> b!802501 (= res!547189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802502 () Bool)

(assert (=> b!802502 (= e!444756 e!444753)))

(declare-fun res!547186 () Bool)

(assert (=> b!802502 (=> (not res!547186) (not e!444753))))

(declare-fun lt!358957 () SeekEntryResult!8478)

(declare-fun lt!358958 () SeekEntryResult!8478)

(assert (=> b!802502 (= res!547186 (and (= lt!358958 lt!358957) (= lt!358957 (Found!8478 j!153)) (not (= (select (arr!20880 a!3170) index!1236) (select (arr!20880 a!3170) j!153)))))))

(assert (=> b!802502 (= lt!358957 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20880 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802502 (= lt!358958 (seekEntryOrOpen!0 (select (arr!20880 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802503 () Bool)

(declare-fun res!547192 () Bool)

(assert (=> b!802503 (=> (not res!547192) (not e!444755))))

(assert (=> b!802503 (= res!547192 (validKeyInArray!0 (select (arr!20880 a!3170) j!153)))))

(assert (= (and start!68866 res!547187) b!802493))

(assert (= (and b!802493 res!547183) b!802503))

(assert (= (and b!802503 res!547192) b!802494))

(assert (= (and b!802494 res!547191) b!802495))

(assert (= (and b!802495 res!547188) b!802496))

(assert (= (and b!802496 res!547185) b!802501))

(assert (= (and b!802501 res!547189) b!802497))

(assert (= (and b!802497 res!547190) b!802498))

(assert (= (and b!802498 res!547184) b!802500))

(assert (= (and b!802500 res!547182) b!802502))

(assert (= (and b!802502 res!547186) b!802499))

(declare-fun m!744103 () Bool)

(assert (=> b!802498 m!744103))

(declare-fun m!744105 () Bool)

(assert (=> b!802498 m!744105))

(declare-fun m!744107 () Bool)

(assert (=> b!802496 m!744107))

(declare-fun m!744109 () Bool)

(assert (=> start!68866 m!744109))

(declare-fun m!744111 () Bool)

(assert (=> start!68866 m!744111))

(declare-fun m!744113 () Bool)

(assert (=> b!802497 m!744113))

(declare-fun m!744115 () Bool)

(assert (=> b!802499 m!744115))

(declare-fun m!744117 () Bool)

(assert (=> b!802499 m!744117))

(declare-fun m!744119 () Bool)

(assert (=> b!802499 m!744119))

(declare-fun m!744121 () Bool)

(assert (=> b!802499 m!744121))

(assert (=> b!802499 m!744115))

(declare-fun m!744123 () Bool)

(assert (=> b!802499 m!744123))

(declare-fun m!744125 () Bool)

(assert (=> b!802500 m!744125))

(declare-fun m!744127 () Bool)

(assert (=> b!802500 m!744127))

(declare-fun m!744129 () Bool)

(assert (=> b!802500 m!744129))

(declare-fun m!744131 () Bool)

(assert (=> b!802500 m!744131))

(assert (=> b!802503 m!744115))

(assert (=> b!802503 m!744115))

(declare-fun m!744133 () Bool)

(assert (=> b!802503 m!744133))

(declare-fun m!744135 () Bool)

(assert (=> b!802501 m!744135))

(declare-fun m!744137 () Bool)

(assert (=> b!802495 m!744137))

(declare-fun m!744139 () Bool)

(assert (=> b!802494 m!744139))

(declare-fun m!744141 () Bool)

(assert (=> b!802502 m!744141))

(assert (=> b!802502 m!744115))

(assert (=> b!802502 m!744115))

(declare-fun m!744143 () Bool)

(assert (=> b!802502 m!744143))

(assert (=> b!802502 m!744115))

(declare-fun m!744145 () Bool)

(assert (=> b!802502 m!744145))

(push 1)

