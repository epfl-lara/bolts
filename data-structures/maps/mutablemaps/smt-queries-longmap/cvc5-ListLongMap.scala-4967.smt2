; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68332 () Bool)

(assert start!68332)

(declare-fun b!793446 () Bool)

(declare-fun res!538135 () Bool)

(declare-fun e!440757 () Bool)

(assert (=> b!793446 (=> (not res!538135) (not e!440757))))

(declare-datatypes ((array!43073 0))(
  ( (array!43074 (arr!20613 (Array (_ BitVec 32) (_ BitVec 64))) (size!21034 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43073)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43073 (_ BitVec 32)) Bool)

(assert (=> b!793446 (= res!538135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793447 () Bool)

(declare-fun res!538140 () Bool)

(declare-fun e!440756 () Bool)

(assert (=> b!793447 (=> (not res!538140) (not e!440756))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793447 (= res!538140 (validKeyInArray!0 (select (arr!20613 a!3170) j!153)))))

(declare-fun b!793448 () Bool)

(declare-fun e!440755 () Bool)

(assert (=> b!793448 (= e!440757 e!440755)))

(declare-fun res!538143 () Bool)

(assert (=> b!793448 (=> (not res!538143) (not e!440755))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353709 () (_ BitVec 64))

(declare-fun lt!353708 () array!43073)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8211 0))(
  ( (MissingZero!8211 (index!35211 (_ BitVec 32))) (Found!8211 (index!35212 (_ BitVec 32))) (Intermediate!8211 (undefined!9023 Bool) (index!35213 (_ BitVec 32)) (x!66178 (_ BitVec 32))) (Undefined!8211) (MissingVacant!8211 (index!35214 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43073 (_ BitVec 32)) SeekEntryResult!8211)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43073 (_ BitVec 32)) SeekEntryResult!8211)

(assert (=> b!793448 (= res!538143 (= (seekEntryOrOpen!0 lt!353709 lt!353708 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353709 lt!353708 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793448 (= lt!353709 (select (store (arr!20613 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793448 (= lt!353708 (array!43074 (store (arr!20613 a!3170) i!1163 k!2044) (size!21034 a!3170)))))

(declare-fun b!793449 () Bool)

(declare-fun res!538139 () Bool)

(assert (=> b!793449 (=> (not res!538139) (not e!440756))))

(declare-fun arrayContainsKey!0 (array!43073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793449 (= res!538139 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793450 () Bool)

(declare-fun res!538136 () Bool)

(assert (=> b!793450 (=> (not res!538136) (not e!440756))))

(assert (=> b!793450 (= res!538136 (and (= (size!21034 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21034 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21034 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793451 () Bool)

(assert (=> b!793451 (= e!440756 e!440757)))

(declare-fun res!538138 () Bool)

(assert (=> b!793451 (=> (not res!538138) (not e!440757))))

(declare-fun lt!353710 () SeekEntryResult!8211)

(assert (=> b!793451 (= res!538138 (or (= lt!353710 (MissingZero!8211 i!1163)) (= lt!353710 (MissingVacant!8211 i!1163))))))

(assert (=> b!793451 (= lt!353710 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793452 () Bool)

(assert (=> b!793452 (= e!440755 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun res!538142 () Bool)

(assert (=> start!68332 (=> (not res!538142) (not e!440756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68332 (= res!538142 (validMask!0 mask!3266))))

(assert (=> start!68332 e!440756))

(assert (=> start!68332 true))

(declare-fun array_inv!16387 (array!43073) Bool)

(assert (=> start!68332 (array_inv!16387 a!3170)))

(declare-fun b!793453 () Bool)

(declare-fun res!538144 () Bool)

(assert (=> b!793453 (=> (not res!538144) (not e!440757))))

(declare-datatypes ((List!14629 0))(
  ( (Nil!14626) (Cons!14625 (h!15754 (_ BitVec 64)) (t!20952 List!14629)) )
))
(declare-fun arrayNoDuplicates!0 (array!43073 (_ BitVec 32) List!14629) Bool)

(assert (=> b!793453 (= res!538144 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14626))))

(declare-fun b!793454 () Bool)

(declare-fun res!538137 () Bool)

(assert (=> b!793454 (=> (not res!538137) (not e!440757))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793454 (= res!538137 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21034 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20613 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21034 a!3170)) (= (select (arr!20613 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793455 () Bool)

(declare-fun res!538141 () Bool)

(assert (=> b!793455 (=> (not res!538141) (not e!440756))))

(assert (=> b!793455 (= res!538141 (validKeyInArray!0 k!2044))))

(assert (= (and start!68332 res!538142) b!793450))

(assert (= (and b!793450 res!538136) b!793447))

(assert (= (and b!793447 res!538140) b!793455))

(assert (= (and b!793455 res!538141) b!793449))

(assert (= (and b!793449 res!538139) b!793451))

(assert (= (and b!793451 res!538138) b!793446))

(assert (= (and b!793446 res!538135) b!793453))

(assert (= (and b!793453 res!538144) b!793454))

(assert (= (and b!793454 res!538137) b!793448))

(assert (= (and b!793448 res!538143) b!793452))

(declare-fun m!734023 () Bool)

(assert (=> b!793455 m!734023))

(declare-fun m!734025 () Bool)

(assert (=> b!793448 m!734025))

(declare-fun m!734027 () Bool)

(assert (=> b!793448 m!734027))

(declare-fun m!734029 () Bool)

(assert (=> b!793448 m!734029))

(declare-fun m!734031 () Bool)

(assert (=> b!793448 m!734031))

(declare-fun m!734033 () Bool)

(assert (=> b!793451 m!734033))

(declare-fun m!734035 () Bool)

(assert (=> b!793449 m!734035))

(declare-fun m!734037 () Bool)

(assert (=> b!793453 m!734037))

(declare-fun m!734039 () Bool)

(assert (=> b!793447 m!734039))

(assert (=> b!793447 m!734039))

(declare-fun m!734041 () Bool)

(assert (=> b!793447 m!734041))

(declare-fun m!734043 () Bool)

(assert (=> start!68332 m!734043))

(declare-fun m!734045 () Bool)

(assert (=> start!68332 m!734045))

(declare-fun m!734047 () Bool)

(assert (=> b!793446 m!734047))

(declare-fun m!734049 () Bool)

(assert (=> b!793454 m!734049))

(declare-fun m!734051 () Bool)

(assert (=> b!793454 m!734051))

(push 1)

