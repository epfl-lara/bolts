; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68342 () Bool)

(assert start!68342)

(declare-fun b!793588 () Bool)

(declare-fun res!538277 () Bool)

(declare-fun e!440809 () Bool)

(assert (=> b!793588 (=> (not res!538277) (not e!440809))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43083 0))(
  ( (array!43084 (arr!20618 (Array (_ BitVec 32) (_ BitVec 64))) (size!21039 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43083)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793588 (= res!538277 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21039 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20618 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21039 a!3170)) (= (select (arr!20618 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793589 () Bool)

(declare-fun res!538282 () Bool)

(declare-fun e!440808 () Bool)

(assert (=> b!793589 (=> (not res!538282) (not e!440808))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793589 (= res!538282 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793590 () Bool)

(declare-fun res!538278 () Bool)

(assert (=> b!793590 (=> (not res!538278) (not e!440808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793590 (= res!538278 (validKeyInArray!0 k!2044))))

(declare-fun b!793591 () Bool)

(declare-fun res!538280 () Bool)

(assert (=> b!793591 (=> (not res!538280) (not e!440808))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793591 (= res!538280 (and (= (size!21039 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21039 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21039 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793592 () Bool)

(declare-fun res!538281 () Bool)

(assert (=> b!793592 (=> (not res!538281) (not e!440809))))

(declare-datatypes ((List!14634 0))(
  ( (Nil!14631) (Cons!14630 (h!15759 (_ BitVec 64)) (t!20957 List!14634)) )
))
(declare-fun arrayNoDuplicates!0 (array!43083 (_ BitVec 32) List!14634) Bool)

(assert (=> b!793592 (= res!538281 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14631))))

(declare-fun b!793593 () Bool)

(declare-fun res!538279 () Bool)

(assert (=> b!793593 (=> (not res!538279) (not e!440809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43083 (_ BitVec 32)) Bool)

(assert (=> b!793593 (= res!538279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793595 () Bool)

(declare-fun res!538283 () Bool)

(assert (=> b!793595 (=> (not res!538283) (not e!440808))))

(assert (=> b!793595 (= res!538283 (validKeyInArray!0 (select (arr!20618 a!3170) j!153)))))

(declare-fun b!793596 () Bool)

(assert (=> b!793596 (= e!440808 e!440809)))

(declare-fun res!538284 () Bool)

(assert (=> b!793596 (=> (not res!538284) (not e!440809))))

(declare-datatypes ((SeekEntryResult!8216 0))(
  ( (MissingZero!8216 (index!35231 (_ BitVec 32))) (Found!8216 (index!35232 (_ BitVec 32))) (Intermediate!8216 (undefined!9028 Bool) (index!35233 (_ BitVec 32)) (x!66191 (_ BitVec 32))) (Undefined!8216) (MissingVacant!8216 (index!35234 (_ BitVec 32))) )
))
(declare-fun lt!353770 () SeekEntryResult!8216)

(assert (=> b!793596 (= res!538284 (or (= lt!353770 (MissingZero!8216 i!1163)) (= lt!353770 (MissingVacant!8216 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43083 (_ BitVec 32)) SeekEntryResult!8216)

(assert (=> b!793596 (= lt!353770 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793594 () Bool)

(assert (=> b!793594 (= e!440809 false)))

(declare-fun lt!353772 () (_ BitVec 64))

(declare-fun lt!353769 () SeekEntryResult!8216)

(declare-fun lt!353771 () array!43083)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43083 (_ BitVec 32)) SeekEntryResult!8216)

(assert (=> b!793594 (= lt!353769 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353772 lt!353771 mask!3266))))

(declare-fun lt!353773 () SeekEntryResult!8216)

(assert (=> b!793594 (= lt!353773 (seekEntryOrOpen!0 lt!353772 lt!353771 mask!3266))))

(assert (=> b!793594 (= lt!353772 (select (store (arr!20618 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793594 (= lt!353771 (array!43084 (store (arr!20618 a!3170) i!1163 k!2044) (size!21039 a!3170)))))

(declare-fun res!538285 () Bool)

(assert (=> start!68342 (=> (not res!538285) (not e!440808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68342 (= res!538285 (validMask!0 mask!3266))))

(assert (=> start!68342 e!440808))

(assert (=> start!68342 true))

(declare-fun array_inv!16392 (array!43083) Bool)

(assert (=> start!68342 (array_inv!16392 a!3170)))

(assert (= (and start!68342 res!538285) b!793591))

(assert (= (and b!793591 res!538280) b!793595))

(assert (= (and b!793595 res!538283) b!793590))

(assert (= (and b!793590 res!538278) b!793589))

(assert (= (and b!793589 res!538282) b!793596))

(assert (= (and b!793596 res!538284) b!793593))

(assert (= (and b!793593 res!538279) b!793592))

(assert (= (and b!793592 res!538281) b!793588))

(assert (= (and b!793588 res!538277) b!793594))

(declare-fun m!734173 () Bool)

(assert (=> b!793596 m!734173))

(declare-fun m!734175 () Bool)

(assert (=> b!793588 m!734175))

(declare-fun m!734177 () Bool)

(assert (=> b!793588 m!734177))

(declare-fun m!734179 () Bool)

(assert (=> b!793594 m!734179))

(declare-fun m!734181 () Bool)

(assert (=> b!793594 m!734181))

(declare-fun m!734183 () Bool)

(assert (=> b!793594 m!734183))

(declare-fun m!734185 () Bool)

(assert (=> b!793594 m!734185))

(declare-fun m!734187 () Bool)

(assert (=> b!793595 m!734187))

(assert (=> b!793595 m!734187))

(declare-fun m!734189 () Bool)

(assert (=> b!793595 m!734189))

(declare-fun m!734191 () Bool)

(assert (=> b!793592 m!734191))

(declare-fun m!734193 () Bool)

(assert (=> start!68342 m!734193))

(declare-fun m!734195 () Bool)

(assert (=> start!68342 m!734195))

(declare-fun m!734197 () Bool)

(assert (=> b!793589 m!734197))

(declare-fun m!734199 () Bool)

(assert (=> b!793590 m!734199))

(declare-fun m!734201 () Bool)

(assert (=> b!793593 m!734201))

(push 1)

(assert (not b!793593))

(assert (not b!793589))

(assert (not b!793590))

(assert (not b!793595))

(assert (not 