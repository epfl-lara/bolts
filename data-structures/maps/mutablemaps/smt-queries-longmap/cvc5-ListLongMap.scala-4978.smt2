; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68398 () Bool)

(assert start!68398)

(declare-fun b!794373 () Bool)

(declare-fun e!441091 () Bool)

(assert (=> b!794373 (= e!441091 false)))

(declare-datatypes ((SeekEntryResult!8244 0))(
  ( (MissingZero!8244 (index!35343 (_ BitVec 32))) (Found!8244 (index!35344 (_ BitVec 32))) (Intermediate!8244 (undefined!9056 Bool) (index!35345 (_ BitVec 32)) (x!66299 (_ BitVec 32))) (Undefined!8244) (MissingVacant!8244 (index!35346 (_ BitVec 32))) )
))
(declare-fun lt!354139 () SeekEntryResult!8244)

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43139 0))(
  ( (array!43140 (arr!20646 (Array (_ BitVec 32) (_ BitVec 64))) (size!21067 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43139)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43139 (_ BitVec 32)) SeekEntryResult!8244)

(assert (=> b!794373 (= lt!354139 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20646 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354138 () SeekEntryResult!8244)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43139 (_ BitVec 32)) SeekEntryResult!8244)

(assert (=> b!794373 (= lt!354138 (seekEntryOrOpen!0 (select (arr!20646 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794374 () Bool)

(declare-fun res!539067 () Bool)

(declare-fun e!441090 () Bool)

(assert (=> b!794374 (=> (not res!539067) (not e!441090))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794374 (= res!539067 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794375 () Bool)

(declare-fun res!539068 () Bool)

(declare-fun e!441089 () Bool)

(assert (=> b!794375 (=> (not res!539068) (not e!441089))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794375 (= res!539068 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21067 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20646 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21067 a!3170)) (= (select (arr!20646 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794376 () Bool)

(declare-fun res!539065 () Bool)

(assert (=> b!794376 (=> (not res!539065) (not e!441089))))

(declare-datatypes ((List!14662 0))(
  ( (Nil!14659) (Cons!14658 (h!15787 (_ BitVec 64)) (t!20985 List!14662)) )
))
(declare-fun arrayNoDuplicates!0 (array!43139 (_ BitVec 32) List!14662) Bool)

(assert (=> b!794376 (= res!539065 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14659))))

(declare-fun b!794377 () Bool)

(declare-fun res!539062 () Bool)

(assert (=> b!794377 (=> (not res!539062) (not e!441090))))

(assert (=> b!794377 (= res!539062 (and (= (size!21067 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21067 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21067 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!539070 () Bool)

(assert (=> start!68398 (=> (not res!539070) (not e!441090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68398 (= res!539070 (validMask!0 mask!3266))))

(assert (=> start!68398 e!441090))

(assert (=> start!68398 true))

(declare-fun array_inv!16420 (array!43139) Bool)

(assert (=> start!68398 (array_inv!16420 a!3170)))

(declare-fun b!794378 () Bool)

(assert (=> b!794378 (= e!441089 e!441091)))

(declare-fun res!539064 () Bool)

(assert (=> b!794378 (=> (not res!539064) (not e!441091))))

(declare-fun lt!354137 () (_ BitVec 64))

(declare-fun lt!354135 () array!43139)

(assert (=> b!794378 (= res!539064 (= (seekEntryOrOpen!0 lt!354137 lt!354135 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354137 lt!354135 mask!3266)))))

(assert (=> b!794378 (= lt!354137 (select (store (arr!20646 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794378 (= lt!354135 (array!43140 (store (arr!20646 a!3170) i!1163 k!2044) (size!21067 a!3170)))))

(declare-fun b!794379 () Bool)

(assert (=> b!794379 (= e!441090 e!441089)))

(declare-fun res!539071 () Bool)

(assert (=> b!794379 (=> (not res!539071) (not e!441089))))

(declare-fun lt!354136 () SeekEntryResult!8244)

(assert (=> b!794379 (= res!539071 (or (= lt!354136 (MissingZero!8244 i!1163)) (= lt!354136 (MissingVacant!8244 i!1163))))))

(assert (=> b!794379 (= lt!354136 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794380 () Bool)

(declare-fun res!539069 () Bool)

(assert (=> b!794380 (=> (not res!539069) (not e!441090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794380 (= res!539069 (validKeyInArray!0 k!2044))))

(declare-fun b!794381 () Bool)

(declare-fun res!539063 () Bool)

(assert (=> b!794381 (=> (not res!539063) (not e!441090))))

(assert (=> b!794381 (= res!539063 (validKeyInArray!0 (select (arr!20646 a!3170) j!153)))))

(declare-fun b!794382 () Bool)

(declare-fun res!539066 () Bool)

(assert (=> b!794382 (=> (not res!539066) (not e!441089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43139 (_ BitVec 32)) Bool)

(assert (=> b!794382 (= res!539066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68398 res!539070) b!794377))

(assert (= (and b!794377 res!539062) b!794381))

(assert (= (and b!794381 res!539063) b!794380))

(assert (= (and b!794380 res!539069) b!794374))

(assert (= (and b!794374 res!539067) b!794379))

(assert (= (and b!794379 res!539071) b!794382))

(assert (= (and b!794382 res!539066) b!794376))

(assert (= (and b!794376 res!539065) b!794375))

(assert (= (and b!794375 res!539068) b!794378))

(assert (= (and b!794378 res!539064) b!794373))

(declare-fun m!735013 () Bool)

(assert (=> b!794376 m!735013))

(declare-fun m!735015 () Bool)

(assert (=> b!794378 m!735015))

(declare-fun m!735017 () Bool)

(assert (=> b!794378 m!735017))

(declare-fun m!735019 () Bool)

(assert (=> b!794378 m!735019))

(declare-fun m!735021 () Bool)

(assert (=> b!794378 m!735021))

(declare-fun m!735023 () Bool)

(assert (=> b!794380 m!735023))

(declare-fun m!735025 () Bool)

(assert (=> b!794382 m!735025))

(declare-fun m!735027 () Bool)

(assert (=> b!794381 m!735027))

(assert (=> b!794381 m!735027))

(declare-fun m!735029 () Bool)

(assert (=> b!794381 m!735029))

(declare-fun m!735031 () Bool)

(assert (=> b!794375 m!735031))

(declare-fun m!735033 () Bool)

(assert (=> b!794375 m!735033))

(declare-fun m!735035 () Bool)

(assert (=> start!68398 m!735035))

(declare-fun m!735037 () Bool)

(assert (=> start!68398 m!735037))

(assert (=> b!794373 m!735027))

(assert (=> b!794373 m!735027))

(declare-fun m!735039 () Bool)

(assert (=> b!794373 m!735039))

(assert (=> b!794373 m!735027))

(declare-fun m!735041 () Bool)

(assert (=> b!794373 m!735041))

(declare-fun m!735043 () Bool)

(assert (=> b!794379 m!735043))

(declare-fun m!735045 () Bool)

(assert (=> b!794374 m!735045))

(push 1)

