; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65432 () Bool)

(assert start!65432)

(declare-fun b!744488 () Bool)

(declare-datatypes ((array!41558 0))(
  ( (array!41559 (arr!19889 (Array (_ BitVec 32) (_ BitVec 64))) (size!20310 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41558)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!415901 () Bool)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!330756 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!744488 (= e!415901 (or (= (select (store (arr!19889 a!3186) i!1173 k!2102) index!1321) lt!330756) (not (= (select (store (arr!19889 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!744489 () Bool)

(declare-fun res!501601 () Bool)

(declare-fun e!415896 () Bool)

(assert (=> b!744489 (=> (not res!501601) (not e!415896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744489 (= res!501601 (validKeyInArray!0 k!2102))))

(declare-fun b!744490 () Bool)

(declare-fun res!501595 () Bool)

(declare-fun e!415894 () Bool)

(assert (=> b!744490 (=> (not res!501595) (not e!415894))))

(declare-datatypes ((List!13944 0))(
  ( (Nil!13941) (Cons!13940 (h!15012 (_ BitVec 64)) (t!20267 List!13944)) )
))
(declare-fun arrayNoDuplicates!0 (array!41558 (_ BitVec 32) List!13944) Bool)

(assert (=> b!744490 (= res!501595 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13941))))

(declare-fun b!744491 () Bool)

(declare-fun res!501604 () Bool)

(assert (=> b!744491 (=> (not res!501604) (not e!415896))))

(declare-fun arrayContainsKey!0 (array!41558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744491 (= res!501604 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!7496 0))(
  ( (MissingZero!7496 (index!32351 (_ BitVec 32))) (Found!7496 (index!32352 (_ BitVec 32))) (Intermediate!7496 (undefined!8308 Bool) (index!32353 (_ BitVec 32)) (x!63335 (_ BitVec 32))) (Undefined!7496) (MissingVacant!7496 (index!32354 (_ BitVec 32))) )
))
(declare-fun lt!330755 () SeekEntryResult!7496)

(declare-fun b!744492 () Bool)

(declare-fun e!415897 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41558 (_ BitVec 32)) SeekEntryResult!7496)

(assert (=> b!744492 (= e!415897 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19889 a!3186) j!159) a!3186 mask!3328) lt!330755))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!330757 () SeekEntryResult!7496)

(declare-fun e!415900 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!744493 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41558 (_ BitVec 32)) SeekEntryResult!7496)

(assert (=> b!744493 (= e!415900 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19889 a!3186) j!159) a!3186 mask!3328) lt!330757))))

(declare-fun b!744494 () Bool)

(declare-fun e!415899 () Bool)

(assert (=> b!744494 (= e!415899 e!415900)))

(declare-fun res!501593 () Bool)

(assert (=> b!744494 (=> (not res!501593) (not e!415900))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41558 (_ BitVec 32)) SeekEntryResult!7496)

(assert (=> b!744494 (= res!501593 (= (seekEntryOrOpen!0 (select (arr!19889 a!3186) j!159) a!3186 mask!3328) lt!330757))))

(assert (=> b!744494 (= lt!330757 (Found!7496 j!159))))

(declare-fun b!744495 () Bool)

(declare-fun res!501600 () Bool)

(assert (=> b!744495 (=> res!501600 e!415901)))

(assert (=> b!744495 (= res!501600 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19889 a!3186) j!159) a!3186 mask!3328) (Found!7496 j!159))))))

(declare-fun b!744496 () Bool)

(assert (=> b!744496 (= e!415897 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19889 a!3186) j!159) a!3186 mask!3328) (Found!7496 j!159)))))

(declare-fun b!744497 () Bool)

(declare-fun e!415898 () Bool)

(assert (=> b!744497 (= e!415894 e!415898)))

(declare-fun res!501596 () Bool)

(assert (=> b!744497 (=> (not res!501596) (not e!415898))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744497 (= res!501596 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19889 a!3186) j!159) mask!3328) (select (arr!19889 a!3186) j!159) a!3186 mask!3328) lt!330755))))

(assert (=> b!744497 (= lt!330755 (Intermediate!7496 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!501599 () Bool)

(assert (=> start!65432 (=> (not res!501599) (not e!415896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65432 (= res!501599 (validMask!0 mask!3328))))

(assert (=> start!65432 e!415896))

(assert (=> start!65432 true))

(declare-fun array_inv!15663 (array!41558) Bool)

(assert (=> start!65432 (array_inv!15663 a!3186)))

(declare-fun b!744498 () Bool)

(declare-fun res!501607 () Bool)

(assert (=> b!744498 (=> (not res!501607) (not e!415894))))

(assert (=> b!744498 (= res!501607 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20310 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20310 a!3186))))))

(declare-fun b!744499 () Bool)

(declare-fun res!501606 () Bool)

(assert (=> b!744499 (=> (not res!501606) (not e!415896))))

(assert (=> b!744499 (= res!501606 (and (= (size!20310 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20310 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20310 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744500 () Bool)

(declare-fun e!415895 () Bool)

(assert (=> b!744500 (= e!415898 e!415895)))

(declare-fun res!501609 () Bool)

(assert (=> b!744500 (=> (not res!501609) (not e!415895))))

(declare-fun lt!330751 () SeekEntryResult!7496)

(declare-fun lt!330758 () SeekEntryResult!7496)

(assert (=> b!744500 (= res!501609 (= lt!330751 lt!330758))))

(declare-fun lt!330752 () array!41558)

(assert (=> b!744500 (= lt!330758 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330756 lt!330752 mask!3328))))

(assert (=> b!744500 (= lt!330751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330756 mask!3328) lt!330756 lt!330752 mask!3328))))

(assert (=> b!744500 (= lt!330756 (select (store (arr!19889 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744500 (= lt!330752 (array!41559 (store (arr!19889 a!3186) i!1173 k!2102) (size!20310 a!3186)))))

(declare-fun b!744501 () Bool)

(declare-fun res!501597 () Bool)

(assert (=> b!744501 (=> (not res!501597) (not e!415898))))

(assert (=> b!744501 (= res!501597 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19889 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744502 () Bool)

(declare-fun res!501602 () Bool)

(assert (=> b!744502 (=> (not res!501602) (not e!415894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41558 (_ BitVec 32)) Bool)

(assert (=> b!744502 (= res!501602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744503 () Bool)

(assert (=> b!744503 (= e!415896 e!415894)))

(declare-fun res!501594 () Bool)

(assert (=> b!744503 (=> (not res!501594) (not e!415894))))

(declare-fun lt!330754 () SeekEntryResult!7496)

(assert (=> b!744503 (= res!501594 (or (= lt!330754 (MissingZero!7496 i!1173)) (= lt!330754 (MissingVacant!7496 i!1173))))))

(assert (=> b!744503 (= lt!330754 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744504 () Bool)

(declare-fun res!501608 () Bool)

(assert (=> b!744504 (=> (not res!501608) (not e!415898))))

(assert (=> b!744504 (= res!501608 e!415897)))

(declare-fun c!81828 () Bool)

(assert (=> b!744504 (= c!81828 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744505 () Bool)

(declare-fun res!501603 () Bool)

(assert (=> b!744505 (=> (not res!501603) (not e!415896))))

(assert (=> b!744505 (= res!501603 (validKeyInArray!0 (select (arr!19889 a!3186) j!159)))))

(declare-fun b!744506 () Bool)

(assert (=> b!744506 (= e!415895 (not e!415901))))

(declare-fun res!501598 () Bool)

(assert (=> b!744506 (=> res!501598 e!415901)))

(assert (=> b!744506 (= res!501598 (or (not (is-Intermediate!7496 lt!330758)) (bvslt x!1131 (x!63335 lt!330758)) (not (= x!1131 (x!63335 lt!330758))) (not (= index!1321 (index!32353 lt!330758)))))))

(assert (=> b!744506 e!415899))

(declare-fun res!501605 () Bool)

(assert (=> b!744506 (=> (not res!501605) (not e!415899))))

(assert (=> b!744506 (= res!501605 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25472 0))(
  ( (Unit!25473) )
))
(declare-fun lt!330753 () Unit!25472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25472)

(assert (=> b!744506 (= lt!330753 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65432 res!501599) b!744499))

(assert (= (and b!744499 res!501606) b!744505))

(assert (= (and b!744505 res!501603) b!744489))

(assert (= (and b!744489 res!501601) b!744491))

(assert (= (and b!744491 res!501604) b!744503))

(assert (= (and b!744503 res!501594) b!744502))

(assert (= (and b!744502 res!501602) b!744490))

(assert (= (and b!744490 res!501595) b!744498))

(assert (= (and b!744498 res!501607) b!744497))

(assert (= (and b!744497 res!501596) b!744501))

(assert (= (and b!744501 res!501597) b!744504))

(assert (= (and b!744504 c!81828) b!744492))

(assert (= (and b!744504 (not c!81828)) b!744496))

(assert (= (and b!744504 res!501608) b!744500))

(assert (= (and b!744500 res!501609) b!744506))

(assert (= (and b!744506 res!501605) b!744494))

(assert (= (and b!744494 res!501593) b!744493))

(assert (= (and b!744506 (not res!501598)) b!744495))

(assert (= (and b!744495 (not res!501600)) b!744488))

(declare-fun m!695089 () Bool)

(assert (=> b!744492 m!695089))

(assert (=> b!744492 m!695089))

(declare-fun m!695091 () Bool)

(assert (=> b!744492 m!695091))

(assert (=> b!744497 m!695089))

(assert (=> b!744497 m!695089))

(declare-fun m!695093 () Bool)

(assert (=> b!744497 m!695093))

(assert (=> b!744497 m!695093))

(assert (=> b!744497 m!695089))

(declare-fun m!695095 () Bool)

(assert (=> b!744497 m!695095))

(declare-fun m!695097 () Bool)

(assert (=> b!744491 m!695097))

(declare-fun m!695099 () Bool)

(assert (=> b!744501 m!695099))

(declare-fun m!695101 () Bool)

(assert (=> b!744488 m!695101))

(declare-fun m!695103 () Bool)

(assert (=> b!744488 m!695103))

(declare-fun m!695105 () Bool)

(assert (=> b!744490 m!695105))

(assert (=> b!744496 m!695089))

(assert (=> b!744496 m!695089))

(declare-fun m!695107 () Bool)

(assert (=> b!744496 m!695107))

(assert (=> b!744505 m!695089))

(assert (=> b!744505 m!695089))

(declare-fun m!695109 () Bool)

(assert (=> b!744505 m!695109))

(declare-fun m!695111 () Bool)

(assert (=> b!744500 m!695111))

(declare-fun m!695113 () Bool)

(assert (=> b!744500 m!695113))

(assert (=> b!744500 m!695111))

(declare-fun m!695115 () Bool)

(assert (=> b!744500 m!695115))

(assert (=> b!744500 m!695101))

(declare-fun m!695117 () Bool)

(assert (=> b!744500 m!695117))

(declare-fun m!695119 () Bool)

(assert (=> b!744489 m!695119))

(assert (=> b!744494 m!695089))

(assert (=> b!744494 m!695089))

(declare-fun m!695121 () Bool)

(assert (=> b!744494 m!695121))

(declare-fun m!695123 () Bool)

(assert (=> b!744502 m!695123))

(declare-fun m!695125 () Bool)

(assert (=> start!65432 m!695125))

(declare-fun m!695127 () Bool)

(assert (=> start!65432 m!695127))

(declare-fun m!695129 () Bool)

(assert (=> b!744503 m!695129))

(assert (=> b!744495 m!695089))

(assert (=> b!744495 m!695089))

(assert (=> b!744495 m!695107))

(assert (=> b!744493 m!695089))

(assert (=> b!744493 m!695089))

(declare-fun m!695131 () Bool)

(assert (=> b!744493 m!695131))

(declare-fun m!695133 () Bool)

(assert (=> b!744506 m!695133))

(declare-fun m!695135 () Bool)

(assert (=> b!744506 m!695135))

(push 1)

