; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68382 () Bool)

(assert start!68382)

(declare-fun b!794151 () Bool)

(declare-fun e!441011 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794151 (= e!441011 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun b!794152 () Bool)

(declare-fun res!538846 () Bool)

(declare-fun e!441012 () Bool)

(assert (=> b!794152 (=> (not res!538846) (not e!441012))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43123 0))(
  ( (array!43124 (arr!20638 (Array (_ BitVec 32) (_ BitVec 64))) (size!21059 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43123)

(assert (=> b!794152 (= res!538846 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21059 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20638 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21059 a!3170)) (= (select (arr!20638 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794153 () Bool)

(declare-fun res!538844 () Bool)

(assert (=> b!794153 (=> (not res!538844) (not e!441012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43123 (_ BitVec 32)) Bool)

(assert (=> b!794153 (= res!538844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794154 () Bool)

(declare-fun res!538849 () Bool)

(declare-fun e!441013 () Bool)

(assert (=> b!794154 (=> (not res!538849) (not e!441013))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794154 (= res!538849 (validKeyInArray!0 (select (arr!20638 a!3170) j!153)))))

(declare-fun b!794155 () Bool)

(declare-fun res!538840 () Bool)

(assert (=> b!794155 (=> (not res!538840) (not e!441012))))

(declare-datatypes ((List!14654 0))(
  ( (Nil!14651) (Cons!14650 (h!15779 (_ BitVec 64)) (t!20977 List!14654)) )
))
(declare-fun arrayNoDuplicates!0 (array!43123 (_ BitVec 32) List!14654) Bool)

(assert (=> b!794155 (= res!538840 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14651))))

(declare-fun b!794156 () Bool)

(declare-fun res!538843 () Bool)

(assert (=> b!794156 (=> (not res!538843) (not e!441013))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!794156 (= res!538843 (validKeyInArray!0 k0!2044))))

(declare-fun b!794157 () Bool)

(assert (=> b!794157 (= e!441013 e!441012)))

(declare-fun res!538848 () Bool)

(assert (=> b!794157 (=> (not res!538848) (not e!441012))))

(declare-datatypes ((SeekEntryResult!8236 0))(
  ( (MissingZero!8236 (index!35311 (_ BitVec 32))) (Found!8236 (index!35312 (_ BitVec 32))) (Intermediate!8236 (undefined!9048 Bool) (index!35313 (_ BitVec 32)) (x!66267 (_ BitVec 32))) (Undefined!8236) (MissingVacant!8236 (index!35314 (_ BitVec 32))) )
))
(declare-fun lt!354023 () SeekEntryResult!8236)

(assert (=> b!794157 (= res!538848 (or (= lt!354023 (MissingZero!8236 i!1163)) (= lt!354023 (MissingVacant!8236 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43123 (_ BitVec 32)) SeekEntryResult!8236)

(assert (=> b!794157 (= lt!354023 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794159 () Bool)

(declare-fun res!538841 () Bool)

(assert (=> b!794159 (=> (not res!538841) (not e!441013))))

(assert (=> b!794159 (= res!538841 (and (= (size!21059 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21059 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21059 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794160 () Bool)

(assert (=> b!794160 (= e!441012 e!441011)))

(declare-fun res!538842 () Bool)

(assert (=> b!794160 (=> (not res!538842) (not e!441011))))

(declare-fun lt!354024 () array!43123)

(declare-fun lt!354025 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43123 (_ BitVec 32)) SeekEntryResult!8236)

(assert (=> b!794160 (= res!538842 (= (seekEntryOrOpen!0 lt!354025 lt!354024 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354025 lt!354024 mask!3266)))))

(assert (=> b!794160 (= lt!354025 (select (store (arr!20638 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794160 (= lt!354024 (array!43124 (store (arr!20638 a!3170) i!1163 k0!2044) (size!21059 a!3170)))))

(declare-fun b!794158 () Bool)

(declare-fun res!538845 () Bool)

(assert (=> b!794158 (=> (not res!538845) (not e!441013))))

(declare-fun arrayContainsKey!0 (array!43123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794158 (= res!538845 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!538847 () Bool)

(assert (=> start!68382 (=> (not res!538847) (not e!441013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68382 (= res!538847 (validMask!0 mask!3266))))

(assert (=> start!68382 e!441013))

(assert (=> start!68382 true))

(declare-fun array_inv!16412 (array!43123) Bool)

(assert (=> start!68382 (array_inv!16412 a!3170)))

(assert (= (and start!68382 res!538847) b!794159))

(assert (= (and b!794159 res!538841) b!794154))

(assert (= (and b!794154 res!538849) b!794156))

(assert (= (and b!794156 res!538843) b!794158))

(assert (= (and b!794158 res!538845) b!794157))

(assert (= (and b!794157 res!538848) b!794153))

(assert (= (and b!794153 res!538844) b!794155))

(assert (= (and b!794155 res!538840) b!794152))

(assert (= (and b!794152 res!538846) b!794160))

(assert (= (and b!794160 res!538842) b!794151))

(declare-fun m!734773 () Bool)

(assert (=> b!794160 m!734773))

(declare-fun m!734775 () Bool)

(assert (=> b!794160 m!734775))

(declare-fun m!734777 () Bool)

(assert (=> b!794160 m!734777))

(declare-fun m!734779 () Bool)

(assert (=> b!794160 m!734779))

(declare-fun m!734781 () Bool)

(assert (=> b!794155 m!734781))

(declare-fun m!734783 () Bool)

(assert (=> b!794154 m!734783))

(assert (=> b!794154 m!734783))

(declare-fun m!734785 () Bool)

(assert (=> b!794154 m!734785))

(declare-fun m!734787 () Bool)

(assert (=> b!794156 m!734787))

(declare-fun m!734789 () Bool)

(assert (=> b!794152 m!734789))

(declare-fun m!734791 () Bool)

(assert (=> b!794152 m!734791))

(declare-fun m!734793 () Bool)

(assert (=> start!68382 m!734793))

(declare-fun m!734795 () Bool)

(assert (=> start!68382 m!734795))

(declare-fun m!734797 () Bool)

(assert (=> b!794153 m!734797))

(declare-fun m!734799 () Bool)

(assert (=> b!794158 m!734799))

(declare-fun m!734801 () Bool)

(assert (=> b!794157 m!734801))

(check-sat (not start!68382) (not b!794155) (not b!794157) (not b!794158) (not b!794156) (not b!794153) (not b!794160) (not b!794154))
(check-sat)
