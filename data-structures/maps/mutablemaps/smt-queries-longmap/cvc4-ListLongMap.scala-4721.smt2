; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65408 () Bool)

(assert start!65408)

(declare-fun b!743831 () Bool)

(declare-fun res!501024 () Bool)

(declare-fun e!415576 () Bool)

(assert (=> b!743831 (=> (not res!501024) (not e!415576))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41534 0))(
  ( (array!41535 (arr!19877 (Array (_ BitVec 32) (_ BitVec 64))) (size!20298 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41534)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743831 (= res!501024 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20298 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20298 a!3186))))))

(declare-fun b!743832 () Bool)

(declare-fun e!415574 () Bool)

(declare-fun e!415572 () Bool)

(assert (=> b!743832 (= e!415574 (not e!415572))))

(declare-fun res!501012 () Bool)

(assert (=> b!743832 (=> res!501012 e!415572)))

(declare-datatypes ((SeekEntryResult!7484 0))(
  ( (MissingZero!7484 (index!32303 (_ BitVec 32))) (Found!7484 (index!32304 (_ BitVec 32))) (Intermediate!7484 (undefined!8296 Bool) (index!32305 (_ BitVec 32)) (x!63291 (_ BitVec 32))) (Undefined!7484) (MissingVacant!7484 (index!32306 (_ BitVec 32))) )
))
(declare-fun lt!330436 () SeekEntryResult!7484)

(assert (=> b!743832 (= res!501012 (or (not (is-Intermediate!7484 lt!330436)) (bvslt x!1131 (x!63291 lt!330436)) (not (= x!1131 (x!63291 lt!330436))) (not (= index!1321 (index!32305 lt!330436)))))))

(declare-fun e!415570 () Bool)

(assert (=> b!743832 e!415570))

(declare-fun res!501018 () Bool)

(assert (=> b!743832 (=> (not res!501018) (not e!415570))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41534 (_ BitVec 32)) Bool)

(assert (=> b!743832 (= res!501018 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25448 0))(
  ( (Unit!25449) )
))
(declare-fun lt!330443 () Unit!25448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25448)

(assert (=> b!743832 (= lt!330443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743833 () Bool)

(declare-fun res!501008 () Bool)

(declare-fun e!415577 () Bool)

(assert (=> b!743833 (=> (not res!501008) (not e!415577))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743833 (= res!501008 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19877 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743834 () Bool)

(declare-fun res!501019 () Bool)

(declare-fun e!415575 () Bool)

(assert (=> b!743834 (=> (not res!501019) (not e!415575))))

(assert (=> b!743834 (= res!501019 (and (= (size!20298 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20298 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20298 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743835 () Bool)

(declare-fun res!501011 () Bool)

(assert (=> b!743835 (=> (not res!501011) (not e!415575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743835 (= res!501011 (validKeyInArray!0 (select (arr!19877 a!3186) j!159)))))

(declare-fun lt!330442 () SeekEntryResult!7484)

(declare-fun e!415571 () Bool)

(declare-fun b!743836 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41534 (_ BitVec 32)) SeekEntryResult!7484)

(assert (=> b!743836 (= e!415571 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19877 a!3186) j!159) a!3186 mask!3328) lt!330442))))

(declare-fun b!743837 () Bool)

(assert (=> b!743837 (= e!415575 e!415576)))

(declare-fun res!501014 () Bool)

(assert (=> b!743837 (=> (not res!501014) (not e!415576))))

(declare-fun lt!330439 () SeekEntryResult!7484)

(assert (=> b!743837 (= res!501014 (or (= lt!330439 (MissingZero!7484 i!1173)) (= lt!330439 (MissingVacant!7484 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41534 (_ BitVec 32)) SeekEntryResult!7484)

(assert (=> b!743837 (= lt!330439 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743838 () Bool)

(declare-fun res!501023 () Bool)

(assert (=> b!743838 (=> (not res!501023) (not e!415576))))

(declare-datatypes ((List!13932 0))(
  ( (Nil!13929) (Cons!13928 (h!15000 (_ BitVec 64)) (t!20255 List!13932)) )
))
(declare-fun arrayNoDuplicates!0 (array!41534 (_ BitVec 32) List!13932) Bool)

(assert (=> b!743838 (= res!501023 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13929))))

(declare-fun b!743839 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41534 (_ BitVec 32)) SeekEntryResult!7484)

(assert (=> b!743839 (= e!415571 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19877 a!3186) j!159) a!3186 mask!3328) (Found!7484 j!159)))))

(declare-fun b!743840 () Bool)

(declare-fun res!501015 () Bool)

(assert (=> b!743840 (=> res!501015 e!415572)))

(assert (=> b!743840 (= res!501015 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19877 a!3186) j!159) a!3186 mask!3328) (Found!7484 j!159))))))

(declare-fun b!743841 () Bool)

(declare-fun res!501020 () Bool)

(assert (=> b!743841 (=> (not res!501020) (not e!415577))))

(assert (=> b!743841 (= res!501020 e!415571)))

(declare-fun c!81792 () Bool)

(assert (=> b!743841 (= c!81792 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743842 () Bool)

(assert (=> b!743842 (= e!415577 e!415574)))

(declare-fun res!501022 () Bool)

(assert (=> b!743842 (=> (not res!501022) (not e!415574))))

(declare-fun lt!330437 () SeekEntryResult!7484)

(assert (=> b!743842 (= res!501022 (= lt!330437 lt!330436))))

(declare-fun lt!330441 () (_ BitVec 64))

(declare-fun lt!330440 () array!41534)

(assert (=> b!743842 (= lt!330436 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330441 lt!330440 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743842 (= lt!330437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330441 mask!3328) lt!330441 lt!330440 mask!3328))))

(assert (=> b!743842 (= lt!330441 (select (store (arr!19877 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743842 (= lt!330440 (array!41535 (store (arr!19877 a!3186) i!1173 k!2102) (size!20298 a!3186)))))

(declare-fun e!415573 () Bool)

(declare-fun lt!330438 () SeekEntryResult!7484)

(declare-fun b!743843 () Bool)

(assert (=> b!743843 (= e!415573 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19877 a!3186) j!159) a!3186 mask!3328) lt!330438))))

(declare-fun b!743845 () Bool)

(assert (=> b!743845 (= e!415570 e!415573)))

(declare-fun res!501021 () Bool)

(assert (=> b!743845 (=> (not res!501021) (not e!415573))))

(assert (=> b!743845 (= res!501021 (= (seekEntryOrOpen!0 (select (arr!19877 a!3186) j!159) a!3186 mask!3328) lt!330438))))

(assert (=> b!743845 (= lt!330438 (Found!7484 j!159))))

(declare-fun b!743846 () Bool)

(assert (=> b!743846 (= e!415572 (or (= (select (store (arr!19877 a!3186) i!1173 k!2102) index!1321) lt!330441) (not (= (select (store (arr!19877 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!743847 () Bool)

(assert (=> b!743847 (= e!415576 e!415577)))

(declare-fun res!501013 () Bool)

(assert (=> b!743847 (=> (not res!501013) (not e!415577))))

(assert (=> b!743847 (= res!501013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19877 a!3186) j!159) mask!3328) (select (arr!19877 a!3186) j!159) a!3186 mask!3328) lt!330442))))

(assert (=> b!743847 (= lt!330442 (Intermediate!7484 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743848 () Bool)

(declare-fun res!501017 () Bool)

(assert (=> b!743848 (=> (not res!501017) (not e!415575))))

(declare-fun arrayContainsKey!0 (array!41534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743848 (= res!501017 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743849 () Bool)

(declare-fun res!501010 () Bool)

(assert (=> b!743849 (=> (not res!501010) (not e!415576))))

(assert (=> b!743849 (= res!501010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!501009 () Bool)

(assert (=> start!65408 (=> (not res!501009) (not e!415575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65408 (= res!501009 (validMask!0 mask!3328))))

(assert (=> start!65408 e!415575))

(assert (=> start!65408 true))

(declare-fun array_inv!15651 (array!41534) Bool)

(assert (=> start!65408 (array_inv!15651 a!3186)))

(declare-fun b!743844 () Bool)

(declare-fun res!501016 () Bool)

(assert (=> b!743844 (=> (not res!501016) (not e!415575))))

(assert (=> b!743844 (= res!501016 (validKeyInArray!0 k!2102))))

(assert (= (and start!65408 res!501009) b!743834))

(assert (= (and b!743834 res!501019) b!743835))

(assert (= (and b!743835 res!501011) b!743844))

(assert (= (and b!743844 res!501016) b!743848))

(assert (= (and b!743848 res!501017) b!743837))

(assert (= (and b!743837 res!501014) b!743849))

(assert (= (and b!743849 res!501010) b!743838))

(assert (= (and b!743838 res!501023) b!743831))

(assert (= (and b!743831 res!501024) b!743847))

(assert (= (and b!743847 res!501013) b!743833))

(assert (= (and b!743833 res!501008) b!743841))

(assert (= (and b!743841 c!81792) b!743836))

(assert (= (and b!743841 (not c!81792)) b!743839))

(assert (= (and b!743841 res!501020) b!743842))

(assert (= (and b!743842 res!501022) b!743832))

(assert (= (and b!743832 res!501018) b!743845))

(assert (= (and b!743845 res!501021) b!743843))

(assert (= (and b!743832 (not res!501012)) b!743840))

(assert (= (and b!743840 (not res!501015)) b!743846))

(declare-fun m!694531 () Bool)

(assert (=> b!743849 m!694531))

(declare-fun m!694533 () Bool)

(assert (=> b!743847 m!694533))

(assert (=> b!743847 m!694533))

(declare-fun m!694535 () Bool)

(assert (=> b!743847 m!694535))

(assert (=> b!743847 m!694535))

(assert (=> b!743847 m!694533))

(declare-fun m!694537 () Bool)

(assert (=> b!743847 m!694537))

(assert (=> b!743840 m!694533))

(assert (=> b!743840 m!694533))

(declare-fun m!694539 () Bool)

(assert (=> b!743840 m!694539))

(declare-fun m!694541 () Bool)

(assert (=> b!743848 m!694541))

(declare-fun m!694543 () Bool)

(assert (=> start!65408 m!694543))

(declare-fun m!694545 () Bool)

(assert (=> start!65408 m!694545))

(assert (=> b!743835 m!694533))

(assert (=> b!743835 m!694533))

(declare-fun m!694547 () Bool)

(assert (=> b!743835 m!694547))

(declare-fun m!694549 () Bool)

(assert (=> b!743846 m!694549))

(declare-fun m!694551 () Bool)

(assert (=> b!743846 m!694551))

(declare-fun m!694553 () Bool)

(assert (=> b!743842 m!694553))

(declare-fun m!694555 () Bool)

(assert (=> b!743842 m!694555))

(assert (=> b!743842 m!694553))

(declare-fun m!694557 () Bool)

(assert (=> b!743842 m!694557))

(assert (=> b!743842 m!694549))

(declare-fun m!694559 () Bool)

(assert (=> b!743842 m!694559))

(declare-fun m!694561 () Bool)

(assert (=> b!743832 m!694561))

(declare-fun m!694563 () Bool)

(assert (=> b!743832 m!694563))

(declare-fun m!694565 () Bool)

(assert (=> b!743844 m!694565))

(assert (=> b!743845 m!694533))

(assert (=> b!743845 m!694533))

(declare-fun m!694567 () Bool)

(assert (=> b!743845 m!694567))

(assert (=> b!743836 m!694533))

(assert (=> b!743836 m!694533))

(declare-fun m!694569 () Bool)

(assert (=> b!743836 m!694569))

(declare-fun m!694571 () Bool)

(assert (=> b!743833 m!694571))

(assert (=> b!743839 m!694533))

(assert (=> b!743839 m!694533))

(assert (=> b!743839 m!694539))

(declare-fun m!694573 () Bool)

(assert (=> b!743837 m!694573))

(declare-fun m!694575 () Bool)

(assert (=> b!743838 m!694575))

(assert (=> b!743843 m!694533))

(assert (=> b!743843 m!694533))

(declare-fun m!694577 () Bool)

(assert (=> b!743843 m!694577))

(push 1)

