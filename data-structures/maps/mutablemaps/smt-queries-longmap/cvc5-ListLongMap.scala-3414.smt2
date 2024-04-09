; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47416 () Bool)

(assert start!47416)

(declare-fun b!521299 () Bool)

(declare-fun e!304139 () Bool)

(declare-fun e!304135 () Bool)

(assert (=> b!521299 (= e!304139 (not e!304135))))

(declare-fun res!319241 () Bool)

(assert (=> b!521299 (=> res!319241 e!304135)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4428 0))(
  ( (MissingZero!4428 (index!19915 (_ BitVec 32))) (Found!4428 (index!19916 (_ BitVec 32))) (Intermediate!4428 (undefined!5240 Bool) (index!19917 (_ BitVec 32)) (x!48929 (_ BitVec 32))) (Undefined!4428) (MissingVacant!4428 (index!19918 (_ BitVec 32))) )
))
(declare-fun lt!238960 () SeekEntryResult!4428)

(declare-fun lt!238962 () (_ BitVec 64))

(declare-datatypes ((array!33202 0))(
  ( (array!33203 (arr!15954 (Array (_ BitVec 32) (_ BitVec 64))) (size!16318 (_ BitVec 32))) )
))
(declare-fun lt!238959 () array!33202)

(declare-fun lt!238957 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33202 (_ BitVec 32)) SeekEntryResult!4428)

(assert (=> b!521299 (= res!319241 (= lt!238960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238957 lt!238962 lt!238959 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238956 () (_ BitVec 32))

(declare-fun a!3235 () array!33202)

(assert (=> b!521299 (= lt!238960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238956 (select (arr!15954 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521299 (= lt!238957 (toIndex!0 lt!238962 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521299 (= lt!238962 (select (store (arr!15954 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521299 (= lt!238956 (toIndex!0 (select (arr!15954 a!3235) j!176) mask!3524))))

(assert (=> b!521299 (= lt!238959 (array!33203 (store (arr!15954 a!3235) i!1204 k!2280) (size!16318 a!3235)))))

(declare-fun e!304141 () Bool)

(assert (=> b!521299 e!304141))

(declare-fun res!319247 () Bool)

(assert (=> b!521299 (=> (not res!319247) (not e!304141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33202 (_ BitVec 32)) Bool)

(assert (=> b!521299 (= res!319247 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16178 0))(
  ( (Unit!16179) )
))
(declare-fun lt!238964 () Unit!16178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33202 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16178)

(assert (=> b!521299 (= lt!238964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521300 () Bool)

(declare-fun res!319248 () Bool)

(declare-fun e!304137 () Bool)

(assert (=> b!521300 (=> (not res!319248) (not e!304137))))

(assert (=> b!521300 (= res!319248 (and (= (size!16318 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16318 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16318 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521301 () Bool)

(declare-fun e!304140 () Unit!16178)

(declare-fun Unit!16180 () Unit!16178)

(assert (=> b!521301 (= e!304140 Unit!16180)))

(declare-fun lt!238961 () Unit!16178)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33202 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16178)

(assert (=> b!521301 (= lt!238961 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238956 #b00000000000000000000000000000000 (index!19917 lt!238960) (x!48929 lt!238960) mask!3524))))

(declare-fun res!319245 () Bool)

(assert (=> b!521301 (= res!319245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238956 lt!238962 lt!238959 mask!3524) (Intermediate!4428 false (index!19917 lt!238960) (x!48929 lt!238960))))))

(declare-fun e!304136 () Bool)

(assert (=> b!521301 (=> (not res!319245) (not e!304136))))

(assert (=> b!521301 e!304136))

(declare-fun b!521302 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33202 (_ BitVec 32)) SeekEntryResult!4428)

(assert (=> b!521302 (= e!304141 (= (seekEntryOrOpen!0 (select (arr!15954 a!3235) j!176) a!3235 mask!3524) (Found!4428 j!176)))))

(declare-fun b!521303 () Bool)

(declare-fun res!319243 () Bool)

(assert (=> b!521303 (=> (not res!319243) (not e!304137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521303 (= res!319243 (validKeyInArray!0 k!2280))))

(declare-fun b!521304 () Bool)

(declare-fun res!319242 () Bool)

(assert (=> b!521304 (=> (not res!319242) (not e!304137))))

(declare-fun arrayContainsKey!0 (array!33202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521304 (= res!319242 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521305 () Bool)

(assert (=> b!521305 (= e!304137 e!304139)))

(declare-fun res!319250 () Bool)

(assert (=> b!521305 (=> (not res!319250) (not e!304139))))

(declare-fun lt!238963 () SeekEntryResult!4428)

(assert (=> b!521305 (= res!319250 (or (= lt!238963 (MissingZero!4428 i!1204)) (= lt!238963 (MissingVacant!4428 i!1204))))))

(assert (=> b!521305 (= lt!238963 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521306 () Bool)

(declare-fun res!319244 () Bool)

(assert (=> b!521306 (=> (not res!319244) (not e!304137))))

(assert (=> b!521306 (= res!319244 (validKeyInArray!0 (select (arr!15954 a!3235) j!176)))))

(declare-fun b!521307 () Bool)

(declare-fun res!319246 () Bool)

(assert (=> b!521307 (=> (not res!319246) (not e!304139))))

(declare-datatypes ((List!10165 0))(
  ( (Nil!10162) (Cons!10161 (h!11083 (_ BitVec 64)) (t!16401 List!10165)) )
))
(declare-fun arrayNoDuplicates!0 (array!33202 (_ BitVec 32) List!10165) Bool)

(assert (=> b!521307 (= res!319246 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10162))))

(declare-fun b!521308 () Bool)

(declare-fun res!319249 () Bool)

(assert (=> b!521308 (=> res!319249 e!304135)))

(assert (=> b!521308 (= res!319249 (or (undefined!5240 lt!238960) (not (is-Intermediate!4428 lt!238960))))))

(declare-fun res!319240 () Bool)

(assert (=> start!47416 (=> (not res!319240) (not e!304137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47416 (= res!319240 (validMask!0 mask!3524))))

(assert (=> start!47416 e!304137))

(assert (=> start!47416 true))

(declare-fun array_inv!11728 (array!33202) Bool)

(assert (=> start!47416 (array_inv!11728 a!3235)))

(declare-fun b!521309 () Bool)

(declare-fun res!319239 () Bool)

(assert (=> b!521309 (=> (not res!319239) (not e!304139))))

(assert (=> b!521309 (= res!319239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521310 () Bool)

(assert (=> b!521310 (= e!304136 false)))

(declare-fun b!521311 () Bool)

(assert (=> b!521311 (= e!304135 true)))

(assert (=> b!521311 (and (or (= (select (arr!15954 a!3235) (index!19917 lt!238960)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15954 a!3235) (index!19917 lt!238960)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15954 a!3235) (index!19917 lt!238960)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15954 a!3235) (index!19917 lt!238960)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238958 () Unit!16178)

(assert (=> b!521311 (= lt!238958 e!304140)))

(declare-fun c!61331 () Bool)

(assert (=> b!521311 (= c!61331 (= (select (arr!15954 a!3235) (index!19917 lt!238960)) (select (arr!15954 a!3235) j!176)))))

(assert (=> b!521311 (and (bvslt (x!48929 lt!238960) #b01111111111111111111111111111110) (or (= (select (arr!15954 a!3235) (index!19917 lt!238960)) (select (arr!15954 a!3235) j!176)) (= (select (arr!15954 a!3235) (index!19917 lt!238960)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15954 a!3235) (index!19917 lt!238960)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521312 () Bool)

(declare-fun Unit!16181 () Unit!16178)

(assert (=> b!521312 (= e!304140 Unit!16181)))

(assert (= (and start!47416 res!319240) b!521300))

(assert (= (and b!521300 res!319248) b!521306))

(assert (= (and b!521306 res!319244) b!521303))

(assert (= (and b!521303 res!319243) b!521304))

(assert (= (and b!521304 res!319242) b!521305))

(assert (= (and b!521305 res!319250) b!521309))

(assert (= (and b!521309 res!319239) b!521307))

(assert (= (and b!521307 res!319246) b!521299))

(assert (= (and b!521299 res!319247) b!521302))

(assert (= (and b!521299 (not res!319241)) b!521308))

(assert (= (and b!521308 (not res!319249)) b!521311))

(assert (= (and b!521311 c!61331) b!521301))

(assert (= (and b!521311 (not c!61331)) b!521312))

(assert (= (and b!521301 res!319245) b!521310))

(declare-fun m!502249 () Bool)

(assert (=> b!521307 m!502249))

(declare-fun m!502251 () Bool)

(assert (=> b!521303 m!502251))

(declare-fun m!502253 () Bool)

(assert (=> b!521309 m!502253))

(declare-fun m!502255 () Bool)

(assert (=> b!521301 m!502255))

(declare-fun m!502257 () Bool)

(assert (=> b!521301 m!502257))

(declare-fun m!502259 () Bool)

(assert (=> b!521304 m!502259))

(declare-fun m!502261 () Bool)

(assert (=> b!521306 m!502261))

(assert (=> b!521306 m!502261))

(declare-fun m!502263 () Bool)

(assert (=> b!521306 m!502263))

(declare-fun m!502265 () Bool)

(assert (=> b!521311 m!502265))

(assert (=> b!521311 m!502261))

(assert (=> b!521299 m!502261))

(declare-fun m!502267 () Bool)

(assert (=> b!521299 m!502267))

(declare-fun m!502269 () Bool)

(assert (=> b!521299 m!502269))

(declare-fun m!502271 () Bool)

(assert (=> b!521299 m!502271))

(declare-fun m!502273 () Bool)

(assert (=> b!521299 m!502273))

(assert (=> b!521299 m!502261))

(declare-fun m!502275 () Bool)

(assert (=> b!521299 m!502275))

(declare-fun m!502277 () Bool)

(assert (=> b!521299 m!502277))

(assert (=> b!521299 m!502261))

(declare-fun m!502279 () Bool)

(assert (=> b!521299 m!502279))

(declare-fun m!502281 () Bool)

(assert (=> b!521299 m!502281))

(assert (=> b!521302 m!502261))

(assert (=> b!521302 m!502261))

(declare-fun m!502283 () Bool)

(assert (=> b!521302 m!502283))

(declare-fun m!502285 () Bool)

(assert (=> start!47416 m!502285))

(declare-fun m!502287 () Bool)

(assert (=> start!47416 m!502287))

(declare-fun m!502289 () Bool)

(assert (=> b!521305 m!502289))

(push 1)

