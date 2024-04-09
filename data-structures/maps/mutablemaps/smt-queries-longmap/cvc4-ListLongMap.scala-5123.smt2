; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69584 () Bool)

(assert start!69584)

(declare-fun b!810596 () Bool)

(declare-fun res!554043 () Bool)

(declare-fun e!448689 () Bool)

(assert (=> b!810596 (=> (not res!554043) (not e!448689))))

(declare-datatypes ((array!44031 0))(
  ( (array!44032 (arr!21083 (Array (_ BitVec 32) (_ BitVec 64))) (size!21504 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44031)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44031 (_ BitVec 32)) Bool)

(assert (=> b!810596 (= res!554043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810597 () Bool)

(declare-fun e!448693 () Bool)

(assert (=> b!810597 (= e!448693 (not true))))

(declare-fun lt!363376 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!363370 () array!44031)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!363374 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8681 0))(
  ( (MissingZero!8681 (index!37091 (_ BitVec 32))) (Found!8681 (index!37092 (_ BitVec 32))) (Intermediate!8681 (undefined!9493 Bool) (index!37093 (_ BitVec 32)) (x!67926 (_ BitVec 32))) (Undefined!8681) (MissingVacant!8681 (index!37094 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44031 (_ BitVec 32)) SeekEntryResult!8681)

(assert (=> b!810597 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363374 vacantAfter!23 lt!363376 lt!363370 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363374 vacantBefore!23 (select (arr!21083 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((Unit!27624 0))(
  ( (Unit!27625) )
))
(declare-fun lt!363375 () Unit!27624)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44031 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27624)

(assert (=> b!810597 (= lt!363375 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363374 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810597 (= lt!363374 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810598 () Bool)

(declare-fun res!554049 () Bool)

(assert (=> b!810598 (=> (not res!554049) (not e!448689))))

(assert (=> b!810598 (= res!554049 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21504 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21083 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21504 a!3170)) (= (select (arr!21083 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810599 () Bool)

(declare-fun e!448692 () Bool)

(assert (=> b!810599 (= e!448692 e!448693)))

(declare-fun res!554046 () Bool)

(assert (=> b!810599 (=> (not res!554046) (not e!448693))))

(declare-fun lt!363372 () SeekEntryResult!8681)

(declare-fun lt!363373 () SeekEntryResult!8681)

(assert (=> b!810599 (= res!554046 (and (= lt!363373 lt!363372) (= lt!363372 (Found!8681 j!153)) (not (= (select (arr!21083 a!3170) index!1236) (select (arr!21083 a!3170) j!153)))))))

(assert (=> b!810599 (= lt!363372 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21083 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44031 (_ BitVec 32)) SeekEntryResult!8681)

(assert (=> b!810599 (= lt!363373 (seekEntryOrOpen!0 (select (arr!21083 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810600 () Bool)

(declare-fun res!554051 () Bool)

(declare-fun e!448691 () Bool)

(assert (=> b!810600 (=> (not res!554051) (not e!448691))))

(assert (=> b!810600 (= res!554051 (and (= (size!21504 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21504 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21504 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810601 () Bool)

(declare-fun res!554052 () Bool)

(assert (=> b!810601 (=> (not res!554052) (not e!448691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810601 (= res!554052 (validKeyInArray!0 k!2044))))

(declare-fun res!554048 () Bool)

(assert (=> start!69584 (=> (not res!554048) (not e!448691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69584 (= res!554048 (validMask!0 mask!3266))))

(assert (=> start!69584 e!448691))

(assert (=> start!69584 true))

(declare-fun array_inv!16857 (array!44031) Bool)

(assert (=> start!69584 (array_inv!16857 a!3170)))

(declare-fun b!810602 () Bool)

(declare-fun res!554044 () Bool)

(assert (=> b!810602 (=> (not res!554044) (not e!448691))))

(declare-fun arrayContainsKey!0 (array!44031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810602 (= res!554044 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810603 () Bool)

(assert (=> b!810603 (= e!448691 e!448689)))

(declare-fun res!554053 () Bool)

(assert (=> b!810603 (=> (not res!554053) (not e!448689))))

(declare-fun lt!363371 () SeekEntryResult!8681)

(assert (=> b!810603 (= res!554053 (or (= lt!363371 (MissingZero!8681 i!1163)) (= lt!363371 (MissingVacant!8681 i!1163))))))

(assert (=> b!810603 (= lt!363371 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810604 () Bool)

(declare-fun res!554050 () Bool)

(assert (=> b!810604 (=> (not res!554050) (not e!448689))))

(declare-datatypes ((List!15099 0))(
  ( (Nil!15096) (Cons!15095 (h!16224 (_ BitVec 64)) (t!21422 List!15099)) )
))
(declare-fun arrayNoDuplicates!0 (array!44031 (_ BitVec 32) List!15099) Bool)

(assert (=> b!810604 (= res!554050 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15096))))

(declare-fun b!810605 () Bool)

(assert (=> b!810605 (= e!448689 e!448692)))

(declare-fun res!554047 () Bool)

(assert (=> b!810605 (=> (not res!554047) (not e!448692))))

(assert (=> b!810605 (= res!554047 (= (seekEntryOrOpen!0 lt!363376 lt!363370 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363376 lt!363370 mask!3266)))))

(assert (=> b!810605 (= lt!363376 (select (store (arr!21083 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810605 (= lt!363370 (array!44032 (store (arr!21083 a!3170) i!1163 k!2044) (size!21504 a!3170)))))

(declare-fun b!810606 () Bool)

(declare-fun res!554045 () Bool)

(assert (=> b!810606 (=> (not res!554045) (not e!448691))))

(assert (=> b!810606 (= res!554045 (validKeyInArray!0 (select (arr!21083 a!3170) j!153)))))

(assert (= (and start!69584 res!554048) b!810600))

(assert (= (and b!810600 res!554051) b!810606))

(assert (= (and b!810606 res!554045) b!810601))

(assert (= (and b!810601 res!554052) b!810602))

(assert (= (and b!810602 res!554044) b!810603))

(assert (= (and b!810603 res!554053) b!810596))

(assert (= (and b!810596 res!554043) b!810604))

(assert (= (and b!810604 res!554050) b!810598))

(assert (= (and b!810598 res!554049) b!810605))

(assert (= (and b!810605 res!554047) b!810599))

(assert (= (and b!810599 res!554046) b!810597))

(declare-fun m!752939 () Bool)

(assert (=> start!69584 m!752939))

(declare-fun m!752941 () Bool)

(assert (=> start!69584 m!752941))

(declare-fun m!752943 () Bool)

(assert (=> b!810596 m!752943))

(declare-fun m!752945 () Bool)

(assert (=> b!810598 m!752945))

(declare-fun m!752947 () Bool)

(assert (=> b!810598 m!752947))

(declare-fun m!752949 () Bool)

(assert (=> b!810603 m!752949))

(declare-fun m!752951 () Bool)

(assert (=> b!810601 m!752951))

(declare-fun m!752953 () Bool)

(assert (=> b!810604 m!752953))

(declare-fun m!752955 () Bool)

(assert (=> b!810597 m!752955))

(declare-fun m!752957 () Bool)

(assert (=> b!810597 m!752957))

(declare-fun m!752959 () Bool)

(assert (=> b!810597 m!752959))

(declare-fun m!752961 () Bool)

(assert (=> b!810597 m!752961))

(assert (=> b!810597 m!752955))

(declare-fun m!752963 () Bool)

(assert (=> b!810597 m!752963))

(declare-fun m!752965 () Bool)

(assert (=> b!810599 m!752965))

(assert (=> b!810599 m!752955))

(assert (=> b!810599 m!752955))

(declare-fun m!752967 () Bool)

(assert (=> b!810599 m!752967))

(assert (=> b!810599 m!752955))

(declare-fun m!752969 () Bool)

(assert (=> b!810599 m!752969))

(declare-fun m!752971 () Bool)

(assert (=> b!810602 m!752971))

(declare-fun m!752973 () Bool)

(assert (=> b!810605 m!752973))

(declare-fun m!752975 () Bool)

(assert (=> b!810605 m!752975))

(declare-fun m!752977 () Bool)

(assert (=> b!810605 m!752977))

(declare-fun m!752979 () Bool)

(assert (=> b!810605 m!752979))

(assert (=> b!810606 m!752955))

(assert (=> b!810606 m!752955))

(declare-fun m!752981 () Bool)

(assert (=> b!810606 m!752981))

(push 1)

