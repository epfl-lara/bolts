; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67794 () Bool)

(assert start!67794)

(declare-fun b!787382 () Bool)

(declare-fun e!437689 () Bool)

(assert (=> b!787382 (= e!437689 true)))

(declare-fun e!437688 () Bool)

(assert (=> b!787382 e!437688))

(declare-fun res!533419 () Bool)

(assert (=> b!787382 (=> (not res!533419) (not e!437688))))

(declare-fun lt!351260 () (_ BitVec 64))

(assert (=> b!787382 (= res!533419 (= lt!351260 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27254 0))(
  ( (Unit!27255) )
))
(declare-fun lt!351257 () Unit!27254)

(declare-fun e!437692 () Unit!27254)

(assert (=> b!787382 (= lt!351257 e!437692)))

(declare-fun c!87395 () Bool)

(assert (=> b!787382 (= c!87395 (= lt!351260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787383 () Bool)

(declare-fun res!533411 () Bool)

(declare-fun e!437698 () Bool)

(assert (=> b!787383 (=> (not res!533411) (not e!437698))))

(declare-datatypes ((array!42789 0))(
  ( (array!42790 (arr!20479 (Array (_ BitVec 32) (_ BitVec 64))) (size!20900 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42789)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42789 (_ BitVec 32)) Bool)

(assert (=> b!787383 (= res!533411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787384 () Bool)

(declare-fun e!437690 () Bool)

(assert (=> b!787384 (= e!437690 e!437698)))

(declare-fun res!533420 () Bool)

(assert (=> b!787384 (=> (not res!533420) (not e!437698))))

(declare-datatypes ((SeekEntryResult!8086 0))(
  ( (MissingZero!8086 (index!34711 (_ BitVec 32))) (Found!8086 (index!34712 (_ BitVec 32))) (Intermediate!8086 (undefined!8898 Bool) (index!34713 (_ BitVec 32)) (x!65675 (_ BitVec 32))) (Undefined!8086) (MissingVacant!8086 (index!34714 (_ BitVec 32))) )
))
(declare-fun lt!351258 () SeekEntryResult!8086)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787384 (= res!533420 (or (= lt!351258 (MissingZero!8086 i!1173)) (= lt!351258 (MissingVacant!8086 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42789 (_ BitVec 32)) SeekEntryResult!8086)

(assert (=> b!787384 (= lt!351258 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!787385 () Bool)

(declare-fun res!533425 () Bool)

(assert (=> b!787385 (=> (not res!533425) (not e!437690))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!787385 (= res!533425 (and (= (size!20900 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20900 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20900 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!533408 () Bool)

(assert (=> start!67794 (=> (not res!533408) (not e!437690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67794 (= res!533408 (validMask!0 mask!3328))))

(assert (=> start!67794 e!437690))

(assert (=> start!67794 true))

(declare-fun array_inv!16253 (array!42789) Bool)

(assert (=> start!67794 (array_inv!16253 a!3186)))

(declare-fun b!787386 () Bool)

(declare-fun Unit!27256 () Unit!27254)

(assert (=> b!787386 (= e!437692 Unit!27256)))

(assert (=> b!787386 false))

(declare-fun b!787387 () Bool)

(declare-fun lt!351261 () SeekEntryResult!8086)

(declare-fun lt!351259 () SeekEntryResult!8086)

(assert (=> b!787387 (= e!437688 (= lt!351261 lt!351259))))

(declare-fun b!787388 () Bool)

(declare-fun e!437696 () Bool)

(assert (=> b!787388 (= e!437698 e!437696)))

(declare-fun res!533409 () Bool)

(assert (=> b!787388 (=> (not res!533409) (not e!437696))))

(declare-fun lt!351262 () SeekEntryResult!8086)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42789 (_ BitVec 32)) SeekEntryResult!8086)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787388 (= res!533409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20479 a!3186) j!159) mask!3328) (select (arr!20479 a!3186) j!159) a!3186 mask!3328) lt!351262))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787388 (= lt!351262 (Intermediate!8086 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787389 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!437693 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42789 (_ BitVec 32)) SeekEntryResult!8086)

(assert (=> b!787389 (= e!437693 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20479 a!3186) j!159) a!3186 mask!3328) (Found!8086 j!159)))))

(declare-fun e!437687 () Bool)

(declare-fun b!787390 () Bool)

(declare-fun lt!351263 () SeekEntryResult!8086)

(assert (=> b!787390 (= e!437687 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20479 a!3186) j!159) a!3186 mask!3328) lt!351263))))

(declare-fun b!787391 () Bool)

(declare-fun res!533416 () Bool)

(assert (=> b!787391 (=> (not res!533416) (not e!437690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787391 (= res!533416 (validKeyInArray!0 (select (arr!20479 a!3186) j!159)))))

(declare-fun b!787392 () Bool)

(declare-fun res!533407 () Bool)

(assert (=> b!787392 (=> (not res!533407) (not e!437698))))

(assert (=> b!787392 (= res!533407 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20900 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20900 a!3186))))))

(declare-fun b!787393 () Bool)

(declare-fun res!533413 () Bool)

(assert (=> b!787393 (=> (not res!533413) (not e!437696))))

(assert (=> b!787393 (= res!533413 e!437693)))

(declare-fun c!87396 () Bool)

(assert (=> b!787393 (= c!87396 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787394 () Bool)

(declare-fun Unit!27257 () Unit!27254)

(assert (=> b!787394 (= e!437692 Unit!27257)))

(declare-fun b!787395 () Bool)

(declare-fun e!437695 () Bool)

(declare-fun e!437691 () Bool)

(assert (=> b!787395 (= e!437695 (not e!437691))))

(declare-fun res!533418 () Bool)

(assert (=> b!787395 (=> res!533418 e!437691)))

(declare-fun lt!351254 () SeekEntryResult!8086)

(get-info :version)

(assert (=> b!787395 (= res!533418 (or (not ((_ is Intermediate!8086) lt!351254)) (bvslt x!1131 (x!65675 lt!351254)) (not (= x!1131 (x!65675 lt!351254))) (not (= index!1321 (index!34713 lt!351254)))))))

(assert (=> b!787395 e!437687))

(declare-fun res!533423 () Bool)

(assert (=> b!787395 (=> (not res!533423) (not e!437687))))

(assert (=> b!787395 (= res!533423 (= lt!351261 lt!351263))))

(assert (=> b!787395 (= lt!351263 (Found!8086 j!159))))

(assert (=> b!787395 (= lt!351261 (seekEntryOrOpen!0 (select (arr!20479 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787395 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351256 () Unit!27254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27254)

(assert (=> b!787395 (= lt!351256 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787396 () Bool)

(assert (=> b!787396 (= e!437693 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20479 a!3186) j!159) a!3186 mask!3328) lt!351262))))

(declare-fun b!787397 () Bool)

(declare-fun res!533422 () Bool)

(assert (=> b!787397 (=> (not res!533422) (not e!437696))))

(assert (=> b!787397 (= res!533422 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20479 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787398 () Bool)

(declare-fun e!437697 () Bool)

(assert (=> b!787398 (= e!437691 e!437697)))

(declare-fun res!533417 () Bool)

(assert (=> b!787398 (=> res!533417 e!437697)))

(assert (=> b!787398 (= res!533417 (not (= lt!351259 lt!351263)))))

(assert (=> b!787398 (= lt!351259 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20479 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787399 () Bool)

(declare-fun res!533421 () Bool)

(assert (=> b!787399 (=> (not res!533421) (not e!437698))))

(declare-datatypes ((List!14534 0))(
  ( (Nil!14531) (Cons!14530 (h!15653 (_ BitVec 64)) (t!20857 List!14534)) )
))
(declare-fun arrayNoDuplicates!0 (array!42789 (_ BitVec 32) List!14534) Bool)

(assert (=> b!787399 (= res!533421 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14531))))

(declare-fun b!787400 () Bool)

(declare-fun res!533412 () Bool)

(assert (=> b!787400 (=> (not res!533412) (not e!437688))))

(declare-fun lt!351264 () array!42789)

(declare-fun lt!351265 () (_ BitVec 64))

(assert (=> b!787400 (= res!533412 (= (seekEntryOrOpen!0 lt!351265 lt!351264 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351265 lt!351264 mask!3328)))))

(declare-fun b!787401 () Bool)

(assert (=> b!787401 (= e!437697 e!437689)))

(declare-fun res!533415 () Bool)

(assert (=> b!787401 (=> res!533415 e!437689)))

(assert (=> b!787401 (= res!533415 (= lt!351260 lt!351265))))

(assert (=> b!787401 (= lt!351260 (select (store (arr!20479 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!787402 () Bool)

(declare-fun res!533410 () Bool)

(assert (=> b!787402 (=> (not res!533410) (not e!437690))))

(assert (=> b!787402 (= res!533410 (validKeyInArray!0 k0!2102))))

(declare-fun b!787403 () Bool)

(declare-fun res!533424 () Bool)

(assert (=> b!787403 (=> (not res!533424) (not e!437690))))

(declare-fun arrayContainsKey!0 (array!42789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787403 (= res!533424 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787404 () Bool)

(assert (=> b!787404 (= e!437696 e!437695)))

(declare-fun res!533414 () Bool)

(assert (=> b!787404 (=> (not res!533414) (not e!437695))))

(declare-fun lt!351255 () SeekEntryResult!8086)

(assert (=> b!787404 (= res!533414 (= lt!351255 lt!351254))))

(assert (=> b!787404 (= lt!351254 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351265 lt!351264 mask!3328))))

(assert (=> b!787404 (= lt!351255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351265 mask!3328) lt!351265 lt!351264 mask!3328))))

(assert (=> b!787404 (= lt!351265 (select (store (arr!20479 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!787404 (= lt!351264 (array!42790 (store (arr!20479 a!3186) i!1173 k0!2102) (size!20900 a!3186)))))

(assert (= (and start!67794 res!533408) b!787385))

(assert (= (and b!787385 res!533425) b!787391))

(assert (= (and b!787391 res!533416) b!787402))

(assert (= (and b!787402 res!533410) b!787403))

(assert (= (and b!787403 res!533424) b!787384))

(assert (= (and b!787384 res!533420) b!787383))

(assert (= (and b!787383 res!533411) b!787399))

(assert (= (and b!787399 res!533421) b!787392))

(assert (= (and b!787392 res!533407) b!787388))

(assert (= (and b!787388 res!533409) b!787397))

(assert (= (and b!787397 res!533422) b!787393))

(assert (= (and b!787393 c!87396) b!787396))

(assert (= (and b!787393 (not c!87396)) b!787389))

(assert (= (and b!787393 res!533413) b!787404))

(assert (= (and b!787404 res!533414) b!787395))

(assert (= (and b!787395 res!533423) b!787390))

(assert (= (and b!787395 (not res!533418)) b!787398))

(assert (= (and b!787398 (not res!533417)) b!787401))

(assert (= (and b!787401 (not res!533415)) b!787382))

(assert (= (and b!787382 c!87395) b!787386))

(assert (= (and b!787382 (not c!87395)) b!787394))

(assert (= (and b!787382 res!533419) b!787400))

(assert (= (and b!787400 res!533412) b!787387))

(declare-fun m!729017 () Bool)

(assert (=> b!787401 m!729017))

(declare-fun m!729019 () Bool)

(assert (=> b!787401 m!729019))

(declare-fun m!729021 () Bool)

(assert (=> b!787388 m!729021))

(assert (=> b!787388 m!729021))

(declare-fun m!729023 () Bool)

(assert (=> b!787388 m!729023))

(assert (=> b!787388 m!729023))

(assert (=> b!787388 m!729021))

(declare-fun m!729025 () Bool)

(assert (=> b!787388 m!729025))

(declare-fun m!729027 () Bool)

(assert (=> b!787402 m!729027))

(assert (=> b!787398 m!729021))

(assert (=> b!787398 m!729021))

(declare-fun m!729029 () Bool)

(assert (=> b!787398 m!729029))

(declare-fun m!729031 () Bool)

(assert (=> b!787397 m!729031))

(declare-fun m!729033 () Bool)

(assert (=> b!787384 m!729033))

(declare-fun m!729035 () Bool)

(assert (=> b!787404 m!729035))

(declare-fun m!729037 () Bool)

(assert (=> b!787404 m!729037))

(declare-fun m!729039 () Bool)

(assert (=> b!787404 m!729039))

(assert (=> b!787404 m!729017))

(declare-fun m!729041 () Bool)

(assert (=> b!787404 m!729041))

(assert (=> b!787404 m!729035))

(assert (=> b!787390 m!729021))

(assert (=> b!787390 m!729021))

(declare-fun m!729043 () Bool)

(assert (=> b!787390 m!729043))

(assert (=> b!787395 m!729021))

(assert (=> b!787395 m!729021))

(declare-fun m!729045 () Bool)

(assert (=> b!787395 m!729045))

(declare-fun m!729047 () Bool)

(assert (=> b!787395 m!729047))

(declare-fun m!729049 () Bool)

(assert (=> b!787395 m!729049))

(declare-fun m!729051 () Bool)

(assert (=> b!787403 m!729051))

(declare-fun m!729053 () Bool)

(assert (=> b!787399 m!729053))

(assert (=> b!787391 m!729021))

(assert (=> b!787391 m!729021))

(declare-fun m!729055 () Bool)

(assert (=> b!787391 m!729055))

(declare-fun m!729057 () Bool)

(assert (=> b!787400 m!729057))

(declare-fun m!729059 () Bool)

(assert (=> b!787400 m!729059))

(declare-fun m!729061 () Bool)

(assert (=> start!67794 m!729061))

(declare-fun m!729063 () Bool)

(assert (=> start!67794 m!729063))

(assert (=> b!787396 m!729021))

(assert (=> b!787396 m!729021))

(declare-fun m!729065 () Bool)

(assert (=> b!787396 m!729065))

(assert (=> b!787389 m!729021))

(assert (=> b!787389 m!729021))

(assert (=> b!787389 m!729029))

(declare-fun m!729067 () Bool)

(assert (=> b!787383 m!729067))

(check-sat (not b!787391) (not b!787404) (not b!787388) (not b!787389) (not b!787402) (not b!787400) (not b!787396) (not b!787395) (not start!67794) (not b!787399) (not b!787384) (not b!787403) (not b!787398) (not b!787383) (not b!787390))
(check-sat)
