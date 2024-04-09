; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65358 () Bool)

(assert start!65358)

(declare-fun e!414899 () Bool)

(declare-datatypes ((array!41484 0))(
  ( (array!41485 (arr!19852 (Array (_ BitVec 32) (_ BitVec 64))) (size!20273 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41484)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7459 0))(
  ( (MissingZero!7459 (index!32203 (_ BitVec 32))) (Found!7459 (index!32204 (_ BitVec 32))) (Intermediate!7459 (undefined!8271 Bool) (index!32205 (_ BitVec 32)) (x!63202 (_ BitVec 32))) (Undefined!7459) (MissingVacant!7459 (index!32206 (_ BitVec 32))) )
))
(declare-fun lt!329803 () SeekEntryResult!7459)

(declare-fun b!742352 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41484 (_ BitVec 32)) SeekEntryResult!7459)

(assert (=> b!742352 (= e!414899 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19852 a!3186) j!159) a!3186 mask!3328) lt!329803))))

(declare-fun b!742353 () Bool)

(declare-fun res!499695 () Bool)

(declare-fun e!414901 () Bool)

(assert (=> b!742353 (=> (not res!499695) (not e!414901))))

(declare-datatypes ((List!13907 0))(
  ( (Nil!13904) (Cons!13903 (h!14975 (_ BitVec 64)) (t!20230 List!13907)) )
))
(declare-fun arrayNoDuplicates!0 (array!41484 (_ BitVec 32) List!13907) Bool)

(assert (=> b!742353 (= res!499695 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13904))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!742354 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41484 (_ BitVec 32)) SeekEntryResult!7459)

(assert (=> b!742354 (= e!414899 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19852 a!3186) j!159) a!3186 mask!3328) (Found!7459 j!159)))))

(declare-fun b!742355 () Bool)

(declare-fun e!414900 () Bool)

(assert (=> b!742355 (= e!414900 e!414901)))

(declare-fun res!499685 () Bool)

(assert (=> b!742355 (=> (not res!499685) (not e!414901))))

(declare-fun lt!329805 () SeekEntryResult!7459)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742355 (= res!499685 (or (= lt!329805 (MissingZero!7459 i!1173)) (= lt!329805 (MissingVacant!7459 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41484 (_ BitVec 32)) SeekEntryResult!7459)

(assert (=> b!742355 (= lt!329805 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun e!414897 () Bool)

(declare-fun lt!329801 () SeekEntryResult!7459)

(declare-fun b!742356 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742356 (= e!414897 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19852 a!3186) j!159) a!3186 mask!3328) lt!329801))))

(declare-fun b!742357 () Bool)

(declare-fun res!499694 () Bool)

(declare-fun e!414895 () Bool)

(assert (=> b!742357 (=> (not res!499694) (not e!414895))))

(assert (=> b!742357 (= res!499694 e!414899)))

(declare-fun c!81717 () Bool)

(assert (=> b!742357 (= c!81717 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742359 () Bool)

(declare-fun res!499687 () Bool)

(assert (=> b!742359 (=> (not res!499687) (not e!414901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41484 (_ BitVec 32)) Bool)

(assert (=> b!742359 (= res!499687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742360 () Bool)

(declare-fun e!414898 () Bool)

(assert (=> b!742360 (= e!414895 e!414898)))

(declare-fun res!499680 () Bool)

(assert (=> b!742360 (=> (not res!499680) (not e!414898))))

(declare-fun lt!329804 () SeekEntryResult!7459)

(declare-fun lt!329800 () SeekEntryResult!7459)

(assert (=> b!742360 (= res!499680 (= lt!329804 lt!329800))))

(declare-fun lt!329802 () (_ BitVec 64))

(declare-fun lt!329806 () array!41484)

(assert (=> b!742360 (= lt!329800 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329802 lt!329806 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742360 (= lt!329804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329802 mask!3328) lt!329802 lt!329806 mask!3328))))

(assert (=> b!742360 (= lt!329802 (select (store (arr!19852 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!742360 (= lt!329806 (array!41485 (store (arr!19852 a!3186) i!1173 k0!2102) (size!20273 a!3186)))))

(declare-fun b!742361 () Bool)

(declare-fun res!499683 () Bool)

(assert (=> b!742361 (=> (not res!499683) (not e!414895))))

(assert (=> b!742361 (= res!499683 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19852 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742362 () Bool)

(declare-fun res!499689 () Bool)

(assert (=> b!742362 (=> (not res!499689) (not e!414900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742362 (= res!499689 (validKeyInArray!0 (select (arr!19852 a!3186) j!159)))))

(declare-fun b!742363 () Bool)

(declare-fun res!499688 () Bool)

(assert (=> b!742363 (=> (not res!499688) (not e!414900))))

(declare-fun arrayContainsKey!0 (array!41484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742363 (= res!499688 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742364 () Bool)

(declare-fun res!499693 () Bool)

(declare-fun e!414902 () Bool)

(assert (=> b!742364 (=> res!499693 e!414902)))

(assert (=> b!742364 (= res!499693 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19852 a!3186) j!159) a!3186 mask!3328) (Found!7459 j!159))))))

(declare-fun b!742365 () Bool)

(declare-fun res!499682 () Bool)

(assert (=> b!742365 (=> (not res!499682) (not e!414901))))

(assert (=> b!742365 (= res!499682 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20273 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20273 a!3186))))))

(declare-fun b!742366 () Bool)

(declare-fun res!499692 () Bool)

(assert (=> b!742366 (=> (not res!499692) (not e!414900))))

(assert (=> b!742366 (= res!499692 (validKeyInArray!0 k0!2102))))

(declare-fun res!499690 () Bool)

(assert (=> start!65358 (=> (not res!499690) (not e!414900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65358 (= res!499690 (validMask!0 mask!3328))))

(assert (=> start!65358 e!414900))

(assert (=> start!65358 true))

(declare-fun array_inv!15626 (array!41484) Bool)

(assert (=> start!65358 (array_inv!15626 a!3186)))

(declare-fun b!742358 () Bool)

(declare-fun res!499684 () Bool)

(assert (=> b!742358 (=> (not res!499684) (not e!414900))))

(assert (=> b!742358 (= res!499684 (and (= (size!20273 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20273 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20273 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742367 () Bool)

(assert (=> b!742367 (= e!414898 (not e!414902))))

(declare-fun res!499686 () Bool)

(assert (=> b!742367 (=> res!499686 e!414902)))

(get-info :version)

(assert (=> b!742367 (= res!499686 (or (not ((_ is Intermediate!7459) lt!329800)) (bvslt x!1131 (x!63202 lt!329800)) (not (= x!1131 (x!63202 lt!329800))) (not (= index!1321 (index!32205 lt!329800)))))))

(declare-fun e!414903 () Bool)

(assert (=> b!742367 e!414903))

(declare-fun res!499681 () Bool)

(assert (=> b!742367 (=> (not res!499681) (not e!414903))))

(assert (=> b!742367 (= res!499681 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25398 0))(
  ( (Unit!25399) )
))
(declare-fun lt!329807 () Unit!25398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25398)

(assert (=> b!742367 (= lt!329807 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742368 () Bool)

(assert (=> b!742368 (= e!414902 (or (not (= (select (store (arr!19852 a!3186) i!1173 k0!2102) index!1321) lt!329802)) (undefined!8271 lt!329800) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!742369 () Bool)

(assert (=> b!742369 (= e!414901 e!414895)))

(declare-fun res!499691 () Bool)

(assert (=> b!742369 (=> (not res!499691) (not e!414895))))

(assert (=> b!742369 (= res!499691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19852 a!3186) j!159) mask!3328) (select (arr!19852 a!3186) j!159) a!3186 mask!3328) lt!329803))))

(assert (=> b!742369 (= lt!329803 (Intermediate!7459 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742370 () Bool)

(assert (=> b!742370 (= e!414903 e!414897)))

(declare-fun res!499679 () Bool)

(assert (=> b!742370 (=> (not res!499679) (not e!414897))))

(assert (=> b!742370 (= res!499679 (= (seekEntryOrOpen!0 (select (arr!19852 a!3186) j!159) a!3186 mask!3328) lt!329801))))

(assert (=> b!742370 (= lt!329801 (Found!7459 j!159))))

(assert (= (and start!65358 res!499690) b!742358))

(assert (= (and b!742358 res!499684) b!742362))

(assert (= (and b!742362 res!499689) b!742366))

(assert (= (and b!742366 res!499692) b!742363))

(assert (= (and b!742363 res!499688) b!742355))

(assert (= (and b!742355 res!499685) b!742359))

(assert (= (and b!742359 res!499687) b!742353))

(assert (= (and b!742353 res!499695) b!742365))

(assert (= (and b!742365 res!499682) b!742369))

(assert (= (and b!742369 res!499691) b!742361))

(assert (= (and b!742361 res!499683) b!742357))

(assert (= (and b!742357 c!81717) b!742352))

(assert (= (and b!742357 (not c!81717)) b!742354))

(assert (= (and b!742357 res!499694) b!742360))

(assert (= (and b!742360 res!499680) b!742367))

(assert (= (and b!742367 res!499681) b!742370))

(assert (= (and b!742370 res!499679) b!742356))

(assert (= (and b!742367 (not res!499686)) b!742364))

(assert (= (and b!742364 (not res!499693)) b!742368))

(declare-fun m!693307 () Bool)

(assert (=> b!742369 m!693307))

(assert (=> b!742369 m!693307))

(declare-fun m!693309 () Bool)

(assert (=> b!742369 m!693309))

(assert (=> b!742369 m!693309))

(assert (=> b!742369 m!693307))

(declare-fun m!693311 () Bool)

(assert (=> b!742369 m!693311))

(assert (=> b!742356 m!693307))

(assert (=> b!742356 m!693307))

(declare-fun m!693313 () Bool)

(assert (=> b!742356 m!693313))

(declare-fun m!693315 () Bool)

(assert (=> b!742363 m!693315))

(declare-fun m!693317 () Bool)

(assert (=> b!742367 m!693317))

(declare-fun m!693319 () Bool)

(assert (=> b!742367 m!693319))

(assert (=> b!742370 m!693307))

(assert (=> b!742370 m!693307))

(declare-fun m!693321 () Bool)

(assert (=> b!742370 m!693321))

(declare-fun m!693323 () Bool)

(assert (=> b!742360 m!693323))

(declare-fun m!693325 () Bool)

(assert (=> b!742360 m!693325))

(declare-fun m!693327 () Bool)

(assert (=> b!742360 m!693327))

(declare-fun m!693329 () Bool)

(assert (=> b!742360 m!693329))

(assert (=> b!742360 m!693329))

(declare-fun m!693331 () Bool)

(assert (=> b!742360 m!693331))

(assert (=> b!742364 m!693307))

(assert (=> b!742364 m!693307))

(declare-fun m!693333 () Bool)

(assert (=> b!742364 m!693333))

(declare-fun m!693335 () Bool)

(assert (=> b!742353 m!693335))

(declare-fun m!693337 () Bool)

(assert (=> b!742361 m!693337))

(declare-fun m!693339 () Bool)

(assert (=> b!742355 m!693339))

(declare-fun m!693341 () Bool)

(assert (=> b!742359 m!693341))

(assert (=> b!742354 m!693307))

(assert (=> b!742354 m!693307))

(assert (=> b!742354 m!693333))

(declare-fun m!693343 () Bool)

(assert (=> start!65358 m!693343))

(declare-fun m!693345 () Bool)

(assert (=> start!65358 m!693345))

(assert (=> b!742352 m!693307))

(assert (=> b!742352 m!693307))

(declare-fun m!693347 () Bool)

(assert (=> b!742352 m!693347))

(assert (=> b!742368 m!693325))

(declare-fun m!693349 () Bool)

(assert (=> b!742368 m!693349))

(assert (=> b!742362 m!693307))

(assert (=> b!742362 m!693307))

(declare-fun m!693351 () Bool)

(assert (=> b!742362 m!693351))

(declare-fun m!693353 () Bool)

(assert (=> b!742366 m!693353))

(check-sat (not b!742360) (not b!742359) (not b!742353) (not b!742370) (not b!742364) (not b!742363) (not b!742355) (not b!742366) (not b!742367) (not b!742356) (not b!742352) (not b!742369) (not b!742354) (not b!742362) (not start!65358))
(check-sat)
