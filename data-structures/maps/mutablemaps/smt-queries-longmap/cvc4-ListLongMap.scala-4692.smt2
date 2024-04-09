; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65234 () Bool)

(assert start!65234)

(declare-fun b!738426 () Bool)

(declare-fun res!496530 () Bool)

(declare-fun e!412995 () Bool)

(assert (=> b!738426 (=> (not res!496530) (not e!412995))))

(declare-datatypes ((array!41360 0))(
  ( (array!41361 (arr!19790 (Array (_ BitVec 32) (_ BitVec 64))) (size!20211 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41360)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738426 (= res!496530 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738427 () Bool)

(declare-fun res!496540 () Bool)

(declare-fun e!412991 () Bool)

(assert (=> b!738427 (=> (not res!496540) (not e!412991))))

(declare-fun e!412987 () Bool)

(assert (=> b!738427 (= res!496540 e!412987)))

(declare-fun c!81332 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738427 (= c!81332 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738428 () Bool)

(declare-fun res!496529 () Bool)

(assert (=> b!738428 (=> (not res!496529) (not e!412991))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738428 (= res!496529 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19790 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738429 () Bool)

(declare-datatypes ((Unit!25206 0))(
  ( (Unit!25207) )
))
(declare-fun e!412985 () Unit!25206)

(declare-fun Unit!25208 () Unit!25206)

(assert (=> b!738429 (= e!412985 Unit!25208)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7397 0))(
  ( (MissingZero!7397 (index!31955 (_ BitVec 32))) (Found!7397 (index!31956 (_ BitVec 32))) (Intermediate!7397 (undefined!8209 Bool) (index!31957 (_ BitVec 32)) (x!62972 (_ BitVec 32))) (Undefined!7397) (MissingVacant!7397 (index!31958 (_ BitVec 32))) )
))
(declare-fun lt!327802 () SeekEntryResult!7397)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41360 (_ BitVec 32)) SeekEntryResult!7397)

(assert (=> b!738429 (= lt!327802 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19790 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327795 () SeekEntryResult!7397)

(declare-fun lt!327800 () (_ BitVec 32))

(assert (=> b!738429 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327800 resIntermediateIndex!5 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327795)))

(declare-fun b!738430 () Bool)

(declare-fun e!412989 () Bool)

(declare-fun e!412993 () Bool)

(assert (=> b!738430 (= e!412989 (not e!412993))))

(declare-fun res!496536 () Bool)

(assert (=> b!738430 (=> res!496536 e!412993)))

(declare-fun lt!327798 () SeekEntryResult!7397)

(assert (=> b!738430 (= res!496536 (or (not (is-Intermediate!7397 lt!327798)) (bvsge x!1131 (x!62972 lt!327798))))))

(assert (=> b!738430 (= lt!327795 (Found!7397 j!159))))

(declare-fun e!412988 () Bool)

(assert (=> b!738430 e!412988))

(declare-fun res!496539 () Bool)

(assert (=> b!738430 (=> (not res!496539) (not e!412988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41360 (_ BitVec 32)) Bool)

(assert (=> b!738430 (= res!496539 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327801 () Unit!25206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25206)

(assert (=> b!738430 (= lt!327801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738431 () Bool)

(declare-fun res!496535 () Bool)

(assert (=> b!738431 (=> (not res!496535) (not e!412995))))

(assert (=> b!738431 (= res!496535 (and (= (size!20211 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20211 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20211 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!496542 () Bool)

(assert (=> start!65234 (=> (not res!496542) (not e!412995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65234 (= res!496542 (validMask!0 mask!3328))))

(assert (=> start!65234 e!412995))

(assert (=> start!65234 true))

(declare-fun array_inv!15564 (array!41360) Bool)

(assert (=> start!65234 (array_inv!15564 a!3186)))

(declare-fun e!412986 () Bool)

(declare-fun b!738432 () Bool)

(declare-fun lt!327794 () SeekEntryResult!7397)

(assert (=> b!738432 (= e!412986 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327794))))

(declare-fun b!738433 () Bool)

(declare-fun e!412992 () Bool)

(assert (=> b!738433 (= e!412993 e!412992)))

(declare-fun res!496526 () Bool)

(assert (=> b!738433 (=> res!496526 e!412992)))

(assert (=> b!738433 (= res!496526 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327800 #b00000000000000000000000000000000) (bvsge lt!327800 (size!20211 a!3186))))))

(declare-fun lt!327797 () Unit!25206)

(assert (=> b!738433 (= lt!327797 e!412985)))

(declare-fun c!81331 () Bool)

(declare-fun lt!327803 () Bool)

(assert (=> b!738433 (= c!81331 lt!327803)))

(assert (=> b!738433 (= lt!327803 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738433 (= lt!327800 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738434 () Bool)

(assert (=> b!738434 (= e!412991 e!412989)))

(declare-fun res!496534 () Bool)

(assert (=> b!738434 (=> (not res!496534) (not e!412989))))

(declare-fun lt!327806 () SeekEntryResult!7397)

(assert (=> b!738434 (= res!496534 (= lt!327806 lt!327798))))

(declare-fun lt!327796 () array!41360)

(declare-fun lt!327793 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41360 (_ BitVec 32)) SeekEntryResult!7397)

(assert (=> b!738434 (= lt!327798 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327793 lt!327796 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738434 (= lt!327806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327793 mask!3328) lt!327793 lt!327796 mask!3328))))

(assert (=> b!738434 (= lt!327793 (select (store (arr!19790 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738434 (= lt!327796 (array!41361 (store (arr!19790 a!3186) i!1173 k!2102) (size!20211 a!3186)))))

(declare-fun b!738435 () Bool)

(declare-fun res!496532 () Bool)

(assert (=> b!738435 (=> (not res!496532) (not e!412995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738435 (= res!496532 (validKeyInArray!0 (select (arr!19790 a!3186) j!159)))))

(declare-fun b!738436 () Bool)

(declare-fun res!496537 () Bool)

(assert (=> b!738436 (=> (not res!496537) (not e!412995))))

(assert (=> b!738436 (= res!496537 (validKeyInArray!0 k!2102))))

(declare-fun b!738437 () Bool)

(declare-fun res!496527 () Bool)

(declare-fun e!412994 () Bool)

(assert (=> b!738437 (=> (not res!496527) (not e!412994))))

(assert (=> b!738437 (= res!496527 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20211 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20211 a!3186))))))

(declare-fun b!738438 () Bool)

(declare-fun res!496528 () Bool)

(assert (=> b!738438 (=> (not res!496528) (not e!412994))))

(declare-datatypes ((List!13845 0))(
  ( (Nil!13842) (Cons!13841 (h!14913 (_ BitVec 64)) (t!20168 List!13845)) )
))
(declare-fun arrayNoDuplicates!0 (array!41360 (_ BitVec 32) List!13845) Bool)

(assert (=> b!738438 (= res!496528 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13842))))

(declare-fun b!738439 () Bool)

(declare-fun Unit!25209 () Unit!25206)

(assert (=> b!738439 (= e!412985 Unit!25209)))

(declare-fun lt!327804 () SeekEntryResult!7397)

(assert (=> b!738439 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327800 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327804)))

(declare-fun b!738440 () Bool)

(declare-fun e!412990 () Bool)

(assert (=> b!738440 (= e!412990 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327800 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327804)))))

(declare-fun b!738441 () Bool)

(assert (=> b!738441 (= e!412994 e!412991)))

(declare-fun res!496533 () Bool)

(assert (=> b!738441 (=> (not res!496533) (not e!412991))))

(assert (=> b!738441 (= res!496533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19790 a!3186) j!159) mask!3328) (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327804))))

(assert (=> b!738441 (= lt!327804 (Intermediate!7397 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738442 () Bool)

(assert (=> b!738442 (= e!412995 e!412994)))

(declare-fun res!496538 () Bool)

(assert (=> b!738442 (=> (not res!496538) (not e!412994))))

(declare-fun lt!327805 () SeekEntryResult!7397)

(assert (=> b!738442 (= res!496538 (or (= lt!327805 (MissingZero!7397 i!1173)) (= lt!327805 (MissingVacant!7397 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41360 (_ BitVec 32)) SeekEntryResult!7397)

(assert (=> b!738442 (= lt!327805 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738443 () Bool)

(assert (=> b!738443 (= e!412987 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) (Found!7397 j!159)))))

(declare-fun b!738444 () Bool)

(declare-fun res!496525 () Bool)

(assert (=> b!738444 (=> res!496525 e!412992)))

(assert (=> b!738444 (= res!496525 e!412990)))

(declare-fun c!81333 () Bool)

(assert (=> b!738444 (= c!81333 lt!327803)))

(declare-fun b!738445 () Bool)

(assert (=> b!738445 (= e!412987 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327804))))

(declare-fun b!738446 () Bool)

(assert (=> b!738446 (= e!412992 true)))

(declare-fun lt!327799 () SeekEntryResult!7397)

(assert (=> b!738446 (= lt!327799 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327800 lt!327793 lt!327796 mask!3328))))

(declare-fun b!738447 () Bool)

(assert (=> b!738447 (= e!412990 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327800 resIntermediateIndex!5 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327795)))))

(declare-fun b!738448 () Bool)

(declare-fun res!496531 () Bool)

(assert (=> b!738448 (=> (not res!496531) (not e!412994))))

(assert (=> b!738448 (= res!496531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738449 () Bool)

(assert (=> b!738449 (= e!412988 e!412986)))

(declare-fun res!496541 () Bool)

(assert (=> b!738449 (=> (not res!496541) (not e!412986))))

(assert (=> b!738449 (= res!496541 (= (seekEntryOrOpen!0 (select (arr!19790 a!3186) j!159) a!3186 mask!3328) lt!327794))))

(assert (=> b!738449 (= lt!327794 (Found!7397 j!159))))

(assert (= (and start!65234 res!496542) b!738431))

(assert (= (and b!738431 res!496535) b!738435))

(assert (= (and b!738435 res!496532) b!738436))

(assert (= (and b!738436 res!496537) b!738426))

(assert (= (and b!738426 res!496530) b!738442))

(assert (= (and b!738442 res!496538) b!738448))

(assert (= (and b!738448 res!496531) b!738438))

(assert (= (and b!738438 res!496528) b!738437))

(assert (= (and b!738437 res!496527) b!738441))

(assert (= (and b!738441 res!496533) b!738428))

(assert (= (and b!738428 res!496529) b!738427))

(assert (= (and b!738427 c!81332) b!738445))

(assert (= (and b!738427 (not c!81332)) b!738443))

(assert (= (and b!738427 res!496540) b!738434))

(assert (= (and b!738434 res!496534) b!738430))

(assert (= (and b!738430 res!496539) b!738449))

(assert (= (and b!738449 res!496541) b!738432))

(assert (= (and b!738430 (not res!496536)) b!738433))

(assert (= (and b!738433 c!81331) b!738439))

(assert (= (and b!738433 (not c!81331)) b!738429))

(assert (= (and b!738433 (not res!496526)) b!738444))

(assert (= (and b!738444 c!81333) b!738440))

(assert (= (and b!738444 (not c!81333)) b!738447))

(assert (= (and b!738444 (not res!496525)) b!738446))

(declare-fun m!690127 () Bool)

(assert (=> b!738438 m!690127))

(declare-fun m!690129 () Bool)

(assert (=> b!738445 m!690129))

(assert (=> b!738445 m!690129))

(declare-fun m!690131 () Bool)

(assert (=> b!738445 m!690131))

(assert (=> b!738443 m!690129))

(assert (=> b!738443 m!690129))

(declare-fun m!690133 () Bool)

(assert (=> b!738443 m!690133))

(declare-fun m!690135 () Bool)

(assert (=> b!738428 m!690135))

(declare-fun m!690137 () Bool)

(assert (=> b!738442 m!690137))

(declare-fun m!690139 () Bool)

(assert (=> b!738430 m!690139))

(declare-fun m!690141 () Bool)

(assert (=> b!738430 m!690141))

(declare-fun m!690143 () Bool)

(assert (=> b!738446 m!690143))

(assert (=> b!738449 m!690129))

(assert (=> b!738449 m!690129))

(declare-fun m!690145 () Bool)

(assert (=> b!738449 m!690145))

(declare-fun m!690147 () Bool)

(assert (=> start!65234 m!690147))

(declare-fun m!690149 () Bool)

(assert (=> start!65234 m!690149))

(assert (=> b!738440 m!690129))

(assert (=> b!738440 m!690129))

(declare-fun m!690151 () Bool)

(assert (=> b!738440 m!690151))

(assert (=> b!738447 m!690129))

(assert (=> b!738447 m!690129))

(declare-fun m!690153 () Bool)

(assert (=> b!738447 m!690153))

(declare-fun m!690155 () Bool)

(assert (=> b!738434 m!690155))

(declare-fun m!690157 () Bool)

(assert (=> b!738434 m!690157))

(declare-fun m!690159 () Bool)

(assert (=> b!738434 m!690159))

(declare-fun m!690161 () Bool)

(assert (=> b!738434 m!690161))

(assert (=> b!738434 m!690159))

(declare-fun m!690163 () Bool)

(assert (=> b!738434 m!690163))

(assert (=> b!738429 m!690129))

(assert (=> b!738429 m!690129))

(assert (=> b!738429 m!690133))

(assert (=> b!738429 m!690129))

(assert (=> b!738429 m!690153))

(assert (=> b!738441 m!690129))

(assert (=> b!738441 m!690129))

(declare-fun m!690165 () Bool)

(assert (=> b!738441 m!690165))

(assert (=> b!738441 m!690165))

(assert (=> b!738441 m!690129))

(declare-fun m!690167 () Bool)

(assert (=> b!738441 m!690167))

(declare-fun m!690169 () Bool)

(assert (=> b!738436 m!690169))

(assert (=> b!738435 m!690129))

(assert (=> b!738435 m!690129))

(declare-fun m!690171 () Bool)

(assert (=> b!738435 m!690171))

(assert (=> b!738432 m!690129))

(assert (=> b!738432 m!690129))

(declare-fun m!690173 () Bool)

(assert (=> b!738432 m!690173))

(declare-fun m!690175 () Bool)

(assert (=> b!738448 m!690175))

(assert (=> b!738439 m!690129))

(assert (=> b!738439 m!690129))

(assert (=> b!738439 m!690151))

(declare-fun m!690177 () Bool)

(assert (=> b!738433 m!690177))

(declare-fun m!690179 () Bool)

(assert (=> b!738426 m!690179))

(push 1)

