; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65478 () Bool)

(assert start!65478)

(declare-fun b!745749 () Bool)

(declare-fun e!416523 () Bool)

(declare-fun e!416522 () Bool)

(assert (=> b!745749 (= e!416523 e!416522)))

(declare-fun res!502722 () Bool)

(assert (=> b!745749 (=> (not res!502722) (not e!416522))))

(declare-datatypes ((SeekEntryResult!7519 0))(
  ( (MissingZero!7519 (index!32443 (_ BitVec 32))) (Found!7519 (index!32444 (_ BitVec 32))) (Intermediate!7519 (undefined!8331 Bool) (index!32445 (_ BitVec 32)) (x!63422 (_ BitVec 32))) (Undefined!7519) (MissingVacant!7519 (index!32446 (_ BitVec 32))) )
))
(declare-fun lt!331368 () SeekEntryResult!7519)

(declare-fun lt!331370 () SeekEntryResult!7519)

(assert (=> b!745749 (= res!502722 (= lt!331368 lt!331370))))

(declare-fun lt!331373 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41604 0))(
  ( (array!41605 (arr!19912 (Array (_ BitVec 32) (_ BitVec 64))) (size!20333 (_ BitVec 32))) )
))
(declare-fun lt!331372 () array!41604)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41604 (_ BitVec 32)) SeekEntryResult!7519)

(assert (=> b!745749 (= lt!331370 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331373 lt!331372 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745749 (= lt!331368 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331373 mask!3328) lt!331373 lt!331372 mask!3328))))

(declare-fun a!3186 () array!41604)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!745749 (= lt!331373 (select (store (arr!19912 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!745749 (= lt!331372 (array!41605 (store (arr!19912 a!3186) i!1173 k0!2102) (size!20333 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!745750 () Bool)

(declare-fun lt!331369 () SeekEntryResult!7519)

(declare-fun e!416516 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41604 (_ BitVec 32)) SeekEntryResult!7519)

(assert (=> b!745750 (= e!416516 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19912 a!3186) j!159) a!3186 mask!3328) lt!331369))))

(declare-fun b!745751 () Bool)

(declare-fun res!502731 () Bool)

(declare-fun e!416518 () Bool)

(assert (=> b!745751 (=> (not res!502731) (not e!416518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41604 (_ BitVec 32)) Bool)

(assert (=> b!745751 (= res!502731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745752 () Bool)

(declare-fun res!502723 () Bool)

(declare-fun e!416517 () Bool)

(assert (=> b!745752 (=> (not res!502723) (not e!416517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745752 (= res!502723 (validKeyInArray!0 k0!2102))))

(declare-fun b!745753 () Bool)

(declare-fun res!502726 () Bool)

(assert (=> b!745753 (=> (not res!502726) (not e!416517))))

(assert (=> b!745753 (= res!502726 (and (= (size!20333 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20333 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20333 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745754 () Bool)

(declare-fun res!502725 () Bool)

(assert (=> b!745754 (=> (not res!502725) (not e!416523))))

(declare-fun e!416521 () Bool)

(assert (=> b!745754 (= res!502725 e!416521)))

(declare-fun c!81897 () Bool)

(assert (=> b!745754 (= c!81897 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745755 () Bool)

(assert (=> b!745755 (= e!416518 e!416523)))

(declare-fun res!502724 () Bool)

(assert (=> b!745755 (=> (not res!502724) (not e!416523))))

(declare-fun lt!331371 () SeekEntryResult!7519)

(assert (=> b!745755 (= res!502724 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19912 a!3186) j!159) mask!3328) (select (arr!19912 a!3186) j!159) a!3186 mask!3328) lt!331371))))

(assert (=> b!745755 (= lt!331371 (Intermediate!7519 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745756 () Bool)

(assert (=> b!745756 (= e!416517 e!416518)))

(declare-fun res!502720 () Bool)

(assert (=> b!745756 (=> (not res!502720) (not e!416518))))

(declare-fun lt!331376 () SeekEntryResult!7519)

(assert (=> b!745756 (= res!502720 (or (= lt!331376 (MissingZero!7519 i!1173)) (= lt!331376 (MissingVacant!7519 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41604 (_ BitVec 32)) SeekEntryResult!7519)

(assert (=> b!745756 (= lt!331376 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!745757 () Bool)

(declare-fun res!502728 () Bool)

(assert (=> b!745757 (=> (not res!502728) (not e!416518))))

(declare-datatypes ((List!13967 0))(
  ( (Nil!13964) (Cons!13963 (h!15035 (_ BitVec 64)) (t!20290 List!13967)) )
))
(declare-fun arrayNoDuplicates!0 (array!41604 (_ BitVec 32) List!13967) Bool)

(assert (=> b!745757 (= res!502728 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13964))))

(declare-fun b!745758 () Bool)

(declare-fun e!416520 () Bool)

(assert (=> b!745758 (= e!416520 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!331367 () SeekEntryResult!7519)

(declare-fun lt!331374 () SeekEntryResult!7519)

(assert (=> b!745758 (= lt!331367 lt!331374)))

(declare-fun b!745759 () Bool)

(assert (=> b!745759 (= e!416521 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19912 a!3186) j!159) a!3186 mask!3328) (Found!7519 j!159)))))

(declare-fun b!745760 () Bool)

(declare-fun res!502716 () Bool)

(assert (=> b!745760 (=> (not res!502716) (not e!416517))))

(declare-fun arrayContainsKey!0 (array!41604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745760 (= res!502716 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745761 () Bool)

(declare-fun e!416515 () Bool)

(assert (=> b!745761 (= e!416515 e!416520)))

(declare-fun res!502717 () Bool)

(assert (=> b!745761 (=> res!502717 e!416520)))

(assert (=> b!745761 (= res!502717 (or (not (= lt!331374 lt!331369)) (= (select (store (arr!19912 a!3186) i!1173 k0!2102) index!1321) lt!331373) (not (= (select (store (arr!19912 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745761 (= lt!331374 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19912 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!502730 () Bool)

(assert (=> start!65478 (=> (not res!502730) (not e!416517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65478 (= res!502730 (validMask!0 mask!3328))))

(assert (=> start!65478 e!416517))

(assert (=> start!65478 true))

(declare-fun array_inv!15686 (array!41604) Bool)

(assert (=> start!65478 (array_inv!15686 a!3186)))

(declare-fun b!745762 () Bool)

(declare-fun res!502718 () Bool)

(assert (=> b!745762 (=> (not res!502718) (not e!416517))))

(assert (=> b!745762 (= res!502718 (validKeyInArray!0 (select (arr!19912 a!3186) j!159)))))

(declare-fun b!745763 () Bool)

(declare-fun res!502721 () Bool)

(assert (=> b!745763 (=> (not res!502721) (not e!416518))))

(assert (=> b!745763 (= res!502721 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20333 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20333 a!3186))))))

(declare-fun b!745764 () Bool)

(assert (=> b!745764 (= e!416522 (not e!416515))))

(declare-fun res!502729 () Bool)

(assert (=> b!745764 (=> res!502729 e!416515)))

(get-info :version)

(assert (=> b!745764 (= res!502729 (or (not ((_ is Intermediate!7519) lt!331370)) (bvslt x!1131 (x!63422 lt!331370)) (not (= x!1131 (x!63422 lt!331370))) (not (= index!1321 (index!32445 lt!331370)))))))

(assert (=> b!745764 e!416516))

(declare-fun res!502727 () Bool)

(assert (=> b!745764 (=> (not res!502727) (not e!416516))))

(assert (=> b!745764 (= res!502727 (= lt!331367 lt!331369))))

(assert (=> b!745764 (= lt!331369 (Found!7519 j!159))))

(assert (=> b!745764 (= lt!331367 (seekEntryOrOpen!0 (select (arr!19912 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745764 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25518 0))(
  ( (Unit!25519) )
))
(declare-fun lt!331375 () Unit!25518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25518)

(assert (=> b!745764 (= lt!331375 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745765 () Bool)

(declare-fun res!502719 () Bool)

(assert (=> b!745765 (=> (not res!502719) (not e!416523))))

(assert (=> b!745765 (= res!502719 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19912 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745766 () Bool)

(assert (=> b!745766 (= e!416521 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19912 a!3186) j!159) a!3186 mask!3328) lt!331371))))

(assert (= (and start!65478 res!502730) b!745753))

(assert (= (and b!745753 res!502726) b!745762))

(assert (= (and b!745762 res!502718) b!745752))

(assert (= (and b!745752 res!502723) b!745760))

(assert (= (and b!745760 res!502716) b!745756))

(assert (= (and b!745756 res!502720) b!745751))

(assert (= (and b!745751 res!502731) b!745757))

(assert (= (and b!745757 res!502728) b!745763))

(assert (= (and b!745763 res!502721) b!745755))

(assert (= (and b!745755 res!502724) b!745765))

(assert (= (and b!745765 res!502719) b!745754))

(assert (= (and b!745754 c!81897) b!745766))

(assert (= (and b!745754 (not c!81897)) b!745759))

(assert (= (and b!745754 res!502725) b!745749))

(assert (= (and b!745749 res!502722) b!745764))

(assert (= (and b!745764 res!502727) b!745750))

(assert (= (and b!745764 (not res!502729)) b!745761))

(assert (= (and b!745761 (not res!502717)) b!745758))

(declare-fun m!696169 () Bool)

(assert (=> b!745766 m!696169))

(assert (=> b!745766 m!696169))

(declare-fun m!696171 () Bool)

(assert (=> b!745766 m!696171))

(assert (=> b!745762 m!696169))

(assert (=> b!745762 m!696169))

(declare-fun m!696173 () Bool)

(assert (=> b!745762 m!696173))

(declare-fun m!696175 () Bool)

(assert (=> b!745765 m!696175))

(declare-fun m!696177 () Bool)

(assert (=> b!745761 m!696177))

(declare-fun m!696179 () Bool)

(assert (=> b!745761 m!696179))

(assert (=> b!745761 m!696169))

(assert (=> b!745761 m!696169))

(declare-fun m!696181 () Bool)

(assert (=> b!745761 m!696181))

(assert (=> b!745750 m!696169))

(assert (=> b!745750 m!696169))

(declare-fun m!696183 () Bool)

(assert (=> b!745750 m!696183))

(assert (=> b!745764 m!696169))

(assert (=> b!745764 m!696169))

(declare-fun m!696185 () Bool)

(assert (=> b!745764 m!696185))

(declare-fun m!696187 () Bool)

(assert (=> b!745764 m!696187))

(declare-fun m!696189 () Bool)

(assert (=> b!745764 m!696189))

(declare-fun m!696191 () Bool)

(assert (=> b!745751 m!696191))

(declare-fun m!696193 () Bool)

(assert (=> b!745760 m!696193))

(declare-fun m!696195 () Bool)

(assert (=> b!745757 m!696195))

(declare-fun m!696197 () Bool)

(assert (=> start!65478 m!696197))

(declare-fun m!696199 () Bool)

(assert (=> start!65478 m!696199))

(declare-fun m!696201 () Bool)

(assert (=> b!745752 m!696201))

(declare-fun m!696203 () Bool)

(assert (=> b!745756 m!696203))

(assert (=> b!745759 m!696169))

(assert (=> b!745759 m!696169))

(assert (=> b!745759 m!696181))

(assert (=> b!745749 m!696177))

(declare-fun m!696205 () Bool)

(assert (=> b!745749 m!696205))

(declare-fun m!696207 () Bool)

(assert (=> b!745749 m!696207))

(declare-fun m!696209 () Bool)

(assert (=> b!745749 m!696209))

(assert (=> b!745749 m!696205))

(declare-fun m!696211 () Bool)

(assert (=> b!745749 m!696211))

(assert (=> b!745755 m!696169))

(assert (=> b!745755 m!696169))

(declare-fun m!696213 () Bool)

(assert (=> b!745755 m!696213))

(assert (=> b!745755 m!696213))

(assert (=> b!745755 m!696169))

(declare-fun m!696215 () Bool)

(assert (=> b!745755 m!696215))

(check-sat (not b!745760) (not b!745766) (not b!745750) (not b!745764) (not b!745755) (not start!65478) (not b!745752) (not b!745749) (not b!745757) (not b!745762) (not b!745751) (not b!745761) (not b!745756) (not b!745759))
(check-sat)
