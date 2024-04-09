; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68550 () Bool)

(assert start!68550)

(declare-fun b!796789 () Bool)

(declare-fun e!442112 () Bool)

(declare-fun e!442114 () Bool)

(assert (=> b!796789 (= e!442112 e!442114)))

(declare-fun res!541488 () Bool)

(assert (=> b!796789 (=> (not res!541488) (not e!442114))))

(declare-datatypes ((SeekEntryResult!8320 0))(
  ( (MissingZero!8320 (index!35647 (_ BitVec 32))) (Found!8320 (index!35648 (_ BitVec 32))) (Intermediate!8320 (undefined!9132 Bool) (index!35649 (_ BitVec 32)) (x!66575 (_ BitVec 32))) (Undefined!8320) (MissingVacant!8320 (index!35650 (_ BitVec 32))) )
))
(declare-fun lt!355401 () SeekEntryResult!8320)

(declare-fun lt!355398 () SeekEntryResult!8320)

(assert (=> b!796789 (= res!541488 (= lt!355401 lt!355398))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43291 0))(
  ( (array!43292 (arr!20722 (Array (_ BitVec 32) (_ BitVec 64))) (size!21143 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43291)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43291 (_ BitVec 32)) SeekEntryResult!8320)

(assert (=> b!796789 (= lt!355398 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20722 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43291 (_ BitVec 32)) SeekEntryResult!8320)

(assert (=> b!796789 (= lt!355401 (seekEntryOrOpen!0 (select (arr!20722 a!3170) j!153) a!3170 mask!3266))))

(declare-fun e!442113 () Bool)

(declare-fun lt!355402 () SeekEntryResult!8320)

(declare-fun b!796790 () Bool)

(declare-fun lt!355404 () SeekEntryResult!8320)

(assert (=> b!796790 (= e!442113 (not (or (not (= lt!355402 lt!355404)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(assert (=> b!796790 (= lt!355402 (Found!8320 index!1236))))

(declare-fun b!796791 () Bool)

(assert (=> b!796791 (= e!442114 e!442113)))

(declare-fun res!541478 () Bool)

(assert (=> b!796791 (=> (not res!541478) (not e!442113))))

(assert (=> b!796791 (= res!541478 (and (= lt!355398 lt!355404) (= (select (arr!20722 a!3170) index!1236) (select (arr!20722 a!3170) j!153))))))

(assert (=> b!796791 (= lt!355404 (Found!8320 j!153))))

(declare-fun b!796792 () Bool)

(declare-fun res!541487 () Bool)

(declare-fun e!442110 () Bool)

(assert (=> b!796792 (=> (not res!541487) (not e!442110))))

(declare-datatypes ((List!14738 0))(
  ( (Nil!14735) (Cons!14734 (h!15863 (_ BitVec 64)) (t!21061 List!14738)) )
))
(declare-fun arrayNoDuplicates!0 (array!43291 (_ BitVec 32) List!14738) Bool)

(assert (=> b!796792 (= res!541487 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14735))))

(declare-fun b!796793 () Bool)

(declare-fun res!541486 () Bool)

(assert (=> b!796793 (=> (not res!541486) (not e!442110))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796793 (= res!541486 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21143 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20722 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21143 a!3170)) (= (select (arr!20722 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796794 () Bool)

(declare-fun res!541481 () Bool)

(assert (=> b!796794 (=> (not res!541481) (not e!442110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43291 (_ BitVec 32)) Bool)

(assert (=> b!796794 (= res!541481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796795 () Bool)

(declare-fun e!442111 () Bool)

(assert (=> b!796795 (= e!442111 e!442110)))

(declare-fun res!541485 () Bool)

(assert (=> b!796795 (=> (not res!541485) (not e!442110))))

(declare-fun lt!355405 () SeekEntryResult!8320)

(assert (=> b!796795 (= res!541485 (or (= lt!355405 (MissingZero!8320 i!1163)) (= lt!355405 (MissingVacant!8320 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!796795 (= lt!355405 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!541489 () Bool)

(assert (=> start!68550 (=> (not res!541489) (not e!442111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68550 (= res!541489 (validMask!0 mask!3266))))

(assert (=> start!68550 e!442111))

(assert (=> start!68550 true))

(declare-fun array_inv!16496 (array!43291) Bool)

(assert (=> start!68550 (array_inv!16496 a!3170)))

(declare-fun b!796796 () Bool)

(declare-fun res!541480 () Bool)

(assert (=> b!796796 (=> (not res!541480) (not e!442111))))

(declare-fun arrayContainsKey!0 (array!43291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796796 (= res!541480 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796797 () Bool)

(assert (=> b!796797 (= e!442110 e!442112)))

(declare-fun res!541484 () Bool)

(assert (=> b!796797 (=> (not res!541484) (not e!442112))))

(declare-fun lt!355400 () SeekEntryResult!8320)

(assert (=> b!796797 (= res!541484 (= lt!355400 lt!355402))))

(declare-fun lt!355403 () array!43291)

(declare-fun lt!355399 () (_ BitVec 64))

(assert (=> b!796797 (= lt!355402 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355399 lt!355403 mask!3266))))

(assert (=> b!796797 (= lt!355400 (seekEntryOrOpen!0 lt!355399 lt!355403 mask!3266))))

(assert (=> b!796797 (= lt!355399 (select (store (arr!20722 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796797 (= lt!355403 (array!43292 (store (arr!20722 a!3170) i!1163 k0!2044) (size!21143 a!3170)))))

(declare-fun b!796798 () Bool)

(declare-fun res!541479 () Bool)

(assert (=> b!796798 (=> (not res!541479) (not e!442111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796798 (= res!541479 (validKeyInArray!0 (select (arr!20722 a!3170) j!153)))))

(declare-fun b!796799 () Bool)

(declare-fun res!541483 () Bool)

(assert (=> b!796799 (=> (not res!541483) (not e!442111))))

(assert (=> b!796799 (= res!541483 (validKeyInArray!0 k0!2044))))

(declare-fun b!796800 () Bool)

(declare-fun res!541482 () Bool)

(assert (=> b!796800 (=> (not res!541482) (not e!442111))))

(assert (=> b!796800 (= res!541482 (and (= (size!21143 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21143 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21143 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68550 res!541489) b!796800))

(assert (= (and b!796800 res!541482) b!796798))

(assert (= (and b!796798 res!541479) b!796799))

(assert (= (and b!796799 res!541483) b!796796))

(assert (= (and b!796796 res!541480) b!796795))

(assert (= (and b!796795 res!541485) b!796794))

(assert (= (and b!796794 res!541481) b!796792))

(assert (= (and b!796792 res!541487) b!796793))

(assert (= (and b!796793 res!541486) b!796797))

(assert (= (and b!796797 res!541484) b!796789))

(assert (= (and b!796789 res!541488) b!796791))

(assert (= (and b!796791 res!541478) b!796790))

(declare-fun m!737719 () Bool)

(assert (=> b!796795 m!737719))

(declare-fun m!737721 () Bool)

(assert (=> b!796798 m!737721))

(assert (=> b!796798 m!737721))

(declare-fun m!737723 () Bool)

(assert (=> b!796798 m!737723))

(declare-fun m!737725 () Bool)

(assert (=> b!796797 m!737725))

(declare-fun m!737727 () Bool)

(assert (=> b!796797 m!737727))

(declare-fun m!737729 () Bool)

(assert (=> b!796797 m!737729))

(declare-fun m!737731 () Bool)

(assert (=> b!796797 m!737731))

(declare-fun m!737733 () Bool)

(assert (=> b!796794 m!737733))

(declare-fun m!737735 () Bool)

(assert (=> b!796792 m!737735))

(declare-fun m!737737 () Bool)

(assert (=> b!796796 m!737737))

(declare-fun m!737739 () Bool)

(assert (=> b!796793 m!737739))

(declare-fun m!737741 () Bool)

(assert (=> b!796793 m!737741))

(declare-fun m!737743 () Bool)

(assert (=> b!796791 m!737743))

(assert (=> b!796791 m!737721))

(declare-fun m!737745 () Bool)

(assert (=> b!796799 m!737745))

(assert (=> b!796789 m!737721))

(assert (=> b!796789 m!737721))

(declare-fun m!737747 () Bool)

(assert (=> b!796789 m!737747))

(assert (=> b!796789 m!737721))

(declare-fun m!737749 () Bool)

(assert (=> b!796789 m!737749))

(declare-fun m!737751 () Bool)

(assert (=> start!68550 m!737751))

(declare-fun m!737753 () Bool)

(assert (=> start!68550 m!737753))

(check-sat (not b!796798) (not b!796799) (not b!796794) (not b!796792) (not b!796789) (not b!796796) (not start!68550) (not b!796795) (not b!796797))
(check-sat)
