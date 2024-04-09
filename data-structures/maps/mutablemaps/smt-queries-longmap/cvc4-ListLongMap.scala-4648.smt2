; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64682 () Bool)

(assert start!64682)

(declare-fun b!728556 () Bool)

(declare-fun res!489185 () Bool)

(declare-fun e!407842 () Bool)

(assert (=> b!728556 (=> (not res!489185) (not e!407842))))

(declare-datatypes ((array!41084 0))(
  ( (array!41085 (arr!19658 (Array (_ BitVec 32) (_ BitVec 64))) (size!20079 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41084)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41084 (_ BitVec 32)) Bool)

(assert (=> b!728556 (= res!489185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728557 () Bool)

(declare-fun res!489183 () Bool)

(declare-fun e!407840 () Bool)

(assert (=> b!728557 (=> (not res!489183) (not e!407840))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728557 (= res!489183 (validKeyInArray!0 k!2102))))

(declare-fun b!728558 () Bool)

(declare-fun e!407839 () Bool)

(declare-fun e!407844 () Bool)

(assert (=> b!728558 (= e!407839 e!407844)))

(declare-fun res!489194 () Bool)

(assert (=> b!728558 (=> (not res!489194) (not e!407844))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7265 0))(
  ( (MissingZero!7265 (index!31427 (_ BitVec 32))) (Found!7265 (index!31428 (_ BitVec 32))) (Intermediate!7265 (undefined!8077 Bool) (index!31429 (_ BitVec 32)) (x!62440 (_ BitVec 32))) (Undefined!7265) (MissingVacant!7265 (index!31430 (_ BitVec 32))) )
))
(declare-fun lt!322748 () SeekEntryResult!7265)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41084 (_ BitVec 32)) SeekEntryResult!7265)

(assert (=> b!728558 (= res!489194 (= (seekEntryOrOpen!0 (select (arr!19658 a!3186) j!159) a!3186 mask!3328) lt!322748))))

(assert (=> b!728558 (= lt!322748 (Found!7265 j!159))))

(declare-fun res!489187 () Bool)

(assert (=> start!64682 (=> (not res!489187) (not e!407840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64682 (= res!489187 (validMask!0 mask!3328))))

(assert (=> start!64682 e!407840))

(assert (=> start!64682 true))

(declare-fun array_inv!15432 (array!41084) Bool)

(assert (=> start!64682 (array_inv!15432 a!3186)))

(declare-fun b!728559 () Bool)

(declare-fun e!407843 () Bool)

(assert (=> b!728559 (= e!407842 e!407843)))

(declare-fun res!489192 () Bool)

(assert (=> b!728559 (=> (not res!489192) (not e!407843))))

(declare-fun lt!322752 () SeekEntryResult!7265)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41084 (_ BitVec 32)) SeekEntryResult!7265)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728559 (= res!489192 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19658 a!3186) j!159) mask!3328) (select (arr!19658 a!3186) j!159) a!3186 mask!3328) lt!322752))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728559 (= lt!322752 (Intermediate!7265 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728560 () Bool)

(declare-fun res!489198 () Bool)

(assert (=> b!728560 (=> (not res!489198) (not e!407842))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!728560 (= res!489198 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20079 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20079 a!3186))))))

(declare-fun b!728561 () Bool)

(declare-fun res!489189 () Bool)

(assert (=> b!728561 (=> (not res!489189) (not e!407842))))

(declare-datatypes ((List!13713 0))(
  ( (Nil!13710) (Cons!13709 (h!14769 (_ BitVec 64)) (t!20036 List!13713)) )
))
(declare-fun arrayNoDuplicates!0 (array!41084 (_ BitVec 32) List!13713) Bool)

(assert (=> b!728561 (= res!489189 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13710))))

(declare-fun b!728562 () Bool)

(declare-fun e!407845 () Bool)

(assert (=> b!728562 (= e!407843 e!407845)))

(declare-fun res!489195 () Bool)

(assert (=> b!728562 (=> (not res!489195) (not e!407845))))

(declare-fun lt!322753 () SeekEntryResult!7265)

(declare-fun lt!322754 () SeekEntryResult!7265)

(assert (=> b!728562 (= res!489195 (= lt!322753 lt!322754))))

(declare-fun lt!322749 () array!41084)

(declare-fun lt!322747 () (_ BitVec 64))

(assert (=> b!728562 (= lt!322754 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322747 lt!322749 mask!3328))))

(assert (=> b!728562 (= lt!322753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322747 mask!3328) lt!322747 lt!322749 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728562 (= lt!322747 (select (store (arr!19658 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728562 (= lt!322749 (array!41085 (store (arr!19658 a!3186) i!1173 k!2102) (size!20079 a!3186)))))

(declare-fun b!728563 () Bool)

(declare-fun res!489196 () Bool)

(assert (=> b!728563 (=> (not res!489196) (not e!407843))))

(assert (=> b!728563 (= res!489196 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19658 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728564 () Bool)

(declare-fun res!489188 () Bool)

(assert (=> b!728564 (=> (not res!489188) (not e!407840))))

(assert (=> b!728564 (= res!489188 (validKeyInArray!0 (select (arr!19658 a!3186) j!159)))))

(declare-fun b!728565 () Bool)

(declare-fun e!407847 () Bool)

(assert (=> b!728565 (= e!407845 (not e!407847))))

(declare-fun res!489186 () Bool)

(assert (=> b!728565 (=> res!489186 e!407847)))

(assert (=> b!728565 (= res!489186 (or (not (is-Intermediate!7265 lt!322754)) (bvsge x!1131 (x!62440 lt!322754))))))

(assert (=> b!728565 e!407839))

(declare-fun res!489197 () Bool)

(assert (=> b!728565 (=> (not res!489197) (not e!407839))))

(assert (=> b!728565 (= res!489197 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24848 0))(
  ( (Unit!24849) )
))
(declare-fun lt!322750 () Unit!24848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24848)

(assert (=> b!728565 (= lt!322750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728566 () Bool)

(declare-fun res!489193 () Bool)

(assert (=> b!728566 (=> (not res!489193) (not e!407843))))

(declare-fun e!407841 () Bool)

(assert (=> b!728566 (= res!489193 e!407841)))

(declare-fun c!80061 () Bool)

(assert (=> b!728566 (= c!80061 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728567 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41084 (_ BitVec 32)) SeekEntryResult!7265)

(assert (=> b!728567 (= e!407844 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19658 a!3186) j!159) a!3186 mask!3328) lt!322748))))

(declare-fun b!728568 () Bool)

(assert (=> b!728568 (= e!407841 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19658 a!3186) j!159) a!3186 mask!3328) lt!322752))))

(declare-fun b!728569 () Bool)

(assert (=> b!728569 (= e!407847 true)))

(declare-fun lt!322746 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728569 (= lt!322746 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728570 () Bool)

(declare-fun res!489190 () Bool)

(assert (=> b!728570 (=> (not res!489190) (not e!407840))))

(declare-fun arrayContainsKey!0 (array!41084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728570 (= res!489190 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728571 () Bool)

(assert (=> b!728571 (= e!407840 e!407842)))

(declare-fun res!489191 () Bool)

(assert (=> b!728571 (=> (not res!489191) (not e!407842))))

(declare-fun lt!322751 () SeekEntryResult!7265)

(assert (=> b!728571 (= res!489191 (or (= lt!322751 (MissingZero!7265 i!1173)) (= lt!322751 (MissingVacant!7265 i!1173))))))

(assert (=> b!728571 (= lt!322751 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728572 () Bool)

(declare-fun res!489184 () Bool)

(assert (=> b!728572 (=> (not res!489184) (not e!407840))))

(assert (=> b!728572 (= res!489184 (and (= (size!20079 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20079 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20079 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728573 () Bool)

(assert (=> b!728573 (= e!407841 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19658 a!3186) j!159) a!3186 mask!3328) (Found!7265 j!159)))))

(assert (= (and start!64682 res!489187) b!728572))

(assert (= (and b!728572 res!489184) b!728564))

(assert (= (and b!728564 res!489188) b!728557))

(assert (= (and b!728557 res!489183) b!728570))

(assert (= (and b!728570 res!489190) b!728571))

(assert (= (and b!728571 res!489191) b!728556))

(assert (= (and b!728556 res!489185) b!728561))

(assert (= (and b!728561 res!489189) b!728560))

(assert (= (and b!728560 res!489198) b!728559))

(assert (= (and b!728559 res!489192) b!728563))

(assert (= (and b!728563 res!489196) b!728566))

(assert (= (and b!728566 c!80061) b!728568))

(assert (= (and b!728566 (not c!80061)) b!728573))

(assert (= (and b!728566 res!489193) b!728562))

(assert (= (and b!728562 res!489195) b!728565))

(assert (= (and b!728565 res!489197) b!728558))

(assert (= (and b!728558 res!489194) b!728567))

(assert (= (and b!728565 (not res!489186)) b!728569))

(declare-fun m!682381 () Bool)

(assert (=> b!728563 m!682381))

(declare-fun m!682383 () Bool)

(assert (=> b!728556 m!682383))

(declare-fun m!682385 () Bool)

(assert (=> b!728557 m!682385))

(declare-fun m!682387 () Bool)

(assert (=> b!728568 m!682387))

(assert (=> b!728568 m!682387))

(declare-fun m!682389 () Bool)

(assert (=> b!728568 m!682389))

(declare-fun m!682391 () Bool)

(assert (=> b!728565 m!682391))

(declare-fun m!682393 () Bool)

(assert (=> b!728565 m!682393))

(assert (=> b!728573 m!682387))

(assert (=> b!728573 m!682387))

(declare-fun m!682395 () Bool)

(assert (=> b!728573 m!682395))

(assert (=> b!728564 m!682387))

(assert (=> b!728564 m!682387))

(declare-fun m!682397 () Bool)

(assert (=> b!728564 m!682397))

(declare-fun m!682399 () Bool)

(assert (=> b!728571 m!682399))

(declare-fun m!682401 () Bool)

(assert (=> start!64682 m!682401))

(declare-fun m!682403 () Bool)

(assert (=> start!64682 m!682403))

(declare-fun m!682405 () Bool)

(assert (=> b!728569 m!682405))

(assert (=> b!728559 m!682387))

(assert (=> b!728559 m!682387))

(declare-fun m!682407 () Bool)

(assert (=> b!728559 m!682407))

(assert (=> b!728559 m!682407))

(assert (=> b!728559 m!682387))

(declare-fun m!682409 () Bool)

(assert (=> b!728559 m!682409))

(declare-fun m!682411 () Bool)

(assert (=> b!728562 m!682411))

(declare-fun m!682413 () Bool)

(assert (=> b!728562 m!682413))

(declare-fun m!682415 () Bool)

(assert (=> b!728562 m!682415))

(declare-fun m!682417 () Bool)

(assert (=> b!728562 m!682417))

(assert (=> b!728562 m!682413))

(declare-fun m!682419 () Bool)

(assert (=> b!728562 m!682419))

(assert (=> b!728558 m!682387))

(assert (=> b!728558 m!682387))

(declare-fun m!682421 () Bool)

(assert (=> b!728558 m!682421))

(assert (=> b!728567 m!682387))

(assert (=> b!728567 m!682387))

(declare-fun m!682423 () Bool)

(assert (=> b!728567 m!682423))

(declare-fun m!682425 () Bool)

(assert (=> b!728561 m!682425))

(declare-fun m!682427 () Bool)

(assert (=> b!728570 m!682427))

(push 1)

