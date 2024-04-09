; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65662 () Bool)

(assert start!65662)

(declare-fun b!751501 () Bool)

(declare-fun res!507494 () Bool)

(declare-fun e!419240 () Bool)

(assert (=> b!751501 (=> (not res!507494) (not e!419240))))

(declare-datatypes ((array!41788 0))(
  ( (array!41789 (arr!20004 (Array (_ BitVec 32) (_ BitVec 64))) (size!20425 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41788)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41788 (_ BitVec 32)) Bool)

(assert (=> b!751501 (= res!507494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7611 0))(
  ( (MissingZero!7611 (index!32811 (_ BitVec 32))) (Found!7611 (index!32812 (_ BitVec 32))) (Intermediate!7611 (undefined!8423 Bool) (index!32813 (_ BitVec 32)) (x!63762 (_ BitVec 32))) (Undefined!7611) (MissingVacant!7611 (index!32814 (_ BitVec 32))) )
))
(declare-fun lt!334250 () SeekEntryResult!7611)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!751502 () Bool)

(declare-fun e!419243 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41788 (_ BitVec 32)) SeekEntryResult!7611)

(assert (=> b!751502 (= e!419243 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20004 a!3186) j!159) a!3186 mask!3328) lt!334250))))

(declare-fun b!751503 () Bool)

(declare-fun res!507489 () Bool)

(declare-fun e!419248 () Bool)

(assert (=> b!751503 (=> (not res!507489) (not e!419248))))

(declare-fun e!419250 () Bool)

(assert (=> b!751503 (= res!507489 e!419250)))

(declare-fun c!82392 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!751503 (= c!82392 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751504 () Bool)

(declare-datatypes ((Unit!25846 0))(
  ( (Unit!25847) )
))
(declare-fun e!419244 () Unit!25846)

(declare-fun Unit!25848 () Unit!25846)

(assert (=> b!751504 (= e!419244 Unit!25848)))

(assert (=> b!751504 false))

(declare-fun b!751505 () Bool)

(declare-fun e!419239 () Bool)

(declare-fun e!419246 () Bool)

(assert (=> b!751505 (= e!419239 (not e!419246))))

(declare-fun res!507480 () Bool)

(assert (=> b!751505 (=> res!507480 e!419246)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!334244 () SeekEntryResult!7611)

(assert (=> b!751505 (= res!507480 (or (not (is-Intermediate!7611 lt!334244)) (bvslt x!1131 (x!63762 lt!334244)) (not (= x!1131 (x!63762 lt!334244))) (not (= index!1321 (index!32813 lt!334244)))))))

(assert (=> b!751505 e!419243))

(declare-fun res!507492 () Bool)

(assert (=> b!751505 (=> (not res!507492) (not e!419243))))

(declare-fun lt!334241 () SeekEntryResult!7611)

(assert (=> b!751505 (= res!507492 (= lt!334241 lt!334250))))

(assert (=> b!751505 (= lt!334250 (Found!7611 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41788 (_ BitVec 32)) SeekEntryResult!7611)

(assert (=> b!751505 (= lt!334241 (seekEntryOrOpen!0 (select (arr!20004 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!751505 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334246 () Unit!25846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41788 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25846)

(assert (=> b!751505 (= lt!334246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751506 () Bool)

(declare-fun res!507487 () Bool)

(declare-fun e!419242 () Bool)

(assert (=> b!751506 (=> (not res!507487) (not e!419242))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751506 (= res!507487 (and (= (size!20425 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20425 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20425 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751507 () Bool)

(declare-fun res!507490 () Bool)

(declare-fun e!419241 () Bool)

(assert (=> b!751507 (=> (not res!507490) (not e!419241))))

(declare-fun lt!334242 () array!41788)

(declare-fun lt!334248 () (_ BitVec 64))

(assert (=> b!751507 (= res!507490 (= (seekEntryOrOpen!0 lt!334248 lt!334242 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334248 lt!334242 mask!3328)))))

(declare-fun b!751508 () Bool)

(declare-fun lt!334239 () SeekEntryResult!7611)

(assert (=> b!751508 (= e!419241 (= lt!334241 lt!334239))))

(declare-fun b!751509 () Bool)

(declare-fun res!507482 () Bool)

(assert (=> b!751509 (=> (not res!507482) (not e!419242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751509 (= res!507482 (validKeyInArray!0 (select (arr!20004 a!3186) j!159)))))

(declare-fun b!751510 () Bool)

(declare-fun e!419245 () Bool)

(assert (=> b!751510 (= e!419246 e!419245)))

(declare-fun res!507484 () Bool)

(assert (=> b!751510 (=> res!507484 e!419245)))

(assert (=> b!751510 (= res!507484 (not (= lt!334239 lt!334250)))))

(assert (=> b!751510 (= lt!334239 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20004 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751512 () Bool)

(declare-fun e!419247 () Bool)

(assert (=> b!751512 (= e!419245 e!419247)))

(declare-fun res!507488 () Bool)

(assert (=> b!751512 (=> res!507488 e!419247)))

(declare-fun lt!334245 () (_ BitVec 64))

(assert (=> b!751512 (= res!507488 (= lt!334245 lt!334248))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751512 (= lt!334245 (select (store (arr!20004 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751513 () Bool)

(declare-fun res!507497 () Bool)

(assert (=> b!751513 (=> (not res!507497) (not e!419242))))

(assert (=> b!751513 (= res!507497 (validKeyInArray!0 k!2102))))

(declare-fun b!751514 () Bool)

(declare-fun res!507493 () Bool)

(assert (=> b!751514 (=> (not res!507493) (not e!419242))))

(declare-fun arrayContainsKey!0 (array!41788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751514 (= res!507493 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751515 () Bool)

(assert (=> b!751515 (= e!419242 e!419240)))

(declare-fun res!507496 () Bool)

(assert (=> b!751515 (=> (not res!507496) (not e!419240))))

(declare-fun lt!334249 () SeekEntryResult!7611)

(assert (=> b!751515 (= res!507496 (or (= lt!334249 (MissingZero!7611 i!1173)) (= lt!334249 (MissingVacant!7611 i!1173))))))

(assert (=> b!751515 (= lt!334249 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751516 () Bool)

(assert (=> b!751516 (= e!419250 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20004 a!3186) j!159) a!3186 mask!3328) (Found!7611 j!159)))))

(declare-fun b!751517 () Bool)

(assert (=> b!751517 (= e!419248 e!419239)))

(declare-fun res!507481 () Bool)

(assert (=> b!751517 (=> (not res!507481) (not e!419239))))

(declare-fun lt!334240 () SeekEntryResult!7611)

(assert (=> b!751517 (= res!507481 (= lt!334240 lt!334244))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41788 (_ BitVec 32)) SeekEntryResult!7611)

(assert (=> b!751517 (= lt!334244 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334248 lt!334242 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751517 (= lt!334240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334248 mask!3328) lt!334248 lt!334242 mask!3328))))

(assert (=> b!751517 (= lt!334248 (select (store (arr!20004 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751517 (= lt!334242 (array!41789 (store (arr!20004 a!3186) i!1173 k!2102) (size!20425 a!3186)))))

(declare-fun b!751518 () Bool)

(declare-fun res!507485 () Bool)

(assert (=> b!751518 (=> (not res!507485) (not e!419240))))

(assert (=> b!751518 (= res!507485 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20425 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20425 a!3186))))))

(declare-fun b!751519 () Bool)

(assert (=> b!751519 (= e!419240 e!419248)))

(declare-fun res!507483 () Bool)

(assert (=> b!751519 (=> (not res!507483) (not e!419248))))

(declare-fun lt!334243 () SeekEntryResult!7611)

(assert (=> b!751519 (= res!507483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20004 a!3186) j!159) mask!3328) (select (arr!20004 a!3186) j!159) a!3186 mask!3328) lt!334243))))

(assert (=> b!751519 (= lt!334243 (Intermediate!7611 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751520 () Bool)

(declare-fun Unit!25849 () Unit!25846)

(assert (=> b!751520 (= e!419244 Unit!25849)))

(declare-fun b!751521 () Bool)

(declare-fun res!507495 () Bool)

(assert (=> b!751521 (=> (not res!507495) (not e!419240))))

(declare-datatypes ((List!14059 0))(
  ( (Nil!14056) (Cons!14055 (h!15127 (_ BitVec 64)) (t!20382 List!14059)) )
))
(declare-fun arrayNoDuplicates!0 (array!41788 (_ BitVec 32) List!14059) Bool)

(assert (=> b!751521 (= res!507495 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14056))))

(declare-fun res!507491 () Bool)

(assert (=> start!65662 (=> (not res!507491) (not e!419242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65662 (= res!507491 (validMask!0 mask!3328))))

(assert (=> start!65662 e!419242))

(assert (=> start!65662 true))

(declare-fun array_inv!15778 (array!41788) Bool)

(assert (=> start!65662 (array_inv!15778 a!3186)))

(declare-fun b!751511 () Bool)

(declare-fun res!507498 () Bool)

(assert (=> b!751511 (=> (not res!507498) (not e!419248))))

(assert (=> b!751511 (= res!507498 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20004 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751522 () Bool)

(assert (=> b!751522 (= e!419247 true)))

(assert (=> b!751522 e!419241))

(declare-fun res!507486 () Bool)

(assert (=> b!751522 (=> (not res!507486) (not e!419241))))

(assert (=> b!751522 (= res!507486 (= lt!334245 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334247 () Unit!25846)

(assert (=> b!751522 (= lt!334247 e!419244)))

(declare-fun c!82391 () Bool)

(assert (=> b!751522 (= c!82391 (= lt!334245 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751523 () Bool)

(assert (=> b!751523 (= e!419250 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20004 a!3186) j!159) a!3186 mask!3328) lt!334243))))

(assert (= (and start!65662 res!507491) b!751506))

(assert (= (and b!751506 res!507487) b!751509))

(assert (= (and b!751509 res!507482) b!751513))

(assert (= (and b!751513 res!507497) b!751514))

(assert (= (and b!751514 res!507493) b!751515))

(assert (= (and b!751515 res!507496) b!751501))

(assert (= (and b!751501 res!507494) b!751521))

(assert (= (and b!751521 res!507495) b!751518))

(assert (= (and b!751518 res!507485) b!751519))

(assert (= (and b!751519 res!507483) b!751511))

(assert (= (and b!751511 res!507498) b!751503))

(assert (= (and b!751503 c!82392) b!751523))

(assert (= (and b!751503 (not c!82392)) b!751516))

(assert (= (and b!751503 res!507489) b!751517))

(assert (= (and b!751517 res!507481) b!751505))

(assert (= (and b!751505 res!507492) b!751502))

(assert (= (and b!751505 (not res!507480)) b!751510))

(assert (= (and b!751510 (not res!507484)) b!751512))

(assert (= (and b!751512 (not res!507488)) b!751522))

(assert (= (and b!751522 c!82391) b!751504))

(assert (= (and b!751522 (not c!82391)) b!751520))

(assert (= (and b!751522 res!507486) b!751507))

(assert (= (and b!751507 res!507490) b!751508))

(declare-fun m!700741 () Bool)

(assert (=> b!751513 m!700741))

(declare-fun m!700743 () Bool)

(assert (=> b!751516 m!700743))

(assert (=> b!751516 m!700743))

(declare-fun m!700745 () Bool)

(assert (=> b!751516 m!700745))

(declare-fun m!700747 () Bool)

(assert (=> start!65662 m!700747))

(declare-fun m!700749 () Bool)

(assert (=> start!65662 m!700749))

(declare-fun m!700751 () Bool)

(assert (=> b!751501 m!700751))

(declare-fun m!700753 () Bool)

(assert (=> b!751521 m!700753))

(declare-fun m!700755 () Bool)

(assert (=> b!751517 m!700755))

(declare-fun m!700757 () Bool)

(assert (=> b!751517 m!700757))

(assert (=> b!751517 m!700755))

(declare-fun m!700759 () Bool)

(assert (=> b!751517 m!700759))

(declare-fun m!700761 () Bool)

(assert (=> b!751517 m!700761))

(declare-fun m!700763 () Bool)

(assert (=> b!751517 m!700763))

(assert (=> b!751512 m!700759))

(declare-fun m!700765 () Bool)

(assert (=> b!751512 m!700765))

(declare-fun m!700767 () Bool)

(assert (=> b!751514 m!700767))

(assert (=> b!751523 m!700743))

(assert (=> b!751523 m!700743))

(declare-fun m!700769 () Bool)

(assert (=> b!751523 m!700769))

(declare-fun m!700771 () Bool)

(assert (=> b!751511 m!700771))

(assert (=> b!751510 m!700743))

(assert (=> b!751510 m!700743))

(assert (=> b!751510 m!700745))

(assert (=> b!751519 m!700743))

(assert (=> b!751519 m!700743))

(declare-fun m!700773 () Bool)

(assert (=> b!751519 m!700773))

(assert (=> b!751519 m!700773))

(assert (=> b!751519 m!700743))

(declare-fun m!700775 () Bool)

(assert (=> b!751519 m!700775))

(declare-fun m!700777 () Bool)

(assert (=> b!751507 m!700777))

(declare-fun m!700779 () Bool)

(assert (=> b!751507 m!700779))

(assert (=> b!751509 m!700743))

(assert (=> b!751509 m!700743))

(declare-fun m!700781 () Bool)

(assert (=> b!751509 m!700781))

(assert (=> b!751505 m!700743))

(assert (=> b!751505 m!700743))

(declare-fun m!700783 () Bool)

(assert (=> b!751505 m!700783))

(declare-fun m!700785 () Bool)

(assert (=> b!751505 m!700785))

(declare-fun m!700787 () Bool)

(assert (=> b!751505 m!700787))

(assert (=> b!751502 m!700743))

(assert (=> b!751502 m!700743))

(declare-fun m!700789 () Bool)

(assert (=> b!751502 m!700789))

(declare-fun m!700791 () Bool)

(assert (=> b!751515 m!700791))

(push 1)

