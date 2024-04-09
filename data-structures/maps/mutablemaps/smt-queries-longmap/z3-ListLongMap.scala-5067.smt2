; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68934 () Bool)

(assert start!68934)

(declare-fun b!803683 () Bool)

(declare-fun res!548382 () Bool)

(declare-fun e!445333 () Bool)

(assert (=> b!803683 (=> (not res!548382) (not e!445333))))

(declare-datatypes ((array!43675 0))(
  ( (array!43676 (arr!20914 (Array (_ BitVec 32) (_ BitVec 64))) (size!21335 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43675)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803683 (= res!548382 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803684 () Bool)

(declare-fun res!548373 () Bool)

(declare-fun e!445336 () Bool)

(assert (=> b!803684 (=> (not res!548373) (not e!445336))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43675 (_ BitVec 32)) Bool)

(assert (=> b!803684 (= res!548373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!548379 () Bool)

(assert (=> start!68934 (=> (not res!548379) (not e!445333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68934 (= res!548379 (validMask!0 mask!3266))))

(assert (=> start!68934 e!445333))

(assert (=> start!68934 true))

(declare-fun array_inv!16688 (array!43675) Bool)

(assert (=> start!68934 (array_inv!16688 a!3170)))

(declare-fun b!803685 () Bool)

(declare-fun e!445331 () Bool)

(declare-fun e!445332 () Bool)

(assert (=> b!803685 (= e!445331 e!445332)))

(declare-fun res!548383 () Bool)

(assert (=> b!803685 (=> (not res!548383) (not e!445332))))

(declare-datatypes ((SeekEntryResult!8512 0))(
  ( (MissingZero!8512 (index!36415 (_ BitVec 32))) (Found!8512 (index!36416 (_ BitVec 32))) (Intermediate!8512 (undefined!9324 Bool) (index!36417 (_ BitVec 32)) (x!67279 (_ BitVec 32))) (Undefined!8512) (MissingVacant!8512 (index!36418 (_ BitVec 32))) )
))
(declare-fun lt!359854 () SeekEntryResult!8512)

(declare-fun lt!359853 () SeekEntryResult!8512)

(assert (=> b!803685 (= res!548383 (= lt!359854 lt!359853))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43675 (_ BitVec 32)) SeekEntryResult!8512)

(assert (=> b!803685 (= lt!359853 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20914 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43675 (_ BitVec 32)) SeekEntryResult!8512)

(assert (=> b!803685 (= lt!359854 (seekEntryOrOpen!0 (select (arr!20914 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803686 () Bool)

(declare-fun e!445334 () Bool)

(declare-fun lt!359846 () SeekEntryResult!8512)

(declare-fun lt!359848 () SeekEntryResult!8512)

(assert (=> b!803686 (= e!445334 (not (or (not (= lt!359848 lt!359846)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (and (bvsge vacantBefore!23 #b00000000000000000000000000000000) (bvslt vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))))

(declare-fun lt!359847 () (_ BitVec 32))

(declare-fun lt!359845 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359851 () array!43675)

(assert (=> b!803686 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359847 vacantAfter!23 lt!359845 lt!359851 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359847 vacantBefore!23 (select (arr!20914 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((Unit!27566 0))(
  ( (Unit!27567) )
))
(declare-fun lt!359849 () Unit!27566)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27566)

(assert (=> b!803686 (= lt!359849 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359847 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803686 (= lt!359847 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803687 () Bool)

(declare-fun res!548381 () Bool)

(assert (=> b!803687 (=> (not res!548381) (not e!445333))))

(assert (=> b!803687 (= res!548381 (and (= (size!21335 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21335 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21335 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803688 () Bool)

(assert (=> b!803688 (= e!445333 e!445336)))

(declare-fun res!548376 () Bool)

(assert (=> b!803688 (=> (not res!548376) (not e!445336))))

(declare-fun lt!359852 () SeekEntryResult!8512)

(assert (=> b!803688 (= res!548376 (or (= lt!359852 (MissingZero!8512 i!1163)) (= lt!359852 (MissingVacant!8512 i!1163))))))

(assert (=> b!803688 (= lt!359852 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803689 () Bool)

(declare-fun res!548375 () Bool)

(assert (=> b!803689 (=> (not res!548375) (not e!445333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803689 (= res!548375 (validKeyInArray!0 (select (arr!20914 a!3170) j!153)))))

(declare-fun b!803690 () Bool)

(assert (=> b!803690 (= e!445336 e!445331)))

(declare-fun res!548374 () Bool)

(assert (=> b!803690 (=> (not res!548374) (not e!445331))))

(declare-fun lt!359850 () SeekEntryResult!8512)

(assert (=> b!803690 (= res!548374 (= lt!359850 lt!359848))))

(assert (=> b!803690 (= lt!359848 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359845 lt!359851 mask!3266))))

(assert (=> b!803690 (= lt!359850 (seekEntryOrOpen!0 lt!359845 lt!359851 mask!3266))))

(assert (=> b!803690 (= lt!359845 (select (store (arr!20914 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803690 (= lt!359851 (array!43676 (store (arr!20914 a!3170) i!1163 k0!2044) (size!21335 a!3170)))))

(declare-fun b!803691 () Bool)

(declare-fun res!548372 () Bool)

(assert (=> b!803691 (=> (not res!548372) (not e!445336))))

(assert (=> b!803691 (= res!548372 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21335 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20914 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21335 a!3170)) (= (select (arr!20914 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803692 () Bool)

(declare-fun res!548378 () Bool)

(assert (=> b!803692 (=> (not res!548378) (not e!445333))))

(assert (=> b!803692 (= res!548378 (validKeyInArray!0 k0!2044))))

(declare-fun b!803693 () Bool)

(declare-fun res!548380 () Bool)

(assert (=> b!803693 (=> (not res!548380) (not e!445336))))

(declare-datatypes ((List!14930 0))(
  ( (Nil!14927) (Cons!14926 (h!16055 (_ BitVec 64)) (t!21253 List!14930)) )
))
(declare-fun arrayNoDuplicates!0 (array!43675 (_ BitVec 32) List!14930) Bool)

(assert (=> b!803693 (= res!548380 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14927))))

(declare-fun b!803694 () Bool)

(assert (=> b!803694 (= e!445332 e!445334)))

(declare-fun res!548377 () Bool)

(assert (=> b!803694 (=> (not res!548377) (not e!445334))))

(assert (=> b!803694 (= res!548377 (and (= lt!359853 lt!359846) (not (= (select (arr!20914 a!3170) index!1236) (select (arr!20914 a!3170) j!153)))))))

(assert (=> b!803694 (= lt!359846 (Found!8512 j!153))))

(assert (= (and start!68934 res!548379) b!803687))

(assert (= (and b!803687 res!548381) b!803689))

(assert (= (and b!803689 res!548375) b!803692))

(assert (= (and b!803692 res!548378) b!803683))

(assert (= (and b!803683 res!548382) b!803688))

(assert (= (and b!803688 res!548376) b!803684))

(assert (= (and b!803684 res!548373) b!803693))

(assert (= (and b!803693 res!548380) b!803691))

(assert (= (and b!803691 res!548372) b!803690))

(assert (= (and b!803690 res!548374) b!803685))

(assert (= (and b!803685 res!548383) b!803694))

(assert (= (and b!803694 res!548377) b!803686))

(declare-fun m!745617 () Bool)

(assert (=> b!803684 m!745617))

(declare-fun m!745619 () Bool)

(assert (=> b!803690 m!745619))

(declare-fun m!745621 () Bool)

(assert (=> b!803690 m!745621))

(declare-fun m!745623 () Bool)

(assert (=> b!803690 m!745623))

(declare-fun m!745625 () Bool)

(assert (=> b!803690 m!745625))

(declare-fun m!745627 () Bool)

(assert (=> b!803688 m!745627))

(declare-fun m!745629 () Bool)

(assert (=> start!68934 m!745629))

(declare-fun m!745631 () Bool)

(assert (=> start!68934 m!745631))

(declare-fun m!745633 () Bool)

(assert (=> b!803689 m!745633))

(assert (=> b!803689 m!745633))

(declare-fun m!745635 () Bool)

(assert (=> b!803689 m!745635))

(declare-fun m!745637 () Bool)

(assert (=> b!803691 m!745637))

(declare-fun m!745639 () Bool)

(assert (=> b!803691 m!745639))

(declare-fun m!745641 () Bool)

(assert (=> b!803693 m!745641))

(assert (=> b!803686 m!745633))

(assert (=> b!803686 m!745633))

(declare-fun m!745643 () Bool)

(assert (=> b!803686 m!745643))

(declare-fun m!745645 () Bool)

(assert (=> b!803686 m!745645))

(declare-fun m!745647 () Bool)

(assert (=> b!803686 m!745647))

(declare-fun m!745649 () Bool)

(assert (=> b!803686 m!745649))

(declare-fun m!745651 () Bool)

(assert (=> b!803694 m!745651))

(assert (=> b!803694 m!745633))

(assert (=> b!803685 m!745633))

(assert (=> b!803685 m!745633))

(declare-fun m!745653 () Bool)

(assert (=> b!803685 m!745653))

(assert (=> b!803685 m!745633))

(declare-fun m!745655 () Bool)

(assert (=> b!803685 m!745655))

(declare-fun m!745657 () Bool)

(assert (=> b!803692 m!745657))

(declare-fun m!745659 () Bool)

(assert (=> b!803683 m!745659))

(check-sat (not b!803683) (not b!803684) (not b!803692) (not start!68934) (not b!803685) (not b!803689) (not b!803688) (not b!803686) (not b!803690) (not b!803693))
(check-sat)
