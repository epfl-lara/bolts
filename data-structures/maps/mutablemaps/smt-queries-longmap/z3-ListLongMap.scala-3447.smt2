; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47814 () Bool)

(assert start!47814)

(declare-fun b!526489 () Bool)

(declare-fun e!306877 () Bool)

(assert (=> b!526489 (= e!306877 true)))

(declare-datatypes ((SeekEntryResult!4528 0))(
  ( (MissingZero!4528 (index!20324 (_ BitVec 32))) (Found!4528 (index!20325 (_ BitVec 32))) (Intermediate!4528 (undefined!5340 Bool) (index!20326 (_ BitVec 32)) (x!49320 (_ BitVec 32))) (Undefined!4528) (MissingVacant!4528 (index!20327 (_ BitVec 32))) )
))
(declare-fun lt!242246 () SeekEntryResult!4528)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526489 (= (index!20326 lt!242246) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33411 0))(
  ( (array!33412 (arr!16054 (Array (_ BitVec 32) (_ BitVec 64))) (size!16418 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33411)

(declare-datatypes ((Unit!16578 0))(
  ( (Unit!16579) )
))
(declare-fun lt!242247 () Unit!16578)

(declare-fun lt!242253 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16578)

(assert (=> b!526489 (= lt!242247 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242253 #b00000000000000000000000000000000 (index!20326 lt!242246) (x!49320 lt!242246) mask!3524))))

(assert (=> b!526489 (and (or (= (select (arr!16054 a!3235) (index!20326 lt!242246)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16054 a!3235) (index!20326 lt!242246)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16054 a!3235) (index!20326 lt!242246)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16054 a!3235) (index!20326 lt!242246)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242252 () Unit!16578)

(declare-fun e!306874 () Unit!16578)

(assert (=> b!526489 (= lt!242252 e!306874)))

(declare-fun c!61937 () Bool)

(assert (=> b!526489 (= c!61937 (= (select (arr!16054 a!3235) (index!20326 lt!242246)) (select (arr!16054 a!3235) j!176)))))

(assert (=> b!526489 (and (bvslt (x!49320 lt!242246) #b01111111111111111111111111111110) (or (= (select (arr!16054 a!3235) (index!20326 lt!242246)) (select (arr!16054 a!3235) j!176)) (= (select (arr!16054 a!3235) (index!20326 lt!242246)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16054 a!3235) (index!20326 lt!242246)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526490 () Bool)

(declare-fun res!323229 () Bool)

(declare-fun e!306875 () Bool)

(assert (=> b!526490 (=> (not res!323229) (not e!306875))))

(declare-fun arrayContainsKey!0 (array!33411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526490 (= res!323229 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526491 () Bool)

(declare-fun res!323231 () Bool)

(declare-fun e!306880 () Bool)

(assert (=> b!526491 (=> (not res!323231) (not e!306880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33411 (_ BitVec 32)) Bool)

(assert (=> b!526491 (= res!323231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!323234 () Bool)

(assert (=> start!47814 (=> (not res!323234) (not e!306875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47814 (= res!323234 (validMask!0 mask!3524))))

(assert (=> start!47814 e!306875))

(assert (=> start!47814 true))

(declare-fun array_inv!11828 (array!33411) Bool)

(assert (=> start!47814 (array_inv!11828 a!3235)))

(declare-fun b!526492 () Bool)

(declare-fun res!323236 () Bool)

(assert (=> b!526492 (=> (not res!323236) (not e!306880))))

(declare-datatypes ((List!10265 0))(
  ( (Nil!10262) (Cons!10261 (h!11192 (_ BitVec 64)) (t!16501 List!10265)) )
))
(declare-fun arrayNoDuplicates!0 (array!33411 (_ BitVec 32) List!10265) Bool)

(assert (=> b!526492 (= res!323236 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10262))))

(declare-fun b!526493 () Bool)

(declare-fun Unit!16580 () Unit!16578)

(assert (=> b!526493 (= e!306874 Unit!16580)))

(declare-fun lt!242248 () Unit!16578)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16578)

(assert (=> b!526493 (= lt!242248 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242253 #b00000000000000000000000000000000 (index!20326 lt!242246) (x!49320 lt!242246) mask!3524))))

(declare-fun lt!242255 () (_ BitVec 64))

(declare-fun lt!242251 () array!33411)

(declare-fun res!323235 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33411 (_ BitVec 32)) SeekEntryResult!4528)

(assert (=> b!526493 (= res!323235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242253 lt!242255 lt!242251 mask!3524) (Intermediate!4528 false (index!20326 lt!242246) (x!49320 lt!242246))))))

(declare-fun e!306879 () Bool)

(assert (=> b!526493 (=> (not res!323235) (not e!306879))))

(assert (=> b!526493 e!306879))

(declare-fun b!526494 () Bool)

(declare-fun e!306876 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33411 (_ BitVec 32)) SeekEntryResult!4528)

(assert (=> b!526494 (= e!306876 (= (seekEntryOrOpen!0 (select (arr!16054 a!3235) j!176) a!3235 mask!3524) (Found!4528 j!176)))))

(declare-fun b!526495 () Bool)

(assert (=> b!526495 (= e!306879 false)))

(declare-fun b!526496 () Bool)

(declare-fun res!323228 () Bool)

(assert (=> b!526496 (=> (not res!323228) (not e!306875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526496 (= res!323228 (validKeyInArray!0 (select (arr!16054 a!3235) j!176)))))

(declare-fun b!526497 () Bool)

(assert (=> b!526497 (= e!306880 (not e!306877))))

(declare-fun res!323232 () Bool)

(assert (=> b!526497 (=> res!323232 e!306877)))

(declare-fun lt!242249 () (_ BitVec 32))

(assert (=> b!526497 (= res!323232 (= lt!242246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242249 lt!242255 lt!242251 mask!3524)))))

(assert (=> b!526497 (= lt!242246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242253 (select (arr!16054 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526497 (= lt!242249 (toIndex!0 lt!242255 mask!3524))))

(assert (=> b!526497 (= lt!242255 (select (store (arr!16054 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!526497 (= lt!242253 (toIndex!0 (select (arr!16054 a!3235) j!176) mask!3524))))

(assert (=> b!526497 (= lt!242251 (array!33412 (store (arr!16054 a!3235) i!1204 k0!2280) (size!16418 a!3235)))))

(assert (=> b!526497 e!306876))

(declare-fun res!323233 () Bool)

(assert (=> b!526497 (=> (not res!323233) (not e!306876))))

(assert (=> b!526497 (= res!323233 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242250 () Unit!16578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16578)

(assert (=> b!526497 (= lt!242250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526498 () Bool)

(assert (=> b!526498 (= e!306875 e!306880)))

(declare-fun res!323226 () Bool)

(assert (=> b!526498 (=> (not res!323226) (not e!306880))))

(declare-fun lt!242254 () SeekEntryResult!4528)

(assert (=> b!526498 (= res!323226 (or (= lt!242254 (MissingZero!4528 i!1204)) (= lt!242254 (MissingVacant!4528 i!1204))))))

(assert (=> b!526498 (= lt!242254 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!526499 () Bool)

(declare-fun res!323237 () Bool)

(assert (=> b!526499 (=> res!323237 e!306877)))

(get-info :version)

(assert (=> b!526499 (= res!323237 (or (undefined!5340 lt!242246) (not ((_ is Intermediate!4528) lt!242246))))))

(declare-fun b!526500 () Bool)

(declare-fun Unit!16581 () Unit!16578)

(assert (=> b!526500 (= e!306874 Unit!16581)))

(declare-fun b!526501 () Bool)

(declare-fun res!323227 () Bool)

(assert (=> b!526501 (=> (not res!323227) (not e!306875))))

(assert (=> b!526501 (= res!323227 (validKeyInArray!0 k0!2280))))

(declare-fun b!526502 () Bool)

(declare-fun res!323230 () Bool)

(assert (=> b!526502 (=> (not res!323230) (not e!306875))))

(assert (=> b!526502 (= res!323230 (and (= (size!16418 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16418 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16418 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47814 res!323234) b!526502))

(assert (= (and b!526502 res!323230) b!526496))

(assert (= (and b!526496 res!323228) b!526501))

(assert (= (and b!526501 res!323227) b!526490))

(assert (= (and b!526490 res!323229) b!526498))

(assert (= (and b!526498 res!323226) b!526491))

(assert (= (and b!526491 res!323231) b!526492))

(assert (= (and b!526492 res!323236) b!526497))

(assert (= (and b!526497 res!323233) b!526494))

(assert (= (and b!526497 (not res!323232)) b!526499))

(assert (= (and b!526499 (not res!323237)) b!526489))

(assert (= (and b!526489 c!61937) b!526493))

(assert (= (and b!526489 (not c!61937)) b!526500))

(assert (= (and b!526493 res!323235) b!526495))

(declare-fun m!507243 () Bool)

(assert (=> b!526492 m!507243))

(declare-fun m!507245 () Bool)

(assert (=> b!526501 m!507245))

(declare-fun m!507247 () Bool)

(assert (=> b!526491 m!507247))

(declare-fun m!507249 () Bool)

(assert (=> b!526494 m!507249))

(assert (=> b!526494 m!507249))

(declare-fun m!507251 () Bool)

(assert (=> b!526494 m!507251))

(declare-fun m!507253 () Bool)

(assert (=> start!47814 m!507253))

(declare-fun m!507255 () Bool)

(assert (=> start!47814 m!507255))

(declare-fun m!507257 () Bool)

(assert (=> b!526490 m!507257))

(declare-fun m!507259 () Bool)

(assert (=> b!526489 m!507259))

(declare-fun m!507261 () Bool)

(assert (=> b!526489 m!507261))

(assert (=> b!526489 m!507249))

(declare-fun m!507263 () Bool)

(assert (=> b!526493 m!507263))

(declare-fun m!507265 () Bool)

(assert (=> b!526493 m!507265))

(assert (=> b!526496 m!507249))

(assert (=> b!526496 m!507249))

(declare-fun m!507267 () Bool)

(assert (=> b!526496 m!507267))

(declare-fun m!507269 () Bool)

(assert (=> b!526498 m!507269))

(declare-fun m!507271 () Bool)

(assert (=> b!526497 m!507271))

(declare-fun m!507273 () Bool)

(assert (=> b!526497 m!507273))

(declare-fun m!507275 () Bool)

(assert (=> b!526497 m!507275))

(assert (=> b!526497 m!507249))

(declare-fun m!507277 () Bool)

(assert (=> b!526497 m!507277))

(assert (=> b!526497 m!507249))

(declare-fun m!507279 () Bool)

(assert (=> b!526497 m!507279))

(assert (=> b!526497 m!507249))

(declare-fun m!507281 () Bool)

(assert (=> b!526497 m!507281))

(declare-fun m!507283 () Bool)

(assert (=> b!526497 m!507283))

(declare-fun m!507285 () Bool)

(assert (=> b!526497 m!507285))

(check-sat (not b!526492) (not b!526498) (not b!526501) (not b!526489) (not b!526496) (not b!526493) (not b!526490) (not start!47814) (not b!526491) (not b!526497) (not b!526494))
(check-sat)
