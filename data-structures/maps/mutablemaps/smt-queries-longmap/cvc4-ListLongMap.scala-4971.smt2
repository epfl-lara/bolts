; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68360 () Bool)

(assert start!68360)

(declare-fun b!793839 () Bool)

(declare-fun res!538536 () Bool)

(declare-fun e!440899 () Bool)

(assert (=> b!793839 (=> (not res!538536) (not e!440899))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43101 0))(
  ( (array!43102 (arr!20627 (Array (_ BitVec 32) (_ BitVec 64))) (size!21048 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43101)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793839 (= res!538536 (and (= (size!21048 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21048 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21048 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793840 () Bool)

(declare-fun e!440896 () Bool)

(declare-fun e!440897 () Bool)

(assert (=> b!793840 (= e!440896 e!440897)))

(declare-fun res!538528 () Bool)

(assert (=> b!793840 (=> (not res!538528) (not e!440897))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!353890 () array!43101)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353888 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8225 0))(
  ( (MissingZero!8225 (index!35267 (_ BitVec 32))) (Found!8225 (index!35268 (_ BitVec 32))) (Intermediate!8225 (undefined!9037 Bool) (index!35269 (_ BitVec 32)) (x!66224 (_ BitVec 32))) (Undefined!8225) (MissingVacant!8225 (index!35270 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43101 (_ BitVec 32)) SeekEntryResult!8225)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43101 (_ BitVec 32)) SeekEntryResult!8225)

(assert (=> b!793840 (= res!538528 (= (seekEntryOrOpen!0 lt!353888 lt!353890 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353888 lt!353890 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!793840 (= lt!353888 (select (store (arr!20627 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793840 (= lt!353890 (array!43102 (store (arr!20627 a!3170) i!1163 k!2044) (size!21048 a!3170)))))

(declare-fun res!538530 () Bool)

(assert (=> start!68360 (=> (not res!538530) (not e!440899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68360 (= res!538530 (validMask!0 mask!3266))))

(assert (=> start!68360 e!440899))

(assert (=> start!68360 true))

(declare-fun array_inv!16401 (array!43101) Bool)

(assert (=> start!68360 (array_inv!16401 a!3170)))

(declare-fun b!793841 () Bool)

(assert (=> b!793841 (= e!440897 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!793842 () Bool)

(declare-fun res!538535 () Bool)

(assert (=> b!793842 (=> (not res!538535) (not e!440899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793842 (= res!538535 (validKeyInArray!0 (select (arr!20627 a!3170) j!153)))))

(declare-fun b!793843 () Bool)

(declare-fun res!538532 () Bool)

(assert (=> b!793843 (=> (not res!538532) (not e!440896))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793843 (= res!538532 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21048 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20627 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21048 a!3170)) (= (select (arr!20627 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793844 () Bool)

(declare-fun res!538537 () Bool)

(assert (=> b!793844 (=> (not res!538537) (not e!440899))))

(declare-fun arrayContainsKey!0 (array!43101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793844 (= res!538537 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793845 () Bool)

(declare-fun res!538529 () Bool)

(assert (=> b!793845 (=> (not res!538529) (not e!440896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43101 (_ BitVec 32)) Bool)

(assert (=> b!793845 (= res!538529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793846 () Bool)

(assert (=> b!793846 (= e!440899 e!440896)))

(declare-fun res!538533 () Bool)

(assert (=> b!793846 (=> (not res!538533) (not e!440896))))

(declare-fun lt!353889 () SeekEntryResult!8225)

(assert (=> b!793846 (= res!538533 (or (= lt!353889 (MissingZero!8225 i!1163)) (= lt!353889 (MissingVacant!8225 i!1163))))))

(assert (=> b!793846 (= lt!353889 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793847 () Bool)

(declare-fun res!538534 () Bool)

(assert (=> b!793847 (=> (not res!538534) (not e!440896))))

(declare-datatypes ((List!14643 0))(
  ( (Nil!14640) (Cons!14639 (h!15768 (_ BitVec 64)) (t!20966 List!14643)) )
))
(declare-fun arrayNoDuplicates!0 (array!43101 (_ BitVec 32) List!14643) Bool)

(assert (=> b!793847 (= res!538534 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14640))))

(declare-fun b!793848 () Bool)

(declare-fun res!538531 () Bool)

(assert (=> b!793848 (=> (not res!538531) (not e!440899))))

(assert (=> b!793848 (= res!538531 (validKeyInArray!0 k!2044))))

(assert (= (and start!68360 res!538530) b!793839))

(assert (= (and b!793839 res!538536) b!793842))

(assert (= (and b!793842 res!538535) b!793848))

(assert (= (and b!793848 res!538531) b!793844))

(assert (= (and b!793844 res!538537) b!793846))

(assert (= (and b!793846 res!538533) b!793845))

(assert (= (and b!793845 res!538529) b!793847))

(assert (= (and b!793847 res!538534) b!793843))

(assert (= (and b!793843 res!538532) b!793840))

(assert (= (and b!793840 res!538528) b!793841))

(declare-fun m!734443 () Bool)

(assert (=> start!68360 m!734443))

(declare-fun m!734445 () Bool)

(assert (=> start!68360 m!734445))

(declare-fun m!734447 () Bool)

(assert (=> b!793846 m!734447))

(declare-fun m!734449 () Bool)

(assert (=> b!793845 m!734449))

(declare-fun m!734451 () Bool)

(assert (=> b!793847 m!734451))

(declare-fun m!734453 () Bool)

(assert (=> b!793843 m!734453))

(declare-fun m!734455 () Bool)

(assert (=> b!793843 m!734455))

(declare-fun m!734457 () Bool)

(assert (=> b!793848 m!734457))

(declare-fun m!734459 () Bool)

(assert (=> b!793842 m!734459))

(assert (=> b!793842 m!734459))

(declare-fun m!734461 () Bool)

(assert (=> b!793842 m!734461))

(declare-fun m!734463 () Bool)

(assert (=> b!793840 m!734463))

(declare-fun m!734465 () Bool)

(assert (=> b!793840 m!734465))

(declare-fun m!734467 () Bool)

(assert (=> b!793840 m!734467))

(declare-fun m!734469 () Bool)

(assert (=> b!793840 m!734469))

(declare-fun m!734471 () Bool)

(assert (=> b!793844 m!734471))

(push 1)

(assert (not b!793840))

(assert (not b!793848))

(assert (not b!793844))

(assert (not b!793842))

(assert (not b!793847))

(assert (not b!793846))

(assert (not start!68360))

(assert (not b!793845))

(check-sat)

