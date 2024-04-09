; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69246 () Bool)

(assert start!69246)

(declare-fun res!551702 () Bool)

(declare-fun e!447046 () Bool)

(assert (=> start!69246 (=> (not res!551702) (not e!447046))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69246 (= res!551702 (validMask!0 mask!3266))))

(assert (=> start!69246 e!447046))

(assert (=> start!69246 true))

(declare-datatypes ((array!43897 0))(
  ( (array!43898 (arr!21022 (Array (_ BitVec 32) (_ BitVec 64))) (size!21443 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43897)

(declare-fun array_inv!16796 (array!43897) Bool)

(assert (=> start!69246 (array_inv!16796 a!3170)))

(declare-fun b!807404 () Bool)

(declare-fun e!447049 () Bool)

(declare-fun e!447045 () Bool)

(assert (=> b!807404 (= e!447049 e!447045)))

(declare-fun res!551704 () Bool)

(assert (=> b!807404 (=> (not res!551704) (not e!447045))))

(declare-fun lt!361750 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361746 () array!43897)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8620 0))(
  ( (MissingZero!8620 (index!36847 (_ BitVec 32))) (Found!8620 (index!36848 (_ BitVec 32))) (Intermediate!8620 (undefined!9432 Bool) (index!36849 (_ BitVec 32)) (x!67681 (_ BitVec 32))) (Undefined!8620) (MissingVacant!8620 (index!36850 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43897 (_ BitVec 32)) SeekEntryResult!8620)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43897 (_ BitVec 32)) SeekEntryResult!8620)

(assert (=> b!807404 (= res!551704 (= (seekEntryOrOpen!0 lt!361750 lt!361746 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361750 lt!361746 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807404 (= lt!361750 (select (store (arr!21022 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807404 (= lt!361746 (array!43898 (store (arr!21022 a!3170) i!1163 k0!2044) (size!21443 a!3170)))))

(declare-fun b!807405 () Bool)

(declare-fun res!551707 () Bool)

(assert (=> b!807405 (=> (not res!551707) (not e!447049))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807405 (= res!551707 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21443 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21022 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21443 a!3170)) (= (select (arr!21022 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807406 () Bool)

(declare-fun res!551698 () Bool)

(assert (=> b!807406 (=> (not res!551698) (not e!447046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807406 (= res!551698 (validKeyInArray!0 (select (arr!21022 a!3170) j!153)))))

(declare-fun b!807407 () Bool)

(declare-fun e!447047 () Bool)

(assert (=> b!807407 (= e!447045 e!447047)))

(declare-fun res!551699 () Bool)

(assert (=> b!807407 (=> (not res!551699) (not e!447047))))

(declare-fun lt!361748 () SeekEntryResult!8620)

(declare-fun lt!361747 () SeekEntryResult!8620)

(assert (=> b!807407 (= res!551699 (and (= lt!361748 lt!361747) (= lt!361747 (Found!8620 j!153)) (not (= (select (arr!21022 a!3170) index!1236) (select (arr!21022 a!3170) j!153)))))))

(assert (=> b!807407 (= lt!361747 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21022 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807407 (= lt!361748 (seekEntryOrOpen!0 (select (arr!21022 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807408 () Bool)

(assert (=> b!807408 (= e!447047 false)))

(declare-fun lt!361745 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807408 (= lt!361745 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807409 () Bool)

(assert (=> b!807409 (= e!447046 e!447049)))

(declare-fun res!551700 () Bool)

(assert (=> b!807409 (=> (not res!551700) (not e!447049))))

(declare-fun lt!361749 () SeekEntryResult!8620)

(assert (=> b!807409 (= res!551700 (or (= lt!361749 (MissingZero!8620 i!1163)) (= lt!361749 (MissingVacant!8620 i!1163))))))

(assert (=> b!807409 (= lt!361749 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807410 () Bool)

(declare-fun res!551697 () Bool)

(assert (=> b!807410 (=> (not res!551697) (not e!447046))))

(assert (=> b!807410 (= res!551697 (and (= (size!21443 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21443 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21443 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807411 () Bool)

(declare-fun res!551706 () Bool)

(assert (=> b!807411 (=> (not res!551706) (not e!447046))))

(assert (=> b!807411 (= res!551706 (validKeyInArray!0 k0!2044))))

(declare-fun b!807412 () Bool)

(declare-fun res!551701 () Bool)

(assert (=> b!807412 (=> (not res!551701) (not e!447049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43897 (_ BitVec 32)) Bool)

(assert (=> b!807412 (= res!551701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807413 () Bool)

(declare-fun res!551705 () Bool)

(assert (=> b!807413 (=> (not res!551705) (not e!447049))))

(declare-datatypes ((List!15038 0))(
  ( (Nil!15035) (Cons!15034 (h!16163 (_ BitVec 64)) (t!21361 List!15038)) )
))
(declare-fun arrayNoDuplicates!0 (array!43897 (_ BitVec 32) List!15038) Bool)

(assert (=> b!807413 (= res!551705 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15035))))

(declare-fun b!807414 () Bool)

(declare-fun res!551703 () Bool)

(assert (=> b!807414 (=> (not res!551703) (not e!447046))))

(declare-fun arrayContainsKey!0 (array!43897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807414 (= res!551703 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69246 res!551702) b!807410))

(assert (= (and b!807410 res!551697) b!807406))

(assert (= (and b!807406 res!551698) b!807411))

(assert (= (and b!807411 res!551706) b!807414))

(assert (= (and b!807414 res!551703) b!807409))

(assert (= (and b!807409 res!551700) b!807412))

(assert (= (and b!807412 res!551701) b!807413))

(assert (= (and b!807413 res!551705) b!807405))

(assert (= (and b!807405 res!551707) b!807404))

(assert (= (and b!807404 res!551704) b!807407))

(assert (= (and b!807407 res!551699) b!807408))

(declare-fun m!749553 () Bool)

(assert (=> b!807404 m!749553))

(declare-fun m!749555 () Bool)

(assert (=> b!807404 m!749555))

(declare-fun m!749557 () Bool)

(assert (=> b!807404 m!749557))

(declare-fun m!749559 () Bool)

(assert (=> b!807404 m!749559))

(declare-fun m!749561 () Bool)

(assert (=> b!807411 m!749561))

(declare-fun m!749563 () Bool)

(assert (=> b!807409 m!749563))

(declare-fun m!749565 () Bool)

(assert (=> b!807408 m!749565))

(declare-fun m!749567 () Bool)

(assert (=> b!807412 m!749567))

(declare-fun m!749569 () Bool)

(assert (=> b!807413 m!749569))

(declare-fun m!749571 () Bool)

(assert (=> b!807406 m!749571))

(assert (=> b!807406 m!749571))

(declare-fun m!749573 () Bool)

(assert (=> b!807406 m!749573))

(declare-fun m!749575 () Bool)

(assert (=> b!807407 m!749575))

(assert (=> b!807407 m!749571))

(assert (=> b!807407 m!749571))

(declare-fun m!749577 () Bool)

(assert (=> b!807407 m!749577))

(assert (=> b!807407 m!749571))

(declare-fun m!749579 () Bool)

(assert (=> b!807407 m!749579))

(declare-fun m!749581 () Bool)

(assert (=> b!807414 m!749581))

(declare-fun m!749583 () Bool)

(assert (=> b!807405 m!749583))

(declare-fun m!749585 () Bool)

(assert (=> b!807405 m!749585))

(declare-fun m!749587 () Bool)

(assert (=> start!69246 m!749587))

(declare-fun m!749589 () Bool)

(assert (=> start!69246 m!749589))

(check-sat (not b!807406) (not b!807408) (not b!807409) (not b!807411) (not b!807412) (not b!807414) (not b!807404) (not b!807413) (not start!69246) (not b!807407))
(check-sat)
