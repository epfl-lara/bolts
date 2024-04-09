; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66304 () Bool)

(assert start!66304)

(declare-fun b!763752 () Bool)

(declare-fun res!516828 () Bool)

(declare-fun e!425475 () Bool)

(assert (=> b!763752 (=> (not res!516828) (not e!425475))))

(declare-datatypes ((array!42162 0))(
  ( (array!42163 (arr!20185 (Array (_ BitVec 32) (_ BitVec 64))) (size!20606 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42162)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42162 (_ BitVec 32)) Bool)

(assert (=> b!763752 (= res!516828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763753 () Bool)

(declare-fun res!516827 () Bool)

(declare-fun e!425479 () Bool)

(assert (=> b!763753 (=> (not res!516827) (not e!425479))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763753 (= res!516827 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!425480 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!763754 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7792 0))(
  ( (MissingZero!7792 (index!33535 (_ BitVec 32))) (Found!7792 (index!33536 (_ BitVec 32))) (Intermediate!7792 (undefined!8604 Bool) (index!33537 (_ BitVec 32)) (x!64461 (_ BitVec 32))) (Undefined!7792) (MissingVacant!7792 (index!33538 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42162 (_ BitVec 32)) SeekEntryResult!7792)

(assert (=> b!763754 (= e!425480 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20185 a!3186) j!159) a!3186 mask!3328) (Found!7792 j!159)))))

(declare-fun b!763755 () Bool)

(declare-fun res!516833 () Bool)

(assert (=> b!763755 (=> (not res!516833) (not e!425479))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763755 (= res!516833 (and (= (size!20606 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20606 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20606 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763756 () Bool)

(declare-fun res!516829 () Bool)

(assert (=> b!763756 (=> (not res!516829) (not e!425479))))

(assert (=> b!763756 (= res!516829 (validKeyInArray!0 (select (arr!20185 a!3186) j!159)))))

(declare-fun b!763757 () Bool)

(declare-fun res!516831 () Bool)

(assert (=> b!763757 (=> (not res!516831) (not e!425475))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763757 (= res!516831 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20606 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20606 a!3186))))))

(declare-fun b!763758 () Bool)

(declare-fun res!516835 () Bool)

(declare-fun e!425478 () Bool)

(assert (=> b!763758 (=> (not res!516835) (not e!425478))))

(assert (=> b!763758 (= res!516835 e!425480)))

(declare-fun c!83850 () Bool)

(assert (=> b!763758 (= c!83850 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763759 () Bool)

(declare-fun res!516837 () Bool)

(assert (=> b!763759 (=> (not res!516837) (not e!425479))))

(declare-fun arrayContainsKey!0 (array!42162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763759 (= res!516837 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763760 () Bool)

(declare-fun res!516826 () Bool)

(assert (=> b!763760 (=> (not res!516826) (not e!425475))))

(declare-datatypes ((List!14240 0))(
  ( (Nil!14237) (Cons!14236 (h!15320 (_ BitVec 64)) (t!20563 List!14240)) )
))
(declare-fun arrayNoDuplicates!0 (array!42162 (_ BitVec 32) List!14240) Bool)

(assert (=> b!763760 (= res!516826 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14237))))

(declare-fun res!516830 () Bool)

(assert (=> start!66304 (=> (not res!516830) (not e!425479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66304 (= res!516830 (validMask!0 mask!3328))))

(assert (=> start!66304 e!425479))

(assert (=> start!66304 true))

(declare-fun array_inv!15959 (array!42162) Bool)

(assert (=> start!66304 (array_inv!15959 a!3186)))

(declare-fun b!763761 () Bool)

(declare-fun e!425477 () Bool)

(assert (=> b!763761 (= e!425477 (bvsgt #b00000000000000000000000000000000 (size!20606 a!3186)))))

(declare-fun b!763762 () Bool)

(declare-fun res!516825 () Bool)

(assert (=> b!763762 (=> (not res!516825) (not e!425478))))

(assert (=> b!763762 (= res!516825 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20185 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763763 () Bool)

(assert (=> b!763763 (= e!425479 e!425475)))

(declare-fun res!516836 () Bool)

(assert (=> b!763763 (=> (not res!516836) (not e!425475))))

(declare-fun lt!339931 () SeekEntryResult!7792)

(assert (=> b!763763 (= res!516836 (or (= lt!339931 (MissingZero!7792 i!1173)) (= lt!339931 (MissingVacant!7792 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42162 (_ BitVec 32)) SeekEntryResult!7792)

(assert (=> b!763763 (= lt!339931 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763764 () Bool)

(declare-fun lt!339933 () SeekEntryResult!7792)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42162 (_ BitVec 32)) SeekEntryResult!7792)

(assert (=> b!763764 (= e!425480 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20185 a!3186) j!159) a!3186 mask!3328) lt!339933))))

(declare-fun b!763765 () Bool)

(assert (=> b!763765 (= e!425478 e!425477)))

(declare-fun res!516832 () Bool)

(assert (=> b!763765 (=> (not res!516832) (not e!425477))))

(declare-fun lt!339934 () (_ BitVec 64))

(declare-fun lt!339932 () array!42162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763765 (= res!516832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339934 mask!3328) lt!339934 lt!339932 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339934 lt!339932 mask!3328)))))

(assert (=> b!763765 (= lt!339934 (select (store (arr!20185 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!763765 (= lt!339932 (array!42163 (store (arr!20185 a!3186) i!1173 k0!2102) (size!20606 a!3186)))))

(declare-fun b!763766 () Bool)

(assert (=> b!763766 (= e!425475 e!425478)))

(declare-fun res!516834 () Bool)

(assert (=> b!763766 (=> (not res!516834) (not e!425478))))

(assert (=> b!763766 (= res!516834 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20185 a!3186) j!159) mask!3328) (select (arr!20185 a!3186) j!159) a!3186 mask!3328) lt!339933))))

(assert (=> b!763766 (= lt!339933 (Intermediate!7792 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66304 res!516830) b!763755))

(assert (= (and b!763755 res!516833) b!763756))

(assert (= (and b!763756 res!516829) b!763753))

(assert (= (and b!763753 res!516827) b!763759))

(assert (= (and b!763759 res!516837) b!763763))

(assert (= (and b!763763 res!516836) b!763752))

(assert (= (and b!763752 res!516828) b!763760))

(assert (= (and b!763760 res!516826) b!763757))

(assert (= (and b!763757 res!516831) b!763766))

(assert (= (and b!763766 res!516834) b!763762))

(assert (= (and b!763762 res!516825) b!763758))

(assert (= (and b!763758 c!83850) b!763764))

(assert (= (and b!763758 (not c!83850)) b!763754))

(assert (= (and b!763758 res!516835) b!763765))

(assert (= (and b!763765 res!516832) b!763761))

(declare-fun m!710263 () Bool)

(assert (=> start!66304 m!710263))

(declare-fun m!710265 () Bool)

(assert (=> start!66304 m!710265))

(declare-fun m!710267 () Bool)

(assert (=> b!763764 m!710267))

(assert (=> b!763764 m!710267))

(declare-fun m!710269 () Bool)

(assert (=> b!763764 m!710269))

(declare-fun m!710271 () Bool)

(assert (=> b!763753 m!710271))

(declare-fun m!710273 () Bool)

(assert (=> b!763762 m!710273))

(declare-fun m!710275 () Bool)

(assert (=> b!763763 m!710275))

(declare-fun m!710277 () Bool)

(assert (=> b!763765 m!710277))

(declare-fun m!710279 () Bool)

(assert (=> b!763765 m!710279))

(declare-fun m!710281 () Bool)

(assert (=> b!763765 m!710281))

(declare-fun m!710283 () Bool)

(assert (=> b!763765 m!710283))

(assert (=> b!763765 m!710279))

(declare-fun m!710285 () Bool)

(assert (=> b!763765 m!710285))

(declare-fun m!710287 () Bool)

(assert (=> b!763759 m!710287))

(assert (=> b!763754 m!710267))

(assert (=> b!763754 m!710267))

(declare-fun m!710289 () Bool)

(assert (=> b!763754 m!710289))

(declare-fun m!710291 () Bool)

(assert (=> b!763760 m!710291))

(assert (=> b!763766 m!710267))

(assert (=> b!763766 m!710267))

(declare-fun m!710293 () Bool)

(assert (=> b!763766 m!710293))

(assert (=> b!763766 m!710293))

(assert (=> b!763766 m!710267))

(declare-fun m!710295 () Bool)

(assert (=> b!763766 m!710295))

(declare-fun m!710297 () Bool)

(assert (=> b!763752 m!710297))

(assert (=> b!763756 m!710267))

(assert (=> b!763756 m!710267))

(declare-fun m!710299 () Bool)

(assert (=> b!763756 m!710299))

(check-sat (not b!763763) (not b!763759) (not start!66304) (not b!763756) (not b!763754) (not b!763765) (not b!763753) (not b!763766) (not b!763752) (not b!763760) (not b!763764))
(check-sat)
