; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69200 () Bool)

(assert start!69200)

(declare-fun b!806636 () Bool)

(declare-fun e!446692 () Bool)

(declare-fun e!446695 () Bool)

(assert (=> b!806636 (= e!446692 e!446695)))

(declare-fun res!550939 () Bool)

(assert (=> b!806636 (=> (not res!550939) (not e!446695))))

(declare-datatypes ((SeekEntryResult!8597 0))(
  ( (MissingZero!8597 (index!36755 (_ BitVec 32))) (Found!8597 (index!36756 (_ BitVec 32))) (Intermediate!8597 (undefined!9409 Bool) (index!36757 (_ BitVec 32)) (x!67594 (_ BitVec 32))) (Undefined!8597) (MissingVacant!8597 (index!36758 (_ BitVec 32))) )
))
(declare-fun lt!361318 () SeekEntryResult!8597)

(declare-datatypes ((array!43851 0))(
  ( (array!43852 (arr!20999 (Array (_ BitVec 32) (_ BitVec 64))) (size!21420 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43851)

(declare-fun lt!361314 () SeekEntryResult!8597)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806636 (= res!550939 (and (= lt!361318 lt!361314) (= lt!361314 (Found!8597 j!153)) (= (select (arr!20999 a!3170) index!1236) (select (arr!20999 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43851 (_ BitVec 32)) SeekEntryResult!8597)

(assert (=> b!806636 (= lt!361314 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20999 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43851 (_ BitVec 32)) SeekEntryResult!8597)

(assert (=> b!806636 (= lt!361318 (seekEntryOrOpen!0 (select (arr!20999 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806637 () Bool)

(declare-fun res!550932 () Bool)

(declare-fun e!446694 () Bool)

(assert (=> b!806637 (=> (not res!550932) (not e!446694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806637 (= res!550932 (validKeyInArray!0 (select (arr!20999 a!3170) j!153)))))

(declare-fun b!806638 () Bool)

(declare-fun res!550937 () Bool)

(declare-fun e!446693 () Bool)

(assert (=> b!806638 (=> (not res!550937) (not e!446693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43851 (_ BitVec 32)) Bool)

(assert (=> b!806638 (= res!550937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806639 () Bool)

(assert (=> b!806639 (= e!446695 (not true))))

(declare-fun lt!361316 () SeekEntryResult!8597)

(assert (=> b!806639 (= lt!361316 (Found!8597 index!1236))))

(declare-fun b!806640 () Bool)

(declare-fun res!550930 () Bool)

(assert (=> b!806640 (=> (not res!550930) (not e!446693))))

(declare-datatypes ((List!15015 0))(
  ( (Nil!15012) (Cons!15011 (h!16140 (_ BitVec 64)) (t!21338 List!15015)) )
))
(declare-fun arrayNoDuplicates!0 (array!43851 (_ BitVec 32) List!15015) Bool)

(assert (=> b!806640 (= res!550930 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15012))))

(declare-fun b!806641 () Bool)

(assert (=> b!806641 (= e!446693 e!446692)))

(declare-fun res!550934 () Bool)

(assert (=> b!806641 (=> (not res!550934) (not e!446692))))

(declare-fun lt!361315 () SeekEntryResult!8597)

(assert (=> b!806641 (= res!550934 (= lt!361315 lt!361316))))

(declare-fun lt!361312 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361317 () array!43851)

(assert (=> b!806641 (= lt!361316 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361312 lt!361317 mask!3266))))

(assert (=> b!806641 (= lt!361315 (seekEntryOrOpen!0 lt!361312 lt!361317 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806641 (= lt!361312 (select (store (arr!20999 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806641 (= lt!361317 (array!43852 (store (arr!20999 a!3170) i!1163 k!2044) (size!21420 a!3170)))))

(declare-fun b!806642 () Bool)

(declare-fun res!550931 () Bool)

(assert (=> b!806642 (=> (not res!550931) (not e!446693))))

(assert (=> b!806642 (= res!550931 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21420 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20999 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21420 a!3170)) (= (select (arr!20999 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!550935 () Bool)

(assert (=> start!69200 (=> (not res!550935) (not e!446694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69200 (= res!550935 (validMask!0 mask!3266))))

(assert (=> start!69200 e!446694))

(assert (=> start!69200 true))

(declare-fun array_inv!16773 (array!43851) Bool)

(assert (=> start!69200 (array_inv!16773 a!3170)))

(declare-fun b!806643 () Bool)

(declare-fun res!550929 () Bool)

(assert (=> b!806643 (=> (not res!550929) (not e!446694))))

(assert (=> b!806643 (= res!550929 (and (= (size!21420 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21420 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21420 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806644 () Bool)

(declare-fun res!550938 () Bool)

(assert (=> b!806644 (=> (not res!550938) (not e!446694))))

(declare-fun arrayContainsKey!0 (array!43851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806644 (= res!550938 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806645 () Bool)

(assert (=> b!806645 (= e!446694 e!446693)))

(declare-fun res!550936 () Bool)

(assert (=> b!806645 (=> (not res!550936) (not e!446693))))

(declare-fun lt!361313 () SeekEntryResult!8597)

(assert (=> b!806645 (= res!550936 (or (= lt!361313 (MissingZero!8597 i!1163)) (= lt!361313 (MissingVacant!8597 i!1163))))))

(assert (=> b!806645 (= lt!361313 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806646 () Bool)

(declare-fun res!550933 () Bool)

(assert (=> b!806646 (=> (not res!550933) (not e!446694))))

(assert (=> b!806646 (= res!550933 (validKeyInArray!0 k!2044))))

(assert (= (and start!69200 res!550935) b!806643))

(assert (= (and b!806643 res!550929) b!806637))

(assert (= (and b!806637 res!550932) b!806646))

(assert (= (and b!806646 res!550933) b!806644))

(assert (= (and b!806644 res!550938) b!806645))

(assert (= (and b!806645 res!550936) b!806638))

(assert (= (and b!806638 res!550937) b!806640))

(assert (= (and b!806640 res!550930) b!806642))

(assert (= (and b!806642 res!550931) b!806641))

(assert (= (and b!806641 res!550934) b!806636))

(assert (= (and b!806636 res!550939) b!806639))

(declare-fun m!748687 () Bool)

(assert (=> b!806644 m!748687))

(declare-fun m!748689 () Bool)

(assert (=> b!806641 m!748689))

(declare-fun m!748691 () Bool)

(assert (=> b!806641 m!748691))

(declare-fun m!748693 () Bool)

(assert (=> b!806641 m!748693))

(declare-fun m!748695 () Bool)

(assert (=> b!806641 m!748695))

(declare-fun m!748697 () Bool)

(assert (=> b!806636 m!748697))

(declare-fun m!748699 () Bool)

(assert (=> b!806636 m!748699))

(assert (=> b!806636 m!748699))

(declare-fun m!748701 () Bool)

(assert (=> b!806636 m!748701))

(assert (=> b!806636 m!748699))

(declare-fun m!748703 () Bool)

(assert (=> b!806636 m!748703))

(declare-fun m!748705 () Bool)

(assert (=> b!806646 m!748705))

(declare-fun m!748707 () Bool)

(assert (=> b!806645 m!748707))

(declare-fun m!748709 () Bool)

(assert (=> start!69200 m!748709))

(declare-fun m!748711 () Bool)

(assert (=> start!69200 m!748711))

(declare-fun m!748713 () Bool)

(assert (=> b!806638 m!748713))

(assert (=> b!806637 m!748699))

(assert (=> b!806637 m!748699))

(declare-fun m!748715 () Bool)

(assert (=> b!806637 m!748715))

(declare-fun m!748717 () Bool)

(assert (=> b!806640 m!748717))

(declare-fun m!748719 () Bool)

(assert (=> b!806642 m!748719))

(declare-fun m!748721 () Bool)

(assert (=> b!806642 m!748721))

(push 1)

