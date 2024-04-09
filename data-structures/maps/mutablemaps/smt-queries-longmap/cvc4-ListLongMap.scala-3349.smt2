; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46100 () Bool)

(assert start!46100)

(declare-fun b!510318 () Bool)

(declare-fun e!298291 () Bool)

(declare-fun e!298294 () Bool)

(assert (=> b!510318 (= e!298291 (not e!298294))))

(declare-fun res!311318 () Bool)

(assert (=> b!510318 (=> res!311318 e!298294)))

(declare-datatypes ((array!32771 0))(
  ( (array!32772 (arr!15761 (Array (_ BitVec 32) (_ BitVec 64))) (size!16125 (_ BitVec 32))) )
))
(declare-fun lt!233396 () array!32771)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun a!3235 () array!32771)

(declare-fun lt!233397 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4235 0))(
  ( (MissingZero!4235 (index!19128 (_ BitVec 32))) (Found!4235 (index!19129 (_ BitVec 32))) (Intermediate!4235 (undefined!5047 Bool) (index!19130 (_ BitVec 32)) (x!48111 (_ BitVec 32))) (Undefined!4235) (MissingVacant!4235 (index!19131 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32771 (_ BitVec 32)) SeekEntryResult!4235)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510318 (= res!311318 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15761 a!3235) j!176) mask!3524) (select (arr!15761 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233397 mask!3524) lt!233397 lt!233396 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510318 (= lt!233397 (select (store (arr!15761 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510318 (= lt!233396 (array!32772 (store (arr!15761 a!3235) i!1204 k!2280) (size!16125 a!3235)))))

(declare-fun lt!233398 () SeekEntryResult!4235)

(assert (=> b!510318 (= lt!233398 (Found!4235 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32771 (_ BitVec 32)) SeekEntryResult!4235)

(assert (=> b!510318 (= lt!233398 (seekEntryOrOpen!0 (select (arr!15761 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32771 (_ BitVec 32)) Bool)

(assert (=> b!510318 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15720 0))(
  ( (Unit!15721) )
))
(declare-fun lt!233399 () Unit!15720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15720)

(assert (=> b!510318 (= lt!233399 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510319 () Bool)

(declare-fun res!311320 () Bool)

(declare-fun e!298293 () Bool)

(assert (=> b!510319 (=> (not res!311320) (not e!298293))))

(declare-fun arrayContainsKey!0 (array!32771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510319 (= res!311320 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510320 () Bool)

(declare-fun res!311315 () Bool)

(assert (=> b!510320 (=> (not res!311315) (not e!298291))))

(declare-datatypes ((List!9972 0))(
  ( (Nil!9969) (Cons!9968 (h!10845 (_ BitVec 64)) (t!16208 List!9972)) )
))
(declare-fun arrayNoDuplicates!0 (array!32771 (_ BitVec 32) List!9972) Bool)

(assert (=> b!510320 (= res!311315 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9969))))

(declare-fun b!510321 () Bool)

(declare-fun res!311316 () Bool)

(assert (=> b!510321 (=> (not res!311316) (not e!298291))))

(assert (=> b!510321 (= res!311316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510323 () Bool)

(declare-fun res!311313 () Bool)

(assert (=> b!510323 (=> (not res!311313) (not e!298293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510323 (= res!311313 (validKeyInArray!0 (select (arr!15761 a!3235) j!176)))))

(declare-fun b!510324 () Bool)

(assert (=> b!510324 (= e!298293 e!298291)))

(declare-fun res!311317 () Bool)

(assert (=> b!510324 (=> (not res!311317) (not e!298291))))

(declare-fun lt!233394 () SeekEntryResult!4235)

(assert (=> b!510324 (= res!311317 (or (= lt!233394 (MissingZero!4235 i!1204)) (= lt!233394 (MissingVacant!4235 i!1204))))))

(assert (=> b!510324 (= lt!233394 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510325 () Bool)

(declare-fun res!311321 () Bool)

(assert (=> b!510325 (=> (not res!311321) (not e!298293))))

(assert (=> b!510325 (= res!311321 (and (= (size!16125 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16125 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16125 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510326 () Bool)

(assert (=> b!510326 (= e!298294 true)))

(assert (=> b!510326 (= lt!233398 (seekEntryOrOpen!0 lt!233397 lt!233396 mask!3524))))

(declare-fun lt!233395 () Unit!15720)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15720)

(assert (=> b!510326 (= lt!233395 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510322 () Bool)

(declare-fun res!311319 () Bool)

(assert (=> b!510322 (=> (not res!311319) (not e!298293))))

(assert (=> b!510322 (= res!311319 (validKeyInArray!0 k!2280))))

(declare-fun res!311314 () Bool)

(assert (=> start!46100 (=> (not res!311314) (not e!298293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46100 (= res!311314 (validMask!0 mask!3524))))

(assert (=> start!46100 e!298293))

(assert (=> start!46100 true))

(declare-fun array_inv!11535 (array!32771) Bool)

(assert (=> start!46100 (array_inv!11535 a!3235)))

(assert (= (and start!46100 res!311314) b!510325))

(assert (= (and b!510325 res!311321) b!510323))

(assert (= (and b!510323 res!311313) b!510322))

(assert (= (and b!510322 res!311319) b!510319))

(assert (= (and b!510319 res!311320) b!510324))

(assert (= (and b!510324 res!311317) b!510321))

(assert (= (and b!510321 res!311316) b!510320))

(assert (= (and b!510320 res!311315) b!510318))

(assert (= (and b!510318 (not res!311318)) b!510326))

(declare-fun m!491655 () Bool)

(assert (=> start!46100 m!491655))

(declare-fun m!491657 () Bool)

(assert (=> start!46100 m!491657))

(declare-fun m!491659 () Bool)

(assert (=> b!510322 m!491659))

(declare-fun m!491661 () Bool)

(assert (=> b!510326 m!491661))

(declare-fun m!491663 () Bool)

(assert (=> b!510326 m!491663))

(declare-fun m!491665 () Bool)

(assert (=> b!510321 m!491665))

(declare-fun m!491667 () Bool)

(assert (=> b!510320 m!491667))

(declare-fun m!491669 () Bool)

(assert (=> b!510318 m!491669))

(declare-fun m!491671 () Bool)

(assert (=> b!510318 m!491671))

(declare-fun m!491673 () Bool)

(assert (=> b!510318 m!491673))

(declare-fun m!491675 () Bool)

(assert (=> b!510318 m!491675))

(declare-fun m!491677 () Bool)

(assert (=> b!510318 m!491677))

(declare-fun m!491679 () Bool)

(assert (=> b!510318 m!491679))

(declare-fun m!491681 () Bool)

(assert (=> b!510318 m!491681))

(declare-fun m!491683 () Bool)

(assert (=> b!510318 m!491683))

(assert (=> b!510318 m!491677))

(assert (=> b!510318 m!491675))

(assert (=> b!510318 m!491681))

(assert (=> b!510318 m!491677))

(declare-fun m!491685 () Bool)

(assert (=> b!510318 m!491685))

(assert (=> b!510318 m!491677))

(declare-fun m!491687 () Bool)

(assert (=> b!510318 m!491687))

(assert (=> b!510323 m!491677))

(assert (=> b!510323 m!491677))

(declare-fun m!491689 () Bool)

(assert (=> b!510323 m!491689))

(declare-fun m!491691 () Bool)

(assert (=> b!510324 m!491691))

(declare-fun m!491693 () Bool)

(assert (=> b!510319 m!491693))

(push 1)

