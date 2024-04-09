; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47462 () Bool)

(assert start!47462)

(declare-fun b!522265 () Bool)

(declare-fun res!320067 () Bool)

(declare-fun e!304624 () Bool)

(assert (=> b!522265 (=> (not res!320067) (not e!304624))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33248 0))(
  ( (array!33249 (arr!15977 (Array (_ BitVec 32) (_ BitVec 64))) (size!16341 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33248)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!522265 (= res!320067 (and (= (size!16341 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16341 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16341 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522266 () Bool)

(declare-fun e!304623 () Bool)

(assert (=> b!522266 (= e!304623 true)))

(declare-datatypes ((SeekEntryResult!4451 0))(
  ( (MissingZero!4451 (index!20007 (_ BitVec 32))) (Found!4451 (index!20008 (_ BitVec 32))) (Intermediate!4451 (undefined!5263 Bool) (index!20009 (_ BitVec 32)) (x!49008 (_ BitVec 32))) (Undefined!4451) (MissingVacant!4451 (index!20010 (_ BitVec 32))) )
))
(declare-fun lt!239578 () SeekEntryResult!4451)

(assert (=> b!522266 (and (or (= (select (arr!15977 a!3235) (index!20009 lt!239578)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15977 a!3235) (index!20009 lt!239578)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15977 a!3235) (index!20009 lt!239578)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15977 a!3235) (index!20009 lt!239578)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16270 0))(
  ( (Unit!16271) )
))
(declare-fun lt!239581 () Unit!16270)

(declare-fun e!304621 () Unit!16270)

(assert (=> b!522266 (= lt!239581 e!304621)))

(declare-fun c!61400 () Bool)

(assert (=> b!522266 (= c!61400 (= (select (arr!15977 a!3235) (index!20009 lt!239578)) (select (arr!15977 a!3235) j!176)))))

(assert (=> b!522266 (and (bvslt (x!49008 lt!239578) #b01111111111111111111111111111110) (or (= (select (arr!15977 a!3235) (index!20009 lt!239578)) (select (arr!15977 a!3235) j!176)) (= (select (arr!15977 a!3235) (index!20009 lt!239578)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15977 a!3235) (index!20009 lt!239578)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522267 () Bool)

(declare-fun Unit!16272 () Unit!16270)

(assert (=> b!522267 (= e!304621 Unit!16272)))

(declare-fun b!522268 () Bool)

(declare-fun e!304622 () Bool)

(assert (=> b!522268 (= e!304622 false)))

(declare-fun b!522269 () Bool)

(declare-fun res!320071 () Bool)

(assert (=> b!522269 (=> res!320071 e!304623)))

(assert (=> b!522269 (= res!320071 (or (undefined!5263 lt!239578) (not (is-Intermediate!4451 lt!239578))))))

(declare-fun b!522270 () Bool)

(declare-fun e!304618 () Bool)

(assert (=> b!522270 (= e!304624 e!304618)))

(declare-fun res!320074 () Bool)

(assert (=> b!522270 (=> (not res!320074) (not e!304618))))

(declare-fun lt!239579 () SeekEntryResult!4451)

(assert (=> b!522270 (= res!320074 (or (= lt!239579 (MissingZero!4451 i!1204)) (= lt!239579 (MissingVacant!4451 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33248 (_ BitVec 32)) SeekEntryResult!4451)

(assert (=> b!522270 (= lt!239579 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522271 () Bool)

(declare-fun res!320070 () Bool)

(assert (=> b!522271 (=> (not res!320070) (not e!304618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33248 (_ BitVec 32)) Bool)

(assert (=> b!522271 (= res!320070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522272 () Bool)

(declare-fun res!320075 () Bool)

(assert (=> b!522272 (=> (not res!320075) (not e!304624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522272 (= res!320075 (validKeyInArray!0 (select (arr!15977 a!3235) j!176)))))

(declare-fun e!304620 () Bool)

(declare-fun b!522273 () Bool)

(assert (=> b!522273 (= e!304620 (= (seekEntryOrOpen!0 (select (arr!15977 a!3235) j!176) a!3235 mask!3524) (Found!4451 j!176)))))

(declare-fun b!522274 () Bool)

(declare-fun res!320076 () Bool)

(assert (=> b!522274 (=> (not res!320076) (not e!304624))))

(assert (=> b!522274 (= res!320076 (validKeyInArray!0 k!2280))))

(declare-fun b!522275 () Bool)

(declare-fun res!320077 () Bool)

(assert (=> b!522275 (=> (not res!320077) (not e!304624))))

(declare-fun arrayContainsKey!0 (array!33248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522275 (= res!320077 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522276 () Bool)

(assert (=> b!522276 (= e!304618 (not e!304623))))

(declare-fun res!320078 () Bool)

(assert (=> b!522276 (=> res!320078 e!304623)))

(declare-fun lt!239582 () (_ BitVec 64))

(declare-fun lt!239585 () (_ BitVec 32))

(declare-fun lt!239577 () array!33248)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33248 (_ BitVec 32)) SeekEntryResult!4451)

(assert (=> b!522276 (= res!320078 (= lt!239578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239585 lt!239582 lt!239577 mask!3524)))))

(declare-fun lt!239583 () (_ BitVec 32))

(assert (=> b!522276 (= lt!239578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239583 (select (arr!15977 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522276 (= lt!239585 (toIndex!0 lt!239582 mask!3524))))

(assert (=> b!522276 (= lt!239582 (select (store (arr!15977 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522276 (= lt!239583 (toIndex!0 (select (arr!15977 a!3235) j!176) mask!3524))))

(assert (=> b!522276 (= lt!239577 (array!33249 (store (arr!15977 a!3235) i!1204 k!2280) (size!16341 a!3235)))))

(assert (=> b!522276 e!304620))

(declare-fun res!320073 () Bool)

(assert (=> b!522276 (=> (not res!320073) (not e!304620))))

(assert (=> b!522276 (= res!320073 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239584 () Unit!16270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33248 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16270)

(assert (=> b!522276 (= lt!239584 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!320069 () Bool)

(assert (=> start!47462 (=> (not res!320069) (not e!304624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47462 (= res!320069 (validMask!0 mask!3524))))

(assert (=> start!47462 e!304624))

(assert (=> start!47462 true))

(declare-fun array_inv!11751 (array!33248) Bool)

(assert (=> start!47462 (array_inv!11751 a!3235)))

(declare-fun b!522277 () Bool)

(declare-fun res!320068 () Bool)

(assert (=> b!522277 (=> (not res!320068) (not e!304618))))

(declare-datatypes ((List!10188 0))(
  ( (Nil!10185) (Cons!10184 (h!11106 (_ BitVec 64)) (t!16424 List!10188)) )
))
(declare-fun arrayNoDuplicates!0 (array!33248 (_ BitVec 32) List!10188) Bool)

(assert (=> b!522277 (= res!320068 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10185))))

(declare-fun b!522278 () Bool)

(declare-fun Unit!16273 () Unit!16270)

(assert (=> b!522278 (= e!304621 Unit!16273)))

(declare-fun lt!239580 () Unit!16270)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33248 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16270)

(assert (=> b!522278 (= lt!239580 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239583 #b00000000000000000000000000000000 (index!20009 lt!239578) (x!49008 lt!239578) mask!3524))))

(declare-fun res!320072 () Bool)

(assert (=> b!522278 (= res!320072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239583 lt!239582 lt!239577 mask!3524) (Intermediate!4451 false (index!20009 lt!239578) (x!49008 lt!239578))))))

(assert (=> b!522278 (=> (not res!320072) (not e!304622))))

(assert (=> b!522278 e!304622))

(assert (= (and start!47462 res!320069) b!522265))

(assert (= (and b!522265 res!320067) b!522272))

(assert (= (and b!522272 res!320075) b!522274))

(assert (= (and b!522274 res!320076) b!522275))

(assert (= (and b!522275 res!320077) b!522270))

(assert (= (and b!522270 res!320074) b!522271))

(assert (= (and b!522271 res!320070) b!522277))

(assert (= (and b!522277 res!320068) b!522276))

(assert (= (and b!522276 res!320073) b!522273))

(assert (= (and b!522276 (not res!320078)) b!522269))

(assert (= (and b!522269 (not res!320071)) b!522266))

(assert (= (and b!522266 c!61400) b!522278))

(assert (= (and b!522266 (not c!61400)) b!522267))

(assert (= (and b!522278 res!320072) b!522268))

(declare-fun m!503215 () Bool)

(assert (=> b!522272 m!503215))

(assert (=> b!522272 m!503215))

(declare-fun m!503217 () Bool)

(assert (=> b!522272 m!503217))

(declare-fun m!503219 () Bool)

(assert (=> b!522275 m!503219))

(declare-fun m!503221 () Bool)

(assert (=> start!47462 m!503221))

(declare-fun m!503223 () Bool)

(assert (=> start!47462 m!503223))

(assert (=> b!522273 m!503215))

(assert (=> b!522273 m!503215))

(declare-fun m!503225 () Bool)

(assert (=> b!522273 m!503225))

(declare-fun m!503227 () Bool)

(assert (=> b!522276 m!503227))

(assert (=> b!522276 m!503215))

(declare-fun m!503229 () Bool)

(assert (=> b!522276 m!503229))

(declare-fun m!503231 () Bool)

(assert (=> b!522276 m!503231))

(declare-fun m!503233 () Bool)

(assert (=> b!522276 m!503233))

(declare-fun m!503235 () Bool)

(assert (=> b!522276 m!503235))

(assert (=> b!522276 m!503215))

(declare-fun m!503237 () Bool)

(assert (=> b!522276 m!503237))

(declare-fun m!503239 () Bool)

(assert (=> b!522276 m!503239))

(declare-fun m!503241 () Bool)

(assert (=> b!522276 m!503241))

(assert (=> b!522276 m!503215))

(declare-fun m!503243 () Bool)

(assert (=> b!522266 m!503243))

(assert (=> b!522266 m!503215))

(declare-fun m!503245 () Bool)

(assert (=> b!522270 m!503245))

(declare-fun m!503247 () Bool)

(assert (=> b!522278 m!503247))

(declare-fun m!503249 () Bool)

(assert (=> b!522278 m!503249))

(declare-fun m!503251 () Bool)

(assert (=> b!522274 m!503251))

(declare-fun m!503253 () Bool)

(assert (=> b!522271 m!503253))

(declare-fun m!503255 () Bool)

(assert (=> b!522277 m!503255))

(push 1)

