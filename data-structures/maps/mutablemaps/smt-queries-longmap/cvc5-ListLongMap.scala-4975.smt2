; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68380 () Bool)

(assert start!68380)

(declare-fun b!794121 () Bool)

(declare-fun res!538814 () Bool)

(declare-fun e!441000 () Bool)

(assert (=> b!794121 (=> (not res!538814) (not e!441000))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43121 0))(
  ( (array!43122 (arr!20637 (Array (_ BitVec 32) (_ BitVec 64))) (size!21058 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43121)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794121 (= res!538814 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21058 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20637 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21058 a!3170)) (= (select (arr!20637 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794122 () Bool)

(declare-fun res!538811 () Bool)

(declare-fun e!440999 () Bool)

(assert (=> b!794122 (=> (not res!538811) (not e!440999))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794122 (= res!538811 (validKeyInArray!0 k!2044))))

(declare-fun b!794124 () Bool)

(declare-fun res!538815 () Bool)

(assert (=> b!794124 (=> (not res!538815) (not e!440999))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794124 (= res!538815 (and (= (size!21058 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21058 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21058 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794125 () Bool)

(declare-fun res!538818 () Bool)

(assert (=> b!794125 (=> (not res!538818) (not e!440999))))

(declare-fun arrayContainsKey!0 (array!43121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794125 (= res!538818 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794126 () Bool)

(declare-fun res!538819 () Bool)

(assert (=> b!794126 (=> (not res!538819) (not e!441000))))

(declare-datatypes ((List!14653 0))(
  ( (Nil!14650) (Cons!14649 (h!15778 (_ BitVec 64)) (t!20976 List!14653)) )
))
(declare-fun arrayNoDuplicates!0 (array!43121 (_ BitVec 32) List!14653) Bool)

(assert (=> b!794126 (= res!538819 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14650))))

(declare-fun res!538812 () Bool)

(assert (=> start!68380 (=> (not res!538812) (not e!440999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68380 (= res!538812 (validMask!0 mask!3266))))

(assert (=> start!68380 e!440999))

(assert (=> start!68380 true))

(declare-fun array_inv!16411 (array!43121) Bool)

(assert (=> start!68380 (array_inv!16411 a!3170)))

(declare-fun b!794123 () Bool)

(declare-fun res!538817 () Bool)

(assert (=> b!794123 (=> (not res!538817) (not e!441000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43121 (_ BitVec 32)) Bool)

(assert (=> b!794123 (= res!538817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794127 () Bool)

(declare-fun e!440998 () Bool)

(assert (=> b!794127 (= e!441000 e!440998)))

(declare-fun res!538813 () Bool)

(assert (=> b!794127 (=> (not res!538813) (not e!440998))))

(declare-fun lt!354015 () (_ BitVec 64))

(declare-fun lt!354014 () array!43121)

(declare-datatypes ((SeekEntryResult!8235 0))(
  ( (MissingZero!8235 (index!35307 (_ BitVec 32))) (Found!8235 (index!35308 (_ BitVec 32))) (Intermediate!8235 (undefined!9047 Bool) (index!35309 (_ BitVec 32)) (x!66266 (_ BitVec 32))) (Undefined!8235) (MissingVacant!8235 (index!35310 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43121 (_ BitVec 32)) SeekEntryResult!8235)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43121 (_ BitVec 32)) SeekEntryResult!8235)

(assert (=> b!794127 (= res!538813 (= (seekEntryOrOpen!0 lt!354015 lt!354014 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354015 lt!354014 mask!3266)))))

(assert (=> b!794127 (= lt!354015 (select (store (arr!20637 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794127 (= lt!354014 (array!43122 (store (arr!20637 a!3170) i!1163 k!2044) (size!21058 a!3170)))))

(declare-fun b!794128 () Bool)

(declare-fun res!538816 () Bool)

(assert (=> b!794128 (=> (not res!538816) (not e!440999))))

(assert (=> b!794128 (= res!538816 (validKeyInArray!0 (select (arr!20637 a!3170) j!153)))))

(declare-fun b!794129 () Bool)

(assert (=> b!794129 (= e!440998 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun b!794130 () Bool)

(assert (=> b!794130 (= e!440999 e!441000)))

(declare-fun res!538810 () Bool)

(assert (=> b!794130 (=> (not res!538810) (not e!441000))))

(declare-fun lt!354016 () SeekEntryResult!8235)

(assert (=> b!794130 (= res!538810 (or (= lt!354016 (MissingZero!8235 i!1163)) (= lt!354016 (MissingVacant!8235 i!1163))))))

(assert (=> b!794130 (= lt!354016 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68380 res!538812) b!794124))

(assert (= (and b!794124 res!538815) b!794128))

(assert (= (and b!794128 res!538816) b!794122))

(assert (= (and b!794122 res!538811) b!794125))

(assert (= (and b!794125 res!538818) b!794130))

(assert (= (and b!794130 res!538810) b!794123))

(assert (= (and b!794123 res!538817) b!794126))

(assert (= (and b!794126 res!538819) b!794121))

(assert (= (and b!794121 res!538814) b!794127))

(assert (= (and b!794127 res!538813) b!794129))

(declare-fun m!734743 () Bool)

(assert (=> b!794122 m!734743))

(declare-fun m!734745 () Bool)

(assert (=> b!794125 m!734745))

(declare-fun m!734747 () Bool)

(assert (=> b!794123 m!734747))

(declare-fun m!734749 () Bool)

(assert (=> b!794126 m!734749))

(declare-fun m!734751 () Bool)

(assert (=> b!794130 m!734751))

(declare-fun m!734753 () Bool)

(assert (=> start!68380 m!734753))

(declare-fun m!734755 () Bool)

(assert (=> start!68380 m!734755))

(declare-fun m!734757 () Bool)

(assert (=> b!794121 m!734757))

(declare-fun m!734759 () Bool)

(assert (=> b!794121 m!734759))

(declare-fun m!734761 () Bool)

(assert (=> b!794127 m!734761))

(declare-fun m!734763 () Bool)

(assert (=> b!794127 m!734763))

(declare-fun m!734765 () Bool)

(assert (=> b!794127 m!734765))

(declare-fun m!734767 () Bool)

(assert (=> b!794127 m!734767))

(declare-fun m!734769 () Bool)

(assert (=> b!794128 m!734769))

(assert (=> b!794128 m!734769))

(declare-fun m!734771 () Bool)

(assert (=> b!794128 m!734771))

(push 1)

(assert (not b!794123))

(assert (not start!68380))

(assert (not b!794122))

(assert (not b!794127))

(assert (not b!794128))

(assert (not b!794125))

(assert (not b!794130))

(assert (not b!794126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

