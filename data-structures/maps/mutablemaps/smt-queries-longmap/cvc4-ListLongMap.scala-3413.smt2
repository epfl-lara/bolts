; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47414 () Bool)

(assert start!47414)

(declare-fun b!521257 () Bool)

(declare-datatypes ((Unit!16174 0))(
  ( (Unit!16175) )
))
(declare-fun e!304117 () Unit!16174)

(declare-fun Unit!16176 () Unit!16174)

(assert (=> b!521257 (= e!304117 Unit!16176)))

(declare-fun b!521258 () Bool)

(declare-fun res!319208 () Bool)

(declare-fun e!304119 () Bool)

(assert (=> b!521258 (=> (not res!319208) (not e!304119))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33200 0))(
  ( (array!33201 (arr!15953 (Array (_ BitVec 32) (_ BitVec 64))) (size!16317 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33200)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521258 (= res!319208 (and (= (size!16317 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16317 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16317 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521259 () Bool)

(declare-fun res!319209 () Bool)

(declare-fun e!304115 () Bool)

(assert (=> b!521259 (=> (not res!319209) (not e!304115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33200 (_ BitVec 32)) Bool)

(assert (=> b!521259 (= res!319209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521260 () Bool)

(declare-fun res!319211 () Bool)

(assert (=> b!521260 (=> (not res!319211) (not e!304115))))

(declare-datatypes ((List!10164 0))(
  ( (Nil!10161) (Cons!10160 (h!11082 (_ BitVec 64)) (t!16400 List!10164)) )
))
(declare-fun arrayNoDuplicates!0 (array!33200 (_ BitVec 32) List!10164) Bool)

(assert (=> b!521260 (= res!319211 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10161))))

(declare-fun b!521261 () Bool)

(declare-fun e!304118 () Bool)

(declare-datatypes ((SeekEntryResult!4427 0))(
  ( (MissingZero!4427 (index!19911 (_ BitVec 32))) (Found!4427 (index!19912 (_ BitVec 32))) (Intermediate!4427 (undefined!5239 Bool) (index!19913 (_ BitVec 32)) (x!48920 (_ BitVec 32))) (Undefined!4427) (MissingVacant!4427 (index!19914 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33200 (_ BitVec 32)) SeekEntryResult!4427)

(assert (=> b!521261 (= e!304118 (= (seekEntryOrOpen!0 (select (arr!15953 a!3235) j!176) a!3235 mask!3524) (Found!4427 j!176)))))

(declare-fun res!319207 () Bool)

(assert (=> start!47414 (=> (not res!319207) (not e!304119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47414 (= res!319207 (validMask!0 mask!3524))))

(assert (=> start!47414 e!304119))

(assert (=> start!47414 true))

(declare-fun array_inv!11727 (array!33200) Bool)

(assert (=> start!47414 (array_inv!11727 a!3235)))

(declare-fun b!521262 () Bool)

(declare-fun res!319203 () Bool)

(assert (=> b!521262 (=> (not res!319203) (not e!304119))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521262 (= res!319203 (validKeyInArray!0 k!2280))))

(declare-fun b!521263 () Bool)

(declare-fun res!319204 () Bool)

(assert (=> b!521263 (=> (not res!319204) (not e!304119))))

(declare-fun arrayContainsKey!0 (array!33200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521263 (= res!319204 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521264 () Bool)

(declare-fun e!304116 () Bool)

(assert (=> b!521264 (= e!304115 (not e!304116))))

(declare-fun res!319205 () Bool)

(assert (=> b!521264 (=> res!319205 e!304116)))

(declare-fun lt!238934 () (_ BitVec 32))

(declare-fun lt!238932 () (_ BitVec 64))

(declare-fun lt!238933 () SeekEntryResult!4427)

(declare-fun lt!238929 () array!33200)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33200 (_ BitVec 32)) SeekEntryResult!4427)

(assert (=> b!521264 (= res!319205 (= lt!238933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238934 lt!238932 lt!238929 mask!3524)))))

(declare-fun lt!238935 () (_ BitVec 32))

(assert (=> b!521264 (= lt!238933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238935 (select (arr!15953 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521264 (= lt!238934 (toIndex!0 lt!238932 mask!3524))))

(assert (=> b!521264 (= lt!238932 (select (store (arr!15953 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521264 (= lt!238935 (toIndex!0 (select (arr!15953 a!3235) j!176) mask!3524))))

(assert (=> b!521264 (= lt!238929 (array!33201 (store (arr!15953 a!3235) i!1204 k!2280) (size!16317 a!3235)))))

(assert (=> b!521264 e!304118))

(declare-fun res!319206 () Bool)

(assert (=> b!521264 (=> (not res!319206) (not e!304118))))

(assert (=> b!521264 (= res!319206 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238930 () Unit!16174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33200 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16174)

(assert (=> b!521264 (= lt!238930 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521265 () Bool)

(assert (=> b!521265 (= e!304116 true)))

(assert (=> b!521265 (and (or (= (select (arr!15953 a!3235) (index!19913 lt!238933)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15953 a!3235) (index!19913 lt!238933)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15953 a!3235) (index!19913 lt!238933)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15953 a!3235) (index!19913 lt!238933)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238936 () Unit!16174)

(assert (=> b!521265 (= lt!238936 e!304117)))

(declare-fun c!61328 () Bool)

(assert (=> b!521265 (= c!61328 (= (select (arr!15953 a!3235) (index!19913 lt!238933)) (select (arr!15953 a!3235) j!176)))))

(assert (=> b!521265 (and (bvslt (x!48920 lt!238933) #b01111111111111111111111111111110) (or (= (select (arr!15953 a!3235) (index!19913 lt!238933)) (select (arr!15953 a!3235) j!176)) (= (select (arr!15953 a!3235) (index!19913 lt!238933)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15953 a!3235) (index!19913 lt!238933)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521266 () Bool)

(declare-fun res!319213 () Bool)

(assert (=> b!521266 (=> (not res!319213) (not e!304119))))

(assert (=> b!521266 (= res!319213 (validKeyInArray!0 (select (arr!15953 a!3235) j!176)))))

(declare-fun b!521267 () Bool)

(declare-fun e!304114 () Bool)

(assert (=> b!521267 (= e!304114 false)))

(declare-fun b!521268 () Bool)

(declare-fun Unit!16177 () Unit!16174)

(assert (=> b!521268 (= e!304117 Unit!16177)))

(declare-fun lt!238931 () Unit!16174)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33200 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16174)

(assert (=> b!521268 (= lt!238931 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238935 #b00000000000000000000000000000000 (index!19913 lt!238933) (x!48920 lt!238933) mask!3524))))

(declare-fun res!319210 () Bool)

(assert (=> b!521268 (= res!319210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238935 lt!238932 lt!238929 mask!3524) (Intermediate!4427 false (index!19913 lt!238933) (x!48920 lt!238933))))))

(assert (=> b!521268 (=> (not res!319210) (not e!304114))))

(assert (=> b!521268 e!304114))

(declare-fun b!521269 () Bool)

(declare-fun res!319214 () Bool)

(assert (=> b!521269 (=> res!319214 e!304116)))

(assert (=> b!521269 (= res!319214 (or (undefined!5239 lt!238933) (not (is-Intermediate!4427 lt!238933))))))

(declare-fun b!521270 () Bool)

(assert (=> b!521270 (= e!304119 e!304115)))

(declare-fun res!319212 () Bool)

(assert (=> b!521270 (=> (not res!319212) (not e!304115))))

(declare-fun lt!238937 () SeekEntryResult!4427)

(assert (=> b!521270 (= res!319212 (or (= lt!238937 (MissingZero!4427 i!1204)) (= lt!238937 (MissingVacant!4427 i!1204))))))

(assert (=> b!521270 (= lt!238937 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!47414 res!319207) b!521258))

(assert (= (and b!521258 res!319208) b!521266))

(assert (= (and b!521266 res!319213) b!521262))

(assert (= (and b!521262 res!319203) b!521263))

(assert (= (and b!521263 res!319204) b!521270))

(assert (= (and b!521270 res!319212) b!521259))

(assert (= (and b!521259 res!319209) b!521260))

(assert (= (and b!521260 res!319211) b!521264))

(assert (= (and b!521264 res!319206) b!521261))

(assert (= (and b!521264 (not res!319205)) b!521269))

(assert (= (and b!521269 (not res!319214)) b!521265))

(assert (= (and b!521265 c!61328) b!521268))

(assert (= (and b!521265 (not c!61328)) b!521257))

(assert (= (and b!521268 res!319210) b!521267))

(declare-fun m!502207 () Bool)

(assert (=> start!47414 m!502207))

(declare-fun m!502209 () Bool)

(assert (=> start!47414 m!502209))

(declare-fun m!502211 () Bool)

(assert (=> b!521270 m!502211))

(declare-fun m!502213 () Bool)

(assert (=> b!521263 m!502213))

(declare-fun m!502215 () Bool)

(assert (=> b!521260 m!502215))

(declare-fun m!502217 () Bool)

(assert (=> b!521266 m!502217))

(assert (=> b!521266 m!502217))

(declare-fun m!502219 () Bool)

(assert (=> b!521266 m!502219))

(declare-fun m!502221 () Bool)

(assert (=> b!521259 m!502221))

(assert (=> b!521261 m!502217))

(assert (=> b!521261 m!502217))

(declare-fun m!502223 () Bool)

(assert (=> b!521261 m!502223))

(declare-fun m!502225 () Bool)

(assert (=> b!521268 m!502225))

(declare-fun m!502227 () Bool)

(assert (=> b!521268 m!502227))

(declare-fun m!502229 () Bool)

(assert (=> b!521262 m!502229))

(declare-fun m!502231 () Bool)

(assert (=> b!521265 m!502231))

(assert (=> b!521265 m!502217))

(declare-fun m!502233 () Bool)

(assert (=> b!521264 m!502233))

(declare-fun m!502235 () Bool)

(assert (=> b!521264 m!502235))

(declare-fun m!502237 () Bool)

(assert (=> b!521264 m!502237))

(declare-fun m!502239 () Bool)

(assert (=> b!521264 m!502239))

(declare-fun m!502241 () Bool)

(assert (=> b!521264 m!502241))

(assert (=> b!521264 m!502217))

(declare-fun m!502243 () Bool)

(assert (=> b!521264 m!502243))

(assert (=> b!521264 m!502217))

(declare-fun m!502245 () Bool)

(assert (=> b!521264 m!502245))

(assert (=> b!521264 m!502217))

(declare-fun m!502247 () Bool)

(assert (=> b!521264 m!502247))

(push 1)

