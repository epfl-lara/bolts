; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65812 () Bool)

(assert start!65812)

(declare-fun b!756676 () Bool)

(declare-fun e!421941 () Bool)

(declare-fun e!421945 () Bool)

(assert (=> b!756676 (= e!421941 e!421945)))

(declare-fun res!511771 () Bool)

(assert (=> b!756676 (=> res!511771 e!421945)))

(declare-fun lt!336949 () (_ BitVec 64))

(declare-fun lt!336948 () (_ BitVec 64))

(assert (=> b!756676 (= res!511771 (= lt!336949 lt!336948))))

(declare-datatypes ((array!41938 0))(
  ( (array!41939 (arr!20079 (Array (_ BitVec 32) (_ BitVec 64))) (size!20500 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41938)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756676 (= lt!336949 (select (store (arr!20079 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!511762 () Bool)

(declare-fun e!421946 () Bool)

(assert (=> start!65812 (=> (not res!511762) (not e!421946))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65812 (= res!511762 (validMask!0 mask!3328))))

(assert (=> start!65812 e!421946))

(assert (=> start!65812 true))

(declare-fun array_inv!15853 (array!41938) Bool)

(assert (=> start!65812 (array_inv!15853 a!3186)))

(declare-fun b!756677 () Bool)

(declare-fun e!421949 () Bool)

(declare-fun e!421940 () Bool)

(assert (=> b!756677 (= e!421949 (not e!421940))))

(declare-fun res!511766 () Bool)

(assert (=> b!756677 (=> res!511766 e!421940)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7686 0))(
  ( (MissingZero!7686 (index!33111 (_ BitVec 32))) (Found!7686 (index!33112 (_ BitVec 32))) (Intermediate!7686 (undefined!8498 Bool) (index!33113 (_ BitVec 32)) (x!64037 (_ BitVec 32))) (Undefined!7686) (MissingVacant!7686 (index!33114 (_ BitVec 32))) )
))
(declare-fun lt!336942 () SeekEntryResult!7686)

(assert (=> b!756677 (= res!511766 (or (not (is-Intermediate!7686 lt!336942)) (bvslt x!1131 (x!64037 lt!336942)) (not (= x!1131 (x!64037 lt!336942))) (not (= index!1321 (index!33113 lt!336942)))))))

(declare-fun e!421939 () Bool)

(assert (=> b!756677 e!421939))

(declare-fun res!511763 () Bool)

(assert (=> b!756677 (=> (not res!511763) (not e!421939))))

(declare-fun lt!336947 () SeekEntryResult!7686)

(declare-fun lt!336946 () SeekEntryResult!7686)

(assert (=> b!756677 (= res!511763 (= lt!336947 lt!336946))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!756677 (= lt!336946 (Found!7686 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41938 (_ BitVec 32)) SeekEntryResult!7686)

(assert (=> b!756677 (= lt!336947 (seekEntryOrOpen!0 (select (arr!20079 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41938 (_ BitVec 32)) Bool)

(assert (=> b!756677 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26146 0))(
  ( (Unit!26147) )
))
(declare-fun lt!336941 () Unit!26146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26146)

(assert (=> b!756677 (= lt!336941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756678 () Bool)

(assert (=> b!756678 (= e!421940 e!421941)))

(declare-fun res!511764 () Bool)

(assert (=> b!756678 (=> res!511764 e!421941)))

(declare-fun lt!336943 () SeekEntryResult!7686)

(assert (=> b!756678 (= res!511764 (not (= lt!336943 lt!336946)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41938 (_ BitVec 32)) SeekEntryResult!7686)

(assert (=> b!756678 (= lt!336943 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20079 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756679 () Bool)

(declare-fun res!511761 () Bool)

(declare-fun e!421944 () Bool)

(assert (=> b!756679 (=> (not res!511761) (not e!421944))))

(declare-fun lt!336940 () array!41938)

(assert (=> b!756679 (= res!511761 (= (seekEntryOrOpen!0 lt!336948 lt!336940 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336948 lt!336940 mask!3328)))))

(declare-fun b!756680 () Bool)

(assert (=> b!756680 (= e!421944 (= lt!336947 lt!336943))))

(declare-fun b!756681 () Bool)

(declare-fun e!421950 () Bool)

(declare-fun e!421943 () Bool)

(assert (=> b!756681 (= e!421950 e!421943)))

(declare-fun res!511756 () Bool)

(assert (=> b!756681 (=> (not res!511756) (not e!421943))))

(declare-fun lt!336944 () SeekEntryResult!7686)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41938 (_ BitVec 32)) SeekEntryResult!7686)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756681 (= res!511756 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20079 a!3186) j!159) mask!3328) (select (arr!20079 a!3186) j!159) a!3186 mask!3328) lt!336944))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756681 (= lt!336944 (Intermediate!7686 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756682 () Bool)

(declare-fun res!511759 () Bool)

(assert (=> b!756682 (=> (not res!511759) (not e!421946))))

(assert (=> b!756682 (= res!511759 (and (= (size!20500 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20500 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20500 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756683 () Bool)

(declare-fun res!511760 () Bool)

(assert (=> b!756683 (=> (not res!511760) (not e!421943))))

(assert (=> b!756683 (= res!511760 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20079 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756684 () Bool)

(declare-fun e!421948 () Bool)

(assert (=> b!756684 (= e!421948 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20079 a!3186) j!159) a!3186 mask!3328) lt!336944))))

(declare-fun b!756685 () Bool)

(declare-fun res!511758 () Bool)

(assert (=> b!756685 (=> (not res!511758) (not e!421950))))

(assert (=> b!756685 (= res!511758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756686 () Bool)

(declare-fun res!511773 () Bool)

(assert (=> b!756686 (=> (not res!511773) (not e!421946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756686 (= res!511773 (validKeyInArray!0 (select (arr!20079 a!3186) j!159)))))

(declare-fun b!756687 () Bool)

(assert (=> b!756687 (= e!421939 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20079 a!3186) j!159) a!3186 mask!3328) lt!336946))))

(declare-fun b!756688 () Bool)

(assert (=> b!756688 (= e!421943 e!421949)))

(declare-fun res!511765 () Bool)

(assert (=> b!756688 (=> (not res!511765) (not e!421949))))

(declare-fun lt!336939 () SeekEntryResult!7686)

(assert (=> b!756688 (= res!511765 (= lt!336939 lt!336942))))

(assert (=> b!756688 (= lt!336942 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336948 lt!336940 mask!3328))))

(assert (=> b!756688 (= lt!336939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336948 mask!3328) lt!336948 lt!336940 mask!3328))))

(assert (=> b!756688 (= lt!336948 (select (store (arr!20079 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756688 (= lt!336940 (array!41939 (store (arr!20079 a!3186) i!1173 k!2102) (size!20500 a!3186)))))

(declare-fun b!756689 () Bool)

(declare-fun res!511772 () Bool)

(assert (=> b!756689 (=> (not res!511772) (not e!421950))))

(assert (=> b!756689 (= res!511772 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20500 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20500 a!3186))))))

(declare-fun b!756690 () Bool)

(declare-fun res!511755 () Bool)

(assert (=> b!756690 (=> (not res!511755) (not e!421946))))

(assert (=> b!756690 (= res!511755 (validKeyInArray!0 k!2102))))

(declare-fun b!756691 () Bool)

(declare-fun res!511770 () Bool)

(assert (=> b!756691 (=> (not res!511770) (not e!421943))))

(assert (=> b!756691 (= res!511770 e!421948)))

(declare-fun c!82841 () Bool)

(assert (=> b!756691 (= c!82841 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756692 () Bool)

(declare-fun res!511757 () Bool)

(assert (=> b!756692 (=> (not res!511757) (not e!421950))))

(declare-datatypes ((List!14134 0))(
  ( (Nil!14131) (Cons!14130 (h!15202 (_ BitVec 64)) (t!20457 List!14134)) )
))
(declare-fun arrayNoDuplicates!0 (array!41938 (_ BitVec 32) List!14134) Bool)

(assert (=> b!756692 (= res!511757 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14131))))

(declare-fun b!756693 () Bool)

(declare-fun e!421942 () Unit!26146)

(declare-fun Unit!26148 () Unit!26146)

(assert (=> b!756693 (= e!421942 Unit!26148)))

(declare-fun b!756694 () Bool)

(declare-fun Unit!26149 () Unit!26146)

(assert (=> b!756694 (= e!421942 Unit!26149)))

(assert (=> b!756694 false))

(declare-fun b!756695 () Bool)

(assert (=> b!756695 (= e!421948 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20079 a!3186) j!159) a!3186 mask!3328) (Found!7686 j!159)))))

(declare-fun b!756696 () Bool)

(assert (=> b!756696 (= e!421946 e!421950)))

(declare-fun res!511767 () Bool)

(assert (=> b!756696 (=> (not res!511767) (not e!421950))))

(declare-fun lt!336950 () SeekEntryResult!7686)

(assert (=> b!756696 (= res!511767 (or (= lt!336950 (MissingZero!7686 i!1173)) (= lt!336950 (MissingVacant!7686 i!1173))))))

(assert (=> b!756696 (= lt!336950 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756697 () Bool)

(assert (=> b!756697 (= e!421945 true)))

(assert (=> b!756697 e!421944))

(declare-fun res!511769 () Bool)

(assert (=> b!756697 (=> (not res!511769) (not e!421944))))

(assert (=> b!756697 (= res!511769 (= lt!336949 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336945 () Unit!26146)

(assert (=> b!756697 (= lt!336945 e!421942)))

(declare-fun c!82842 () Bool)

(assert (=> b!756697 (= c!82842 (= lt!336949 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756698 () Bool)

(declare-fun res!511768 () Bool)

(assert (=> b!756698 (=> (not res!511768) (not e!421946))))

(declare-fun arrayContainsKey!0 (array!41938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756698 (= res!511768 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65812 res!511762) b!756682))

(assert (= (and b!756682 res!511759) b!756686))

(assert (= (and b!756686 res!511773) b!756690))

(assert (= (and b!756690 res!511755) b!756698))

(assert (= (and b!756698 res!511768) b!756696))

(assert (= (and b!756696 res!511767) b!756685))

(assert (= (and b!756685 res!511758) b!756692))

(assert (= (and b!756692 res!511757) b!756689))

(assert (= (and b!756689 res!511772) b!756681))

(assert (= (and b!756681 res!511756) b!756683))

(assert (= (and b!756683 res!511760) b!756691))

(assert (= (and b!756691 c!82841) b!756684))

(assert (= (and b!756691 (not c!82841)) b!756695))

(assert (= (and b!756691 res!511770) b!756688))

(assert (= (and b!756688 res!511765) b!756677))

(assert (= (and b!756677 res!511763) b!756687))

(assert (= (and b!756677 (not res!511766)) b!756678))

(assert (= (and b!756678 (not res!511764)) b!756676))

(assert (= (and b!756676 (not res!511771)) b!756697))

(assert (= (and b!756697 c!82842) b!756694))

(assert (= (and b!756697 (not c!82842)) b!756693))

(assert (= (and b!756697 res!511769) b!756679))

(assert (= (and b!756679 res!511761) b!756680))

(declare-fun m!704641 () Bool)

(assert (=> b!756676 m!704641))

(declare-fun m!704643 () Bool)

(assert (=> b!756676 m!704643))

(declare-fun m!704645 () Bool)

(assert (=> b!756684 m!704645))

(assert (=> b!756684 m!704645))

(declare-fun m!704647 () Bool)

(assert (=> b!756684 m!704647))

(declare-fun m!704649 () Bool)

(assert (=> b!756690 m!704649))

(declare-fun m!704651 () Bool)

(assert (=> b!756679 m!704651))

(declare-fun m!704653 () Bool)

(assert (=> b!756679 m!704653))

(assert (=> b!756687 m!704645))

(assert (=> b!756687 m!704645))

(declare-fun m!704655 () Bool)

(assert (=> b!756687 m!704655))

(declare-fun m!704657 () Bool)

(assert (=> b!756696 m!704657))

(declare-fun m!704659 () Bool)

(assert (=> b!756685 m!704659))

(declare-fun m!704661 () Bool)

(assert (=> b!756698 m!704661))

(assert (=> b!756677 m!704645))

(assert (=> b!756677 m!704645))

(declare-fun m!704663 () Bool)

(assert (=> b!756677 m!704663))

(declare-fun m!704665 () Bool)

(assert (=> b!756677 m!704665))

(declare-fun m!704667 () Bool)

(assert (=> b!756677 m!704667))

(assert (=> b!756681 m!704645))

(assert (=> b!756681 m!704645))

(declare-fun m!704669 () Bool)

(assert (=> b!756681 m!704669))

(assert (=> b!756681 m!704669))

(assert (=> b!756681 m!704645))

(declare-fun m!704671 () Bool)

(assert (=> b!756681 m!704671))

(declare-fun m!704673 () Bool)

(assert (=> start!65812 m!704673))

(declare-fun m!704675 () Bool)

(assert (=> start!65812 m!704675))

(assert (=> b!756686 m!704645))

(assert (=> b!756686 m!704645))

(declare-fun m!704677 () Bool)

(assert (=> b!756686 m!704677))

(declare-fun m!704679 () Bool)

(assert (=> b!756688 m!704679))

(declare-fun m!704681 () Bool)

(assert (=> b!756688 m!704681))

(declare-fun m!704683 () Bool)

(assert (=> b!756688 m!704683))

(assert (=> b!756688 m!704641))

(assert (=> b!756688 m!704679))

(declare-fun m!704685 () Bool)

(assert (=> b!756688 m!704685))

(assert (=> b!756695 m!704645))

(assert (=> b!756695 m!704645))

(declare-fun m!704687 () Bool)

(assert (=> b!756695 m!704687))

(assert (=> b!756678 m!704645))

(assert (=> b!756678 m!704645))

(assert (=> b!756678 m!704687))

(declare-fun m!704689 () Bool)

(assert (=> b!756683 m!704689))

(declare-fun m!704691 () Bool)

(assert (=> b!756692 m!704691))

(push 1)

