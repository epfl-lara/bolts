; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65810 () Bool)

(assert start!65810)

(declare-fun b!756607 () Bool)

(declare-fun e!421908 () Bool)

(declare-fun e!421910 () Bool)

(assert (=> b!756607 (= e!421908 (not e!421910))))

(declare-fun res!511704 () Bool)

(assert (=> b!756607 (=> res!511704 e!421910)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7685 0))(
  ( (MissingZero!7685 (index!33107 (_ BitVec 32))) (Found!7685 (index!33108 (_ BitVec 32))) (Intermediate!7685 (undefined!8497 Bool) (index!33109 (_ BitVec 32)) (x!64028 (_ BitVec 32))) (Undefined!7685) (MissingVacant!7685 (index!33110 (_ BitVec 32))) )
))
(declare-fun lt!336904 () SeekEntryResult!7685)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!756607 (= res!511704 (or (not (is-Intermediate!7685 lt!336904)) (bvslt x!1131 (x!64028 lt!336904)) (not (= x!1131 (x!64028 lt!336904))) (not (= index!1321 (index!33109 lt!336904)))))))

(declare-fun e!421905 () Bool)

(assert (=> b!756607 e!421905))

(declare-fun res!511716 () Bool)

(assert (=> b!756607 (=> (not res!511716) (not e!421905))))

(declare-fun lt!336907 () SeekEntryResult!7685)

(declare-fun lt!336909 () SeekEntryResult!7685)

(assert (=> b!756607 (= res!511716 (= lt!336907 lt!336909))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!756607 (= lt!336909 (Found!7685 j!159))))

(declare-datatypes ((array!41936 0))(
  ( (array!41937 (arr!20078 (Array (_ BitVec 32) (_ BitVec 64))) (size!20499 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41936)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41936 (_ BitVec 32)) SeekEntryResult!7685)

(assert (=> b!756607 (= lt!336907 (seekEntryOrOpen!0 (select (arr!20078 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41936 (_ BitVec 32)) Bool)

(assert (=> b!756607 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26142 0))(
  ( (Unit!26143) )
))
(declare-fun lt!336910 () Unit!26142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41936 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26142)

(assert (=> b!756607 (= lt!336910 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756608 () Bool)

(declare-fun e!421903 () Bool)

(assert (=> b!756608 (= e!421910 e!421903)))

(declare-fun res!511706 () Bool)

(assert (=> b!756608 (=> res!511706 e!421903)))

(declare-fun lt!336913 () SeekEntryResult!7685)

(assert (=> b!756608 (= res!511706 (not (= lt!336913 lt!336909)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41936 (_ BitVec 32)) SeekEntryResult!7685)

(assert (=> b!756608 (= lt!336913 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20078 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756609 () Bool)

(declare-fun e!421914 () Unit!26142)

(declare-fun Unit!26144 () Unit!26142)

(assert (=> b!756609 (= e!421914 Unit!26144)))

(declare-fun b!756610 () Bool)

(declare-fun res!511701 () Bool)

(declare-fun e!421904 () Bool)

(assert (=> b!756610 (=> (not res!511701) (not e!421904))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756610 (= res!511701 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20499 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20499 a!3186))))))

(declare-fun b!756611 () Bool)

(declare-fun e!421907 () Bool)

(assert (=> b!756611 (= e!421907 true)))

(declare-fun e!421912 () Bool)

(assert (=> b!756611 e!421912))

(declare-fun res!511707 () Bool)

(assert (=> b!756611 (=> (not res!511707) (not e!421912))))

(declare-fun lt!336908 () (_ BitVec 64))

(assert (=> b!756611 (= res!511707 (= lt!336908 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336912 () Unit!26142)

(assert (=> b!756611 (= lt!336912 e!421914)))

(declare-fun c!82836 () Bool)

(assert (=> b!756611 (= c!82836 (= lt!336908 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756613 () Bool)

(declare-fun res!511702 () Bool)

(assert (=> b!756613 (=> (not res!511702) (not e!421912))))

(declare-fun lt!336906 () array!41936)

(declare-fun lt!336903 () (_ BitVec 64))

(assert (=> b!756613 (= res!511702 (= (seekEntryOrOpen!0 lt!336903 lt!336906 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336903 lt!336906 mask!3328)))))

(declare-fun b!756614 () Bool)

(declare-fun res!511712 () Bool)

(declare-fun e!421913 () Bool)

(assert (=> b!756614 (=> (not res!511712) (not e!421913))))

(declare-fun e!421906 () Bool)

(assert (=> b!756614 (= res!511712 e!421906)))

(declare-fun c!82835 () Bool)

(assert (=> b!756614 (= c!82835 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756615 () Bool)

(declare-fun res!511713 () Bool)

(declare-fun e!421909 () Bool)

(assert (=> b!756615 (=> (not res!511713) (not e!421909))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756615 (= res!511713 (validKeyInArray!0 k!2102))))

(declare-fun b!756616 () Bool)

(assert (=> b!756616 (= e!421905 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20078 a!3186) j!159) a!3186 mask!3328) lt!336909))))

(declare-fun b!756617 () Bool)

(assert (=> b!756617 (= e!421904 e!421913)))

(declare-fun res!511715 () Bool)

(assert (=> b!756617 (=> (not res!511715) (not e!421913))))

(declare-fun lt!336914 () SeekEntryResult!7685)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41936 (_ BitVec 32)) SeekEntryResult!7685)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756617 (= res!511715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20078 a!3186) j!159) mask!3328) (select (arr!20078 a!3186) j!159) a!3186 mask!3328) lt!336914))))

(assert (=> b!756617 (= lt!336914 (Intermediate!7685 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756618 () Bool)

(assert (=> b!756618 (= e!421912 (= lt!336907 lt!336913))))

(declare-fun b!756619 () Bool)

(assert (=> b!756619 (= e!421903 e!421907)))

(declare-fun res!511709 () Bool)

(assert (=> b!756619 (=> res!511709 e!421907)))

(assert (=> b!756619 (= res!511709 (= lt!336908 lt!336903))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756619 (= lt!336908 (select (store (arr!20078 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!756620 () Bool)

(declare-fun res!511700 () Bool)

(assert (=> b!756620 (=> (not res!511700) (not e!421909))))

(declare-fun arrayContainsKey!0 (array!41936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756620 (= res!511700 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756621 () Bool)

(declare-fun res!511705 () Bool)

(assert (=> b!756621 (=> (not res!511705) (not e!421904))))

(assert (=> b!756621 (= res!511705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756622 () Bool)

(assert (=> b!756622 (= e!421909 e!421904)))

(declare-fun res!511699 () Bool)

(assert (=> b!756622 (=> (not res!511699) (not e!421904))))

(declare-fun lt!336905 () SeekEntryResult!7685)

(assert (=> b!756622 (= res!511699 (or (= lt!336905 (MissingZero!7685 i!1173)) (= lt!336905 (MissingVacant!7685 i!1173))))))

(assert (=> b!756622 (= lt!336905 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756623 () Bool)

(declare-fun res!511703 () Bool)

(assert (=> b!756623 (=> (not res!511703) (not e!421904))))

(declare-datatypes ((List!14133 0))(
  ( (Nil!14130) (Cons!14129 (h!15201 (_ BitVec 64)) (t!20456 List!14133)) )
))
(declare-fun arrayNoDuplicates!0 (array!41936 (_ BitVec 32) List!14133) Bool)

(assert (=> b!756623 (= res!511703 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14130))))

(declare-fun b!756624 () Bool)

(declare-fun Unit!26145 () Unit!26142)

(assert (=> b!756624 (= e!421914 Unit!26145)))

(assert (=> b!756624 false))

(declare-fun b!756625 () Bool)

(assert (=> b!756625 (= e!421913 e!421908)))

(declare-fun res!511711 () Bool)

(assert (=> b!756625 (=> (not res!511711) (not e!421908))))

(declare-fun lt!336911 () SeekEntryResult!7685)

(assert (=> b!756625 (= res!511711 (= lt!336911 lt!336904))))

(assert (=> b!756625 (= lt!336904 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336903 lt!336906 mask!3328))))

(assert (=> b!756625 (= lt!336911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336903 mask!3328) lt!336903 lt!336906 mask!3328))))

(assert (=> b!756625 (= lt!336903 (select (store (arr!20078 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756625 (= lt!336906 (array!41937 (store (arr!20078 a!3186) i!1173 k!2102) (size!20499 a!3186)))))

(declare-fun res!511710 () Bool)

(assert (=> start!65810 (=> (not res!511710) (not e!421909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65810 (= res!511710 (validMask!0 mask!3328))))

(assert (=> start!65810 e!421909))

(assert (=> start!65810 true))

(declare-fun array_inv!15852 (array!41936) Bool)

(assert (=> start!65810 (array_inv!15852 a!3186)))

(declare-fun b!756612 () Bool)

(declare-fun res!511708 () Bool)

(assert (=> b!756612 (=> (not res!511708) (not e!421909))))

(assert (=> b!756612 (= res!511708 (and (= (size!20499 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20499 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20499 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756626 () Bool)

(assert (=> b!756626 (= e!421906 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20078 a!3186) j!159) a!3186 mask!3328) (Found!7685 j!159)))))

(declare-fun b!756627 () Bool)

(assert (=> b!756627 (= e!421906 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20078 a!3186) j!159) a!3186 mask!3328) lt!336914))))

(declare-fun b!756628 () Bool)

(declare-fun res!511714 () Bool)

(assert (=> b!756628 (=> (not res!511714) (not e!421913))))

(assert (=> b!756628 (= res!511714 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20078 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756629 () Bool)

(declare-fun res!511698 () Bool)

(assert (=> b!756629 (=> (not res!511698) (not e!421909))))

(assert (=> b!756629 (= res!511698 (validKeyInArray!0 (select (arr!20078 a!3186) j!159)))))

(assert (= (and start!65810 res!511710) b!756612))

(assert (= (and b!756612 res!511708) b!756629))

(assert (= (and b!756629 res!511698) b!756615))

(assert (= (and b!756615 res!511713) b!756620))

(assert (= (and b!756620 res!511700) b!756622))

(assert (= (and b!756622 res!511699) b!756621))

(assert (= (and b!756621 res!511705) b!756623))

(assert (= (and b!756623 res!511703) b!756610))

(assert (= (and b!756610 res!511701) b!756617))

(assert (= (and b!756617 res!511715) b!756628))

(assert (= (and b!756628 res!511714) b!756614))

(assert (= (and b!756614 c!82835) b!756627))

(assert (= (and b!756614 (not c!82835)) b!756626))

(assert (= (and b!756614 res!511712) b!756625))

(assert (= (and b!756625 res!511711) b!756607))

(assert (= (and b!756607 res!511716) b!756616))

(assert (= (and b!756607 (not res!511704)) b!756608))

(assert (= (and b!756608 (not res!511706)) b!756619))

(assert (= (and b!756619 (not res!511709)) b!756611))

(assert (= (and b!756611 c!82836) b!756624))

(assert (= (and b!756611 (not c!82836)) b!756609))

(assert (= (and b!756611 res!511707) b!756613))

(assert (= (and b!756613 res!511702) b!756618))

(declare-fun m!704589 () Bool)

(assert (=> b!756613 m!704589))

(declare-fun m!704591 () Bool)

(assert (=> b!756613 m!704591))

(declare-fun m!704593 () Bool)

(assert (=> b!756615 m!704593))

(declare-fun m!704595 () Bool)

(assert (=> b!756628 m!704595))

(declare-fun m!704597 () Bool)

(assert (=> b!756622 m!704597))

(declare-fun m!704599 () Bool)

(assert (=> b!756621 m!704599))

(declare-fun m!704601 () Bool)

(assert (=> b!756627 m!704601))

(assert (=> b!756627 m!704601))

(declare-fun m!704603 () Bool)

(assert (=> b!756627 m!704603))

(assert (=> b!756608 m!704601))

(assert (=> b!756608 m!704601))

(declare-fun m!704605 () Bool)

(assert (=> b!756608 m!704605))

(assert (=> b!756629 m!704601))

(assert (=> b!756629 m!704601))

(declare-fun m!704607 () Bool)

(assert (=> b!756629 m!704607))

(declare-fun m!704609 () Bool)

(assert (=> b!756619 m!704609))

(declare-fun m!704611 () Bool)

(assert (=> b!756619 m!704611))

(assert (=> b!756607 m!704601))

(assert (=> b!756607 m!704601))

(declare-fun m!704613 () Bool)

(assert (=> b!756607 m!704613))

(declare-fun m!704615 () Bool)

(assert (=> b!756607 m!704615))

(declare-fun m!704617 () Bool)

(assert (=> b!756607 m!704617))

(declare-fun m!704619 () Bool)

(assert (=> b!756620 m!704619))

(declare-fun m!704621 () Bool)

(assert (=> b!756623 m!704621))

(assert (=> b!756626 m!704601))

(assert (=> b!756626 m!704601))

(assert (=> b!756626 m!704605))

(assert (=> b!756616 m!704601))

(assert (=> b!756616 m!704601))

(declare-fun m!704623 () Bool)

(assert (=> b!756616 m!704623))

(declare-fun m!704625 () Bool)

(assert (=> start!65810 m!704625))

(declare-fun m!704627 () Bool)

(assert (=> start!65810 m!704627))

(declare-fun m!704629 () Bool)

(assert (=> b!756625 m!704629))

(declare-fun m!704631 () Bool)

(assert (=> b!756625 m!704631))

(declare-fun m!704633 () Bool)

(assert (=> b!756625 m!704633))

(assert (=> b!756625 m!704609))

(declare-fun m!704635 () Bool)

(assert (=> b!756625 m!704635))

(assert (=> b!756625 m!704629))

(assert (=> b!756617 m!704601))

(assert (=> b!756617 m!704601))

(declare-fun m!704637 () Bool)

(assert (=> b!756617 m!704637))

(assert (=> b!756617 m!704637))

(assert (=> b!756617 m!704601))

(declare-fun m!704639 () Bool)

(assert (=> b!756617 m!704639))

(push 1)

