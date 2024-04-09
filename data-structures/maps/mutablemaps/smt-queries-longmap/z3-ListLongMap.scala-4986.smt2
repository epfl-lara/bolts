; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68448 () Bool)

(assert start!68448)

(declare-fun b!795150 () Bool)

(declare-fun res!539847 () Bool)

(declare-fun e!441389 () Bool)

(assert (=> b!795150 (=> (not res!539847) (not e!441389))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43189 0))(
  ( (array!43190 (arr!20671 (Array (_ BitVec 32) (_ BitVec 64))) (size!21092 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43189)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!795150 (= res!539847 (and (= (size!21092 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21092 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21092 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795151 () Bool)

(declare-fun e!441391 () Bool)

(assert (=> b!795151 (= e!441391 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8269 0))(
  ( (MissingZero!8269 (index!35443 (_ BitVec 32))) (Found!8269 (index!35444 (_ BitVec 32))) (Intermediate!8269 (undefined!9081 Bool) (index!35445 (_ BitVec 32)) (x!66388 (_ BitVec 32))) (Undefined!8269) (MissingVacant!8269 (index!35446 (_ BitVec 32))) )
))
(declare-fun lt!354460 () SeekEntryResult!8269)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43189 (_ BitVec 32)) SeekEntryResult!8269)

(assert (=> b!795151 (= lt!354460 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20671 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354458 () SeekEntryResult!8269)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43189 (_ BitVec 32)) SeekEntryResult!8269)

(assert (=> b!795151 (= lt!354458 (seekEntryOrOpen!0 (select (arr!20671 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795152 () Bool)

(declare-fun res!539848 () Bool)

(declare-fun e!441390 () Bool)

(assert (=> b!795152 (=> (not res!539848) (not e!441390))))

(declare-datatypes ((List!14687 0))(
  ( (Nil!14684) (Cons!14683 (h!15812 (_ BitVec 64)) (t!21010 List!14687)) )
))
(declare-fun arrayNoDuplicates!0 (array!43189 (_ BitVec 32) List!14687) Bool)

(assert (=> b!795152 (= res!539848 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14684))))

(declare-fun b!795153 () Bool)

(declare-fun res!539841 () Bool)

(assert (=> b!795153 (=> (not res!539841) (not e!441389))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795153 (= res!539841 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795154 () Bool)

(declare-fun res!539843 () Bool)

(assert (=> b!795154 (=> (not res!539843) (not e!441389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795154 (= res!539843 (validKeyInArray!0 k0!2044))))

(declare-fun b!795155 () Bool)

(assert (=> b!795155 (= e!441390 e!441391)))

(declare-fun res!539842 () Bool)

(assert (=> b!795155 (=> (not res!539842) (not e!441391))))

(declare-fun lt!354456 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354457 () array!43189)

(assert (=> b!795155 (= res!539842 (= (seekEntryOrOpen!0 lt!354456 lt!354457 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354456 lt!354457 mask!3266)))))

(assert (=> b!795155 (= lt!354456 (select (store (arr!20671 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795155 (= lt!354457 (array!43190 (store (arr!20671 a!3170) i!1163 k0!2044) (size!21092 a!3170)))))

(declare-fun b!795156 () Bool)

(declare-fun res!539844 () Bool)

(assert (=> b!795156 (=> (not res!539844) (not e!441390))))

(assert (=> b!795156 (= res!539844 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21092 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20671 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21092 a!3170)) (= (select (arr!20671 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795157 () Bool)

(declare-fun res!539839 () Bool)

(assert (=> b!795157 (=> (not res!539839) (not e!441390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43189 (_ BitVec 32)) Bool)

(assert (=> b!795157 (= res!539839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!539846 () Bool)

(assert (=> start!68448 (=> (not res!539846) (not e!441389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68448 (= res!539846 (validMask!0 mask!3266))))

(assert (=> start!68448 e!441389))

(assert (=> start!68448 true))

(declare-fun array_inv!16445 (array!43189) Bool)

(assert (=> start!68448 (array_inv!16445 a!3170)))

(declare-fun b!795158 () Bool)

(declare-fun res!539845 () Bool)

(assert (=> b!795158 (=> (not res!539845) (not e!441389))))

(assert (=> b!795158 (= res!539845 (validKeyInArray!0 (select (arr!20671 a!3170) j!153)))))

(declare-fun b!795159 () Bool)

(assert (=> b!795159 (= e!441389 e!441390)))

(declare-fun res!539840 () Bool)

(assert (=> b!795159 (=> (not res!539840) (not e!441390))))

(declare-fun lt!354459 () SeekEntryResult!8269)

(assert (=> b!795159 (= res!539840 (or (= lt!354459 (MissingZero!8269 i!1163)) (= lt!354459 (MissingVacant!8269 i!1163))))))

(assert (=> b!795159 (= lt!354459 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68448 res!539846) b!795150))

(assert (= (and b!795150 res!539847) b!795158))

(assert (= (and b!795158 res!539845) b!795154))

(assert (= (and b!795154 res!539843) b!795153))

(assert (= (and b!795153 res!539841) b!795159))

(assert (= (and b!795159 res!539840) b!795157))

(assert (= (and b!795157 res!539839) b!795152))

(assert (= (and b!795152 res!539848) b!795156))

(assert (= (and b!795156 res!539844) b!795155))

(assert (= (and b!795155 res!539842) b!795151))

(declare-fun m!735863 () Bool)

(assert (=> b!795156 m!735863))

(declare-fun m!735865 () Bool)

(assert (=> b!795156 m!735865))

(declare-fun m!735867 () Bool)

(assert (=> start!68448 m!735867))

(declare-fun m!735869 () Bool)

(assert (=> start!68448 m!735869))

(declare-fun m!735871 () Bool)

(assert (=> b!795152 m!735871))

(declare-fun m!735873 () Bool)

(assert (=> b!795155 m!735873))

(declare-fun m!735875 () Bool)

(assert (=> b!795155 m!735875))

(declare-fun m!735877 () Bool)

(assert (=> b!795155 m!735877))

(declare-fun m!735879 () Bool)

(assert (=> b!795155 m!735879))

(declare-fun m!735881 () Bool)

(assert (=> b!795153 m!735881))

(declare-fun m!735883 () Bool)

(assert (=> b!795154 m!735883))

(declare-fun m!735885 () Bool)

(assert (=> b!795157 m!735885))

(declare-fun m!735887 () Bool)

(assert (=> b!795159 m!735887))

(declare-fun m!735889 () Bool)

(assert (=> b!795158 m!735889))

(assert (=> b!795158 m!735889))

(declare-fun m!735891 () Bool)

(assert (=> b!795158 m!735891))

(assert (=> b!795151 m!735889))

(assert (=> b!795151 m!735889))

(declare-fun m!735893 () Bool)

(assert (=> b!795151 m!735893))

(assert (=> b!795151 m!735889))

(declare-fun m!735895 () Bool)

(assert (=> b!795151 m!735895))

(check-sat (not b!795158) (not b!795151) (not b!795154) (not b!795155) (not start!68448) (not b!795152) (not b!795159) (not b!795153) (not b!795157))
(check-sat)
