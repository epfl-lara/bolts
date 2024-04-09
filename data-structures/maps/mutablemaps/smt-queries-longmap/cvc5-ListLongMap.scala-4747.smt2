; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65560 () Bool)

(assert start!65560)

(declare-fun b!748167 () Bool)

(declare-fun res!504765 () Bool)

(declare-fun e!417632 () Bool)

(assert (=> b!748167 (=> (not res!504765) (not e!417632))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748167 (= res!504765 (validKeyInArray!0 k!2102))))

(declare-fun b!748168 () Bool)

(declare-fun res!504772 () Bool)

(declare-fun e!417639 () Bool)

(assert (=> b!748168 (=> (not res!504772) (not e!417639))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41686 0))(
  ( (array!41687 (arr!19953 (Array (_ BitVec 32) (_ BitVec 64))) (size!20374 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41686)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748168 (= res!504772 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19953 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748169 () Bool)

(declare-fun res!504763 () Bool)

(assert (=> b!748169 (=> (not res!504763) (not e!417632))))

(declare-fun arrayContainsKey!0 (array!41686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748169 (= res!504763 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748170 () Bool)

(declare-fun e!417635 () Bool)

(assert (=> b!748170 (= e!417635 e!417639)))

(declare-fun res!504764 () Bool)

(assert (=> b!748170 (=> (not res!504764) (not e!417639))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7560 0))(
  ( (MissingZero!7560 (index!32607 (_ BitVec 32))) (Found!7560 (index!32608 (_ BitVec 32))) (Intermediate!7560 (undefined!8372 Bool) (index!32609 (_ BitVec 32)) (x!63575 (_ BitVec 32))) (Undefined!7560) (MissingVacant!7560 (index!32610 (_ BitVec 32))) )
))
(declare-fun lt!332601 () SeekEntryResult!7560)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41686 (_ BitVec 32)) SeekEntryResult!7560)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748170 (= res!504764 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19953 a!3186) j!159) mask!3328) (select (arr!19953 a!3186) j!159) a!3186 mask!3328) lt!332601))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748170 (= lt!332601 (Intermediate!7560 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748171 () Bool)

(declare-fun res!504769 () Bool)

(declare-fun e!417638 () Bool)

(assert (=> b!748171 (=> res!504769 e!417638)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!332603 () SeekEntryResult!7560)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41686 (_ BitVec 32)) SeekEntryResult!7560)

(assert (=> b!748171 (= res!504769 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19953 a!3186) j!159) a!3186 mask!3328) lt!332603)))))

(declare-fun b!748172 () Bool)

(declare-datatypes ((Unit!25642 0))(
  ( (Unit!25643) )
))
(declare-fun e!417631 () Unit!25642)

(declare-fun Unit!25644 () Unit!25642)

(assert (=> b!748172 (= e!417631 Unit!25644)))

(declare-fun b!748173 () Bool)

(declare-fun res!504767 () Bool)

(assert (=> b!748173 (=> (not res!504767) (not e!417632))))

(assert (=> b!748173 (= res!504767 (validKeyInArray!0 (select (arr!19953 a!3186) j!159)))))

(declare-fun e!417633 () Bool)

(declare-fun b!748174 () Bool)

(assert (=> b!748174 (= e!417633 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19953 a!3186) j!159) a!3186 mask!3328) lt!332601))))

(declare-fun b!748175 () Bool)

(declare-fun e!417637 () Bool)

(assert (=> b!748175 (= e!417637 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19953 a!3186) j!159) a!3186 mask!3328) lt!332603))))

(declare-fun b!748176 () Bool)

(assert (=> b!748176 (= e!417638 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!748176 (= (select (store (arr!19953 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332597 () Unit!25642)

(assert (=> b!748176 (= lt!332597 e!417631)))

(declare-fun c!82085 () Bool)

(assert (=> b!748176 (= c!82085 (= (select (store (arr!19953 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748177 () Bool)

(declare-fun res!504774 () Bool)

(assert (=> b!748177 (=> res!504774 e!417638)))

(declare-fun lt!332600 () (_ BitVec 64))

(assert (=> b!748177 (= res!504774 (= (select (store (arr!19953 a!3186) i!1173 k!2102) index!1321) lt!332600))))

(declare-fun b!748178 () Bool)

(declare-fun Unit!25645 () Unit!25642)

(assert (=> b!748178 (= e!417631 Unit!25645)))

(assert (=> b!748178 false))

(declare-fun res!504759 () Bool)

(assert (=> start!65560 (=> (not res!504759) (not e!417632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65560 (= res!504759 (validMask!0 mask!3328))))

(assert (=> start!65560 e!417632))

(assert (=> start!65560 true))

(declare-fun array_inv!15727 (array!41686) Bool)

(assert (=> start!65560 (array_inv!15727 a!3186)))

(declare-fun b!748179 () Bool)

(assert (=> b!748179 (= e!417632 e!417635)))

(declare-fun res!504768 () Bool)

(assert (=> b!748179 (=> (not res!504768) (not e!417635))))

(declare-fun lt!332606 () SeekEntryResult!7560)

(assert (=> b!748179 (= res!504768 (or (= lt!332606 (MissingZero!7560 i!1173)) (= lt!332606 (MissingVacant!7560 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41686 (_ BitVec 32)) SeekEntryResult!7560)

(assert (=> b!748179 (= lt!332606 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748180 () Bool)

(declare-fun res!504773 () Bool)

(assert (=> b!748180 (=> (not res!504773) (not e!417639))))

(assert (=> b!748180 (= res!504773 e!417633)))

(declare-fun c!82086 () Bool)

(assert (=> b!748180 (= c!82086 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748181 () Bool)

(declare-fun e!417634 () Bool)

(assert (=> b!748181 (= e!417639 e!417634)))

(declare-fun res!504758 () Bool)

(assert (=> b!748181 (=> (not res!504758) (not e!417634))))

(declare-fun lt!332599 () SeekEntryResult!7560)

(declare-fun lt!332605 () SeekEntryResult!7560)

(assert (=> b!748181 (= res!504758 (= lt!332599 lt!332605))))

(declare-fun lt!332602 () array!41686)

(assert (=> b!748181 (= lt!332605 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332600 lt!332602 mask!3328))))

(assert (=> b!748181 (= lt!332599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332600 mask!3328) lt!332600 lt!332602 mask!3328))))

(assert (=> b!748181 (= lt!332600 (select (store (arr!19953 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748181 (= lt!332602 (array!41687 (store (arr!19953 a!3186) i!1173 k!2102) (size!20374 a!3186)))))

(declare-fun b!748182 () Bool)

(declare-fun res!504762 () Bool)

(assert (=> b!748182 (=> (not res!504762) (not e!417635))))

(declare-datatypes ((List!14008 0))(
  ( (Nil!14005) (Cons!14004 (h!15076 (_ BitVec 64)) (t!20331 List!14008)) )
))
(declare-fun arrayNoDuplicates!0 (array!41686 (_ BitVec 32) List!14008) Bool)

(assert (=> b!748182 (= res!504762 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14005))))

(declare-fun b!748183 () Bool)

(declare-fun res!504771 () Bool)

(assert (=> b!748183 (=> (not res!504771) (not e!417632))))

(assert (=> b!748183 (= res!504771 (and (= (size!20374 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20374 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20374 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748184 () Bool)

(assert (=> b!748184 (= e!417634 (not e!417638))))

(declare-fun res!504761 () Bool)

(assert (=> b!748184 (=> res!504761 e!417638)))

(assert (=> b!748184 (= res!504761 (or (not (is-Intermediate!7560 lt!332605)) (bvslt x!1131 (x!63575 lt!332605)) (not (= x!1131 (x!63575 lt!332605))) (not (= index!1321 (index!32609 lt!332605)))))))

(assert (=> b!748184 e!417637))

(declare-fun res!504760 () Bool)

(assert (=> b!748184 (=> (not res!504760) (not e!417637))))

(declare-fun lt!332604 () SeekEntryResult!7560)

(assert (=> b!748184 (= res!504760 (= lt!332604 lt!332603))))

(assert (=> b!748184 (= lt!332603 (Found!7560 j!159))))

(assert (=> b!748184 (= lt!332604 (seekEntryOrOpen!0 (select (arr!19953 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41686 (_ BitVec 32)) Bool)

(assert (=> b!748184 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332598 () Unit!25642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25642)

(assert (=> b!748184 (= lt!332598 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748185 () Bool)

(assert (=> b!748185 (= e!417633 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19953 a!3186) j!159) a!3186 mask!3328) (Found!7560 j!159)))))

(declare-fun b!748186 () Bool)

(declare-fun res!504770 () Bool)

(assert (=> b!748186 (=> (not res!504770) (not e!417635))))

(assert (=> b!748186 (= res!504770 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20374 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20374 a!3186))))))

(declare-fun b!748187 () Bool)

(declare-fun res!504766 () Bool)

(assert (=> b!748187 (=> (not res!504766) (not e!417635))))

(assert (=> b!748187 (= res!504766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65560 res!504759) b!748183))

(assert (= (and b!748183 res!504771) b!748173))

(assert (= (and b!748173 res!504767) b!748167))

(assert (= (and b!748167 res!504765) b!748169))

(assert (= (and b!748169 res!504763) b!748179))

(assert (= (and b!748179 res!504768) b!748187))

(assert (= (and b!748187 res!504766) b!748182))

(assert (= (and b!748182 res!504762) b!748186))

(assert (= (and b!748186 res!504770) b!748170))

(assert (= (and b!748170 res!504764) b!748168))

(assert (= (and b!748168 res!504772) b!748180))

(assert (= (and b!748180 c!82086) b!748174))

(assert (= (and b!748180 (not c!82086)) b!748185))

(assert (= (and b!748180 res!504773) b!748181))

(assert (= (and b!748181 res!504758) b!748184))

(assert (= (and b!748184 res!504760) b!748175))

(assert (= (and b!748184 (not res!504761)) b!748171))

(assert (= (and b!748171 (not res!504769)) b!748177))

(assert (= (and b!748177 (not res!504774)) b!748176))

(assert (= (and b!748176 c!82085) b!748178))

(assert (= (and b!748176 (not c!82085)) b!748172))

(declare-fun m!698143 () Bool)

(assert (=> b!748185 m!698143))

(assert (=> b!748185 m!698143))

(declare-fun m!698145 () Bool)

(assert (=> b!748185 m!698145))

(declare-fun m!698147 () Bool)

(assert (=> b!748169 m!698147))

(assert (=> b!748175 m!698143))

(assert (=> b!748175 m!698143))

(declare-fun m!698149 () Bool)

(assert (=> b!748175 m!698149))

(assert (=> b!748171 m!698143))

(assert (=> b!748171 m!698143))

(assert (=> b!748171 m!698145))

(declare-fun m!698151 () Bool)

(assert (=> b!748179 m!698151))

(declare-fun m!698153 () Bool)

(assert (=> b!748182 m!698153))

(declare-fun m!698155 () Bool)

(assert (=> b!748187 m!698155))

(declare-fun m!698157 () Bool)

(assert (=> b!748181 m!698157))

(declare-fun m!698159 () Bool)

(assert (=> b!748181 m!698159))

(declare-fun m!698161 () Bool)

(assert (=> b!748181 m!698161))

(declare-fun m!698163 () Bool)

(assert (=> b!748181 m!698163))

(assert (=> b!748181 m!698157))

(declare-fun m!698165 () Bool)

(assert (=> b!748181 m!698165))

(assert (=> b!748170 m!698143))

(assert (=> b!748170 m!698143))

(declare-fun m!698167 () Bool)

(assert (=> b!748170 m!698167))

(assert (=> b!748170 m!698167))

(assert (=> b!748170 m!698143))

(declare-fun m!698169 () Bool)

(assert (=> b!748170 m!698169))

(declare-fun m!698171 () Bool)

(assert (=> start!65560 m!698171))

(declare-fun m!698173 () Bool)

(assert (=> start!65560 m!698173))

(declare-fun m!698175 () Bool)

(assert (=> b!748167 m!698175))

(assert (=> b!748176 m!698161))

(declare-fun m!698177 () Bool)

(assert (=> b!748176 m!698177))

(assert (=> b!748174 m!698143))

(assert (=> b!748174 m!698143))

(declare-fun m!698179 () Bool)

(assert (=> b!748174 m!698179))

(assert (=> b!748184 m!698143))

(assert (=> b!748184 m!698143))

(declare-fun m!698181 () Bool)

(assert (=> b!748184 m!698181))

(declare-fun m!698183 () Bool)

(assert (=> b!748184 m!698183))

(declare-fun m!698185 () Bool)

(assert (=> b!748184 m!698185))

(assert (=> b!748173 m!698143))

(assert (=> b!748173 m!698143))

(declare-fun m!698187 () Bool)

(assert (=> b!748173 m!698187))

(assert (=> b!748177 m!698161))

(assert (=> b!748177 m!698177))

(declare-fun m!698189 () Bool)

(assert (=> b!748168 m!698189))

(push 1)

(assert (not b!748170))

(assert (not b!748179))

(assert (not b!748167))

(assert (not b!748169))

(assert (not b!748175))

(assert (not b!748185))

(assert (not b!748187))

(assert (not b!748182))

(assert (not b!748171))

(assert (not b!748173))

(assert (not b!748184))

(assert (not b!748181))

(assert (not start!65560))

(assert (not b!748174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

