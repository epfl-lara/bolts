; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65326 () Bool)

(assert start!65326)

(declare-fun b!741517 () Bool)

(declare-fun res!498940 () Bool)

(declare-fun e!414498 () Bool)

(assert (=> b!741517 (=> (not res!498940) (not e!414498))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41452 0))(
  ( (array!41453 (arr!19836 (Array (_ BitVec 32) (_ BitVec 64))) (size!20257 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41452)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741517 (= res!498940 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20257 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20257 a!3186))))))

(declare-fun b!741518 () Bool)

(declare-fun e!414500 () Bool)

(assert (=> b!741518 (= e!414498 e!414500)))

(declare-fun res!498951 () Bool)

(assert (=> b!741518 (=> (not res!498951) (not e!414500))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7443 0))(
  ( (MissingZero!7443 (index!32139 (_ BitVec 32))) (Found!7443 (index!32140 (_ BitVec 32))) (Intermediate!7443 (undefined!8255 Bool) (index!32141 (_ BitVec 32)) (x!63146 (_ BitVec 32))) (Undefined!7443) (MissingVacant!7443 (index!32142 (_ BitVec 32))) )
))
(declare-fun lt!329458 () SeekEntryResult!7443)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41452 (_ BitVec 32)) SeekEntryResult!7443)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741518 (= res!498951 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19836 a!3186) j!159) mask!3328) (select (arr!19836 a!3186) j!159) a!3186 mask!3328) lt!329458))))

(assert (=> b!741518 (= lt!329458 (Intermediate!7443 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741519 () Bool)

(declare-fun res!498944 () Bool)

(assert (=> b!741519 (=> (not res!498944) (not e!414500))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741519 (= res!498944 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19836 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741520 () Bool)

(declare-fun e!414501 () Bool)

(assert (=> b!741520 (= e!414501 (not true))))

(declare-fun e!414502 () Bool)

(assert (=> b!741520 e!414502))

(declare-fun res!498954 () Bool)

(assert (=> b!741520 (=> (not res!498954) (not e!414502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41452 (_ BitVec 32)) Bool)

(assert (=> b!741520 (= res!498954 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25366 0))(
  ( (Unit!25367) )
))
(declare-fun lt!329459 () Unit!25366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25366)

(assert (=> b!741520 (= lt!329459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741521 () Bool)

(assert (=> b!741521 (= e!414500 e!414501)))

(declare-fun res!498953 () Bool)

(assert (=> b!741521 (=> (not res!498953) (not e!414501))))

(declare-fun lt!329462 () array!41452)

(declare-fun lt!329460 () (_ BitVec 64))

(assert (=> b!741521 (= res!498953 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329460 mask!3328) lt!329460 lt!329462 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329460 lt!329462 mask!3328)))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!741521 (= lt!329460 (select (store (arr!19836 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741521 (= lt!329462 (array!41453 (store (arr!19836 a!3186) i!1173 k!2102) (size!20257 a!3186)))))

(declare-fun b!741522 () Bool)

(declare-fun res!498950 () Bool)

(assert (=> b!741522 (=> (not res!498950) (not e!414498))))

(assert (=> b!741522 (= res!498950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741523 () Bool)

(declare-fun res!498948 () Bool)

(assert (=> b!741523 (=> (not res!498948) (not e!414498))))

(declare-datatypes ((List!13891 0))(
  ( (Nil!13888) (Cons!13887 (h!14959 (_ BitVec 64)) (t!20214 List!13891)) )
))
(declare-fun arrayNoDuplicates!0 (array!41452 (_ BitVec 32) List!13891) Bool)

(assert (=> b!741523 (= res!498948 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13888))))

(declare-fun res!498941 () Bool)

(declare-fun e!414497 () Bool)

(assert (=> start!65326 (=> (not res!498941) (not e!414497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65326 (= res!498941 (validMask!0 mask!3328))))

(assert (=> start!65326 e!414497))

(assert (=> start!65326 true))

(declare-fun array_inv!15610 (array!41452) Bool)

(assert (=> start!65326 (array_inv!15610 a!3186)))

(declare-fun e!414504 () Bool)

(declare-fun b!741524 () Bool)

(declare-fun lt!329457 () SeekEntryResult!7443)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41452 (_ BitVec 32)) SeekEntryResult!7443)

(assert (=> b!741524 (= e!414504 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19836 a!3186) j!159) a!3186 mask!3328) lt!329457))))

(declare-fun b!741525 () Bool)

(declare-fun e!414503 () Bool)

(assert (=> b!741525 (= e!414503 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19836 a!3186) j!159) a!3186 mask!3328) lt!329458))))

(declare-fun b!741526 () Bool)

(declare-fun res!498947 () Bool)

(assert (=> b!741526 (=> (not res!498947) (not e!414497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741526 (= res!498947 (validKeyInArray!0 k!2102))))

(declare-fun b!741527 () Bool)

(assert (=> b!741527 (= e!414497 e!414498)))

(declare-fun res!498942 () Bool)

(assert (=> b!741527 (=> (not res!498942) (not e!414498))))

(declare-fun lt!329461 () SeekEntryResult!7443)

(assert (=> b!741527 (= res!498942 (or (= lt!329461 (MissingZero!7443 i!1173)) (= lt!329461 (MissingVacant!7443 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41452 (_ BitVec 32)) SeekEntryResult!7443)

(assert (=> b!741527 (= lt!329461 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741528 () Bool)

(declare-fun res!498949 () Bool)

(assert (=> b!741528 (=> (not res!498949) (not e!414497))))

(assert (=> b!741528 (= res!498949 (validKeyInArray!0 (select (arr!19836 a!3186) j!159)))))

(declare-fun b!741529 () Bool)

(assert (=> b!741529 (= e!414502 e!414504)))

(declare-fun res!498945 () Bool)

(assert (=> b!741529 (=> (not res!498945) (not e!414504))))

(assert (=> b!741529 (= res!498945 (= (seekEntryOrOpen!0 (select (arr!19836 a!3186) j!159) a!3186 mask!3328) lt!329457))))

(assert (=> b!741529 (= lt!329457 (Found!7443 j!159))))

(declare-fun b!741530 () Bool)

(assert (=> b!741530 (= e!414503 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19836 a!3186) j!159) a!3186 mask!3328) (Found!7443 j!159)))))

(declare-fun b!741531 () Bool)

(declare-fun res!498946 () Bool)

(assert (=> b!741531 (=> (not res!498946) (not e!414500))))

(assert (=> b!741531 (= res!498946 e!414503)))

(declare-fun c!81669 () Bool)

(assert (=> b!741531 (= c!81669 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741532 () Bool)

(declare-fun res!498943 () Bool)

(assert (=> b!741532 (=> (not res!498943) (not e!414497))))

(declare-fun arrayContainsKey!0 (array!41452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741532 (= res!498943 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741533 () Bool)

(declare-fun res!498952 () Bool)

(assert (=> b!741533 (=> (not res!498952) (not e!414497))))

(assert (=> b!741533 (= res!498952 (and (= (size!20257 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20257 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20257 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65326 res!498941) b!741533))

(assert (= (and b!741533 res!498952) b!741528))

(assert (= (and b!741528 res!498949) b!741526))

(assert (= (and b!741526 res!498947) b!741532))

(assert (= (and b!741532 res!498943) b!741527))

(assert (= (and b!741527 res!498942) b!741522))

(assert (= (and b!741522 res!498950) b!741523))

(assert (= (and b!741523 res!498948) b!741517))

(assert (= (and b!741517 res!498940) b!741518))

(assert (= (and b!741518 res!498951) b!741519))

(assert (= (and b!741519 res!498944) b!741531))

(assert (= (and b!741531 c!81669) b!741525))

(assert (= (and b!741531 (not c!81669)) b!741530))

(assert (= (and b!741531 res!498946) b!741521))

(assert (= (and b!741521 res!498953) b!741520))

(assert (= (and b!741520 res!498954) b!741529))

(assert (= (and b!741529 res!498945) b!741524))

(declare-fun m!692569 () Bool)

(assert (=> b!741528 m!692569))

(assert (=> b!741528 m!692569))

(declare-fun m!692571 () Bool)

(assert (=> b!741528 m!692571))

(declare-fun m!692573 () Bool)

(assert (=> start!65326 m!692573))

(declare-fun m!692575 () Bool)

(assert (=> start!65326 m!692575))

(declare-fun m!692577 () Bool)

(assert (=> b!741523 m!692577))

(assert (=> b!741529 m!692569))

(assert (=> b!741529 m!692569))

(declare-fun m!692579 () Bool)

(assert (=> b!741529 m!692579))

(assert (=> b!741525 m!692569))

(assert (=> b!741525 m!692569))

(declare-fun m!692581 () Bool)

(assert (=> b!741525 m!692581))

(assert (=> b!741518 m!692569))

(assert (=> b!741518 m!692569))

(declare-fun m!692583 () Bool)

(assert (=> b!741518 m!692583))

(assert (=> b!741518 m!692583))

(assert (=> b!741518 m!692569))

(declare-fun m!692585 () Bool)

(assert (=> b!741518 m!692585))

(assert (=> b!741524 m!692569))

(assert (=> b!741524 m!692569))

(declare-fun m!692587 () Bool)

(assert (=> b!741524 m!692587))

(declare-fun m!692589 () Bool)

(assert (=> b!741521 m!692589))

(declare-fun m!692591 () Bool)

(assert (=> b!741521 m!692591))

(declare-fun m!692593 () Bool)

(assert (=> b!741521 m!692593))

(declare-fun m!692595 () Bool)

(assert (=> b!741521 m!692595))

(declare-fun m!692597 () Bool)

(assert (=> b!741521 m!692597))

(assert (=> b!741521 m!692593))

(declare-fun m!692599 () Bool)

(assert (=> b!741532 m!692599))

(declare-fun m!692601 () Bool)

(assert (=> b!741526 m!692601))

(declare-fun m!692603 () Bool)

(assert (=> b!741519 m!692603))

(declare-fun m!692605 () Bool)

(assert (=> b!741522 m!692605))

(assert (=> b!741530 m!692569))

(assert (=> b!741530 m!692569))

(declare-fun m!692607 () Bool)

(assert (=> b!741530 m!692607))

(declare-fun m!692609 () Bool)

(assert (=> b!741520 m!692609))

(declare-fun m!692611 () Bool)

(assert (=> b!741520 m!692611))

(declare-fun m!692613 () Bool)

(assert (=> b!741527 m!692613))

(push 1)

