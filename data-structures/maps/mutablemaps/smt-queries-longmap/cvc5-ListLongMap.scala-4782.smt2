; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65770 () Bool)

(assert start!65770)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41896 0))(
  ( (array!41897 (arr!20058 (Array (_ BitVec 32) (_ BitVec 64))) (size!20479 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41896)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!755227 () Bool)

(declare-datatypes ((SeekEntryResult!7665 0))(
  ( (MissingZero!7665 (index!33027 (_ BitVec 32))) (Found!7665 (index!33028 (_ BitVec 32))) (Intermediate!7665 (undefined!8477 Bool) (index!33029 (_ BitVec 32)) (x!63960 (_ BitVec 32))) (Undefined!7665) (MissingVacant!7665 (index!33030 (_ BitVec 32))) )
))
(declare-fun lt!336187 () SeekEntryResult!7665)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!421194 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41896 (_ BitVec 32)) SeekEntryResult!7665)

(assert (=> b!755227 (= e!421194 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20058 a!3186) j!159) a!3186 mask!3328) lt!336187))))

(declare-fun b!755228 () Bool)

(declare-fun e!421192 () Bool)

(declare-fun lt!336188 () SeekEntryResult!7665)

(declare-fun lt!336184 () SeekEntryResult!7665)

(assert (=> b!755228 (= e!421192 (= lt!336188 lt!336184))))

(declare-fun b!755229 () Bool)

(declare-fun res!510561 () Bool)

(declare-fun e!421184 () Bool)

(assert (=> b!755229 (=> (not res!510561) (not e!421184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41896 (_ BitVec 32)) Bool)

(assert (=> b!755229 (= res!510561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755230 () Bool)

(declare-fun e!421190 () Bool)

(declare-fun e!421188 () Bool)

(assert (=> b!755230 (= e!421190 e!421188)))

(declare-fun res!510571 () Bool)

(assert (=> b!755230 (=> res!510571 e!421188)))

(declare-fun lt!336193 () (_ BitVec 64))

(declare-fun lt!336185 () (_ BitVec 64))

(assert (=> b!755230 (= res!510571 (= lt!336193 lt!336185))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!755230 (= lt!336193 (select (store (arr!20058 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755232 () Bool)

(declare-fun res!510562 () Bool)

(declare-fun e!421193 () Bool)

(assert (=> b!755232 (=> (not res!510562) (not e!421193))))

(declare-fun e!421187 () Bool)

(assert (=> b!755232 (= res!510562 e!421187)))

(declare-fun c!82716 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!755232 (= c!82716 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755233 () Bool)

(declare-fun res!510559 () Bool)

(declare-fun e!421185 () Bool)

(assert (=> b!755233 (=> (not res!510559) (not e!421185))))

(assert (=> b!755233 (= res!510559 (and (= (size!20479 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20479 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20479 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755234 () Bool)

(declare-datatypes ((Unit!26062 0))(
  ( (Unit!26063) )
))
(declare-fun e!421186 () Unit!26062)

(declare-fun Unit!26064 () Unit!26062)

(assert (=> b!755234 (= e!421186 Unit!26064)))

(assert (=> b!755234 false))

(declare-fun b!755235 () Bool)

(declare-fun res!510569 () Bool)

(assert (=> b!755235 (=> (not res!510569) (not e!421192))))

(declare-fun lt!336183 () array!41896)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41896 (_ BitVec 32)) SeekEntryResult!7665)

(assert (=> b!755235 (= res!510569 (= (seekEntryOrOpen!0 lt!336185 lt!336183 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336185 lt!336183 mask!3328)))))

(declare-fun b!755236 () Bool)

(declare-fun res!510575 () Bool)

(assert (=> b!755236 (=> (not res!510575) (not e!421184))))

(assert (=> b!755236 (= res!510575 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20479 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20479 a!3186))))))

(declare-fun b!755237 () Bool)

(assert (=> b!755237 (= e!421184 e!421193)))

(declare-fun res!510567 () Bool)

(assert (=> b!755237 (=> (not res!510567) (not e!421193))))

(declare-fun lt!336192 () SeekEntryResult!7665)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41896 (_ BitVec 32)) SeekEntryResult!7665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755237 (= res!510567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20058 a!3186) j!159) mask!3328) (select (arr!20058 a!3186) j!159) a!3186 mask!3328) lt!336192))))

(assert (=> b!755237 (= lt!336192 (Intermediate!7665 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755238 () Bool)

(assert (=> b!755238 (= e!421185 e!421184)))

(declare-fun res!510576 () Bool)

(assert (=> b!755238 (=> (not res!510576) (not e!421184))))

(declare-fun lt!336190 () SeekEntryResult!7665)

(assert (=> b!755238 (= res!510576 (or (= lt!336190 (MissingZero!7665 i!1173)) (= lt!336190 (MissingVacant!7665 i!1173))))))

(assert (=> b!755238 (= lt!336190 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!510570 () Bool)

(assert (=> start!65770 (=> (not res!510570) (not e!421185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65770 (= res!510570 (validMask!0 mask!3328))))

(assert (=> start!65770 e!421185))

(assert (=> start!65770 true))

(declare-fun array_inv!15832 (array!41896) Bool)

(assert (=> start!65770 (array_inv!15832 a!3186)))

(declare-fun b!755231 () Bool)

(declare-fun e!421191 () Bool)

(assert (=> b!755231 (= e!421193 e!421191)))

(declare-fun res!510566 () Bool)

(assert (=> b!755231 (=> (not res!510566) (not e!421191))))

(declare-fun lt!336194 () SeekEntryResult!7665)

(declare-fun lt!336191 () SeekEntryResult!7665)

(assert (=> b!755231 (= res!510566 (= lt!336194 lt!336191))))

(assert (=> b!755231 (= lt!336191 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336185 lt!336183 mask!3328))))

(assert (=> b!755231 (= lt!336194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336185 mask!3328) lt!336185 lt!336183 mask!3328))))

(assert (=> b!755231 (= lt!336185 (select (store (arr!20058 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755231 (= lt!336183 (array!41897 (store (arr!20058 a!3186) i!1173 k!2102) (size!20479 a!3186)))))

(declare-fun b!755239 () Bool)

(declare-fun e!421189 () Bool)

(assert (=> b!755239 (= e!421189 e!421190)))

(declare-fun res!510565 () Bool)

(assert (=> b!755239 (=> res!510565 e!421190)))

(assert (=> b!755239 (= res!510565 (not (= lt!336184 lt!336187)))))

(assert (=> b!755239 (= lt!336184 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20058 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755240 () Bool)

(declare-fun res!510572 () Bool)

(assert (=> b!755240 (=> (not res!510572) (not e!421185))))

(declare-fun arrayContainsKey!0 (array!41896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755240 (= res!510572 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755241 () Bool)

(declare-fun res!510560 () Bool)

(assert (=> b!755241 (=> (not res!510560) (not e!421185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755241 (= res!510560 (validKeyInArray!0 k!2102))))

(declare-fun b!755242 () Bool)

(assert (=> b!755242 (= e!421187 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20058 a!3186) j!159) a!3186 mask!3328) lt!336192))))

(declare-fun b!755243 () Bool)

(assert (=> b!755243 (= e!421191 (not e!421189))))

(declare-fun res!510564 () Bool)

(assert (=> b!755243 (=> res!510564 e!421189)))

(assert (=> b!755243 (= res!510564 (or (not (is-Intermediate!7665 lt!336191)) (bvslt x!1131 (x!63960 lt!336191)) (not (= x!1131 (x!63960 lt!336191))) (not (= index!1321 (index!33029 lt!336191)))))))

(assert (=> b!755243 e!421194))

(declare-fun res!510563 () Bool)

(assert (=> b!755243 (=> (not res!510563) (not e!421194))))

(assert (=> b!755243 (= res!510563 (= lt!336188 lt!336187))))

(assert (=> b!755243 (= lt!336187 (Found!7665 j!159))))

(assert (=> b!755243 (= lt!336188 (seekEntryOrOpen!0 (select (arr!20058 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755243 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336189 () Unit!26062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41896 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26062)

(assert (=> b!755243 (= lt!336189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755244 () Bool)

(declare-fun res!510568 () Bool)

(assert (=> b!755244 (=> (not res!510568) (not e!421184))))

(declare-datatypes ((List!14113 0))(
  ( (Nil!14110) (Cons!14109 (h!15181 (_ BitVec 64)) (t!20436 List!14113)) )
))
(declare-fun arrayNoDuplicates!0 (array!41896 (_ BitVec 32) List!14113) Bool)

(assert (=> b!755244 (= res!510568 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14110))))

(declare-fun b!755245 () Bool)

(assert (=> b!755245 (= e!421187 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20058 a!3186) j!159) a!3186 mask!3328) (Found!7665 j!159)))))

(declare-fun b!755246 () Bool)

(declare-fun Unit!26065 () Unit!26062)

(assert (=> b!755246 (= e!421186 Unit!26065)))

(declare-fun b!755247 () Bool)

(assert (=> b!755247 (= e!421188 true)))

(assert (=> b!755247 e!421192))

(declare-fun res!510574 () Bool)

(assert (=> b!755247 (=> (not res!510574) (not e!421192))))

(assert (=> b!755247 (= res!510574 (= lt!336193 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336186 () Unit!26062)

(assert (=> b!755247 (= lt!336186 e!421186)))

(declare-fun c!82715 () Bool)

(assert (=> b!755247 (= c!82715 (= lt!336193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755248 () Bool)

(declare-fun res!510573 () Bool)

(assert (=> b!755248 (=> (not res!510573) (not e!421193))))

(assert (=> b!755248 (= res!510573 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20058 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755249 () Bool)

(declare-fun res!510558 () Bool)

(assert (=> b!755249 (=> (not res!510558) (not e!421185))))

(assert (=> b!755249 (= res!510558 (validKeyInArray!0 (select (arr!20058 a!3186) j!159)))))

(assert (= (and start!65770 res!510570) b!755233))

(assert (= (and b!755233 res!510559) b!755249))

(assert (= (and b!755249 res!510558) b!755241))

(assert (= (and b!755241 res!510560) b!755240))

(assert (= (and b!755240 res!510572) b!755238))

(assert (= (and b!755238 res!510576) b!755229))

(assert (= (and b!755229 res!510561) b!755244))

(assert (= (and b!755244 res!510568) b!755236))

(assert (= (and b!755236 res!510575) b!755237))

(assert (= (and b!755237 res!510567) b!755248))

(assert (= (and b!755248 res!510573) b!755232))

(assert (= (and b!755232 c!82716) b!755242))

(assert (= (and b!755232 (not c!82716)) b!755245))

(assert (= (and b!755232 res!510562) b!755231))

(assert (= (and b!755231 res!510566) b!755243))

(assert (= (and b!755243 res!510563) b!755227))

(assert (= (and b!755243 (not res!510564)) b!755239))

(assert (= (and b!755239 (not res!510565)) b!755230))

(assert (= (and b!755230 (not res!510571)) b!755247))

(assert (= (and b!755247 c!82715) b!755234))

(assert (= (and b!755247 (not c!82715)) b!755246))

(assert (= (and b!755247 res!510574) b!755235))

(assert (= (and b!755235 res!510569) b!755228))

(declare-fun m!703549 () Bool)

(assert (=> b!755240 m!703549))

(declare-fun m!703551 () Bool)

(assert (=> b!755238 m!703551))

(declare-fun m!703553 () Bool)

(assert (=> b!755248 m!703553))

(declare-fun m!703555 () Bool)

(assert (=> b!755242 m!703555))

(assert (=> b!755242 m!703555))

(declare-fun m!703557 () Bool)

(assert (=> b!755242 m!703557))

(assert (=> b!755239 m!703555))

(assert (=> b!755239 m!703555))

(declare-fun m!703559 () Bool)

(assert (=> b!755239 m!703559))

(declare-fun m!703561 () Bool)

(assert (=> b!755235 m!703561))

(declare-fun m!703563 () Bool)

(assert (=> b!755235 m!703563))

(assert (=> b!755249 m!703555))

(assert (=> b!755249 m!703555))

(declare-fun m!703565 () Bool)

(assert (=> b!755249 m!703565))

(assert (=> b!755227 m!703555))

(assert (=> b!755227 m!703555))

(declare-fun m!703567 () Bool)

(assert (=> b!755227 m!703567))

(declare-fun m!703569 () Bool)

(assert (=> b!755231 m!703569))

(assert (=> b!755231 m!703569))

(declare-fun m!703571 () Bool)

(assert (=> b!755231 m!703571))

(declare-fun m!703573 () Bool)

(assert (=> b!755231 m!703573))

(declare-fun m!703575 () Bool)

(assert (=> b!755231 m!703575))

(declare-fun m!703577 () Bool)

(assert (=> b!755231 m!703577))

(declare-fun m!703579 () Bool)

(assert (=> start!65770 m!703579))

(declare-fun m!703581 () Bool)

(assert (=> start!65770 m!703581))

(declare-fun m!703583 () Bool)

(assert (=> b!755244 m!703583))

(assert (=> b!755243 m!703555))

(assert (=> b!755243 m!703555))

(declare-fun m!703585 () Bool)

(assert (=> b!755243 m!703585))

(declare-fun m!703587 () Bool)

(assert (=> b!755243 m!703587))

(declare-fun m!703589 () Bool)

(assert (=> b!755243 m!703589))

(assert (=> b!755237 m!703555))

(assert (=> b!755237 m!703555))

(declare-fun m!703591 () Bool)

(assert (=> b!755237 m!703591))

(assert (=> b!755237 m!703591))

(assert (=> b!755237 m!703555))

(declare-fun m!703593 () Bool)

(assert (=> b!755237 m!703593))

(declare-fun m!703595 () Bool)

(assert (=> b!755229 m!703595))

(assert (=> b!755245 m!703555))

(assert (=> b!755245 m!703555))

(assert (=> b!755245 m!703559))

(assert (=> b!755230 m!703577))

(declare-fun m!703597 () Bool)

(assert (=> b!755230 m!703597))

(declare-fun m!703599 () Bool)

(assert (=> b!755241 m!703599))

(push 1)

