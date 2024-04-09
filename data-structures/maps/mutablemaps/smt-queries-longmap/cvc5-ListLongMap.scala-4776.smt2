; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65734 () Bool)

(assert start!65734)

(declare-fun b!753985 () Bool)

(declare-fun res!509538 () Bool)

(declare-fun e!420537 () Bool)

(assert (=> b!753985 (=> (not res!509538) (not e!420537))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753985 (= res!509538 (validKeyInArray!0 k!2102))))

(declare-fun b!753986 () Bool)

(declare-fun res!509548 () Bool)

(declare-fun e!420541 () Bool)

(assert (=> b!753986 (=> (not res!509548) (not e!420541))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41860 0))(
  ( (array!41861 (arr!20040 (Array (_ BitVec 32) (_ BitVec 64))) (size!20461 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41860)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753986 (= res!509548 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20040 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753987 () Bool)

(declare-datatypes ((Unit!25990 0))(
  ( (Unit!25991) )
))
(declare-fun e!420544 () Unit!25990)

(declare-fun Unit!25992 () Unit!25990)

(assert (=> b!753987 (= e!420544 Unit!25992)))

(declare-fun b!753988 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7647 0))(
  ( (MissingZero!7647 (index!32955 (_ BitVec 32))) (Found!7647 (index!32956 (_ BitVec 32))) (Intermediate!7647 (undefined!8459 Bool) (index!32957 (_ BitVec 32)) (x!63894 (_ BitVec 32))) (Undefined!7647) (MissingVacant!7647 (index!32958 (_ BitVec 32))) )
))
(declare-fun lt!335538 () SeekEntryResult!7647)

(declare-fun e!420546 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41860 (_ BitVec 32)) SeekEntryResult!7647)

(assert (=> b!753988 (= e!420546 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20040 a!3186) j!159) a!3186 mask!3328) lt!335538))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!335542 () SeekEntryResult!7647)

(declare-fun e!420540 () Bool)

(declare-fun b!753989 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41860 (_ BitVec 32)) SeekEntryResult!7647)

(assert (=> b!753989 (= e!420540 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20040 a!3186) j!159) a!3186 mask!3328) lt!335542))))

(declare-fun b!753990 () Bool)

(declare-fun res!509550 () Bool)

(declare-fun e!420545 () Bool)

(assert (=> b!753990 (=> (not res!509550) (not e!420545))))

(declare-datatypes ((List!14095 0))(
  ( (Nil!14092) (Cons!14091 (h!15163 (_ BitVec 64)) (t!20418 List!14095)) )
))
(declare-fun arrayNoDuplicates!0 (array!41860 (_ BitVec 32) List!14095) Bool)

(assert (=> b!753990 (= res!509550 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14092))))

(declare-fun b!753991 () Bool)

(declare-fun e!420543 () Bool)

(assert (=> b!753991 (= e!420543 true)))

(declare-fun e!420539 () Bool)

(assert (=> b!753991 e!420539))

(declare-fun res!509534 () Bool)

(assert (=> b!753991 (=> (not res!509534) (not e!420539))))

(declare-fun lt!335540 () (_ BitVec 64))

(assert (=> b!753991 (= res!509534 (= lt!335540 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335536 () Unit!25990)

(assert (=> b!753991 (= lt!335536 e!420544)))

(declare-fun c!82608 () Bool)

(assert (=> b!753991 (= c!82608 (= lt!335540 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753992 () Bool)

(assert (=> b!753992 (= e!420545 e!420541)))

(declare-fun res!509541 () Bool)

(assert (=> b!753992 (=> (not res!509541) (not e!420541))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753992 (= res!509541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20040 a!3186) j!159) mask!3328) (select (arr!20040 a!3186) j!159) a!3186 mask!3328) lt!335542))))

(assert (=> b!753992 (= lt!335542 (Intermediate!7647 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753993 () Bool)

(declare-fun Unit!25993 () Unit!25990)

(assert (=> b!753993 (= e!420544 Unit!25993)))

(assert (=> b!753993 false))

(declare-fun b!753994 () Bool)

(assert (=> b!753994 (= e!420537 e!420545)))

(declare-fun res!509543 () Bool)

(assert (=> b!753994 (=> (not res!509543) (not e!420545))))

(declare-fun lt!335544 () SeekEntryResult!7647)

(assert (=> b!753994 (= res!509543 (or (= lt!335544 (MissingZero!7647 i!1173)) (= lt!335544 (MissingVacant!7647 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41860 (_ BitVec 32)) SeekEntryResult!7647)

(assert (=> b!753994 (= lt!335544 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753995 () Bool)

(declare-fun res!509542 () Bool)

(assert (=> b!753995 (=> (not res!509542) (not e!420541))))

(assert (=> b!753995 (= res!509542 e!420540)))

(declare-fun c!82607 () Bool)

(assert (=> b!753995 (= c!82607 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753996 () Bool)

(declare-fun e!420538 () Bool)

(assert (=> b!753996 (= e!420541 e!420538)))

(declare-fun res!509532 () Bool)

(assert (=> b!753996 (=> (not res!509532) (not e!420538))))

(declare-fun lt!335537 () SeekEntryResult!7647)

(declare-fun lt!335545 () SeekEntryResult!7647)

(assert (=> b!753996 (= res!509532 (= lt!335537 lt!335545))))

(declare-fun lt!335535 () (_ BitVec 64))

(declare-fun lt!335539 () array!41860)

(assert (=> b!753996 (= lt!335545 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335535 lt!335539 mask!3328))))

(assert (=> b!753996 (= lt!335537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335535 mask!3328) lt!335535 lt!335539 mask!3328))))

(assert (=> b!753996 (= lt!335535 (select (store (arr!20040 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753996 (= lt!335539 (array!41861 (store (arr!20040 a!3186) i!1173 k!2102) (size!20461 a!3186)))))

(declare-fun b!753997 () Bool)

(declare-fun e!420535 () Bool)

(assert (=> b!753997 (= e!420538 (not e!420535))))

(declare-fun res!509536 () Bool)

(assert (=> b!753997 (=> res!509536 e!420535)))

(assert (=> b!753997 (= res!509536 (or (not (is-Intermediate!7647 lt!335545)) (bvslt x!1131 (x!63894 lt!335545)) (not (= x!1131 (x!63894 lt!335545))) (not (= index!1321 (index!32957 lt!335545)))))))

(assert (=> b!753997 e!420546))

(declare-fun res!509540 () Bool)

(assert (=> b!753997 (=> (not res!509540) (not e!420546))))

(declare-fun lt!335541 () SeekEntryResult!7647)

(assert (=> b!753997 (= res!509540 (= lt!335541 lt!335538))))

(assert (=> b!753997 (= lt!335538 (Found!7647 j!159))))

(assert (=> b!753997 (= lt!335541 (seekEntryOrOpen!0 (select (arr!20040 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41860 (_ BitVec 32)) Bool)

(assert (=> b!753997 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335543 () Unit!25990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25990)

(assert (=> b!753997 (= lt!335543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753998 () Bool)

(declare-fun res!509533 () Bool)

(assert (=> b!753998 (=> (not res!509533) (not e!420545))))

(assert (=> b!753998 (= res!509533 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20461 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20461 a!3186))))))

(declare-fun b!753999 () Bool)

(declare-fun res!509546 () Bool)

(assert (=> b!753999 (=> (not res!509546) (not e!420537))))

(assert (=> b!753999 (= res!509546 (validKeyInArray!0 (select (arr!20040 a!3186) j!159)))))

(declare-fun b!754000 () Bool)

(declare-fun res!509544 () Bool)

(assert (=> b!754000 (=> (not res!509544) (not e!420537))))

(assert (=> b!754000 (= res!509544 (and (= (size!20461 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20461 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20461 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754001 () Bool)

(declare-fun e!420542 () Bool)

(assert (=> b!754001 (= e!420535 e!420542)))

(declare-fun res!509535 () Bool)

(assert (=> b!754001 (=> res!509535 e!420542)))

(declare-fun lt!335546 () SeekEntryResult!7647)

(assert (=> b!754001 (= res!509535 (not (= lt!335546 lt!335538)))))

(assert (=> b!754001 (= lt!335546 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20040 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754002 () Bool)

(declare-fun res!509545 () Bool)

(assert (=> b!754002 (=> (not res!509545) (not e!420539))))

(assert (=> b!754002 (= res!509545 (= (seekEntryOrOpen!0 lt!335535 lt!335539 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335535 lt!335539 mask!3328)))))

(declare-fun b!754003 () Bool)

(assert (=> b!754003 (= e!420540 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20040 a!3186) j!159) a!3186 mask!3328) (Found!7647 j!159)))))

(declare-fun b!754004 () Bool)

(assert (=> b!754004 (= e!420539 (= lt!335541 lt!335546))))

(declare-fun b!754005 () Bool)

(declare-fun res!509537 () Bool)

(assert (=> b!754005 (=> (not res!509537) (not e!420545))))

(assert (=> b!754005 (= res!509537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!509547 () Bool)

(assert (=> start!65734 (=> (not res!509547) (not e!420537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65734 (= res!509547 (validMask!0 mask!3328))))

(assert (=> start!65734 e!420537))

(assert (=> start!65734 true))

(declare-fun array_inv!15814 (array!41860) Bool)

(assert (=> start!65734 (array_inv!15814 a!3186)))

(declare-fun b!754006 () Bool)

(declare-fun res!509539 () Bool)

(assert (=> b!754006 (=> (not res!509539) (not e!420537))))

(declare-fun arrayContainsKey!0 (array!41860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754006 (= res!509539 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754007 () Bool)

(assert (=> b!754007 (= e!420542 e!420543)))

(declare-fun res!509549 () Bool)

(assert (=> b!754007 (=> res!509549 e!420543)))

(assert (=> b!754007 (= res!509549 (= lt!335540 lt!335535))))

(assert (=> b!754007 (= lt!335540 (select (store (arr!20040 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65734 res!509547) b!754000))

(assert (= (and b!754000 res!509544) b!753999))

(assert (= (and b!753999 res!509546) b!753985))

(assert (= (and b!753985 res!509538) b!754006))

(assert (= (and b!754006 res!509539) b!753994))

(assert (= (and b!753994 res!509543) b!754005))

(assert (= (and b!754005 res!509537) b!753990))

(assert (= (and b!753990 res!509550) b!753998))

(assert (= (and b!753998 res!509533) b!753992))

(assert (= (and b!753992 res!509541) b!753986))

(assert (= (and b!753986 res!509548) b!753995))

(assert (= (and b!753995 c!82607) b!753989))

(assert (= (and b!753995 (not c!82607)) b!754003))

(assert (= (and b!753995 res!509542) b!753996))

(assert (= (and b!753996 res!509532) b!753997))

(assert (= (and b!753997 res!509540) b!753988))

(assert (= (and b!753997 (not res!509536)) b!754001))

(assert (= (and b!754001 (not res!509535)) b!754007))

(assert (= (and b!754007 (not res!509549)) b!753991))

(assert (= (and b!753991 c!82608) b!753993))

(assert (= (and b!753991 (not c!82608)) b!753987))

(assert (= (and b!753991 res!509534) b!754002))

(assert (= (and b!754002 res!509545) b!754004))

(declare-fun m!702613 () Bool)

(assert (=> b!754006 m!702613))

(declare-fun m!702615 () Bool)

(assert (=> start!65734 m!702615))

(declare-fun m!702617 () Bool)

(assert (=> start!65734 m!702617))

(declare-fun m!702619 () Bool)

(assert (=> b!754002 m!702619))

(declare-fun m!702621 () Bool)

(assert (=> b!754002 m!702621))

(declare-fun m!702623 () Bool)

(assert (=> b!753989 m!702623))

(assert (=> b!753989 m!702623))

(declare-fun m!702625 () Bool)

(assert (=> b!753989 m!702625))

(declare-fun m!702627 () Bool)

(assert (=> b!753990 m!702627))

(assert (=> b!754003 m!702623))

(assert (=> b!754003 m!702623))

(declare-fun m!702629 () Bool)

(assert (=> b!754003 m!702629))

(assert (=> b!753988 m!702623))

(assert (=> b!753988 m!702623))

(declare-fun m!702631 () Bool)

(assert (=> b!753988 m!702631))

(assert (=> b!753999 m!702623))

(assert (=> b!753999 m!702623))

(declare-fun m!702633 () Bool)

(assert (=> b!753999 m!702633))

(assert (=> b!754001 m!702623))

(assert (=> b!754001 m!702623))

(assert (=> b!754001 m!702629))

(assert (=> b!753992 m!702623))

(assert (=> b!753992 m!702623))

(declare-fun m!702635 () Bool)

(assert (=> b!753992 m!702635))

(assert (=> b!753992 m!702635))

(assert (=> b!753992 m!702623))

(declare-fun m!702637 () Bool)

(assert (=> b!753992 m!702637))

(declare-fun m!702639 () Bool)

(assert (=> b!754005 m!702639))

(declare-fun m!702641 () Bool)

(assert (=> b!753986 m!702641))

(declare-fun m!702643 () Bool)

(assert (=> b!753996 m!702643))

(declare-fun m!702645 () Bool)

(assert (=> b!753996 m!702645))

(declare-fun m!702647 () Bool)

(assert (=> b!753996 m!702647))

(assert (=> b!753996 m!702645))

(declare-fun m!702649 () Bool)

(assert (=> b!753996 m!702649))

(declare-fun m!702651 () Bool)

(assert (=> b!753996 m!702651))

(declare-fun m!702653 () Bool)

(assert (=> b!753985 m!702653))

(assert (=> b!753997 m!702623))

(assert (=> b!753997 m!702623))

(declare-fun m!702655 () Bool)

(assert (=> b!753997 m!702655))

(declare-fun m!702657 () Bool)

(assert (=> b!753997 m!702657))

(declare-fun m!702659 () Bool)

(assert (=> b!753997 m!702659))

(assert (=> b!754007 m!702651))

(declare-fun m!702661 () Bool)

(assert (=> b!754007 m!702661))

(declare-fun m!702663 () Bool)

(assert (=> b!753994 m!702663))

(push 1)

