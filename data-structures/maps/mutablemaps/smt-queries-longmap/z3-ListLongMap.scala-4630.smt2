; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64500 () Bool)

(assert start!64500)

(declare-fun b!725236 () Bool)

(declare-fun res!486492 () Bool)

(declare-fun e!406173 () Bool)

(assert (=> b!725236 (=> (not res!486492) (not e!406173))))

(declare-datatypes ((array!40971 0))(
  ( (array!40972 (arr!19603 (Array (_ BitVec 32) (_ BitVec 64))) (size!20024 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40971)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!725236 (= res!486492 (and (= (size!20024 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20024 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20024 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725237 () Bool)

(declare-fun e!406170 () Bool)

(assert (=> b!725237 (= e!406170 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun e!406171 () Bool)

(assert (=> b!725237 e!406171))

(declare-fun res!486497 () Bool)

(assert (=> b!725237 (=> (not res!486497) (not e!406171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40971 (_ BitVec 32)) Bool)

(assert (=> b!725237 (= res!486497 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24738 0))(
  ( (Unit!24739) )
))
(declare-fun lt!321283 () Unit!24738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24738)

(assert (=> b!725237 (= lt!321283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725238 () Bool)

(declare-fun res!486486 () Bool)

(declare-fun e!406174 () Bool)

(assert (=> b!725238 (=> (not res!486486) (not e!406174))))

(assert (=> b!725238 (= res!486486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725239 () Bool)

(declare-fun res!486496 () Bool)

(declare-fun e!406169 () Bool)

(assert (=> b!725239 (=> (not res!486496) (not e!406169))))

(declare-fun e!406175 () Bool)

(assert (=> b!725239 (= res!486496 e!406175)))

(declare-fun c!79749 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725239 (= c!79749 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725240 () Bool)

(assert (=> b!725240 (= e!406173 e!406174)))

(declare-fun res!486491 () Bool)

(assert (=> b!725240 (=> (not res!486491) (not e!406174))))

(declare-datatypes ((SeekEntryResult!7210 0))(
  ( (MissingZero!7210 (index!31207 (_ BitVec 32))) (Found!7210 (index!31208 (_ BitVec 32))) (Intermediate!7210 (undefined!8022 Bool) (index!31209 (_ BitVec 32)) (x!62229 (_ BitVec 32))) (Undefined!7210) (MissingVacant!7210 (index!31210 (_ BitVec 32))) )
))
(declare-fun lt!321281 () SeekEntryResult!7210)

(assert (=> b!725240 (= res!486491 (or (= lt!321281 (MissingZero!7210 i!1173)) (= lt!321281 (MissingVacant!7210 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40971 (_ BitVec 32)) SeekEntryResult!7210)

(assert (=> b!725240 (= lt!321281 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!725241 () Bool)

(declare-fun lt!321284 () SeekEntryResult!7210)

(declare-fun e!406172 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40971 (_ BitVec 32)) SeekEntryResult!7210)

(assert (=> b!725241 (= e!406172 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19603 a!3186) j!159) a!3186 mask!3328) lt!321284))))

(declare-fun res!486485 () Bool)

(assert (=> start!64500 (=> (not res!486485) (not e!406173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64500 (= res!486485 (validMask!0 mask!3328))))

(assert (=> start!64500 e!406173))

(assert (=> start!64500 true))

(declare-fun array_inv!15377 (array!40971) Bool)

(assert (=> start!64500 (array_inv!15377 a!3186)))

(declare-fun b!725242 () Bool)

(assert (=> b!725242 (= e!406174 e!406169)))

(declare-fun res!486490 () Bool)

(assert (=> b!725242 (=> (not res!486490) (not e!406169))))

(declare-fun lt!321282 () SeekEntryResult!7210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40971 (_ BitVec 32)) SeekEntryResult!7210)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725242 (= res!486490 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19603 a!3186) j!159) mask!3328) (select (arr!19603 a!3186) j!159) a!3186 mask!3328) lt!321282))))

(assert (=> b!725242 (= lt!321282 (Intermediate!7210 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725243 () Bool)

(declare-fun res!486495 () Bool)

(assert (=> b!725243 (=> (not res!486495) (not e!406173))))

(declare-fun arrayContainsKey!0 (array!40971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725243 (= res!486495 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725244 () Bool)

(declare-fun res!486487 () Bool)

(assert (=> b!725244 (=> (not res!486487) (not e!406169))))

(assert (=> b!725244 (= res!486487 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19603 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725245 () Bool)

(declare-fun res!486488 () Bool)

(assert (=> b!725245 (=> (not res!486488) (not e!406174))))

(declare-datatypes ((List!13658 0))(
  ( (Nil!13655) (Cons!13654 (h!14711 (_ BitVec 64)) (t!19981 List!13658)) )
))
(declare-fun arrayNoDuplicates!0 (array!40971 (_ BitVec 32) List!13658) Bool)

(assert (=> b!725245 (= res!486488 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13655))))

(declare-fun b!725246 () Bool)

(declare-fun res!486493 () Bool)

(assert (=> b!725246 (=> (not res!486493) (not e!406173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725246 (= res!486493 (validKeyInArray!0 (select (arr!19603 a!3186) j!159)))))

(declare-fun b!725247 () Bool)

(declare-fun res!486484 () Bool)

(assert (=> b!725247 (=> (not res!486484) (not e!406174))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!725247 (= res!486484 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20024 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20024 a!3186))))))

(declare-fun b!725248 () Bool)

(assert (=> b!725248 (= e!406175 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19603 a!3186) j!159) a!3186 mask!3328) lt!321282))))

(declare-fun b!725249 () Bool)

(assert (=> b!725249 (= e!406169 e!406170)))

(declare-fun res!486494 () Bool)

(assert (=> b!725249 (=> (not res!486494) (not e!406170))))

(declare-fun lt!321279 () (_ BitVec 64))

(declare-fun lt!321280 () array!40971)

(assert (=> b!725249 (= res!486494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321279 mask!3328) lt!321279 lt!321280 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321279 lt!321280 mask!3328)))))

(assert (=> b!725249 (= lt!321279 (select (store (arr!19603 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!725249 (= lt!321280 (array!40972 (store (arr!19603 a!3186) i!1173 k0!2102) (size!20024 a!3186)))))

(declare-fun b!725250 () Bool)

(assert (=> b!725250 (= e!406175 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19603 a!3186) j!159) a!3186 mask!3328) (Found!7210 j!159)))))

(declare-fun b!725251 () Bool)

(declare-fun res!486498 () Bool)

(assert (=> b!725251 (=> (not res!486498) (not e!406173))))

(assert (=> b!725251 (= res!486498 (validKeyInArray!0 k0!2102))))

(declare-fun b!725252 () Bool)

(assert (=> b!725252 (= e!406171 e!406172)))

(declare-fun res!486489 () Bool)

(assert (=> b!725252 (=> (not res!486489) (not e!406172))))

(assert (=> b!725252 (= res!486489 (= (seekEntryOrOpen!0 (select (arr!19603 a!3186) j!159) a!3186 mask!3328) lt!321284))))

(assert (=> b!725252 (= lt!321284 (Found!7210 j!159))))

(assert (= (and start!64500 res!486485) b!725236))

(assert (= (and b!725236 res!486492) b!725246))

(assert (= (and b!725246 res!486493) b!725251))

(assert (= (and b!725251 res!486498) b!725243))

(assert (= (and b!725243 res!486495) b!725240))

(assert (= (and b!725240 res!486491) b!725238))

(assert (= (and b!725238 res!486486) b!725245))

(assert (= (and b!725245 res!486488) b!725247))

(assert (= (and b!725247 res!486484) b!725242))

(assert (= (and b!725242 res!486490) b!725244))

(assert (= (and b!725244 res!486487) b!725239))

(assert (= (and b!725239 c!79749) b!725248))

(assert (= (and b!725239 (not c!79749)) b!725250))

(assert (= (and b!725239 res!486496) b!725249))

(assert (= (and b!725249 res!486494) b!725237))

(assert (= (and b!725237 res!486497) b!725252))

(assert (= (and b!725252 res!486489) b!725241))

(declare-fun m!679505 () Bool)

(assert (=> b!725249 m!679505))

(declare-fun m!679507 () Bool)

(assert (=> b!725249 m!679507))

(declare-fun m!679509 () Bool)

(assert (=> b!725249 m!679509))

(declare-fun m!679511 () Bool)

(assert (=> b!725249 m!679511))

(assert (=> b!725249 m!679505))

(declare-fun m!679513 () Bool)

(assert (=> b!725249 m!679513))

(declare-fun m!679515 () Bool)

(assert (=> b!725248 m!679515))

(assert (=> b!725248 m!679515))

(declare-fun m!679517 () Bool)

(assert (=> b!725248 m!679517))

(assert (=> b!725252 m!679515))

(assert (=> b!725252 m!679515))

(declare-fun m!679519 () Bool)

(assert (=> b!725252 m!679519))

(assert (=> b!725242 m!679515))

(assert (=> b!725242 m!679515))

(declare-fun m!679521 () Bool)

(assert (=> b!725242 m!679521))

(assert (=> b!725242 m!679521))

(assert (=> b!725242 m!679515))

(declare-fun m!679523 () Bool)

(assert (=> b!725242 m!679523))

(declare-fun m!679525 () Bool)

(assert (=> b!725251 m!679525))

(declare-fun m!679527 () Bool)

(assert (=> b!725238 m!679527))

(declare-fun m!679529 () Bool)

(assert (=> start!64500 m!679529))

(declare-fun m!679531 () Bool)

(assert (=> start!64500 m!679531))

(assert (=> b!725250 m!679515))

(assert (=> b!725250 m!679515))

(declare-fun m!679533 () Bool)

(assert (=> b!725250 m!679533))

(declare-fun m!679535 () Bool)

(assert (=> b!725240 m!679535))

(declare-fun m!679537 () Bool)

(assert (=> b!725245 m!679537))

(assert (=> b!725241 m!679515))

(assert (=> b!725241 m!679515))

(declare-fun m!679539 () Bool)

(assert (=> b!725241 m!679539))

(assert (=> b!725246 m!679515))

(assert (=> b!725246 m!679515))

(declare-fun m!679541 () Bool)

(assert (=> b!725246 m!679541))

(declare-fun m!679543 () Bool)

(assert (=> b!725244 m!679543))

(declare-fun m!679545 () Bool)

(assert (=> b!725237 m!679545))

(declare-fun m!679547 () Bool)

(assert (=> b!725237 m!679547))

(declare-fun m!679549 () Bool)

(assert (=> b!725243 m!679549))

(check-sat (not b!725250) (not b!725238) (not b!725241) (not b!725249) (not b!725243) (not b!725240) (not start!64500) (not b!725245) (not b!725242) (not b!725248) (not b!725246) (not b!725251) (not b!725237) (not b!725252))
(check-sat)
