; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46282 () Bool)

(assert start!46282)

(declare-fun b!512373 () Bool)

(declare-fun res!313190 () Bool)

(declare-fun e!299212 () Bool)

(assert (=> b!512373 (=> (not res!313190) (not e!299212))))

(declare-datatypes ((array!32896 0))(
  ( (array!32897 (arr!15822 (Array (_ BitVec 32) (_ BitVec 64))) (size!16186 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32896)

(declare-datatypes ((List!10033 0))(
  ( (Nil!10030) (Cons!10029 (h!10909 (_ BitVec 64)) (t!16269 List!10033)) )
))
(declare-fun arrayNoDuplicates!0 (array!32896 (_ BitVec 32) List!10033) Bool)

(assert (=> b!512373 (= res!313190 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10030))))

(declare-fun b!512374 () Bool)

(assert (=> b!512374 (= e!299212 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4296 0))(
  ( (MissingZero!4296 (index!19372 (_ BitVec 32))) (Found!4296 (index!19373 (_ BitVec 32))) (Intermediate!4296 (undefined!5108 Bool) (index!19374 (_ BitVec 32)) (x!48346 (_ BitVec 32))) (Undefined!4296) (MissingVacant!4296 (index!19375 (_ BitVec 32))) )
))
(declare-fun lt!234626 () SeekEntryResult!4296)

(declare-fun lt!234621 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32896 (_ BitVec 32)) SeekEntryResult!4296)

(assert (=> b!512374 (= lt!234626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234621 (select (store (arr!15822 a!3235) i!1204 k!2280) j!176) (array!32897 (store (arr!15822 a!3235) i!1204 k!2280) (size!16186 a!3235)) mask!3524))))

(declare-fun lt!234624 () (_ BitVec 32))

(declare-fun lt!234623 () SeekEntryResult!4296)

(assert (=> b!512374 (= lt!234623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234624 (select (arr!15822 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512374 (= lt!234621 (toIndex!0 (select (store (arr!15822 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512374 (= lt!234624 (toIndex!0 (select (arr!15822 a!3235) j!176) mask!3524))))

(declare-fun e!299209 () Bool)

(assert (=> b!512374 e!299209))

(declare-fun res!313193 () Bool)

(assert (=> b!512374 (=> (not res!313193) (not e!299209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32896 (_ BitVec 32)) Bool)

(assert (=> b!512374 (= res!313193 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15842 0))(
  ( (Unit!15843) )
))
(declare-fun lt!234625 () Unit!15842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32896 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15842)

(assert (=> b!512374 (= lt!234625 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512375 () Bool)

(declare-fun res!313188 () Bool)

(declare-fun e!299210 () Bool)

(assert (=> b!512375 (=> (not res!313188) (not e!299210))))

(assert (=> b!512375 (= res!313188 (and (= (size!16186 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16186 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16186 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512376 () Bool)

(declare-fun res!313185 () Bool)

(assert (=> b!512376 (=> (not res!313185) (not e!299210))))

(declare-fun arrayContainsKey!0 (array!32896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512376 (= res!313185 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512377 () Bool)

(declare-fun res!313191 () Bool)

(assert (=> b!512377 (=> (not res!313191) (not e!299212))))

(assert (=> b!512377 (= res!313191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512378 () Bool)

(assert (=> b!512378 (= e!299210 e!299212)))

(declare-fun res!313186 () Bool)

(assert (=> b!512378 (=> (not res!313186) (not e!299212))))

(declare-fun lt!234622 () SeekEntryResult!4296)

(assert (=> b!512378 (= res!313186 (or (= lt!234622 (MissingZero!4296 i!1204)) (= lt!234622 (MissingVacant!4296 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32896 (_ BitVec 32)) SeekEntryResult!4296)

(assert (=> b!512378 (= lt!234622 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512379 () Bool)

(declare-fun res!313192 () Bool)

(assert (=> b!512379 (=> (not res!313192) (not e!299210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512379 (= res!313192 (validKeyInArray!0 (select (arr!15822 a!3235) j!176)))))

(declare-fun res!313189 () Bool)

(assert (=> start!46282 (=> (not res!313189) (not e!299210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46282 (= res!313189 (validMask!0 mask!3524))))

(assert (=> start!46282 e!299210))

(assert (=> start!46282 true))

(declare-fun array_inv!11596 (array!32896) Bool)

(assert (=> start!46282 (array_inv!11596 a!3235)))

(declare-fun b!512380 () Bool)

(assert (=> b!512380 (= e!299209 (= (seekEntryOrOpen!0 (select (arr!15822 a!3235) j!176) a!3235 mask!3524) (Found!4296 j!176)))))

(declare-fun b!512381 () Bool)

(declare-fun res!313187 () Bool)

(assert (=> b!512381 (=> (not res!313187) (not e!299210))))

(assert (=> b!512381 (= res!313187 (validKeyInArray!0 k!2280))))

(assert (= (and start!46282 res!313189) b!512375))

(assert (= (and b!512375 res!313188) b!512379))

(assert (= (and b!512379 res!313192) b!512381))

(assert (= (and b!512381 res!313187) b!512376))

(assert (= (and b!512376 res!313185) b!512378))

(assert (= (and b!512378 res!313186) b!512377))

(assert (= (and b!512377 res!313191) b!512373))

(assert (= (and b!512373 res!313190) b!512374))

(assert (= (and b!512374 res!313193) b!512380))

(declare-fun m!494095 () Bool)

(assert (=> b!512374 m!494095))

(declare-fun m!494097 () Bool)

(assert (=> b!512374 m!494097))

(declare-fun m!494099 () Bool)

(assert (=> b!512374 m!494099))

(assert (=> b!512374 m!494099))

(declare-fun m!494101 () Bool)

(assert (=> b!512374 m!494101))

(declare-fun m!494103 () Bool)

(assert (=> b!512374 m!494103))

(declare-fun m!494105 () Bool)

(assert (=> b!512374 m!494105))

(assert (=> b!512374 m!494103))

(declare-fun m!494107 () Bool)

(assert (=> b!512374 m!494107))

(assert (=> b!512374 m!494103))

(declare-fun m!494109 () Bool)

(assert (=> b!512374 m!494109))

(assert (=> b!512374 m!494099))

(declare-fun m!494111 () Bool)

(assert (=> b!512374 m!494111))

(declare-fun m!494113 () Bool)

(assert (=> b!512373 m!494113))

(declare-fun m!494115 () Bool)

(assert (=> start!46282 m!494115))

(declare-fun m!494117 () Bool)

(assert (=> start!46282 m!494117))

(assert (=> b!512379 m!494103))

(assert (=> b!512379 m!494103))

(declare-fun m!494119 () Bool)

(assert (=> b!512379 m!494119))

(declare-fun m!494121 () Bool)

(assert (=> b!512377 m!494121))

(assert (=> b!512380 m!494103))

(assert (=> b!512380 m!494103))

(declare-fun m!494123 () Bool)

(assert (=> b!512380 m!494123))

(declare-fun m!494125 () Bool)

(assert (=> b!512376 m!494125))

(declare-fun m!494127 () Bool)

(assert (=> b!512378 m!494127))

(declare-fun m!494129 () Bool)

(assert (=> b!512381 m!494129))

(push 1)

