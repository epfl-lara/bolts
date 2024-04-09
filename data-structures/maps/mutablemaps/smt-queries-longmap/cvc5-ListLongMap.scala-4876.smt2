; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67186 () Bool)

(assert start!67186)

(declare-fun b!776425 () Bool)

(declare-fun res!525392 () Bool)

(declare-fun e!432075 () Bool)

(assert (=> b!776425 (=> (not res!525392) (not e!432075))))

(declare-datatypes ((array!42496 0))(
  ( (array!42497 (arr!20340 (Array (_ BitVec 32) (_ BitVec 64))) (size!20761 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42496)

(declare-datatypes ((List!14395 0))(
  ( (Nil!14392) (Cons!14391 (h!15499 (_ BitVec 64)) (t!20718 List!14395)) )
))
(declare-fun arrayNoDuplicates!0 (array!42496 (_ BitVec 32) List!14395) Bool)

(assert (=> b!776425 (= res!525392 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14392))))

(declare-fun b!776426 () Bool)

(declare-fun res!525379 () Bool)

(declare-fun e!432076 () Bool)

(assert (=> b!776426 (=> (not res!525379) (not e!432076))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!776426 (= res!525379 (and (= (size!20761 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20761 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20761 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776427 () Bool)

(declare-fun res!525382 () Bool)

(assert (=> b!776427 (=> (not res!525382) (not e!432076))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776427 (= res!525382 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776428 () Bool)

(declare-fun res!525388 () Bool)

(assert (=> b!776428 (=> (not res!525388) (not e!432075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42496 (_ BitVec 32)) Bool)

(assert (=> b!776428 (= res!525388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776429 () Bool)

(declare-fun e!432074 () Bool)

(assert (=> b!776429 (= e!432074 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7947 0))(
  ( (MissingZero!7947 (index!34155 (_ BitVec 32))) (Found!7947 (index!34156 (_ BitVec 32))) (Intermediate!7947 (undefined!8759 Bool) (index!34157 (_ BitVec 32)) (x!65123 (_ BitVec 32))) (Undefined!7947) (MissingVacant!7947 (index!34158 (_ BitVec 32))) )
))
(declare-fun lt!345948 () SeekEntryResult!7947)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42496 (_ BitVec 32)) SeekEntryResult!7947)

(assert (=> b!776429 (= lt!345948 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20340 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776430 () Bool)

(declare-fun res!525394 () Bool)

(assert (=> b!776430 (=> (not res!525394) (not e!432075))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776430 (= res!525394 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20761 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20761 a!3186))))))

(declare-fun b!776431 () Bool)

(declare-fun e!432080 () Bool)

(assert (=> b!776431 (= e!432075 e!432080)))

(declare-fun res!525385 () Bool)

(assert (=> b!776431 (=> (not res!525385) (not e!432080))))

(declare-fun lt!345945 () SeekEntryResult!7947)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42496 (_ BitVec 32)) SeekEntryResult!7947)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776431 (= res!525385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20340 a!3186) j!159) mask!3328) (select (arr!20340 a!3186) j!159) a!3186 mask!3328) lt!345945))))

(assert (=> b!776431 (= lt!345945 (Intermediate!7947 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776432 () Bool)

(declare-fun e!432082 () Bool)

(declare-fun e!432081 () Bool)

(assert (=> b!776432 (= e!432082 e!432081)))

(declare-fun res!525393 () Bool)

(assert (=> b!776432 (=> (not res!525393) (not e!432081))))

(declare-fun lt!345949 () SeekEntryResult!7947)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42496 (_ BitVec 32)) SeekEntryResult!7947)

(assert (=> b!776432 (= res!525393 (= (seekEntryOrOpen!0 (select (arr!20340 a!3186) j!159) a!3186 mask!3328) lt!345949))))

(assert (=> b!776432 (= lt!345949 (Found!7947 j!159))))

(declare-fun b!776433 () Bool)

(declare-fun res!525389 () Bool)

(assert (=> b!776433 (=> (not res!525389) (not e!432080))))

(assert (=> b!776433 (= res!525389 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20340 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776434 () Bool)

(assert (=> b!776434 (= e!432076 e!432075)))

(declare-fun res!525391 () Bool)

(assert (=> b!776434 (=> (not res!525391) (not e!432075))))

(declare-fun lt!345946 () SeekEntryResult!7947)

(assert (=> b!776434 (= res!525391 (or (= lt!345946 (MissingZero!7947 i!1173)) (= lt!345946 (MissingVacant!7947 i!1173))))))

(assert (=> b!776434 (= lt!345946 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!776435 () Bool)

(declare-fun res!525383 () Bool)

(assert (=> b!776435 (=> (not res!525383) (not e!432080))))

(declare-fun e!432078 () Bool)

(assert (=> b!776435 (= res!525383 e!432078)))

(declare-fun c!85923 () Bool)

(assert (=> b!776435 (= c!85923 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776436 () Bool)

(declare-fun res!525384 () Bool)

(assert (=> b!776436 (=> (not res!525384) (not e!432076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776436 (= res!525384 (validKeyInArray!0 k!2102))))

(declare-fun b!776437 () Bool)

(assert (=> b!776437 (= e!432081 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20340 a!3186) j!159) a!3186 mask!3328) lt!345949))))

(declare-fun b!776438 () Bool)

(declare-fun e!432079 () Bool)

(assert (=> b!776438 (= e!432079 (not e!432074))))

(declare-fun res!525387 () Bool)

(assert (=> b!776438 (=> res!525387 e!432074)))

(declare-fun lt!345944 () SeekEntryResult!7947)

(assert (=> b!776438 (= res!525387 (or (not (is-Intermediate!7947 lt!345944)) (bvslt x!1131 (x!65123 lt!345944)) (not (= x!1131 (x!65123 lt!345944))) (not (= index!1321 (index!34157 lt!345944)))))))

(assert (=> b!776438 e!432082))

(declare-fun res!525386 () Bool)

(assert (=> b!776438 (=> (not res!525386) (not e!432082))))

(assert (=> b!776438 (= res!525386 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26788 0))(
  ( (Unit!26789) )
))
(declare-fun lt!345950 () Unit!26788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26788)

(assert (=> b!776438 (= lt!345950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776439 () Bool)

(declare-fun res!525381 () Bool)

(assert (=> b!776439 (=> (not res!525381) (not e!432076))))

(assert (=> b!776439 (= res!525381 (validKeyInArray!0 (select (arr!20340 a!3186) j!159)))))

(declare-fun b!776440 () Bool)

(assert (=> b!776440 (= e!432078 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20340 a!3186) j!159) a!3186 mask!3328) (Found!7947 j!159)))))

(declare-fun res!525390 () Bool)

(assert (=> start!67186 (=> (not res!525390) (not e!432076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67186 (= res!525390 (validMask!0 mask!3328))))

(assert (=> start!67186 e!432076))

(assert (=> start!67186 true))

(declare-fun array_inv!16114 (array!42496) Bool)

(assert (=> start!67186 (array_inv!16114 a!3186)))

(declare-fun b!776441 () Bool)

(assert (=> b!776441 (= e!432080 e!432079)))

(declare-fun res!525380 () Bool)

(assert (=> b!776441 (=> (not res!525380) (not e!432079))))

(declare-fun lt!345947 () SeekEntryResult!7947)

(assert (=> b!776441 (= res!525380 (= lt!345947 lt!345944))))

(declare-fun lt!345951 () (_ BitVec 64))

(declare-fun lt!345952 () array!42496)

(assert (=> b!776441 (= lt!345944 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345951 lt!345952 mask!3328))))

(assert (=> b!776441 (= lt!345947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345951 mask!3328) lt!345951 lt!345952 mask!3328))))

(assert (=> b!776441 (= lt!345951 (select (store (arr!20340 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776441 (= lt!345952 (array!42497 (store (arr!20340 a!3186) i!1173 k!2102) (size!20761 a!3186)))))

(declare-fun b!776442 () Bool)

(assert (=> b!776442 (= e!432078 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20340 a!3186) j!159) a!3186 mask!3328) lt!345945))))

(assert (= (and start!67186 res!525390) b!776426))

(assert (= (and b!776426 res!525379) b!776439))

(assert (= (and b!776439 res!525381) b!776436))

(assert (= (and b!776436 res!525384) b!776427))

(assert (= (and b!776427 res!525382) b!776434))

(assert (= (and b!776434 res!525391) b!776428))

(assert (= (and b!776428 res!525388) b!776425))

(assert (= (and b!776425 res!525392) b!776430))

(assert (= (and b!776430 res!525394) b!776431))

(assert (= (and b!776431 res!525385) b!776433))

(assert (= (and b!776433 res!525389) b!776435))

(assert (= (and b!776435 c!85923) b!776442))

(assert (= (and b!776435 (not c!85923)) b!776440))

(assert (= (and b!776435 res!525383) b!776441))

(assert (= (and b!776441 res!525380) b!776438))

(assert (= (and b!776438 res!525386) b!776432))

(assert (= (and b!776432 res!525393) b!776437))

(assert (= (and b!776438 (not res!525387)) b!776429))

(declare-fun m!720565 () Bool)

(assert (=> b!776433 m!720565))

(declare-fun m!720567 () Bool)

(assert (=> b!776440 m!720567))

(assert (=> b!776440 m!720567))

(declare-fun m!720569 () Bool)

(assert (=> b!776440 m!720569))

(assert (=> b!776439 m!720567))

(assert (=> b!776439 m!720567))

(declare-fun m!720571 () Bool)

(assert (=> b!776439 m!720571))

(declare-fun m!720573 () Bool)

(assert (=> b!776434 m!720573))

(declare-fun m!720575 () Bool)

(assert (=> b!776428 m!720575))

(declare-fun m!720577 () Bool)

(assert (=> b!776441 m!720577))

(declare-fun m!720579 () Bool)

(assert (=> b!776441 m!720579))

(declare-fun m!720581 () Bool)

(assert (=> b!776441 m!720581))

(declare-fun m!720583 () Bool)

(assert (=> b!776441 m!720583))

(declare-fun m!720585 () Bool)

(assert (=> b!776441 m!720585))

(assert (=> b!776441 m!720577))

(declare-fun m!720587 () Bool)

(assert (=> b!776438 m!720587))

(declare-fun m!720589 () Bool)

(assert (=> b!776438 m!720589))

(assert (=> b!776429 m!720567))

(assert (=> b!776429 m!720567))

(assert (=> b!776429 m!720569))

(assert (=> b!776442 m!720567))

(assert (=> b!776442 m!720567))

(declare-fun m!720591 () Bool)

(assert (=> b!776442 m!720591))

(assert (=> b!776432 m!720567))

(assert (=> b!776432 m!720567))

(declare-fun m!720593 () Bool)

(assert (=> b!776432 m!720593))

(declare-fun m!720595 () Bool)

(assert (=> b!776427 m!720595))

(declare-fun m!720597 () Bool)

(assert (=> start!67186 m!720597))

(declare-fun m!720599 () Bool)

(assert (=> start!67186 m!720599))

(declare-fun m!720601 () Bool)

(assert (=> b!776425 m!720601))

(assert (=> b!776431 m!720567))

(assert (=> b!776431 m!720567))

(declare-fun m!720603 () Bool)

(assert (=> b!776431 m!720603))

(assert (=> b!776431 m!720603))

(assert (=> b!776431 m!720567))

(declare-fun m!720605 () Bool)

(assert (=> b!776431 m!720605))

(assert (=> b!776437 m!720567))

(assert (=> b!776437 m!720567))

(declare-fun m!720607 () Bool)

(assert (=> b!776437 m!720607))

(declare-fun m!720609 () Bool)

(assert (=> b!776436 m!720609))

(push 1)

