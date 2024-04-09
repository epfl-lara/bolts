; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67036 () Bool)

(assert start!67036)

(declare-fun b!773435 () Bool)

(declare-fun e!430562 () Bool)

(declare-fun e!430556 () Bool)

(assert (=> b!773435 (= e!430562 e!430556)))

(declare-fun c!85510 () Bool)

(declare-fun lt!344448 () Bool)

(assert (=> b!773435 (= c!85510 lt!344448)))

(declare-fun b!773436 () Bool)

(declare-fun res!523226 () Bool)

(declare-fun e!430558 () Bool)

(assert (=> b!773436 (=> (not res!523226) (not e!430558))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773436 (= res!523226 (validKeyInArray!0 k!2102))))

(declare-fun b!773437 () Bool)

(declare-fun res!523218 () Bool)

(declare-fun e!430557 () Bool)

(assert (=> b!773437 (=> (not res!523218) (not e!430557))))

(declare-datatypes ((array!42415 0))(
  ( (array!42416 (arr!20301 (Array (_ BitVec 32) (_ BitVec 64))) (size!20722 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42415)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42415 (_ BitVec 32)) Bool)

(assert (=> b!773437 (= res!523218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773438 () Bool)

(declare-fun e!430559 () Bool)

(assert (=> b!773438 (= e!430557 e!430559)))

(declare-fun res!523225 () Bool)

(assert (=> b!773438 (=> (not res!523225) (not e!430559))))

(declare-datatypes ((SeekEntryResult!7908 0))(
  ( (MissingZero!7908 (index!33999 (_ BitVec 32))) (Found!7908 (index!34000 (_ BitVec 32))) (Intermediate!7908 (undefined!8720 Bool) (index!34001 (_ BitVec 32)) (x!64968 (_ BitVec 32))) (Undefined!7908) (MissingVacant!7908 (index!34002 (_ BitVec 32))) )
))
(declare-fun lt!344454 () SeekEntryResult!7908)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42415 (_ BitVec 32)) SeekEntryResult!7908)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773438 (= res!523225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20301 a!3186) j!159) mask!3328) (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344454))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773438 (= lt!344454 (Intermediate!7908 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773439 () Bool)

(declare-fun res!523221 () Bool)

(assert (=> b!773439 (=> (not res!523221) (not e!430557))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!773439 (= res!523221 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20722 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20722 a!3186))))))

(declare-fun e!430563 () Bool)

(declare-fun b!773440 () Bool)

(declare-fun lt!344446 () SeekEntryResult!7908)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42415 (_ BitVec 32)) SeekEntryResult!7908)

(assert (=> b!773440 (= e!430563 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344446))))

(declare-fun b!773441 () Bool)

(declare-fun res!523223 () Bool)

(assert (=> b!773441 (=> (not res!523223) (not e!430558))))

(assert (=> b!773441 (= res!523223 (validKeyInArray!0 (select (arr!20301 a!3186) j!159)))))

(declare-fun b!773442 () Bool)

(declare-fun e!430566 () Bool)

(declare-fun e!430565 () Bool)

(assert (=> b!773442 (= e!430566 (not e!430565))))

(declare-fun res!523228 () Bool)

(assert (=> b!773442 (=> res!523228 e!430565)))

(declare-fun lt!344449 () SeekEntryResult!7908)

(assert (=> b!773442 (= res!523228 (or (not (is-Intermediate!7908 lt!344449)) (bvsge x!1131 (x!64968 lt!344449))))))

(declare-fun lt!344451 () SeekEntryResult!7908)

(assert (=> b!773442 (= lt!344451 (Found!7908 j!159))))

(declare-fun e!430567 () Bool)

(assert (=> b!773442 e!430567))

(declare-fun res!523222 () Bool)

(assert (=> b!773442 (=> (not res!523222) (not e!430567))))

(assert (=> b!773442 (= res!523222 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26668 0))(
  ( (Unit!26669) )
))
(declare-fun lt!344450 () Unit!26668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26668)

(assert (=> b!773442 (= lt!344450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773443 () Bool)

(declare-fun res!523217 () Bool)

(assert (=> b!773443 (=> (not res!523217) (not e!430559))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773443 (= res!523217 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20301 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!430561 () Bool)

(declare-fun b!773444 () Bool)

(assert (=> b!773444 (= e!430561 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) (Found!7908 j!159)))))

(declare-fun lt!344458 () (_ BitVec 32))

(declare-fun b!773445 () Bool)

(assert (=> b!773445 (= e!430556 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344458 resIntermediateIndex!5 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344451))))

(declare-fun b!773446 () Bool)

(declare-fun e!430560 () Unit!26668)

(declare-fun Unit!26670 () Unit!26668)

(assert (=> b!773446 (= e!430560 Unit!26670)))

(assert (=> b!773446 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344458 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344454)))

(declare-fun b!773447 () Bool)

(declare-fun res!523215 () Bool)

(assert (=> b!773447 (=> (not res!523215) (not e!430558))))

(declare-fun arrayContainsKey!0 (array!42415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773447 (= res!523215 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!773449 () Bool)

(declare-fun Unit!26671 () Unit!26668)

(assert (=> b!773449 (= e!430560 Unit!26671)))

(declare-fun lt!344452 () SeekEntryResult!7908)

(assert (=> b!773449 (= lt!344452 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20301 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773449 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344458 resIntermediateIndex!5 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344451)))

(declare-fun b!773450 () Bool)

(assert (=> b!773450 (= e!430561 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344454))))

(declare-fun b!773451 () Bool)

(assert (=> b!773451 (= e!430567 e!430563)))

(declare-fun res!523214 () Bool)

(assert (=> b!773451 (=> (not res!523214) (not e!430563))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42415 (_ BitVec 32)) SeekEntryResult!7908)

(assert (=> b!773451 (= res!523214 (= (seekEntryOrOpen!0 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344446))))

(assert (=> b!773451 (= lt!344446 (Found!7908 j!159))))

(declare-fun b!773452 () Bool)

(assert (=> b!773452 (= e!430559 e!430566)))

(declare-fun res!523212 () Bool)

(assert (=> b!773452 (=> (not res!523212) (not e!430566))))

(declare-fun lt!344447 () SeekEntryResult!7908)

(assert (=> b!773452 (= res!523212 (= lt!344447 lt!344449))))

(declare-fun lt!344453 () (_ BitVec 64))

(declare-fun lt!344455 () array!42415)

(assert (=> b!773452 (= lt!344449 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344453 lt!344455 mask!3328))))

(assert (=> b!773452 (= lt!344447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344453 mask!3328) lt!344453 lt!344455 mask!3328))))

(assert (=> b!773452 (= lt!344453 (select (store (arr!20301 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773452 (= lt!344455 (array!42416 (store (arr!20301 a!3186) i!1173 k!2102) (size!20722 a!3186)))))

(declare-fun b!773453 () Bool)

(assert (=> b!773453 (= e!430558 e!430557)))

(declare-fun res!523219 () Bool)

(assert (=> b!773453 (=> (not res!523219) (not e!430557))))

(declare-fun lt!344457 () SeekEntryResult!7908)

(assert (=> b!773453 (= res!523219 (or (= lt!344457 (MissingZero!7908 i!1173)) (= lt!344457 (MissingVacant!7908 i!1173))))))

(assert (=> b!773453 (= lt!344457 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773454 () Bool)

(declare-fun res!523224 () Bool)

(assert (=> b!773454 (=> (not res!523224) (not e!430557))))

(declare-datatypes ((List!14356 0))(
  ( (Nil!14353) (Cons!14352 (h!15457 (_ BitVec 64)) (t!20679 List!14356)) )
))
(declare-fun arrayNoDuplicates!0 (array!42415 (_ BitVec 32) List!14356) Bool)

(assert (=> b!773454 (= res!523224 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14353))))

(declare-fun b!773455 () Bool)

(assert (=> b!773455 (= e!430556 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344458 (select (arr!20301 a!3186) j!159) a!3186 mask!3328) lt!344454))))

(declare-fun b!773456 () Bool)

(assert (=> b!773456 (= e!430565 e!430562)))

(declare-fun res!523227 () Bool)

(assert (=> b!773456 (=> res!523227 e!430562)))

(assert (=> b!773456 (= res!523227 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344458 #b00000000000000000000000000000000) (bvsge lt!344458 (size!20722 a!3186))))))

(declare-fun lt!344456 () Unit!26668)

(assert (=> b!773456 (= lt!344456 e!430560)))

(declare-fun c!85511 () Bool)

(assert (=> b!773456 (= c!85511 lt!344448)))

(assert (=> b!773456 (= lt!344448 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773456 (= lt!344458 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773457 () Bool)

(declare-fun res!523213 () Bool)

(assert (=> b!773457 (=> (not res!523213) (not e!430558))))

(assert (=> b!773457 (= res!523213 (and (= (size!20722 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20722 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20722 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773448 () Bool)

(declare-fun res!523216 () Bool)

(assert (=> b!773448 (=> (not res!523216) (not e!430559))))

(assert (=> b!773448 (= res!523216 e!430561)))

(declare-fun c!85512 () Bool)

(assert (=> b!773448 (= c!85512 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!523220 () Bool)

(assert (=> start!67036 (=> (not res!523220) (not e!430558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67036 (= res!523220 (validMask!0 mask!3328))))

(assert (=> start!67036 e!430558))

(assert (=> start!67036 true))

(declare-fun array_inv!16075 (array!42415) Bool)

(assert (=> start!67036 (array_inv!16075 a!3186)))

(assert (= (and start!67036 res!523220) b!773457))

(assert (= (and b!773457 res!523213) b!773441))

(assert (= (and b!773441 res!523223) b!773436))

(assert (= (and b!773436 res!523226) b!773447))

(assert (= (and b!773447 res!523215) b!773453))

(assert (= (and b!773453 res!523219) b!773437))

(assert (= (and b!773437 res!523218) b!773454))

(assert (= (and b!773454 res!523224) b!773439))

(assert (= (and b!773439 res!523221) b!773438))

(assert (= (and b!773438 res!523225) b!773443))

(assert (= (and b!773443 res!523217) b!773448))

(assert (= (and b!773448 c!85512) b!773450))

(assert (= (and b!773448 (not c!85512)) b!773444))

(assert (= (and b!773448 res!523216) b!773452))

(assert (= (and b!773452 res!523212) b!773442))

(assert (= (and b!773442 res!523222) b!773451))

(assert (= (and b!773451 res!523214) b!773440))

(assert (= (and b!773442 (not res!523228)) b!773456))

(assert (= (and b!773456 c!85511) b!773446))

(assert (= (and b!773456 (not c!85511)) b!773449))

(assert (= (and b!773456 (not res!523227)) b!773435))

(assert (= (and b!773435 c!85510) b!773455))

(assert (= (and b!773435 (not c!85510)) b!773445))

(declare-fun m!718219 () Bool)

(assert (=> b!773447 m!718219))

(declare-fun m!718221 () Bool)

(assert (=> b!773442 m!718221))

(declare-fun m!718223 () Bool)

(assert (=> b!773442 m!718223))

(declare-fun m!718225 () Bool)

(assert (=> b!773441 m!718225))

(assert (=> b!773441 m!718225))

(declare-fun m!718227 () Bool)

(assert (=> b!773441 m!718227))

(declare-fun m!718229 () Bool)

(assert (=> b!773443 m!718229))

(assert (=> b!773445 m!718225))

(assert (=> b!773445 m!718225))

(declare-fun m!718231 () Bool)

(assert (=> b!773445 m!718231))

(declare-fun m!718233 () Bool)

(assert (=> b!773456 m!718233))

(assert (=> b!773438 m!718225))

(assert (=> b!773438 m!718225))

(declare-fun m!718235 () Bool)

(assert (=> b!773438 m!718235))

(assert (=> b!773438 m!718235))

(assert (=> b!773438 m!718225))

(declare-fun m!718237 () Bool)

(assert (=> b!773438 m!718237))

(assert (=> b!773446 m!718225))

(assert (=> b!773446 m!718225))

(declare-fun m!718239 () Bool)

(assert (=> b!773446 m!718239))

(declare-fun m!718241 () Bool)

(assert (=> start!67036 m!718241))

(declare-fun m!718243 () Bool)

(assert (=> start!67036 m!718243))

(declare-fun m!718245 () Bool)

(assert (=> b!773436 m!718245))

(declare-fun m!718247 () Bool)

(assert (=> b!773437 m!718247))

(assert (=> b!773455 m!718225))

(assert (=> b!773455 m!718225))

(assert (=> b!773455 m!718239))

(declare-fun m!718249 () Bool)

(assert (=> b!773454 m!718249))

(declare-fun m!718251 () Bool)

(assert (=> b!773453 m!718251))

(assert (=> b!773449 m!718225))

(assert (=> b!773449 m!718225))

(declare-fun m!718253 () Bool)

(assert (=> b!773449 m!718253))

(assert (=> b!773449 m!718225))

(assert (=> b!773449 m!718231))

(assert (=> b!773450 m!718225))

(assert (=> b!773450 m!718225))

(declare-fun m!718255 () Bool)

(assert (=> b!773450 m!718255))

(assert (=> b!773451 m!718225))

(assert (=> b!773451 m!718225))

(declare-fun m!718257 () Bool)

(assert (=> b!773451 m!718257))

(assert (=> b!773440 m!718225))

(assert (=> b!773440 m!718225))

(declare-fun m!718259 () Bool)

(assert (=> b!773440 m!718259))

(assert (=> b!773444 m!718225))

(assert (=> b!773444 m!718225))

(assert (=> b!773444 m!718253))

(declare-fun m!718261 () Bool)

(assert (=> b!773452 m!718261))

(assert (=> b!773452 m!718261))

(declare-fun m!718263 () Bool)

(assert (=> b!773452 m!718263))

(declare-fun m!718265 () Bool)

(assert (=> b!773452 m!718265))

(declare-fun m!718267 () Bool)

(assert (=> b!773452 m!718267))

(declare-fun m!718269 () Bool)

(assert (=> b!773452 m!718269))

(push 1)

