; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67768 () Bool)

(assert start!67768)

(declare-fun b!786485 () Bool)

(declare-fun res!532674 () Bool)

(declare-fun e!437227 () Bool)

(assert (=> b!786485 (=> (not res!532674) (not e!437227))))

(declare-datatypes ((array!42763 0))(
  ( (array!42764 (arr!20466 (Array (_ BitVec 32) (_ BitVec 64))) (size!20887 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42763)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786485 (= res!532674 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!786486 () Bool)

(declare-datatypes ((SeekEntryResult!8073 0))(
  ( (MissingZero!8073 (index!34659 (_ BitVec 32))) (Found!8073 (index!34660 (_ BitVec 32))) (Intermediate!8073 (undefined!8885 Bool) (index!34661 (_ BitVec 32)) (x!65630 (_ BitVec 32))) (Undefined!8073) (MissingVacant!8073 (index!34662 (_ BitVec 32))) )
))
(declare-fun lt!350788 () SeekEntryResult!8073)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!437226 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42763 (_ BitVec 32)) SeekEntryResult!8073)

(assert (=> b!786486 (= e!437226 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20466 a!3186) j!159) a!3186 mask!3328) lt!350788))))

(declare-fun b!786487 () Bool)

(declare-fun e!437219 () Bool)

(declare-fun e!437230 () Bool)

(assert (=> b!786487 (= e!437219 e!437230)))

(declare-fun res!532681 () Bool)

(assert (=> b!786487 (=> res!532681 e!437230)))

(declare-fun lt!350791 () SeekEntryResult!8073)

(assert (=> b!786487 (= res!532681 (not (= lt!350791 lt!350788)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!786487 (= lt!350791 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20466 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786488 () Bool)

(declare-fun e!437225 () Bool)

(declare-fun e!437228 () Bool)

(assert (=> b!786488 (= e!437225 e!437228)))

(declare-fun res!532676 () Bool)

(assert (=> b!786488 (=> (not res!532676) (not e!437228))))

(declare-fun lt!350795 () SeekEntryResult!8073)

(declare-fun lt!350790 () SeekEntryResult!8073)

(assert (=> b!786488 (= res!532676 (= lt!350795 lt!350790))))

(declare-fun lt!350787 () (_ BitVec 64))

(declare-fun lt!350786 () array!42763)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42763 (_ BitVec 32)) SeekEntryResult!8073)

(assert (=> b!786488 (= lt!350790 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350787 lt!350786 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786488 (= lt!350795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350787 mask!3328) lt!350787 lt!350786 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786488 (= lt!350787 (select (store (arr!20466 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786488 (= lt!350786 (array!42764 (store (arr!20466 a!3186) i!1173 k!2102) (size!20887 a!3186)))))

(declare-fun b!786489 () Bool)

(declare-fun res!532673 () Bool)

(assert (=> b!786489 (=> (not res!532673) (not e!437227))))

(assert (=> b!786489 (= res!532673 (and (= (size!20887 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20887 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20887 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786490 () Bool)

(declare-fun res!532684 () Bool)

(declare-fun e!437221 () Bool)

(assert (=> b!786490 (=> (not res!532684) (not e!437221))))

(declare-datatypes ((List!14521 0))(
  ( (Nil!14518) (Cons!14517 (h!15640 (_ BitVec 64)) (t!20844 List!14521)) )
))
(declare-fun arrayNoDuplicates!0 (array!42763 (_ BitVec 32) List!14521) Bool)

(assert (=> b!786490 (= res!532684 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14518))))

(declare-fun b!786491 () Bool)

(declare-fun res!532678 () Bool)

(declare-fun e!437220 () Bool)

(assert (=> b!786491 (=> (not res!532678) (not e!437220))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42763 (_ BitVec 32)) SeekEntryResult!8073)

(assert (=> b!786491 (= res!532678 (= (seekEntryOrOpen!0 lt!350787 lt!350786 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350787 lt!350786 mask!3328)))))

(declare-fun b!786492 () Bool)

(declare-fun e!437222 () Bool)

(assert (=> b!786492 (= e!437222 true)))

(assert (=> b!786492 e!437220))

(declare-fun res!532669 () Bool)

(assert (=> b!786492 (=> (not res!532669) (not e!437220))))

(declare-fun lt!350794 () (_ BitVec 64))

(assert (=> b!786492 (= res!532669 (= lt!350794 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27202 0))(
  ( (Unit!27203) )
))
(declare-fun lt!350793 () Unit!27202)

(declare-fun e!437224 () Unit!27202)

(assert (=> b!786492 (= lt!350793 e!437224)))

(declare-fun c!87318 () Bool)

(assert (=> b!786492 (= c!87318 (= lt!350794 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786493 () Bool)

(declare-fun res!532675 () Bool)

(assert (=> b!786493 (=> (not res!532675) (not e!437221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42763 (_ BitVec 32)) Bool)

(assert (=> b!786493 (= res!532675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786494 () Bool)

(assert (=> b!786494 (= e!437230 e!437222)))

(declare-fun res!532671 () Bool)

(assert (=> b!786494 (=> res!532671 e!437222)))

(assert (=> b!786494 (= res!532671 (= lt!350794 lt!350787))))

(assert (=> b!786494 (= lt!350794 (select (store (arr!20466 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786495 () Bool)

(assert (=> b!786495 (= e!437228 (not e!437219))))

(declare-fun res!532680 () Bool)

(assert (=> b!786495 (=> res!532680 e!437219)))

(assert (=> b!786495 (= res!532680 (or (not (is-Intermediate!8073 lt!350790)) (bvslt x!1131 (x!65630 lt!350790)) (not (= x!1131 (x!65630 lt!350790))) (not (= index!1321 (index!34661 lt!350790)))))))

(assert (=> b!786495 e!437226))

(declare-fun res!532677 () Bool)

(assert (=> b!786495 (=> (not res!532677) (not e!437226))))

(declare-fun lt!350797 () SeekEntryResult!8073)

(assert (=> b!786495 (= res!532677 (= lt!350797 lt!350788))))

(assert (=> b!786495 (= lt!350788 (Found!8073 j!159))))

(assert (=> b!786495 (= lt!350797 (seekEntryOrOpen!0 (select (arr!20466 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786495 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350792 () Unit!27202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27202)

(assert (=> b!786495 (= lt!350792 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!532670 () Bool)

(assert (=> start!67768 (=> (not res!532670) (not e!437227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67768 (= res!532670 (validMask!0 mask!3328))))

(assert (=> start!67768 e!437227))

(assert (=> start!67768 true))

(declare-fun array_inv!16240 (array!42763) Bool)

(assert (=> start!67768 (array_inv!16240 a!3186)))

(declare-fun b!786496 () Bool)

(declare-fun res!532667 () Bool)

(assert (=> b!786496 (=> (not res!532667) (not e!437227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786496 (= res!532667 (validKeyInArray!0 k!2102))))

(declare-fun b!786497 () Bool)

(assert (=> b!786497 (= e!437221 e!437225)))

(declare-fun res!532666 () Bool)

(assert (=> b!786497 (=> (not res!532666) (not e!437225))))

(declare-fun lt!350789 () SeekEntryResult!8073)

(assert (=> b!786497 (= res!532666 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20466 a!3186) j!159) mask!3328) (select (arr!20466 a!3186) j!159) a!3186 mask!3328) lt!350789))))

(assert (=> b!786497 (= lt!350789 (Intermediate!8073 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!437223 () Bool)

(declare-fun b!786498 () Bool)

(assert (=> b!786498 (= e!437223 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20466 a!3186) j!159) a!3186 mask!3328) (Found!8073 j!159)))))

(declare-fun b!786499 () Bool)

(declare-fun res!532683 () Bool)

(assert (=> b!786499 (=> (not res!532683) (not e!437227))))

(assert (=> b!786499 (= res!532683 (validKeyInArray!0 (select (arr!20466 a!3186) j!159)))))

(declare-fun b!786500 () Bool)

(declare-fun res!532679 () Bool)

(assert (=> b!786500 (=> (not res!532679) (not e!437225))))

(assert (=> b!786500 (= res!532679 e!437223)))

(declare-fun c!87317 () Bool)

(assert (=> b!786500 (= c!87317 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786501 () Bool)

(declare-fun Unit!27204 () Unit!27202)

(assert (=> b!786501 (= e!437224 Unit!27204)))

(declare-fun b!786502 () Bool)

(assert (=> b!786502 (= e!437227 e!437221)))

(declare-fun res!532668 () Bool)

(assert (=> b!786502 (=> (not res!532668) (not e!437221))))

(declare-fun lt!350796 () SeekEntryResult!8073)

(assert (=> b!786502 (= res!532668 (or (= lt!350796 (MissingZero!8073 i!1173)) (= lt!350796 (MissingVacant!8073 i!1173))))))

(assert (=> b!786502 (= lt!350796 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786503 () Bool)

(assert (=> b!786503 (= e!437223 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20466 a!3186) j!159) a!3186 mask!3328) lt!350789))))

(declare-fun b!786504 () Bool)

(declare-fun res!532682 () Bool)

(assert (=> b!786504 (=> (not res!532682) (not e!437225))))

(assert (=> b!786504 (= res!532682 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20466 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786505 () Bool)

(declare-fun res!532672 () Bool)

(assert (=> b!786505 (=> (not res!532672) (not e!437221))))

(assert (=> b!786505 (= res!532672 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20887 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20887 a!3186))))))

(declare-fun b!786506 () Bool)

(assert (=> b!786506 (= e!437220 (= lt!350797 lt!350791))))

(declare-fun b!786507 () Bool)

(declare-fun Unit!27205 () Unit!27202)

(assert (=> b!786507 (= e!437224 Unit!27205)))

(assert (=> b!786507 false))

(assert (= (and start!67768 res!532670) b!786489))

(assert (= (and b!786489 res!532673) b!786499))

(assert (= (and b!786499 res!532683) b!786496))

(assert (= (and b!786496 res!532667) b!786485))

(assert (= (and b!786485 res!532674) b!786502))

(assert (= (and b!786502 res!532668) b!786493))

(assert (= (and b!786493 res!532675) b!786490))

(assert (= (and b!786490 res!532684) b!786505))

(assert (= (and b!786505 res!532672) b!786497))

(assert (= (and b!786497 res!532666) b!786504))

(assert (= (and b!786504 res!532682) b!786500))

(assert (= (and b!786500 c!87317) b!786503))

(assert (= (and b!786500 (not c!87317)) b!786498))

(assert (= (and b!786500 res!532679) b!786488))

(assert (= (and b!786488 res!532676) b!786495))

(assert (= (and b!786495 res!532677) b!786486))

(assert (= (and b!786495 (not res!532680)) b!786487))

(assert (= (and b!786487 (not res!532681)) b!786494))

(assert (= (and b!786494 (not res!532671)) b!786492))

(assert (= (and b!786492 c!87318) b!786507))

(assert (= (and b!786492 (not c!87318)) b!786501))

(assert (= (and b!786492 res!532669) b!786491))

(assert (= (and b!786491 res!532678) b!786506))

(declare-fun m!728341 () Bool)

(assert (=> b!786496 m!728341))

(declare-fun m!728343 () Bool)

(assert (=> b!786504 m!728343))

(declare-fun m!728345 () Bool)

(assert (=> b!786486 m!728345))

(assert (=> b!786486 m!728345))

(declare-fun m!728347 () Bool)

(assert (=> b!786486 m!728347))

(declare-fun m!728349 () Bool)

(assert (=> b!786490 m!728349))

(assert (=> b!786503 m!728345))

(assert (=> b!786503 m!728345))

(declare-fun m!728351 () Bool)

(assert (=> b!786503 m!728351))

(declare-fun m!728353 () Bool)

(assert (=> b!786488 m!728353))

(declare-fun m!728355 () Bool)

(assert (=> b!786488 m!728355))

(declare-fun m!728357 () Bool)

(assert (=> b!786488 m!728357))

(declare-fun m!728359 () Bool)

(assert (=> b!786488 m!728359))

(declare-fun m!728361 () Bool)

(assert (=> b!786488 m!728361))

(assert (=> b!786488 m!728355))

(assert (=> b!786495 m!728345))

(assert (=> b!786495 m!728345))

(declare-fun m!728363 () Bool)

(assert (=> b!786495 m!728363))

(declare-fun m!728365 () Bool)

(assert (=> b!786495 m!728365))

(declare-fun m!728367 () Bool)

(assert (=> b!786495 m!728367))

(declare-fun m!728369 () Bool)

(assert (=> b!786493 m!728369))

(assert (=> b!786494 m!728359))

(declare-fun m!728371 () Bool)

(assert (=> b!786494 m!728371))

(assert (=> b!786498 m!728345))

(assert (=> b!786498 m!728345))

(declare-fun m!728373 () Bool)

(assert (=> b!786498 m!728373))

(declare-fun m!728375 () Bool)

(assert (=> b!786491 m!728375))

(declare-fun m!728377 () Bool)

(assert (=> b!786491 m!728377))

(assert (=> b!786499 m!728345))

(assert (=> b!786499 m!728345))

(declare-fun m!728379 () Bool)

(assert (=> b!786499 m!728379))

(declare-fun m!728381 () Bool)

(assert (=> b!786485 m!728381))

(assert (=> b!786497 m!728345))

(assert (=> b!786497 m!728345))

(declare-fun m!728383 () Bool)

(assert (=> b!786497 m!728383))

(assert (=> b!786497 m!728383))

(assert (=> b!786497 m!728345))

(declare-fun m!728385 () Bool)

(assert (=> b!786497 m!728385))

(assert (=> b!786487 m!728345))

(assert (=> b!786487 m!728345))

(assert (=> b!786487 m!728373))

(declare-fun m!728387 () Bool)

(assert (=> start!67768 m!728387))

(declare-fun m!728389 () Bool)

(assert (=> start!67768 m!728389))

(declare-fun m!728391 () Bool)

(assert (=> b!786502 m!728391))

(push 1)

