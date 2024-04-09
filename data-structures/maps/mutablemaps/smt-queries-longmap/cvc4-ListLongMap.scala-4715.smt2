; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65372 () Bool)

(assert start!65372)

(declare-fun b!742750 () Bool)

(declare-fun e!415087 () Bool)

(declare-fun e!415088 () Bool)

(assert (=> b!742750 (= e!415087 (not e!415088))))

(declare-fun res!500051 () Bool)

(assert (=> b!742750 (=> res!500051 e!415088)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7466 0))(
  ( (MissingZero!7466 (index!32231 (_ BitVec 32))) (Found!7466 (index!32232 (_ BitVec 32))) (Intermediate!7466 (undefined!8278 Bool) (index!32233 (_ BitVec 32)) (x!63225 (_ BitVec 32))) (Undefined!7466) (MissingVacant!7466 (index!32234 (_ BitVec 32))) )
))
(declare-fun lt!329982 () SeekEntryResult!7466)

(assert (=> b!742750 (= res!500051 (or (not (is-Intermediate!7466 lt!329982)) (bvslt x!1131 (x!63225 lt!329982)) (not (= x!1131 (x!63225 lt!329982))) (not (= index!1321 (index!32233 lt!329982)))))))

(declare-fun e!415092 () Bool)

(assert (=> b!742750 e!415092))

(declare-fun res!500045 () Bool)

(assert (=> b!742750 (=> (not res!500045) (not e!415092))))

(declare-datatypes ((array!41498 0))(
  ( (array!41499 (arr!19859 (Array (_ BitVec 32) (_ BitVec 64))) (size!20280 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41498)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41498 (_ BitVec 32)) Bool)

(assert (=> b!742750 (= res!500045 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25412 0))(
  ( (Unit!25413) )
))
(declare-fun lt!329979 () Unit!25412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25412)

(assert (=> b!742750 (= lt!329979 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742751 () Bool)

(declare-fun res!500049 () Bool)

(declare-fun e!415090 () Bool)

(assert (=> b!742751 (=> (not res!500049) (not e!415090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742751 (= res!500049 (validKeyInArray!0 (select (arr!19859 a!3186) j!159)))))

(declare-fun b!742752 () Bool)

(declare-fun res!500044 () Bool)

(declare-fun e!415091 () Bool)

(assert (=> b!742752 (=> (not res!500044) (not e!415091))))

(declare-fun e!415085 () Bool)

(assert (=> b!742752 (= res!500044 e!415085)))

(declare-fun c!81738 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742752 (= c!81738 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742753 () Bool)

(declare-fun lt!329984 () (_ BitVec 64))

(assert (=> b!742753 (= e!415088 (validKeyInArray!0 lt!329984))))

(declare-fun b!742754 () Bool)

(declare-fun e!415086 () Bool)

(assert (=> b!742754 (= e!415092 e!415086)))

(declare-fun res!500040 () Bool)

(assert (=> b!742754 (=> (not res!500040) (not e!415086))))

(declare-fun lt!329978 () SeekEntryResult!7466)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41498 (_ BitVec 32)) SeekEntryResult!7466)

(assert (=> b!742754 (= res!500040 (= (seekEntryOrOpen!0 (select (arr!19859 a!3186) j!159) a!3186 mask!3328) lt!329978))))

(assert (=> b!742754 (= lt!329978 (Found!7466 j!159))))

(declare-fun b!742755 () Bool)

(declare-fun res!500046 () Bool)

(assert (=> b!742755 (=> (not res!500046) (not e!415091))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742755 (= res!500046 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19859 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742756 () Bool)

(assert (=> b!742756 (= e!415091 e!415087)))

(declare-fun res!500039 () Bool)

(assert (=> b!742756 (=> (not res!500039) (not e!415087))))

(declare-fun lt!329980 () SeekEntryResult!7466)

(assert (=> b!742756 (= res!500039 (= lt!329980 lt!329982))))

(declare-fun lt!329983 () array!41498)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41498 (_ BitVec 32)) SeekEntryResult!7466)

(assert (=> b!742756 (= lt!329982 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329984 lt!329983 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742756 (= lt!329980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329984 mask!3328) lt!329984 lt!329983 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!742756 (= lt!329984 (select (store (arr!19859 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742756 (= lt!329983 (array!41499 (store (arr!19859 a!3186) i!1173 k!2102) (size!20280 a!3186)))))

(declare-fun b!742757 () Bool)

(declare-fun res!500041 () Bool)

(declare-fun e!415089 () Bool)

(assert (=> b!742757 (=> (not res!500041) (not e!415089))))

(declare-datatypes ((List!13914 0))(
  ( (Nil!13911) (Cons!13910 (h!14982 (_ BitVec 64)) (t!20237 List!13914)) )
))
(declare-fun arrayNoDuplicates!0 (array!41498 (_ BitVec 32) List!13914) Bool)

(assert (=> b!742757 (= res!500041 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13911))))

(declare-fun res!500052 () Bool)

(assert (=> start!65372 (=> (not res!500052) (not e!415090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65372 (= res!500052 (validMask!0 mask!3328))))

(assert (=> start!65372 e!415090))

(assert (=> start!65372 true))

(declare-fun array_inv!15633 (array!41498) Bool)

(assert (=> start!65372 (array_inv!15633 a!3186)))

(declare-fun b!742758 () Bool)

(declare-fun res!500050 () Bool)

(assert (=> b!742758 (=> res!500050 e!415088)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41498 (_ BitVec 32)) SeekEntryResult!7466)

(assert (=> b!742758 (= res!500050 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19859 a!3186) j!159) a!3186 mask!3328) (Found!7466 j!159))))))

(declare-fun b!742759 () Bool)

(assert (=> b!742759 (= e!415090 e!415089)))

(declare-fun res!500048 () Bool)

(assert (=> b!742759 (=> (not res!500048) (not e!415089))))

(declare-fun lt!329981 () SeekEntryResult!7466)

(assert (=> b!742759 (= res!500048 (or (= lt!329981 (MissingZero!7466 i!1173)) (= lt!329981 (MissingVacant!7466 i!1173))))))

(assert (=> b!742759 (= lt!329981 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742760 () Bool)

(assert (=> b!742760 (= e!415089 e!415091)))

(declare-fun res!500038 () Bool)

(assert (=> b!742760 (=> (not res!500038) (not e!415091))))

(declare-fun lt!329977 () SeekEntryResult!7466)

(assert (=> b!742760 (= res!500038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19859 a!3186) j!159) mask!3328) (select (arr!19859 a!3186) j!159) a!3186 mask!3328) lt!329977))))

(assert (=> b!742760 (= lt!329977 (Intermediate!7466 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742761 () Bool)

(assert (=> b!742761 (= e!415085 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19859 a!3186) j!159) a!3186 mask!3328) (Found!7466 j!159)))))

(declare-fun b!742762 () Bool)

(declare-fun res!500035 () Bool)

(assert (=> b!742762 (=> res!500035 e!415088)))

(assert (=> b!742762 (= res!500035 (or (not (= (select (store (arr!19859 a!3186) i!1173 k!2102) index!1321) lt!329984)) (undefined!8278 lt!329982) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!742763 () Bool)

(declare-fun res!500036 () Bool)

(assert (=> b!742763 (=> (not res!500036) (not e!415090))))

(assert (=> b!742763 (= res!500036 (validKeyInArray!0 k!2102))))

(declare-fun b!742764 () Bool)

(declare-fun res!500037 () Bool)

(assert (=> b!742764 (=> (not res!500037) (not e!415089))))

(assert (=> b!742764 (= res!500037 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20280 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20280 a!3186))))))

(declare-fun b!742765 () Bool)

(declare-fun res!500042 () Bool)

(assert (=> b!742765 (=> (not res!500042) (not e!415090))))

(assert (=> b!742765 (= res!500042 (and (= (size!20280 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20280 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20280 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742766 () Bool)

(assert (=> b!742766 (= e!415086 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19859 a!3186) j!159) a!3186 mask!3328) lt!329978))))

(declare-fun b!742767 () Bool)

(declare-fun res!500047 () Bool)

(assert (=> b!742767 (=> (not res!500047) (not e!415090))))

(declare-fun arrayContainsKey!0 (array!41498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742767 (= res!500047 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742768 () Bool)

(assert (=> b!742768 (= e!415085 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19859 a!3186) j!159) a!3186 mask!3328) lt!329977))))

(declare-fun b!742769 () Bool)

(declare-fun res!500043 () Bool)

(assert (=> b!742769 (=> (not res!500043) (not e!415089))))

(assert (=> b!742769 (= res!500043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65372 res!500052) b!742765))

(assert (= (and b!742765 res!500042) b!742751))

(assert (= (and b!742751 res!500049) b!742763))

(assert (= (and b!742763 res!500036) b!742767))

(assert (= (and b!742767 res!500047) b!742759))

(assert (= (and b!742759 res!500048) b!742769))

(assert (= (and b!742769 res!500043) b!742757))

(assert (= (and b!742757 res!500041) b!742764))

(assert (= (and b!742764 res!500037) b!742760))

(assert (= (and b!742760 res!500038) b!742755))

(assert (= (and b!742755 res!500046) b!742752))

(assert (= (and b!742752 c!81738) b!742768))

(assert (= (and b!742752 (not c!81738)) b!742761))

(assert (= (and b!742752 res!500044) b!742756))

(assert (= (and b!742756 res!500039) b!742750))

(assert (= (and b!742750 res!500045) b!742754))

(assert (= (and b!742754 res!500040) b!742766))

(assert (= (and b!742750 (not res!500051)) b!742758))

(assert (= (and b!742758 (not res!500050)) b!742762))

(assert (= (and b!742762 (not res!500035)) b!742753))

(declare-fun m!693641 () Bool)

(assert (=> b!742755 m!693641))

(declare-fun m!693643 () Bool)

(assert (=> b!742759 m!693643))

(declare-fun m!693645 () Bool)

(assert (=> b!742757 m!693645))

(declare-fun m!693647 () Bool)

(assert (=> b!742769 m!693647))

(declare-fun m!693649 () Bool)

(assert (=> b!742751 m!693649))

(assert (=> b!742751 m!693649))

(declare-fun m!693651 () Bool)

(assert (=> b!742751 m!693651))

(assert (=> b!742761 m!693649))

(assert (=> b!742761 m!693649))

(declare-fun m!693653 () Bool)

(assert (=> b!742761 m!693653))

(assert (=> b!742758 m!693649))

(assert (=> b!742758 m!693649))

(assert (=> b!742758 m!693653))

(assert (=> b!742766 m!693649))

(assert (=> b!742766 m!693649))

(declare-fun m!693655 () Bool)

(assert (=> b!742766 m!693655))

(assert (=> b!742768 m!693649))

(assert (=> b!742768 m!693649))

(declare-fun m!693657 () Bool)

(assert (=> b!742768 m!693657))

(assert (=> b!742754 m!693649))

(assert (=> b!742754 m!693649))

(declare-fun m!693659 () Bool)

(assert (=> b!742754 m!693659))

(declare-fun m!693661 () Bool)

(assert (=> b!742753 m!693661))

(declare-fun m!693663 () Bool)

(assert (=> b!742767 m!693663))

(declare-fun m!693665 () Bool)

(assert (=> b!742763 m!693665))

(declare-fun m!693667 () Bool)

(assert (=> b!742750 m!693667))

(declare-fun m!693669 () Bool)

(assert (=> b!742750 m!693669))

(assert (=> b!742760 m!693649))

(assert (=> b!742760 m!693649))

(declare-fun m!693671 () Bool)

(assert (=> b!742760 m!693671))

(assert (=> b!742760 m!693671))

(assert (=> b!742760 m!693649))

(declare-fun m!693673 () Bool)

(assert (=> b!742760 m!693673))

(declare-fun m!693675 () Bool)

(assert (=> start!65372 m!693675))

(declare-fun m!693677 () Bool)

(assert (=> start!65372 m!693677))

(declare-fun m!693679 () Bool)

(assert (=> b!742762 m!693679))

(declare-fun m!693681 () Bool)

(assert (=> b!742762 m!693681))

(assert (=> b!742756 m!693679))

(declare-fun m!693683 () Bool)

(assert (=> b!742756 m!693683))

(declare-fun m!693685 () Bool)

(assert (=> b!742756 m!693685))

(declare-fun m!693687 () Bool)

(assert (=> b!742756 m!693687))

(declare-fun m!693689 () Bool)

(assert (=> b!742756 m!693689))

(assert (=> b!742756 m!693687))

(push 1)

