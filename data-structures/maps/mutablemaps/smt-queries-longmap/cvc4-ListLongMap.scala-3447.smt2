; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47816 () Bool)

(assert start!47816)

(declare-fun b!526531 () Bool)

(declare-fun e!306897 () Bool)

(assert (=> b!526531 (= e!306897 true)))

(declare-datatypes ((SeekEntryResult!4529 0))(
  ( (MissingZero!4529 (index!20328 (_ BitVec 32))) (Found!4529 (index!20329 (_ BitVec 32))) (Intermediate!4529 (undefined!5341 Bool) (index!20330 (_ BitVec 32)) (x!49321 (_ BitVec 32))) (Undefined!4529) (MissingVacant!4529 (index!20331 (_ BitVec 32))) )
))
(declare-fun lt!242278 () SeekEntryResult!4529)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526531 (= (index!20330 lt!242278) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33413 0))(
  ( (array!33414 (arr!16055 (Array (_ BitVec 32) (_ BitVec 64))) (size!16419 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33413)

(declare-datatypes ((Unit!16582 0))(
  ( (Unit!16583) )
))
(declare-fun lt!242283 () Unit!16582)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!242282 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16582)

(assert (=> b!526531 (= lt!242283 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242282 #b00000000000000000000000000000000 (index!20330 lt!242278) (x!49321 lt!242278) mask!3524))))

(assert (=> b!526531 (and (or (= (select (arr!16055 a!3235) (index!20330 lt!242278)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16055 a!3235) (index!20330 lt!242278)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16055 a!3235) (index!20330 lt!242278)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16055 a!3235) (index!20330 lt!242278)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242276 () Unit!16582)

(declare-fun e!306896 () Unit!16582)

(assert (=> b!526531 (= lt!242276 e!306896)))

(declare-fun c!61940 () Bool)

(assert (=> b!526531 (= c!61940 (= (select (arr!16055 a!3235) (index!20330 lt!242278)) (select (arr!16055 a!3235) j!176)))))

(assert (=> b!526531 (and (bvslt (x!49321 lt!242278) #b01111111111111111111111111111110) (or (= (select (arr!16055 a!3235) (index!20330 lt!242278)) (select (arr!16055 a!3235) j!176)) (= (select (arr!16055 a!3235) (index!20330 lt!242278)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16055 a!3235) (index!20330 lt!242278)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526532 () Bool)

(declare-fun res!323272 () Bool)

(declare-fun e!306899 () Bool)

(assert (=> b!526532 (=> (not res!323272) (not e!306899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526532 (= res!323272 (validKeyInArray!0 k!2280))))

(declare-fun b!526533 () Bool)

(declare-fun Unit!16584 () Unit!16582)

(assert (=> b!526533 (= e!306896 Unit!16584)))

(declare-fun lt!242281 () Unit!16582)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16582)

(assert (=> b!526533 (= lt!242281 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242282 #b00000000000000000000000000000000 (index!20330 lt!242278) (x!49321 lt!242278) mask!3524))))

(declare-fun res!323267 () Bool)

(declare-fun lt!242279 () (_ BitVec 64))

(declare-fun lt!242285 () array!33413)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33413 (_ BitVec 32)) SeekEntryResult!4529)

(assert (=> b!526533 (= res!323267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242282 lt!242279 lt!242285 mask!3524) (Intermediate!4529 false (index!20330 lt!242278) (x!49321 lt!242278))))))

(declare-fun e!306900 () Bool)

(assert (=> b!526533 (=> (not res!323267) (not e!306900))))

(assert (=> b!526533 e!306900))

(declare-fun b!526534 () Bool)

(declare-fun Unit!16585 () Unit!16582)

(assert (=> b!526534 (= e!306896 Unit!16585)))

(declare-fun b!526535 () Bool)

(declare-fun res!323269 () Bool)

(assert (=> b!526535 (=> (not res!323269) (not e!306899))))

(assert (=> b!526535 (= res!323269 (validKeyInArray!0 (select (arr!16055 a!3235) j!176)))))

(declare-fun b!526536 () Bool)

(declare-fun e!306901 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33413 (_ BitVec 32)) SeekEntryResult!4529)

(assert (=> b!526536 (= e!306901 (= (seekEntryOrOpen!0 (select (arr!16055 a!3235) j!176) a!3235 mask!3524) (Found!4529 j!176)))))

(declare-fun b!526537 () Bool)

(declare-fun res!323263 () Bool)

(declare-fun e!306895 () Bool)

(assert (=> b!526537 (=> (not res!323263) (not e!306895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33413 (_ BitVec 32)) Bool)

(assert (=> b!526537 (= res!323263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!323264 () Bool)

(assert (=> start!47816 (=> (not res!323264) (not e!306899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47816 (= res!323264 (validMask!0 mask!3524))))

(assert (=> start!47816 e!306899))

(assert (=> start!47816 true))

(declare-fun array_inv!11829 (array!33413) Bool)

(assert (=> start!47816 (array_inv!11829 a!3235)))

(declare-fun b!526538 () Bool)

(declare-fun res!323271 () Bool)

(assert (=> b!526538 (=> res!323271 e!306897)))

(assert (=> b!526538 (= res!323271 (or (undefined!5341 lt!242278) (not (is-Intermediate!4529 lt!242278))))))

(declare-fun b!526539 () Bool)

(assert (=> b!526539 (= e!306899 e!306895)))

(declare-fun res!323268 () Bool)

(assert (=> b!526539 (=> (not res!323268) (not e!306895))))

(declare-fun lt!242280 () SeekEntryResult!4529)

(assert (=> b!526539 (= res!323268 (or (= lt!242280 (MissingZero!4529 i!1204)) (= lt!242280 (MissingVacant!4529 i!1204))))))

(assert (=> b!526539 (= lt!242280 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526540 () Bool)

(assert (=> b!526540 (= e!306900 false)))

(declare-fun b!526541 () Bool)

(declare-fun res!323266 () Bool)

(assert (=> b!526541 (=> (not res!323266) (not e!306899))))

(declare-fun arrayContainsKey!0 (array!33413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526541 (= res!323266 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526542 () Bool)

(declare-fun res!323265 () Bool)

(assert (=> b!526542 (=> (not res!323265) (not e!306899))))

(assert (=> b!526542 (= res!323265 (and (= (size!16419 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16419 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16419 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526543 () Bool)

(assert (=> b!526543 (= e!306895 (not e!306897))))

(declare-fun res!323273 () Bool)

(assert (=> b!526543 (=> res!323273 e!306897)))

(declare-fun lt!242284 () (_ BitVec 32))

(assert (=> b!526543 (= res!323273 (= lt!242278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242284 lt!242279 lt!242285 mask!3524)))))

(assert (=> b!526543 (= lt!242278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242282 (select (arr!16055 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526543 (= lt!242284 (toIndex!0 lt!242279 mask!3524))))

(assert (=> b!526543 (= lt!242279 (select (store (arr!16055 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526543 (= lt!242282 (toIndex!0 (select (arr!16055 a!3235) j!176) mask!3524))))

(assert (=> b!526543 (= lt!242285 (array!33414 (store (arr!16055 a!3235) i!1204 k!2280) (size!16419 a!3235)))))

(assert (=> b!526543 e!306901))

(declare-fun res!323262 () Bool)

(assert (=> b!526543 (=> (not res!323262) (not e!306901))))

(assert (=> b!526543 (= res!323262 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242277 () Unit!16582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16582)

(assert (=> b!526543 (= lt!242277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526544 () Bool)

(declare-fun res!323270 () Bool)

(assert (=> b!526544 (=> (not res!323270) (not e!306895))))

(declare-datatypes ((List!10266 0))(
  ( (Nil!10263) (Cons!10262 (h!11193 (_ BitVec 64)) (t!16502 List!10266)) )
))
(declare-fun arrayNoDuplicates!0 (array!33413 (_ BitVec 32) List!10266) Bool)

(assert (=> b!526544 (= res!323270 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10263))))

(assert (= (and start!47816 res!323264) b!526542))

(assert (= (and b!526542 res!323265) b!526535))

(assert (= (and b!526535 res!323269) b!526532))

(assert (= (and b!526532 res!323272) b!526541))

(assert (= (and b!526541 res!323266) b!526539))

(assert (= (and b!526539 res!323268) b!526537))

(assert (= (and b!526537 res!323263) b!526544))

(assert (= (and b!526544 res!323270) b!526543))

(assert (= (and b!526543 res!323262) b!526536))

(assert (= (and b!526543 (not res!323273)) b!526538))

(assert (= (and b!526538 (not res!323271)) b!526531))

(assert (= (and b!526531 c!61940) b!526533))

(assert (= (and b!526531 (not c!61940)) b!526534))

(assert (= (and b!526533 res!323267) b!526540))

(declare-fun m!507287 () Bool)

(assert (=> b!526536 m!507287))

(assert (=> b!526536 m!507287))

(declare-fun m!507289 () Bool)

(assert (=> b!526536 m!507289))

(declare-fun m!507291 () Bool)

(assert (=> b!526533 m!507291))

(declare-fun m!507293 () Bool)

(assert (=> b!526533 m!507293))

(declare-fun m!507295 () Bool)

(assert (=> b!526531 m!507295))

(declare-fun m!507297 () Bool)

(assert (=> b!526531 m!507297))

(assert (=> b!526531 m!507287))

(declare-fun m!507299 () Bool)

(assert (=> b!526544 m!507299))

(declare-fun m!507301 () Bool)

(assert (=> b!526543 m!507301))

(assert (=> b!526543 m!507287))

(declare-fun m!507303 () Bool)

(assert (=> b!526543 m!507303))

(declare-fun m!507305 () Bool)

(assert (=> b!526543 m!507305))

(assert (=> b!526543 m!507287))

(declare-fun m!507307 () Bool)

(assert (=> b!526543 m!507307))

(assert (=> b!526543 m!507287))

(declare-fun m!507309 () Bool)

(assert (=> b!526543 m!507309))

(declare-fun m!507311 () Bool)

(assert (=> b!526543 m!507311))

(declare-fun m!507313 () Bool)

(assert (=> b!526543 m!507313))

(declare-fun m!507315 () Bool)

(assert (=> b!526543 m!507315))

(declare-fun m!507317 () Bool)

(assert (=> b!526541 m!507317))

(declare-fun m!507319 () Bool)

(assert (=> b!526539 m!507319))

(assert (=> b!526535 m!507287))

(assert (=> b!526535 m!507287))

(declare-fun m!507321 () Bool)

(assert (=> b!526535 m!507321))

(declare-fun m!507323 () Bool)

(assert (=> b!526532 m!507323))

(declare-fun m!507325 () Bool)

(assert (=> b!526537 m!507325))

(declare-fun m!507327 () Bool)

(assert (=> start!47816 m!507327))

(declare-fun m!507329 () Bool)

(assert (=> start!47816 m!507329))

(push 1)

