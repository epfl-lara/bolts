; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65580 () Bool)

(assert start!65580)

(declare-datatypes ((array!41706 0))(
  ( (array!41707 (arr!19963 (Array (_ BitVec 32) (_ BitVec 64))) (size!20384 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41706)

(declare-fun e!417908 () Bool)

(declare-fun b!748797 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7570 0))(
  ( (MissingZero!7570 (index!32647 (_ BitVec 32))) (Found!7570 (index!32648 (_ BitVec 32))) (Intermediate!7570 (undefined!8382 Bool) (index!32649 (_ BitVec 32)) (x!63609 (_ BitVec 32))) (Undefined!7570) (MissingVacant!7570 (index!32650 (_ BitVec 32))) )
))
(declare-fun lt!332902 () SeekEntryResult!7570)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41706 (_ BitVec 32)) SeekEntryResult!7570)

(assert (=> b!748797 (= e!417908 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19963 a!3186) j!159) a!3186 mask!3328) lt!332902))))

(declare-fun b!748798 () Bool)

(declare-datatypes ((Unit!25682 0))(
  ( (Unit!25683) )
))
(declare-fun e!417907 () Unit!25682)

(declare-fun Unit!25684 () Unit!25682)

(assert (=> b!748798 (= e!417907 Unit!25684)))

(assert (=> b!748798 false))

(declare-fun b!748799 () Bool)

(declare-fun res!505279 () Bool)

(declare-fun e!417901 () Bool)

(assert (=> b!748799 (=> res!505279 e!417901)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!332899 () SeekEntryResult!7570)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41706 (_ BitVec 32)) SeekEntryResult!7570)

(assert (=> b!748799 (= res!505279 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19963 a!3186) j!159) a!3186 mask!3328) lt!332899)))))

(declare-fun b!748800 () Bool)

(assert (=> b!748800 (= e!417908 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19963 a!3186) j!159) a!3186 mask!3328) (Found!7570 j!159)))))

(declare-fun b!748801 () Bool)

(declare-fun e!417909 () Bool)

(declare-fun e!417906 () Bool)

(assert (=> b!748801 (= e!417909 e!417906)))

(declare-fun res!505270 () Bool)

(assert (=> b!748801 (=> (not res!505270) (not e!417906))))

(declare-fun lt!332900 () SeekEntryResult!7570)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748801 (= res!505270 (or (= lt!332900 (MissingZero!7570 i!1173)) (= lt!332900 (MissingVacant!7570 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41706 (_ BitVec 32)) SeekEntryResult!7570)

(assert (=> b!748801 (= lt!332900 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!748802 () Bool)

(declare-fun res!505276 () Bool)

(assert (=> b!748802 (=> res!505276 e!417901)))

(declare-fun lt!332898 () (_ BitVec 64))

(assert (=> b!748802 (= res!505276 (= (select (store (arr!19963 a!3186) i!1173 k0!2102) index!1321) lt!332898))))

(declare-fun b!748803 () Bool)

(declare-fun res!505269 () Bool)

(assert (=> b!748803 (=> (not res!505269) (not e!417906))))

(declare-datatypes ((List!14018 0))(
  ( (Nil!14015) (Cons!14014 (h!15086 (_ BitVec 64)) (t!20341 List!14018)) )
))
(declare-fun arrayNoDuplicates!0 (array!41706 (_ BitVec 32) List!14018) Bool)

(assert (=> b!748803 (= res!505269 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14015))))

(declare-fun b!748804 () Bool)

(declare-fun e!417905 () Bool)

(assert (=> b!748804 (= e!417906 e!417905)))

(declare-fun res!505274 () Bool)

(assert (=> b!748804 (=> (not res!505274) (not e!417905))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748804 (= res!505274 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19963 a!3186) j!159) mask!3328) (select (arr!19963 a!3186) j!159) a!3186 mask!3328) lt!332902))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748804 (= lt!332902 (Intermediate!7570 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748805 () Bool)

(assert (=> b!748805 (= e!417901 true)))

(assert (=> b!748805 (= (select (store (arr!19963 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332901 () Unit!25682)

(assert (=> b!748805 (= lt!332901 e!417907)))

(declare-fun c!82146 () Bool)

(assert (=> b!748805 (= c!82146 (= (select (store (arr!19963 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748806 () Bool)

(declare-fun res!505284 () Bool)

(assert (=> b!748806 (=> (not res!505284) (not e!417909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748806 (= res!505284 (validKeyInArray!0 k0!2102))))

(declare-fun b!748807 () Bool)

(declare-fun res!505272 () Bool)

(assert (=> b!748807 (=> (not res!505272) (not e!417906))))

(assert (=> b!748807 (= res!505272 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20384 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20384 a!3186))))))

(declare-fun b!748808 () Bool)

(declare-fun e!417902 () Bool)

(assert (=> b!748808 (= e!417902 (not e!417901))))

(declare-fun res!505273 () Bool)

(assert (=> b!748808 (=> res!505273 e!417901)))

(declare-fun lt!332904 () SeekEntryResult!7570)

(get-info :version)

(assert (=> b!748808 (= res!505273 (or (not ((_ is Intermediate!7570) lt!332904)) (bvslt x!1131 (x!63609 lt!332904)) (not (= x!1131 (x!63609 lt!332904))) (not (= index!1321 (index!32649 lt!332904)))))))

(declare-fun e!417904 () Bool)

(assert (=> b!748808 e!417904))

(declare-fun res!505281 () Bool)

(assert (=> b!748808 (=> (not res!505281) (not e!417904))))

(declare-fun lt!332897 () SeekEntryResult!7570)

(assert (=> b!748808 (= res!505281 (= lt!332897 lt!332899))))

(assert (=> b!748808 (= lt!332899 (Found!7570 j!159))))

(assert (=> b!748808 (= lt!332897 (seekEntryOrOpen!0 (select (arr!19963 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41706 (_ BitVec 32)) Bool)

(assert (=> b!748808 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332906 () Unit!25682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41706 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25682)

(assert (=> b!748808 (= lt!332906 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748809 () Bool)

(declare-fun res!505268 () Bool)

(assert (=> b!748809 (=> (not res!505268) (not e!417909))))

(assert (=> b!748809 (= res!505268 (and (= (size!20384 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20384 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20384 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!505282 () Bool)

(assert (=> start!65580 (=> (not res!505282) (not e!417909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65580 (= res!505282 (validMask!0 mask!3328))))

(assert (=> start!65580 e!417909))

(assert (=> start!65580 true))

(declare-fun array_inv!15737 (array!41706) Bool)

(assert (=> start!65580 (array_inv!15737 a!3186)))

(declare-fun b!748810 () Bool)

(assert (=> b!748810 (= e!417904 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19963 a!3186) j!159) a!3186 mask!3328) lt!332899))))

(declare-fun b!748811 () Bool)

(declare-fun res!505280 () Bool)

(assert (=> b!748811 (=> (not res!505280) (not e!417905))))

(assert (=> b!748811 (= res!505280 e!417908)))

(declare-fun c!82145 () Bool)

(assert (=> b!748811 (= c!82145 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748812 () Bool)

(declare-fun res!505283 () Bool)

(assert (=> b!748812 (=> (not res!505283) (not e!417909))))

(declare-fun arrayContainsKey!0 (array!41706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748812 (= res!505283 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748813 () Bool)

(declare-fun Unit!25685 () Unit!25682)

(assert (=> b!748813 (= e!417907 Unit!25685)))

(declare-fun b!748814 () Bool)

(declare-fun res!505277 () Bool)

(assert (=> b!748814 (=> (not res!505277) (not e!417909))))

(assert (=> b!748814 (= res!505277 (validKeyInArray!0 (select (arr!19963 a!3186) j!159)))))

(declare-fun b!748815 () Bool)

(declare-fun res!505275 () Bool)

(assert (=> b!748815 (=> (not res!505275) (not e!417906))))

(assert (=> b!748815 (= res!505275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748816 () Bool)

(declare-fun res!505271 () Bool)

(assert (=> b!748816 (=> (not res!505271) (not e!417905))))

(assert (=> b!748816 (= res!505271 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19963 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748817 () Bool)

(assert (=> b!748817 (= e!417905 e!417902)))

(declare-fun res!505278 () Bool)

(assert (=> b!748817 (=> (not res!505278) (not e!417902))))

(declare-fun lt!332905 () SeekEntryResult!7570)

(assert (=> b!748817 (= res!505278 (= lt!332905 lt!332904))))

(declare-fun lt!332903 () array!41706)

(assert (=> b!748817 (= lt!332904 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332898 lt!332903 mask!3328))))

(assert (=> b!748817 (= lt!332905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332898 mask!3328) lt!332898 lt!332903 mask!3328))))

(assert (=> b!748817 (= lt!332898 (select (store (arr!19963 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!748817 (= lt!332903 (array!41707 (store (arr!19963 a!3186) i!1173 k0!2102) (size!20384 a!3186)))))

(assert (= (and start!65580 res!505282) b!748809))

(assert (= (and b!748809 res!505268) b!748814))

(assert (= (and b!748814 res!505277) b!748806))

(assert (= (and b!748806 res!505284) b!748812))

(assert (= (and b!748812 res!505283) b!748801))

(assert (= (and b!748801 res!505270) b!748815))

(assert (= (and b!748815 res!505275) b!748803))

(assert (= (and b!748803 res!505269) b!748807))

(assert (= (and b!748807 res!505272) b!748804))

(assert (= (and b!748804 res!505274) b!748816))

(assert (= (and b!748816 res!505271) b!748811))

(assert (= (and b!748811 c!82145) b!748797))

(assert (= (and b!748811 (not c!82145)) b!748800))

(assert (= (and b!748811 res!505280) b!748817))

(assert (= (and b!748817 res!505278) b!748808))

(assert (= (and b!748808 res!505281) b!748810))

(assert (= (and b!748808 (not res!505273)) b!748799))

(assert (= (and b!748799 (not res!505279)) b!748802))

(assert (= (and b!748802 (not res!505276)) b!748805))

(assert (= (and b!748805 c!82146) b!748798))

(assert (= (and b!748805 (not c!82146)) b!748813))

(declare-fun m!698623 () Bool)

(assert (=> b!748806 m!698623))

(declare-fun m!698625 () Bool)

(assert (=> b!748810 m!698625))

(assert (=> b!748810 m!698625))

(declare-fun m!698627 () Bool)

(assert (=> b!748810 m!698627))

(assert (=> b!748800 m!698625))

(assert (=> b!748800 m!698625))

(declare-fun m!698629 () Bool)

(assert (=> b!748800 m!698629))

(declare-fun m!698631 () Bool)

(assert (=> b!748817 m!698631))

(declare-fun m!698633 () Bool)

(assert (=> b!748817 m!698633))

(declare-fun m!698635 () Bool)

(assert (=> b!748817 m!698635))

(declare-fun m!698637 () Bool)

(assert (=> b!748817 m!698637))

(assert (=> b!748817 m!698631))

(declare-fun m!698639 () Bool)

(assert (=> b!748817 m!698639))

(assert (=> b!748797 m!698625))

(assert (=> b!748797 m!698625))

(declare-fun m!698641 () Bool)

(assert (=> b!748797 m!698641))

(declare-fun m!698643 () Bool)

(assert (=> b!748815 m!698643))

(assert (=> b!748808 m!698625))

(assert (=> b!748808 m!698625))

(declare-fun m!698645 () Bool)

(assert (=> b!748808 m!698645))

(declare-fun m!698647 () Bool)

(assert (=> b!748808 m!698647))

(declare-fun m!698649 () Bool)

(assert (=> b!748808 m!698649))

(assert (=> b!748799 m!698625))

(assert (=> b!748799 m!698625))

(assert (=> b!748799 m!698629))

(assert (=> b!748804 m!698625))

(assert (=> b!748804 m!698625))

(declare-fun m!698651 () Bool)

(assert (=> b!748804 m!698651))

(assert (=> b!748804 m!698651))

(assert (=> b!748804 m!698625))

(declare-fun m!698653 () Bool)

(assert (=> b!748804 m!698653))

(assert (=> b!748805 m!698635))

(declare-fun m!698655 () Bool)

(assert (=> b!748805 m!698655))

(declare-fun m!698657 () Bool)

(assert (=> b!748803 m!698657))

(assert (=> b!748802 m!698635))

(assert (=> b!748802 m!698655))

(assert (=> b!748814 m!698625))

(assert (=> b!748814 m!698625))

(declare-fun m!698659 () Bool)

(assert (=> b!748814 m!698659))

(declare-fun m!698661 () Bool)

(assert (=> start!65580 m!698661))

(declare-fun m!698663 () Bool)

(assert (=> start!65580 m!698663))

(declare-fun m!698665 () Bool)

(assert (=> b!748816 m!698665))

(declare-fun m!698667 () Bool)

(assert (=> b!748812 m!698667))

(declare-fun m!698669 () Bool)

(assert (=> b!748801 m!698669))

(check-sat (not start!65580) (not b!748812) (not b!748806) (not b!748800) (not b!748797) (not b!748799) (not b!748803) (not b!748804) (not b!748815) (not b!748814) (not b!748817) (not b!748808) (not b!748801) (not b!748810))
(check-sat)
