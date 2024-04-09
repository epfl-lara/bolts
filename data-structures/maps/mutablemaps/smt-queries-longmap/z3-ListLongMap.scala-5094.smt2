; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69192 () Bool)

(assert start!69192)

(declare-fun b!806504 () Bool)

(declare-fun e!446635 () Bool)

(declare-fun e!446633 () Bool)

(assert (=> b!806504 (= e!446635 e!446633)))

(declare-fun res!550802 () Bool)

(assert (=> b!806504 (=> (not res!550802) (not e!446633))))

(declare-datatypes ((SeekEntryResult!8593 0))(
  ( (MissingZero!8593 (index!36739 (_ BitVec 32))) (Found!8593 (index!36740 (_ BitVec 32))) (Intermediate!8593 (undefined!9405 Bool) (index!36741 (_ BitVec 32)) (x!67582 (_ BitVec 32))) (Undefined!8593) (MissingVacant!8593 (index!36742 (_ BitVec 32))) )
))
(declare-fun lt!361229 () SeekEntryResult!8593)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806504 (= res!550802 (or (= lt!361229 (MissingZero!8593 i!1163)) (= lt!361229 (MissingVacant!8593 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43843 0))(
  ( (array!43844 (arr!20995 (Array (_ BitVec 32) (_ BitVec 64))) (size!21416 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43843)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43843 (_ BitVec 32)) SeekEntryResult!8593)

(assert (=> b!806504 (= lt!361229 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!806505 () Bool)

(declare-fun res!550798 () Bool)

(assert (=> b!806505 (=> (not res!550798) (not e!446633))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806505 (= res!550798 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21416 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20995 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21416 a!3170)) (= (select (arr!20995 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806506 () Bool)

(declare-fun res!550801 () Bool)

(assert (=> b!806506 (=> (not res!550801) (not e!446633))))

(declare-datatypes ((List!15011 0))(
  ( (Nil!15008) (Cons!15007 (h!16136 (_ BitVec 64)) (t!21334 List!15011)) )
))
(declare-fun arrayNoDuplicates!0 (array!43843 (_ BitVec 32) List!15011) Bool)

(assert (=> b!806506 (= res!550801 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15008))))

(declare-fun b!806507 () Bool)

(declare-fun res!550797 () Bool)

(assert (=> b!806507 (=> (not res!550797) (not e!446633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43843 (_ BitVec 32)) Bool)

(assert (=> b!806507 (= res!550797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806508 () Bool)

(declare-fun e!446631 () Bool)

(assert (=> b!806508 (= e!446633 e!446631)))

(declare-fun res!550806 () Bool)

(assert (=> b!806508 (=> (not res!550806) (not e!446631))))

(declare-fun lt!361232 () SeekEntryResult!8593)

(declare-fun lt!361230 () SeekEntryResult!8593)

(assert (=> b!806508 (= res!550806 (= lt!361232 lt!361230))))

(declare-fun lt!361228 () (_ BitVec 64))

(declare-fun lt!361231 () array!43843)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43843 (_ BitVec 32)) SeekEntryResult!8593)

(assert (=> b!806508 (= lt!361230 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361228 lt!361231 mask!3266))))

(assert (=> b!806508 (= lt!361232 (seekEntryOrOpen!0 lt!361228 lt!361231 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806508 (= lt!361228 (select (store (arr!20995 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806508 (= lt!361231 (array!43844 (store (arr!20995 a!3170) i!1163 k0!2044) (size!21416 a!3170)))))

(declare-fun b!806509 () Bool)

(declare-fun e!446634 () Bool)

(assert (=> b!806509 (= e!446634 (not true))))

(assert (=> b!806509 (= lt!361230 (Found!8593 index!1236))))

(declare-fun res!550799 () Bool)

(assert (=> start!69192 (=> (not res!550799) (not e!446635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69192 (= res!550799 (validMask!0 mask!3266))))

(assert (=> start!69192 e!446635))

(assert (=> start!69192 true))

(declare-fun array_inv!16769 (array!43843) Bool)

(assert (=> start!69192 (array_inv!16769 a!3170)))

(declare-fun b!806510 () Bool)

(declare-fun res!550805 () Bool)

(assert (=> b!806510 (=> (not res!550805) (not e!446635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806510 (= res!550805 (validKeyInArray!0 (select (arr!20995 a!3170) j!153)))))

(declare-fun b!806511 () Bool)

(declare-fun res!550807 () Bool)

(assert (=> b!806511 (=> (not res!550807) (not e!446635))))

(assert (=> b!806511 (= res!550807 (validKeyInArray!0 k0!2044))))

(declare-fun b!806512 () Bool)

(assert (=> b!806512 (= e!446631 e!446634)))

(declare-fun res!550804 () Bool)

(assert (=> b!806512 (=> (not res!550804) (not e!446634))))

(declare-fun lt!361233 () SeekEntryResult!8593)

(declare-fun lt!361234 () SeekEntryResult!8593)

(assert (=> b!806512 (= res!550804 (and (= lt!361234 lt!361233) (= lt!361233 (Found!8593 j!153)) (= (select (arr!20995 a!3170) index!1236) (select (arr!20995 a!3170) j!153))))))

(assert (=> b!806512 (= lt!361233 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20995 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806512 (= lt!361234 (seekEntryOrOpen!0 (select (arr!20995 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806513 () Bool)

(declare-fun res!550803 () Bool)

(assert (=> b!806513 (=> (not res!550803) (not e!446635))))

(assert (=> b!806513 (= res!550803 (and (= (size!21416 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21416 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21416 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806514 () Bool)

(declare-fun res!550800 () Bool)

(assert (=> b!806514 (=> (not res!550800) (not e!446635))))

(declare-fun arrayContainsKey!0 (array!43843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806514 (= res!550800 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69192 res!550799) b!806513))

(assert (= (and b!806513 res!550803) b!806510))

(assert (= (and b!806510 res!550805) b!806511))

(assert (= (and b!806511 res!550807) b!806514))

(assert (= (and b!806514 res!550800) b!806504))

(assert (= (and b!806504 res!550802) b!806507))

(assert (= (and b!806507 res!550797) b!806506))

(assert (= (and b!806506 res!550801) b!806505))

(assert (= (and b!806505 res!550798) b!806508))

(assert (= (and b!806508 res!550806) b!806512))

(assert (= (and b!806512 res!550804) b!806509))

(declare-fun m!748543 () Bool)

(assert (=> b!806512 m!748543))

(declare-fun m!748545 () Bool)

(assert (=> b!806512 m!748545))

(assert (=> b!806512 m!748545))

(declare-fun m!748547 () Bool)

(assert (=> b!806512 m!748547))

(assert (=> b!806512 m!748545))

(declare-fun m!748549 () Bool)

(assert (=> b!806512 m!748549))

(declare-fun m!748551 () Bool)

(assert (=> start!69192 m!748551))

(declare-fun m!748553 () Bool)

(assert (=> start!69192 m!748553))

(declare-fun m!748555 () Bool)

(assert (=> b!806508 m!748555))

(declare-fun m!748557 () Bool)

(assert (=> b!806508 m!748557))

(declare-fun m!748559 () Bool)

(assert (=> b!806508 m!748559))

(declare-fun m!748561 () Bool)

(assert (=> b!806508 m!748561))

(declare-fun m!748563 () Bool)

(assert (=> b!806511 m!748563))

(declare-fun m!748565 () Bool)

(assert (=> b!806507 m!748565))

(declare-fun m!748567 () Bool)

(assert (=> b!806506 m!748567))

(declare-fun m!748569 () Bool)

(assert (=> b!806504 m!748569))

(declare-fun m!748571 () Bool)

(assert (=> b!806505 m!748571))

(declare-fun m!748573 () Bool)

(assert (=> b!806505 m!748573))

(assert (=> b!806510 m!748545))

(assert (=> b!806510 m!748545))

(declare-fun m!748575 () Bool)

(assert (=> b!806510 m!748575))

(declare-fun m!748577 () Bool)

(assert (=> b!806514 m!748577))

(check-sat (not b!806508) (not b!806507) (not b!806512) (not start!69192) (not b!806510) (not b!806511) (not b!806506) (not b!806514) (not b!806504))
(check-sat)
