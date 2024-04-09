; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28260 () Bool)

(assert start!28260)

(declare-fun b!289313 () Bool)

(declare-fun res!150978 () Bool)

(declare-fun e!183184 () Bool)

(assert (=> b!289313 (=> (not res!150978) (not e!183184))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14563 0))(
  ( (array!14564 (arr!6908 (Array (_ BitVec 32) (_ BitVec 64))) (size!7260 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14563)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289313 (= res!150978 (and (= (size!7260 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7260 a!3312))))))

(declare-fun res!150976 () Bool)

(assert (=> start!28260 (=> (not res!150976) (not e!183184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28260 (= res!150976 (validMask!0 mask!3809))))

(assert (=> start!28260 e!183184))

(assert (=> start!28260 true))

(declare-fun array_inv!4862 (array!14563) Bool)

(assert (=> start!28260 (array_inv!4862 a!3312)))

(declare-fun b!289314 () Bool)

(declare-fun res!150980 () Bool)

(assert (=> b!289314 (=> (not res!150980) (not e!183184))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289314 (= res!150980 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289315 () Bool)

(declare-fun e!183181 () Bool)

(assert (=> b!289315 (= e!183184 e!183181)))

(declare-fun res!150974 () Bool)

(assert (=> b!289315 (=> (not res!150974) (not e!183181))))

(declare-fun lt!142792 () Bool)

(declare-datatypes ((SeekEntryResult!2068 0))(
  ( (MissingZero!2068 (index!10442 (_ BitVec 32))) (Found!2068 (index!10443 (_ BitVec 32))) (Intermediate!2068 (undefined!2880 Bool) (index!10444 (_ BitVec 32)) (x!28617 (_ BitVec 32))) (Undefined!2068) (MissingVacant!2068 (index!10445 (_ BitVec 32))) )
))
(declare-fun lt!142794 () SeekEntryResult!2068)

(assert (=> b!289315 (= res!150974 (or lt!142792 (= lt!142794 (MissingVacant!2068 i!1256))))))

(assert (=> b!289315 (= lt!142792 (= lt!142794 (MissingZero!2068 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14563 (_ BitVec 32)) SeekEntryResult!2068)

(assert (=> b!289315 (= lt!142794 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289316 () Bool)

(declare-fun e!183180 () Bool)

(assert (=> b!289316 (= e!183180 (not true))))

(declare-fun lt!142791 () SeekEntryResult!2068)

(assert (=> b!289316 (and (= (select (arr!6908 a!3312) (index!10444 lt!142791)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10444 lt!142791) i!1256))))

(declare-fun b!289317 () Bool)

(declare-fun res!150977 () Bool)

(assert (=> b!289317 (=> (not res!150977) (not e!183184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289317 (= res!150977 (validKeyInArray!0 k0!2524))))

(declare-fun b!289318 () Bool)

(declare-fun e!183182 () Bool)

(assert (=> b!289318 (= e!183181 e!183182)))

(declare-fun res!150975 () Bool)

(assert (=> b!289318 (=> (not res!150975) (not e!183182))))

(assert (=> b!289318 (= res!150975 lt!142792)))

(declare-fun lt!142796 () SeekEntryResult!2068)

(declare-fun lt!142795 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14563 (_ BitVec 32)) SeekEntryResult!2068)

(assert (=> b!289318 (= lt!142796 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142795 k0!2524 (array!14564 (store (arr!6908 a!3312) i!1256 k0!2524) (size!7260 a!3312)) mask!3809))))

(assert (=> b!289318 (= lt!142791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142795 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289318 (= lt!142795 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289319 () Bool)

(declare-fun res!150979 () Bool)

(assert (=> b!289319 (=> (not res!150979) (not e!183181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14563 (_ BitVec 32)) Bool)

(assert (=> b!289319 (= res!150979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289320 () Bool)

(assert (=> b!289320 (= e!183182 e!183180)))

(declare-fun res!150981 () Bool)

(assert (=> b!289320 (=> (not res!150981) (not e!183180))))

(declare-fun lt!142793 () Bool)

(assert (=> b!289320 (= res!150981 (and (or lt!142793 (not (undefined!2880 lt!142791))) (or lt!142793 (not (= (select (arr!6908 a!3312) (index!10444 lt!142791)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142793 (not (= (select (arr!6908 a!3312) (index!10444 lt!142791)) k0!2524))) (not lt!142793)))))

(get-info :version)

(assert (=> b!289320 (= lt!142793 (not ((_ is Intermediate!2068) lt!142791)))))

(assert (= (and start!28260 res!150976) b!289313))

(assert (= (and b!289313 res!150978) b!289317))

(assert (= (and b!289317 res!150977) b!289314))

(assert (= (and b!289314 res!150980) b!289315))

(assert (= (and b!289315 res!150974) b!289319))

(assert (= (and b!289319 res!150979) b!289318))

(assert (= (and b!289318 res!150975) b!289320))

(assert (= (and b!289320 res!150981) b!289316))

(declare-fun m!303509 () Bool)

(assert (=> b!289320 m!303509))

(assert (=> b!289316 m!303509))

(declare-fun m!303511 () Bool)

(assert (=> b!289315 m!303511))

(declare-fun m!303513 () Bool)

(assert (=> start!28260 m!303513))

(declare-fun m!303515 () Bool)

(assert (=> start!28260 m!303515))

(declare-fun m!303517 () Bool)

(assert (=> b!289318 m!303517))

(declare-fun m!303519 () Bool)

(assert (=> b!289318 m!303519))

(declare-fun m!303521 () Bool)

(assert (=> b!289318 m!303521))

(declare-fun m!303523 () Bool)

(assert (=> b!289318 m!303523))

(declare-fun m!303525 () Bool)

(assert (=> b!289319 m!303525))

(declare-fun m!303527 () Bool)

(assert (=> b!289317 m!303527))

(declare-fun m!303529 () Bool)

(assert (=> b!289314 m!303529))

(check-sat (not b!289315) (not b!289319) (not b!289317) (not b!289318) (not b!289314) (not start!28260))
(check-sat)
