; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65428 () Bool)

(assert start!65428)

(declare-fun b!744374 () Bool)

(declare-fun e!415847 () Bool)

(declare-fun e!415848 () Bool)

(assert (=> b!744374 (= e!415847 e!415848)))

(declare-fun res!501506 () Bool)

(assert (=> b!744374 (=> (not res!501506) (not e!415848))))

(declare-datatypes ((SeekEntryResult!7494 0))(
  ( (MissingZero!7494 (index!32343 (_ BitVec 32))) (Found!7494 (index!32344 (_ BitVec 32))) (Intermediate!7494 (undefined!8306 Bool) (index!32345 (_ BitVec 32)) (x!63333 (_ BitVec 32))) (Undefined!7494) (MissingVacant!7494 (index!32346 (_ BitVec 32))) )
))
(declare-fun lt!330704 () SeekEntryResult!7494)

(declare-fun lt!330706 () SeekEntryResult!7494)

(assert (=> b!744374 (= res!501506 (= lt!330704 lt!330706))))

(declare-datatypes ((array!41554 0))(
  ( (array!41555 (arr!19887 (Array (_ BitVec 32) (_ BitVec 64))) (size!20308 (_ BitVec 32))) )
))
(declare-fun lt!330705 () array!41554)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!330709 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41554 (_ BitVec 32)) SeekEntryResult!7494)

(assert (=> b!744374 (= lt!330706 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330709 lt!330705 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744374 (= lt!330704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330709 mask!3328) lt!330709 lt!330705 mask!3328))))

(declare-fun a!3186 () array!41554)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!744374 (= lt!330709 (select (store (arr!19887 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744374 (= lt!330705 (array!41555 (store (arr!19887 a!3186) i!1173 k!2102) (size!20308 a!3186)))))

(declare-fun b!744375 () Bool)

(declare-fun e!415844 () Bool)

(assert (=> b!744375 (= e!415848 (not e!415844))))

(declare-fun res!501495 () Bool)

(assert (=> b!744375 (=> res!501495 e!415844)))

(assert (=> b!744375 (= res!501495 (or (not (is-Intermediate!7494 lt!330706)) (bvslt x!1131 (x!63333 lt!330706)) (not (= x!1131 (x!63333 lt!330706))) (not (= index!1321 (index!32345 lt!330706)))))))

(declare-fun e!415845 () Bool)

(assert (=> b!744375 e!415845))

(declare-fun res!501505 () Bool)

(assert (=> b!744375 (=> (not res!501505) (not e!415845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41554 (_ BitVec 32)) Bool)

(assert (=> b!744375 (= res!501505 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25468 0))(
  ( (Unit!25469) )
))
(declare-fun lt!330710 () Unit!25468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25468)

(assert (=> b!744375 (= lt!330710 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744376 () Bool)

(declare-fun res!501499 () Bool)

(assert (=> b!744376 (=> (not res!501499) (not e!415847))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!744376 (= res!501499 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19887 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744377 () Bool)

(declare-fun res!501502 () Bool)

(declare-fun e!415841 () Bool)

(assert (=> b!744377 (=> (not res!501502) (not e!415841))))

(assert (=> b!744377 (= res!501502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744378 () Bool)

(declare-fun e!415843 () Bool)

(assert (=> b!744378 (= e!415845 e!415843)))

(declare-fun res!501492 () Bool)

(assert (=> b!744378 (=> (not res!501492) (not e!415843))))

(declare-fun lt!330703 () SeekEntryResult!7494)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41554 (_ BitVec 32)) SeekEntryResult!7494)

(assert (=> b!744378 (= res!501492 (= (seekEntryOrOpen!0 (select (arr!19887 a!3186) j!159) a!3186 mask!3328) lt!330703))))

(assert (=> b!744378 (= lt!330703 (Found!7494 j!159))))

(declare-fun b!744379 () Bool)

(declare-fun res!501500 () Bool)

(declare-fun e!415840 () Bool)

(assert (=> b!744379 (=> (not res!501500) (not e!415840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744379 (= res!501500 (validKeyInArray!0 k!2102))))

(declare-fun b!744380 () Bool)

(declare-fun res!501501 () Bool)

(assert (=> b!744380 (=> (not res!501501) (not e!415841))))

(declare-datatypes ((List!13942 0))(
  ( (Nil!13939) (Cons!13938 (h!15010 (_ BitVec 64)) (t!20265 List!13942)) )
))
(declare-fun arrayNoDuplicates!0 (array!41554 (_ BitVec 32) List!13942) Bool)

(assert (=> b!744380 (= res!501501 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13939))))

(declare-fun b!744381 () Bool)

(declare-fun res!501503 () Bool)

(assert (=> b!744381 (=> (not res!501503) (not e!415840))))

(assert (=> b!744381 (= res!501503 (and (= (size!20308 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20308 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20308 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744382 () Bool)

(assert (=> b!744382 (= e!415841 e!415847)))

(declare-fun res!501493 () Bool)

(assert (=> b!744382 (=> (not res!501493) (not e!415847))))

(declare-fun lt!330707 () SeekEntryResult!7494)

(assert (=> b!744382 (= res!501493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19887 a!3186) j!159) mask!3328) (select (arr!19887 a!3186) j!159) a!3186 mask!3328) lt!330707))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744382 (= lt!330707 (Intermediate!7494 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!501498 () Bool)

(assert (=> start!65428 (=> (not res!501498) (not e!415840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65428 (= res!501498 (validMask!0 mask!3328))))

(assert (=> start!65428 e!415840))

(assert (=> start!65428 true))

(declare-fun array_inv!15661 (array!41554) Bool)

(assert (=> start!65428 (array_inv!15661 a!3186)))

(declare-fun b!744383 () Bool)

(declare-fun res!501491 () Bool)

(assert (=> b!744383 (=> res!501491 e!415844)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41554 (_ BitVec 32)) SeekEntryResult!7494)

(assert (=> b!744383 (= res!501491 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19887 a!3186) j!159) a!3186 mask!3328) (Found!7494 j!159))))))

(declare-fun b!744384 () Bool)

(assert (=> b!744384 (= e!415844 (or (= (select (store (arr!19887 a!3186) i!1173 k!2102) index!1321) lt!330709) (not (= (select (store (arr!19887 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!744385 () Bool)

(assert (=> b!744385 (= e!415843 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19887 a!3186) j!159) a!3186 mask!3328) lt!330703))))

(declare-fun b!744386 () Bool)

(declare-fun res!501496 () Bool)

(assert (=> b!744386 (=> (not res!501496) (not e!415840))))

(declare-fun arrayContainsKey!0 (array!41554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744386 (= res!501496 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744387 () Bool)

(assert (=> b!744387 (= e!415840 e!415841)))

(declare-fun res!501504 () Bool)

(assert (=> b!744387 (=> (not res!501504) (not e!415841))))

(declare-fun lt!330708 () SeekEntryResult!7494)

(assert (=> b!744387 (= res!501504 (or (= lt!330708 (MissingZero!7494 i!1173)) (= lt!330708 (MissingVacant!7494 i!1173))))))

(assert (=> b!744387 (= lt!330708 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744388 () Bool)

(declare-fun res!501494 () Bool)

(assert (=> b!744388 (=> (not res!501494) (not e!415847))))

(declare-fun e!415846 () Bool)

(assert (=> b!744388 (= res!501494 e!415846)))

(declare-fun c!81822 () Bool)

(assert (=> b!744388 (= c!81822 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744389 () Bool)

(assert (=> b!744389 (= e!415846 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19887 a!3186) j!159) a!3186 mask!3328) lt!330707))))

(declare-fun b!744390 () Bool)

(declare-fun res!501497 () Bool)

(assert (=> b!744390 (=> (not res!501497) (not e!415840))))

(assert (=> b!744390 (= res!501497 (validKeyInArray!0 (select (arr!19887 a!3186) j!159)))))

(declare-fun b!744391 () Bool)

(assert (=> b!744391 (= e!415846 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19887 a!3186) j!159) a!3186 mask!3328) (Found!7494 j!159)))))

(declare-fun b!744392 () Bool)

(declare-fun res!501507 () Bool)

(assert (=> b!744392 (=> (not res!501507) (not e!415841))))

(assert (=> b!744392 (= res!501507 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20308 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20308 a!3186))))))

(assert (= (and start!65428 res!501498) b!744381))

(assert (= (and b!744381 res!501503) b!744390))

(assert (= (and b!744390 res!501497) b!744379))

(assert (= (and b!744379 res!501500) b!744386))

(assert (= (and b!744386 res!501496) b!744387))

(assert (= (and b!744387 res!501504) b!744377))

(assert (= (and b!744377 res!501502) b!744380))

(assert (= (and b!744380 res!501501) b!744392))

(assert (= (and b!744392 res!501507) b!744382))

(assert (= (and b!744382 res!501493) b!744376))

(assert (= (and b!744376 res!501499) b!744388))

(assert (= (and b!744388 c!81822) b!744389))

(assert (= (and b!744388 (not c!81822)) b!744391))

(assert (= (and b!744388 res!501494) b!744374))

(assert (= (and b!744374 res!501506) b!744375))

(assert (= (and b!744375 res!501505) b!744378))

(assert (= (and b!744378 res!501492) b!744385))

(assert (= (and b!744375 (not res!501495)) b!744383))

(assert (= (and b!744383 (not res!501491)) b!744384))

(declare-fun m!694993 () Bool)

(assert (=> b!744389 m!694993))

(assert (=> b!744389 m!694993))

(declare-fun m!694995 () Bool)

(assert (=> b!744389 m!694995))

(declare-fun m!694997 () Bool)

(assert (=> start!65428 m!694997))

(declare-fun m!694999 () Bool)

(assert (=> start!65428 m!694999))

(declare-fun m!695001 () Bool)

(assert (=> b!744376 m!695001))

(assert (=> b!744385 m!694993))

(assert (=> b!744385 m!694993))

(declare-fun m!695003 () Bool)

(assert (=> b!744385 m!695003))

(assert (=> b!744390 m!694993))

(assert (=> b!744390 m!694993))

(declare-fun m!695005 () Bool)

(assert (=> b!744390 m!695005))

(assert (=> b!744378 m!694993))

(assert (=> b!744378 m!694993))

(declare-fun m!695007 () Bool)

(assert (=> b!744378 m!695007))

(declare-fun m!695009 () Bool)

(assert (=> b!744374 m!695009))

(declare-fun m!695011 () Bool)

(assert (=> b!744374 m!695011))

(declare-fun m!695013 () Bool)

(assert (=> b!744374 m!695013))

(declare-fun m!695015 () Bool)

(assert (=> b!744374 m!695015))

(declare-fun m!695017 () Bool)

(assert (=> b!744374 m!695017))

(assert (=> b!744374 m!695011))

(assert (=> b!744391 m!694993))

(assert (=> b!744391 m!694993))

(declare-fun m!695019 () Bool)

(assert (=> b!744391 m!695019))

(declare-fun m!695021 () Bool)

(assert (=> b!744380 m!695021))

(declare-fun m!695023 () Bool)

(assert (=> b!744375 m!695023))

(declare-fun m!695025 () Bool)

(assert (=> b!744375 m!695025))

(declare-fun m!695027 () Bool)

(assert (=> b!744377 m!695027))

(declare-fun m!695029 () Bool)

(assert (=> b!744386 m!695029))

(declare-fun m!695031 () Bool)

(assert (=> b!744387 m!695031))

(assert (=> b!744384 m!695009))

(declare-fun m!695033 () Bool)

(assert (=> b!744384 m!695033))

(assert (=> b!744382 m!694993))

(assert (=> b!744382 m!694993))

(declare-fun m!695035 () Bool)

(assert (=> b!744382 m!695035))

(assert (=> b!744382 m!695035))

(assert (=> b!744382 m!694993))

(declare-fun m!695037 () Bool)

(assert (=> b!744382 m!695037))

(declare-fun m!695039 () Bool)

(assert (=> b!744379 m!695039))

(assert (=> b!744383 m!694993))

(assert (=> b!744383 m!694993))

(assert (=> b!744383 m!695019))

(push 1)

