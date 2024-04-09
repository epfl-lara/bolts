; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68326 () Bool)

(assert start!68326)

(declare-fun b!793363 () Bool)

(declare-fun res!538058 () Bool)

(declare-fun e!440726 () Bool)

(assert (=> b!793363 (=> (not res!538058) (not e!440726))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793363 (= res!538058 (validKeyInArray!0 k!2044))))

(declare-fun b!793364 () Bool)

(declare-fun res!538057 () Bool)

(assert (=> b!793364 (=> (not res!538057) (not e!440726))))

(declare-datatypes ((array!43067 0))(
  ( (array!43068 (arr!20610 (Array (_ BitVec 32) (_ BitVec 64))) (size!21031 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43067)

(declare-fun arrayContainsKey!0 (array!43067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793364 (= res!538057 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793365 () Bool)

(declare-fun res!538053 () Bool)

(declare-fun e!440728 () Bool)

(assert (=> b!793365 (=> (not res!538053) (not e!440728))))

(declare-datatypes ((List!14626 0))(
  ( (Nil!14623) (Cons!14622 (h!15751 (_ BitVec 64)) (t!20949 List!14626)) )
))
(declare-fun arrayNoDuplicates!0 (array!43067 (_ BitVec 32) List!14626) Bool)

(assert (=> b!793365 (= res!538053 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14623))))

(declare-fun b!793366 () Bool)

(declare-fun res!538052 () Bool)

(assert (=> b!793366 (=> (not res!538052) (not e!440726))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793366 (= res!538052 (validKeyInArray!0 (select (arr!20610 a!3170) j!153)))))

(declare-fun b!793367 () Bool)

(assert (=> b!793367 (= e!440726 e!440728)))

(declare-fun res!538055 () Bool)

(assert (=> b!793367 (=> (not res!538055) (not e!440728))))

(declare-datatypes ((SeekEntryResult!8208 0))(
  ( (MissingZero!8208 (index!35199 (_ BitVec 32))) (Found!8208 (index!35200 (_ BitVec 32))) (Intermediate!8208 (undefined!9020 Bool) (index!35201 (_ BitVec 32)) (x!66167 (_ BitVec 32))) (Undefined!8208) (MissingVacant!8208 (index!35202 (_ BitVec 32))) )
))
(declare-fun lt!353668 () SeekEntryResult!8208)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793367 (= res!538055 (or (= lt!353668 (MissingZero!8208 i!1163)) (= lt!353668 (MissingVacant!8208 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43067 (_ BitVec 32)) SeekEntryResult!8208)

(assert (=> b!793367 (= lt!353668 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793368 () Bool)

(declare-fun res!538056 () Bool)

(assert (=> b!793368 (=> (not res!538056) (not e!440728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43067 (_ BitVec 32)) Bool)

(assert (=> b!793368 (= res!538056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!538059 () Bool)

(assert (=> start!68326 (=> (not res!538059) (not e!440726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68326 (= res!538059 (validMask!0 mask!3266))))

(assert (=> start!68326 e!440726))

(assert (=> start!68326 true))

(declare-fun array_inv!16384 (array!43067) Bool)

(assert (=> start!68326 (array_inv!16384 a!3170)))

(declare-fun b!793369 () Bool)

(declare-fun res!538060 () Bool)

(assert (=> b!793369 (=> (not res!538060) (not e!440726))))

(assert (=> b!793369 (= res!538060 (and (= (size!21031 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21031 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21031 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793370 () Bool)

(declare-fun res!538054 () Bool)

(assert (=> b!793370 (=> (not res!538054) (not e!440728))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793370 (= res!538054 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21031 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20610 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21031 a!3170)) (= (select (arr!20610 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793371 () Bool)

(assert (=> b!793371 (= e!440728 false)))

(declare-fun lt!353669 () (_ BitVec 64))

(declare-fun lt!353670 () array!43067)

(declare-fun lt!353667 () SeekEntryResult!8208)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43067 (_ BitVec 32)) SeekEntryResult!8208)

(assert (=> b!793371 (= lt!353667 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353669 lt!353670 mask!3266))))

(declare-fun lt!353671 () SeekEntryResult!8208)

(assert (=> b!793371 (= lt!353671 (seekEntryOrOpen!0 lt!353669 lt!353670 mask!3266))))

(assert (=> b!793371 (= lt!353669 (select (store (arr!20610 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793371 (= lt!353670 (array!43068 (store (arr!20610 a!3170) i!1163 k!2044) (size!21031 a!3170)))))

(assert (= (and start!68326 res!538059) b!793369))

(assert (= (and b!793369 res!538060) b!793366))

(assert (= (and b!793366 res!538052) b!793363))

(assert (= (and b!793363 res!538058) b!793364))

(assert (= (and b!793364 res!538057) b!793367))

(assert (= (and b!793367 res!538055) b!793368))

(assert (= (and b!793368 res!538056) b!793365))

(assert (= (and b!793365 res!538053) b!793370))

(assert (= (and b!793370 res!538054) b!793371))

(declare-fun m!733933 () Bool)

(assert (=> b!793363 m!733933))

(declare-fun m!733935 () Bool)

(assert (=> b!793371 m!733935))

(declare-fun m!733937 () Bool)

(assert (=> b!793371 m!733937))

(declare-fun m!733939 () Bool)

(assert (=> b!793371 m!733939))

(declare-fun m!733941 () Bool)

(assert (=> b!793371 m!733941))

(declare-fun m!733943 () Bool)

(assert (=> start!68326 m!733943))

(declare-fun m!733945 () Bool)

(assert (=> start!68326 m!733945))

(declare-fun m!733947 () Bool)

(assert (=> b!793366 m!733947))

(assert (=> b!793366 m!733947))

(declare-fun m!733949 () Bool)

(assert (=> b!793366 m!733949))

(declare-fun m!733951 () Bool)

(assert (=> b!793367 m!733951))

(declare-fun m!733953 () Bool)

(assert (=> b!793370 m!733953))

(declare-fun m!733955 () Bool)

(assert (=> b!793370 m!733955))

(declare-fun m!733957 () Bool)

(assert (=> b!793364 m!733957))

(declare-fun m!733959 () Bool)

(assert (=> b!793365 m!733959))

(declare-fun m!733961 () Bool)

(assert (=> b!793368 m!733961))

(push 1)

