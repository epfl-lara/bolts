; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67910 () Bool)

(assert start!67910)

(declare-fun b!789552 () Bool)

(declare-fun e!438857 () Bool)

(declare-fun e!438859 () Bool)

(assert (=> b!789552 (= e!438857 e!438859)))

(declare-fun res!534963 () Bool)

(assert (=> b!789552 (=> res!534963 e!438859)))

(declare-datatypes ((SeekEntryResult!8111 0))(
  ( (MissingZero!8111 (index!34811 (_ BitVec 32))) (Found!8111 (index!34812 (_ BitVec 32))) (Intermediate!8111 (undefined!8923 Bool) (index!34813 (_ BitVec 32)) (x!65773 (_ BitVec 32))) (Undefined!8111) (MissingVacant!8111 (index!34814 (_ BitVec 32))) )
))
(declare-fun lt!352372 () SeekEntryResult!8111)

(declare-fun lt!352371 () SeekEntryResult!8111)

(assert (=> b!789552 (= res!534963 (not (= lt!352372 lt!352371)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42842 0))(
  ( (array!42843 (arr!20504 (Array (_ BitVec 32) (_ BitVec 64))) (size!20925 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42842)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42842 (_ BitVec 32)) SeekEntryResult!8111)

(assert (=> b!789552 (= lt!352372 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20504 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789553 () Bool)

(declare-fun res!534967 () Bool)

(declare-fun e!438863 () Bool)

(assert (=> b!789553 (=> (not res!534967) (not e!438863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789553 (= res!534967 (validKeyInArray!0 (select (arr!20504 a!3186) j!159)))))

(declare-fun b!789554 () Bool)

(declare-fun e!438867 () Bool)

(assert (=> b!789554 (= e!438867 true)))

(declare-fun lt!352370 () SeekEntryResult!8111)

(assert (=> b!789554 (= lt!352370 lt!352372)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-datatypes ((Unit!27354 0))(
  ( (Unit!27355) )
))
(declare-fun lt!352369 () Unit!27354)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42842 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27354)

(assert (=> b!789554 (= lt!352369 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789555 () Bool)

(declare-fun res!534964 () Bool)

(assert (=> b!789555 (=> (not res!534964) (not e!438863))))

(assert (=> b!789555 (= res!534964 (and (= (size!20925 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20925 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20925 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!534966 () Bool)

(assert (=> start!67910 (=> (not res!534966) (not e!438863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67910 (= res!534966 (validMask!0 mask!3328))))

(assert (=> start!67910 e!438863))

(assert (=> start!67910 true))

(declare-fun array_inv!16278 (array!42842) Bool)

(assert (=> start!67910 (array_inv!16278 a!3186)))

(declare-fun b!789556 () Bool)

(declare-fun res!534954 () Bool)

(declare-fun e!438868 () Bool)

(assert (=> b!789556 (=> (not res!534954) (not e!438868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42842 (_ BitVec 32)) Bool)

(assert (=> b!789556 (= res!534954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789557 () Bool)

(declare-fun e!438865 () Bool)

(declare-fun e!438858 () Bool)

(assert (=> b!789557 (= e!438865 e!438858)))

(declare-fun res!534952 () Bool)

(assert (=> b!789557 (=> (not res!534952) (not e!438858))))

(declare-fun lt!352358 () SeekEntryResult!8111)

(declare-fun lt!352367 () SeekEntryResult!8111)

(assert (=> b!789557 (= res!534952 (= lt!352358 lt!352367))))

(declare-fun lt!352365 () (_ BitVec 64))

(declare-fun lt!352368 () array!42842)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42842 (_ BitVec 32)) SeekEntryResult!8111)

(assert (=> b!789557 (= lt!352367 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352365 lt!352368 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789557 (= lt!352358 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352365 mask!3328) lt!352365 lt!352368 mask!3328))))

(assert (=> b!789557 (= lt!352365 (select (store (arr!20504 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789557 (= lt!352368 (array!42843 (store (arr!20504 a!3186) i!1173 k!2102) (size!20925 a!3186)))))

(declare-fun b!789558 () Bool)

(declare-fun res!534965 () Bool)

(assert (=> b!789558 (=> (not res!534965) (not e!438868))))

(declare-datatypes ((List!14559 0))(
  ( (Nil!14556) (Cons!14555 (h!15681 (_ BitVec 64)) (t!20882 List!14559)) )
))
(declare-fun arrayNoDuplicates!0 (array!42842 (_ BitVec 32) List!14559) Bool)

(assert (=> b!789558 (= res!534965 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14556))))

(declare-fun e!438862 () Bool)

(declare-fun b!789559 () Bool)

(assert (=> b!789559 (= e!438862 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20504 a!3186) j!159) a!3186 mask!3328) (Found!8111 j!159)))))

(declare-fun b!789560 () Bool)

(assert (=> b!789560 (= e!438868 e!438865)))

(declare-fun res!534951 () Bool)

(assert (=> b!789560 (=> (not res!534951) (not e!438865))))

(declare-fun lt!352361 () SeekEntryResult!8111)

(assert (=> b!789560 (= res!534951 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20504 a!3186) j!159) mask!3328) (select (arr!20504 a!3186) j!159) a!3186 mask!3328) lt!352361))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789560 (= lt!352361 (Intermediate!8111 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789561 () Bool)

(declare-fun res!534959 () Bool)

(assert (=> b!789561 (=> (not res!534959) (not e!438863))))

(assert (=> b!789561 (= res!534959 (validKeyInArray!0 k!2102))))

(declare-fun b!789562 () Bool)

(declare-fun e!438864 () Unit!27354)

(declare-fun Unit!27356 () Unit!27354)

(assert (=> b!789562 (= e!438864 Unit!27356)))

(assert (=> b!789562 false))

(declare-fun b!789563 () Bool)

(declare-fun e!438861 () Bool)

(assert (=> b!789563 (= e!438859 e!438861)))

(declare-fun res!534956 () Bool)

(assert (=> b!789563 (=> res!534956 e!438861)))

(declare-fun lt!352364 () (_ BitVec 64))

(assert (=> b!789563 (= res!534956 (= lt!352364 lt!352365))))

(assert (=> b!789563 (= lt!352364 (select (store (arr!20504 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789564 () Bool)

(assert (=> b!789564 (= e!438858 (not e!438857))))

(declare-fun res!534960 () Bool)

(assert (=> b!789564 (=> res!534960 e!438857)))

(assert (=> b!789564 (= res!534960 (or (not (is-Intermediate!8111 lt!352367)) (bvslt x!1131 (x!65773 lt!352367)) (not (= x!1131 (x!65773 lt!352367))) (not (= index!1321 (index!34813 lt!352367)))))))

(declare-fun e!438860 () Bool)

(assert (=> b!789564 e!438860))

(declare-fun res!534961 () Bool)

(assert (=> b!789564 (=> (not res!534961) (not e!438860))))

(declare-fun lt!352359 () SeekEntryResult!8111)

(assert (=> b!789564 (= res!534961 (= lt!352359 lt!352371))))

(assert (=> b!789564 (= lt!352371 (Found!8111 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42842 (_ BitVec 32)) SeekEntryResult!8111)

(assert (=> b!789564 (= lt!352359 (seekEntryOrOpen!0 (select (arr!20504 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!789564 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352366 () Unit!27354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27354)

(assert (=> b!789564 (= lt!352366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789565 () Bool)

(assert (=> b!789565 (= e!438862 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20504 a!3186) j!159) a!3186 mask!3328) lt!352361))))

(declare-fun b!789566 () Bool)

(assert (=> b!789566 (= e!438863 e!438868)))

(declare-fun res!534957 () Bool)

(assert (=> b!789566 (=> (not res!534957) (not e!438868))))

(declare-fun lt!352363 () SeekEntryResult!8111)

(assert (=> b!789566 (= res!534957 (or (= lt!352363 (MissingZero!8111 i!1173)) (= lt!352363 (MissingVacant!8111 i!1173))))))

(assert (=> b!789566 (= lt!352363 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789567 () Bool)

(declare-fun res!534953 () Bool)

(assert (=> b!789567 (=> (not res!534953) (not e!438868))))

(assert (=> b!789567 (= res!534953 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20925 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20925 a!3186))))))

(declare-fun b!789568 () Bool)

(declare-fun res!534962 () Bool)

(assert (=> b!789568 (=> (not res!534962) (not e!438863))))

(declare-fun arrayContainsKey!0 (array!42842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789568 (= res!534962 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789569 () Bool)

(assert (=> b!789569 (= e!438860 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20504 a!3186) j!159) a!3186 mask!3328) lt!352371))))

(declare-fun b!789570 () Bool)

(declare-fun Unit!27357 () Unit!27354)

(assert (=> b!789570 (= e!438864 Unit!27357)))

(declare-fun b!789571 () Bool)

(declare-fun res!534955 () Bool)

(assert (=> b!789571 (=> (not res!534955) (not e!438865))))

(assert (=> b!789571 (= res!534955 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20504 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789572 () Bool)

(declare-fun res!534950 () Bool)

(assert (=> b!789572 (=> (not res!534950) (not e!438865))))

(assert (=> b!789572 (= res!534950 e!438862)))

(declare-fun c!87710 () Bool)

(assert (=> b!789572 (= c!87710 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789573 () Bool)

(assert (=> b!789573 (= e!438861 e!438867)))

(declare-fun res!534958 () Bool)

(assert (=> b!789573 (=> res!534958 e!438867)))

(assert (=> b!789573 (= res!534958 (or (not (= (select (arr!20504 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352360 () SeekEntryResult!8111)

(assert (=> b!789573 (and (= lt!352360 lt!352370) (= lt!352359 lt!352372))))

(assert (=> b!789573 (= lt!352370 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352365 lt!352368 mask!3328))))

(assert (=> b!789573 (= lt!352360 (seekEntryOrOpen!0 lt!352365 lt!352368 mask!3328))))

(assert (=> b!789573 (= lt!352364 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352362 () Unit!27354)

(assert (=> b!789573 (= lt!352362 e!438864)))

(declare-fun c!87711 () Bool)

(assert (=> b!789573 (= c!87711 (= lt!352364 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67910 res!534966) b!789555))

(assert (= (and b!789555 res!534964) b!789553))

(assert (= (and b!789553 res!534967) b!789561))

(assert (= (and b!789561 res!534959) b!789568))

(assert (= (and b!789568 res!534962) b!789566))

(assert (= (and b!789566 res!534957) b!789556))

(assert (= (and b!789556 res!534954) b!789558))

(assert (= (and b!789558 res!534965) b!789567))

(assert (= (and b!789567 res!534953) b!789560))

(assert (= (and b!789560 res!534951) b!789571))

(assert (= (and b!789571 res!534955) b!789572))

(assert (= (and b!789572 c!87710) b!789565))

(assert (= (and b!789572 (not c!87710)) b!789559))

(assert (= (and b!789572 res!534950) b!789557))

(assert (= (and b!789557 res!534952) b!789564))

(assert (= (and b!789564 res!534961) b!789569))

(assert (= (and b!789564 (not res!534960)) b!789552))

(assert (= (and b!789552 (not res!534963)) b!789563))

(assert (= (and b!789563 (not res!534956)) b!789573))

(assert (= (and b!789573 c!87711) b!789562))

(assert (= (and b!789573 (not c!87711)) b!789570))

(assert (= (and b!789573 (not res!534958)) b!789554))

(declare-fun m!730661 () Bool)

(assert (=> b!789568 m!730661))

(declare-fun m!730663 () Bool)

(assert (=> b!789563 m!730663))

(declare-fun m!730665 () Bool)

(assert (=> b!789563 m!730665))

(declare-fun m!730667 () Bool)

(assert (=> b!789561 m!730667))

(declare-fun m!730669 () Bool)

(assert (=> b!789571 m!730669))

(declare-fun m!730671 () Bool)

(assert (=> b!789559 m!730671))

(assert (=> b!789559 m!730671))

(declare-fun m!730673 () Bool)

(assert (=> b!789559 m!730673))

(declare-fun m!730675 () Bool)

(assert (=> b!789554 m!730675))

(assert (=> b!789565 m!730671))

(assert (=> b!789565 m!730671))

(declare-fun m!730677 () Bool)

(assert (=> b!789565 m!730677))

(declare-fun m!730679 () Bool)

(assert (=> b!789556 m!730679))

(assert (=> b!789564 m!730671))

(assert (=> b!789564 m!730671))

(declare-fun m!730681 () Bool)

(assert (=> b!789564 m!730681))

(declare-fun m!730683 () Bool)

(assert (=> b!789564 m!730683))

(declare-fun m!730685 () Bool)

(assert (=> b!789564 m!730685))

(assert (=> b!789569 m!730671))

(assert (=> b!789569 m!730671))

(declare-fun m!730687 () Bool)

(assert (=> b!789569 m!730687))

(assert (=> b!789553 m!730671))

(assert (=> b!789553 m!730671))

(declare-fun m!730689 () Bool)

(assert (=> b!789553 m!730689))

(assert (=> b!789560 m!730671))

(assert (=> b!789560 m!730671))

(declare-fun m!730691 () Bool)

(assert (=> b!789560 m!730691))

(assert (=> b!789560 m!730691))

(assert (=> b!789560 m!730671))

(declare-fun m!730693 () Bool)

(assert (=> b!789560 m!730693))

(declare-fun m!730695 () Bool)

(assert (=> start!67910 m!730695))

(declare-fun m!730697 () Bool)

(assert (=> start!67910 m!730697))

(declare-fun m!730699 () Bool)

(assert (=> b!789573 m!730699))

(declare-fun m!730701 () Bool)

(assert (=> b!789573 m!730701))

(declare-fun m!730703 () Bool)

(assert (=> b!789573 m!730703))

(assert (=> b!789557 m!730663))

(declare-fun m!730705 () Bool)

(assert (=> b!789557 m!730705))

(declare-fun m!730707 () Bool)

(assert (=> b!789557 m!730707))

(assert (=> b!789557 m!730705))

(declare-fun m!730709 () Bool)

(assert (=> b!789557 m!730709))

(declare-fun m!730711 () Bool)

(assert (=> b!789557 m!730711))

(declare-fun m!730713 () Bool)

(assert (=> b!789558 m!730713))

(declare-fun m!730715 () Bool)

(assert (=> b!789566 m!730715))

(assert (=> b!789552 m!730671))

(assert (=> b!789552 m!730671))

(assert (=> b!789552 m!730673))

(push 1)

