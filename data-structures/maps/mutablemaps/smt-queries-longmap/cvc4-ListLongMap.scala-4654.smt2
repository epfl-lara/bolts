; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64718 () Bool)

(assert start!64718)

(declare-fun b!729528 () Bool)

(declare-fun res!490055 () Bool)

(declare-fun e!408333 () Bool)

(assert (=> b!729528 (=> (not res!490055) (not e!408333))))

(declare-datatypes ((array!41120 0))(
  ( (array!41121 (arr!19676 (Array (_ BitVec 32) (_ BitVec 64))) (size!20097 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41120)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!729528 (= res!490055 (and (= (size!20097 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20097 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20097 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729529 () Bool)

(declare-fun res!490062 () Bool)

(declare-fun e!408327 () Bool)

(assert (=> b!729529 (=> (not res!490062) (not e!408327))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729529 (= res!490062 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20097 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20097 a!3186))))))

(declare-fun b!729530 () Bool)

(declare-fun e!408329 () Bool)

(assert (=> b!729530 (= e!408327 e!408329)))

(declare-fun res!490054 () Bool)

(assert (=> b!729530 (=> (not res!490054) (not e!408329))))

(declare-datatypes ((SeekEntryResult!7283 0))(
  ( (MissingZero!7283 (index!31499 (_ BitVec 32))) (Found!7283 (index!31500 (_ BitVec 32))) (Intermediate!7283 (undefined!8095 Bool) (index!31501 (_ BitVec 32)) (x!62506 (_ BitVec 32))) (Undefined!7283) (MissingVacant!7283 (index!31502 (_ BitVec 32))) )
))
(declare-fun lt!323234 () SeekEntryResult!7283)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41120 (_ BitVec 32)) SeekEntryResult!7283)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729530 (= res!490054 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19676 a!3186) j!159) mask!3328) (select (arr!19676 a!3186) j!159) a!3186 mask!3328) lt!323234))))

(assert (=> b!729530 (= lt!323234 (Intermediate!7283 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729531 () Bool)

(declare-fun e!408325 () Bool)

(declare-fun e!408332 () Bool)

(assert (=> b!729531 (= e!408325 (not e!408332))))

(declare-fun res!490059 () Bool)

(assert (=> b!729531 (=> res!490059 e!408332)))

(declare-fun lt!323236 () SeekEntryResult!7283)

(assert (=> b!729531 (= res!490059 (or (not (is-Intermediate!7283 lt!323236)) (bvsge x!1131 (x!62506 lt!323236))))))

(declare-fun e!408328 () Bool)

(assert (=> b!729531 e!408328))

(declare-fun res!490058 () Bool)

(assert (=> b!729531 (=> (not res!490058) (not e!408328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41120 (_ BitVec 32)) Bool)

(assert (=> b!729531 (= res!490058 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24884 0))(
  ( (Unit!24885) )
))
(declare-fun lt!323240 () Unit!24884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24884)

(assert (=> b!729531 (= lt!323240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729532 () Bool)

(declare-fun res!490047 () Bool)

(assert (=> b!729532 (=> (not res!490047) (not e!408327))))

(assert (=> b!729532 (= res!490047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729533 () Bool)

(declare-fun res!490050 () Bool)

(assert (=> b!729533 (=> (not res!490050) (not e!408333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729533 (= res!490050 (validKeyInArray!0 (select (arr!19676 a!3186) j!159)))))

(declare-fun e!408330 () Bool)

(declare-fun b!729534 () Bool)

(declare-fun lt!323237 () SeekEntryResult!7283)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41120 (_ BitVec 32)) SeekEntryResult!7283)

(assert (=> b!729534 (= e!408330 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19676 a!3186) j!159) a!3186 mask!3328) lt!323237))))

(declare-fun b!729535 () Bool)

(assert (=> b!729535 (= e!408328 e!408330)))

(declare-fun res!490057 () Bool)

(assert (=> b!729535 (=> (not res!490057) (not e!408330))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41120 (_ BitVec 32)) SeekEntryResult!7283)

(assert (=> b!729535 (= res!490057 (= (seekEntryOrOpen!0 (select (arr!19676 a!3186) j!159) a!3186 mask!3328) lt!323237))))

(assert (=> b!729535 (= lt!323237 (Found!7283 j!159))))

(declare-fun b!729536 () Bool)

(declare-fun res!490052 () Bool)

(assert (=> b!729536 (=> (not res!490052) (not e!408327))))

(declare-datatypes ((List!13731 0))(
  ( (Nil!13728) (Cons!13727 (h!14787 (_ BitVec 64)) (t!20054 List!13731)) )
))
(declare-fun arrayNoDuplicates!0 (array!41120 (_ BitVec 32) List!13731) Bool)

(assert (=> b!729536 (= res!490052 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13728))))

(declare-fun b!729537 () Bool)

(declare-fun e!408326 () Bool)

(assert (=> b!729537 (= e!408326 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19676 a!3186) j!159) a!3186 mask!3328) lt!323234))))

(declare-fun b!729538 () Bool)

(assert (=> b!729538 (= e!408333 e!408327)))

(declare-fun res!490056 () Bool)

(assert (=> b!729538 (=> (not res!490056) (not e!408327))))

(declare-fun lt!323239 () SeekEntryResult!7283)

(assert (=> b!729538 (= res!490056 (or (= lt!323239 (MissingZero!7283 i!1173)) (= lt!323239 (MissingVacant!7283 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!729538 (= lt!323239 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729539 () Bool)

(declare-fun res!490060 () Bool)

(assert (=> b!729539 (=> (not res!490060) (not e!408329))))

(assert (=> b!729539 (= res!490060 e!408326)))

(declare-fun c!80115 () Bool)

(assert (=> b!729539 (= c!80115 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729541 () Bool)

(assert (=> b!729541 (= e!408332 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun lt!323238 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729541 (= lt!323238 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729542 () Bool)

(assert (=> b!729542 (= e!408329 e!408325)))

(declare-fun res!490048 () Bool)

(assert (=> b!729542 (=> (not res!490048) (not e!408325))))

(declare-fun lt!323235 () SeekEntryResult!7283)

(assert (=> b!729542 (= res!490048 (= lt!323235 lt!323236))))

(declare-fun lt!323232 () (_ BitVec 64))

(declare-fun lt!323233 () array!41120)

(assert (=> b!729542 (= lt!323236 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323232 lt!323233 mask!3328))))

(assert (=> b!729542 (= lt!323235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323232 mask!3328) lt!323232 lt!323233 mask!3328))))

(assert (=> b!729542 (= lt!323232 (select (store (arr!19676 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729542 (= lt!323233 (array!41121 (store (arr!19676 a!3186) i!1173 k!2102) (size!20097 a!3186)))))

(declare-fun b!729543 () Bool)

(assert (=> b!729543 (= e!408326 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19676 a!3186) j!159) a!3186 mask!3328) (Found!7283 j!159)))))

(declare-fun b!729544 () Bool)

(declare-fun res!490051 () Bool)

(assert (=> b!729544 (=> (not res!490051) (not e!408333))))

(assert (=> b!729544 (= res!490051 (validKeyInArray!0 k!2102))))

(declare-fun b!729545 () Bool)

(declare-fun res!490053 () Bool)

(assert (=> b!729545 (=> (not res!490053) (not e!408329))))

(assert (=> b!729545 (= res!490053 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19676 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!490049 () Bool)

(assert (=> start!64718 (=> (not res!490049) (not e!408333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64718 (= res!490049 (validMask!0 mask!3328))))

(assert (=> start!64718 e!408333))

(assert (=> start!64718 true))

(declare-fun array_inv!15450 (array!41120) Bool)

(assert (=> start!64718 (array_inv!15450 a!3186)))

(declare-fun b!729540 () Bool)

(declare-fun res!490061 () Bool)

(assert (=> b!729540 (=> (not res!490061) (not e!408333))))

(declare-fun arrayContainsKey!0 (array!41120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729540 (= res!490061 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64718 res!490049) b!729528))

(assert (= (and b!729528 res!490055) b!729533))

(assert (= (and b!729533 res!490050) b!729544))

(assert (= (and b!729544 res!490051) b!729540))

(assert (= (and b!729540 res!490061) b!729538))

(assert (= (and b!729538 res!490056) b!729532))

(assert (= (and b!729532 res!490047) b!729536))

(assert (= (and b!729536 res!490052) b!729529))

(assert (= (and b!729529 res!490062) b!729530))

(assert (= (and b!729530 res!490054) b!729545))

(assert (= (and b!729545 res!490053) b!729539))

(assert (= (and b!729539 c!80115) b!729537))

(assert (= (and b!729539 (not c!80115)) b!729543))

(assert (= (and b!729539 res!490060) b!729542))

(assert (= (and b!729542 res!490048) b!729531))

(assert (= (and b!729531 res!490058) b!729535))

(assert (= (and b!729535 res!490057) b!729534))

(assert (= (and b!729531 (not res!490059)) b!729541))

(declare-fun m!683245 () Bool)

(assert (=> b!729542 m!683245))

(declare-fun m!683247 () Bool)

(assert (=> b!729542 m!683247))

(declare-fun m!683249 () Bool)

(assert (=> b!729542 m!683249))

(declare-fun m!683251 () Bool)

(assert (=> b!729542 m!683251))

(declare-fun m!683253 () Bool)

(assert (=> b!729542 m!683253))

(assert (=> b!729542 m!683251))

(declare-fun m!683255 () Bool)

(assert (=> b!729543 m!683255))

(assert (=> b!729543 m!683255))

(declare-fun m!683257 () Bool)

(assert (=> b!729543 m!683257))

(assert (=> b!729535 m!683255))

(assert (=> b!729535 m!683255))

(declare-fun m!683259 () Bool)

(assert (=> b!729535 m!683259))

(assert (=> b!729537 m!683255))

(assert (=> b!729537 m!683255))

(declare-fun m!683261 () Bool)

(assert (=> b!729537 m!683261))

(declare-fun m!683263 () Bool)

(assert (=> b!729536 m!683263))

(assert (=> b!729534 m!683255))

(assert (=> b!729534 m!683255))

(declare-fun m!683265 () Bool)

(assert (=> b!729534 m!683265))

(assert (=> b!729530 m!683255))

(assert (=> b!729530 m!683255))

(declare-fun m!683267 () Bool)

(assert (=> b!729530 m!683267))

(assert (=> b!729530 m!683267))

(assert (=> b!729530 m!683255))

(declare-fun m!683269 () Bool)

(assert (=> b!729530 m!683269))

(declare-fun m!683271 () Bool)

(assert (=> b!729541 m!683271))

(declare-fun m!683273 () Bool)

(assert (=> start!64718 m!683273))

(declare-fun m!683275 () Bool)

(assert (=> start!64718 m!683275))

(declare-fun m!683277 () Bool)

(assert (=> b!729540 m!683277))

(declare-fun m!683279 () Bool)

(assert (=> b!729538 m!683279))

(assert (=> b!729533 m!683255))

(assert (=> b!729533 m!683255))

(declare-fun m!683281 () Bool)

(assert (=> b!729533 m!683281))

(declare-fun m!683283 () Bool)

(assert (=> b!729531 m!683283))

(declare-fun m!683285 () Bool)

(assert (=> b!729531 m!683285))

(declare-fun m!683287 () Bool)

(assert (=> b!729545 m!683287))

(declare-fun m!683289 () Bool)

(assert (=> b!729544 m!683289))

(declare-fun m!683291 () Bool)

(assert (=> b!729532 m!683291))

(push 1)

(assert (not b!729538))

(assert (not b!729530))

