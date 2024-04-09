; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32694 () Bool)

(assert start!32694)

(declare-fun b!326388 () Bool)

(declare-fun res!179582 () Bool)

(declare-fun e!200960 () Bool)

(assert (=> b!326388 (=> (not res!179582) (not e!200960))))

(declare-datatypes ((array!16727 0))(
  ( (array!16728 (arr!7915 (Array (_ BitVec 32) (_ BitVec 64))) (size!8267 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16727)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326388 (= res!179582 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326389 () Bool)

(declare-fun res!179583 () Bool)

(declare-fun e!200961 () Bool)

(assert (=> b!326389 (=> (not res!179583) (not e!200961))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3057 0))(
  ( (MissingZero!3057 (index!14404 (_ BitVec 32))) (Found!3057 (index!14405 (_ BitVec 32))) (Intermediate!3057 (undefined!3869 Bool) (index!14406 (_ BitVec 32)) (x!32618 (_ BitVec 32))) (Undefined!3057) (MissingVacant!3057 (index!14407 (_ BitVec 32))) )
))
(declare-fun lt!157315 () SeekEntryResult!3057)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16727 (_ BitVec 32)) SeekEntryResult!3057)

(assert (=> b!326389 (= res!179583 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157315))))

(declare-fun b!326390 () Bool)

(declare-fun res!179579 () Bool)

(assert (=> b!326390 (=> (not res!179579) (not e!200960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326390 (= res!179579 (validKeyInArray!0 k!2497))))

(declare-fun b!326391 () Bool)

(declare-fun res!179578 () Bool)

(assert (=> b!326391 (=> (not res!179578) (not e!200960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16727 (_ BitVec 32)) Bool)

(assert (=> b!326391 (= res!179578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!179581 () Bool)

(assert (=> start!32694 (=> (not res!179581) (not e!200960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32694 (= res!179581 (validMask!0 mask!3777))))

(assert (=> start!32694 e!200960))

(declare-fun array_inv!5869 (array!16727) Bool)

(assert (=> start!32694 (array_inv!5869 a!3305)))

(assert (=> start!32694 true))

(declare-fun b!326392 () Bool)

(declare-fun res!179577 () Bool)

(assert (=> b!326392 (=> (not res!179577) (not e!200961))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326392 (= res!179577 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7915 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326393 () Bool)

(assert (=> b!326393 (= e!200961 false)))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((Unit!10123 0))(
  ( (Unit!10124) )
))
(declare-fun lt!157316 () Unit!10123)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16727 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10123)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326393 (= lt!157316 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326394 () Bool)

(declare-fun res!179580 () Bool)

(assert (=> b!326394 (=> (not res!179580) (not e!200960))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16727 (_ BitVec 32)) SeekEntryResult!3057)

(assert (=> b!326394 (= res!179580 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3057 i!1250)))))

(declare-fun b!326395 () Bool)

(declare-fun res!179585 () Bool)

(assert (=> b!326395 (=> (not res!179585) (not e!200960))))

(assert (=> b!326395 (= res!179585 (and (= (size!8267 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8267 a!3305))))))

(declare-fun b!326396 () Bool)

(assert (=> b!326396 (= e!200960 e!200961)))

(declare-fun res!179586 () Bool)

(assert (=> b!326396 (=> (not res!179586) (not e!200961))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326396 (= res!179586 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157315))))

(assert (=> b!326396 (= lt!157315 (Intermediate!3057 false resIndex!58 resX!58))))

(declare-fun b!326397 () Bool)

(declare-fun res!179584 () Bool)

(assert (=> b!326397 (=> (not res!179584) (not e!200961))))

(assert (=> b!326397 (= res!179584 (and (= (select (arr!7915 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8267 a!3305))))))

(assert (= (and start!32694 res!179581) b!326395))

(assert (= (and b!326395 res!179585) b!326390))

(assert (= (and b!326390 res!179579) b!326388))

(assert (= (and b!326388 res!179582) b!326394))

(assert (= (and b!326394 res!179580) b!326391))

(assert (= (and b!326391 res!179578) b!326396))

(assert (= (and b!326396 res!179586) b!326397))

(assert (= (and b!326397 res!179584) b!326389))

(assert (= (and b!326389 res!179583) b!326392))

(assert (= (and b!326392 res!179577) b!326393))

(declare-fun m!332959 () Bool)

(assert (=> start!32694 m!332959))

(declare-fun m!332961 () Bool)

(assert (=> start!32694 m!332961))

(declare-fun m!332963 () Bool)

(assert (=> b!326392 m!332963))

(declare-fun m!332965 () Bool)

(assert (=> b!326394 m!332965))

(declare-fun m!332967 () Bool)

(assert (=> b!326391 m!332967))

(declare-fun m!332969 () Bool)

(assert (=> b!326389 m!332969))

(declare-fun m!332971 () Bool)

(assert (=> b!326390 m!332971))

(declare-fun m!332973 () Bool)

(assert (=> b!326396 m!332973))

(assert (=> b!326396 m!332973))

(declare-fun m!332975 () Bool)

(assert (=> b!326396 m!332975))

(declare-fun m!332977 () Bool)

(assert (=> b!326397 m!332977))

(declare-fun m!332979 () Bool)

(assert (=> b!326388 m!332979))

(declare-fun m!332981 () Bool)

(assert (=> b!326393 m!332981))

(assert (=> b!326393 m!332981))

(declare-fun m!332983 () Bool)

(assert (=> b!326393 m!332983))

(push 1)

