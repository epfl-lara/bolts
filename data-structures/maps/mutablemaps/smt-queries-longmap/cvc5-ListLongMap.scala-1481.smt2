; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28282 () Bool)

(assert start!28282)

(declare-fun b!289664 () Bool)

(declare-fun res!151214 () Bool)

(declare-fun e!183374 () Bool)

(assert (=> b!289664 (=> (not res!151214) (not e!183374))))

(declare-datatypes ((array!14585 0))(
  ( (array!14586 (arr!6919 (Array (_ BitVec 32) (_ BitVec 64))) (size!7271 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14585)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14585 (_ BitVec 32)) Bool)

(assert (=> b!289664 (= res!151214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289665 () Bool)

(declare-datatypes ((Unit!9118 0))(
  ( (Unit!9119) )
))
(declare-fun e!183376 () Unit!9118)

(declare-fun e!183379 () Unit!9118)

(assert (=> b!289665 (= e!183376 e!183379)))

(declare-fun c!46790 () Bool)

(declare-datatypes ((SeekEntryResult!2079 0))(
  ( (MissingZero!2079 (index!10486 (_ BitVec 32))) (Found!2079 (index!10487 (_ BitVec 32))) (Intermediate!2079 (undefined!2891 Bool) (index!10488 (_ BitVec 32)) (x!28660 (_ BitVec 32))) (Undefined!2079) (MissingVacant!2079 (index!10489 (_ BitVec 32))) )
))
(declare-fun lt!143020 () SeekEntryResult!2079)

(assert (=> b!289665 (= c!46790 (is-Intermediate!2079 lt!143020))))

(declare-fun b!289666 () Bool)

(declare-fun e!183377 () Bool)

(assert (=> b!289666 (= e!183374 e!183377)))

(declare-fun res!151215 () Bool)

(assert (=> b!289666 (=> (not res!151215) (not e!183377))))

(declare-fun lt!143018 () Bool)

(assert (=> b!289666 (= res!151215 lt!143018)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!143023 () SeekEntryResult!2079)

(declare-fun lt!143019 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14585 (_ BitVec 32)) SeekEntryResult!2079)

(assert (=> b!289666 (= lt!143023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143019 k!2524 (array!14586 (store (arr!6919 a!3312) i!1256 k!2524) (size!7271 a!3312)) mask!3809))))

(assert (=> b!289666 (= lt!143020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143019 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289666 (= lt!143019 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289667 () Bool)

(declare-fun Unit!9120 () Unit!9118)

(assert (=> b!289667 (= e!183376 Unit!9120)))

(assert (=> b!289667 false))

(declare-fun b!289668 () Bool)

(assert (=> b!289668 false))

(declare-fun Unit!9121 () Unit!9118)

(assert (=> b!289668 (= e!183379 Unit!9121)))

(declare-fun b!289669 () Bool)

(assert (=> b!289669 (and (= lt!143023 lt!143020) (= (select (store (arr!6919 a!3312) i!1256 k!2524) (index!10488 lt!143020)) k!2524))))

(declare-fun lt!143024 () Unit!9118)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14585 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9118)

(assert (=> b!289669 (= lt!143024 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!143019 (index!10488 lt!143020) (x!28660 lt!143020) mask!3809))))

(assert (=> b!289669 (and (= (select (arr!6919 a!3312) (index!10488 lt!143020)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10488 lt!143020) i!1256))))

(declare-fun Unit!9122 () Unit!9118)

(assert (=> b!289669 (= e!183379 Unit!9122)))

(declare-fun res!151212 () Bool)

(declare-fun e!183378 () Bool)

(assert (=> start!28282 (=> (not res!151212) (not e!183378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28282 (= res!151212 (validMask!0 mask!3809))))

(assert (=> start!28282 e!183378))

(assert (=> start!28282 true))

(declare-fun array_inv!4873 (array!14585) Bool)

(assert (=> start!28282 (array_inv!4873 a!3312)))

(declare-fun b!289670 () Bool)

(assert (=> b!289670 (= e!183378 e!183374)))

(declare-fun res!151209 () Bool)

(assert (=> b!289670 (=> (not res!151209) (not e!183374))))

(declare-fun lt!143022 () SeekEntryResult!2079)

(assert (=> b!289670 (= res!151209 (or lt!143018 (= lt!143022 (MissingVacant!2079 i!1256))))))

(assert (=> b!289670 (= lt!143018 (= lt!143022 (MissingZero!2079 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14585 (_ BitVec 32)) SeekEntryResult!2079)

(assert (=> b!289670 (= lt!143022 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289671 () Bool)

(declare-fun res!151210 () Bool)

(assert (=> b!289671 (=> (not res!151210) (not e!183378))))

(declare-fun arrayContainsKey!0 (array!14585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289671 (= res!151210 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289672 () Bool)

(assert (=> b!289672 (= e!183377 false)))

(declare-fun lt!143021 () Unit!9118)

(assert (=> b!289672 (= lt!143021 e!183376)))

(declare-fun c!46789 () Bool)

(assert (=> b!289672 (= c!46789 (or (and (is-Intermediate!2079 lt!143020) (undefined!2891 lt!143020)) (and (is-Intermediate!2079 lt!143020) (= (select (arr!6919 a!3312) (index!10488 lt!143020)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2079 lt!143020) (= (select (arr!6919 a!3312) (index!10488 lt!143020)) k!2524))))))

(declare-fun b!289673 () Bool)

(declare-fun res!151213 () Bool)

(assert (=> b!289673 (=> (not res!151213) (not e!183378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289673 (= res!151213 (validKeyInArray!0 k!2524))))

(declare-fun b!289674 () Bool)

(declare-fun res!151211 () Bool)

(assert (=> b!289674 (=> (not res!151211) (not e!183378))))

(assert (=> b!289674 (= res!151211 (and (= (size!7271 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7271 a!3312))))))

(assert (= (and start!28282 res!151212) b!289674))

(assert (= (and b!289674 res!151211) b!289673))

(assert (= (and b!289673 res!151213) b!289671))

(assert (= (and b!289671 res!151210) b!289670))

(assert (= (and b!289670 res!151209) b!289664))

(assert (= (and b!289664 res!151214) b!289666))

(assert (= (and b!289666 res!151215) b!289672))

(assert (= (and b!289672 c!46789) b!289667))

(assert (= (and b!289672 (not c!46789)) b!289665))

(assert (= (and b!289665 c!46790) b!289669))

(assert (= (and b!289665 (not c!46790)) b!289668))

(declare-fun m!303787 () Bool)

(assert (=> b!289673 m!303787))

(declare-fun m!303789 () Bool)

(assert (=> b!289671 m!303789))

(declare-fun m!303791 () Bool)

(assert (=> b!289666 m!303791))

(declare-fun m!303793 () Bool)

(assert (=> b!289666 m!303793))

(declare-fun m!303795 () Bool)

(assert (=> b!289666 m!303795))

(declare-fun m!303797 () Bool)

(assert (=> b!289666 m!303797))

(declare-fun m!303799 () Bool)

(assert (=> b!289664 m!303799))

(assert (=> b!289669 m!303791))

(declare-fun m!303801 () Bool)

(assert (=> b!289669 m!303801))

(declare-fun m!303803 () Bool)

(assert (=> b!289669 m!303803))

(declare-fun m!303805 () Bool)

(assert (=> b!289669 m!303805))

(declare-fun m!303807 () Bool)

(assert (=> start!28282 m!303807))

(declare-fun m!303809 () Bool)

(assert (=> start!28282 m!303809))

(assert (=> b!289672 m!303805))

(declare-fun m!303811 () Bool)

(assert (=> b!289670 m!303811))

(push 1)

