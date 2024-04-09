; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29162 () Bool)

(assert start!29162)

(declare-fun b!295727 () Bool)

(declare-fun res!155652 () Bool)

(declare-fun e!186929 () Bool)

(assert (=> b!295727 (=> (not res!155652) (not e!186929))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14962 0))(
  ( (array!14963 (arr!7091 (Array (_ BitVec 32) (_ BitVec 64))) (size!7443 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14962)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295727 (= res!155652 (and (= (size!7443 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7443 a!3312))))))

(declare-fun b!295728 () Bool)

(declare-fun res!155653 () Bool)

(assert (=> b!295728 (=> (not res!155653) (not e!186929))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295728 (= res!155653 (validKeyInArray!0 k0!2524))))

(declare-fun b!295729 () Bool)

(declare-fun e!186928 () Bool)

(assert (=> b!295729 (= e!186928 (not true))))

(declare-datatypes ((SeekEntryResult!2251 0))(
  ( (MissingZero!2251 (index!11174 (_ BitVec 32))) (Found!2251 (index!11175 (_ BitVec 32))) (Intermediate!2251 (undefined!3063 Bool) (index!11176 (_ BitVec 32)) (x!29356 (_ BitVec 32))) (Undefined!2251) (MissingVacant!2251 (index!11177 (_ BitVec 32))) )
))
(declare-fun lt!146775 () SeekEntryResult!2251)

(assert (=> b!295729 (and (= (select (arr!7091 a!3312) (index!11176 lt!146775)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11176 lt!146775) i!1256))))

(declare-fun b!295730 () Bool)

(declare-fun e!186927 () Bool)

(assert (=> b!295730 (= e!186929 e!186927)))

(declare-fun res!155654 () Bool)

(assert (=> b!295730 (=> (not res!155654) (not e!186927))))

(declare-fun lt!146777 () SeekEntryResult!2251)

(declare-fun lt!146772 () Bool)

(assert (=> b!295730 (= res!155654 (or lt!146772 (= lt!146777 (MissingVacant!2251 i!1256))))))

(assert (=> b!295730 (= lt!146772 (= lt!146777 (MissingZero!2251 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14962 (_ BitVec 32)) SeekEntryResult!2251)

(assert (=> b!295730 (= lt!146777 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295731 () Bool)

(declare-fun res!155651 () Bool)

(assert (=> b!295731 (=> (not res!155651) (not e!186927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14962 (_ BitVec 32)) Bool)

(assert (=> b!295731 (= res!155651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155648 () Bool)

(assert (=> start!29162 (=> (not res!155648) (not e!186929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29162 (= res!155648 (validMask!0 mask!3809))))

(assert (=> start!29162 e!186929))

(assert (=> start!29162 true))

(declare-fun array_inv!5045 (array!14962) Bool)

(assert (=> start!29162 (array_inv!5045 a!3312)))

(declare-fun b!295726 () Bool)

(declare-fun e!186926 () Bool)

(assert (=> b!295726 (= e!186927 e!186926)))

(declare-fun res!155649 () Bool)

(assert (=> b!295726 (=> (not res!155649) (not e!186926))))

(assert (=> b!295726 (= res!155649 lt!146772)))

(declare-fun lt!146773 () (_ BitVec 32))

(declare-fun lt!146774 () SeekEntryResult!2251)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14962 (_ BitVec 32)) SeekEntryResult!2251)

(assert (=> b!295726 (= lt!146774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146773 k0!2524 (array!14963 (store (arr!7091 a!3312) i!1256 k0!2524) (size!7443 a!3312)) mask!3809))))

(assert (=> b!295726 (= lt!146775 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146773 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295726 (= lt!146773 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!295732 () Bool)

(assert (=> b!295732 (= e!186926 e!186928)))

(declare-fun res!155655 () Bool)

(assert (=> b!295732 (=> (not res!155655) (not e!186928))))

(declare-fun lt!146776 () Bool)

(assert (=> b!295732 (= res!155655 (and (or lt!146776 (not (undefined!3063 lt!146775))) (or lt!146776 (not (= (select (arr!7091 a!3312) (index!11176 lt!146775)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146776 (not (= (select (arr!7091 a!3312) (index!11176 lt!146775)) k0!2524))) (not lt!146776)))))

(get-info :version)

(assert (=> b!295732 (= lt!146776 (not ((_ is Intermediate!2251) lt!146775)))))

(declare-fun b!295733 () Bool)

(declare-fun res!155650 () Bool)

(assert (=> b!295733 (=> (not res!155650) (not e!186929))))

(declare-fun arrayContainsKey!0 (array!14962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295733 (= res!155650 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29162 res!155648) b!295727))

(assert (= (and b!295727 res!155652) b!295728))

(assert (= (and b!295728 res!155653) b!295733))

(assert (= (and b!295733 res!155650) b!295730))

(assert (= (and b!295730 res!155654) b!295731))

(assert (= (and b!295731 res!155651) b!295726))

(assert (= (and b!295726 res!155649) b!295732))

(assert (= (and b!295732 res!155655) b!295729))

(declare-fun m!308835 () Bool)

(assert (=> b!295732 m!308835))

(declare-fun m!308837 () Bool)

(assert (=> b!295730 m!308837))

(assert (=> b!295729 m!308835))

(declare-fun m!308839 () Bool)

(assert (=> b!295733 m!308839))

(declare-fun m!308841 () Bool)

(assert (=> b!295726 m!308841))

(declare-fun m!308843 () Bool)

(assert (=> b!295726 m!308843))

(declare-fun m!308845 () Bool)

(assert (=> b!295726 m!308845))

(declare-fun m!308847 () Bool)

(assert (=> b!295726 m!308847))

(declare-fun m!308849 () Bool)

(assert (=> b!295728 m!308849))

(declare-fun m!308851 () Bool)

(assert (=> b!295731 m!308851))

(declare-fun m!308853 () Bool)

(assert (=> start!29162 m!308853))

(declare-fun m!308855 () Bool)

(assert (=> start!29162 m!308855))

(check-sat (not b!295728) (not b!295730) (not b!295731) (not start!29162) (not b!295733) (not b!295726))
(check-sat)
