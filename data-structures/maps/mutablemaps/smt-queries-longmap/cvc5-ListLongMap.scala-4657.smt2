; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64732 () Bool)

(assert start!64732)

(declare-fun b!729906 () Bool)

(declare-fun res!490385 () Bool)

(declare-fun e!408517 () Bool)

(assert (=> b!729906 (=> (not res!490385) (not e!408517))))

(declare-fun e!408518 () Bool)

(assert (=> b!729906 (= res!490385 e!408518)))

(declare-fun c!80136 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729906 (= c!80136 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729907 () Bool)

(declare-fun e!408522 () Bool)

(declare-fun e!408515 () Bool)

(assert (=> b!729907 (= e!408522 (not e!408515))))

(declare-fun res!490394 () Bool)

(assert (=> b!729907 (=> res!490394 e!408515)))

(declare-datatypes ((SeekEntryResult!7290 0))(
  ( (MissingZero!7290 (index!31527 (_ BitVec 32))) (Found!7290 (index!31528 (_ BitVec 32))) (Intermediate!7290 (undefined!8102 Bool) (index!31529 (_ BitVec 32)) (x!62537 (_ BitVec 32))) (Undefined!7290) (MissingVacant!7290 (index!31530 (_ BitVec 32))) )
))
(declare-fun lt!323427 () SeekEntryResult!7290)

(assert (=> b!729907 (= res!490394 (or (not (is-Intermediate!7290 lt!323427)) (bvsge x!1131 (x!62537 lt!323427))))))

(declare-fun e!408519 () Bool)

(assert (=> b!729907 e!408519))

(declare-fun res!490397 () Bool)

(assert (=> b!729907 (=> (not res!490397) (not e!408519))))

(declare-datatypes ((array!41134 0))(
  ( (array!41135 (arr!19683 (Array (_ BitVec 32) (_ BitVec 64))) (size!20104 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41134)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41134 (_ BitVec 32)) Bool)

(assert (=> b!729907 (= res!490397 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24898 0))(
  ( (Unit!24899) )
))
(declare-fun lt!323429 () Unit!24898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24898)

(assert (=> b!729907 (= lt!323429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729908 () Bool)

(declare-fun res!490387 () Bool)

(declare-fun e!408520 () Bool)

(assert (=> b!729908 (=> (not res!490387) (not e!408520))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729908 (= res!490387 (validKeyInArray!0 k!2102))))

(declare-fun b!729909 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323426 () SeekEntryResult!7290)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41134 (_ BitVec 32)) SeekEntryResult!7290)

(assert (=> b!729909 (= e!408518 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19683 a!3186) j!159) a!3186 mask!3328) lt!323426))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!729910 () Bool)

(declare-fun e!408516 () Bool)

(declare-fun lt!323421 () SeekEntryResult!7290)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41134 (_ BitVec 32)) SeekEntryResult!7290)

(assert (=> b!729910 (= e!408516 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19683 a!3186) j!159) a!3186 mask!3328) lt!323421))))

(declare-fun b!729911 () Bool)

(assert (=> b!729911 (= e!408518 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19683 a!3186) j!159) a!3186 mask!3328) (Found!7290 j!159)))))

(declare-fun b!729912 () Bool)

(declare-fun res!490395 () Bool)

(assert (=> b!729912 (=> (not res!490395) (not e!408520))))

(declare-fun arrayContainsKey!0 (array!41134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729912 (= res!490395 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729913 () Bool)

(declare-fun res!490389 () Bool)

(declare-fun e!408521 () Bool)

(assert (=> b!729913 (=> (not res!490389) (not e!408521))))

(assert (=> b!729913 (= res!490389 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20104 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20104 a!3186))))))

(declare-fun b!729914 () Bool)

(assert (=> b!729914 (= e!408517 e!408522)))

(declare-fun res!490398 () Bool)

(assert (=> b!729914 (=> (not res!490398) (not e!408522))))

(declare-fun lt!323423 () SeekEntryResult!7290)

(assert (=> b!729914 (= res!490398 (= lt!323423 lt!323427))))

(declare-fun lt!323422 () (_ BitVec 64))

(declare-fun lt!323425 () array!41134)

(assert (=> b!729914 (= lt!323427 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323422 lt!323425 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729914 (= lt!323423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323422 mask!3328) lt!323422 lt!323425 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729914 (= lt!323422 (select (store (arr!19683 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729914 (= lt!323425 (array!41135 (store (arr!19683 a!3186) i!1173 k!2102) (size!20104 a!3186)))))

(declare-fun b!729915 () Bool)

(declare-fun res!490393 () Bool)

(assert (=> b!729915 (=> (not res!490393) (not e!408521))))

(declare-datatypes ((List!13738 0))(
  ( (Nil!13735) (Cons!13734 (h!14794 (_ BitVec 64)) (t!20061 List!13738)) )
))
(declare-fun arrayNoDuplicates!0 (array!41134 (_ BitVec 32) List!13738) Bool)

(assert (=> b!729915 (= res!490393 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13735))))

(declare-fun b!729916 () Bool)

(declare-fun res!490388 () Bool)

(assert (=> b!729916 (=> (not res!490388) (not e!408520))))

(assert (=> b!729916 (= res!490388 (and (= (size!20104 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20104 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20104 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729917 () Bool)

(declare-fun res!490396 () Bool)

(assert (=> b!729917 (=> (not res!490396) (not e!408521))))

(assert (=> b!729917 (= res!490396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!490390 () Bool)

(assert (=> start!64732 (=> (not res!490390) (not e!408520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64732 (= res!490390 (validMask!0 mask!3328))))

(assert (=> start!64732 e!408520))

(assert (=> start!64732 true))

(declare-fun array_inv!15457 (array!41134) Bool)

(assert (=> start!64732 (array_inv!15457 a!3186)))

(declare-fun b!729918 () Bool)

(assert (=> b!729918 (= e!408519 e!408516)))

(declare-fun res!490392 () Bool)

(assert (=> b!729918 (=> (not res!490392) (not e!408516))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41134 (_ BitVec 32)) SeekEntryResult!7290)

(assert (=> b!729918 (= res!490392 (= (seekEntryOrOpen!0 (select (arr!19683 a!3186) j!159) a!3186 mask!3328) lt!323421))))

(assert (=> b!729918 (= lt!323421 (Found!7290 j!159))))

(declare-fun b!729919 () Bool)

(declare-fun res!490386 () Bool)

(assert (=> b!729919 (=> (not res!490386) (not e!408517))))

(assert (=> b!729919 (= res!490386 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19683 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729920 () Bool)

(assert (=> b!729920 (= e!408515 true)))

(declare-fun lt!323428 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729920 (= lt!323428 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729921 () Bool)

(declare-fun res!490391 () Bool)

(assert (=> b!729921 (=> (not res!490391) (not e!408520))))

(assert (=> b!729921 (= res!490391 (validKeyInArray!0 (select (arr!19683 a!3186) j!159)))))

(declare-fun b!729922 () Bool)

(assert (=> b!729922 (= e!408521 e!408517)))

(declare-fun res!490383 () Bool)

(assert (=> b!729922 (=> (not res!490383) (not e!408517))))

(assert (=> b!729922 (= res!490383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19683 a!3186) j!159) mask!3328) (select (arr!19683 a!3186) j!159) a!3186 mask!3328) lt!323426))))

(assert (=> b!729922 (= lt!323426 (Intermediate!7290 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729923 () Bool)

(assert (=> b!729923 (= e!408520 e!408521)))

(declare-fun res!490384 () Bool)

(assert (=> b!729923 (=> (not res!490384) (not e!408521))))

(declare-fun lt!323424 () SeekEntryResult!7290)

(assert (=> b!729923 (= res!490384 (or (= lt!323424 (MissingZero!7290 i!1173)) (= lt!323424 (MissingVacant!7290 i!1173))))))

(assert (=> b!729923 (= lt!323424 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64732 res!490390) b!729916))

(assert (= (and b!729916 res!490388) b!729921))

(assert (= (and b!729921 res!490391) b!729908))

(assert (= (and b!729908 res!490387) b!729912))

(assert (= (and b!729912 res!490395) b!729923))

(assert (= (and b!729923 res!490384) b!729917))

(assert (= (and b!729917 res!490396) b!729915))

(assert (= (and b!729915 res!490393) b!729913))

(assert (= (and b!729913 res!490389) b!729922))

(assert (= (and b!729922 res!490383) b!729919))

(assert (= (and b!729919 res!490386) b!729906))

(assert (= (and b!729906 c!80136) b!729909))

(assert (= (and b!729906 (not c!80136)) b!729911))

(assert (= (and b!729906 res!490385) b!729914))

(assert (= (and b!729914 res!490398) b!729907))

(assert (= (and b!729907 res!490397) b!729918))

(assert (= (and b!729918 res!490392) b!729910))

(assert (= (and b!729907 (not res!490394)) b!729920))

(declare-fun m!683581 () Bool)

(assert (=> start!64732 m!683581))

(declare-fun m!683583 () Bool)

(assert (=> start!64732 m!683583))

(declare-fun m!683585 () Bool)

(assert (=> b!729919 m!683585))

(declare-fun m!683587 () Bool)

(assert (=> b!729920 m!683587))

(declare-fun m!683589 () Bool)

(assert (=> b!729917 m!683589))

(declare-fun m!683591 () Bool)

(assert (=> b!729921 m!683591))

(assert (=> b!729921 m!683591))

(declare-fun m!683593 () Bool)

(assert (=> b!729921 m!683593))

(declare-fun m!683595 () Bool)

(assert (=> b!729912 m!683595))

(assert (=> b!729911 m!683591))

(assert (=> b!729911 m!683591))

(declare-fun m!683597 () Bool)

(assert (=> b!729911 m!683597))

(declare-fun m!683599 () Bool)

(assert (=> b!729908 m!683599))

(assert (=> b!729910 m!683591))

(assert (=> b!729910 m!683591))

(declare-fun m!683601 () Bool)

(assert (=> b!729910 m!683601))

(declare-fun m!683603 () Bool)

(assert (=> b!729914 m!683603))

(declare-fun m!683605 () Bool)

(assert (=> b!729914 m!683605))

(declare-fun m!683607 () Bool)

(assert (=> b!729914 m!683607))

(assert (=> b!729914 m!683605))

(declare-fun m!683609 () Bool)

(assert (=> b!729914 m!683609))

(declare-fun m!683611 () Bool)

(assert (=> b!729914 m!683611))

(assert (=> b!729909 m!683591))

(assert (=> b!729909 m!683591))

(declare-fun m!683613 () Bool)

(assert (=> b!729909 m!683613))

(declare-fun m!683615 () Bool)

(assert (=> b!729923 m!683615))

(assert (=> b!729918 m!683591))

(assert (=> b!729918 m!683591))

(declare-fun m!683617 () Bool)

(assert (=> b!729918 m!683617))

(declare-fun m!683619 () Bool)

(assert (=> b!729915 m!683619))

(assert (=> b!729922 m!683591))

(assert (=> b!729922 m!683591))

(declare-fun m!683621 () Bool)

(assert (=> b!729922 m!683621))

(assert (=> b!729922 m!683621))

(assert (=> b!729922 m!683591))

(declare-fun m!683623 () Bool)

(assert (=> b!729922 m!683623))

(declare-fun m!683625 () Bool)

(assert (=> b!729907 m!683625))

(declare-fun m!683627 () Bool)

(assert (=> b!729907 m!683627))

(push 1)

