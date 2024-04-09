; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69032 () Bool)

(assert start!69032)

(declare-fun b!804954 () Bool)

(declare-fun res!549646 () Bool)

(declare-fun e!445855 () Bool)

(assert (=> b!804954 (=> (not res!549646) (not e!445855))))

(declare-datatypes ((array!43773 0))(
  ( (array!43774 (arr!20963 (Array (_ BitVec 32) (_ BitVec 64))) (size!21384 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43773)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804954 (= res!549646 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804955 () Bool)

(declare-fun e!445858 () Bool)

(assert (=> b!804955 (= e!445855 e!445858)))

(declare-fun res!549645 () Bool)

(assert (=> b!804955 (=> (not res!549645) (not e!445858))))

(declare-datatypes ((SeekEntryResult!8561 0))(
  ( (MissingZero!8561 (index!36611 (_ BitVec 32))) (Found!8561 (index!36612 (_ BitVec 32))) (Intermediate!8561 (undefined!9373 Bool) (index!36613 (_ BitVec 32)) (x!67456 (_ BitVec 32))) (Undefined!8561) (MissingVacant!8561 (index!36614 (_ BitVec 32))) )
))
(declare-fun lt!360412 () SeekEntryResult!8561)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804955 (= res!549645 (or (= lt!360412 (MissingZero!8561 i!1163)) (= lt!360412 (MissingVacant!8561 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43773 (_ BitVec 32)) SeekEntryResult!8561)

(assert (=> b!804955 (= lt!360412 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!549650 () Bool)

(assert (=> start!69032 (=> (not res!549650) (not e!445855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69032 (= res!549650 (validMask!0 mask!3266))))

(assert (=> start!69032 e!445855))

(assert (=> start!69032 true))

(declare-fun array_inv!16737 (array!43773) Bool)

(assert (=> start!69032 (array_inv!16737 a!3170)))

(declare-fun b!804956 () Bool)

(declare-fun e!445856 () Bool)

(assert (=> b!804956 (= e!445856 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!360413 () SeekEntryResult!8561)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43773 (_ BitVec 32)) SeekEntryResult!8561)

(assert (=> b!804956 (= lt!360413 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20963 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360414 () SeekEntryResult!8561)

(assert (=> b!804956 (= lt!360414 (seekEntryOrOpen!0 (select (arr!20963 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804957 () Bool)

(declare-fun res!549648 () Bool)

(assert (=> b!804957 (=> (not res!549648) (not e!445858))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!804957 (= res!549648 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21384 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20963 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21384 a!3170)) (= (select (arr!20963 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804958 () Bool)

(declare-fun res!549649 () Bool)

(assert (=> b!804958 (=> (not res!549649) (not e!445858))))

(declare-datatypes ((List!14979 0))(
  ( (Nil!14976) (Cons!14975 (h!16104 (_ BitVec 64)) (t!21302 List!14979)) )
))
(declare-fun arrayNoDuplicates!0 (array!43773 (_ BitVec 32) List!14979) Bool)

(assert (=> b!804958 (= res!549649 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14976))))

(declare-fun b!804959 () Bool)

(declare-fun res!549643 () Bool)

(assert (=> b!804959 (=> (not res!549643) (not e!445855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804959 (= res!549643 (validKeyInArray!0 k!2044))))

(declare-fun b!804960 () Bool)

(declare-fun res!549644 () Bool)

(assert (=> b!804960 (=> (not res!549644) (not e!445858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43773 (_ BitVec 32)) Bool)

(assert (=> b!804960 (= res!549644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804961 () Bool)

(declare-fun res!549651 () Bool)

(assert (=> b!804961 (=> (not res!549651) (not e!445855))))

(assert (=> b!804961 (= res!549651 (validKeyInArray!0 (select (arr!20963 a!3170) j!153)))))

(declare-fun b!804962 () Bool)

(declare-fun res!549647 () Bool)

(assert (=> b!804962 (=> (not res!549647) (not e!445855))))

(assert (=> b!804962 (= res!549647 (and (= (size!21384 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21384 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21384 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804963 () Bool)

(assert (=> b!804963 (= e!445858 e!445856)))

(declare-fun res!549652 () Bool)

(assert (=> b!804963 (=> (not res!549652) (not e!445856))))

(declare-fun lt!360415 () (_ BitVec 64))

(declare-fun lt!360411 () array!43773)

(assert (=> b!804963 (= res!549652 (= (seekEntryOrOpen!0 lt!360415 lt!360411 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360415 lt!360411 mask!3266)))))

(assert (=> b!804963 (= lt!360415 (select (store (arr!20963 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804963 (= lt!360411 (array!43774 (store (arr!20963 a!3170) i!1163 k!2044) (size!21384 a!3170)))))

(assert (= (and start!69032 res!549650) b!804962))

(assert (= (and b!804962 res!549647) b!804961))

(assert (= (and b!804961 res!549651) b!804959))

(assert (= (and b!804959 res!549643) b!804954))

(assert (= (and b!804954 res!549646) b!804955))

(assert (= (and b!804955 res!549645) b!804960))

(assert (= (and b!804960 res!549644) b!804958))

(assert (= (and b!804958 res!549649) b!804957))

(assert (= (and b!804957 res!549648) b!804963))

(assert (= (and b!804963 res!549652) b!804956))

(declare-fun m!746955 () Bool)

(assert (=> b!804960 m!746955))

(declare-fun m!746957 () Bool)

(assert (=> b!804957 m!746957))

(declare-fun m!746959 () Bool)

(assert (=> b!804957 m!746959))

(declare-fun m!746961 () Bool)

(assert (=> b!804958 m!746961))

(declare-fun m!746963 () Bool)

(assert (=> b!804961 m!746963))

(assert (=> b!804961 m!746963))

(declare-fun m!746965 () Bool)

(assert (=> b!804961 m!746965))

(declare-fun m!746967 () Bool)

(assert (=> b!804955 m!746967))

(assert (=> b!804956 m!746963))

(assert (=> b!804956 m!746963))

(declare-fun m!746969 () Bool)

(assert (=> b!804956 m!746969))

(assert (=> b!804956 m!746963))

(declare-fun m!746971 () Bool)

(assert (=> b!804956 m!746971))

(declare-fun m!746973 () Bool)

(assert (=> b!804959 m!746973))

(declare-fun m!746975 () Bool)

(assert (=> start!69032 m!746975))

(declare-fun m!746977 () Bool)

(assert (=> start!69032 m!746977))

(declare-fun m!746979 () Bool)

(assert (=> b!804963 m!746979))

(declare-fun m!746981 () Bool)

(assert (=> b!804963 m!746981))

(declare-fun m!746983 () Bool)

(assert (=> b!804963 m!746983))

(declare-fun m!746985 () Bool)

(assert (=> b!804963 m!746985))

(declare-fun m!746987 () Bool)

(assert (=> b!804954 m!746987))

(push 1)

(assert (not b!804956))

(assert (not b!804960))

(assert (not b!804959))

(assert (not b!804963))

