; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65130 () Bool)

(assert start!65130)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41256 0))(
  ( (array!41257 (arr!19738 (Array (_ BitVec 32) (_ BitVec 64))) (size!20159 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41256)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7345 0))(
  ( (MissingZero!7345 (index!31747 (_ BitVec 32))) (Found!7345 (index!31748 (_ BitVec 32))) (Intermediate!7345 (undefined!8157 Bool) (index!31749 (_ BitVec 32)) (x!62784 (_ BitVec 32))) (Undefined!7345) (MissingVacant!7345 (index!31750 (_ BitVec 32))) )
))
(declare-fun lt!325666 () SeekEntryResult!7345)

(declare-fun b!734748 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!411138 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41256 (_ BitVec 32)) SeekEntryResult!7345)

(assert (=> b!734748 (= e!411138 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19738 a!3186) j!159) a!3186 mask!3328) lt!325666))))

(declare-fun b!734749 () Bool)

(declare-fun e!411140 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325664 () SeekEntryResult!7345)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41256 (_ BitVec 32)) SeekEntryResult!7345)

(assert (=> b!734749 (= e!411140 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19738 a!3186) j!159) a!3186 mask!3328) lt!325664))))

(declare-fun b!734750 () Bool)

(declare-fun e!411146 () Bool)

(declare-fun e!411145 () Bool)

(assert (=> b!734750 (= e!411146 e!411145)))

(declare-fun res!493743 () Bool)

(assert (=> b!734750 (=> res!493743 e!411145)))

(assert (=> b!734750 (= res!493743 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325668 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734750 (= lt!325668 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734751 () Bool)

(declare-fun res!493733 () Bool)

(declare-fun e!411139 () Bool)

(assert (=> b!734751 (=> (not res!493733) (not e!411139))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!734751 (= res!493733 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19738 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734752 () Bool)

(assert (=> b!734752 (= e!411140 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19738 a!3186) j!159) a!3186 mask!3328) (Found!7345 j!159)))))

(declare-fun b!734753 () Bool)

(declare-fun res!493739 () Bool)

(declare-fun e!411144 () Bool)

(assert (=> b!734753 (=> (not res!493739) (not e!411144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734753 (= res!493739 (validKeyInArray!0 (select (arr!19738 a!3186) j!159)))))

(declare-fun b!734754 () Bool)

(declare-fun res!493740 () Bool)

(assert (=> b!734754 (=> (not res!493740) (not e!411139))))

(assert (=> b!734754 (= res!493740 e!411140)))

(declare-fun c!80889 () Bool)

(assert (=> b!734754 (= c!80889 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734755 () Bool)

(declare-fun e!411141 () Bool)

(assert (=> b!734755 (= e!411144 e!411141)))

(declare-fun res!493742 () Bool)

(assert (=> b!734755 (=> (not res!493742) (not e!411141))))

(declare-fun lt!325669 () SeekEntryResult!7345)

(assert (=> b!734755 (= res!493742 (or (= lt!325669 (MissingZero!7345 i!1173)) (= lt!325669 (MissingVacant!7345 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41256 (_ BitVec 32)) SeekEntryResult!7345)

(assert (=> b!734755 (= lt!325669 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!734756 () Bool)

(declare-fun res!493731 () Bool)

(assert (=> b!734756 (=> (not res!493731) (not e!411144))))

(assert (=> b!734756 (= res!493731 (and (= (size!20159 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20159 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20159 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734757 () Bool)

(declare-fun e!411147 () Bool)

(assert (=> b!734757 (= e!411147 (not e!411146))))

(declare-fun res!493734 () Bool)

(assert (=> b!734757 (=> res!493734 e!411146)))

(declare-fun lt!325667 () SeekEntryResult!7345)

(get-info :version)

(assert (=> b!734757 (= res!493734 (or (not ((_ is Intermediate!7345) lt!325667)) (bvsge x!1131 (x!62784 lt!325667))))))

(declare-fun e!411143 () Bool)

(assert (=> b!734757 e!411143))

(declare-fun res!493741 () Bool)

(assert (=> b!734757 (=> (not res!493741) (not e!411143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41256 (_ BitVec 32)) Bool)

(assert (=> b!734757 (= res!493741 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25008 0))(
  ( (Unit!25009) )
))
(declare-fun lt!325661 () Unit!25008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25008)

(assert (=> b!734757 (= lt!325661 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734758 () Bool)

(assert (=> b!734758 (= e!411139 e!411147)))

(declare-fun res!493737 () Bool)

(assert (=> b!734758 (=> (not res!493737) (not e!411147))))

(declare-fun lt!325665 () SeekEntryResult!7345)

(assert (=> b!734758 (= res!493737 (= lt!325665 lt!325667))))

(declare-fun lt!325670 () array!41256)

(declare-fun lt!325663 () (_ BitVec 64))

(assert (=> b!734758 (= lt!325667 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325663 lt!325670 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734758 (= lt!325665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325663 mask!3328) lt!325663 lt!325670 mask!3328))))

(assert (=> b!734758 (= lt!325663 (select (store (arr!19738 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!734758 (= lt!325670 (array!41257 (store (arr!19738 a!3186) i!1173 k0!2102) (size!20159 a!3186)))))

(declare-fun b!734759 () Bool)

(assert (=> b!734759 (= e!411143 e!411138)))

(declare-fun res!493735 () Bool)

(assert (=> b!734759 (=> (not res!493735) (not e!411138))))

(assert (=> b!734759 (= res!493735 (= (seekEntryOrOpen!0 (select (arr!19738 a!3186) j!159) a!3186 mask!3328) lt!325666))))

(assert (=> b!734759 (= lt!325666 (Found!7345 j!159))))

(declare-fun res!493730 () Bool)

(assert (=> start!65130 (=> (not res!493730) (not e!411144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65130 (= res!493730 (validMask!0 mask!3328))))

(assert (=> start!65130 e!411144))

(assert (=> start!65130 true))

(declare-fun array_inv!15512 (array!41256) Bool)

(assert (=> start!65130 (array_inv!15512 a!3186)))

(declare-fun b!734747 () Bool)

(assert (=> b!734747 (= e!411141 e!411139)))

(declare-fun res!493744 () Bool)

(assert (=> b!734747 (=> (not res!493744) (not e!411139))))

(assert (=> b!734747 (= res!493744 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19738 a!3186) j!159) mask!3328) (select (arr!19738 a!3186) j!159) a!3186 mask!3328) lt!325664))))

(assert (=> b!734747 (= lt!325664 (Intermediate!7345 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734760 () Bool)

(assert (=> b!734760 (= e!411145 true)))

(declare-fun lt!325662 () SeekEntryResult!7345)

(assert (=> b!734760 (= lt!325662 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19738 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734761 () Bool)

(declare-fun res!493746 () Bool)

(assert (=> b!734761 (=> (not res!493746) (not e!411141))))

(declare-datatypes ((List!13793 0))(
  ( (Nil!13790) (Cons!13789 (h!14861 (_ BitVec 64)) (t!20116 List!13793)) )
))
(declare-fun arrayNoDuplicates!0 (array!41256 (_ BitVec 32) List!13793) Bool)

(assert (=> b!734761 (= res!493746 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13790))))

(declare-fun b!734762 () Bool)

(declare-fun res!493745 () Bool)

(assert (=> b!734762 (=> (not res!493745) (not e!411141))))

(assert (=> b!734762 (= res!493745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!734763 () Bool)

(declare-fun res!493738 () Bool)

(assert (=> b!734763 (=> (not res!493738) (not e!411144))))

(assert (=> b!734763 (= res!493738 (validKeyInArray!0 k0!2102))))

(declare-fun b!734764 () Bool)

(declare-fun res!493736 () Bool)

(assert (=> b!734764 (=> (not res!493736) (not e!411141))))

(assert (=> b!734764 (= res!493736 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20159 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20159 a!3186))))))

(declare-fun b!734765 () Bool)

(declare-fun res!493732 () Bool)

(assert (=> b!734765 (=> (not res!493732) (not e!411144))))

(declare-fun arrayContainsKey!0 (array!41256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734765 (= res!493732 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65130 res!493730) b!734756))

(assert (= (and b!734756 res!493731) b!734753))

(assert (= (and b!734753 res!493739) b!734763))

(assert (= (and b!734763 res!493738) b!734765))

(assert (= (and b!734765 res!493732) b!734755))

(assert (= (and b!734755 res!493742) b!734762))

(assert (= (and b!734762 res!493745) b!734761))

(assert (= (and b!734761 res!493746) b!734764))

(assert (= (and b!734764 res!493736) b!734747))

(assert (= (and b!734747 res!493744) b!734751))

(assert (= (and b!734751 res!493733) b!734754))

(assert (= (and b!734754 c!80889) b!734749))

(assert (= (and b!734754 (not c!80889)) b!734752))

(assert (= (and b!734754 res!493740) b!734758))

(assert (= (and b!734758 res!493737) b!734757))

(assert (= (and b!734757 res!493741) b!734759))

(assert (= (and b!734759 res!493735) b!734748))

(assert (= (and b!734757 (not res!493734)) b!734750))

(assert (= (and b!734750 (not res!493743)) b!734760))

(declare-fun m!687349 () Bool)

(assert (=> b!734753 m!687349))

(assert (=> b!734753 m!687349))

(declare-fun m!687351 () Bool)

(assert (=> b!734753 m!687351))

(declare-fun m!687353 () Bool)

(assert (=> b!734762 m!687353))

(assert (=> b!734747 m!687349))

(assert (=> b!734747 m!687349))

(declare-fun m!687355 () Bool)

(assert (=> b!734747 m!687355))

(assert (=> b!734747 m!687355))

(assert (=> b!734747 m!687349))

(declare-fun m!687357 () Bool)

(assert (=> b!734747 m!687357))

(declare-fun m!687359 () Bool)

(assert (=> b!734750 m!687359))

(assert (=> b!734749 m!687349))

(assert (=> b!734749 m!687349))

(declare-fun m!687361 () Bool)

(assert (=> b!734749 m!687361))

(assert (=> b!734748 m!687349))

(assert (=> b!734748 m!687349))

(declare-fun m!687363 () Bool)

(assert (=> b!734748 m!687363))

(declare-fun m!687365 () Bool)

(assert (=> b!734751 m!687365))

(declare-fun m!687367 () Bool)

(assert (=> b!734757 m!687367))

(declare-fun m!687369 () Bool)

(assert (=> b!734757 m!687369))

(declare-fun m!687371 () Bool)

(assert (=> b!734765 m!687371))

(assert (=> b!734752 m!687349))

(assert (=> b!734752 m!687349))

(declare-fun m!687373 () Bool)

(assert (=> b!734752 m!687373))

(assert (=> b!734759 m!687349))

(assert (=> b!734759 m!687349))

(declare-fun m!687375 () Bool)

(assert (=> b!734759 m!687375))

(assert (=> b!734760 m!687349))

(assert (=> b!734760 m!687349))

(assert (=> b!734760 m!687373))

(declare-fun m!687377 () Bool)

(assert (=> b!734763 m!687377))

(declare-fun m!687379 () Bool)

(assert (=> b!734761 m!687379))

(declare-fun m!687381 () Bool)

(assert (=> start!65130 m!687381))

(declare-fun m!687383 () Bool)

(assert (=> start!65130 m!687383))

(declare-fun m!687385 () Bool)

(assert (=> b!734758 m!687385))

(declare-fun m!687387 () Bool)

(assert (=> b!734758 m!687387))

(declare-fun m!687389 () Bool)

(assert (=> b!734758 m!687389))

(declare-fun m!687391 () Bool)

(assert (=> b!734758 m!687391))

(declare-fun m!687393 () Bool)

(assert (=> b!734758 m!687393))

(assert (=> b!734758 m!687391))

(declare-fun m!687395 () Bool)

(assert (=> b!734755 m!687395))

(check-sat (not b!734748) (not b!734752) (not b!734747) (not b!734765) (not b!734753) (not b!734755) (not b!734761) (not b!734762) (not b!734763) (not b!734758) (not b!734757) (not start!65130) (not b!734750) (not b!734749) (not b!734760) (not b!734759))
(check-sat)
