; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67188 () Bool)

(assert start!67188)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42498 0))(
  ( (array!42499 (arr!20341 (Array (_ BitVec 32) (_ BitVec 64))) (size!20762 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42498)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!432103 () Bool)

(declare-fun b!776479 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7948 0))(
  ( (MissingZero!7948 (index!34159 (_ BitVec 32))) (Found!7948 (index!34160 (_ BitVec 32))) (Intermediate!7948 (undefined!8760 Bool) (index!34161 (_ BitVec 32)) (x!65124 (_ BitVec 32))) (Undefined!7948) (MissingVacant!7948 (index!34162 (_ BitVec 32))) )
))
(declare-fun lt!345975 () SeekEntryResult!7948)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42498 (_ BitVec 32)) SeekEntryResult!7948)

(assert (=> b!776479 (= e!432103 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20341 a!3186) j!159) a!3186 mask!3328) lt!345975))))

(declare-fun b!776480 () Bool)

(declare-fun lt!345974 () SeekEntryResult!7948)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!432106 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42498 (_ BitVec 32)) SeekEntryResult!7948)

(assert (=> b!776480 (= e!432106 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20341 a!3186) j!159) a!3186 mask!3328) lt!345974))))

(declare-fun b!776481 () Bool)

(declare-fun e!432107 () Bool)

(declare-fun e!432108 () Bool)

(assert (=> b!776481 (= e!432107 e!432108)))

(declare-fun res!525435 () Bool)

(assert (=> b!776481 (=> (not res!525435) (not e!432108))))

(declare-fun lt!345971 () SeekEntryResult!7948)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776481 (= res!525435 (or (= lt!345971 (MissingZero!7948 i!1173)) (= lt!345971 (MissingVacant!7948 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42498 (_ BitVec 32)) SeekEntryResult!7948)

(assert (=> b!776481 (= lt!345971 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!776482 () Bool)

(declare-fun res!525433 () Bool)

(assert (=> b!776482 (=> (not res!525433) (not e!432108))))

(declare-datatypes ((List!14396 0))(
  ( (Nil!14393) (Cons!14392 (h!15500 (_ BitVec 64)) (t!20719 List!14396)) )
))
(declare-fun arrayNoDuplicates!0 (array!42498 (_ BitVec 32) List!14396) Bool)

(assert (=> b!776482 (= res!525433 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14393))))

(declare-fun b!776483 () Bool)

(declare-fun e!432109 () Bool)

(assert (=> b!776483 (= e!432109 e!432103)))

(declare-fun res!525438 () Bool)

(assert (=> b!776483 (=> (not res!525438) (not e!432103))))

(assert (=> b!776483 (= res!525438 (= (seekEntryOrOpen!0 (select (arr!20341 a!3186) j!159) a!3186 mask!3328) lt!345975))))

(assert (=> b!776483 (= lt!345975 (Found!7948 j!159))))

(declare-fun b!776484 () Bool)

(declare-fun e!432102 () Bool)

(declare-fun e!432105 () Bool)

(assert (=> b!776484 (= e!432102 e!432105)))

(declare-fun res!525440 () Bool)

(assert (=> b!776484 (=> (not res!525440) (not e!432105))))

(declare-fun lt!345979 () SeekEntryResult!7948)

(declare-fun lt!345973 () SeekEntryResult!7948)

(assert (=> b!776484 (= res!525440 (= lt!345979 lt!345973))))

(declare-fun lt!345972 () (_ BitVec 64))

(declare-fun lt!345977 () array!42498)

(assert (=> b!776484 (= lt!345973 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345972 lt!345977 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776484 (= lt!345979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345972 mask!3328) lt!345972 lt!345977 mask!3328))))

(assert (=> b!776484 (= lt!345972 (select (store (arr!20341 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!776484 (= lt!345977 (array!42499 (store (arr!20341 a!3186) i!1173 k0!2102) (size!20762 a!3186)))))

(declare-fun res!525428 () Bool)

(assert (=> start!67188 (=> (not res!525428) (not e!432107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67188 (= res!525428 (validMask!0 mask!3328))))

(assert (=> start!67188 e!432107))

(assert (=> start!67188 true))

(declare-fun array_inv!16115 (array!42498) Bool)

(assert (=> start!67188 (array_inv!16115 a!3186)))

(declare-fun b!776485 () Bool)

(declare-fun res!525442 () Bool)

(assert (=> b!776485 (=> (not res!525442) (not e!432107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776485 (= res!525442 (validKeyInArray!0 (select (arr!20341 a!3186) j!159)))))

(declare-fun b!776486 () Bool)

(declare-fun e!432101 () Bool)

(assert (=> b!776486 (= e!432105 (not e!432101))))

(declare-fun res!525430 () Bool)

(assert (=> b!776486 (=> res!525430 e!432101)))

(get-info :version)

(assert (=> b!776486 (= res!525430 (or (not ((_ is Intermediate!7948) lt!345973)) (bvslt x!1131 (x!65124 lt!345973)) (not (= x!1131 (x!65124 lt!345973))) (not (= index!1321 (index!34161 lt!345973)))))))

(assert (=> b!776486 e!432109))

(declare-fun res!525437 () Bool)

(assert (=> b!776486 (=> (not res!525437) (not e!432109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42498 (_ BitVec 32)) Bool)

(assert (=> b!776486 (= res!525437 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26790 0))(
  ( (Unit!26791) )
))
(declare-fun lt!345976 () Unit!26790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26790)

(assert (=> b!776486 (= lt!345976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776487 () Bool)

(declare-fun res!525439 () Bool)

(assert (=> b!776487 (=> (not res!525439) (not e!432102))))

(assert (=> b!776487 (= res!525439 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20341 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776488 () Bool)

(declare-fun res!525441 () Bool)

(assert (=> b!776488 (=> (not res!525441) (not e!432108))))

(assert (=> b!776488 (= res!525441 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20762 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20762 a!3186))))))

(declare-fun b!776489 () Bool)

(assert (=> b!776489 (= e!432108 e!432102)))

(declare-fun res!525429 () Bool)

(assert (=> b!776489 (=> (not res!525429) (not e!432102))))

(assert (=> b!776489 (= res!525429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20341 a!3186) j!159) mask!3328) (select (arr!20341 a!3186) j!159) a!3186 mask!3328) lt!345974))))

(assert (=> b!776489 (= lt!345974 (Intermediate!7948 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776490 () Bool)

(declare-fun res!525427 () Bool)

(assert (=> b!776490 (=> (not res!525427) (not e!432107))))

(declare-fun arrayContainsKey!0 (array!42498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776490 (= res!525427 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776491 () Bool)

(declare-fun res!525432 () Bool)

(assert (=> b!776491 (=> (not res!525432) (not e!432108))))

(assert (=> b!776491 (= res!525432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776492 () Bool)

(declare-fun res!525434 () Bool)

(assert (=> b!776492 (=> (not res!525434) (not e!432107))))

(assert (=> b!776492 (= res!525434 (and (= (size!20762 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20762 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20762 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776493 () Bool)

(declare-fun res!525431 () Bool)

(assert (=> b!776493 (=> (not res!525431) (not e!432102))))

(assert (=> b!776493 (= res!525431 e!432106)))

(declare-fun c!85926 () Bool)

(assert (=> b!776493 (= c!85926 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776494 () Bool)

(assert (=> b!776494 (= e!432106 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20341 a!3186) j!159) a!3186 mask!3328) (Found!7948 j!159)))))

(declare-fun b!776495 () Bool)

(declare-fun res!525436 () Bool)

(assert (=> b!776495 (=> (not res!525436) (not e!432107))))

(assert (=> b!776495 (= res!525436 (validKeyInArray!0 k0!2102))))

(declare-fun b!776496 () Bool)

(assert (=> b!776496 (= e!432101 true)))

(declare-fun lt!345978 () SeekEntryResult!7948)

(assert (=> b!776496 (= lt!345978 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20341 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67188 res!525428) b!776492))

(assert (= (and b!776492 res!525434) b!776485))

(assert (= (and b!776485 res!525442) b!776495))

(assert (= (and b!776495 res!525436) b!776490))

(assert (= (and b!776490 res!525427) b!776481))

(assert (= (and b!776481 res!525435) b!776491))

(assert (= (and b!776491 res!525432) b!776482))

(assert (= (and b!776482 res!525433) b!776488))

(assert (= (and b!776488 res!525441) b!776489))

(assert (= (and b!776489 res!525429) b!776487))

(assert (= (and b!776487 res!525439) b!776493))

(assert (= (and b!776493 c!85926) b!776480))

(assert (= (and b!776493 (not c!85926)) b!776494))

(assert (= (and b!776493 res!525431) b!776484))

(assert (= (and b!776484 res!525440) b!776486))

(assert (= (and b!776486 res!525437) b!776483))

(assert (= (and b!776483 res!525438) b!776479))

(assert (= (and b!776486 (not res!525430)) b!776496))

(declare-fun m!720611 () Bool)

(assert (=> b!776479 m!720611))

(assert (=> b!776479 m!720611))

(declare-fun m!720613 () Bool)

(assert (=> b!776479 m!720613))

(assert (=> b!776480 m!720611))

(assert (=> b!776480 m!720611))

(declare-fun m!720615 () Bool)

(assert (=> b!776480 m!720615))

(assert (=> b!776489 m!720611))

(assert (=> b!776489 m!720611))

(declare-fun m!720617 () Bool)

(assert (=> b!776489 m!720617))

(assert (=> b!776489 m!720617))

(assert (=> b!776489 m!720611))

(declare-fun m!720619 () Bool)

(assert (=> b!776489 m!720619))

(assert (=> b!776496 m!720611))

(assert (=> b!776496 m!720611))

(declare-fun m!720621 () Bool)

(assert (=> b!776496 m!720621))

(declare-fun m!720623 () Bool)

(assert (=> b!776481 m!720623))

(assert (=> b!776485 m!720611))

(assert (=> b!776485 m!720611))

(declare-fun m!720625 () Bool)

(assert (=> b!776485 m!720625))

(declare-fun m!720627 () Bool)

(assert (=> b!776495 m!720627))

(declare-fun m!720629 () Bool)

(assert (=> b!776486 m!720629))

(declare-fun m!720631 () Bool)

(assert (=> b!776486 m!720631))

(declare-fun m!720633 () Bool)

(assert (=> start!67188 m!720633))

(declare-fun m!720635 () Bool)

(assert (=> start!67188 m!720635))

(declare-fun m!720637 () Bool)

(assert (=> b!776484 m!720637))

(declare-fun m!720639 () Bool)

(assert (=> b!776484 m!720639))

(declare-fun m!720641 () Bool)

(assert (=> b!776484 m!720641))

(declare-fun m!720643 () Bool)

(assert (=> b!776484 m!720643))

(declare-fun m!720645 () Bool)

(assert (=> b!776484 m!720645))

(assert (=> b!776484 m!720637))

(assert (=> b!776494 m!720611))

(assert (=> b!776494 m!720611))

(assert (=> b!776494 m!720621))

(declare-fun m!720647 () Bool)

(assert (=> b!776482 m!720647))

(declare-fun m!720649 () Bool)

(assert (=> b!776491 m!720649))

(declare-fun m!720651 () Bool)

(assert (=> b!776490 m!720651))

(assert (=> b!776483 m!720611))

(assert (=> b!776483 m!720611))

(declare-fun m!720653 () Bool)

(assert (=> b!776483 m!720653))

(declare-fun m!720655 () Bool)

(assert (=> b!776487 m!720655))

(check-sat (not start!67188) (not b!776484) (not b!776489) (not b!776495) (not b!776486) (not b!776494) (not b!776485) (not b!776496) (not b!776479) (not b!776483) (not b!776480) (not b!776491) (not b!776481) (not b!776490) (not b!776482))
(check-sat)
