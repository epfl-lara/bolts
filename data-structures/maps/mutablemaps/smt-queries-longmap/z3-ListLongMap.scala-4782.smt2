; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65772 () Bool)

(assert start!65772)

(declare-fun b!755296 () Bool)

(declare-fun res!510628 () Bool)

(declare-fun e!421229 () Bool)

(assert (=> b!755296 (=> (not res!510628) (not e!421229))))

(declare-datatypes ((array!41898 0))(
  ( (array!41899 (arr!20059 (Array (_ BitVec 32) (_ BitVec 64))) (size!20480 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41898)

(declare-datatypes ((List!14114 0))(
  ( (Nil!14111) (Cons!14110 (h!15182 (_ BitVec 64)) (t!20437 List!14114)) )
))
(declare-fun arrayNoDuplicates!0 (array!41898 (_ BitVec 32) List!14114) Bool)

(assert (=> b!755296 (= res!510628 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14111))))

(declare-fun b!755297 () Bool)

(declare-datatypes ((Unit!26066 0))(
  ( (Unit!26067) )
))
(declare-fun e!421221 () Unit!26066)

(declare-fun Unit!26068 () Unit!26066)

(assert (=> b!755297 (= e!421221 Unit!26068)))

(declare-fun b!755298 () Bool)

(declare-fun res!510620 () Bool)

(assert (=> b!755298 (=> (not res!510620) (not e!421229))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41898 (_ BitVec 32)) Bool)

(assert (=> b!755298 (= res!510620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755299 () Bool)

(declare-fun e!421227 () Bool)

(declare-fun e!421222 () Bool)

(assert (=> b!755299 (= e!421227 e!421222)))

(declare-fun res!510631 () Bool)

(assert (=> b!755299 (=> (not res!510631) (not e!421222))))

(declare-datatypes ((SeekEntryResult!7666 0))(
  ( (MissingZero!7666 (index!33031 (_ BitVec 32))) (Found!7666 (index!33032 (_ BitVec 32))) (Intermediate!7666 (undefined!8478 Bool) (index!33033 (_ BitVec 32)) (x!63961 (_ BitVec 32))) (Undefined!7666) (MissingVacant!7666 (index!33034 (_ BitVec 32))) )
))
(declare-fun lt!336229 () SeekEntryResult!7666)

(declare-fun lt!336225 () SeekEntryResult!7666)

(assert (=> b!755299 (= res!510631 (= lt!336229 lt!336225))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!336224 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!336219 () array!41898)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41898 (_ BitVec 32)) SeekEntryResult!7666)

(assert (=> b!755299 (= lt!336225 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336224 lt!336219 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755299 (= lt!336229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336224 mask!3328) lt!336224 lt!336219 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755299 (= lt!336224 (select (store (arr!20059 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!755299 (= lt!336219 (array!41899 (store (arr!20059 a!3186) i!1173 k0!2102) (size!20480 a!3186)))))

(declare-fun res!510626 () Bool)

(declare-fun e!421230 () Bool)

(assert (=> start!65772 (=> (not res!510626) (not e!421230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65772 (= res!510626 (validMask!0 mask!3328))))

(assert (=> start!65772 e!421230))

(assert (=> start!65772 true))

(declare-fun array_inv!15833 (array!41898) Bool)

(assert (=> start!65772 (array_inv!15833 a!3186)))

(declare-fun b!755300 () Bool)

(declare-fun e!421219 () Bool)

(declare-fun e!421228 () Bool)

(assert (=> b!755300 (= e!421219 e!421228)))

(declare-fun res!510622 () Bool)

(assert (=> b!755300 (=> res!510622 e!421228)))

(declare-fun lt!336221 () SeekEntryResult!7666)

(declare-fun lt!336223 () SeekEntryResult!7666)

(assert (=> b!755300 (= res!510622 (not (= lt!336221 lt!336223)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41898 (_ BitVec 32)) SeekEntryResult!7666)

(assert (=> b!755300 (= lt!336221 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20059 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755301 () Bool)

(declare-fun res!510621 () Bool)

(declare-fun e!421223 () Bool)

(assert (=> b!755301 (=> (not res!510621) (not e!421223))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41898 (_ BitVec 32)) SeekEntryResult!7666)

(assert (=> b!755301 (= res!510621 (= (seekEntryOrOpen!0 lt!336224 lt!336219 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336224 lt!336219 mask!3328)))))

(declare-fun b!755302 () Bool)

(declare-fun e!421226 () Bool)

(assert (=> b!755302 (= e!421226 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20059 a!3186) j!159) a!3186 mask!3328) (Found!7666 j!159)))))

(declare-fun b!755303 () Bool)

(declare-fun res!510617 () Bool)

(assert (=> b!755303 (=> (not res!510617) (not e!421230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755303 (= res!510617 (validKeyInArray!0 k0!2102))))

(declare-fun b!755304 () Bool)

(declare-fun lt!336227 () SeekEntryResult!7666)

(assert (=> b!755304 (= e!421226 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20059 a!3186) j!159) a!3186 mask!3328) lt!336227))))

(declare-fun b!755305 () Bool)

(declare-fun e!421224 () Bool)

(assert (=> b!755305 (= e!421228 e!421224)))

(declare-fun res!510616 () Bool)

(assert (=> b!755305 (=> res!510616 e!421224)))

(declare-fun lt!336222 () (_ BitVec 64))

(assert (=> b!755305 (= res!510616 (= lt!336222 lt!336224))))

(assert (=> b!755305 (= lt!336222 (select (store (arr!20059 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!755306 () Bool)

(declare-fun lt!336230 () SeekEntryResult!7666)

(assert (=> b!755306 (= e!421223 (= lt!336230 lt!336221))))

(declare-fun b!755307 () Bool)

(assert (=> b!755307 (= e!421224 true)))

(assert (=> b!755307 e!421223))

(declare-fun res!510625 () Bool)

(assert (=> b!755307 (=> (not res!510625) (not e!421223))))

(assert (=> b!755307 (= res!510625 (= lt!336222 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336228 () Unit!26066)

(assert (=> b!755307 (= lt!336228 e!421221)))

(declare-fun c!82721 () Bool)

(assert (=> b!755307 (= c!82721 (= lt!336222 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755308 () Bool)

(assert (=> b!755308 (= e!421229 e!421227)))

(declare-fun res!510619 () Bool)

(assert (=> b!755308 (=> (not res!510619) (not e!421227))))

(assert (=> b!755308 (= res!510619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20059 a!3186) j!159) mask!3328) (select (arr!20059 a!3186) j!159) a!3186 mask!3328) lt!336227))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755308 (= lt!336227 (Intermediate!7666 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755309 () Bool)

(assert (=> b!755309 (= e!421230 e!421229)))

(declare-fun res!510627 () Bool)

(assert (=> b!755309 (=> (not res!510627) (not e!421229))))

(declare-fun lt!336220 () SeekEntryResult!7666)

(assert (=> b!755309 (= res!510627 (or (= lt!336220 (MissingZero!7666 i!1173)) (= lt!336220 (MissingVacant!7666 i!1173))))))

(assert (=> b!755309 (= lt!336220 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!755310 () Bool)

(declare-fun res!510630 () Bool)

(assert (=> b!755310 (=> (not res!510630) (not e!421230))))

(assert (=> b!755310 (= res!510630 (and (= (size!20480 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20480 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20480 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755311 () Bool)

(assert (=> b!755311 (= e!421222 (not e!421219))))

(declare-fun res!510615 () Bool)

(assert (=> b!755311 (=> res!510615 e!421219)))

(get-info :version)

(assert (=> b!755311 (= res!510615 (or (not ((_ is Intermediate!7666) lt!336225)) (bvslt x!1131 (x!63961 lt!336225)) (not (= x!1131 (x!63961 lt!336225))) (not (= index!1321 (index!33033 lt!336225)))))))

(declare-fun e!421225 () Bool)

(assert (=> b!755311 e!421225))

(declare-fun res!510618 () Bool)

(assert (=> b!755311 (=> (not res!510618) (not e!421225))))

(assert (=> b!755311 (= res!510618 (= lt!336230 lt!336223))))

(assert (=> b!755311 (= lt!336223 (Found!7666 j!159))))

(assert (=> b!755311 (= lt!336230 (seekEntryOrOpen!0 (select (arr!20059 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755311 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336226 () Unit!26066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41898 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26066)

(assert (=> b!755311 (= lt!336226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755312 () Bool)

(declare-fun res!510629 () Bool)

(assert (=> b!755312 (=> (not res!510629) (not e!421227))))

(assert (=> b!755312 (= res!510629 e!421226)))

(declare-fun c!82722 () Bool)

(assert (=> b!755312 (= c!82722 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755313 () Bool)

(declare-fun res!510632 () Bool)

(assert (=> b!755313 (=> (not res!510632) (not e!421230))))

(assert (=> b!755313 (= res!510632 (validKeyInArray!0 (select (arr!20059 a!3186) j!159)))))

(declare-fun b!755314 () Bool)

(declare-fun res!510623 () Bool)

(assert (=> b!755314 (=> (not res!510623) (not e!421229))))

(assert (=> b!755314 (= res!510623 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20480 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20480 a!3186))))))

(declare-fun b!755315 () Bool)

(assert (=> b!755315 (= e!421225 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20059 a!3186) j!159) a!3186 mask!3328) lt!336223))))

(declare-fun b!755316 () Bool)

(declare-fun res!510633 () Bool)

(assert (=> b!755316 (=> (not res!510633) (not e!421230))))

(declare-fun arrayContainsKey!0 (array!41898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755316 (= res!510633 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755317 () Bool)

(declare-fun res!510624 () Bool)

(assert (=> b!755317 (=> (not res!510624) (not e!421227))))

(assert (=> b!755317 (= res!510624 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20059 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755318 () Bool)

(declare-fun Unit!26069 () Unit!26066)

(assert (=> b!755318 (= e!421221 Unit!26069)))

(assert (=> b!755318 false))

(assert (= (and start!65772 res!510626) b!755310))

(assert (= (and b!755310 res!510630) b!755313))

(assert (= (and b!755313 res!510632) b!755303))

(assert (= (and b!755303 res!510617) b!755316))

(assert (= (and b!755316 res!510633) b!755309))

(assert (= (and b!755309 res!510627) b!755298))

(assert (= (and b!755298 res!510620) b!755296))

(assert (= (and b!755296 res!510628) b!755314))

(assert (= (and b!755314 res!510623) b!755308))

(assert (= (and b!755308 res!510619) b!755317))

(assert (= (and b!755317 res!510624) b!755312))

(assert (= (and b!755312 c!82722) b!755304))

(assert (= (and b!755312 (not c!82722)) b!755302))

(assert (= (and b!755312 res!510629) b!755299))

(assert (= (and b!755299 res!510631) b!755311))

(assert (= (and b!755311 res!510618) b!755315))

(assert (= (and b!755311 (not res!510615)) b!755300))

(assert (= (and b!755300 (not res!510622)) b!755305))

(assert (= (and b!755305 (not res!510616)) b!755307))

(assert (= (and b!755307 c!82721) b!755318))

(assert (= (and b!755307 (not c!82721)) b!755297))

(assert (= (and b!755307 res!510625) b!755301))

(assert (= (and b!755301 res!510621) b!755306))

(declare-fun m!703601 () Bool)

(assert (=> b!755304 m!703601))

(assert (=> b!755304 m!703601))

(declare-fun m!703603 () Bool)

(assert (=> b!755304 m!703603))

(declare-fun m!703605 () Bool)

(assert (=> b!755305 m!703605))

(declare-fun m!703607 () Bool)

(assert (=> b!755305 m!703607))

(declare-fun m!703609 () Bool)

(assert (=> b!755309 m!703609))

(assert (=> b!755308 m!703601))

(assert (=> b!755308 m!703601))

(declare-fun m!703611 () Bool)

(assert (=> b!755308 m!703611))

(assert (=> b!755308 m!703611))

(assert (=> b!755308 m!703601))

(declare-fun m!703613 () Bool)

(assert (=> b!755308 m!703613))

(assert (=> b!755302 m!703601))

(assert (=> b!755302 m!703601))

(declare-fun m!703615 () Bool)

(assert (=> b!755302 m!703615))

(declare-fun m!703617 () Bool)

(assert (=> b!755299 m!703617))

(declare-fun m!703619 () Bool)

(assert (=> b!755299 m!703619))

(declare-fun m!703621 () Bool)

(assert (=> b!755299 m!703621))

(assert (=> b!755299 m!703605))

(assert (=> b!755299 m!703621))

(declare-fun m!703623 () Bool)

(assert (=> b!755299 m!703623))

(declare-fun m!703625 () Bool)

(assert (=> b!755296 m!703625))

(declare-fun m!703627 () Bool)

(assert (=> b!755316 m!703627))

(assert (=> b!755313 m!703601))

(assert (=> b!755313 m!703601))

(declare-fun m!703629 () Bool)

(assert (=> b!755313 m!703629))

(assert (=> b!755315 m!703601))

(assert (=> b!755315 m!703601))

(declare-fun m!703631 () Bool)

(assert (=> b!755315 m!703631))

(declare-fun m!703633 () Bool)

(assert (=> b!755298 m!703633))

(assert (=> b!755311 m!703601))

(assert (=> b!755311 m!703601))

(declare-fun m!703635 () Bool)

(assert (=> b!755311 m!703635))

(declare-fun m!703637 () Bool)

(assert (=> b!755311 m!703637))

(declare-fun m!703639 () Bool)

(assert (=> b!755311 m!703639))

(assert (=> b!755300 m!703601))

(assert (=> b!755300 m!703601))

(assert (=> b!755300 m!703615))

(declare-fun m!703641 () Bool)

(assert (=> b!755317 m!703641))

(declare-fun m!703643 () Bool)

(assert (=> start!65772 m!703643))

(declare-fun m!703645 () Bool)

(assert (=> start!65772 m!703645))

(declare-fun m!703647 () Bool)

(assert (=> b!755303 m!703647))

(declare-fun m!703649 () Bool)

(assert (=> b!755301 m!703649))

(declare-fun m!703651 () Bool)

(assert (=> b!755301 m!703651))

(check-sat (not b!755299) (not b!755315) (not b!755308) (not b!755301) (not b!755304) (not b!755302) (not b!755313) (not b!755296) (not b!755300) (not b!755303) (not b!755298) (not b!755311) (not start!65772) (not b!755316) (not b!755309))
(check-sat)
