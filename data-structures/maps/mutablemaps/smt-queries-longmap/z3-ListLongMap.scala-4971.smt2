; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68358 () Bool)

(assert start!68358)

(declare-fun b!793809 () Bool)

(declare-fun res!538506 () Bool)

(declare-fun e!440885 () Bool)

(assert (=> b!793809 (=> (not res!538506) (not e!440885))))

(declare-datatypes ((array!43099 0))(
  ( (array!43100 (arr!20626 (Array (_ BitVec 32) (_ BitVec 64))) (size!21047 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43099)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43099 (_ BitVec 32)) Bool)

(assert (=> b!793809 (= res!538506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793810 () Bool)

(declare-fun res!538500 () Bool)

(assert (=> b!793810 (=> (not res!538500) (not e!440885))))

(declare-datatypes ((List!14642 0))(
  ( (Nil!14639) (Cons!14638 (h!15767 (_ BitVec 64)) (t!20965 List!14642)) )
))
(declare-fun arrayNoDuplicates!0 (array!43099 (_ BitVec 32) List!14642) Bool)

(assert (=> b!793810 (= res!538500 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14639))))

(declare-fun b!793811 () Bool)

(declare-fun e!440887 () Bool)

(assert (=> b!793811 (= e!440887 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!793812 () Bool)

(declare-fun res!538505 () Bool)

(assert (=> b!793812 (=> (not res!538505) (not e!440885))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793812 (= res!538505 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21047 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20626 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21047 a!3170)) (= (select (arr!20626 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793813 () Bool)

(declare-fun e!440884 () Bool)

(assert (=> b!793813 (= e!440884 e!440885)))

(declare-fun res!538507 () Bool)

(assert (=> b!793813 (=> (not res!538507) (not e!440885))))

(declare-datatypes ((SeekEntryResult!8224 0))(
  ( (MissingZero!8224 (index!35263 (_ BitVec 32))) (Found!8224 (index!35264 (_ BitVec 32))) (Intermediate!8224 (undefined!9036 Bool) (index!35265 (_ BitVec 32)) (x!66223 (_ BitVec 32))) (Undefined!8224) (MissingVacant!8224 (index!35266 (_ BitVec 32))) )
))
(declare-fun lt!353879 () SeekEntryResult!8224)

(assert (=> b!793813 (= res!538507 (or (= lt!353879 (MissingZero!8224 i!1163)) (= lt!353879 (MissingVacant!8224 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43099 (_ BitVec 32)) SeekEntryResult!8224)

(assert (=> b!793813 (= lt!353879 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793814 () Bool)

(declare-fun res!538498 () Bool)

(assert (=> b!793814 (=> (not res!538498) (not e!440884))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793814 (= res!538498 (and (= (size!21047 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21047 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21047 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793815 () Bool)

(declare-fun res!538504 () Bool)

(assert (=> b!793815 (=> (not res!538504) (not e!440884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793815 (= res!538504 (validKeyInArray!0 k0!2044))))

(declare-fun b!793816 () Bool)

(assert (=> b!793816 (= e!440885 e!440887)))

(declare-fun res!538503 () Bool)

(assert (=> b!793816 (=> (not res!538503) (not e!440887))))

(declare-fun lt!353881 () array!43099)

(declare-fun lt!353880 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43099 (_ BitVec 32)) SeekEntryResult!8224)

(assert (=> b!793816 (= res!538503 (= (seekEntryOrOpen!0 lt!353880 lt!353881 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353880 lt!353881 mask!3266)))))

(assert (=> b!793816 (= lt!353880 (select (store (arr!20626 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793816 (= lt!353881 (array!43100 (store (arr!20626 a!3170) i!1163 k0!2044) (size!21047 a!3170)))))

(declare-fun res!538502 () Bool)

(assert (=> start!68358 (=> (not res!538502) (not e!440884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68358 (= res!538502 (validMask!0 mask!3266))))

(assert (=> start!68358 e!440884))

(assert (=> start!68358 true))

(declare-fun array_inv!16400 (array!43099) Bool)

(assert (=> start!68358 (array_inv!16400 a!3170)))

(declare-fun b!793817 () Bool)

(declare-fun res!538501 () Bool)

(assert (=> b!793817 (=> (not res!538501) (not e!440884))))

(assert (=> b!793817 (= res!538501 (validKeyInArray!0 (select (arr!20626 a!3170) j!153)))))

(declare-fun b!793818 () Bool)

(declare-fun res!538499 () Bool)

(assert (=> b!793818 (=> (not res!538499) (not e!440884))))

(declare-fun arrayContainsKey!0 (array!43099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793818 (= res!538499 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68358 res!538502) b!793814))

(assert (= (and b!793814 res!538498) b!793817))

(assert (= (and b!793817 res!538501) b!793815))

(assert (= (and b!793815 res!538504) b!793818))

(assert (= (and b!793818 res!538499) b!793813))

(assert (= (and b!793813 res!538507) b!793809))

(assert (= (and b!793809 res!538506) b!793810))

(assert (= (and b!793810 res!538500) b!793812))

(assert (= (and b!793812 res!538505) b!793816))

(assert (= (and b!793816 res!538503) b!793811))

(declare-fun m!734413 () Bool)

(assert (=> b!793810 m!734413))

(declare-fun m!734415 () Bool)

(assert (=> b!793815 m!734415))

(declare-fun m!734417 () Bool)

(assert (=> start!68358 m!734417))

(declare-fun m!734419 () Bool)

(assert (=> start!68358 m!734419))

(declare-fun m!734421 () Bool)

(assert (=> b!793809 m!734421))

(declare-fun m!734423 () Bool)

(assert (=> b!793817 m!734423))

(assert (=> b!793817 m!734423))

(declare-fun m!734425 () Bool)

(assert (=> b!793817 m!734425))

(declare-fun m!734427 () Bool)

(assert (=> b!793816 m!734427))

(declare-fun m!734429 () Bool)

(assert (=> b!793816 m!734429))

(declare-fun m!734431 () Bool)

(assert (=> b!793816 m!734431))

(declare-fun m!734433 () Bool)

(assert (=> b!793816 m!734433))

(declare-fun m!734435 () Bool)

(assert (=> b!793812 m!734435))

(declare-fun m!734437 () Bool)

(assert (=> b!793812 m!734437))

(declare-fun m!734439 () Bool)

(assert (=> b!793818 m!734439))

(declare-fun m!734441 () Bool)

(assert (=> b!793813 m!734441))

(check-sat (not b!793817) (not b!793818) (not b!793815) (not b!793809) (not b!793813) (not b!793816) (not start!68358) (not b!793810))
(check-sat)
