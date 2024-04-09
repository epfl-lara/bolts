; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64392 () Bool)

(assert start!64392)

(declare-fun b!723815 () Bool)

(declare-fun res!485475 () Bool)

(declare-fun e!405471 () Bool)

(assert (=> b!723815 (=> (not res!485475) (not e!405471))))

(declare-datatypes ((array!40926 0))(
  ( (array!40927 (arr!19582 (Array (_ BitVec 32) (_ BitVec 64))) (size!20003 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40926)

(declare-datatypes ((List!13637 0))(
  ( (Nil!13634) (Cons!13633 (h!14687 (_ BitVec 64)) (t!19960 List!13637)) )
))
(declare-fun arrayNoDuplicates!0 (array!40926 (_ BitVec 32) List!13637) Bool)

(assert (=> b!723815 (= res!485475 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13634))))

(declare-fun b!723816 () Bool)

(declare-fun res!485474 () Bool)

(declare-fun e!405474 () Bool)

(assert (=> b!723816 (=> (not res!485474) (not e!405474))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723816 (= res!485474 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19582 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723817 () Bool)

(declare-fun res!485463 () Bool)

(assert (=> b!723817 (=> (not res!485463) (not e!405471))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40926 (_ BitVec 32)) Bool)

(assert (=> b!723817 (= res!485463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723818 () Bool)

(declare-fun e!405476 () Bool)

(assert (=> b!723818 (= e!405476 (not true))))

(declare-fun e!405473 () Bool)

(assert (=> b!723818 e!405473))

(declare-fun res!485462 () Bool)

(assert (=> b!723818 (=> (not res!485462) (not e!405473))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!723818 (= res!485462 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24696 0))(
  ( (Unit!24697) )
))
(declare-fun lt!320792 () Unit!24696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24696)

(assert (=> b!723818 (= lt!320792 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!723819 () Bool)

(declare-fun e!405477 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7189 0))(
  ( (MissingZero!7189 (index!31123 (_ BitVec 32))) (Found!7189 (index!31124 (_ BitVec 32))) (Intermediate!7189 (undefined!8001 Bool) (index!31125 (_ BitVec 32)) (x!62143 (_ BitVec 32))) (Undefined!7189) (MissingVacant!7189 (index!31126 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40926 (_ BitVec 32)) SeekEntryResult!7189)

(assert (=> b!723819 (= e!405477 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19582 a!3186) j!159) a!3186 mask!3328) (Found!7189 j!159)))))

(declare-fun b!723820 () Bool)

(declare-fun res!485473 () Bool)

(assert (=> b!723820 (=> (not res!485473) (not e!405474))))

(assert (=> b!723820 (= res!485473 e!405477)))

(declare-fun c!79548 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723820 (= c!79548 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723821 () Bool)

(declare-fun res!485472 () Bool)

(declare-fun e!405472 () Bool)

(assert (=> b!723821 (=> (not res!485472) (not e!405472))))

(assert (=> b!723821 (= res!485472 (and (= (size!20003 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20003 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20003 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723822 () Bool)

(declare-fun res!485469 () Bool)

(assert (=> b!723822 (=> (not res!485469) (not e!405472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723822 (= res!485469 (validKeyInArray!0 (select (arr!19582 a!3186) j!159)))))

(declare-fun b!723823 () Bool)

(assert (=> b!723823 (= e!405474 e!405476)))

(declare-fun res!485471 () Bool)

(assert (=> b!723823 (=> (not res!485471) (not e!405476))))

(declare-fun lt!320793 () (_ BitVec 64))

(declare-fun lt!320794 () array!40926)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40926 (_ BitVec 32)) SeekEntryResult!7189)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723823 (= res!485471 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320793 mask!3328) lt!320793 lt!320794 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320793 lt!320794 mask!3328)))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!723823 (= lt!320793 (select (store (arr!19582 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723823 (= lt!320794 (array!40927 (store (arr!19582 a!3186) i!1173 k0!2102) (size!20003 a!3186)))))

(declare-fun b!723825 () Bool)

(assert (=> b!723825 (= e!405472 e!405471)))

(declare-fun res!485466 () Bool)

(assert (=> b!723825 (=> (not res!485466) (not e!405471))))

(declare-fun lt!320791 () SeekEntryResult!7189)

(assert (=> b!723825 (= res!485466 (or (= lt!320791 (MissingZero!7189 i!1173)) (= lt!320791 (MissingVacant!7189 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40926 (_ BitVec 32)) SeekEntryResult!7189)

(assert (=> b!723825 (= lt!320791 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723826 () Bool)

(declare-fun res!485467 () Bool)

(assert (=> b!723826 (=> (not res!485467) (not e!405471))))

(assert (=> b!723826 (= res!485467 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20003 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20003 a!3186))))))

(declare-fun lt!320795 () SeekEntryResult!7189)

(declare-fun b!723827 () Bool)

(assert (=> b!723827 (= e!405477 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19582 a!3186) j!159) a!3186 mask!3328) lt!320795))))

(declare-fun b!723828 () Bool)

(assert (=> b!723828 (= e!405471 e!405474)))

(declare-fun res!485468 () Bool)

(assert (=> b!723828 (=> (not res!485468) (not e!405474))))

(assert (=> b!723828 (= res!485468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19582 a!3186) j!159) mask!3328) (select (arr!19582 a!3186) j!159) a!3186 mask!3328) lt!320795))))

(assert (=> b!723828 (= lt!320795 (Intermediate!7189 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!485465 () Bool)

(assert (=> start!64392 (=> (not res!485465) (not e!405472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64392 (= res!485465 (validMask!0 mask!3328))))

(assert (=> start!64392 e!405472))

(assert (=> start!64392 true))

(declare-fun array_inv!15356 (array!40926) Bool)

(assert (=> start!64392 (array_inv!15356 a!3186)))

(declare-fun b!723824 () Bool)

(declare-fun res!485470 () Bool)

(assert (=> b!723824 (=> (not res!485470) (not e!405472))))

(assert (=> b!723824 (= res!485470 (validKeyInArray!0 k0!2102))))

(declare-fun b!723829 () Bool)

(declare-fun res!485464 () Bool)

(assert (=> b!723829 (=> (not res!485464) (not e!405472))))

(declare-fun arrayContainsKey!0 (array!40926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723829 (= res!485464 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723830 () Bool)

(assert (=> b!723830 (= e!405473 (= (seekEntryOrOpen!0 (select (arr!19582 a!3186) j!159) a!3186 mask!3328) (Found!7189 j!159)))))

(assert (= (and start!64392 res!485465) b!723821))

(assert (= (and b!723821 res!485472) b!723822))

(assert (= (and b!723822 res!485469) b!723824))

(assert (= (and b!723824 res!485470) b!723829))

(assert (= (and b!723829 res!485464) b!723825))

(assert (= (and b!723825 res!485466) b!723817))

(assert (= (and b!723817 res!485463) b!723815))

(assert (= (and b!723815 res!485475) b!723826))

(assert (= (and b!723826 res!485467) b!723828))

(assert (= (and b!723828 res!485468) b!723816))

(assert (= (and b!723816 res!485474) b!723820))

(assert (= (and b!723820 c!79548) b!723827))

(assert (= (and b!723820 (not c!79548)) b!723819))

(assert (= (and b!723820 res!485473) b!723823))

(assert (= (and b!723823 res!485471) b!723818))

(assert (= (and b!723818 res!485462) b!723830))

(declare-fun m!678315 () Bool)

(assert (=> b!723824 m!678315))

(declare-fun m!678317 () Bool)

(assert (=> b!723822 m!678317))

(assert (=> b!723822 m!678317))

(declare-fun m!678319 () Bool)

(assert (=> b!723822 m!678319))

(assert (=> b!723830 m!678317))

(assert (=> b!723830 m!678317))

(declare-fun m!678321 () Bool)

(assert (=> b!723830 m!678321))

(declare-fun m!678323 () Bool)

(assert (=> start!64392 m!678323))

(declare-fun m!678325 () Bool)

(assert (=> start!64392 m!678325))

(assert (=> b!723827 m!678317))

(assert (=> b!723827 m!678317))

(declare-fun m!678327 () Bool)

(assert (=> b!723827 m!678327))

(declare-fun m!678329 () Bool)

(assert (=> b!723816 m!678329))

(assert (=> b!723819 m!678317))

(assert (=> b!723819 m!678317))

(declare-fun m!678331 () Bool)

(assert (=> b!723819 m!678331))

(assert (=> b!723828 m!678317))

(assert (=> b!723828 m!678317))

(declare-fun m!678333 () Bool)

(assert (=> b!723828 m!678333))

(assert (=> b!723828 m!678333))

(assert (=> b!723828 m!678317))

(declare-fun m!678335 () Bool)

(assert (=> b!723828 m!678335))

(declare-fun m!678337 () Bool)

(assert (=> b!723817 m!678337))

(declare-fun m!678339 () Bool)

(assert (=> b!723829 m!678339))

(declare-fun m!678341 () Bool)

(assert (=> b!723815 m!678341))

(declare-fun m!678343 () Bool)

(assert (=> b!723825 m!678343))

(declare-fun m!678345 () Bool)

(assert (=> b!723818 m!678345))

(declare-fun m!678347 () Bool)

(assert (=> b!723818 m!678347))

(declare-fun m!678349 () Bool)

(assert (=> b!723823 m!678349))

(declare-fun m!678351 () Bool)

(assert (=> b!723823 m!678351))

(declare-fun m!678353 () Bool)

(assert (=> b!723823 m!678353))

(assert (=> b!723823 m!678349))

(declare-fun m!678355 () Bool)

(assert (=> b!723823 m!678355))

(declare-fun m!678357 () Bool)

(assert (=> b!723823 m!678357))

(check-sat (not b!723825) (not b!723827) (not b!723817) (not b!723823) (not start!64392) (not b!723830) (not b!723815) (not b!723829) (not b!723818) (not b!723819) (not b!723828) (not b!723824) (not b!723822))
(check-sat)
