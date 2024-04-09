; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66788 () Bool)

(assert start!66788)

(declare-fun b!769385 () Bool)

(declare-datatypes ((Unit!26460 0))(
  ( (Unit!26461) )
))
(declare-fun e!428449 () Unit!26460)

(declare-fun Unit!26462 () Unit!26460)

(assert (=> b!769385 (= e!428449 Unit!26462)))

(declare-datatypes ((array!42305 0))(
  ( (array!42306 (arr!20249 (Array (_ BitVec 32) (_ BitVec 64))) (size!20670 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42305)

(declare-fun lt!342358 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7856 0))(
  ( (MissingZero!7856 (index!33791 (_ BitVec 32))) (Found!7856 (index!33792 (_ BitVec 32))) (Intermediate!7856 (undefined!8668 Bool) (index!33793 (_ BitVec 32)) (x!64748 (_ BitVec 32))) (Undefined!7856) (MissingVacant!7856 (index!33794 (_ BitVec 32))) )
))
(declare-fun lt!342357 () SeekEntryResult!7856)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42305 (_ BitVec 32)) SeekEntryResult!7856)

(assert (=> b!769385 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342358 (select (arr!20249 a!3186) j!159) a!3186 mask!3328) lt!342357)))

(declare-fun b!769386 () Bool)

(declare-fun res!520459 () Bool)

(declare-fun e!428443 () Bool)

(assert (=> b!769386 (=> (not res!520459) (not e!428443))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769386 (= res!520459 (validKeyInArray!0 k!2102))))

(declare-fun b!769387 () Bool)

(declare-fun res!520449 () Bool)

(declare-fun e!428442 () Bool)

(assert (=> b!769387 (=> (not res!520449) (not e!428442))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!769387 (= res!520449 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20249 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769388 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!428447 () Bool)

(assert (=> b!769388 (= e!428447 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20249 a!3186) j!159) a!3186 mask!3328) lt!342357))))

(declare-fun b!769389 () Bool)

(declare-fun e!428440 () Bool)

(assert (=> b!769389 (= e!428442 e!428440)))

(declare-fun res!520454 () Bool)

(assert (=> b!769389 (=> (not res!520454) (not e!428440))))

(declare-fun lt!342355 () SeekEntryResult!7856)

(declare-fun lt!342354 () SeekEntryResult!7856)

(assert (=> b!769389 (= res!520454 (= lt!342355 lt!342354))))

(declare-fun lt!342364 () array!42305)

(declare-fun lt!342363 () (_ BitVec 64))

(assert (=> b!769389 (= lt!342354 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342363 lt!342364 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769389 (= lt!342355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342363 mask!3328) lt!342363 lt!342364 mask!3328))))

(assert (=> b!769389 (= lt!342363 (select (store (arr!20249 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769389 (= lt!342364 (array!42306 (store (arr!20249 a!3186) i!1173 k!2102) (size!20670 a!3186)))))

(declare-fun b!769390 () Bool)

(declare-fun e!428441 () Bool)

(assert (=> b!769390 (= e!428443 e!428441)))

(declare-fun res!520450 () Bool)

(assert (=> b!769390 (=> (not res!520450) (not e!428441))))

(declare-fun lt!342360 () SeekEntryResult!7856)

(assert (=> b!769390 (= res!520450 (or (= lt!342360 (MissingZero!7856 i!1173)) (= lt!342360 (MissingVacant!7856 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42305 (_ BitVec 32)) SeekEntryResult!7856)

(assert (=> b!769390 (= lt!342360 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769391 () Bool)

(declare-fun Unit!26463 () Unit!26460)

(assert (=> b!769391 (= e!428449 Unit!26463)))

(declare-fun lt!342356 () SeekEntryResult!7856)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42305 (_ BitVec 32)) SeekEntryResult!7856)

(assert (=> b!769391 (= lt!342356 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20249 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769391 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342358 resIntermediateIndex!5 (select (arr!20249 a!3186) j!159) a!3186 mask!3328) (Found!7856 j!159))))

(declare-fun res!520458 () Bool)

(assert (=> start!66788 (=> (not res!520458) (not e!428443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66788 (= res!520458 (validMask!0 mask!3328))))

(assert (=> start!66788 e!428443))

(assert (=> start!66788 true))

(declare-fun array_inv!16023 (array!42305) Bool)

(assert (=> start!66788 (array_inv!16023 a!3186)))

(declare-fun b!769392 () Bool)

(assert (=> b!769392 (= e!428447 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20249 a!3186) j!159) a!3186 mask!3328) (Found!7856 j!159)))))

(declare-fun b!769393 () Bool)

(declare-fun res!520448 () Bool)

(assert (=> b!769393 (=> (not res!520448) (not e!428443))))

(declare-fun arrayContainsKey!0 (array!42305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769393 (= res!520448 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769394 () Bool)

(declare-fun res!520447 () Bool)

(assert (=> b!769394 (=> (not res!520447) (not e!428443))))

(assert (=> b!769394 (= res!520447 (validKeyInArray!0 (select (arr!20249 a!3186) j!159)))))

(declare-fun b!769395 () Bool)

(declare-fun res!520457 () Bool)

(assert (=> b!769395 (=> (not res!520457) (not e!428443))))

(assert (=> b!769395 (= res!520457 (and (= (size!20670 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20670 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20670 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769396 () Bool)

(assert (=> b!769396 (= e!428441 e!428442)))

(declare-fun res!520451 () Bool)

(assert (=> b!769396 (=> (not res!520451) (not e!428442))))

(assert (=> b!769396 (= res!520451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20249 a!3186) j!159) mask!3328) (select (arr!20249 a!3186) j!159) a!3186 mask!3328) lt!342357))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769396 (= lt!342357 (Intermediate!7856 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769397 () Bool)

(declare-fun res!520456 () Bool)

(assert (=> b!769397 (=> (not res!520456) (not e!428441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42305 (_ BitVec 32)) Bool)

(assert (=> b!769397 (= res!520456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769398 () Bool)

(declare-fun e!428446 () Bool)

(assert (=> b!769398 (= e!428440 (not e!428446))))

(declare-fun res!520452 () Bool)

(assert (=> b!769398 (=> res!520452 e!428446)))

(assert (=> b!769398 (= res!520452 (or (not (is-Intermediate!7856 lt!342354)) (bvsge x!1131 (x!64748 lt!342354))))))

(declare-fun e!428445 () Bool)

(assert (=> b!769398 e!428445))

(declare-fun res!520446 () Bool)

(assert (=> b!769398 (=> (not res!520446) (not e!428445))))

(assert (=> b!769398 (= res!520446 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342362 () Unit!26460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26460)

(assert (=> b!769398 (= lt!342362 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769399 () Bool)

(declare-fun res!520455 () Bool)

(assert (=> b!769399 (=> (not res!520455) (not e!428441))))

(declare-datatypes ((List!14304 0))(
  ( (Nil!14301) (Cons!14300 (h!15399 (_ BitVec 64)) (t!20627 List!14304)) )
))
(declare-fun arrayNoDuplicates!0 (array!42305 (_ BitVec 32) List!14304) Bool)

(assert (=> b!769399 (= res!520455 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14301))))

(declare-fun b!769400 () Bool)

(declare-fun e!428444 () Bool)

(assert (=> b!769400 (= e!428445 e!428444)))

(declare-fun res!520453 () Bool)

(assert (=> b!769400 (=> (not res!520453) (not e!428444))))

(declare-fun lt!342359 () SeekEntryResult!7856)

(assert (=> b!769400 (= res!520453 (= (seekEntryOrOpen!0 (select (arr!20249 a!3186) j!159) a!3186 mask!3328) lt!342359))))

(assert (=> b!769400 (= lt!342359 (Found!7856 j!159))))

(declare-fun b!769401 () Bool)

(declare-fun res!520444 () Bool)

(assert (=> b!769401 (=> (not res!520444) (not e!428442))))

(assert (=> b!769401 (= res!520444 e!428447)))

(declare-fun c!84866 () Bool)

(assert (=> b!769401 (= c!84866 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769402 () Bool)

(assert (=> b!769402 (= e!428446 true)))

(declare-fun lt!342361 () Unit!26460)

(assert (=> b!769402 (= lt!342361 e!428449)))

(declare-fun c!84867 () Bool)

(assert (=> b!769402 (= c!84867 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769402 (= lt!342358 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769403 () Bool)

(assert (=> b!769403 (= e!428444 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20249 a!3186) j!159) a!3186 mask!3328) lt!342359))))

(declare-fun b!769404 () Bool)

(declare-fun res!520445 () Bool)

(assert (=> b!769404 (=> (not res!520445) (not e!428441))))

(assert (=> b!769404 (= res!520445 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20670 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20670 a!3186))))))

(assert (= (and start!66788 res!520458) b!769395))

(assert (= (and b!769395 res!520457) b!769394))

(assert (= (and b!769394 res!520447) b!769386))

(assert (= (and b!769386 res!520459) b!769393))

(assert (= (and b!769393 res!520448) b!769390))

(assert (= (and b!769390 res!520450) b!769397))

(assert (= (and b!769397 res!520456) b!769399))

(assert (= (and b!769399 res!520455) b!769404))

(assert (= (and b!769404 res!520445) b!769396))

(assert (= (and b!769396 res!520451) b!769387))

(assert (= (and b!769387 res!520449) b!769401))

(assert (= (and b!769401 c!84866) b!769388))

(assert (= (and b!769401 (not c!84866)) b!769392))

(assert (= (and b!769401 res!520444) b!769389))

(assert (= (and b!769389 res!520454) b!769398))

(assert (= (and b!769398 res!520446) b!769400))

(assert (= (and b!769400 res!520453) b!769403))

(assert (= (and b!769398 (not res!520452)) b!769402))

(assert (= (and b!769402 c!84867) b!769385))

(assert (= (and b!769402 (not c!84867)) b!769391))

(declare-fun m!714867 () Bool)

(assert (=> b!769386 m!714867))

(declare-fun m!714869 () Bool)

(assert (=> b!769396 m!714869))

(assert (=> b!769396 m!714869))

(declare-fun m!714871 () Bool)

(assert (=> b!769396 m!714871))

(assert (=> b!769396 m!714871))

(assert (=> b!769396 m!714869))

(declare-fun m!714873 () Bool)

(assert (=> b!769396 m!714873))

(declare-fun m!714875 () Bool)

(assert (=> b!769393 m!714875))

(declare-fun m!714877 () Bool)

(assert (=> start!66788 m!714877))

(declare-fun m!714879 () Bool)

(assert (=> start!66788 m!714879))

(declare-fun m!714881 () Bool)

(assert (=> b!769387 m!714881))

(assert (=> b!769403 m!714869))

(assert (=> b!769403 m!714869))

(declare-fun m!714883 () Bool)

(assert (=> b!769403 m!714883))

(declare-fun m!714885 () Bool)

(assert (=> b!769398 m!714885))

(declare-fun m!714887 () Bool)

(assert (=> b!769398 m!714887))

(assert (=> b!769388 m!714869))

(assert (=> b!769388 m!714869))

(declare-fun m!714889 () Bool)

(assert (=> b!769388 m!714889))

(declare-fun m!714891 () Bool)

(assert (=> b!769399 m!714891))

(assert (=> b!769385 m!714869))

(assert (=> b!769385 m!714869))

(declare-fun m!714893 () Bool)

(assert (=> b!769385 m!714893))

(assert (=> b!769391 m!714869))

(assert (=> b!769391 m!714869))

(declare-fun m!714895 () Bool)

(assert (=> b!769391 m!714895))

(assert (=> b!769391 m!714869))

(declare-fun m!714897 () Bool)

(assert (=> b!769391 m!714897))

(declare-fun m!714899 () Bool)

(assert (=> b!769397 m!714899))

(assert (=> b!769392 m!714869))

(assert (=> b!769392 m!714869))

(assert (=> b!769392 m!714895))

(declare-fun m!714901 () Bool)

(assert (=> b!769390 m!714901))

(assert (=> b!769394 m!714869))

(assert (=> b!769394 m!714869))

(declare-fun m!714903 () Bool)

(assert (=> b!769394 m!714903))

(assert (=> b!769400 m!714869))

(assert (=> b!769400 m!714869))

(declare-fun m!714905 () Bool)

(assert (=> b!769400 m!714905))

(declare-fun m!714907 () Bool)

(assert (=> b!769389 m!714907))

(declare-fun m!714909 () Bool)

(assert (=> b!769389 m!714909))

(declare-fun m!714911 () Bool)

(assert (=> b!769389 m!714911))

(declare-fun m!714913 () Bool)

(assert (=> b!769389 m!714913))

(assert (=> b!769389 m!714911))

(declare-fun m!714915 () Bool)

(assert (=> b!769389 m!714915))

(declare-fun m!714917 () Bool)

(assert (=> b!769402 m!714917))

(push 1)

