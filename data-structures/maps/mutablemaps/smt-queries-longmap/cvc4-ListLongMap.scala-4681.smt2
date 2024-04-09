; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65168 () Bool)

(assert start!65168)

(declare-fun b!736050 () Bool)

(declare-fun res!494747 () Bool)

(declare-fun e!411807 () Bool)

(assert (=> b!736050 (=> (not res!494747) (not e!411807))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736050 (= res!494747 (validKeyInArray!0 k!2102))))

(declare-fun b!736051 () Bool)

(declare-fun e!411801 () Bool)

(assert (=> b!736051 (= e!411807 e!411801)))

(declare-fun res!494745 () Bool)

(assert (=> b!736051 (=> (not res!494745) (not e!411801))))

(declare-datatypes ((SeekEntryResult!7364 0))(
  ( (MissingZero!7364 (index!31823 (_ BitVec 32))) (Found!7364 (index!31824 (_ BitVec 32))) (Intermediate!7364 (undefined!8176 Bool) (index!31825 (_ BitVec 32)) (x!62851 (_ BitVec 32))) (Undefined!7364) (MissingVacant!7364 (index!31826 (_ BitVec 32))) )
))
(declare-fun lt!326412 () SeekEntryResult!7364)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736051 (= res!494745 (or (= lt!326412 (MissingZero!7364 i!1173)) (= lt!326412 (MissingVacant!7364 i!1173))))))

(declare-datatypes ((array!41294 0))(
  ( (array!41295 (arr!19757 (Array (_ BitVec 32) (_ BitVec 64))) (size!20178 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41294)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41294 (_ BitVec 32)) SeekEntryResult!7364)

(assert (=> b!736051 (= lt!326412 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736052 () Bool)

(declare-fun res!494744 () Bool)

(declare-fun e!411803 () Bool)

(assert (=> b!736052 (=> res!494744 e!411803)))

(declare-fun e!411802 () Bool)

(assert (=> b!736052 (= res!494744 e!411802)))

(declare-fun c!81036 () Bool)

(declare-fun lt!326407 () Bool)

(assert (=> b!736052 (= c!81036 lt!326407)))

(declare-fun b!736053 () Bool)

(declare-fun res!494753 () Bool)

(assert (=> b!736053 (=> (not res!494753) (not e!411801))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736053 (= res!494753 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20178 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20178 a!3186))))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!326420 () SeekEntryResult!7364)

(declare-fun b!736054 () Bool)

(declare-fun e!411805 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41294 (_ BitVec 32)) SeekEntryResult!7364)

(assert (=> b!736054 (= e!411805 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326420))))

(declare-fun b!736055 () Bool)

(assert (=> b!736055 (= e!411803 true)))

(declare-fun lt!326415 () array!41294)

(declare-fun lt!326418 () SeekEntryResult!7364)

(declare-fun lt!326414 () (_ BitVec 32))

(declare-fun lt!326416 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41294 (_ BitVec 32)) SeekEntryResult!7364)

(assert (=> b!736055 (= lt!326418 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326414 lt!326416 lt!326415 mask!3328))))

(declare-fun e!411799 () Bool)

(declare-fun b!736056 () Bool)

(assert (=> b!736056 (= e!411799 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) (Found!7364 j!159)))))

(declare-fun res!494760 () Bool)

(assert (=> start!65168 (=> (not res!494760) (not e!411807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65168 (= res!494760 (validMask!0 mask!3328))))

(assert (=> start!65168 e!411807))

(assert (=> start!65168 true))

(declare-fun array_inv!15531 (array!41294) Bool)

(assert (=> start!65168 (array_inv!15531 a!3186)))

(declare-fun b!736057 () Bool)

(declare-fun res!494758 () Bool)

(assert (=> b!736057 (=> (not res!494758) (not e!411801))))

(declare-datatypes ((List!13812 0))(
  ( (Nil!13809) (Cons!13808 (h!14880 (_ BitVec 64)) (t!20135 List!13812)) )
))
(declare-fun arrayNoDuplicates!0 (array!41294 (_ BitVec 32) List!13812) Bool)

(assert (=> b!736057 (= res!494758 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13809))))

(declare-fun b!736058 () Bool)

(declare-fun lt!326410 () SeekEntryResult!7364)

(assert (=> b!736058 (= e!411802 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326414 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326410)))))

(declare-fun b!736059 () Bool)

(declare-fun res!494751 () Bool)

(assert (=> b!736059 (=> (not res!494751) (not e!411807))))

(assert (=> b!736059 (= res!494751 (validKeyInArray!0 (select (arr!19757 a!3186) j!159)))))

(declare-fun lt!326413 () SeekEntryResult!7364)

(declare-fun b!736060 () Bool)

(assert (=> b!736060 (= e!411802 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326414 resIntermediateIndex!5 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326413)))))

(declare-fun b!736061 () Bool)

(declare-datatypes ((Unit!25074 0))(
  ( (Unit!25075) )
))
(declare-fun e!411804 () Unit!25074)

(declare-fun Unit!25076 () Unit!25074)

(assert (=> b!736061 (= e!411804 Unit!25076)))

(declare-fun lt!326419 () SeekEntryResult!7364)

(assert (=> b!736061 (= lt!326419 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19757 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736061 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326414 resIntermediateIndex!5 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326413)))

(declare-fun b!736062 () Bool)

(declare-fun e!411800 () Bool)

(assert (=> b!736062 (= e!411800 e!411803)))

(declare-fun res!494759 () Bool)

(assert (=> b!736062 (=> res!494759 e!411803)))

(assert (=> b!736062 (= res!494759 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326414 #b00000000000000000000000000000000) (bvsge lt!326414 (size!20178 a!3186))))))

(declare-fun lt!326411 () Unit!25074)

(assert (=> b!736062 (= lt!326411 e!411804)))

(declare-fun c!81034 () Bool)

(assert (=> b!736062 (= c!81034 lt!326407)))

(assert (=> b!736062 (= lt!326407 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736062 (= lt!326414 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736063 () Bool)

(declare-fun res!494748 () Bool)

(assert (=> b!736063 (=> (not res!494748) (not e!411801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41294 (_ BitVec 32)) Bool)

(assert (=> b!736063 (= res!494748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736064 () Bool)

(declare-fun res!494756 () Bool)

(declare-fun e!411796 () Bool)

(assert (=> b!736064 (=> (not res!494756) (not e!411796))))

(assert (=> b!736064 (= res!494756 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19757 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736065 () Bool)

(declare-fun e!411806 () Bool)

(assert (=> b!736065 (= e!411806 (not e!411800))))

(declare-fun res!494755 () Bool)

(assert (=> b!736065 (=> res!494755 e!411800)))

(declare-fun lt!326409 () SeekEntryResult!7364)

(assert (=> b!736065 (= res!494755 (or (not (is-Intermediate!7364 lt!326409)) (bvsge x!1131 (x!62851 lt!326409))))))

(assert (=> b!736065 (= lt!326413 (Found!7364 j!159))))

(declare-fun e!411798 () Bool)

(assert (=> b!736065 e!411798))

(declare-fun res!494752 () Bool)

(assert (=> b!736065 (=> (not res!494752) (not e!411798))))

(assert (=> b!736065 (= res!494752 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326417 () Unit!25074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25074)

(assert (=> b!736065 (= lt!326417 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736066 () Bool)

(assert (=> b!736066 (= e!411798 e!411805)))

(declare-fun res!494757 () Bool)

(assert (=> b!736066 (=> (not res!494757) (not e!411805))))

(assert (=> b!736066 (= res!494757 (= (seekEntryOrOpen!0 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326420))))

(assert (=> b!736066 (= lt!326420 (Found!7364 j!159))))

(declare-fun b!736067 () Bool)

(declare-fun res!494750 () Bool)

(assert (=> b!736067 (=> (not res!494750) (not e!411807))))

(assert (=> b!736067 (= res!494750 (and (= (size!20178 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20178 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20178 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736068 () Bool)

(assert (=> b!736068 (= e!411796 e!411806)))

(declare-fun res!494746 () Bool)

(assert (=> b!736068 (=> (not res!494746) (not e!411806))))

(declare-fun lt!326408 () SeekEntryResult!7364)

(assert (=> b!736068 (= res!494746 (= lt!326408 lt!326409))))

(assert (=> b!736068 (= lt!326409 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326416 lt!326415 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736068 (= lt!326408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326416 mask!3328) lt!326416 lt!326415 mask!3328))))

(assert (=> b!736068 (= lt!326416 (select (store (arr!19757 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736068 (= lt!326415 (array!41295 (store (arr!19757 a!3186) i!1173 k!2102) (size!20178 a!3186)))))

(declare-fun b!736069 () Bool)

(declare-fun res!494749 () Bool)

(assert (=> b!736069 (=> (not res!494749) (not e!411796))))

(assert (=> b!736069 (= res!494749 e!411799)))

(declare-fun c!81035 () Bool)

(assert (=> b!736069 (= c!81035 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736070 () Bool)

(assert (=> b!736070 (= e!411799 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326410))))

(declare-fun b!736071 () Bool)

(declare-fun res!494754 () Bool)

(assert (=> b!736071 (=> (not res!494754) (not e!411807))))

(declare-fun arrayContainsKey!0 (array!41294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736071 (= res!494754 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736072 () Bool)

(declare-fun Unit!25077 () Unit!25074)

(assert (=> b!736072 (= e!411804 Unit!25077)))

(assert (=> b!736072 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326414 (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326410)))

(declare-fun b!736073 () Bool)

(assert (=> b!736073 (= e!411801 e!411796)))

(declare-fun res!494743 () Bool)

(assert (=> b!736073 (=> (not res!494743) (not e!411796))))

(assert (=> b!736073 (= res!494743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19757 a!3186) j!159) mask!3328) (select (arr!19757 a!3186) j!159) a!3186 mask!3328) lt!326410))))

(assert (=> b!736073 (= lt!326410 (Intermediate!7364 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65168 res!494760) b!736067))

(assert (= (and b!736067 res!494750) b!736059))

(assert (= (and b!736059 res!494751) b!736050))

(assert (= (and b!736050 res!494747) b!736071))

(assert (= (and b!736071 res!494754) b!736051))

(assert (= (and b!736051 res!494745) b!736063))

(assert (= (and b!736063 res!494748) b!736057))

(assert (= (and b!736057 res!494758) b!736053))

(assert (= (and b!736053 res!494753) b!736073))

(assert (= (and b!736073 res!494743) b!736064))

(assert (= (and b!736064 res!494756) b!736069))

(assert (= (and b!736069 c!81035) b!736070))

(assert (= (and b!736069 (not c!81035)) b!736056))

(assert (= (and b!736069 res!494749) b!736068))

(assert (= (and b!736068 res!494746) b!736065))

(assert (= (and b!736065 res!494752) b!736066))

(assert (= (and b!736066 res!494757) b!736054))

(assert (= (and b!736065 (not res!494755)) b!736062))

(assert (= (and b!736062 c!81034) b!736072))

(assert (= (and b!736062 (not c!81034)) b!736061))

(assert (= (and b!736062 (not res!494759)) b!736052))

(assert (= (and b!736052 c!81036) b!736058))

(assert (= (and b!736052 (not c!81036)) b!736060))

(assert (= (and b!736052 (not res!494744)) b!736055))

(declare-fun m!688345 () Bool)

(assert (=> b!736064 m!688345))

(declare-fun m!688347 () Bool)

(assert (=> b!736068 m!688347))

(assert (=> b!736068 m!688347))

(declare-fun m!688349 () Bool)

(assert (=> b!736068 m!688349))

(declare-fun m!688351 () Bool)

(assert (=> b!736068 m!688351))

(declare-fun m!688353 () Bool)

(assert (=> b!736068 m!688353))

(declare-fun m!688355 () Bool)

(assert (=> b!736068 m!688355))

(declare-fun m!688357 () Bool)

(assert (=> b!736070 m!688357))

(assert (=> b!736070 m!688357))

(declare-fun m!688359 () Bool)

(assert (=> b!736070 m!688359))

(declare-fun m!688361 () Bool)

(assert (=> b!736051 m!688361))

(assert (=> b!736061 m!688357))

(assert (=> b!736061 m!688357))

(declare-fun m!688363 () Bool)

(assert (=> b!736061 m!688363))

(assert (=> b!736061 m!688357))

(declare-fun m!688365 () Bool)

(assert (=> b!736061 m!688365))

(declare-fun m!688367 () Bool)

(assert (=> b!736062 m!688367))

(assert (=> b!736058 m!688357))

(assert (=> b!736058 m!688357))

(declare-fun m!688369 () Bool)

(assert (=> b!736058 m!688369))

(declare-fun m!688371 () Bool)

(assert (=> b!736071 m!688371))

(assert (=> b!736059 m!688357))

(assert (=> b!736059 m!688357))

(declare-fun m!688373 () Bool)

(assert (=> b!736059 m!688373))

(assert (=> b!736054 m!688357))

(assert (=> b!736054 m!688357))

(declare-fun m!688375 () Bool)

(assert (=> b!736054 m!688375))

(assert (=> b!736072 m!688357))

(assert (=> b!736072 m!688357))

(assert (=> b!736072 m!688369))

(declare-fun m!688377 () Bool)

(assert (=> b!736055 m!688377))

(declare-fun m!688379 () Bool)

(assert (=> start!65168 m!688379))

(declare-fun m!688381 () Bool)

(assert (=> start!65168 m!688381))

(assert (=> b!736066 m!688357))

(assert (=> b!736066 m!688357))

(declare-fun m!688383 () Bool)

(assert (=> b!736066 m!688383))

(declare-fun m!688385 () Bool)

(assert (=> b!736065 m!688385))

(declare-fun m!688387 () Bool)

(assert (=> b!736065 m!688387))

(declare-fun m!688389 () Bool)

(assert (=> b!736063 m!688389))

(declare-fun m!688391 () Bool)

(assert (=> b!736057 m!688391))

(assert (=> b!736060 m!688357))

(assert (=> b!736060 m!688357))

(assert (=> b!736060 m!688365))

(declare-fun m!688393 () Bool)

(assert (=> b!736050 m!688393))

(assert (=> b!736056 m!688357))

(assert (=> b!736056 m!688357))

(assert (=> b!736056 m!688363))

(assert (=> b!736073 m!688357))

(assert (=> b!736073 m!688357))

(declare-fun m!688395 () Bool)

(assert (=> b!736073 m!688395))

(assert (=> b!736073 m!688395))

(assert (=> b!736073 m!688357))

(declare-fun m!688397 () Bool)

(assert (=> b!736073 m!688397))

(push 1)

