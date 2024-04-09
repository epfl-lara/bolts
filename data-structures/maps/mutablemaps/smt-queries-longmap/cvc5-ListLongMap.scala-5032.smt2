; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68722 () Bool)

(assert start!68722)

(declare-fun b!799851 () Bool)

(declare-fun e!443532 () Bool)

(declare-fun e!443531 () Bool)

(assert (=> b!799851 (= e!443532 e!443531)))

(declare-fun res!544552 () Bool)

(assert (=> b!799851 (=> (not res!544552) (not e!443531))))

(declare-datatypes ((array!43463 0))(
  ( (array!43464 (arr!20808 (Array (_ BitVec 32) (_ BitVec 64))) (size!21229 (_ BitVec 32))) )
))
(declare-fun lt!357294 () array!43463)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!357295 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8406 0))(
  ( (MissingZero!8406 (index!35991 (_ BitVec 32))) (Found!8406 (index!35992 (_ BitVec 32))) (Intermediate!8406 (undefined!9218 Bool) (index!35993 (_ BitVec 32)) (x!66893 (_ BitVec 32))) (Undefined!8406) (MissingVacant!8406 (index!35994 (_ BitVec 32))) )
))
(declare-fun lt!357296 () SeekEntryResult!8406)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43463 (_ BitVec 32)) SeekEntryResult!8406)

(assert (=> b!799851 (= res!544552 (= lt!357296 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357295 lt!357294 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43463 (_ BitVec 32)) SeekEntryResult!8406)

(assert (=> b!799851 (= lt!357296 (seekEntryOrOpen!0 lt!357295 lt!357294 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43463)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799851 (= lt!357295 (select (store (arr!20808 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799851 (= lt!357294 (array!43464 (store (arr!20808 a!3170) i!1163 k!2044) (size!21229 a!3170)))))

(declare-fun b!799852 () Bool)

(declare-fun res!544540 () Bool)

(declare-fun e!443534 () Bool)

(assert (=> b!799852 (=> (not res!544540) (not e!443534))))

(declare-fun arrayContainsKey!0 (array!43463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799852 (= res!544540 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799853 () Bool)

(declare-fun res!544550 () Bool)

(assert (=> b!799853 (=> (not res!544550) (not e!443534))))

(assert (=> b!799853 (= res!544550 (and (= (size!21229 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21229 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21229 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799854 () Bool)

(declare-fun res!544546 () Bool)

(assert (=> b!799854 (=> (not res!544546) (not e!443534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799854 (= res!544546 (validKeyInArray!0 k!2044))))

(declare-fun b!799855 () Bool)

(declare-fun res!544544 () Bool)

(assert (=> b!799855 (=> (not res!544544) (not e!443532))))

(declare-datatypes ((List!14824 0))(
  ( (Nil!14821) (Cons!14820 (h!15949 (_ BitVec 64)) (t!21147 List!14824)) )
))
(declare-fun arrayNoDuplicates!0 (array!43463 (_ BitVec 32) List!14824) Bool)

(assert (=> b!799855 (= res!544544 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14821))))

(declare-fun b!799856 () Bool)

(assert (=> b!799856 (= e!443534 e!443532)))

(declare-fun res!544547 () Bool)

(assert (=> b!799856 (=> (not res!544547) (not e!443532))))

(declare-fun lt!357297 () SeekEntryResult!8406)

(assert (=> b!799856 (= res!544547 (or (= lt!357297 (MissingZero!8406 i!1163)) (= lt!357297 (MissingVacant!8406 i!1163))))))

(assert (=> b!799856 (= lt!357297 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799857 () Bool)

(declare-fun res!544549 () Bool)

(assert (=> b!799857 (=> (not res!544549) (not e!443532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43463 (_ BitVec 32)) Bool)

(assert (=> b!799857 (= res!544549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799858 () Bool)

(declare-fun res!544545 () Bool)

(assert (=> b!799858 (=> (not res!544545) (not e!443532))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799858 (= res!544545 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21229 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20808 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21229 a!3170)) (= (select (arr!20808 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!544548 () Bool)

(assert (=> start!68722 (=> (not res!544548) (not e!443534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68722 (= res!544548 (validMask!0 mask!3266))))

(assert (=> start!68722 e!443534))

(assert (=> start!68722 true))

(declare-fun array_inv!16582 (array!43463) Bool)

(assert (=> start!68722 (array_inv!16582 a!3170)))

(declare-fun b!799859 () Bool)

(declare-fun res!544543 () Bool)

(assert (=> b!799859 (=> (not res!544543) (not e!443534))))

(assert (=> b!799859 (= res!544543 (validKeyInArray!0 (select (arr!20808 a!3170) j!153)))))

(declare-fun b!799860 () Bool)

(declare-fun e!443533 () Bool)

(assert (=> b!799860 (= e!443533 false)))

(declare-fun lt!357292 () (_ BitVec 32))

(declare-fun lt!357293 () SeekEntryResult!8406)

(assert (=> b!799860 (= lt!357293 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357292 vacantBefore!23 (select (arr!20808 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799861 () Bool)

(declare-fun res!544551 () Bool)

(assert (=> b!799861 (=> (not res!544551) (not e!443533))))

(assert (=> b!799861 (= res!544551 (= lt!357296 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357292 vacantAfter!23 lt!357295 lt!357294 mask!3266)))))

(declare-fun b!799862 () Bool)

(declare-fun e!443536 () Bool)

(assert (=> b!799862 (= e!443531 e!443536)))

(declare-fun res!544542 () Bool)

(assert (=> b!799862 (=> (not res!544542) (not e!443536))))

(declare-fun lt!357298 () SeekEntryResult!8406)

(declare-fun lt!357291 () SeekEntryResult!8406)

(assert (=> b!799862 (= res!544542 (and (= lt!357298 lt!357291) (= lt!357291 (Found!8406 j!153)) (not (= (select (arr!20808 a!3170) index!1236) (select (arr!20808 a!3170) j!153)))))))

(assert (=> b!799862 (= lt!357291 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20808 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799862 (= lt!357298 (seekEntryOrOpen!0 (select (arr!20808 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799863 () Bool)

(assert (=> b!799863 (= e!443536 e!443533)))

(declare-fun res!544541 () Bool)

(assert (=> b!799863 (=> (not res!544541) (not e!443533))))

(assert (=> b!799863 (= res!544541 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357292 #b00000000000000000000000000000000) (bvslt lt!357292 (size!21229 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799863 (= lt!357292 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68722 res!544548) b!799853))

(assert (= (and b!799853 res!544550) b!799859))

(assert (= (and b!799859 res!544543) b!799854))

(assert (= (and b!799854 res!544546) b!799852))

(assert (= (and b!799852 res!544540) b!799856))

(assert (= (and b!799856 res!544547) b!799857))

(assert (= (and b!799857 res!544549) b!799855))

(assert (= (and b!799855 res!544544) b!799858))

(assert (= (and b!799858 res!544545) b!799851))

(assert (= (and b!799851 res!544552) b!799862))

(assert (= (and b!799862 res!544542) b!799863))

(assert (= (and b!799863 res!544541) b!799861))

(assert (= (and b!799861 res!544551) b!799860))

(declare-fun m!741001 () Bool)

(assert (=> b!799857 m!741001))

(declare-fun m!741003 () Bool)

(assert (=> b!799860 m!741003))

(assert (=> b!799860 m!741003))

(declare-fun m!741005 () Bool)

(assert (=> b!799860 m!741005))

(declare-fun m!741007 () Bool)

(assert (=> b!799852 m!741007))

(declare-fun m!741009 () Bool)

(assert (=> start!68722 m!741009))

(declare-fun m!741011 () Bool)

(assert (=> start!68722 m!741011))

(declare-fun m!741013 () Bool)

(assert (=> b!799862 m!741013))

(assert (=> b!799862 m!741003))

(assert (=> b!799862 m!741003))

(declare-fun m!741015 () Bool)

(assert (=> b!799862 m!741015))

(assert (=> b!799862 m!741003))

(declare-fun m!741017 () Bool)

(assert (=> b!799862 m!741017))

(declare-fun m!741019 () Bool)

(assert (=> b!799858 m!741019))

(declare-fun m!741021 () Bool)

(assert (=> b!799858 m!741021))

(declare-fun m!741023 () Bool)

(assert (=> b!799856 m!741023))

(declare-fun m!741025 () Bool)

(assert (=> b!799861 m!741025))

(declare-fun m!741027 () Bool)

(assert (=> b!799855 m!741027))

(declare-fun m!741029 () Bool)

(assert (=> b!799863 m!741029))

(assert (=> b!799859 m!741003))

(assert (=> b!799859 m!741003))

(declare-fun m!741031 () Bool)

(assert (=> b!799859 m!741031))

(declare-fun m!741033 () Bool)

(assert (=> b!799851 m!741033))

(declare-fun m!741035 () Bool)

(assert (=> b!799851 m!741035))

(declare-fun m!741037 () Bool)

(assert (=> b!799851 m!741037))

(declare-fun m!741039 () Bool)

(assert (=> b!799851 m!741039))

(declare-fun m!741041 () Bool)

(assert (=> b!799854 m!741041))

(push 1)

