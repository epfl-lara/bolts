; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64762 () Bool)

(assert start!64762)

(declare-fun b!730729 () Bool)

(declare-fun res!491127 () Bool)

(declare-fun e!408935 () Bool)

(assert (=> b!730729 (=> (not res!491127) (not e!408935))))

(declare-datatypes ((array!41164 0))(
  ( (array!41165 (arr!19698 (Array (_ BitVec 32) (_ BitVec 64))) (size!20119 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41164)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!730729 (= res!491127 (and (= (size!20119 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20119 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20119 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!491122 () Bool)

(assert (=> start!64762 (=> (not res!491122) (not e!408935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64762 (= res!491122 (validMask!0 mask!3328))))

(assert (=> start!64762 e!408935))

(assert (=> start!64762 true))

(declare-fun array_inv!15472 (array!41164) Bool)

(assert (=> start!64762 (array_inv!15472 a!3186)))

(declare-fun b!730730 () Bool)

(declare-fun res!491131 () Bool)

(assert (=> b!730730 (=> (not res!491131) (not e!408935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730730 (= res!491131 (validKeyInArray!0 (select (arr!19698 a!3186) j!159)))))

(declare-fun b!730731 () Bool)

(declare-fun res!491130 () Bool)

(assert (=> b!730731 (=> (not res!491130) (not e!408935))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730731 (= res!491130 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730732 () Bool)

(declare-fun res!491123 () Bool)

(declare-fun e!408933 () Bool)

(assert (=> b!730732 (=> (not res!491123) (not e!408933))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!730732 (= res!491123 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19698 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730733 () Bool)

(declare-fun e!408931 () Bool)

(assert (=> b!730733 (= e!408931 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!730734 () Bool)

(declare-fun e!408932 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7305 0))(
  ( (MissingZero!7305 (index!31587 (_ BitVec 32))) (Found!7305 (index!31588 (_ BitVec 32))) (Intermediate!7305 (undefined!8117 Bool) (index!31589 (_ BitVec 32)) (x!62592 (_ BitVec 32))) (Undefined!7305) (MissingVacant!7305 (index!31590 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41164 (_ BitVec 32)) SeekEntryResult!7305)

(assert (=> b!730734 (= e!408932 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19698 a!3186) j!159) a!3186 mask!3328) (Found!7305 j!159)))))

(declare-fun b!730735 () Bool)

(declare-fun res!491117 () Bool)

(declare-fun e!408934 () Bool)

(assert (=> b!730735 (=> (not res!491117) (not e!408934))))

(declare-datatypes ((List!13753 0))(
  ( (Nil!13750) (Cons!13749 (h!14809 (_ BitVec 64)) (t!20076 List!13753)) )
))
(declare-fun arrayNoDuplicates!0 (array!41164 (_ BitVec 32) List!13753) Bool)

(assert (=> b!730735 (= res!491117 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13750))))

(declare-fun e!408936 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!323840 () SeekEntryResult!7305)

(declare-fun b!730736 () Bool)

(assert (=> b!730736 (= e!408936 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19698 a!3186) j!159) a!3186 mask!3328) lt!323840))))

(declare-fun b!730737 () Bool)

(assert (=> b!730737 (= e!408934 e!408933)))

(declare-fun res!491132 () Bool)

(assert (=> b!730737 (=> (not res!491132) (not e!408933))))

(declare-fun lt!323843 () SeekEntryResult!7305)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41164 (_ BitVec 32)) SeekEntryResult!7305)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730737 (= res!491132 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19698 a!3186) j!159) mask!3328) (select (arr!19698 a!3186) j!159) a!3186 mask!3328) lt!323843))))

(assert (=> b!730737 (= lt!323843 (Intermediate!7305 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730738 () Bool)

(declare-fun e!408930 () Bool)

(assert (=> b!730738 (= e!408933 e!408930)))

(declare-fun res!491126 () Bool)

(assert (=> b!730738 (=> (not res!491126) (not e!408930))))

(declare-fun lt!323837 () SeekEntryResult!7305)

(declare-fun lt!323838 () SeekEntryResult!7305)

(assert (=> b!730738 (= res!491126 (= lt!323837 lt!323838))))

(declare-fun lt!323836 () array!41164)

(declare-fun lt!323839 () (_ BitVec 64))

(assert (=> b!730738 (= lt!323838 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323839 lt!323836 mask!3328))))

(assert (=> b!730738 (= lt!323837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323839 mask!3328) lt!323839 lt!323836 mask!3328))))

(assert (=> b!730738 (= lt!323839 (select (store (arr!19698 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730738 (= lt!323836 (array!41165 (store (arr!19698 a!3186) i!1173 k!2102) (size!20119 a!3186)))))

(declare-fun b!730739 () Bool)

(declare-fun e!408939 () Bool)

(assert (=> b!730739 (= e!408939 e!408931)))

(declare-fun res!491133 () Bool)

(assert (=> b!730739 (=> res!491133 e!408931)))

(assert (=> b!730739 (= res!491133 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323835 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730739 (= lt!323835 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730740 () Bool)

(declare-fun res!491120 () Bool)

(assert (=> b!730740 (=> (not res!491120) (not e!408935))))

(assert (=> b!730740 (= res!491120 (validKeyInArray!0 k!2102))))

(declare-fun b!730741 () Bool)

(declare-fun e!408938 () Bool)

(assert (=> b!730741 (= e!408938 e!408936)))

(declare-fun res!491129 () Bool)

(assert (=> b!730741 (=> (not res!491129) (not e!408936))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41164 (_ BitVec 32)) SeekEntryResult!7305)

(assert (=> b!730741 (= res!491129 (= (seekEntryOrOpen!0 (select (arr!19698 a!3186) j!159) a!3186 mask!3328) lt!323840))))

(assert (=> b!730741 (= lt!323840 (Found!7305 j!159))))

(declare-fun b!730742 () Bool)

(declare-fun res!491118 () Bool)

(assert (=> b!730742 (=> (not res!491118) (not e!408934))))

(assert (=> b!730742 (= res!491118 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20119 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20119 a!3186))))))

(declare-fun b!730743 () Bool)

(declare-fun res!491116 () Bool)

(assert (=> b!730743 (=> (not res!491116) (not e!408934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41164 (_ BitVec 32)) Bool)

(assert (=> b!730743 (= res!491116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730744 () Bool)

(assert (=> b!730744 (= e!408930 (not e!408939))))

(declare-fun res!491124 () Bool)

(assert (=> b!730744 (=> res!491124 e!408939)))

(assert (=> b!730744 (= res!491124 (or (not (is-Intermediate!7305 lt!323838)) (bvsge x!1131 (x!62592 lt!323838))))))

(assert (=> b!730744 e!408938))

(declare-fun res!491125 () Bool)

(assert (=> b!730744 (=> (not res!491125) (not e!408938))))

(assert (=> b!730744 (= res!491125 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24928 0))(
  ( (Unit!24929) )
))
(declare-fun lt!323842 () Unit!24928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41164 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24928)

(assert (=> b!730744 (= lt!323842 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730745 () Bool)

(assert (=> b!730745 (= e!408932 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19698 a!3186) j!159) a!3186 mask!3328) lt!323843))))

(declare-fun b!730746 () Bool)

(declare-fun res!491128 () Bool)

(assert (=> b!730746 (=> (not res!491128) (not e!408933))))

(assert (=> b!730746 (= res!491128 e!408932)))

(declare-fun c!80181 () Bool)

(assert (=> b!730746 (= c!80181 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730747 () Bool)

(assert (=> b!730747 (= e!408935 e!408934)))

(declare-fun res!491121 () Bool)

(assert (=> b!730747 (=> (not res!491121) (not e!408934))))

(declare-fun lt!323841 () SeekEntryResult!7305)

(assert (=> b!730747 (= res!491121 (or (= lt!323841 (MissingZero!7305 i!1173)) (= lt!323841 (MissingVacant!7305 i!1173))))))

(assert (=> b!730747 (= lt!323841 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730748 () Bool)

(declare-fun res!491119 () Bool)

(assert (=> b!730748 (=> res!491119 e!408931)))

(assert (=> b!730748 (= res!491119 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19698 a!3186) j!159) a!3186 mask!3328) (Found!7305 j!159))))))

(assert (= (and start!64762 res!491122) b!730729))

(assert (= (and b!730729 res!491127) b!730730))

(assert (= (and b!730730 res!491131) b!730740))

(assert (= (and b!730740 res!491120) b!730731))

(assert (= (and b!730731 res!491130) b!730747))

(assert (= (and b!730747 res!491121) b!730743))

(assert (= (and b!730743 res!491116) b!730735))

(assert (= (and b!730735 res!491117) b!730742))

(assert (= (and b!730742 res!491118) b!730737))

(assert (= (and b!730737 res!491132) b!730732))

(assert (= (and b!730732 res!491123) b!730746))

(assert (= (and b!730746 c!80181) b!730745))

(assert (= (and b!730746 (not c!80181)) b!730734))

(assert (= (and b!730746 res!491128) b!730738))

(assert (= (and b!730738 res!491126) b!730744))

(assert (= (and b!730744 res!491125) b!730741))

(assert (= (and b!730741 res!491129) b!730736))

(assert (= (and b!730744 (not res!491124)) b!730739))

(assert (= (and b!730739 (not res!491133)) b!730748))

(assert (= (and b!730748 (not res!491119)) b!730733))

(declare-fun m!684301 () Bool)

(assert (=> b!730744 m!684301))

(declare-fun m!684303 () Bool)

(assert (=> b!730744 m!684303))

(declare-fun m!684305 () Bool)

(assert (=> b!730748 m!684305))

(assert (=> b!730748 m!684305))

(declare-fun m!684307 () Bool)

(assert (=> b!730748 m!684307))

(assert (=> b!730737 m!684305))

(assert (=> b!730737 m!684305))

(declare-fun m!684309 () Bool)

(assert (=> b!730737 m!684309))

(assert (=> b!730737 m!684309))

(assert (=> b!730737 m!684305))

(declare-fun m!684311 () Bool)

(assert (=> b!730737 m!684311))

(declare-fun m!684313 () Bool)

(assert (=> b!730743 m!684313))

(assert (=> b!730730 m!684305))

(assert (=> b!730730 m!684305))

(declare-fun m!684315 () Bool)

(assert (=> b!730730 m!684315))

(assert (=> b!730736 m!684305))

(assert (=> b!730736 m!684305))

(declare-fun m!684317 () Bool)

(assert (=> b!730736 m!684317))

(declare-fun m!684319 () Bool)

(assert (=> b!730738 m!684319))

(declare-fun m!684321 () Bool)

(assert (=> b!730738 m!684321))

(declare-fun m!684323 () Bool)

(assert (=> b!730738 m!684323))

(declare-fun m!684325 () Bool)

(assert (=> b!730738 m!684325))

(assert (=> b!730738 m!684323))

(declare-fun m!684327 () Bool)

(assert (=> b!730738 m!684327))

(assert (=> b!730734 m!684305))

(assert (=> b!730734 m!684305))

(assert (=> b!730734 m!684307))

(declare-fun m!684329 () Bool)

(assert (=> b!730735 m!684329))

(declare-fun m!684331 () Bool)

(assert (=> b!730732 m!684331))

(assert (=> b!730741 m!684305))

(assert (=> b!730741 m!684305))

(declare-fun m!684333 () Bool)

(assert (=> b!730741 m!684333))

(declare-fun m!684335 () Bool)

(assert (=> b!730739 m!684335))

(declare-fun m!684337 () Bool)

(assert (=> b!730747 m!684337))

(declare-fun m!684339 () Bool)

(assert (=> b!730731 m!684339))

(assert (=> b!730745 m!684305))

(assert (=> b!730745 m!684305))

(declare-fun m!684341 () Bool)

(assert (=> b!730745 m!684341))

(declare-fun m!684343 () Bool)

(assert (=> start!64762 m!684343))

(declare-fun m!684345 () Bool)

(assert (=> start!64762 m!684345))

(declare-fun m!684347 () Bool)

(assert (=> b!730740 m!684347))

(push 1)

