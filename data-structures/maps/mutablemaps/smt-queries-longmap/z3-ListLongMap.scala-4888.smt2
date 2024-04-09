; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67392 () Bool)

(assert start!67392)

(declare-fun b!779374 () Bool)

(declare-fun e!433588 () Bool)

(declare-fun e!433592 () Bool)

(assert (=> b!779374 (= e!433588 (not e!433592))))

(declare-fun res!527490 () Bool)

(assert (=> b!779374 (=> res!527490 e!433592)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7984 0))(
  ( (MissingZero!7984 (index!34303 (_ BitVec 32))) (Found!7984 (index!34304 (_ BitVec 32))) (Intermediate!7984 (undefined!8796 Bool) (index!34305 (_ BitVec 32)) (x!65274 (_ BitVec 32))) (Undefined!7984) (MissingVacant!7984 (index!34306 (_ BitVec 32))) )
))
(declare-fun lt!347305 () SeekEntryResult!7984)

(get-info :version)

(assert (=> b!779374 (= res!527490 (or (not ((_ is Intermediate!7984) lt!347305)) (bvslt x!1131 (x!65274 lt!347305)) (not (= x!1131 (x!65274 lt!347305))) (not (= index!1321 (index!34305 lt!347305)))))))

(declare-fun e!433589 () Bool)

(assert (=> b!779374 e!433589))

(declare-fun res!527488 () Bool)

(assert (=> b!779374 (=> (not res!527488) (not e!433589))))

(declare-fun lt!347310 () SeekEntryResult!7984)

(declare-fun lt!347308 () SeekEntryResult!7984)

(assert (=> b!779374 (= res!527488 (= lt!347310 lt!347308))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!779374 (= lt!347308 (Found!7984 j!159))))

(declare-datatypes ((array!42576 0))(
  ( (array!42577 (arr!20377 (Array (_ BitVec 32) (_ BitVec 64))) (size!20798 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42576)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42576 (_ BitVec 32)) SeekEntryResult!7984)

(assert (=> b!779374 (= lt!347310 (seekEntryOrOpen!0 (select (arr!20377 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42576 (_ BitVec 32)) Bool)

(assert (=> b!779374 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26862 0))(
  ( (Unit!26863) )
))
(declare-fun lt!347306 () Unit!26862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26862)

(assert (=> b!779374 (= lt!347306 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!527496 () Bool)

(declare-fun e!433586 () Bool)

(assert (=> start!67392 (=> (not res!527496) (not e!433586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67392 (= res!527496 (validMask!0 mask!3328))))

(assert (=> start!67392 e!433586))

(assert (=> start!67392 true))

(declare-fun array_inv!16151 (array!42576) Bool)

(assert (=> start!67392 (array_inv!16151 a!3186)))

(declare-fun b!779375 () Bool)

(declare-fun res!527500 () Bool)

(assert (=> b!779375 (=> (not res!527500) (not e!433586))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779375 (= res!527500 (and (= (size!20798 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20798 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20798 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779376 () Bool)

(declare-fun res!527503 () Bool)

(assert (=> b!779376 (=> (not res!527503) (not e!433586))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779376 (= res!527503 (validKeyInArray!0 k0!2102))))

(declare-fun b!779377 () Bool)

(declare-fun e!433593 () Bool)

(declare-fun e!433587 () Bool)

(assert (=> b!779377 (= e!433593 e!433587)))

(declare-fun res!527495 () Bool)

(assert (=> b!779377 (=> (not res!527495) (not e!433587))))

(declare-fun lt!347312 () SeekEntryResult!7984)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42576 (_ BitVec 32)) SeekEntryResult!7984)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779377 (= res!527495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20377 a!3186) j!159) mask!3328) (select (arr!20377 a!3186) j!159) a!3186 mask!3328) lt!347312))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779377 (= lt!347312 (Intermediate!7984 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!433591 () Bool)

(declare-fun b!779378 () Bool)

(assert (=> b!779378 (= e!433591 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20377 a!3186) j!159) a!3186 mask!3328) lt!347312))))

(declare-fun b!779379 () Bool)

(declare-fun res!527491 () Bool)

(assert (=> b!779379 (=> (not res!527491) (not e!433587))))

(assert (=> b!779379 (= res!527491 e!433591)))

(declare-fun c!86346 () Bool)

(assert (=> b!779379 (= c!86346 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779380 () Bool)

(declare-fun res!527498 () Bool)

(assert (=> b!779380 (=> (not res!527498) (not e!433593))))

(declare-datatypes ((List!14432 0))(
  ( (Nil!14429) (Cons!14428 (h!15542 (_ BitVec 64)) (t!20755 List!14432)) )
))
(declare-fun arrayNoDuplicates!0 (array!42576 (_ BitVec 32) List!14432) Bool)

(assert (=> b!779380 (= res!527498 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14429))))

(declare-fun b!779381 () Bool)

(declare-fun res!527502 () Bool)

(assert (=> b!779381 (=> (not res!527502) (not e!433587))))

(assert (=> b!779381 (= res!527502 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20377 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779382 () Bool)

(declare-fun e!433590 () Bool)

(assert (=> b!779382 (= e!433590 true)))

(declare-fun lt!347314 () SeekEntryResult!7984)

(assert (=> b!779382 (= lt!347310 lt!347314)))

(declare-fun b!779383 () Bool)

(assert (=> b!779383 (= e!433587 e!433588)))

(declare-fun res!527494 () Bool)

(assert (=> b!779383 (=> (not res!527494) (not e!433588))))

(declare-fun lt!347313 () SeekEntryResult!7984)

(assert (=> b!779383 (= res!527494 (= lt!347313 lt!347305))))

(declare-fun lt!347307 () (_ BitVec 64))

(declare-fun lt!347309 () array!42576)

(assert (=> b!779383 (= lt!347305 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347307 lt!347309 mask!3328))))

(assert (=> b!779383 (= lt!347313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347307 mask!3328) lt!347307 lt!347309 mask!3328))))

(assert (=> b!779383 (= lt!347307 (select (store (arr!20377 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!779383 (= lt!347309 (array!42577 (store (arr!20377 a!3186) i!1173 k0!2102) (size!20798 a!3186)))))

(declare-fun b!779384 () Bool)

(assert (=> b!779384 (= e!433592 e!433590)))

(declare-fun res!527489 () Bool)

(assert (=> b!779384 (=> res!527489 e!433590)))

(assert (=> b!779384 (= res!527489 (or (not (= lt!347314 lt!347308)) (= (select (store (arr!20377 a!3186) i!1173 k0!2102) index!1321) lt!347307) (not (= (select (store (arr!20377 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42576 (_ BitVec 32)) SeekEntryResult!7984)

(assert (=> b!779384 (= lt!347314 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20377 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779385 () Bool)

(declare-fun res!527493 () Bool)

(assert (=> b!779385 (=> (not res!527493) (not e!433593))))

(assert (=> b!779385 (= res!527493 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20798 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20798 a!3186))))))

(declare-fun b!779386 () Bool)

(declare-fun res!527501 () Bool)

(assert (=> b!779386 (=> (not res!527501) (not e!433586))))

(declare-fun arrayContainsKey!0 (array!42576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779386 (= res!527501 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779387 () Bool)

(declare-fun res!527492 () Bool)

(assert (=> b!779387 (=> (not res!527492) (not e!433593))))

(assert (=> b!779387 (= res!527492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779388 () Bool)

(declare-fun res!527499 () Bool)

(assert (=> b!779388 (=> (not res!527499) (not e!433586))))

(assert (=> b!779388 (= res!527499 (validKeyInArray!0 (select (arr!20377 a!3186) j!159)))))

(declare-fun b!779389 () Bool)

(assert (=> b!779389 (= e!433586 e!433593)))

(declare-fun res!527497 () Bool)

(assert (=> b!779389 (=> (not res!527497) (not e!433593))))

(declare-fun lt!347311 () SeekEntryResult!7984)

(assert (=> b!779389 (= res!527497 (or (= lt!347311 (MissingZero!7984 i!1173)) (= lt!347311 (MissingVacant!7984 i!1173))))))

(assert (=> b!779389 (= lt!347311 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!779390 () Bool)

(assert (=> b!779390 (= e!433589 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20377 a!3186) j!159) a!3186 mask!3328) lt!347308))))

(declare-fun b!779391 () Bool)

(assert (=> b!779391 (= e!433591 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20377 a!3186) j!159) a!3186 mask!3328) (Found!7984 j!159)))))

(assert (= (and start!67392 res!527496) b!779375))

(assert (= (and b!779375 res!527500) b!779388))

(assert (= (and b!779388 res!527499) b!779376))

(assert (= (and b!779376 res!527503) b!779386))

(assert (= (and b!779386 res!527501) b!779389))

(assert (= (and b!779389 res!527497) b!779387))

(assert (= (and b!779387 res!527492) b!779380))

(assert (= (and b!779380 res!527498) b!779385))

(assert (= (and b!779385 res!527493) b!779377))

(assert (= (and b!779377 res!527495) b!779381))

(assert (= (and b!779381 res!527502) b!779379))

(assert (= (and b!779379 c!86346) b!779378))

(assert (= (and b!779379 (not c!86346)) b!779391))

(assert (= (and b!779379 res!527491) b!779383))

(assert (= (and b!779383 res!527494) b!779374))

(assert (= (and b!779374 res!527488) b!779390))

(assert (= (and b!779374 (not res!527490)) b!779384))

(assert (= (and b!779384 (not res!527489)) b!779382))

(declare-fun m!722959 () Bool)

(assert (=> b!779390 m!722959))

(assert (=> b!779390 m!722959))

(declare-fun m!722961 () Bool)

(assert (=> b!779390 m!722961))

(assert (=> b!779388 m!722959))

(assert (=> b!779388 m!722959))

(declare-fun m!722963 () Bool)

(assert (=> b!779388 m!722963))

(declare-fun m!722965 () Bool)

(assert (=> b!779386 m!722965))

(declare-fun m!722967 () Bool)

(assert (=> b!779381 m!722967))

(assert (=> b!779374 m!722959))

(assert (=> b!779374 m!722959))

(declare-fun m!722969 () Bool)

(assert (=> b!779374 m!722969))

(declare-fun m!722971 () Bool)

(assert (=> b!779374 m!722971))

(declare-fun m!722973 () Bool)

(assert (=> b!779374 m!722973))

(declare-fun m!722975 () Bool)

(assert (=> b!779383 m!722975))

(declare-fun m!722977 () Bool)

(assert (=> b!779383 m!722977))

(declare-fun m!722979 () Bool)

(assert (=> b!779383 m!722979))

(declare-fun m!722981 () Bool)

(assert (=> b!779383 m!722981))

(assert (=> b!779383 m!722979))

(declare-fun m!722983 () Bool)

(assert (=> b!779383 m!722983))

(assert (=> b!779384 m!722981))

(declare-fun m!722985 () Bool)

(assert (=> b!779384 m!722985))

(assert (=> b!779384 m!722959))

(assert (=> b!779384 m!722959))

(declare-fun m!722987 () Bool)

(assert (=> b!779384 m!722987))

(declare-fun m!722989 () Bool)

(assert (=> b!779376 m!722989))

(assert (=> b!779391 m!722959))

(assert (=> b!779391 m!722959))

(assert (=> b!779391 m!722987))

(assert (=> b!779377 m!722959))

(assert (=> b!779377 m!722959))

(declare-fun m!722991 () Bool)

(assert (=> b!779377 m!722991))

(assert (=> b!779377 m!722991))

(assert (=> b!779377 m!722959))

(declare-fun m!722993 () Bool)

(assert (=> b!779377 m!722993))

(declare-fun m!722995 () Bool)

(assert (=> b!779380 m!722995))

(assert (=> b!779378 m!722959))

(assert (=> b!779378 m!722959))

(declare-fun m!722997 () Bool)

(assert (=> b!779378 m!722997))

(declare-fun m!722999 () Bool)

(assert (=> b!779389 m!722999))

(declare-fun m!723001 () Bool)

(assert (=> start!67392 m!723001))

(declare-fun m!723003 () Bool)

(assert (=> start!67392 m!723003))

(declare-fun m!723005 () Bool)

(assert (=> b!779387 m!723005))

(check-sat (not b!779377) (not b!779389) (not b!779384) (not b!779383) (not b!779391) (not b!779378) (not b!779388) (not b!779376) (not b!779374) (not b!779386) (not b!779380) (not b!779387) (not start!67392) (not b!779390))
(check-sat)
