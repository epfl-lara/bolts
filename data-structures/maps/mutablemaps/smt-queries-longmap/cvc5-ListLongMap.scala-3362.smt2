; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46234 () Bool)

(assert start!46234)

(declare-fun b!511655 () Bool)

(declare-fun res!312470 () Bool)

(declare-fun e!298923 () Bool)

(assert (=> b!511655 (=> (not res!312470) (not e!298923))))

(declare-datatypes ((array!32848 0))(
  ( (array!32849 (arr!15798 (Array (_ BitVec 32) (_ BitVec 64))) (size!16162 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32848)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511655 (= res!312470 (validKeyInArray!0 (select (arr!15798 a!3235) j!176)))))

(declare-fun b!511656 () Bool)

(declare-fun res!312469 () Bool)

(assert (=> b!511656 (=> (not res!312469) (not e!298923))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511656 (= res!312469 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511658 () Bool)

(declare-fun res!312467 () Bool)

(assert (=> b!511658 (=> (not res!312467) (not e!298923))))

(assert (=> b!511658 (= res!312467 (validKeyInArray!0 k!2280))))

(declare-fun b!511659 () Bool)

(declare-fun e!298922 () Bool)

(assert (=> b!511659 (= e!298923 e!298922)))

(declare-fun res!312472 () Bool)

(assert (=> b!511659 (=> (not res!312472) (not e!298922))))

(declare-datatypes ((SeekEntryResult!4272 0))(
  ( (MissingZero!4272 (index!19276 (_ BitVec 32))) (Found!4272 (index!19277 (_ BitVec 32))) (Intermediate!4272 (undefined!5084 Bool) (index!19278 (_ BitVec 32)) (x!48258 (_ BitVec 32))) (Undefined!4272) (MissingVacant!4272 (index!19279 (_ BitVec 32))) )
))
(declare-fun lt!234190 () SeekEntryResult!4272)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511659 (= res!312472 (or (= lt!234190 (MissingZero!4272 i!1204)) (= lt!234190 (MissingVacant!4272 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32848 (_ BitVec 32)) SeekEntryResult!4272)

(assert (=> b!511659 (= lt!234190 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511660 () Bool)

(declare-fun res!312471 () Bool)

(assert (=> b!511660 (=> (not res!312471) (not e!298922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32848 (_ BitVec 32)) Bool)

(assert (=> b!511660 (= res!312471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511661 () Bool)

(declare-fun e!298924 () Bool)

(assert (=> b!511661 (= e!298922 (not e!298924))))

(declare-fun res!312473 () Bool)

(assert (=> b!511661 (=> res!312473 e!298924)))

(declare-fun lt!234192 () SeekEntryResult!4272)

(declare-fun lt!234191 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32848 (_ BitVec 32)) SeekEntryResult!4272)

(assert (=> b!511661 (= res!312473 (= lt!234192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234191 (select (store (arr!15798 a!3235) i!1204 k!2280) j!176) (array!32849 (store (arr!15798 a!3235) i!1204 k!2280) (size!16162 a!3235)) mask!3524)))))

(declare-fun lt!234189 () (_ BitVec 32))

(assert (=> b!511661 (= lt!234192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234189 (select (arr!15798 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511661 (= lt!234191 (toIndex!0 (select (store (arr!15798 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511661 (= lt!234189 (toIndex!0 (select (arr!15798 a!3235) j!176) mask!3524))))

(declare-fun lt!234194 () SeekEntryResult!4272)

(assert (=> b!511661 (= lt!234194 (Found!4272 j!176))))

(assert (=> b!511661 (= lt!234194 (seekEntryOrOpen!0 (select (arr!15798 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511661 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15794 0))(
  ( (Unit!15795) )
))
(declare-fun lt!234193 () Unit!15794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15794)

(assert (=> b!511661 (= lt!234193 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511662 () Bool)

(declare-fun res!312474 () Bool)

(assert (=> b!511662 (=> (not res!312474) (not e!298923))))

(assert (=> b!511662 (= res!312474 (and (= (size!16162 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16162 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16162 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511663 () Bool)

(declare-fun res!312468 () Bool)

(assert (=> b!511663 (=> res!312468 e!298924)))

(assert (=> b!511663 (= res!312468 (or (not (is-Intermediate!4272 lt!234192)) (not (undefined!5084 lt!234192))))))

(declare-fun b!511664 () Bool)

(declare-fun res!312476 () Bool)

(assert (=> b!511664 (=> (not res!312476) (not e!298922))))

(declare-datatypes ((List!10009 0))(
  ( (Nil!10006) (Cons!10005 (h!10885 (_ BitVec 64)) (t!16245 List!10009)) )
))
(declare-fun arrayNoDuplicates!0 (array!32848 (_ BitVec 32) List!10009) Bool)

(assert (=> b!511664 (= res!312476 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10006))))

(declare-fun b!511657 () Bool)

(assert (=> b!511657 (= e!298924 true)))

(assert (=> b!511657 (= lt!234194 Undefined!4272)))

(declare-fun res!312475 () Bool)

(assert (=> start!46234 (=> (not res!312475) (not e!298923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46234 (= res!312475 (validMask!0 mask!3524))))

(assert (=> start!46234 e!298923))

(assert (=> start!46234 true))

(declare-fun array_inv!11572 (array!32848) Bool)

(assert (=> start!46234 (array_inv!11572 a!3235)))

(assert (= (and start!46234 res!312475) b!511662))

(assert (= (and b!511662 res!312474) b!511655))

(assert (= (and b!511655 res!312470) b!511658))

(assert (= (and b!511658 res!312467) b!511656))

(assert (= (and b!511656 res!312469) b!511659))

(assert (= (and b!511659 res!312472) b!511660))

(assert (= (and b!511660 res!312471) b!511664))

(assert (= (and b!511664 res!312476) b!511661))

(assert (= (and b!511661 (not res!312473)) b!511663))

(assert (= (and b!511663 (not res!312468)) b!511657))

(declare-fun m!493231 () Bool)

(assert (=> b!511656 m!493231))

(declare-fun m!493233 () Bool)

(assert (=> b!511661 m!493233))

(declare-fun m!493235 () Bool)

(assert (=> b!511661 m!493235))

(declare-fun m!493237 () Bool)

(assert (=> b!511661 m!493237))

(declare-fun m!493239 () Bool)

(assert (=> b!511661 m!493239))

(declare-fun m!493241 () Bool)

(assert (=> b!511661 m!493241))

(assert (=> b!511661 m!493235))

(declare-fun m!493243 () Bool)

(assert (=> b!511661 m!493243))

(assert (=> b!511661 m!493235))

(declare-fun m!493245 () Bool)

(assert (=> b!511661 m!493245))

(assert (=> b!511661 m!493235))

(declare-fun m!493247 () Bool)

(assert (=> b!511661 m!493247))

(assert (=> b!511661 m!493241))

(declare-fun m!493249 () Bool)

(assert (=> b!511661 m!493249))

(assert (=> b!511661 m!493241))

(declare-fun m!493251 () Bool)

(assert (=> b!511661 m!493251))

(declare-fun m!493253 () Bool)

(assert (=> b!511658 m!493253))

(declare-fun m!493255 () Bool)

(assert (=> start!46234 m!493255))

(declare-fun m!493257 () Bool)

(assert (=> start!46234 m!493257))

(declare-fun m!493259 () Bool)

(assert (=> b!511664 m!493259))

(assert (=> b!511655 m!493235))

(assert (=> b!511655 m!493235))

(declare-fun m!493261 () Bool)

(assert (=> b!511655 m!493261))

(declare-fun m!493263 () Bool)

(assert (=> b!511660 m!493263))

(declare-fun m!493265 () Bool)

(assert (=> b!511659 m!493265))

(push 1)

