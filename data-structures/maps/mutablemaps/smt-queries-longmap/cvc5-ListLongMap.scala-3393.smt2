; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46780 () Bool)

(assert start!46780)

(declare-fun b!516373 () Bool)

(declare-fun res!316093 () Bool)

(declare-fun e!301353 () Bool)

(assert (=> b!516373 (=> res!316093 e!301353)))

(declare-datatypes ((SeekEntryResult!4365 0))(
  ( (MissingZero!4365 (index!19648 (_ BitVec 32))) (Found!4365 (index!19649 (_ BitVec 32))) (Intermediate!4365 (undefined!5177 Bool) (index!19650 (_ BitVec 32)) (x!48635 (_ BitVec 32))) (Undefined!4365) (MissingVacant!4365 (index!19651 (_ BitVec 32))) )
))
(declare-fun lt!236440 () SeekEntryResult!4365)

(assert (=> b!516373 (= res!316093 (or (undefined!5177 lt!236440) (not (is-Intermediate!4365 lt!236440))))))

(declare-fun e!301357 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33052 0))(
  ( (array!33053 (arr!15891 (Array (_ BitVec 32) (_ BitVec 64))) (size!16255 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33052)

(declare-fun b!516374 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33052 (_ BitVec 32)) SeekEntryResult!4365)

(assert (=> b!516374 (= e!301357 (= (seekEntryOrOpen!0 (select (arr!15891 a!3235) j!176) a!3235 mask!3524) (Found!4365 j!176)))))

(declare-fun b!516375 () Bool)

(declare-fun res!316097 () Bool)

(declare-fun e!301356 () Bool)

(assert (=> b!516375 (=> (not res!316097) (not e!301356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516375 (= res!316097 (validKeyInArray!0 (select (arr!15891 a!3235) j!176)))))

(declare-fun b!516376 () Bool)

(declare-fun res!316088 () Bool)

(assert (=> b!516376 (=> (not res!316088) (not e!301356))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!516376 (= res!316088 (validKeyInArray!0 k!2280))))

(declare-fun b!516377 () Bool)

(declare-fun res!316096 () Bool)

(declare-fun e!301354 () Bool)

(assert (=> b!516377 (=> (not res!316096) (not e!301354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33052 (_ BitVec 32)) Bool)

(assert (=> b!516377 (= res!316096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516378 () Bool)

(declare-fun res!316087 () Bool)

(assert (=> b!516378 (=> (not res!316087) (not e!301354))))

(declare-datatypes ((List!10102 0))(
  ( (Nil!10099) (Cons!10098 (h!10996 (_ BitVec 64)) (t!16338 List!10102)) )
))
(declare-fun arrayNoDuplicates!0 (array!33052 (_ BitVec 32) List!10102) Bool)

(assert (=> b!516378 (= res!316087 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10099))))

(declare-fun b!516379 () Bool)

(assert (=> b!516379 (= e!301353 (or (not (= (select (arr!15891 a!3235) (index!19650 lt!236440)) (select (arr!15891 a!3235) j!176))) (bvsle (x!48635 lt!236440) #b01111111111111111111111111111110)))))

(assert (=> b!516379 (and (bvslt (x!48635 lt!236440) #b01111111111111111111111111111110) (or (= (select (arr!15891 a!3235) (index!19650 lt!236440)) (select (arr!15891 a!3235) j!176)) (= (select (arr!15891 a!3235) (index!19650 lt!236440)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15891 a!3235) (index!19650 lt!236440)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!316092 () Bool)

(assert (=> start!46780 (=> (not res!316092) (not e!301356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46780 (= res!316092 (validMask!0 mask!3524))))

(assert (=> start!46780 e!301356))

(assert (=> start!46780 true))

(declare-fun array_inv!11665 (array!33052) Bool)

(assert (=> start!46780 (array_inv!11665 a!3235)))

(declare-fun b!516380 () Bool)

(assert (=> b!516380 (= e!301356 e!301354)))

(declare-fun res!316094 () Bool)

(assert (=> b!516380 (=> (not res!316094) (not e!301354))))

(declare-fun lt!236438 () SeekEntryResult!4365)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516380 (= res!316094 (or (= lt!236438 (MissingZero!4365 i!1204)) (= lt!236438 (MissingVacant!4365 i!1204))))))

(assert (=> b!516380 (= lt!236438 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516381 () Bool)

(declare-fun res!316091 () Bool)

(assert (=> b!516381 (=> (not res!316091) (not e!301356))))

(declare-fun arrayContainsKey!0 (array!33052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516381 (= res!316091 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516382 () Bool)

(declare-fun res!316090 () Bool)

(assert (=> b!516382 (=> (not res!316090) (not e!301356))))

(assert (=> b!516382 (= res!316090 (and (= (size!16255 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16255 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16255 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516383 () Bool)

(assert (=> b!516383 (= e!301354 (not e!301353))))

(declare-fun res!316089 () Bool)

(assert (=> b!516383 (=> res!316089 e!301353)))

(declare-fun lt!236441 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33052 (_ BitVec 32)) SeekEntryResult!4365)

(assert (=> b!516383 (= res!316089 (= lt!236440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236441 (select (store (arr!15891 a!3235) i!1204 k!2280) j!176) (array!33053 (store (arr!15891 a!3235) i!1204 k!2280) (size!16255 a!3235)) mask!3524)))))

(declare-fun lt!236437 () (_ BitVec 32))

(assert (=> b!516383 (= lt!236440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236437 (select (arr!15891 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516383 (= lt!236441 (toIndex!0 (select (store (arr!15891 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516383 (= lt!236437 (toIndex!0 (select (arr!15891 a!3235) j!176) mask!3524))))

(assert (=> b!516383 e!301357))

(declare-fun res!316095 () Bool)

(assert (=> b!516383 (=> (not res!316095) (not e!301357))))

(assert (=> b!516383 (= res!316095 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15980 0))(
  ( (Unit!15981) )
))
(declare-fun lt!236439 () Unit!15980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33052 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15980)

(assert (=> b!516383 (= lt!236439 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46780 res!316092) b!516382))

(assert (= (and b!516382 res!316090) b!516375))

(assert (= (and b!516375 res!316097) b!516376))

(assert (= (and b!516376 res!316088) b!516381))

(assert (= (and b!516381 res!316091) b!516380))

(assert (= (and b!516380 res!316094) b!516377))

(assert (= (and b!516377 res!316096) b!516378))

(assert (= (and b!516378 res!316087) b!516383))

(assert (= (and b!516383 res!316095) b!516374))

(assert (= (and b!516383 (not res!316089)) b!516373))

(assert (= (and b!516373 (not res!316093)) b!516379))

(declare-fun m!497917 () Bool)

(assert (=> b!516380 m!497917))

(declare-fun m!497919 () Bool)

(assert (=> b!516378 m!497919))

(declare-fun m!497921 () Bool)

(assert (=> b!516376 m!497921))

(declare-fun m!497923 () Bool)

(assert (=> b!516375 m!497923))

(assert (=> b!516375 m!497923))

(declare-fun m!497925 () Bool)

(assert (=> b!516375 m!497925))

(declare-fun m!497927 () Bool)

(assert (=> start!46780 m!497927))

(declare-fun m!497929 () Bool)

(assert (=> start!46780 m!497929))

(declare-fun m!497931 () Bool)

(assert (=> b!516381 m!497931))

(declare-fun m!497933 () Bool)

(assert (=> b!516379 m!497933))

(assert (=> b!516379 m!497923))

(assert (=> b!516383 m!497923))

(declare-fun m!497935 () Bool)

(assert (=> b!516383 m!497935))

(declare-fun m!497937 () Bool)

(assert (=> b!516383 m!497937))

(declare-fun m!497939 () Bool)

(assert (=> b!516383 m!497939))

(declare-fun m!497941 () Bool)

(assert (=> b!516383 m!497941))

(assert (=> b!516383 m!497941))

(declare-fun m!497943 () Bool)

(assert (=> b!516383 m!497943))

(assert (=> b!516383 m!497923))

(declare-fun m!497945 () Bool)

(assert (=> b!516383 m!497945))

(assert (=> b!516383 m!497923))

(declare-fun m!497947 () Bool)

(assert (=> b!516383 m!497947))

(assert (=> b!516383 m!497941))

(declare-fun m!497949 () Bool)

(assert (=> b!516383 m!497949))

(assert (=> b!516374 m!497923))

(assert (=> b!516374 m!497923))

(declare-fun m!497951 () Bool)

(assert (=> b!516374 m!497951))

(declare-fun m!497953 () Bool)

(assert (=> b!516377 m!497953))

(push 1)

