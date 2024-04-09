; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66846 () Bool)

(assert start!66846)

(declare-fun b!771125 () Bool)

(declare-fun res!521841 () Bool)

(declare-fun e!429319 () Bool)

(assert (=> b!771125 (=> (not res!521841) (not e!429319))))

(declare-datatypes ((array!42363 0))(
  ( (array!42364 (arr!20278 (Array (_ BitVec 32) (_ BitVec 64))) (size!20699 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42363)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42363 (_ BitVec 32)) Bool)

(assert (=> b!771125 (= res!521841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!771126 () Bool)

(declare-datatypes ((SeekEntryResult!7885 0))(
  ( (MissingZero!7885 (index!33907 (_ BitVec 32))) (Found!7885 (index!33908 (_ BitVec 32))) (Intermediate!7885 (undefined!8697 Bool) (index!33909 (_ BitVec 32)) (x!64857 (_ BitVec 32))) (Undefined!7885) (MissingVacant!7885 (index!33910 (_ BitVec 32))) )
))
(declare-fun lt!343312 () SeekEntryResult!7885)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!429314 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42363 (_ BitVec 32)) SeekEntryResult!7885)

(assert (=> b!771126 (= e!429314 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343312))))

(declare-fun b!771127 () Bool)

(declare-fun res!521840 () Bool)

(declare-fun e!429310 () Bool)

(assert (=> b!771127 (=> (not res!521840) (not e!429310))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771127 (= res!521840 (validKeyInArray!0 k0!2102))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!771128 () Bool)

(declare-fun e!429312 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!771128 (= e!429312 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) (Found!7885 j!159)))))

(declare-fun b!771129 () Bool)

(declare-datatypes ((Unit!26576 0))(
  ( (Unit!26577) )
))
(declare-fun e!429315 () Unit!26576)

(declare-fun Unit!26578 () Unit!26576)

(assert (=> b!771129 (= e!429315 Unit!26578)))

(declare-fun lt!343319 () SeekEntryResult!7885)

(assert (=> b!771129 (= lt!343319 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343320 () (_ BitVec 32))

(assert (=> b!771129 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343320 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) (Found!7885 j!159))))

(declare-fun b!771130 () Bool)

(declare-fun res!521847 () Bool)

(assert (=> b!771130 (=> (not res!521847) (not e!429319))))

(assert (=> b!771130 (= res!521847 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20699 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20699 a!3186))))))

(declare-fun b!771131 () Bool)

(assert (=> b!771131 (= e!429310 e!429319)))

(declare-fun res!521838 () Bool)

(assert (=> b!771131 (=> (not res!521838) (not e!429319))))

(declare-fun lt!343311 () SeekEntryResult!7885)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771131 (= res!521838 (or (= lt!343311 (MissingZero!7885 i!1173)) (= lt!343311 (MissingVacant!7885 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42363 (_ BitVec 32)) SeekEntryResult!7885)

(assert (=> b!771131 (= lt!343311 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!771132 () Bool)

(declare-fun res!521846 () Bool)

(declare-fun e!429311 () Bool)

(assert (=> b!771132 (=> (not res!521846) (not e!429311))))

(assert (=> b!771132 (= res!521846 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20278 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771133 () Bool)

(assert (=> b!771133 (= e!429319 e!429311)))

(declare-fun res!521851 () Bool)

(assert (=> b!771133 (=> (not res!521851) (not e!429311))))

(declare-fun lt!343318 () SeekEntryResult!7885)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42363 (_ BitVec 32)) SeekEntryResult!7885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771133 (= res!521851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343318))))

(assert (=> b!771133 (= lt!343318 (Intermediate!7885 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771134 () Bool)

(declare-fun res!521845 () Bool)

(assert (=> b!771134 (=> (not res!521845) (not e!429311))))

(assert (=> b!771134 (= res!521845 e!429312)))

(declare-fun c!85041 () Bool)

(assert (=> b!771134 (= c!85041 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!521849 () Bool)

(assert (=> start!66846 (=> (not res!521849) (not e!429310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66846 (= res!521849 (validMask!0 mask!3328))))

(assert (=> start!66846 e!429310))

(assert (=> start!66846 true))

(declare-fun array_inv!16052 (array!42363) Bool)

(assert (=> start!66846 (array_inv!16052 a!3186)))

(declare-fun b!771135 () Bool)

(declare-fun Unit!26579 () Unit!26576)

(assert (=> b!771135 (= e!429315 Unit!26579)))

(assert (=> b!771135 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343320 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343318)))

(declare-fun b!771136 () Bool)

(declare-fun res!521848 () Bool)

(assert (=> b!771136 (=> (not res!521848) (not e!429310))))

(declare-fun arrayContainsKey!0 (array!42363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771136 (= res!521848 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771137 () Bool)

(declare-fun res!521844 () Bool)

(assert (=> b!771137 (=> (not res!521844) (not e!429319))))

(declare-datatypes ((List!14333 0))(
  ( (Nil!14330) (Cons!14329 (h!15428 (_ BitVec 64)) (t!20656 List!14333)) )
))
(declare-fun arrayNoDuplicates!0 (array!42363 (_ BitVec 32) List!14333) Bool)

(assert (=> b!771137 (= res!521844 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14330))))

(declare-fun b!771138 () Bool)

(declare-fun e!429316 () Bool)

(declare-fun e!429313 () Bool)

(assert (=> b!771138 (= e!429316 (not e!429313))))

(declare-fun res!521842 () Bool)

(assert (=> b!771138 (=> res!521842 e!429313)))

(declare-fun lt!343314 () SeekEntryResult!7885)

(get-info :version)

(assert (=> b!771138 (= res!521842 (or (not ((_ is Intermediate!7885) lt!343314)) (bvsge x!1131 (x!64857 lt!343314))))))

(declare-fun e!429318 () Bool)

(assert (=> b!771138 e!429318))

(declare-fun res!521839 () Bool)

(assert (=> b!771138 (=> (not res!521839) (not e!429318))))

(assert (=> b!771138 (= res!521839 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343315 () Unit!26576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26576)

(assert (=> b!771138 (= lt!343315 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771139 () Bool)

(assert (=> b!771139 (= e!429318 e!429314)))

(declare-fun res!521837 () Bool)

(assert (=> b!771139 (=> (not res!521837) (not e!429314))))

(assert (=> b!771139 (= res!521837 (= (seekEntryOrOpen!0 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343312))))

(assert (=> b!771139 (= lt!343312 (Found!7885 j!159))))

(declare-fun b!771140 () Bool)

(assert (=> b!771140 (= e!429311 e!429316)))

(declare-fun res!521850 () Bool)

(assert (=> b!771140 (=> (not res!521850) (not e!429316))))

(declare-fun lt!343316 () SeekEntryResult!7885)

(assert (=> b!771140 (= res!521850 (= lt!343316 lt!343314))))

(declare-fun lt!343321 () array!42363)

(declare-fun lt!343313 () (_ BitVec 64))

(assert (=> b!771140 (= lt!343314 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343313 lt!343321 mask!3328))))

(assert (=> b!771140 (= lt!343316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343313 mask!3328) lt!343313 lt!343321 mask!3328))))

(assert (=> b!771140 (= lt!343313 (select (store (arr!20278 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!771140 (= lt!343321 (array!42364 (store (arr!20278 a!3186) i!1173 k0!2102) (size!20699 a!3186)))))

(declare-fun b!771141 () Bool)

(assert (=> b!771141 (= e!429312 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343318))))

(declare-fun b!771142 () Bool)

(declare-fun res!521843 () Bool)

(assert (=> b!771142 (=> (not res!521843) (not e!429310))))

(assert (=> b!771142 (= res!521843 (validKeyInArray!0 (select (arr!20278 a!3186) j!159)))))

(declare-fun b!771143 () Bool)

(assert (=> b!771143 (= e!429313 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343317 () Unit!26576)

(assert (=> b!771143 (= lt!343317 e!429315)))

(declare-fun c!85040 () Bool)

(assert (=> b!771143 (= c!85040 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771143 (= lt!343320 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771144 () Bool)

(declare-fun res!521836 () Bool)

(assert (=> b!771144 (=> (not res!521836) (not e!429310))))

(assert (=> b!771144 (= res!521836 (and (= (size!20699 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20699 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20699 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66846 res!521849) b!771144))

(assert (= (and b!771144 res!521836) b!771142))

(assert (= (and b!771142 res!521843) b!771127))

(assert (= (and b!771127 res!521840) b!771136))

(assert (= (and b!771136 res!521848) b!771131))

(assert (= (and b!771131 res!521838) b!771125))

(assert (= (and b!771125 res!521841) b!771137))

(assert (= (and b!771137 res!521844) b!771130))

(assert (= (and b!771130 res!521847) b!771133))

(assert (= (and b!771133 res!521851) b!771132))

(assert (= (and b!771132 res!521846) b!771134))

(assert (= (and b!771134 c!85041) b!771141))

(assert (= (and b!771134 (not c!85041)) b!771128))

(assert (= (and b!771134 res!521845) b!771140))

(assert (= (and b!771140 res!521850) b!771138))

(assert (= (and b!771138 res!521839) b!771139))

(assert (= (and b!771139 res!521837) b!771126))

(assert (= (and b!771138 (not res!521842)) b!771143))

(assert (= (and b!771143 c!85040) b!771135))

(assert (= (and b!771143 (not c!85040)) b!771129))

(declare-fun m!716375 () Bool)

(assert (=> start!66846 m!716375))

(declare-fun m!716377 () Bool)

(assert (=> start!66846 m!716377))

(declare-fun m!716379 () Bool)

(assert (=> b!771139 m!716379))

(assert (=> b!771139 m!716379))

(declare-fun m!716381 () Bool)

(assert (=> b!771139 m!716381))

(assert (=> b!771128 m!716379))

(assert (=> b!771128 m!716379))

(declare-fun m!716383 () Bool)

(assert (=> b!771128 m!716383))

(assert (=> b!771129 m!716379))

(assert (=> b!771129 m!716379))

(assert (=> b!771129 m!716383))

(assert (=> b!771129 m!716379))

(declare-fun m!716385 () Bool)

(assert (=> b!771129 m!716385))

(declare-fun m!716387 () Bool)

(assert (=> b!771138 m!716387))

(declare-fun m!716389 () Bool)

(assert (=> b!771138 m!716389))

(assert (=> b!771133 m!716379))

(assert (=> b!771133 m!716379))

(declare-fun m!716391 () Bool)

(assert (=> b!771133 m!716391))

(assert (=> b!771133 m!716391))

(assert (=> b!771133 m!716379))

(declare-fun m!716393 () Bool)

(assert (=> b!771133 m!716393))

(assert (=> b!771135 m!716379))

(assert (=> b!771135 m!716379))

(declare-fun m!716395 () Bool)

(assert (=> b!771135 m!716395))

(assert (=> b!771141 m!716379))

(assert (=> b!771141 m!716379))

(declare-fun m!716397 () Bool)

(assert (=> b!771141 m!716397))

(assert (=> b!771142 m!716379))

(assert (=> b!771142 m!716379))

(declare-fun m!716399 () Bool)

(assert (=> b!771142 m!716399))

(declare-fun m!716401 () Bool)

(assert (=> b!771127 m!716401))

(declare-fun m!716403 () Bool)

(assert (=> b!771136 m!716403))

(assert (=> b!771126 m!716379))

(assert (=> b!771126 m!716379))

(declare-fun m!716405 () Bool)

(assert (=> b!771126 m!716405))

(declare-fun m!716407 () Bool)

(assert (=> b!771132 m!716407))

(declare-fun m!716409 () Bool)

(assert (=> b!771143 m!716409))

(declare-fun m!716411 () Bool)

(assert (=> b!771125 m!716411))

(declare-fun m!716413 () Bool)

(assert (=> b!771137 m!716413))

(declare-fun m!716415 () Bool)

(assert (=> b!771131 m!716415))

(declare-fun m!716417 () Bool)

(assert (=> b!771140 m!716417))

(declare-fun m!716419 () Bool)

(assert (=> b!771140 m!716419))

(declare-fun m!716421 () Bool)

(assert (=> b!771140 m!716421))

(declare-fun m!716423 () Bool)

(assert (=> b!771140 m!716423))

(assert (=> b!771140 m!716419))

(declare-fun m!716425 () Bool)

(assert (=> b!771140 m!716425))

(check-sat (not b!771143) (not b!771140) (not b!771129) (not b!771128) (not b!771133) (not b!771136) (not start!66846) (not b!771126) (not b!771141) (not b!771137) (not b!771127) (not b!771131) (not b!771142) (not b!771135) (not b!771139) (not b!771138) (not b!771125))
(check-sat)
(get-model)

(declare-fun b!771217 () Bool)

(declare-fun e!429358 () SeekEntryResult!7885)

(assert (=> b!771217 (= e!429358 (Found!7885 index!1321))))

(declare-fun b!771218 () Bool)

(declare-fun e!429356 () SeekEntryResult!7885)

(assert (=> b!771218 (= e!429356 Undefined!7885)))

(declare-fun b!771220 () Bool)

(declare-fun e!429357 () SeekEntryResult!7885)

(assert (=> b!771220 (= e!429357 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771221 () Bool)

(assert (=> b!771221 (= e!429356 e!429358)))

(declare-fun c!85054 () Bool)

(declare-fun lt!343360 () (_ BitVec 64))

(assert (=> b!771221 (= c!85054 (= lt!343360 (select (arr!20278 a!3186) j!159)))))

(declare-fun b!771222 () Bool)

(assert (=> b!771222 (= e!429357 (MissingVacant!7885 resIntermediateIndex!5))))

(declare-fun lt!343359 () SeekEntryResult!7885)

(declare-fun d!101603 () Bool)

(assert (=> d!101603 (and (or ((_ is Undefined!7885) lt!343359) (not ((_ is Found!7885) lt!343359)) (and (bvsge (index!33908 lt!343359) #b00000000000000000000000000000000) (bvslt (index!33908 lt!343359) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343359) ((_ is Found!7885) lt!343359) (not ((_ is MissingVacant!7885) lt!343359)) (not (= (index!33910 lt!343359) resIntermediateIndex!5)) (and (bvsge (index!33910 lt!343359) #b00000000000000000000000000000000) (bvslt (index!33910 lt!343359) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343359) (ite ((_ is Found!7885) lt!343359) (= (select (arr!20278 a!3186) (index!33908 lt!343359)) (select (arr!20278 a!3186) j!159)) (and ((_ is MissingVacant!7885) lt!343359) (= (index!33910 lt!343359) resIntermediateIndex!5) (= (select (arr!20278 a!3186) (index!33910 lt!343359)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101603 (= lt!343359 e!429356)))

(declare-fun c!85056 () Bool)

(assert (=> d!101603 (= c!85056 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101603 (= lt!343360 (select (arr!20278 a!3186) index!1321))))

(assert (=> d!101603 (validMask!0 mask!3328)))

(assert (=> d!101603 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343359)))

(declare-fun b!771219 () Bool)

(declare-fun c!85055 () Bool)

(assert (=> b!771219 (= c!85055 (= lt!343360 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771219 (= e!429358 e!429357)))

(assert (= (and d!101603 c!85056) b!771218))

(assert (= (and d!101603 (not c!85056)) b!771221))

(assert (= (and b!771221 c!85054) b!771217))

(assert (= (and b!771221 (not c!85054)) b!771219))

(assert (= (and b!771219 c!85055) b!771222))

(assert (= (and b!771219 (not c!85055)) b!771220))

(assert (=> b!771220 m!716409))

(assert (=> b!771220 m!716409))

(assert (=> b!771220 m!716379))

(declare-fun m!716479 () Bool)

(assert (=> b!771220 m!716479))

(declare-fun m!716481 () Bool)

(assert (=> d!101603 m!716481))

(declare-fun m!716483 () Bool)

(assert (=> d!101603 m!716483))

(declare-fun m!716485 () Bool)

(assert (=> d!101603 m!716485))

(assert (=> d!101603 m!716375))

(assert (=> b!771129 d!101603))

(declare-fun b!771223 () Bool)

(declare-fun e!429361 () SeekEntryResult!7885)

(assert (=> b!771223 (= e!429361 (Found!7885 lt!343320))))

(declare-fun b!771224 () Bool)

(declare-fun e!429359 () SeekEntryResult!7885)

(assert (=> b!771224 (= e!429359 Undefined!7885)))

(declare-fun e!429360 () SeekEntryResult!7885)

(declare-fun b!771226 () Bool)

(assert (=> b!771226 (= e!429360 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343320 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771227 () Bool)

(assert (=> b!771227 (= e!429359 e!429361)))

(declare-fun c!85057 () Bool)

(declare-fun lt!343362 () (_ BitVec 64))

(assert (=> b!771227 (= c!85057 (= lt!343362 (select (arr!20278 a!3186) j!159)))))

(declare-fun b!771228 () Bool)

(assert (=> b!771228 (= e!429360 (MissingVacant!7885 resIntermediateIndex!5))))

(declare-fun d!101605 () Bool)

(declare-fun lt!343361 () SeekEntryResult!7885)

(assert (=> d!101605 (and (or ((_ is Undefined!7885) lt!343361) (not ((_ is Found!7885) lt!343361)) (and (bvsge (index!33908 lt!343361) #b00000000000000000000000000000000) (bvslt (index!33908 lt!343361) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343361) ((_ is Found!7885) lt!343361) (not ((_ is MissingVacant!7885) lt!343361)) (not (= (index!33910 lt!343361) resIntermediateIndex!5)) (and (bvsge (index!33910 lt!343361) #b00000000000000000000000000000000) (bvslt (index!33910 lt!343361) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343361) (ite ((_ is Found!7885) lt!343361) (= (select (arr!20278 a!3186) (index!33908 lt!343361)) (select (arr!20278 a!3186) j!159)) (and ((_ is MissingVacant!7885) lt!343361) (= (index!33910 lt!343361) resIntermediateIndex!5) (= (select (arr!20278 a!3186) (index!33910 lt!343361)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101605 (= lt!343361 e!429359)))

(declare-fun c!85059 () Bool)

(assert (=> d!101605 (= c!85059 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101605 (= lt!343362 (select (arr!20278 a!3186) lt!343320))))

(assert (=> d!101605 (validMask!0 mask!3328)))

(assert (=> d!101605 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343320 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343361)))

(declare-fun b!771225 () Bool)

(declare-fun c!85058 () Bool)

(assert (=> b!771225 (= c!85058 (= lt!343362 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771225 (= e!429361 e!429360)))

(assert (= (and d!101605 c!85059) b!771224))

(assert (= (and d!101605 (not c!85059)) b!771227))

(assert (= (and b!771227 c!85057) b!771223))

(assert (= (and b!771227 (not c!85057)) b!771225))

(assert (= (and b!771225 c!85058) b!771228))

(assert (= (and b!771225 (not c!85058)) b!771226))

(declare-fun m!716487 () Bool)

(assert (=> b!771226 m!716487))

(assert (=> b!771226 m!716487))

(assert (=> b!771226 m!716379))

(declare-fun m!716489 () Bool)

(assert (=> b!771226 m!716489))

(declare-fun m!716491 () Bool)

(assert (=> d!101605 m!716491))

(declare-fun m!716493 () Bool)

(assert (=> d!101605 m!716493))

(declare-fun m!716495 () Bool)

(assert (=> d!101605 m!716495))

(assert (=> d!101605 m!716375))

(assert (=> b!771129 d!101605))

(declare-fun d!101607 () Bool)

(declare-fun e!429382 () Bool)

(assert (=> d!101607 e!429382))

(declare-fun c!85069 () Bool)

(declare-fun lt!343370 () SeekEntryResult!7885)

(assert (=> d!101607 (= c!85069 (and ((_ is Intermediate!7885) lt!343370) (undefined!8697 lt!343370)))))

(declare-fun e!429384 () SeekEntryResult!7885)

(assert (=> d!101607 (= lt!343370 e!429384)))

(declare-fun c!85070 () Bool)

(assert (=> d!101607 (= c!85070 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343371 () (_ BitVec 64))

(assert (=> d!101607 (= lt!343371 (select (arr!20278 lt!343321) index!1321))))

(assert (=> d!101607 (validMask!0 mask!3328)))

(assert (=> d!101607 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343313 lt!343321 mask!3328) lt!343370)))

(declare-fun b!771257 () Bool)

(assert (=> b!771257 (and (bvsge (index!33909 lt!343370) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343370) (size!20699 lt!343321)))))

(declare-fun res!521913 () Bool)

(assert (=> b!771257 (= res!521913 (= (select (arr!20278 lt!343321) (index!33909 lt!343370)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429383 () Bool)

(assert (=> b!771257 (=> res!521913 e!429383)))

(declare-fun b!771258 () Bool)

(assert (=> b!771258 (and (bvsge (index!33909 lt!343370) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343370) (size!20699 lt!343321)))))

(assert (=> b!771258 (= e!429383 (= (select (arr!20278 lt!343321) (index!33909 lt!343370)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771259 () Bool)

(declare-fun e!429381 () SeekEntryResult!7885)

(assert (=> b!771259 (= e!429381 (Intermediate!7885 false index!1321 x!1131))))

(declare-fun b!771260 () Bool)

(assert (=> b!771260 (= e!429382 (bvsge (x!64857 lt!343370) #b01111111111111111111111111111110))))

(declare-fun b!771261 () Bool)

(assert (=> b!771261 (= e!429381 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!343313 lt!343321 mask!3328))))

(declare-fun b!771262 () Bool)

(assert (=> b!771262 (= e!429384 (Intermediate!7885 true index!1321 x!1131))))

(declare-fun b!771263 () Bool)

(declare-fun e!429380 () Bool)

(assert (=> b!771263 (= e!429382 e!429380)))

(declare-fun res!521914 () Bool)

(assert (=> b!771263 (= res!521914 (and ((_ is Intermediate!7885) lt!343370) (not (undefined!8697 lt!343370)) (bvslt (x!64857 lt!343370) #b01111111111111111111111111111110) (bvsge (x!64857 lt!343370) #b00000000000000000000000000000000) (bvsge (x!64857 lt!343370) x!1131)))))

(assert (=> b!771263 (=> (not res!521914) (not e!429380))))

(declare-fun b!771264 () Bool)

(assert (=> b!771264 (= e!429384 e!429381)))

(declare-fun c!85068 () Bool)

(assert (=> b!771264 (= c!85068 (or (= lt!343371 lt!343313) (= (bvadd lt!343371 lt!343371) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771265 () Bool)

(assert (=> b!771265 (and (bvsge (index!33909 lt!343370) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343370) (size!20699 lt!343321)))))

(declare-fun res!521912 () Bool)

(assert (=> b!771265 (= res!521912 (= (select (arr!20278 lt!343321) (index!33909 lt!343370)) lt!343313))))

(assert (=> b!771265 (=> res!521912 e!429383)))

(assert (=> b!771265 (= e!429380 e!429383)))

(assert (= (and d!101607 c!85070) b!771262))

(assert (= (and d!101607 (not c!85070)) b!771264))

(assert (= (and b!771264 c!85068) b!771259))

(assert (= (and b!771264 (not c!85068)) b!771261))

(assert (= (and d!101607 c!85069) b!771260))

(assert (= (and d!101607 (not c!85069)) b!771263))

(assert (= (and b!771263 res!521914) b!771265))

(assert (= (and b!771265 (not res!521912)) b!771257))

(assert (= (and b!771257 (not res!521913)) b!771258))

(declare-fun m!716499 () Bool)

(assert (=> b!771265 m!716499))

(assert (=> b!771257 m!716499))

(assert (=> b!771261 m!716409))

(assert (=> b!771261 m!716409))

(declare-fun m!716501 () Bool)

(assert (=> b!771261 m!716501))

(assert (=> b!771258 m!716499))

(declare-fun m!716503 () Bool)

(assert (=> d!101607 m!716503))

(assert (=> d!101607 m!716375))

(assert (=> b!771140 d!101607))

(declare-fun d!101615 () Bool)

(declare-fun e!429387 () Bool)

(assert (=> d!101615 e!429387))

(declare-fun c!85072 () Bool)

(declare-fun lt!343372 () SeekEntryResult!7885)

(assert (=> d!101615 (= c!85072 (and ((_ is Intermediate!7885) lt!343372) (undefined!8697 lt!343372)))))

(declare-fun e!429389 () SeekEntryResult!7885)

(assert (=> d!101615 (= lt!343372 e!429389)))

(declare-fun c!85073 () Bool)

(assert (=> d!101615 (= c!85073 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343373 () (_ BitVec 64))

(assert (=> d!101615 (= lt!343373 (select (arr!20278 lt!343321) (toIndex!0 lt!343313 mask!3328)))))

(assert (=> d!101615 (validMask!0 mask!3328)))

(assert (=> d!101615 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343313 mask!3328) lt!343313 lt!343321 mask!3328) lt!343372)))

(declare-fun b!771266 () Bool)

(assert (=> b!771266 (and (bvsge (index!33909 lt!343372) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343372) (size!20699 lt!343321)))))

(declare-fun res!521916 () Bool)

(assert (=> b!771266 (= res!521916 (= (select (arr!20278 lt!343321) (index!33909 lt!343372)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429388 () Bool)

(assert (=> b!771266 (=> res!521916 e!429388)))

(declare-fun b!771267 () Bool)

(assert (=> b!771267 (and (bvsge (index!33909 lt!343372) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343372) (size!20699 lt!343321)))))

(assert (=> b!771267 (= e!429388 (= (select (arr!20278 lt!343321) (index!33909 lt!343372)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771268 () Bool)

(declare-fun e!429386 () SeekEntryResult!7885)

(assert (=> b!771268 (= e!429386 (Intermediate!7885 false (toIndex!0 lt!343313 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771269 () Bool)

(assert (=> b!771269 (= e!429387 (bvsge (x!64857 lt!343372) #b01111111111111111111111111111110))))

(declare-fun b!771270 () Bool)

(assert (=> b!771270 (= e!429386 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!343313 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!343313 lt!343321 mask!3328))))

(declare-fun b!771271 () Bool)

(assert (=> b!771271 (= e!429389 (Intermediate!7885 true (toIndex!0 lt!343313 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771272 () Bool)

(declare-fun e!429385 () Bool)

(assert (=> b!771272 (= e!429387 e!429385)))

(declare-fun res!521917 () Bool)

(assert (=> b!771272 (= res!521917 (and ((_ is Intermediate!7885) lt!343372) (not (undefined!8697 lt!343372)) (bvslt (x!64857 lt!343372) #b01111111111111111111111111111110) (bvsge (x!64857 lt!343372) #b00000000000000000000000000000000) (bvsge (x!64857 lt!343372) #b00000000000000000000000000000000)))))

(assert (=> b!771272 (=> (not res!521917) (not e!429385))))

(declare-fun b!771273 () Bool)

(assert (=> b!771273 (= e!429389 e!429386)))

(declare-fun c!85071 () Bool)

(assert (=> b!771273 (= c!85071 (or (= lt!343373 lt!343313) (= (bvadd lt!343373 lt!343373) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771274 () Bool)

(assert (=> b!771274 (and (bvsge (index!33909 lt!343372) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343372) (size!20699 lt!343321)))))

(declare-fun res!521915 () Bool)

(assert (=> b!771274 (= res!521915 (= (select (arr!20278 lt!343321) (index!33909 lt!343372)) lt!343313))))

(assert (=> b!771274 (=> res!521915 e!429388)))

(assert (=> b!771274 (= e!429385 e!429388)))

(assert (= (and d!101615 c!85073) b!771271))

(assert (= (and d!101615 (not c!85073)) b!771273))

(assert (= (and b!771273 c!85071) b!771268))

(assert (= (and b!771273 (not c!85071)) b!771270))

(assert (= (and d!101615 c!85072) b!771269))

(assert (= (and d!101615 (not c!85072)) b!771272))

(assert (= (and b!771272 res!521917) b!771274))

(assert (= (and b!771274 (not res!521915)) b!771266))

(assert (= (and b!771266 (not res!521916)) b!771267))

(declare-fun m!716505 () Bool)

(assert (=> b!771274 m!716505))

(assert (=> b!771266 m!716505))

(assert (=> b!771270 m!716419))

(declare-fun m!716507 () Bool)

(assert (=> b!771270 m!716507))

(assert (=> b!771270 m!716507))

(declare-fun m!716509 () Bool)

(assert (=> b!771270 m!716509))

(assert (=> b!771267 m!716505))

(assert (=> d!101615 m!716419))

(declare-fun m!716511 () Bool)

(assert (=> d!101615 m!716511))

(assert (=> d!101615 m!716375))

(assert (=> b!771140 d!101615))

(declare-fun d!101617 () Bool)

(declare-fun lt!343379 () (_ BitVec 32))

(declare-fun lt!343378 () (_ BitVec 32))

(assert (=> d!101617 (= lt!343379 (bvmul (bvxor lt!343378 (bvlshr lt!343378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101617 (= lt!343378 ((_ extract 31 0) (bvand (bvxor lt!343313 (bvlshr lt!343313 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101617 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!521921 (let ((h!15430 ((_ extract 31 0) (bvand (bvxor lt!343313 (bvlshr lt!343313 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64862 (bvmul (bvxor h!15430 (bvlshr h!15430 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64862 (bvlshr x!64862 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!521921 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!521921 #b00000000000000000000000000000000))))))

(assert (=> d!101617 (= (toIndex!0 lt!343313 mask!3328) (bvand (bvxor lt!343379 (bvlshr lt!343379 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!771140 d!101617))

(declare-fun b!771307 () Bool)

(declare-fun e!429410 () Bool)

(declare-fun call!35115 () Bool)

(assert (=> b!771307 (= e!429410 call!35115)))

(declare-fun bm!35112 () Bool)

(assert (=> bm!35112 (= call!35115 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!771308 () Bool)

(declare-fun e!429411 () Bool)

(assert (=> b!771308 (= e!429410 e!429411)))

(declare-fun lt!343394 () (_ BitVec 64))

(assert (=> b!771308 (= lt!343394 (select (arr!20278 a!3186) j!159))))

(declare-fun lt!343393 () Unit!26576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42363 (_ BitVec 64) (_ BitVec 32)) Unit!26576)

(assert (=> b!771308 (= lt!343393 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343394 j!159))))

(assert (=> b!771308 (arrayContainsKey!0 a!3186 lt!343394 #b00000000000000000000000000000000)))

(declare-fun lt!343392 () Unit!26576)

(assert (=> b!771308 (= lt!343392 lt!343393)))

(declare-fun res!521927 () Bool)

(assert (=> b!771308 (= res!521927 (= (seekEntryOrOpen!0 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) (Found!7885 j!159)))))

(assert (=> b!771308 (=> (not res!521927) (not e!429411))))

(declare-fun b!771309 () Bool)

(assert (=> b!771309 (= e!429411 call!35115)))

(declare-fun d!101621 () Bool)

(declare-fun res!521926 () Bool)

(declare-fun e!429409 () Bool)

(assert (=> d!101621 (=> res!521926 e!429409)))

(assert (=> d!101621 (= res!521926 (bvsge j!159 (size!20699 a!3186)))))

(assert (=> d!101621 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!429409)))

(declare-fun b!771306 () Bool)

(assert (=> b!771306 (= e!429409 e!429410)))

(declare-fun c!85086 () Bool)

(assert (=> b!771306 (= c!85086 (validKeyInArray!0 (select (arr!20278 a!3186) j!159)))))

(assert (= (and d!101621 (not res!521926)) b!771306))

(assert (= (and b!771306 c!85086) b!771308))

(assert (= (and b!771306 (not c!85086)) b!771307))

(assert (= (and b!771308 res!521927) b!771309))

(assert (= (or b!771309 b!771307) bm!35112))

(declare-fun m!716529 () Bool)

(assert (=> bm!35112 m!716529))

(assert (=> b!771308 m!716379))

(declare-fun m!716531 () Bool)

(assert (=> b!771308 m!716531))

(declare-fun m!716533 () Bool)

(assert (=> b!771308 m!716533))

(assert (=> b!771308 m!716379))

(assert (=> b!771308 m!716381))

(assert (=> b!771306 m!716379))

(assert (=> b!771306 m!716379))

(assert (=> b!771306 m!716399))

(assert (=> b!771138 d!101621))

(declare-fun d!101625 () Bool)

(assert (=> d!101625 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!343401 () Unit!26576)

(declare-fun choose!38 (array!42363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26576)

(assert (=> d!101625 (= lt!343401 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101625 (validMask!0 mask!3328)))

(assert (=> d!101625 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!343401)))

(declare-fun bs!21581 () Bool)

(assert (= bs!21581 d!101625))

(assert (=> bs!21581 m!716387))

(declare-fun m!716535 () Bool)

(assert (=> bs!21581 m!716535))

(assert (=> bs!21581 m!716375))

(assert (=> b!771138 d!101625))

(assert (=> b!771128 d!101603))

(declare-fun b!771397 () Bool)

(declare-fun e!429462 () SeekEntryResult!7885)

(declare-fun e!429463 () SeekEntryResult!7885)

(assert (=> b!771397 (= e!429462 e!429463)))

(declare-fun lt!343437 () (_ BitVec 64))

(declare-fun lt!343435 () SeekEntryResult!7885)

(assert (=> b!771397 (= lt!343437 (select (arr!20278 a!3186) (index!33909 lt!343435)))))

(declare-fun c!85119 () Bool)

(assert (=> b!771397 (= c!85119 (= lt!343437 (select (arr!20278 a!3186) j!159)))))

(declare-fun b!771398 () Bool)

(assert (=> b!771398 (= e!429462 Undefined!7885)))

(declare-fun b!771399 () Bool)

(declare-fun e!429464 () SeekEntryResult!7885)

(assert (=> b!771399 (= e!429464 (MissingZero!7885 (index!33909 lt!343435)))))

(declare-fun d!101627 () Bool)

(declare-fun lt!343436 () SeekEntryResult!7885)

(assert (=> d!101627 (and (or ((_ is Undefined!7885) lt!343436) (not ((_ is Found!7885) lt!343436)) (and (bvsge (index!33908 lt!343436) #b00000000000000000000000000000000) (bvslt (index!33908 lt!343436) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343436) ((_ is Found!7885) lt!343436) (not ((_ is MissingZero!7885) lt!343436)) (and (bvsge (index!33907 lt!343436) #b00000000000000000000000000000000) (bvslt (index!33907 lt!343436) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343436) ((_ is Found!7885) lt!343436) ((_ is MissingZero!7885) lt!343436) (not ((_ is MissingVacant!7885) lt!343436)) (and (bvsge (index!33910 lt!343436) #b00000000000000000000000000000000) (bvslt (index!33910 lt!343436) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343436) (ite ((_ is Found!7885) lt!343436) (= (select (arr!20278 a!3186) (index!33908 lt!343436)) (select (arr!20278 a!3186) j!159)) (ite ((_ is MissingZero!7885) lt!343436) (= (select (arr!20278 a!3186) (index!33907 lt!343436)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7885) lt!343436) (= (select (arr!20278 a!3186) (index!33910 lt!343436)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101627 (= lt!343436 e!429462)))

(declare-fun c!85117 () Bool)

(assert (=> d!101627 (= c!85117 (and ((_ is Intermediate!7885) lt!343435) (undefined!8697 lt!343435)))))

(assert (=> d!101627 (= lt!343435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101627 (validMask!0 mask!3328)))

(assert (=> d!101627 (= (seekEntryOrOpen!0 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343436)))

(declare-fun b!771400 () Bool)

(assert (=> b!771400 (= e!429464 (seekKeyOrZeroReturnVacant!0 (x!64857 lt!343435) (index!33909 lt!343435) (index!33909 lt!343435) (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771401 () Bool)

(assert (=> b!771401 (= e!429463 (Found!7885 (index!33909 lt!343435)))))

(declare-fun b!771402 () Bool)

(declare-fun c!85118 () Bool)

(assert (=> b!771402 (= c!85118 (= lt!343437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771402 (= e!429463 e!429464)))

(assert (= (and d!101627 c!85117) b!771398))

(assert (= (and d!101627 (not c!85117)) b!771397))

(assert (= (and b!771397 c!85119) b!771401))

(assert (= (and b!771397 (not c!85119)) b!771402))

(assert (= (and b!771402 c!85118) b!771399))

(assert (= (and b!771402 (not c!85118)) b!771400))

(declare-fun m!716567 () Bool)

(assert (=> b!771397 m!716567))

(declare-fun m!716569 () Bool)

(assert (=> d!101627 m!716569))

(declare-fun m!716571 () Bool)

(assert (=> d!101627 m!716571))

(declare-fun m!716573 () Bool)

(assert (=> d!101627 m!716573))

(assert (=> d!101627 m!716375))

(assert (=> d!101627 m!716391))

(assert (=> d!101627 m!716379))

(assert (=> d!101627 m!716393))

(assert (=> d!101627 m!716379))

(assert (=> d!101627 m!716391))

(assert (=> b!771400 m!716379))

(declare-fun m!716575 () Bool)

(assert (=> b!771400 m!716575))

(assert (=> b!771139 d!101627))

(declare-fun d!101645 () Bool)

(assert (=> d!101645 (= (validKeyInArray!0 (select (arr!20278 a!3186) j!159)) (and (not (= (select (arr!20278 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20278 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!771142 d!101645))

(declare-fun d!101647 () Bool)

(declare-fun lt!343442 () (_ BitVec 32))

(assert (=> d!101647 (and (bvsge lt!343442 #b00000000000000000000000000000000) (bvslt lt!343442 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101647 (= lt!343442 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101647 (validMask!0 mask!3328)))

(assert (=> d!101647 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!343442)))

(declare-fun bs!21582 () Bool)

(assert (= bs!21582 d!101647))

(declare-fun m!716579 () Bool)

(assert (=> bs!21582 m!716579))

(assert (=> bs!21582 m!716375))

(assert (=> b!771143 d!101647))

(declare-fun d!101649 () Bool)

(declare-fun e!429472 () Bool)

(assert (=> d!101649 e!429472))

(declare-fun c!85124 () Bool)

(declare-fun lt!343443 () SeekEntryResult!7885)

(assert (=> d!101649 (= c!85124 (and ((_ is Intermediate!7885) lt!343443) (undefined!8697 lt!343443)))))

(declare-fun e!429474 () SeekEntryResult!7885)

(assert (=> d!101649 (= lt!343443 e!429474)))

(declare-fun c!85125 () Bool)

(assert (=> d!101649 (= c!85125 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343444 () (_ BitVec 64))

(assert (=> d!101649 (= lt!343444 (select (arr!20278 a!3186) index!1321))))

(assert (=> d!101649 (validMask!0 mask!3328)))

(assert (=> d!101649 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343443)))

(declare-fun b!771412 () Bool)

(assert (=> b!771412 (and (bvsge (index!33909 lt!343443) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343443) (size!20699 a!3186)))))

(declare-fun res!521960 () Bool)

(assert (=> b!771412 (= res!521960 (= (select (arr!20278 a!3186) (index!33909 lt!343443)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429473 () Bool)

(assert (=> b!771412 (=> res!521960 e!429473)))

(declare-fun b!771413 () Bool)

(assert (=> b!771413 (and (bvsge (index!33909 lt!343443) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343443) (size!20699 a!3186)))))

(assert (=> b!771413 (= e!429473 (= (select (arr!20278 a!3186) (index!33909 lt!343443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771414 () Bool)

(declare-fun e!429471 () SeekEntryResult!7885)

(assert (=> b!771414 (= e!429471 (Intermediate!7885 false index!1321 x!1131))))

(declare-fun b!771415 () Bool)

(assert (=> b!771415 (= e!429472 (bvsge (x!64857 lt!343443) #b01111111111111111111111111111110))))

(declare-fun b!771416 () Bool)

(assert (=> b!771416 (= e!429471 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771417 () Bool)

(assert (=> b!771417 (= e!429474 (Intermediate!7885 true index!1321 x!1131))))

(declare-fun b!771418 () Bool)

(declare-fun e!429470 () Bool)

(assert (=> b!771418 (= e!429472 e!429470)))

(declare-fun res!521961 () Bool)

(assert (=> b!771418 (= res!521961 (and ((_ is Intermediate!7885) lt!343443) (not (undefined!8697 lt!343443)) (bvslt (x!64857 lt!343443) #b01111111111111111111111111111110) (bvsge (x!64857 lt!343443) #b00000000000000000000000000000000) (bvsge (x!64857 lt!343443) x!1131)))))

(assert (=> b!771418 (=> (not res!521961) (not e!429470))))

(declare-fun b!771419 () Bool)

(assert (=> b!771419 (= e!429474 e!429471)))

(declare-fun c!85123 () Bool)

(assert (=> b!771419 (= c!85123 (or (= lt!343444 (select (arr!20278 a!3186) j!159)) (= (bvadd lt!343444 lt!343444) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771420 () Bool)

(assert (=> b!771420 (and (bvsge (index!33909 lt!343443) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343443) (size!20699 a!3186)))))

(declare-fun res!521959 () Bool)

(assert (=> b!771420 (= res!521959 (= (select (arr!20278 a!3186) (index!33909 lt!343443)) (select (arr!20278 a!3186) j!159)))))

(assert (=> b!771420 (=> res!521959 e!429473)))

(assert (=> b!771420 (= e!429470 e!429473)))

(assert (= (and d!101649 c!85125) b!771417))

(assert (= (and d!101649 (not c!85125)) b!771419))

(assert (= (and b!771419 c!85123) b!771414))

(assert (= (and b!771419 (not c!85123)) b!771416))

(assert (= (and d!101649 c!85124) b!771415))

(assert (= (and d!101649 (not c!85124)) b!771418))

(assert (= (and b!771418 res!521961) b!771420))

(assert (= (and b!771420 (not res!521959)) b!771412))

(assert (= (and b!771412 (not res!521960)) b!771413))

(declare-fun m!716587 () Bool)

(assert (=> b!771420 m!716587))

(assert (=> b!771412 m!716587))

(assert (=> b!771416 m!716409))

(assert (=> b!771416 m!716409))

(assert (=> b!771416 m!716379))

(declare-fun m!716589 () Bool)

(assert (=> b!771416 m!716589))

(assert (=> b!771413 m!716587))

(assert (=> d!101649 m!716485))

(assert (=> d!101649 m!716375))

(assert (=> b!771141 d!101649))

(declare-fun b!771421 () Bool)

(declare-fun e!429475 () SeekEntryResult!7885)

(declare-fun e!429476 () SeekEntryResult!7885)

(assert (=> b!771421 (= e!429475 e!429476)))

(declare-fun lt!343447 () (_ BitVec 64))

(declare-fun lt!343445 () SeekEntryResult!7885)

(assert (=> b!771421 (= lt!343447 (select (arr!20278 a!3186) (index!33909 lt!343445)))))

(declare-fun c!85128 () Bool)

(assert (=> b!771421 (= c!85128 (= lt!343447 k0!2102))))

(declare-fun b!771422 () Bool)

(assert (=> b!771422 (= e!429475 Undefined!7885)))

(declare-fun b!771423 () Bool)

(declare-fun e!429477 () SeekEntryResult!7885)

(assert (=> b!771423 (= e!429477 (MissingZero!7885 (index!33909 lt!343445)))))

(declare-fun d!101653 () Bool)

(declare-fun lt!343446 () SeekEntryResult!7885)

(assert (=> d!101653 (and (or ((_ is Undefined!7885) lt!343446) (not ((_ is Found!7885) lt!343446)) (and (bvsge (index!33908 lt!343446) #b00000000000000000000000000000000) (bvslt (index!33908 lt!343446) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343446) ((_ is Found!7885) lt!343446) (not ((_ is MissingZero!7885) lt!343446)) (and (bvsge (index!33907 lt!343446) #b00000000000000000000000000000000) (bvslt (index!33907 lt!343446) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343446) ((_ is Found!7885) lt!343446) ((_ is MissingZero!7885) lt!343446) (not ((_ is MissingVacant!7885) lt!343446)) (and (bvsge (index!33910 lt!343446) #b00000000000000000000000000000000) (bvslt (index!33910 lt!343446) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343446) (ite ((_ is Found!7885) lt!343446) (= (select (arr!20278 a!3186) (index!33908 lt!343446)) k0!2102) (ite ((_ is MissingZero!7885) lt!343446) (= (select (arr!20278 a!3186) (index!33907 lt!343446)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7885) lt!343446) (= (select (arr!20278 a!3186) (index!33910 lt!343446)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101653 (= lt!343446 e!429475)))

(declare-fun c!85126 () Bool)

(assert (=> d!101653 (= c!85126 (and ((_ is Intermediate!7885) lt!343445) (undefined!8697 lt!343445)))))

(assert (=> d!101653 (= lt!343445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!101653 (validMask!0 mask!3328)))

(assert (=> d!101653 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!343446)))

(declare-fun b!771424 () Bool)

(assert (=> b!771424 (= e!429477 (seekKeyOrZeroReturnVacant!0 (x!64857 lt!343445) (index!33909 lt!343445) (index!33909 lt!343445) k0!2102 a!3186 mask!3328))))

(declare-fun b!771425 () Bool)

(assert (=> b!771425 (= e!429476 (Found!7885 (index!33909 lt!343445)))))

(declare-fun b!771426 () Bool)

(declare-fun c!85127 () Bool)

(assert (=> b!771426 (= c!85127 (= lt!343447 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771426 (= e!429476 e!429477)))

(assert (= (and d!101653 c!85126) b!771422))

(assert (= (and d!101653 (not c!85126)) b!771421))

(assert (= (and b!771421 c!85128) b!771425))

(assert (= (and b!771421 (not c!85128)) b!771426))

(assert (= (and b!771426 c!85127) b!771423))

(assert (= (and b!771426 (not c!85127)) b!771424))

(declare-fun m!716591 () Bool)

(assert (=> b!771421 m!716591))

(declare-fun m!716593 () Bool)

(assert (=> d!101653 m!716593))

(declare-fun m!716595 () Bool)

(assert (=> d!101653 m!716595))

(declare-fun m!716597 () Bool)

(assert (=> d!101653 m!716597))

(assert (=> d!101653 m!716375))

(declare-fun m!716599 () Bool)

(assert (=> d!101653 m!716599))

(declare-fun m!716601 () Bool)

(assert (=> d!101653 m!716601))

(assert (=> d!101653 m!716599))

(declare-fun m!716603 () Bool)

(assert (=> b!771424 m!716603))

(assert (=> b!771131 d!101653))

(declare-fun d!101655 () Bool)

(declare-fun e!429480 () Bool)

(assert (=> d!101655 e!429480))

(declare-fun c!85130 () Bool)

(declare-fun lt!343448 () SeekEntryResult!7885)

(assert (=> d!101655 (= c!85130 (and ((_ is Intermediate!7885) lt!343448) (undefined!8697 lt!343448)))))

(declare-fun e!429482 () SeekEntryResult!7885)

(assert (=> d!101655 (= lt!343448 e!429482)))

(declare-fun c!85131 () Bool)

(assert (=> d!101655 (= c!85131 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343449 () (_ BitVec 64))

(assert (=> d!101655 (= lt!343449 (select (arr!20278 a!3186) lt!343320))))

(assert (=> d!101655 (validMask!0 mask!3328)))

(assert (=> d!101655 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343320 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343448)))

(declare-fun b!771427 () Bool)

(assert (=> b!771427 (and (bvsge (index!33909 lt!343448) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343448) (size!20699 a!3186)))))

(declare-fun res!521964 () Bool)

(assert (=> b!771427 (= res!521964 (= (select (arr!20278 a!3186) (index!33909 lt!343448)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429481 () Bool)

(assert (=> b!771427 (=> res!521964 e!429481)))

(declare-fun b!771428 () Bool)

(assert (=> b!771428 (and (bvsge (index!33909 lt!343448) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343448) (size!20699 a!3186)))))

(assert (=> b!771428 (= e!429481 (= (select (arr!20278 a!3186) (index!33909 lt!343448)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771429 () Bool)

(declare-fun e!429479 () SeekEntryResult!7885)

(assert (=> b!771429 (= e!429479 (Intermediate!7885 false lt!343320 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!771430 () Bool)

(assert (=> b!771430 (= e!429480 (bvsge (x!64857 lt!343448) #b01111111111111111111111111111110))))

(declare-fun b!771431 () Bool)

(assert (=> b!771431 (= e!429479 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343320 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771432 () Bool)

(assert (=> b!771432 (= e!429482 (Intermediate!7885 true lt!343320 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!771433 () Bool)

(declare-fun e!429478 () Bool)

(assert (=> b!771433 (= e!429480 e!429478)))

(declare-fun res!521965 () Bool)

(assert (=> b!771433 (= res!521965 (and ((_ is Intermediate!7885) lt!343448) (not (undefined!8697 lt!343448)) (bvslt (x!64857 lt!343448) #b01111111111111111111111111111110) (bvsge (x!64857 lt!343448) #b00000000000000000000000000000000) (bvsge (x!64857 lt!343448) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!771433 (=> (not res!521965) (not e!429478))))

(declare-fun b!771434 () Bool)

(assert (=> b!771434 (= e!429482 e!429479)))

(declare-fun c!85129 () Bool)

(assert (=> b!771434 (= c!85129 (or (= lt!343449 (select (arr!20278 a!3186) j!159)) (= (bvadd lt!343449 lt!343449) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771435 () Bool)

(assert (=> b!771435 (and (bvsge (index!33909 lt!343448) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343448) (size!20699 a!3186)))))

(declare-fun res!521963 () Bool)

(assert (=> b!771435 (= res!521963 (= (select (arr!20278 a!3186) (index!33909 lt!343448)) (select (arr!20278 a!3186) j!159)))))

(assert (=> b!771435 (=> res!521963 e!429481)))

(assert (=> b!771435 (= e!429478 e!429481)))

(assert (= (and d!101655 c!85131) b!771432))

(assert (= (and d!101655 (not c!85131)) b!771434))

(assert (= (and b!771434 c!85129) b!771429))

(assert (= (and b!771434 (not c!85129)) b!771431))

(assert (= (and d!101655 c!85130) b!771430))

(assert (= (and d!101655 (not c!85130)) b!771433))

(assert (= (and b!771433 res!521965) b!771435))

(assert (= (and b!771435 (not res!521963)) b!771427))

(assert (= (and b!771427 (not res!521964)) b!771428))

(declare-fun m!716605 () Bool)

(assert (=> b!771435 m!716605))

(assert (=> b!771427 m!716605))

(assert (=> b!771431 m!716487))

(assert (=> b!771431 m!716487))

(assert (=> b!771431 m!716379))

(declare-fun m!716607 () Bool)

(assert (=> b!771431 m!716607))

(assert (=> b!771428 m!716605))

(assert (=> d!101655 m!716495))

(assert (=> d!101655 m!716375))

(assert (=> b!771135 d!101655))

(declare-fun d!101657 () Bool)

(declare-fun e!429485 () Bool)

(assert (=> d!101657 e!429485))

(declare-fun c!85133 () Bool)

(declare-fun lt!343450 () SeekEntryResult!7885)

(assert (=> d!101657 (= c!85133 (and ((_ is Intermediate!7885) lt!343450) (undefined!8697 lt!343450)))))

(declare-fun e!429487 () SeekEntryResult!7885)

(assert (=> d!101657 (= lt!343450 e!429487)))

(declare-fun c!85134 () Bool)

(assert (=> d!101657 (= c!85134 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343451 () (_ BitVec 64))

(assert (=> d!101657 (= lt!343451 (select (arr!20278 a!3186) (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328)))))

(assert (=> d!101657 (validMask!0 mask!3328)))

(assert (=> d!101657 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343450)))

(declare-fun b!771436 () Bool)

(assert (=> b!771436 (and (bvsge (index!33909 lt!343450) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343450) (size!20699 a!3186)))))

(declare-fun res!521967 () Bool)

(assert (=> b!771436 (= res!521967 (= (select (arr!20278 a!3186) (index!33909 lt!343450)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429486 () Bool)

(assert (=> b!771436 (=> res!521967 e!429486)))

(declare-fun b!771437 () Bool)

(assert (=> b!771437 (and (bvsge (index!33909 lt!343450) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343450) (size!20699 a!3186)))))

(assert (=> b!771437 (= e!429486 (= (select (arr!20278 a!3186) (index!33909 lt!343450)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429484 () SeekEntryResult!7885)

(declare-fun b!771438 () Bool)

(assert (=> b!771438 (= e!429484 (Intermediate!7885 false (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771439 () Bool)

(assert (=> b!771439 (= e!429485 (bvsge (x!64857 lt!343450) #b01111111111111111111111111111110))))

(declare-fun b!771440 () Bool)

(assert (=> b!771440 (= e!429484 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771441 () Bool)

(assert (=> b!771441 (= e!429487 (Intermediate!7885 true (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771442 () Bool)

(declare-fun e!429483 () Bool)

(assert (=> b!771442 (= e!429485 e!429483)))

(declare-fun res!521968 () Bool)

(assert (=> b!771442 (= res!521968 (and ((_ is Intermediate!7885) lt!343450) (not (undefined!8697 lt!343450)) (bvslt (x!64857 lt!343450) #b01111111111111111111111111111110) (bvsge (x!64857 lt!343450) #b00000000000000000000000000000000) (bvsge (x!64857 lt!343450) #b00000000000000000000000000000000)))))

(assert (=> b!771442 (=> (not res!521968) (not e!429483))))

(declare-fun b!771443 () Bool)

(assert (=> b!771443 (= e!429487 e!429484)))

(declare-fun c!85132 () Bool)

(assert (=> b!771443 (= c!85132 (or (= lt!343451 (select (arr!20278 a!3186) j!159)) (= (bvadd lt!343451 lt!343451) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771444 () Bool)

(assert (=> b!771444 (and (bvsge (index!33909 lt!343450) #b00000000000000000000000000000000) (bvslt (index!33909 lt!343450) (size!20699 a!3186)))))

(declare-fun res!521966 () Bool)

(assert (=> b!771444 (= res!521966 (= (select (arr!20278 a!3186) (index!33909 lt!343450)) (select (arr!20278 a!3186) j!159)))))

(assert (=> b!771444 (=> res!521966 e!429486)))

(assert (=> b!771444 (= e!429483 e!429486)))

(assert (= (and d!101657 c!85134) b!771441))

(assert (= (and d!101657 (not c!85134)) b!771443))

(assert (= (and b!771443 c!85132) b!771438))

(assert (= (and b!771443 (not c!85132)) b!771440))

(assert (= (and d!101657 c!85133) b!771439))

(assert (= (and d!101657 (not c!85133)) b!771442))

(assert (= (and b!771442 res!521968) b!771444))

(assert (= (and b!771444 (not res!521966)) b!771436))

(assert (= (and b!771436 (not res!521967)) b!771437))

(declare-fun m!716609 () Bool)

(assert (=> b!771444 m!716609))

(assert (=> b!771436 m!716609))

(assert (=> b!771440 m!716391))

(declare-fun m!716611 () Bool)

(assert (=> b!771440 m!716611))

(assert (=> b!771440 m!716611))

(assert (=> b!771440 m!716379))

(declare-fun m!716613 () Bool)

(assert (=> b!771440 m!716613))

(assert (=> b!771437 m!716609))

(assert (=> d!101657 m!716391))

(declare-fun m!716615 () Bool)

(assert (=> d!101657 m!716615))

(assert (=> d!101657 m!716375))

(assert (=> b!771133 d!101657))

(declare-fun d!101659 () Bool)

(declare-fun lt!343457 () (_ BitVec 32))

(declare-fun lt!343456 () (_ BitVec 32))

(assert (=> d!101659 (= lt!343457 (bvmul (bvxor lt!343456 (bvlshr lt!343456 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101659 (= lt!343456 ((_ extract 31 0) (bvand (bvxor (select (arr!20278 a!3186) j!159) (bvlshr (select (arr!20278 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101659 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!521921 (let ((h!15430 ((_ extract 31 0) (bvand (bvxor (select (arr!20278 a!3186) j!159) (bvlshr (select (arr!20278 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64862 (bvmul (bvxor h!15430 (bvlshr h!15430 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64862 (bvlshr x!64862 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!521921 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!521921 #b00000000000000000000000000000000))))))

(assert (=> d!101659 (= (toIndex!0 (select (arr!20278 a!3186) j!159) mask!3328) (bvand (bvxor lt!343457 (bvlshr lt!343457 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!771133 d!101659))

(declare-fun b!771445 () Bool)

(declare-fun e!429490 () SeekEntryResult!7885)

(assert (=> b!771445 (= e!429490 (Found!7885 resIntermediateIndex!5))))

(declare-fun b!771446 () Bool)

(declare-fun e!429488 () SeekEntryResult!7885)

(assert (=> b!771446 (= e!429488 Undefined!7885)))

(declare-fun e!429489 () SeekEntryResult!7885)

(declare-fun b!771448 () Bool)

(assert (=> b!771448 (= e!429489 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771449 () Bool)

(assert (=> b!771449 (= e!429488 e!429490)))

(declare-fun c!85135 () Bool)

(declare-fun lt!343461 () (_ BitVec 64))

(assert (=> b!771449 (= c!85135 (= lt!343461 (select (arr!20278 a!3186) j!159)))))

(declare-fun b!771450 () Bool)

(assert (=> b!771450 (= e!429489 (MissingVacant!7885 resIntermediateIndex!5))))

(declare-fun d!101661 () Bool)

(declare-fun lt!343460 () SeekEntryResult!7885)

(assert (=> d!101661 (and (or ((_ is Undefined!7885) lt!343460) (not ((_ is Found!7885) lt!343460)) (and (bvsge (index!33908 lt!343460) #b00000000000000000000000000000000) (bvslt (index!33908 lt!343460) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343460) ((_ is Found!7885) lt!343460) (not ((_ is MissingVacant!7885) lt!343460)) (not (= (index!33910 lt!343460) resIntermediateIndex!5)) (and (bvsge (index!33910 lt!343460) #b00000000000000000000000000000000) (bvslt (index!33910 lt!343460) (size!20699 a!3186)))) (or ((_ is Undefined!7885) lt!343460) (ite ((_ is Found!7885) lt!343460) (= (select (arr!20278 a!3186) (index!33908 lt!343460)) (select (arr!20278 a!3186) j!159)) (and ((_ is MissingVacant!7885) lt!343460) (= (index!33910 lt!343460) resIntermediateIndex!5) (= (select (arr!20278 a!3186) (index!33910 lt!343460)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101661 (= lt!343460 e!429488)))

(declare-fun c!85137 () Bool)

(assert (=> d!101661 (= c!85137 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101661 (= lt!343461 (select (arr!20278 a!3186) resIntermediateIndex!5))))

(assert (=> d!101661 (validMask!0 mask!3328)))

(assert (=> d!101661 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20278 a!3186) j!159) a!3186 mask!3328) lt!343460)))

(declare-fun b!771447 () Bool)

(declare-fun c!85136 () Bool)

(assert (=> b!771447 (= c!85136 (= lt!343461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771447 (= e!429490 e!429489)))

(assert (= (and d!101661 c!85137) b!771446))

(assert (= (and d!101661 (not c!85137)) b!771449))

(assert (= (and b!771449 c!85135) b!771445))

(assert (= (and b!771449 (not c!85135)) b!771447))

(assert (= (and b!771447 c!85136) b!771450))

(assert (= (and b!771447 (not c!85136)) b!771448))

(declare-fun m!716617 () Bool)

(assert (=> b!771448 m!716617))

(assert (=> b!771448 m!716617))

(assert (=> b!771448 m!716379))

(declare-fun m!716619 () Bool)

(assert (=> b!771448 m!716619))

(declare-fun m!716621 () Bool)

(assert (=> d!101661 m!716621))

(declare-fun m!716623 () Bool)

(assert (=> d!101661 m!716623))

(assert (=> d!101661 m!716407))

(assert (=> d!101661 m!716375))

(assert (=> b!771126 d!101661))

(declare-fun d!101665 () Bool)

(assert (=> d!101665 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66846 d!101665))

(declare-fun d!101669 () Bool)

(assert (=> d!101669 (= (array_inv!16052 a!3186) (bvsge (size!20699 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66846 d!101669))

(declare-fun b!771494 () Bool)

(declare-fun e!429521 () Bool)

(declare-fun e!429519 () Bool)

(assert (=> b!771494 (= e!429521 e!429519)))

(declare-fun res!521986 () Bool)

(assert (=> b!771494 (=> (not res!521986) (not e!429519))))

(declare-fun e!429522 () Bool)

(assert (=> b!771494 (= res!521986 (not e!429522))))

(declare-fun res!521984 () Bool)

(assert (=> b!771494 (=> (not res!521984) (not e!429522))))

(assert (=> b!771494 (= res!521984 (validKeyInArray!0 (select (arr!20278 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771495 () Bool)

(declare-fun e!429520 () Bool)

(declare-fun call!35121 () Bool)

(assert (=> b!771495 (= e!429520 call!35121)))

(declare-fun d!101673 () Bool)

(declare-fun res!521985 () Bool)

(assert (=> d!101673 (=> res!521985 e!429521)))

(assert (=> d!101673 (= res!521985 (bvsge #b00000000000000000000000000000000 (size!20699 a!3186)))))

(assert (=> d!101673 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14330) e!429521)))

(declare-fun bm!35118 () Bool)

(declare-fun c!85152 () Bool)

(assert (=> bm!35118 (= call!35121 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85152 (Cons!14329 (select (arr!20278 a!3186) #b00000000000000000000000000000000) Nil!14330) Nil!14330)))))

(declare-fun b!771496 () Bool)

(assert (=> b!771496 (= e!429519 e!429520)))

(assert (=> b!771496 (= c!85152 (validKeyInArray!0 (select (arr!20278 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771497 () Bool)

(assert (=> b!771497 (= e!429520 call!35121)))

(declare-fun b!771498 () Bool)

(declare-fun contains!4090 (List!14333 (_ BitVec 64)) Bool)

(assert (=> b!771498 (= e!429522 (contains!4090 Nil!14330 (select (arr!20278 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101673 (not res!521985)) b!771494))

(assert (= (and b!771494 res!521984) b!771498))

(assert (= (and b!771494 res!521986) b!771496))

(assert (= (and b!771496 c!85152) b!771497))

(assert (= (and b!771496 (not c!85152)) b!771495))

(assert (= (or b!771497 b!771495) bm!35118))

(declare-fun m!716645 () Bool)

(assert (=> b!771494 m!716645))

(assert (=> b!771494 m!716645))

(declare-fun m!716647 () Bool)

(assert (=> b!771494 m!716647))

(assert (=> bm!35118 m!716645))

(declare-fun m!716649 () Bool)

(assert (=> bm!35118 m!716649))

(assert (=> b!771496 m!716645))

(assert (=> b!771496 m!716645))

(assert (=> b!771496 m!716647))

(assert (=> b!771498 m!716645))

(assert (=> b!771498 m!716645))

(declare-fun m!716651 () Bool)

(assert (=> b!771498 m!716651))

(assert (=> b!771137 d!101673))

(declare-fun d!101677 () Bool)

(assert (=> d!101677 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!771127 d!101677))

(declare-fun b!771512 () Bool)

(declare-fun e!429530 () Bool)

(declare-fun call!35122 () Bool)

(assert (=> b!771512 (= e!429530 call!35122)))

(declare-fun bm!35119 () Bool)

(assert (=> bm!35119 (= call!35122 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!771513 () Bool)

(declare-fun e!429531 () Bool)

(assert (=> b!771513 (= e!429530 e!429531)))

(declare-fun lt!343481 () (_ BitVec 64))

(assert (=> b!771513 (= lt!343481 (select (arr!20278 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!343480 () Unit!26576)

(assert (=> b!771513 (= lt!343480 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343481 #b00000000000000000000000000000000))))

(assert (=> b!771513 (arrayContainsKey!0 a!3186 lt!343481 #b00000000000000000000000000000000)))

(declare-fun lt!343479 () Unit!26576)

(assert (=> b!771513 (= lt!343479 lt!343480)))

(declare-fun res!521988 () Bool)

(assert (=> b!771513 (= res!521988 (= (seekEntryOrOpen!0 (select (arr!20278 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7885 #b00000000000000000000000000000000)))))

(assert (=> b!771513 (=> (not res!521988) (not e!429531))))

(declare-fun b!771514 () Bool)

(assert (=> b!771514 (= e!429531 call!35122)))

(declare-fun d!101679 () Bool)

(declare-fun res!521987 () Bool)

(declare-fun e!429529 () Bool)

(assert (=> d!101679 (=> res!521987 e!429529)))

(assert (=> d!101679 (= res!521987 (bvsge #b00000000000000000000000000000000 (size!20699 a!3186)))))

(assert (=> d!101679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!429529)))

(declare-fun b!771511 () Bool)

(assert (=> b!771511 (= e!429529 e!429530)))

(declare-fun c!85159 () Bool)

(assert (=> b!771511 (= c!85159 (validKeyInArray!0 (select (arr!20278 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101679 (not res!521987)) b!771511))

(assert (= (and b!771511 c!85159) b!771513))

(assert (= (and b!771511 (not c!85159)) b!771512))

(assert (= (and b!771513 res!521988) b!771514))

(assert (= (or b!771514 b!771512) bm!35119))

(declare-fun m!716653 () Bool)

(assert (=> bm!35119 m!716653))

(assert (=> b!771513 m!716645))

(declare-fun m!716655 () Bool)

(assert (=> b!771513 m!716655))

(declare-fun m!716657 () Bool)

(assert (=> b!771513 m!716657))

(assert (=> b!771513 m!716645))

(declare-fun m!716659 () Bool)

(assert (=> b!771513 m!716659))

(assert (=> b!771511 m!716645))

(assert (=> b!771511 m!716645))

(assert (=> b!771511 m!716647))

(assert (=> b!771125 d!101679))

(declare-fun d!101681 () Bool)

(declare-fun res!521993 () Bool)

(declare-fun e!429536 () Bool)

(assert (=> d!101681 (=> res!521993 e!429536)))

(assert (=> d!101681 (= res!521993 (= (select (arr!20278 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!101681 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!429536)))

(declare-fun b!771519 () Bool)

(declare-fun e!429537 () Bool)

(assert (=> b!771519 (= e!429536 e!429537)))

(declare-fun res!521994 () Bool)

(assert (=> b!771519 (=> (not res!521994) (not e!429537))))

(assert (=> b!771519 (= res!521994 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20699 a!3186)))))

(declare-fun b!771520 () Bool)

(assert (=> b!771520 (= e!429537 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101681 (not res!521993)) b!771519))

(assert (= (and b!771519 res!521994) b!771520))

(assert (=> d!101681 m!716645))

(declare-fun m!716661 () Bool)

(assert (=> b!771520 m!716661))

(assert (=> b!771136 d!101681))

(check-sat (not d!101653) (not b!771498) (not d!101615) (not d!101649) (not d!101607) (not b!771520) (not d!101657) (not d!101605) (not b!771448) (not b!771496) (not b!771270) (not b!771220) (not d!101627) (not b!771400) (not d!101603) (not b!771226) (not b!771424) (not b!771513) (not d!101655) (not bm!35119) (not d!101625) (not bm!35118) (not d!101661) (not b!771416) (not b!771440) (not b!771261) (not b!771308) (not b!771511) (not b!771306) (not b!771431) (not b!771494) (not d!101647) (not bm!35112))
(check-sat)
