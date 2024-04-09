; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65764 () Bool)

(assert start!65764)

(declare-fun b!755020 () Bool)

(declare-fun res!510388 () Bool)

(declare-fun e!421083 () Bool)

(assert (=> b!755020 (=> (not res!510388) (not e!421083))))

(declare-datatypes ((array!41890 0))(
  ( (array!41891 (arr!20055 (Array (_ BitVec 32) (_ BitVec 64))) (size!20476 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41890)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41890 (_ BitVec 32)) Bool)

(assert (=> b!755020 (= res!510388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755021 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!421075 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7662 0))(
  ( (MissingZero!7662 (index!33015 (_ BitVec 32))) (Found!7662 (index!33016 (_ BitVec 32))) (Intermediate!7662 (undefined!8474 Bool) (index!33017 (_ BitVec 32)) (x!63949 (_ BitVec 32))) (Undefined!7662) (MissingVacant!7662 (index!33018 (_ BitVec 32))) )
))
(declare-fun lt!336084 () SeekEntryResult!7662)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41890 (_ BitVec 32)) SeekEntryResult!7662)

(assert (=> b!755021 (= e!421075 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20055 a!3186) j!159) a!3186 mask!3328) lt!336084))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!421079 () Bool)

(declare-fun b!755022 () Bool)

(declare-fun lt!336086 () SeekEntryResult!7662)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41890 (_ BitVec 32)) SeekEntryResult!7662)

(assert (=> b!755022 (= e!421079 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20055 a!3186) j!159) a!3186 mask!3328) lt!336086))))

(declare-fun b!755023 () Bool)

(declare-fun res!510389 () Bool)

(assert (=> b!755023 (=> (not res!510389) (not e!421083))))

(declare-datatypes ((List!14110 0))(
  ( (Nil!14107) (Cons!14106 (h!15178 (_ BitVec 64)) (t!20433 List!14110)) )
))
(declare-fun arrayNoDuplicates!0 (array!41890 (_ BitVec 32) List!14110) Bool)

(assert (=> b!755023 (= res!510389 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14107))))

(declare-fun b!755024 () Bool)

(declare-fun e!421084 () Bool)

(assert (=> b!755024 (= e!421084 true)))

(declare-fun e!421076 () Bool)

(assert (=> b!755024 e!421076))

(declare-fun res!510391 () Bool)

(assert (=> b!755024 (=> (not res!510391) (not e!421076))))

(declare-fun lt!336076 () (_ BitVec 64))

(assert (=> b!755024 (= res!510391 (= lt!336076 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26050 0))(
  ( (Unit!26051) )
))
(declare-fun lt!336083 () Unit!26050)

(declare-fun e!421082 () Unit!26050)

(assert (=> b!755024 (= lt!336083 e!421082)))

(declare-fun c!82698 () Bool)

(assert (=> b!755024 (= c!82698 (= lt!336076 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755025 () Bool)

(declare-fun res!510398 () Bool)

(assert (=> b!755025 (=> (not res!510398) (not e!421083))))

(assert (=> b!755025 (= res!510398 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20476 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20476 a!3186))))))

(declare-fun b!755026 () Bool)

(declare-fun e!421080 () Bool)

(declare-fun e!421078 () Bool)

(assert (=> b!755026 (= e!421080 e!421078)))

(declare-fun res!510405 () Bool)

(assert (=> b!755026 (=> res!510405 e!421078)))

(declare-fun lt!336078 () SeekEntryResult!7662)

(assert (=> b!755026 (= res!510405 (not (= lt!336078 lt!336084)))))

(assert (=> b!755026 (= lt!336078 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20055 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755027 () Bool)

(declare-fun e!421086 () Bool)

(assert (=> b!755027 (= e!421086 e!421083)))

(declare-fun res!510390 () Bool)

(assert (=> b!755027 (=> (not res!510390) (not e!421083))))

(declare-fun lt!336081 () SeekEntryResult!7662)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755027 (= res!510390 (or (= lt!336081 (MissingZero!7662 i!1173)) (= lt!336081 (MissingVacant!7662 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41890 (_ BitVec 32)) SeekEntryResult!7662)

(assert (=> b!755027 (= lt!336081 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755028 () Bool)

(declare-fun e!421077 () Bool)

(assert (=> b!755028 (= e!421077 (not e!421080))))

(declare-fun res!510403 () Bool)

(assert (=> b!755028 (=> res!510403 e!421080)))

(declare-fun lt!336075 () SeekEntryResult!7662)

(assert (=> b!755028 (= res!510403 (or (not (is-Intermediate!7662 lt!336075)) (bvslt x!1131 (x!63949 lt!336075)) (not (= x!1131 (x!63949 lt!336075))) (not (= index!1321 (index!33017 lt!336075)))))))

(assert (=> b!755028 e!421075))

(declare-fun res!510404 () Bool)

(assert (=> b!755028 (=> (not res!510404) (not e!421075))))

(declare-fun lt!336080 () SeekEntryResult!7662)

(assert (=> b!755028 (= res!510404 (= lt!336080 lt!336084))))

(assert (=> b!755028 (= lt!336084 (Found!7662 j!159))))

(assert (=> b!755028 (= lt!336080 (seekEntryOrOpen!0 (select (arr!20055 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755028 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336082 () Unit!26050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41890 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26050)

(assert (=> b!755028 (= lt!336082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755029 () Bool)

(declare-fun res!510387 () Bool)

(assert (=> b!755029 (=> (not res!510387) (not e!421086))))

(declare-fun arrayContainsKey!0 (array!41890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755029 (= res!510387 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755031 () Bool)

(declare-fun res!510395 () Bool)

(assert (=> b!755031 (=> (not res!510395) (not e!421076))))

(declare-fun lt!336085 () array!41890)

(declare-fun lt!336079 () (_ BitVec 64))

(assert (=> b!755031 (= res!510395 (= (seekEntryOrOpen!0 lt!336079 lt!336085 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336079 lt!336085 mask!3328)))))

(declare-fun b!755032 () Bool)

(declare-fun Unit!26052 () Unit!26050)

(assert (=> b!755032 (= e!421082 Unit!26052)))

(assert (=> b!755032 false))

(declare-fun b!755033 () Bool)

(declare-fun res!510401 () Bool)

(assert (=> b!755033 (=> (not res!510401) (not e!421086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755033 (= res!510401 (validKeyInArray!0 (select (arr!20055 a!3186) j!159)))))

(declare-fun b!755034 () Bool)

(declare-fun res!510392 () Bool)

(assert (=> b!755034 (=> (not res!510392) (not e!421086))))

(assert (=> b!755034 (= res!510392 (and (= (size!20476 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20476 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20476 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755035 () Bool)

(declare-fun e!421081 () Bool)

(assert (=> b!755035 (= e!421081 e!421077)))

(declare-fun res!510399 () Bool)

(assert (=> b!755035 (=> (not res!510399) (not e!421077))))

(declare-fun lt!336077 () SeekEntryResult!7662)

(assert (=> b!755035 (= res!510399 (= lt!336077 lt!336075))))

(assert (=> b!755035 (= lt!336075 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336079 lt!336085 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755035 (= lt!336077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336079 mask!3328) lt!336079 lt!336085 mask!3328))))

(assert (=> b!755035 (= lt!336079 (select (store (arr!20055 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755035 (= lt!336085 (array!41891 (store (arr!20055 a!3186) i!1173 k!2102) (size!20476 a!3186)))))

(declare-fun b!755036 () Bool)

(assert (=> b!755036 (= e!421078 e!421084)))

(declare-fun res!510393 () Bool)

(assert (=> b!755036 (=> res!510393 e!421084)))

(assert (=> b!755036 (= res!510393 (= lt!336076 lt!336079))))

(assert (=> b!755036 (= lt!336076 (select (store (arr!20055 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755037 () Bool)

(declare-fun res!510397 () Bool)

(assert (=> b!755037 (=> (not res!510397) (not e!421086))))

(assert (=> b!755037 (= res!510397 (validKeyInArray!0 k!2102))))

(declare-fun b!755038 () Bool)

(declare-fun res!510394 () Bool)

(assert (=> b!755038 (=> (not res!510394) (not e!421081))))

(assert (=> b!755038 (= res!510394 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20055 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755039 () Bool)

(declare-fun Unit!26053 () Unit!26050)

(assert (=> b!755039 (= e!421082 Unit!26053)))

(declare-fun b!755040 () Bool)

(assert (=> b!755040 (= e!421079 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20055 a!3186) j!159) a!3186 mask!3328) (Found!7662 j!159)))))

(declare-fun b!755041 () Bool)

(declare-fun res!510396 () Bool)

(assert (=> b!755041 (=> (not res!510396) (not e!421081))))

(assert (=> b!755041 (= res!510396 e!421079)))

(declare-fun c!82697 () Bool)

(assert (=> b!755041 (= c!82697 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755042 () Bool)

(assert (=> b!755042 (= e!421083 e!421081)))

(declare-fun res!510402 () Bool)

(assert (=> b!755042 (=> (not res!510402) (not e!421081))))

(assert (=> b!755042 (= res!510402 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20055 a!3186) j!159) mask!3328) (select (arr!20055 a!3186) j!159) a!3186 mask!3328) lt!336086))))

(assert (=> b!755042 (= lt!336086 (Intermediate!7662 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755030 () Bool)

(assert (=> b!755030 (= e!421076 (= lt!336080 lt!336078))))

(declare-fun res!510400 () Bool)

(assert (=> start!65764 (=> (not res!510400) (not e!421086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65764 (= res!510400 (validMask!0 mask!3328))))

(assert (=> start!65764 e!421086))

(assert (=> start!65764 true))

(declare-fun array_inv!15829 (array!41890) Bool)

(assert (=> start!65764 (array_inv!15829 a!3186)))

(assert (= (and start!65764 res!510400) b!755034))

(assert (= (and b!755034 res!510392) b!755033))

(assert (= (and b!755033 res!510401) b!755037))

(assert (= (and b!755037 res!510397) b!755029))

(assert (= (and b!755029 res!510387) b!755027))

(assert (= (and b!755027 res!510390) b!755020))

(assert (= (and b!755020 res!510388) b!755023))

(assert (= (and b!755023 res!510389) b!755025))

(assert (= (and b!755025 res!510398) b!755042))

(assert (= (and b!755042 res!510402) b!755038))

(assert (= (and b!755038 res!510394) b!755041))

(assert (= (and b!755041 c!82697) b!755022))

(assert (= (and b!755041 (not c!82697)) b!755040))

(assert (= (and b!755041 res!510396) b!755035))

(assert (= (and b!755035 res!510399) b!755028))

(assert (= (and b!755028 res!510404) b!755021))

(assert (= (and b!755028 (not res!510403)) b!755026))

(assert (= (and b!755026 (not res!510405)) b!755036))

(assert (= (and b!755036 (not res!510393)) b!755024))

(assert (= (and b!755024 c!82698) b!755032))

(assert (= (and b!755024 (not c!82698)) b!755039))

(assert (= (and b!755024 res!510391) b!755031))

(assert (= (and b!755031 res!510395) b!755030))

(declare-fun m!703393 () Bool)

(assert (=> b!755022 m!703393))

(assert (=> b!755022 m!703393))

(declare-fun m!703395 () Bool)

(assert (=> b!755022 m!703395))

(assert (=> b!755033 m!703393))

(assert (=> b!755033 m!703393))

(declare-fun m!703397 () Bool)

(assert (=> b!755033 m!703397))

(declare-fun m!703399 () Bool)

(assert (=> start!65764 m!703399))

(declare-fun m!703401 () Bool)

(assert (=> start!65764 m!703401))

(declare-fun m!703403 () Bool)

(assert (=> b!755036 m!703403))

(declare-fun m!703405 () Bool)

(assert (=> b!755036 m!703405))

(assert (=> b!755028 m!703393))

(assert (=> b!755028 m!703393))

(declare-fun m!703407 () Bool)

(assert (=> b!755028 m!703407))

(declare-fun m!703409 () Bool)

(assert (=> b!755028 m!703409))

(declare-fun m!703411 () Bool)

(assert (=> b!755028 m!703411))

(declare-fun m!703413 () Bool)

(assert (=> b!755037 m!703413))

(declare-fun m!703415 () Bool)

(assert (=> b!755027 m!703415))

(declare-fun m!703417 () Bool)

(assert (=> b!755023 m!703417))

(declare-fun m!703419 () Bool)

(assert (=> b!755031 m!703419))

(declare-fun m!703421 () Bool)

(assert (=> b!755031 m!703421))

(declare-fun m!703423 () Bool)

(assert (=> b!755020 m!703423))

(declare-fun m!703425 () Bool)

(assert (=> b!755038 m!703425))

(assert (=> b!755040 m!703393))

(assert (=> b!755040 m!703393))

(declare-fun m!703427 () Bool)

(assert (=> b!755040 m!703427))

(assert (=> b!755042 m!703393))

(assert (=> b!755042 m!703393))

(declare-fun m!703429 () Bool)

(assert (=> b!755042 m!703429))

(assert (=> b!755042 m!703429))

(assert (=> b!755042 m!703393))

(declare-fun m!703431 () Bool)

(assert (=> b!755042 m!703431))

(declare-fun m!703433 () Bool)

(assert (=> b!755029 m!703433))

(declare-fun m!703435 () Bool)

(assert (=> b!755035 m!703435))

(declare-fun m!703437 () Bool)

(assert (=> b!755035 m!703437))

(assert (=> b!755035 m!703403))

(declare-fun m!703439 () Bool)

(assert (=> b!755035 m!703439))

(assert (=> b!755035 m!703437))

(declare-fun m!703441 () Bool)

(assert (=> b!755035 m!703441))

(assert (=> b!755026 m!703393))

(assert (=> b!755026 m!703393))

(assert (=> b!755026 m!703427))

(assert (=> b!755021 m!703393))

(assert (=> b!755021 m!703393))

(declare-fun m!703443 () Bool)

(assert (=> b!755021 m!703443))

(push 1)

