; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65836 () Bool)

(assert start!65836)

(declare-fun b!757504 () Bool)

(declare-datatypes ((Unit!26194 0))(
  ( (Unit!26195) )
))
(declare-fun e!422379 () Unit!26194)

(declare-fun Unit!26196 () Unit!26194)

(assert (=> b!757504 (= e!422379 Unit!26196)))

(declare-fun b!757505 () Bool)

(declare-fun e!422374 () Bool)

(assert (=> b!757505 (= e!422374 true)))

(declare-fun e!422376 () Bool)

(assert (=> b!757505 e!422376))

(declare-fun res!512444 () Bool)

(assert (=> b!757505 (=> (not res!512444) (not e!422376))))

(declare-fun lt!337380 () (_ BitVec 64))

(assert (=> b!757505 (= res!512444 (= lt!337380 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337378 () Unit!26194)

(assert (=> b!757505 (= lt!337378 e!422379)))

(declare-fun c!82914 () Bool)

(assert (=> b!757505 (= c!82914 (= lt!337380 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757506 () Bool)

(declare-fun res!512453 () Bool)

(declare-fun e!422371 () Bool)

(assert (=> b!757506 (=> (not res!512453) (not e!422371))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757506 (= res!512453 (validKeyInArray!0 k!2102))))

(declare-fun b!757507 () Bool)

(declare-fun res!512445 () Bool)

(assert (=> b!757507 (=> (not res!512445) (not e!422371))))

(declare-datatypes ((array!41962 0))(
  ( (array!41963 (arr!20091 (Array (_ BitVec 32) (_ BitVec 64))) (size!20512 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41962)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!757507 (= res!512445 (validKeyInArray!0 (select (arr!20091 a!3186) j!159)))))

(declare-fun b!757509 () Bool)

(declare-fun res!512456 () Bool)

(declare-fun e!422372 () Bool)

(assert (=> b!757509 (=> (not res!512456) (not e!422372))))

(declare-fun e!422378 () Bool)

(assert (=> b!757509 (= res!512456 e!422378)))

(declare-fun c!82913 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757509 (= c!82913 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757510 () Bool)

(declare-fun e!422380 () Bool)

(assert (=> b!757510 (= e!422372 e!422380)))

(declare-fun res!512449 () Bool)

(assert (=> b!757510 (=> (not res!512449) (not e!422380))))

(declare-datatypes ((SeekEntryResult!7698 0))(
  ( (MissingZero!7698 (index!33159 (_ BitVec 32))) (Found!7698 (index!33160 (_ BitVec 32))) (Intermediate!7698 (undefined!8510 Bool) (index!33161 (_ BitVec 32)) (x!64081 (_ BitVec 32))) (Undefined!7698) (MissingVacant!7698 (index!33162 (_ BitVec 32))) )
))
(declare-fun lt!337372 () SeekEntryResult!7698)

(declare-fun lt!337382 () SeekEntryResult!7698)

(assert (=> b!757510 (= res!512449 (= lt!337372 lt!337382))))

(declare-fun lt!337375 () array!41962)

(declare-fun lt!337379 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41962 (_ BitVec 32)) SeekEntryResult!7698)

(assert (=> b!757510 (= lt!337382 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337379 lt!337375 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757510 (= lt!337372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337379 mask!3328) lt!337379 lt!337375 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757510 (= lt!337379 (select (store (arr!20091 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757510 (= lt!337375 (array!41963 (store (arr!20091 a!3186) i!1173 k!2102) (size!20512 a!3186)))))

(declare-fun b!757511 () Bool)

(declare-fun Unit!26197 () Unit!26194)

(assert (=> b!757511 (= e!422379 Unit!26197)))

(assert (=> b!757511 false))

(declare-fun b!757512 () Bool)

(declare-fun res!512455 () Bool)

(assert (=> b!757512 (=> (not res!512455) (not e!422376))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41962 (_ BitVec 32)) SeekEntryResult!7698)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41962 (_ BitVec 32)) SeekEntryResult!7698)

(assert (=> b!757512 (= res!512455 (= (seekEntryOrOpen!0 lt!337379 lt!337375 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337379 lt!337375 mask!3328)))))

(declare-fun b!757513 () Bool)

(declare-fun e!422373 () Bool)

(assert (=> b!757513 (= e!422373 e!422374)))

(declare-fun res!512448 () Bool)

(assert (=> b!757513 (=> res!512448 e!422374)))

(assert (=> b!757513 (= res!512448 (= lt!337380 lt!337379))))

(assert (=> b!757513 (= lt!337380 (select (store (arr!20091 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757514 () Bool)

(declare-fun res!512447 () Bool)

(declare-fun e!422375 () Bool)

(assert (=> b!757514 (=> (not res!512447) (not e!422375))))

(declare-datatypes ((List!14146 0))(
  ( (Nil!14143) (Cons!14142 (h!15214 (_ BitVec 64)) (t!20469 List!14146)) )
))
(declare-fun arrayNoDuplicates!0 (array!41962 (_ BitVec 32) List!14146) Bool)

(assert (=> b!757514 (= res!512447 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14143))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!757515 () Bool)

(assert (=> b!757515 (= e!422378 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20091 a!3186) j!159) a!3186 mask!3328) (Found!7698 j!159)))))

(declare-fun b!757516 () Bool)

(declare-fun res!512440 () Bool)

(assert (=> b!757516 (=> (not res!512440) (not e!422375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41962 (_ BitVec 32)) Bool)

(assert (=> b!757516 (= res!512440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757517 () Bool)

(declare-fun lt!337377 () SeekEntryResult!7698)

(declare-fun lt!337371 () SeekEntryResult!7698)

(assert (=> b!757517 (= e!422376 (= lt!337377 lt!337371))))

(declare-fun b!757518 () Bool)

(declare-fun res!512450 () Bool)

(assert (=> b!757518 (=> (not res!512450) (not e!422371))))

(assert (=> b!757518 (= res!512450 (and (= (size!20512 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20512 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20512 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757519 () Bool)

(assert (=> b!757519 (= e!422375 e!422372)))

(declare-fun res!512452 () Bool)

(assert (=> b!757519 (=> (not res!512452) (not e!422372))))

(declare-fun lt!337373 () SeekEntryResult!7698)

(assert (=> b!757519 (= res!512452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20091 a!3186) j!159) mask!3328) (select (arr!20091 a!3186) j!159) a!3186 mask!3328) lt!337373))))

(assert (=> b!757519 (= lt!337373 (Intermediate!7698 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757520 () Bool)

(declare-fun res!512454 () Bool)

(assert (=> b!757520 (=> (not res!512454) (not e!422375))))

(assert (=> b!757520 (= res!512454 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20512 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20512 a!3186))))))

(declare-fun b!757508 () Bool)

(assert (=> b!757508 (= e!422378 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20091 a!3186) j!159) a!3186 mask!3328) lt!337373))))

(declare-fun res!512439 () Bool)

(assert (=> start!65836 (=> (not res!512439) (not e!422371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65836 (= res!512439 (validMask!0 mask!3328))))

(assert (=> start!65836 e!422371))

(assert (=> start!65836 true))

(declare-fun array_inv!15865 (array!41962) Bool)

(assert (=> start!65836 (array_inv!15865 a!3186)))

(declare-fun b!757521 () Bool)

(declare-fun e!422377 () Bool)

(assert (=> b!757521 (= e!422380 (not e!422377))))

(declare-fun res!512446 () Bool)

(assert (=> b!757521 (=> res!512446 e!422377)))

(assert (=> b!757521 (= res!512446 (or (not (is-Intermediate!7698 lt!337382)) (bvslt x!1131 (x!64081 lt!337382)) (not (= x!1131 (x!64081 lt!337382))) (not (= index!1321 (index!33161 lt!337382)))))))

(declare-fun e!422382 () Bool)

(assert (=> b!757521 e!422382))

(declare-fun res!512442 () Bool)

(assert (=> b!757521 (=> (not res!512442) (not e!422382))))

(declare-fun lt!337374 () SeekEntryResult!7698)

(assert (=> b!757521 (= res!512442 (= lt!337377 lt!337374))))

(assert (=> b!757521 (= lt!337374 (Found!7698 j!159))))

(assert (=> b!757521 (= lt!337377 (seekEntryOrOpen!0 (select (arr!20091 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757521 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337381 () Unit!26194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41962 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26194)

(assert (=> b!757521 (= lt!337381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757522 () Bool)

(assert (=> b!757522 (= e!422371 e!422375)))

(declare-fun res!512457 () Bool)

(assert (=> b!757522 (=> (not res!512457) (not e!422375))))

(declare-fun lt!337376 () SeekEntryResult!7698)

(assert (=> b!757522 (= res!512457 (or (= lt!337376 (MissingZero!7698 i!1173)) (= lt!337376 (MissingVacant!7698 i!1173))))))

(assert (=> b!757522 (= lt!337376 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757523 () Bool)

(declare-fun res!512451 () Bool)

(assert (=> b!757523 (=> (not res!512451) (not e!422371))))

(declare-fun arrayContainsKey!0 (array!41962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757523 (= res!512451 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757524 () Bool)

(declare-fun res!512443 () Bool)

(assert (=> b!757524 (=> (not res!512443) (not e!422372))))

(assert (=> b!757524 (= res!512443 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20091 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757525 () Bool)

(assert (=> b!757525 (= e!422377 e!422373)))

(declare-fun res!512441 () Bool)

(assert (=> b!757525 (=> res!512441 e!422373)))

(assert (=> b!757525 (= res!512441 (not (= lt!337371 lt!337374)))))

(assert (=> b!757525 (= lt!337371 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20091 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757526 () Bool)

(assert (=> b!757526 (= e!422382 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20091 a!3186) j!159) a!3186 mask!3328) lt!337374))))

(assert (= (and start!65836 res!512439) b!757518))

(assert (= (and b!757518 res!512450) b!757507))

(assert (= (and b!757507 res!512445) b!757506))

(assert (= (and b!757506 res!512453) b!757523))

(assert (= (and b!757523 res!512451) b!757522))

(assert (= (and b!757522 res!512457) b!757516))

(assert (= (and b!757516 res!512440) b!757514))

(assert (= (and b!757514 res!512447) b!757520))

(assert (= (and b!757520 res!512454) b!757519))

(assert (= (and b!757519 res!512452) b!757524))

(assert (= (and b!757524 res!512443) b!757509))

(assert (= (and b!757509 c!82913) b!757508))

(assert (= (and b!757509 (not c!82913)) b!757515))

(assert (= (and b!757509 res!512456) b!757510))

(assert (= (and b!757510 res!512449) b!757521))

(assert (= (and b!757521 res!512442) b!757526))

(assert (= (and b!757521 (not res!512446)) b!757525))

(assert (= (and b!757525 (not res!512441)) b!757513))

(assert (= (and b!757513 (not res!512448)) b!757505))

(assert (= (and b!757505 c!82914) b!757511))

(assert (= (and b!757505 (not c!82914)) b!757504))

(assert (= (and b!757505 res!512444) b!757512))

(assert (= (and b!757512 res!512455) b!757517))

(declare-fun m!705265 () Bool)

(assert (=> b!757512 m!705265))

(declare-fun m!705267 () Bool)

(assert (=> b!757512 m!705267))

(declare-fun m!705269 () Bool)

(assert (=> b!757519 m!705269))

(assert (=> b!757519 m!705269))

(declare-fun m!705271 () Bool)

(assert (=> b!757519 m!705271))

(assert (=> b!757519 m!705271))

(assert (=> b!757519 m!705269))

(declare-fun m!705273 () Bool)

(assert (=> b!757519 m!705273))

(declare-fun m!705275 () Bool)

(assert (=> start!65836 m!705275))

(declare-fun m!705277 () Bool)

(assert (=> start!65836 m!705277))

(assert (=> b!757508 m!705269))

(assert (=> b!757508 m!705269))

(declare-fun m!705279 () Bool)

(assert (=> b!757508 m!705279))

(assert (=> b!757515 m!705269))

(assert (=> b!757515 m!705269))

(declare-fun m!705281 () Bool)

(assert (=> b!757515 m!705281))

(assert (=> b!757507 m!705269))

(assert (=> b!757507 m!705269))

(declare-fun m!705283 () Bool)

(assert (=> b!757507 m!705283))

(declare-fun m!705285 () Bool)

(assert (=> b!757514 m!705285))

(declare-fun m!705287 () Bool)

(assert (=> b!757523 m!705287))

(declare-fun m!705289 () Bool)

(assert (=> b!757522 m!705289))

(declare-fun m!705291 () Bool)

(assert (=> b!757516 m!705291))

(declare-fun m!705293 () Bool)

(assert (=> b!757506 m!705293))

(declare-fun m!705295 () Bool)

(assert (=> b!757524 m!705295))

(declare-fun m!705297 () Bool)

(assert (=> b!757510 m!705297))

(declare-fun m!705299 () Bool)

(assert (=> b!757510 m!705299))

(assert (=> b!757510 m!705297))

(declare-fun m!705301 () Bool)

(assert (=> b!757510 m!705301))

(declare-fun m!705303 () Bool)

(assert (=> b!757510 m!705303))

(declare-fun m!705305 () Bool)

(assert (=> b!757510 m!705305))

(assert (=> b!757521 m!705269))

(assert (=> b!757521 m!705269))

(declare-fun m!705307 () Bool)

(assert (=> b!757521 m!705307))

(declare-fun m!705309 () Bool)

(assert (=> b!757521 m!705309))

(declare-fun m!705311 () Bool)

(assert (=> b!757521 m!705311))

(assert (=> b!757526 m!705269))

(assert (=> b!757526 m!705269))

(declare-fun m!705313 () Bool)

(assert (=> b!757526 m!705313))

(assert (=> b!757525 m!705269))

(assert (=> b!757525 m!705269))

(assert (=> b!757525 m!705281))

(assert (=> b!757513 m!705303))

(declare-fun m!705315 () Bool)

(assert (=> b!757513 m!705315))

(push 1)

